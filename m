Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1CF051A313
	for <lists+intel-gfx@lfdr.de>; Wed,  4 May 2022 17:04:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4202E10EB53;
	Wed,  4 May 2022 15:04:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FD4610EAB1
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 May 2022 15:04:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651676684; x=1683212684;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Hu9JBjORNA0KYLoU3ZXX4L8iV5Afilag2du6GApiGOw=;
 b=dTZ2FRNPxQKCZsSHoQYcrphWfxHQBLS5K22x/YJWIY3XVjVgP8rqYfNF
 yMZJdjFQdLrC33rRplSKhHJTgMMGsax5qZ9g+2ygVlbU+iX46O1QbJBJL
 7qW0g6dzdCuF/GVZS+fieW3Db2XD1fuZsxeceNi8lbuZdcmfL+MB9z29Z
 k0P5NxhrY/z3DNUYToATWV7kxnBqldkUTKWe6rk4MXAAxLSzFFXFhI48g
 HSuDLvD5R/RyaRxqpT1tylBTIh/BnG096vHy5hoO1xaatXFJ3KLnFVAeK
 LUwq1uCllt/O8Vgxam1T7ZFISjxj7Ml606FPBOgYKRpp5Z8IG0KOGhk9/ A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10337"; a="330778932"
X-IronPort-AV: E=Sophos;i="5.91,198,1647327600"; d="scan'208";a="330778932"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 08:04:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,198,1647327600"; d="scan'208";a="562761669"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by orsmga007.jf.intel.com with SMTP; 04 May 2022 08:04:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 04 May 2022 18:04:40 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 May 2022 18:04:31 +0300
Message-Id: <20220504150440.13748-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/9] drm/i915/bios: Rework BDB block handling
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

Here are the easy parts of the previous BDB series, without
the PNPID->panel_type bits (the PPS stuff still needs some
more thinking).

Everything here has been reviewed so should be good to go
in if CI is happy.

Ville Syrjälä (9):
  drm/i915/bios: Reorder panel DTD parsing
  drm/i915/bios: Generate LFP data table pointers if the VBT lacks them
  drm/i915/bios: Get access to the tail end of the LFP data block
  drm/i915/bios: Document the mess around the LFP data tables
  drm/i915/bios: Assume panel_type==0 if the VBT has bogus data
  drm/i915/bios: Extract get_panel_type()
  drm/i915/bios: Refactor panel_type code
  drm/i915/bios: Parse the seamless DRRS min refresh rate
  drm/i915: Respect VBT seamless DRRS min refresh rate

 drivers/gpu/drm/i915/display/intel_bios.c     | 345 +++++++++++++++---
 drivers/gpu/drm/i915/display/intel_panel.c    |  10 +-
 drivers/gpu/drm/i915/display/intel_vbt_defs.h |  24 +-
 drivers/gpu/drm/i915/i915_drv.h               |   1 +
 4 files changed, 326 insertions(+), 54 deletions(-)

-- 
2.35.1

