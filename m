Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B82D98BE3C
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2024 15:45:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1999810E14C;
	Tue,  1 Oct 2024 13:45:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KhH+UbIK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC50510E14C
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2024 13:45:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727790335; x=1759326335;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kxaShUKgTnGOliCKkmscrxn231bB59DUq2Gq00+PLXI=;
 b=KhH+UbIK4+NjaUdM5ZTFW2hpzs8xMWtr6Y47+d504Iq0cwurzHkaL8b8
 7naLf2vwUZnD/X+o5oqE2hkDfIuRwshvsaTgNcRpnPyjpFOWrAX2pXoVI
 SPYGXlOtDrQDOxldnRy8HRWFzd85GfXFyaDnQhpcnNGLNnm6T0GW/ONqj
 SHuMqjHfc1yJVrqBzwvHFDjo5oN/SAu1fr2eHvOKDdtaYDnTHOU51cFjw
 IUEFwIZ7E3XL+lBo6ukHhpOLFqoPhmfCVYBtl+xqFwEM+/Qb3RXWGDCma
 w4C4sT5D8uI18+lJURyQV8kKXGh56sY/XtvDy10M4TbZRFOD8yof0VFQh A==;
X-CSE-ConnectionGUID: Zcpp3jhhQI2MaIUG78kndg==
X-CSE-MsgGUID: EouoJi//Traw7opSLayXYw==
X-IronPort-AV: E=McAfee;i="6700,10204,11212"; a="30810247"
X-IronPort-AV: E=Sophos;i="6.11,167,1725346800"; d="scan'208";a="30810247"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2024 06:45:34 -0700
X-CSE-ConnectionGUID: WPegACjLR7mk/+qAIQsATQ==
X-CSE-MsgGUID: uMnob3jURri5JeodOykZ0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,167,1725346800"; d="scan'208";a="73336363"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa007.fm.intel.com with ESMTP; 01 Oct 2024 06:45:33 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@intel.com, ankit.k.nautiyal@intel.com,
 uma.shankar@intel.com
Subject: [PATCH v13 0/3] VRR refactoring and panel replay workaround
Date: Tue,  1 Oct 2024 19:17:00 +0530
Message-ID: <20241001134703.1128487-1-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
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

Refactor VRR compute config to account for Panel replay workaround
for VSC SDP.

Previous Patch series links:
https://patchwork.freedesktop.org/series/135629/
https://patchwork.freedesktop.org/series/135851/
https://patchwork.freedesktop.org/series/138232/

Animesh Manna (2):
  drm/i915/vrr: Split vrr-compute-config in two phases
  drm/i915/panelreplay: Panel replay workaround with VRR

Mitul Golani (1):
  drm/i915/vrr: Add helper to check if vrr possible

 drivers/gpu/drm/i915/display/intel_display.c | 23 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_display.h |  1 +
 drivers/gpu/drm/i915/display/intel_vrr.c     | 20 ++++++++++++-----
 drivers/gpu/drm/i915/display/intel_vrr.h     |  2 ++
 4 files changed, 41 insertions(+), 5 deletions(-)

-- 
2.46.0

