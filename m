Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 718D1B81C7D
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Sep 2025 22:34:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC13C89B62;
	Wed, 17 Sep 2025 20:34:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eSrEPpQz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60EA488E45;
 Wed, 17 Sep 2025 20:34:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758141291; x=1789677291;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3+c8M+yerDckjATfJJUZvYePzNB3c+BXIy9ilvOzi0Y=;
 b=eSrEPpQzpLHEAjWTKfIdumR4OHfiIhwA0YDzUWFZ5KQgSiyzcQPAeeK/
 4D/clHeSL+dyZ1CP0mig9i4PMoaNNJiHj6rfWIw+MPfz5FF8D6IqHLPBC
 f4DCztYNeQEbrID1HuoihIkri3lNlJDb4Rp6w3CJJPXPMNDuNex1t8nh9
 EcsR1ONBm78xYbOfQIVCILpyzOo0nvkSYd39Hg1Fa2KH4tNgrTT2FTmzl
 5Retb2OHSiO04kbl8P50C9pD+72qlHn04DoQSF/gZIlgPuapF1FpfeJ6s
 JL03kKKlGuGLF8K/KPrt5KhSTkwPSP0HdOaPoga5uvlO5YVq19aNd04PQ Q==;
X-CSE-ConnectionGUID: tJHQXIK5Rtmm/sCqmsOC8g==
X-CSE-MsgGUID: ee/pf2QAQsqZqUqFNmlFSw==
X-IronPort-AV: E=McAfee;i="6800,10657,11556"; a="60570000"
X-IronPort-AV: E=Sophos;i="6.18,273,1751266800"; d="scan'208";a="60570000"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2025 13:34:51 -0700
X-CSE-ConnectionGUID: vQWAVrmpS5mkZMwEMaDGHQ==
X-CSE-MsgGUID: /ORy+WbBQ42k577ghgMoyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,273,1751266800"; d="scan'208";a="174465014"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.83])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2025 13:34:50 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 0/5] drm/i915/vrr: Hide icl/tgl idiosyncrasies better
Date: Wed, 17 Sep 2025 23:34:41 +0300
Message-ID: <20250917203446.14374-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Try to bury the special stuff needed by icl/tgl VRR hardware
a bit deeper. Should make working on the higher level VRR stuff
a bit more pleasant.

Ville Syrjälä (5):
  drm/i915/vrr: Extract helpers to convert between guardband and
    pipeline_full values
  drm/i915/vrr: Readout framestart_delay earlier
  drm/i915/vrr: Store guardband in crtc state even for icl/tgl
  drm/i915/vrr: Annotate some functions with "hw"
  drm/i915/vrr: Move the TGL SCL manging of vmin/vmax/flipline deeper

 drivers/gpu/drm/i915/display/intel_display.c |  23 +--
 drivers/gpu/drm/i915/display/intel_vrr.c     | 146 +++++++++++--------
 2 files changed, 101 insertions(+), 68 deletions(-)

-- 
2.49.1

