Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33CC29F6C6E
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2024 18:39:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBF9910E205;
	Wed, 18 Dec 2024 17:39:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S1qprgWi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F0AB10E343
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Dec 2024 17:39:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734543555; x=1766079555;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=V38Q0RrCRVK4SAI6eRyWmESfEFKhreBB5DuEsSxJRec=;
 b=S1qprgWiKHy88M5lV1Rr21ug730J9MIc0GTt/plqJYqyyxowElcOQXYR
 pwD9rjyZ38yBIAZmFof/2Isgl0V1nWm/K1js4lJgFgOnHIQQ4dAV+Iryg
 kYpz2cOTOJCzi62nNa/mp1fdrC7Gf01CFFiWzd7B267GXxKtZTpnKjgr3
 7pDesdyeeamErpnfz0g1Puphz8+O4r2MkCHnZu0f/jgIO+JRqbGu6DNaS
 ZOdW7nUtXQ7JGuHnt0hW33Xxbxsos7mtE7t//DTeTHQEwiJSiBx4e/5pP
 OJyBSPpG5qH8NsNgqV9wDKh922mT/oG46Cfs6KBD/K+UuQgfEHi4Sp75b Q==;
X-CSE-ConnectionGUID: 1f5gAg1JQ1uNZDeNyv/PZw==
X-CSE-MsgGUID: tbHn+dtURLyEnVuVLw0fHw==
X-IronPort-AV: E=McAfee;i="6700,10204,11290"; a="22619188"
X-IronPort-AV: E=Sophos;i="6.12,245,1728975600"; d="scan'208";a="22619188"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2024 09:36:53 -0800
X-CSE-ConnectionGUID: BcqX9e2UTim8/lGsopzPug==
X-CSE-MsgGUID: dSPdusBFQCGTnB4hj7PI9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,245,1728975600"; d="scan'208";a="98165356"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 18 Dec 2024 09:36:51 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 18 Dec 2024 19:36:50 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/4] drm/i915: Drop 64bpp YUV formats for SDR planes and
 improve tracepoints
Date: Wed, 18 Dec 2024 19:36:46 +0200
Message-ID: <20241218173650.19782-1-ville.syrjala@linux.intel.com>
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

Get rid of the 64bpp YUV formats on ICL+ SDR planes due to
some weird underruns they're causing on TGL, and also bspec
seems to be telling us to not use them either.

Also included some improvements to the tracepoints
that I used to hunt this down.

Ville Syrjälä (4):
  drm/i915: Drop 64bpp YUV formats from ICL+ SDR planes
  drm/i915: Drop the extra "plane" from tracpoints
  drm/i915: Pass the plane state explicitly to tracpoints
  drm/i915: Include pixel format in plane tracpoints

 .../gpu/drm/i915/display/intel_atomic_plane.c |  4 +-
 .../drm/i915/display/intel_display_trace.h    | 47 ++++++++++---------
 .../drm/i915/display/skl_universal_plane.c    |  4 --
 3 files changed, 28 insertions(+), 27 deletions(-)

-- 
2.45.2

