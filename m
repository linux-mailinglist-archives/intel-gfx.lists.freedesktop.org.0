Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EA055AABD6
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Sep 2022 11:51:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC7B510E7F2;
	Fri,  2 Sep 2022 09:51:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F65710E7DA
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Sep 2022 09:51:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662112289; x=1693648289;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ylVSojI/9JrTMjUN8DKhZBIvtYbr6KlKZC/bNGKEM48=;
 b=khJGcz4ItHA8GwtREjDYI3UMTaIlHLbdtFmHO1Q5KkT+Bgx48tmfQhwM
 WQ+86LbnBCPDtwkNuX8vmZLfGJmOrZYyzOkjKACqy2UPbv3IRx2MvIa65
 N5vyQ88kldRje4AeREsjxh6oDZm5knD33w/7UTl2tkfNqyTlphdje1311
 UFBvDfUr/CSRZvXaX4zsnx/kJV0/JptpyHlyLlJ/+smnVON0HZcOM2qCT
 Zf0SgLCcJ0fe99OuBO7QnQstgU4nB3amgrHibaV1PRMGLWr0zeaokbpDB
 Oey+BaGgyY5/X7YRSL0GaUItZ6Gp6p6B8MkfRBJSbtBW9gpruQof/D/Sn g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10457"; a="293523797"
X-IronPort-AV: E=Sophos;i="5.93,283,1654585200"; d="scan'208";a="293523797"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2022 02:51:28 -0700
X-IronPort-AV: E=Sophos;i="5.93,283,1654585200"; d="scan'208";a="674291846"
Received: from gquakenb-mobl1.amr.corp.intel.com (HELO rdvivi-mobl4.intel.com)
 ([10.255.36.252])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2022 02:51:28 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Sep 2022 05:51:26 -0400
Message-Id: <20220902095126.373036-2-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220902095126.373036-1-rodrigo.vivi@intel.com>
References: <20220902095126.373036-1-rodrigo.vivi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Let's avoid even early init if
 SLPC is used.
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SLPC has its own waiboost variables and lock mechanism.
No need for these extra stuff, in special no need for the
timer.

Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_rps.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 6fadde4ee7bf..c29652281f2e 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -1960,6 +1960,9 @@ void gen5_rps_irq_handler(struct intel_rps *rps)
 
 void intel_rps_init_early(struct intel_rps *rps)
 {
+	if (rps_uses_slpc(rps))
+		return;
+
 	mutex_init(&rps->lock);
 	mutex_init(&rps->power.mutex);
 
-- 
2.37.2

