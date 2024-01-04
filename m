Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 17A00824613
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 17:25:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B54710E4B8;
	Thu,  4 Jan 2024 16:25:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F28C10E4B8;
 Thu,  4 Jan 2024 16:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704385523; x=1735921523;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=e5hY6GVwLrEXhj5v6chgSuWpTllPZiCH3ivnBDLFvFg=;
 b=F8xp4HRJ+HmWBawwoDgR6Nn7reSW2HRJ9slQz4ua00JaiYMirvHPbOxc
 2jTocErQuzcSdikLxW7jsGqam/KgljBwHM1PGZAoIiFagzKeatLpnXXeL
 NszugI8QukvJJx3j0hG9+87KTWyOnoNpPOqL3ZekZvoH9j38Dx5mAy0GY
 97eWcXdCTRguWBFdXR2FfG2u/ta7tmJ3b2rcubyj/tdVwbMcxqzc14AY9
 x86ThTIuLCQD7HNs9iT7KqwKdexOMABRM9IggU2Z6Y5TERuUOaxofBSa8
 +jTFFl2V0aM2S5T5UwNIQCi9FnAoRW1v4oIfjUn6nJOOPC0eDsg4RFZWZ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="428459436"
X-IronPort-AV: E=Sophos;i="6.04,331,1695711600"; d="scan'208";a="428459436"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 08:24:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="903868044"
X-IronPort-AV: E=Sophos;i="6.04,331,1695711600"; d="scan'208";a="903868044"
Received: from josouza-mobl2.bz.intel.com ([10.87.243.88])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 08:24:15 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH v4 1/3] drm/i915: Disable DSB in Xe KMD
Date: Thu,  4 Jan 2024 08:24:09 -0800
Message-ID: <20240104162411.56085-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Francois Dugast <francois.dugast@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Often getting DSB overflows when starting Xorg or Wayland compositors
when running Xe KMD.
Issue was reported but nothing was done, so disabling DSB as whole
until properly fixed in Xe KMD.

v2:
- move check to HAS_DSB(Jani)

v3:
- use IS_ENABLED(I915) check in intel_dsb_prepare()

Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/989
Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/1031
Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/1072
Cc: Animesh Manna <animesh.manna@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Francois Dugast <francois.dugast@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 482c28b5c2de5..a6c7122fd671d 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -453,6 +453,10 @@ struct intel_dsb *intel_dsb_prepare(const struct intel_crtc_state *crtc_state,
 	if (!HAS_DSB(i915))
 		return NULL;
 
+	/* TODO: DSB is broken in Xe KMD, so disabling it until fixed */
+	if (!IS_ENABLED(I915))
+		return NULL;
+
 	dsb = kzalloc(sizeof(*dsb), GFP_KERNEL);
 	if (!dsb)
 		goto out;
-- 
2.43.0

