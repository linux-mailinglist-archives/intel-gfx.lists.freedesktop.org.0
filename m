Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F76D8FC8A1
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2024 12:06:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EF2D10E691;
	Wed,  5 Jun 2024 10:06:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MVWagsTO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EAB710E691
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jun 2024 10:06:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717581991; x=1749117991;
 h=from:to:subject:date:message-id:mime-version;
 bh=x5WES2IpN426f6TbrwqY52XNNHaHpCC5DDraCNwBnOI=;
 b=MVWagsTOpFmoONZhQC4ITpLZ7itdJ8SIiMqAKlN75qp1zmmPlv/Jy835
 VDLNEoEZxBItrPg59VZRtT9mGAwd06JE/3Swny996sw9QM8Up1CAv+4Ty
 yq30ALHKTv+Amys4YAbcjq2clmi5RRgMPzrEaeJElxGLCDN1oQv3IA1En
 7btWXQZ5MJnUiPgh5Tbz6XYsbkRpZbowDzvL/r11yPJvyoR5N+TrUoCu4
 m/48GeKskpMUSu8rMACsRHaKNFHrrkZ57xv9+pmRtdLK3mLPrjv9Ov/IO
 p9vM1AMf0upeqwt7LFM/D7IGPYbt+6oHZS8HL5foDJG+Nyag1tPVxBpg8 g==;
X-CSE-ConnectionGUID: 1uVacWjaS2yikRYww019AA==
X-CSE-MsgGUID: y+9nIvWtS8GErBERerBRZQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="14293401"
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="14293401"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 03:06:31 -0700
X-CSE-ConnectionGUID: GZ1HfsNETk6VXfyP2sifjw==
X-CSE-MsgGUID: qEkUfr2dSCeLgA5sVR5OZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="42658351"
Received: from sbutnari-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.204])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 03:06:29 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org, Jouni =?utf-8?Q?H=C3=B6gander?=
 <jouni.hogander@intel.com>, Animesh Manna <animesh.manna@intel.com>
Subject: Fixes that failed to pick to v6.10-rc2
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Date: Wed, 05 Jun 2024 13:06:24 +0300
Message-ID: <87y17jbt5r.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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


Jouni, Animesh, there are some PSR commits with Fixes: pointing at
commits in v6.9 or v6.10-rc1.

This does not apply cleanly to -rc1:
d07a578703db ("drm/i915/display: Do not print "psr: enabled" for on Panel Replay")

This applies but does not build:
45b5853114ad ("drm/i915/psr: Get Early Transport status in intel_psr_pipe_get_config")

This applies and builds but decided to punt because of the above:
cd43a85ec3c6 ("drm/i915/psr: Use enable boolean from intel_crtc_state for Early Transport")

If these are important fixes to be backported to v6.10, please provide
the backports.

BR,
Jani.


-- 
Jani Nikula, Intel
