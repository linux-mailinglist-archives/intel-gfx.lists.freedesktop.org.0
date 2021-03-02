Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CBAFF32955B
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Mar 2021 01:01:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B51266E0CC;
	Tue,  2 Mar 2021 00:01:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CF6E6E0CC
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Mar 2021 00:01:47 +0000 (UTC)
IronPort-SDR: WnW/RUPY4gpLpH8Nzo88/5dg0gPUi0/VlyxUah9s1L0xD/FF+rxWwh1bfVNUEsW6kYNGTZFM6K
 qf5qQCGRNFUw==
X-IronPort-AV: E=McAfee;i="6000,8403,9910"; a="173769746"
X-IronPort-AV: E=Sophos;i="5.81,216,1610438400"; d="scan'208";a="173769746"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2021 16:01:46 -0800
IronPort-SDR: Y/32KT6A5vitPHANqZoSdqrH1EMBK5TO/7aJR3144oTOqg6MngxPh8XatJ9zHkaxBt/zikRbSO
 NGRrLAa4bS+g==
X-IronPort-AV: E=Sophos;i="5.81,216,1610438400"; d="scan'208";a="506106590"
Received: from orsosgc001.ra.intel.com ([10.23.184.150])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2021 16:01:46 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>
Date: Mon,  1 Mar 2021 16:01:41 -0800
Message-Id: <20210302000141.63020-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] i915/perf: Start hrtimer only if sampling the
 OA buffer
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SAMPLE_OA parameter enables sampling of OA buffer and results in a call
to init the OA buffer which initializes the OA unit head/tail pointers.
The OA_EXPONENT parameter controls the periodicity of the OA reports in
the OA buffer and results in starting a hrtimer.

Before gen12, all use cases required the use of the OA buffer and i915
enforced this setting when vetting out the parameters passed. In these
platforms the hrtimer was enabled if OA_EXPONENT was passed. This worked
fine since it was implied that SAMPLE_OA is always passed.

With gen12, this changed. Users can use perf without enabling the OA
buffer as in OAR use cases. While an OAR use case should ideally not
start the hrtimer, we see that passing an OA_EXPONENT parameter will
start the hrtimer even though SAMPLE_OA is not specified. This results
in an uninitialized OA buffer, so the head/tail pointers used to track
the buffer are zero.

This itself does not fail, but if we ran a use-case that SAMPLED the OA
buffer previously, then the OA_TAIL register is still pointing to an old
value. When the timer callback runs, it ends up calculating a
wrong/large number of available reports. Since we do a spinlock_irq_save
and start processing a large number of reports, NMI watchdog fires and
causes a crash.

Start the timer only if SAMPLE_OA is specified.

v2:
- Drop SAMPLE OA check when appending samples (Ashutosh)
- Prevent read if OA buffer is not being sampled

Fixes: 00a7f0d7155c ("drm/i915/tgl: Add perf support on TGL")
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 13 +++++--------
 1 file changed, 5 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index c15bead2dac7..2fd2c13b76ac 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -595,7 +595,6 @@ static int append_oa_sample(struct i915_perf_stream *stream,
 {
 	int report_size = stream->oa_buffer.format_size;
 	struct drm_i915_perf_record_header header;
-	u32 sample_flags = stream->sample_flags;
 
 	header.type = DRM_I915_PERF_RECORD_SAMPLE;
 	header.pad = 0;
@@ -609,10 +608,8 @@ static int append_oa_sample(struct i915_perf_stream *stream,
 		return -EFAULT;
 	buf += sizeof(header);
 
-	if (sample_flags & SAMPLE_OA_REPORT) {
-		if (copy_to_user(buf, report, report_size))
-			return -EFAULT;
-	}
+	if (copy_to_user(buf, report, report_size))
+		return -EFAULT;
 
 	(*offset) += header.size;
 
@@ -2669,7 +2666,7 @@ static void i915_oa_stream_enable(struct i915_perf_stream *stream)
 
 	stream->perf->ops.oa_enable(stream);
 
-	if (stream->periodic)
+	if (stream->sample_flags & SAMPLE_OA_REPORT)
 		hrtimer_start(&stream->poll_check_timer,
 			      ns_to_ktime(stream->poll_oa_period),
 			      HRTIMER_MODE_REL_PINNED);
@@ -2732,7 +2729,7 @@ static void i915_oa_stream_disable(struct i915_perf_stream *stream)
 {
 	stream->perf->ops.oa_disable(stream);
 
-	if (stream->periodic)
+	if (stream->sample_flags & SAMPLE_OA_REPORT)
 		hrtimer_cancel(&stream->poll_check_timer);
 }
 
@@ -3015,7 +3012,7 @@ static ssize_t i915_perf_read(struct file *file,
 	 * disabled stream as an error. In particular it might otherwise lead
 	 * to a deadlock for blocking file descriptors...
 	 */
-	if (!stream->enabled)
+	if (!stream->enabled || !(stream->sample_flags & SAMPLE_OA_REPORT))
 		return -EIO;
 
 	if (!(file->f_flags & O_NONBLOCK)) {
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
