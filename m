Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C86E29DBF8C
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2024 07:50:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38D0E10E0AB;
	Fri, 29 Nov 2024 06:50:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Vj7XLW72";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31C6D10E0AB
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Nov 2024 06:50:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732863019; x=1764399019;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QnqIguP+o2Swc2IKYTgZ2VFWClbu4efJYD+tG15cclQ=;
 b=Vj7XLW72Zvcxvjy5Lcx2QGMbTI7oDyoWYmVOkg2tAN9Lhkgg6rMAMttC
 r67z/G2S/CXFY0FOxjC5iewPKmpij0TURLNiww30ZgG4SaHQWpn+xkd05
 jnTESrSE7huE5xCythkq9SfhfNNAfwVDhdS/KWc7RKJ+5ITZsF4ty6MBL
 p3s5H0voED2NiXCJkCskExKCKzWheCnxtXA5xTBaIlCAf8iCpQm4339Gj
 lsCG4v486ODrTD4aXQHUo6xJPAfX9p8veGTcpTFy/LUcLGgS9LUd/QkfY
 tlL3Wlv+Zlkfxa7EVX7whSGHgRd39ZLzBO4yxYEEZnLiyJ+5T+Rr+4UWM w==;
X-CSE-ConnectionGUID: 2fqIz/KYRe2CQ/xrlZojyQ==
X-CSE-MsgGUID: s2xpjclKSsO90f3zXVjiVw==
X-IronPort-AV: E=McAfee;i="6700,10204,11270"; a="44468017"
X-IronPort-AV: E=Sophos;i="6.12,194,1728975600"; d="scan'208";a="44468017"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2024 22:50:18 -0800
X-CSE-ConnectionGUID: Mc6f8ZtxRIaeG67VSC4dww==
X-CSE-MsgGUID: yzQZoi/KTPqUv4itnkPSnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,194,1728975600"; d="scan'208";a="92589157"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 28 Nov 2024 22:50:15 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 29 Nov 2024 08:50:14 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Sagar Ghuge <sagar.ghuge@intel.com>,
 Nanley Chery <nanley.g.chery@intel.com>, Xi Ruoyao <xry111@xry111.site>
Subject: [PATCH 0/4] drm/i915/fb: Deal with Mesa clear color alignment
 regression
Date: Fri, 29 Nov 2024 08:50:10 +0200
Message-ID: <20241129065014.8363-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Mesa changed its clear color alignment without informing the kernel,
and now the kernel expects 4k alignment whereas Mesa only guaratees
64 bytes. Reduce the kernel alignment requirement to the same 64 bytes
since there's no real reason for the current 4k limit. And while at it
add some missing checks and debugs to the clear color hadling.

Cc: Sagar Ghuge <sagar.ghuge@intel.com>
Cc: Nanley Chery <nanley.g.chery@intel.com>
Cc: Xi Ruoyao <xry111@xry111.site>

Ville Syrjälä (4):
  drm/i915/fb: Relax clear color alignment to 64 bytes
  drm/i915/fb: Add debug spew for misaligned CC plane
  drm/i915/fb: Check that the clear color fits within the BO
  drm/uapi/fourcc: Document the Intel clear color alignment better

 drivers/gpu/drm/i915/display/intel_fb.c | 20 +++++++++++++++---
 include/uapi/drm/drm_fourcc.h           | 27 +++++++++++++------------
 2 files changed, 31 insertions(+), 16 deletions(-)

-- 
2.45.2

