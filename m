Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FBD480DD4E
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Dec 2023 22:38:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E17010E0FB;
	Mon, 11 Dec 2023 21:38:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19A4110E0FB
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Dec 2023 21:38:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702330707; x=1733866707;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=96fUn+oi8p+PtR25YT1PxgD/EguLPHxHPM6G3+CE4DM=;
 b=E2KJ51hZvD44seKNgIEsvLT8NJGcmK0mpgSvlBovm6K07ytNuMiG7UcF
 5g/eExAvoVX0QzkrMmO+qGlPSdDigTfM8d7QYuP9+B1mlRJLy7qVHb+kf
 Nhol8Lkj2Xjexp/zem01+6cynF+EKV+iNSNulGoIAfu3/zlBtSnyh1Z8A
 FrEg3IilnW3JEs27t7zVjYpNwGEOXjFeUqdAdk/+wzx1roWHCDdrW2tvR
 6v//GxrueBS3SrONfdcadYpQ6DZahz/oYnxfDQKX0SgO1d78s7XdL1WUE
 6iDFbU/YZsGypXfpejCKwTBXMrMEQhIndFZ4R8E7YBOSm/Zt5/eR77NZs w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10921"; a="379712215"
X-IronPort-AV: E=Sophos;i="6.04,268,1695711600"; d="scan'208";a="379712215"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2023 13:37:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10921"; a="766547018"
X-IronPort-AV: E=Sophos;i="6.04,268,1695711600"; d="scan'208";a="766547018"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 11 Dec 2023 13:37:51 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 11 Dec 2023 23:37:50 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/4] drm/i915/dmc: DMC event stuff
Date: Mon, 11 Dec 2023 23:37:46 +0200
Message-ID: <20231211213750.27109-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
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

Fix the weird flip_done/etc. issues plaguing ADL+ by disabling all dodgy
DMC events that we definitely don't need. Also improve the debugs to
make it easier to see what we're doing.

Ville Syrjälä (4):
  drm/i915/dmc: Don't enable any pipe DMC events
  drm/i915/dmc: Also disable the flip queue event on TGL main DMC
  drm/i915/dmc: Also disable HRR event on TGL main DMC
  drm/i915/dmc: Print out the DMC mmio register list at fw load time

 drivers/gpu/drm/i915/display/intel_dmc.c      | 147 ++++++++----------
 drivers/gpu/drm/i915/display/intel_dmc_regs.h |   1 +
 2 files changed, 69 insertions(+), 79 deletions(-)

-- 
2.41.0

