Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E390B643FA7
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Dec 2022 10:18:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B53D610E302;
	Tue,  6 Dec 2022 09:18:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CEE010E02A
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Dec 2022 09:18:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670318290; x=1701854290;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=EUxDxqn6V9eRmwLZfcerq5N8r6p0LaJC710CmMrA/5E=;
 b=T7iuOzgL+jRsV1qTNFGkH0oreLj+f02sImF23DPGS3VlclIksIu7cBOK
 jIm5fWd7FENhXf/NJhW6sAje+faTQ5x11M9ti30F204MS2XNXfZMbF7Ah
 EX+/XPYTvS41AfLlerQgIoMQ8L7iIKyp++qEUhQfGDETZoMinU6IOqw7t
 DLmptYlI5qkmOIOxnT5VPJ3kwqXt1rst0B3Jr2TfAhMHgvNzuIbA+DklD
 FXKEYn/9a+U23CMWmgBRnLkOQDcA9zcsTN02ISVY/ouZ+Klr0pSNWNCxx
 /b5InykMNjddminTeIiDp074IegK5IPVUZW54hUB1ganYZ4i5+QiyEpM1 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="318438111"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="318438111"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 01:18:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="623833212"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="623833212"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga006.jf.intel.com with ESMTP; 06 Dec 2022 01:18:09 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Dec 2022 01:20:56 -0800
Message-Id: <20221206092100.274195-2-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221206092100.274195-1-alan.previn.teres.alexis@intel.com>
References: <20221206092100.274195-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/5] drm/i915/guc: Fix GuC relay log debugfs
 failing open
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

When GuC-Error-Capture was introduced, we created
buf_in_use as a way to identify if relay logging
had started. It is meant to replace the previous
method where a mmap of the GuC log buffer was
the indicator but not since GuC Error Capture
shares that mapping throughout operation.

However, that method of checking was not updated
when the debugfs guc_log_relay_ctl_open was called.
Fix that check.

Fixes: daff407a083d ("drm/i915/guc: Add capture region into intel_guc_log")
Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
Link: https://patchwork.freedesktop.org/patch/479021/?series=101603&rev=1
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
index 68331c538b0a..c5a7aecd08ac 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
@@ -701,7 +701,7 @@ int intel_guc_log_set_level(struct intel_guc_log *log, u32 level)
 
 bool intel_guc_log_relay_created(const struct intel_guc_log *log)
 {
-	return log->buf_addr;
+	return log->relay.buf_in_use;
 }
 
 int intel_guc_log_relay_open(struct intel_guc_log *log)
-- 
2.34.1

