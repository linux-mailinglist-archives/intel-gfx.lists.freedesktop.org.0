Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D6EEE545DC8
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jun 2022 09:49:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7922310ECBA;
	Fri, 10 Jun 2022 07:49:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE35810ECBA;
 Fri, 10 Jun 2022 07:49:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654847360; x=1686383360;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TzYpgwIAHNaaWmwDZPmabSdDkupO+UbE2dJtMo1F0ns=;
 b=gz6WU8LaRdezztP5HSqlFak9RQCIdl7mvpgrwphlxGsUutotvyw6J/2b
 L7ZJD0Ay7aSHjoe12G2eTyfq7NdhxTES+CWOKeEo/M06p9M3Hp4uIUxx6
 YpmBzDmiavf8S7Q5rZydtFxuykOzjdxxAmIOETm6/82h9pAKQs+UE6d4E
 nyT/UVPFU0SfMCFW1QGMa+B1asoRDlNAODsJ/9kWVUrJeUJDDQtIeplRR
 C5/LAMbQdsUWLaH1kNDm9rHNmVYEYYh/fJpB1j1ctXoKeN2TfSrJPQthD
 pCE/eJbQrDiGGpIdgOCE3tpLLy0me3uFlF262TXad3+wJTOl2CVBpz6k+ Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10373"; a="278353473"
X-IronPort-AV: E=Sophos;i="5.91,288,1647327600"; d="scan'208";a="278353473"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2022 00:49:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,288,1647327600"; d="scan'208";a="556270661"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orsmga006.jf.intel.com with ESMTP; 10 Jun 2022 00:49:18 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri, 10 Jun 2022 13:18:53 +0530
Message-Id: <20220610074853.3937294-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220608060737.3839351-1-arun.r.murthy@intel.com>
References: <20220608060737.3839351-1-arun.r.murthy@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t] tests/kms_async_flips: first async flip
 discarded on i915
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The i915 KMD will use the first async flip to update the watermarks as
per the watermark optimization in DISPLAY13. Hence the actual async flip
will happen from the subsequent flips.
For alternate sync async test, a dummy async flip has to be done to
allow the KMD to perform the watermark related updates before writing to
the surface base address.

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 tests/kms_async_flips.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/tests/kms_async_flips.c b/tests/kms_async_flips.c
index 4a0527dc..695aea74 100644
--- a/tests/kms_async_flips.c
+++ b/tests/kms_async_flips.c
@@ -211,11 +211,14 @@ static void test_async_flip(data_t *data)
 			 * In older platforms (<= Gen10), async address update bit is double buffered.
 			 * So flip timestamp can be verified only from the second flip.
 			 * The first async flip just enables the async address update.
+			 * In platforms greater than DISPLAY13 the first async flip will be discarded
+			 * in order to change the watermark levels as per the optimization. Hence the
+			 * subsequent async flips will actually do the asynchronous flips.
 			 */
 			if (is_i915_device(data->drm_fd)) {
 				uint32_t devid = intel_get_drm_devid(data->drm_fd);
 
-				if (IS_GEN9(devid) || IS_GEN10(devid)) {
+				if (IS_GEN9(devid) || IS_GEN10(devid) || AT_LEAST_GEN(devid, 12)) {
 					ret = drmModePageFlip(data->drm_fd, data->crtc_id,
 							      data->bufs[frame % 4].fb_id,
 							      flags, data);
-- 
2.25.1

