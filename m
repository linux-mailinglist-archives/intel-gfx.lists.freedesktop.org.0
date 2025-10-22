Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E37D3BF978A
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 02:32:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E34F10E697;
	Wed, 22 Oct 2025 00:32:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kFxiqHcE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AFB410E697;
 Wed, 22 Oct 2025 00:32:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761093138; x=1792629138;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=P2LdVXv3MWdiPkf4Y2lo2d8Z8NHQ9jejev8R2BmozA8=;
 b=kFxiqHcEklmr5ia6w3Ygp21bl0oMYBqYZIvWcNBSmU8SagKVyq/bfiNK
 iIdVqFQOqWVaoa9A6HIO1dbRE+n1bHsfiJrFi/e2NDmW3omDDshNtIS8v
 eBZo2PIeVy7oA4Vlw50gA8+iDgHlwoxxgN150foVG0lIekc52xyOiPoYd
 MbflrIZYSkVvSRmbSmiyeklzXl99HCx8qp+fMRZ5U0e2Qe/awipK17nDa
 urwH98HEM8om8kVg9kB01SVb9bMUpQpESQEJxFXQ6oTRWnoUA985ck4Va
 Yp+55pof+m5K/oXSKU9Mh80WSrndYwTMQQ+gblRI6Oo3iYLFVuUtRZ3Ig Q==;
X-CSE-ConnectionGUID: v1/ifz0wQTqdeiBFW8Bm3g==
X-CSE-MsgGUID: gWRwaIwLQiyBEge1wKcu1A==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="85855790"
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="85855790"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 17:32:18 -0700
X-CSE-ConnectionGUID: HusGYYmXS6SoTocE8K09Cg==
X-CSE-MsgGUID: a8MeXOJaTJybbtDAXR46mA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="188132490"
Received: from gpacheco-mobl.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.221.26])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 17:32:14 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Tue, 21 Oct 2025 21:28:47 -0300
Subject: [PATCH v2 22/32] drm/i915/xe3p_lpd: Don't allow odd ypan or ysize
 with semiplanar format
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251021-xe3p_lpd-basic-enabling-v2-22-10eae6d655b8@intel.com>
References: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
In-Reply-To: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, 
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>, 
 Gustavo Sousa <gustavo.sousa@intel.com>, 
 =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>, 
 Juha-pekka Heikkila <juha-pekka.heikkila@intel.com>, 
 Luca Coelho <luciano.coelho@intel.com>, 
 Lucas De Marchi <lucas.demarchi@intel.com>, 
 Matt Atwood <matthew.s.atwood@intel.com>, 
 Matt Roper <matthew.d.roper@intel.com>, 
 Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>, 
 Shekhar Chauhan <shekhar.chauhan@intel.com>, 
 Vinod Govindapillai <vinod.govindapillai@intel.com>
X-Mailer: b4 0.15-dev
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

From: Juha-pekka Heikkila <juha-pekka.heikkila@intel.com>

Disable support for odd panning and size in y direction when running on
display version 35 and using semiplanar formats.

Bspec: 68903
Signed-off-by: Juha-pekka Heikkila <juha-pekka.heikkila@intel.com>
Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_plane.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
index 78329deb395a..ddf8dfbf6b2f 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_plane.c
@@ -1050,6 +1050,9 @@ int intel_plane_check_src_coordinates(struct intel_plane_state *plane_state)
 		     DISPLAY_VERx100(display) == 3002) &&
 		     src_x % 2 != 0)
 			hsub = 2;
+
+		if (DISPLAY_VER(display) == 35)
+			vsub = 2;
 	} else {
 		hsub = fb->format->hsub;
 		vsub = fb->format->vsub;

-- 
2.51.0

