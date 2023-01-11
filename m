Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 97DEF66674D
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jan 2023 00:56:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 279F210E843;
	Wed, 11 Jan 2023 23:56:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD45010E170
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Jan 2023 23:56:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673481375; x=1705017375;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IKlAlzd9mJ7LxpNfVic4ExHFHNgKreQe+KrAwzZJ0Xg=;
 b=kkWsr0pT8mGfq5hKAa6F3OC7lMQlBEqTzemxMb6cmNK4v2anxLMn3g4T
 GsrHD920eDlhBSUUg2tQZZ2fkf00r9e32qA7R4f0E/+eKm+o7TCyB4v9h
 jl/8xof4nDpp3Wewzoggja+bVug+L5LCx5KMYmHTkGd+cMIli4P9MpM1V
 phy62RCZcCEGSy/DtgCuK5WmIO4qi5H0P6nL9CABB5YWNQQaqJ1JSIU2b
 vDgRemxRMGbweClvUinnrdbTafKFnH6DEMMiGa9TcnCqVCrV6iL0kUq4k
 lNsZAHcFK7JbWAepUet3/WfVd7+JB6fKUQUrapD/NpjTK1XtwB02sf4lL g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="307090899"
X-IronPort-AV: E=Sophos;i="5.96,318,1665471600"; d="scan'208";a="307090899"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2023 15:56:14 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="831486389"
X-IronPort-AV: E=Sophos;i="5.96,318,1665471600"; d="scan'208";a="831486389"
Received: from invictus.jf.intel.com ([10.165.21.134])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2023 15:56:14 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Jan 2023 15:55:30 -0800
Message-Id: <20230111235531.3353815-9-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230111235531.3353815-1-radhakrishna.sripada@intel.com>
References: <20230111235531.3353815-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH dii-client 8/9] drm/i915/mtl: Skip pcode qgv
 restrictions for MTL
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

Communicating QGV points restriction to PUnit happens via PM Demand
instead of the Pcode mailbox in the previous platforms. GV point
restriction is handled by the PM demand code.

Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 1c236f02b380..6791b25eb72d 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -124,6 +124,9 @@ int icl_pcode_restrict_qgv_points(struct drm_i915_private *dev_priv,
 {
 	int ret;
 
+	if (DISPLAY_VER(dev_priv) >= 14)
+		return 0;
+
 	/* bspec says to keep retrying for at least 1 ms */
 	ret = skl_pcode_request(&dev_priv->uncore, ICL_PCODE_SAGV_DE_MEM_SS_CONFIG,
 				points_mask,
-- 
2.34.1

