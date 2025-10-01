Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B202BB1350
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 18:05:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 697D910E72C;
	Wed,  1 Oct 2025 16:05:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eGPxzBAx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C34810E72C;
 Wed,  1 Oct 2025 16:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759334706; x=1790870706;
 h=from:subject:date:message-id:mime-version:
 content-transfer-encoding:to:cc;
 bh=2K2b4a278MWx7JacdkpQF5nGMgReV0ByE4MrAlqhTCU=;
 b=eGPxzBAxVchBuvz7Pbd+FFzEdLWdCpefSxRbqhCRR7Xt78JvzofLS7J2
 neNrXnt3htifQtsl9LDZ61SgcAujcYa0RK+U0L8u0YL6rss5np4kLKhGw
 41OIEzG0UV4liyN8n7PiYrwszMM8A6O2UznizmNS5+2S9ullMnxm9hZ9y
 03xRlGWH423r64ER5Xc69ovGTqjgumNKAhpuRQX4CqEHZteBpmsYkCP45
 cC5jHKNb5BlQTd8o1Shu32C3VCND0eX4KYA8cgaL4I3tnpBvl+b30Z6tf
 M1UGS8DNHw1Htoix6X02wnMggL+bU6G53yZ7SV73WyqBAHw0PNM4eXueI A==;
X-CSE-ConnectionGUID: Tt7ghQSqRLeds7f45xHlQg==
X-CSE-MsgGUID: n+QkBspHSOuCs/BOJyUgIw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="61570359"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="61570359"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 09:05:05 -0700
X-CSE-ConnectionGUID: apAJypANTUKDfup5SLddPg==
X-CSE-MsgGUID: KknP+PGuSX2NtfSdPr8o3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,307,1751266800"; d="scan'208";a="178628725"
Received: from mgerlach-mobl1.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.222.146])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 09:05:03 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Subject: [PATCH v2 0/2] drm/i915/display: Enable PICA power before AUX
Date: Wed, 01 Oct 2025 13:04:47 -0300
Message-Id: <20251001-pica-power-before-aux-v2-0-6308df4de5a8@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACBR3WgC/3WNQQ6CMBBFr0Jm7Zi2QqCuvIdh0ZZBJlHatIgYw
 t2tJC5dvpf891dIFJkSnIsVIs2c2I8Z1KEAN5jxRshdZlBCVUKrEwZ2BoN/UURLvY+E5rlgLYT
 QznXS1hbyNkTqedm71zbzwGny8b3fzPJrf8XyT3GWKFH3Rle2EU2p3IXHie5H5x/Qbtv2AYv8/
 my6AAAA
X-Change-ID: 20250923-pica-power-before-aux-70009ccd1b7b
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>, Gustavo Sousa <gustavo.sousa@intel.com>
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

Xe2_LPD introduced the PICA power well for powering Type-C port slice
and associated AUX channels. There is a requirement that the PICA power
well must be enabled before enabling AUX power.

Our driver currently has the order inversed in the power well listings,
so let's fix that.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
Changes in v2:
- Change the single patch into a 2-patch series, with the 1st patch
  being a prep one so that the final patch moves only the AUX pw
  descriptors.
- Link to v1: https://lore.kernel.org/r/20250924-pica-power-before-aux-v1-1-9fa95b80842c@intel.com

---
Gustavo Sousa (2):
      drm/i915/display: Extract separate AUX PW descriptors
      drm/i915/display: Enable PICA power before AUX

 .../gpu/drm/i915/display/intel_display_power_map.c | 26 ++++++++++++----------
 1 file changed, 14 insertions(+), 12 deletions(-)
---
base-commit: 308a05859081aae4125b58d186d582b814c6deb2
change-id: 20250923-pica-power-before-aux-70009ccd1b7b

Best regards,
--  
Gustavo Sousa <gustavo.sousa@intel.com>

