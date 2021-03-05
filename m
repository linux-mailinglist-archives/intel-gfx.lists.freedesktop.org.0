Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B871A32F515
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Mar 2021 22:09:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 036DD6EC53;
	Fri,  5 Mar 2021 21:09:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 698166EC53
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Mar 2021 21:09:48 +0000 (UTC)
IronPort-SDR: n0xKX+qgaVj9s2ObqfH9U94adiXm2UzbRdwYUJlui2JJZL8rU+Di6QfUBOGA5a2wWA61HWIyCR
 xmMGDa9h8kfQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9914"; a="207471607"
X-IronPort-AV: E=Sophos;i="5.81,226,1610438400"; d="scan'208";a="207471607"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2021 13:09:47 -0800
IronPort-SDR: 5Vvn4tJNvZXNkn3wDX1ppynqUerapgIaigd5Zs1wacY8tvc/tlZbJwYA1IxWa5j58R+PjpA14j
 uFYyINJh+n2A==
X-IronPort-AV: E=Sophos;i="5.81,226,1610438400"; d="scan'208";a="408499600"
Received: from orsosgc001.ra.intel.com ([10.23.184.150])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2021 13:09:47 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  5 Mar 2021 13:09:47 -0800
Message-Id: <20210305210947.58751-1-umesh.nerlige.ramappa@intel.com>
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
Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
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
