Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00D568FCA34
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2024 13:18:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38FB810E59F;
	Wed,  5 Jun 2024 11:18:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QqobcqVy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F30210E59F
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jun 2024 11:18:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717586316; x=1749122316;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=aEJtoEIUIdVIBgIWQA8VFJkdhuQW5PwOXusHz0yqj+M=;
 b=QqobcqVyLcz2DZ+EWHp9KNgDRnmqDfewedph+EA1bgZp+qwVShFx1pFK
 JwzZx+kbh3CGDkmuEXjM9JFkgkZMGpD8c520FczM3N+Bj2e5Jqc0cpax+
 MstJXRUl6M3rI01qe3WwRlim49BBCe61JQtefTgMd/hNvOONSWzNpV3VS
 bAZ+ayww0DMcrQZzCtmgnlpm1JfiTiL7M1hDMkmOWSoBILsi768ozNbkz
 GYZqbGVX1j1OitI466j0w55jc7EkiKhJBQs7l2TqT0fHEHUe9gqRskRV6
 ukF6SPZoRMgZxVN0PRoX7jOPP5wcZv02hlkCD8h1Hzw9roaXIpmG5gWUW g==;
X-CSE-ConnectionGUID: 1EWf8aQyQySXejEH/vcIRg==
X-CSE-MsgGUID: 3QXw16oaS3+k+F9J2MU16g==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="11920175"
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="11920175"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 04:18:35 -0700
X-CSE-ConnectionGUID: WEag7pKlS0ms299jzZeoCw==
X-CSE-MsgGUID: dUAGa0HBSx+zZ5/NUADblA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="37566095"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 05 Jun 2024 04:18:34 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 05 Jun 2024 14:18:32 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/7] drm/i915: bdw+ pipe interrupt stuff
Date: Wed,  5 Jun 2024 14:18:25 +0300
Message-ID: <20240605111832.21373-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.1
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

Clean up the bdw+ pipe interrupt bits, and enable some new fault
interrupts on tgl+ and mtl+.

Ville Syrjälä (7):
  drm/i915: Use REG_BIT() for bdw+ pipe interrupts
  drm/i915: Document bdw+ pipe interrupt bits
  drm/i915: Sort bdw+ pipe interrupt bits
  drm/i915: Extend GEN9_PIPE_PLANE_FLIP_DONE() to cover all universal
    planes
  drm/i915: Nuke the intermediate pipe fault bitmasks
  drm/i915: Enable pipeDMC fault interrupts on tgl+
  drm/i915: Enable plane/pipeDMC ATS fault interrupts on mtl

 .../gpu/drm/i915/display/intel_display_irq.c  | 49 ++++++++++--
 drivers/gpu/drm/i915/i915_reg.h               | 80 ++++++++-----------
 2 files changed, 79 insertions(+), 50 deletions(-)

-- 
2.44.1

