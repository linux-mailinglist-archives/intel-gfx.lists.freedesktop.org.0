Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6033A4F8729
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Apr 2022 20:38:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D58AB10EC6E;
	Thu,  7 Apr 2022 18:38:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B35710E812;
 Thu,  7 Apr 2022 18:38:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649356710; x=1680892710;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=IFXsa0ncfIGlPRZp0w++EyxOtvbfOd7DNuJP15auUIc=;
 b=ilAgzBO+mF8fGlV4VPRG1ymQx+luSadw4DWaJGHujfa+HTcy1kxgRVuL
 EnvI7AYRPplpH74b6ycZJ9Iz/8NTgV6YjmWViLGI3CHmnfvfsHeJo+lg9
 5lThiEosmIzEGsgysj2WudPtl6JA2aWbhxZdeIIvGKn7XOKphcZGsdwNN
 4RakSkJf5+70XfbAo7Pm1I+7JNGpE9Wc4p8YGnHJn2/sZ7XDbAXRUxMdJ
 JWoy5VpEbg1GAnoJTAMgB0Ku9iP+cSB66p4Sjx7h6pO9uii3Xu7L1rXOQ
 Fd/UgWIrZ1cWuuCEQjIslO7Crk0hzUr/tYY0USvJbYq9oDHq6HXtIk7sP g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10310"; a="261406122"
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="261406122"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 11:38:30 -0700
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="525047402"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 11:38:28 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  7 Apr 2022 21:38:25 +0300
Message-Id: <20220407183826.724106-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/dp: Export drm_dp_dpcd_access()
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The next patch needs a way to read a DPCD register without the preceding
wake-up read in drm_dp_dpcd_read(). Export drm_dp_dpcd_access() to allow
this.

Cc: dri-devel@lists.freedesktop.org
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/dp/drm_dp.c    | 19 +++++++++++++++++--
 include/drm/dp/drm_dp_helper.h |  2 ++
 2 files changed, 19 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/dp/drm_dp.c b/drivers/gpu/drm/dp/drm_dp.c
index 580016a1b9eb7..8b181314edcbe 100644
--- a/drivers/gpu/drm/dp/drm_dp.c
+++ b/drivers/gpu/drm/dp/drm_dp.c
@@ -470,8 +470,22 @@ drm_dp_dump_access(const struct drm_dp_aux *aux,
  * Both native and I2C-over-AUX transactions are supported.
  */
 
-static int drm_dp_dpcd_access(struct drm_dp_aux *aux, u8 request,
-			      unsigned int offset, void *buffer, size_t size)
+/**
+ * drm_dp_dpcd_access() - read or write a series of bytes from/to the DPCD
+ * @aux: DisplayPort AUX channel (SST)
+ * @request: DP_AUX_NATIVE_READ or DP_AUX_NATIVE_WRITE
+ * @offset: address of the (first) register to read or write
+ * @buffer: buffer with the register values to write or the register values read
+ * @size: number of bytes in @buffer
+ *
+ * Returns the number of bytes transferred on success, or a negative error
+ * code on failure. This is a low-level function only for SST sinks and cases
+ * where calling drm_dp_dpcd_read()/write() is not possible (for instance due
+ * to the wake-up register read in drm_dp_dpcd_read()). For all other cases
+ * the latter functions should be used.
+ */
+int drm_dp_dpcd_access(struct drm_dp_aux *aux, u8 request,
+		       unsigned int offset, void *buffer, size_t size)
 {
 	struct drm_dp_aux_msg msg;
 	unsigned int retry, native_reply;
@@ -526,6 +540,7 @@ static int drm_dp_dpcd_access(struct drm_dp_aux *aux, u8 request,
 	mutex_unlock(&aux->hw_mutex);
 	return ret;
 }
+EXPORT_SYMBOL(drm_dp_dpcd_access);
 
 /**
  * drm_dp_dpcd_read() - read a series of bytes from the DPCD
diff --git a/include/drm/dp/drm_dp_helper.h b/include/drm/dp/drm_dp_helper.h
index 1eccd97419436..7cf6e83434a8c 100644
--- a/include/drm/dp/drm_dp_helper.h
+++ b/include/drm/dp/drm_dp_helper.h
@@ -2053,6 +2053,8 @@ struct drm_dp_aux {
 	bool is_remote;
 };
 
+int drm_dp_dpcd_access(struct drm_dp_aux *aux, u8 request,
+		       unsigned int offset, void *buffer, size_t size);
 ssize_t drm_dp_dpcd_read(struct drm_dp_aux *aux, unsigned int offset,
 			 void *buffer, size_t size);
 ssize_t drm_dp_dpcd_write(struct drm_dp_aux *aux, unsigned int offset,
-- 
2.30.2

