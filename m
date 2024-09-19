Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC74D97CE65
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2024 22:14:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 168EF10E047;
	Thu, 19 Sep 2024 20:14:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oAcY12Vh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1724A10E047
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2024 20:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726776862; x=1758312862;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=MJnv3LQHuXGCjYZVaNaFdNUyvw2bUyL7n0Wm4lgr8z4=;
 b=oAcY12VhQwuovc3h4X/CmI+pglXSXN3SOSlY/kc9EVnUZOUPvfSeqReX
 fV7dH0JVdnfAugEGfv3m+HL61Z4qTPDX+TScliuNMVDENZ/di60P+UOsM
 EyvznnGHJTY7gYu4XiXrNTRfSK3EhrFbEG4gSTT6hD35V7rWKtuDLsaIc
 5JkU0KnVW5hkfWGKiSVDX3LY7DN+0cgYCUgovIlIUP4Isp1t9PY6mwskP
 6jAW48rSABY0ID7wOf1STwlwau8anYUJ1/d60/Dzm5poKrjXV6ezG+QqS
 20DJQBIC5P4wT55p/kj2uoUnHdJpgjSjI2yXxQyDk0rIniHNjPQaUrtir g==;
X-CSE-ConnectionGUID: DbDnDahCRDi2iV/kRxFqYA==
X-CSE-MsgGUID: RsILtba6QraefK6QZgoKnA==
X-IronPort-AV: E=McAfee;i="6700,10204,11200"; a="43283116"
X-IronPort-AV: E=Sophos;i="6.10,242,1719903600"; d="scan'208";a="43283116"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2024 13:14:22 -0700
X-CSE-ConnectionGUID: KD9s2GXYSuGE96ldxA4Y0g==
X-CSE-MsgGUID: y858lrQXRzuPWlMS6K+jVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,242,1719903600"; d="scan'208";a="69644054"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.127])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2024 13:14:20 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [RFC 0/2] drm/i915/display: revamped crtc iterators
Date: Thu, 19 Sep 2024 23:14:09 +0300
Message-Id: <cover.1726776703.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
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

I didn't pick the idea, the idea picked me, and I had to do this.

Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>

Jani Nikula (2):
  drm/i915/display: add improved crtc iterators
  drm/i915/display: try out the new crtc iterators

 drivers/gpu/drm/i915/Makefile                 |  1 +
 .../gpu/drm/i915/display/intel_crtc_iter.c    | 94 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_crtc_iter.h    | 87 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_ddi.c      | 17 +++-
 drivers/gpu/drm/i915/display/intel_display.c  | 16 +++-
 drivers/gpu/drm/xe/Makefile                   |  1 +
 6 files changed, 207 insertions(+), 9 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_crtc_iter.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_crtc_iter.h

-- 
2.39.2

