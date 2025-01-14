Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32431A10631
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jan 2025 13:07:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6AF910E122;
	Tue, 14 Jan 2025 12:07:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M4NKyKdj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E075910E1FC;
 Tue, 14 Jan 2025 12:07:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736856455; x=1768392455;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=iIxZqLVHHFmcN6lJ5k1qqcoLj9CFnnCuj/VzG2JxBlc=;
 b=M4NKyKdjQilWnyxRYqqHd9uX6jNbU6QDNA8Z9eu1CZU9gnjc/XYdpEij
 n7Hwf5TWDU+HXI60J4aRhtYWD6qSqaXXeA7R9osNGNWNYkMC/0AB6T0ex
 grARUItAGK1B+qiRAj7wAwVEVoyMmmI+kNbAJ2s+Ajl5p5G3HD/b+aGsz
 CLwxIQgQ1pJsMBKZteSJp/6MqzjfICLRiAvl/BI+Ej2vxAqke/KulbRZT
 of+PYmn+R6bQniAgK1z+153JPPrbbc6D0Wz/fiPEkvNmfiBDA/Exft1Sq
 EMncSXgTAgQwYSJtN/EcfDI/cctXEflnj1vnjM3zYJV0MvSwE892Gfi+c w==;
X-CSE-ConnectionGUID: YyqrvN6uTDevSXsj/Q7lzw==
X-CSE-MsgGUID: JT+N6uKMTzCQFwSGqdRNPA==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="39956131"
X-IronPort-AV: E=Sophos;i="6.12,314,1728975600"; d="scan'208";a="39956131"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2025 04:07:34 -0800
X-CSE-ConnectionGUID: q5FuWkWtQ0yiq7z1x7Xzdg==
X-CSE-MsgGUID: VYMYouwbS268e9vueqDWsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="108849071"
Received: from carterle-desk.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.245.246.225])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2025 04:07:31 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com,
 santhosh.reddy.guddati@intel.com, jani.saarinen@intel.com,
 jouni.hogander@intel.com
Subject: [PATCH v3 0/4] drm/i915/xe3: FBC Dirty rect feature support
Date: Tue, 14 Jan 2025 14:07:15 +0200
Message-ID: <20250114120719.191372-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Dirty rect support for FBC in xe3 onwards based on the comments after the
initial RFC series.

v2: Dirty rect related compute and storage moved to fbc state (Ville)

V3: Dont call fbc activate if FBC is already active

Vinod Govindapillai (4):
  drm/i915/display: avoid calling fbc activate if fbc is active
  drm/i915/xe: add register definitions for fbc dirty rect support
  drm/i915/xe3: add dirty rect support for FBC
  drm/i915/xe3: disable FBC if PSR2 selective fetch is enabled

 drivers/gpu/drm/i915/display/intel_display.c  |   4 +
 drivers/gpu/drm/i915/display/intel_fbc.c      | 108 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_fbc.h      |   4 +
 drivers/gpu/drm/i915/display/intel_fbc_regs.h |   9 ++
 4 files changed, 121 insertions(+), 4 deletions(-)

-- 
2.43.0

