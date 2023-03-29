Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91F556CDB26
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 15:50:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCF9410EAC6;
	Wed, 29 Mar 2023 13:50:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 860B710EAC6
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 13:50:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680097806; x=1711633806;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=78yIySJNVLJy8rjs29FoiUlNGMNT4vOBj0s5LZdTkKo=;
 b=gckj474A3LmrfSPqzGCyHbpavcwFk52bjV+paXQxwL91jbiNwr5gdo4A
 qWIbQ/XYN6dAvlF0KWxYJGXUyGmRkE7Tzsnf8C7KHDLTYWkJ9z3piVWOy
 qLrlWDYXvEhTBRgF+Lc2zAyIOM2PMhz28w3bDGx0z8U5enYWuIVN4VnXs
 PajsfetzdZ00vEVUqS+/WlZJBUkA3oHiRBK2/L4c+zjSzSj1AoYlu7NWb
 3bEz96aQVJray8FLCI2kqa8kBJrrT/G4VMl9iqorwySJ/Dp/ILpLt4C7d
 GqY8C/sYJNJU8FTaWzrUUJMeKr9SzgiK5jSqyevEbvgxPbS2czBc0Agdc g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="321273932"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="321273932"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 06:50:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="714622641"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="714622641"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga008.jf.intel.com with SMTP; 29 Mar 2023 06:50:03 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 29 Mar 2023 16:50:02 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Mar 2023 16:49:50 +0300
Message-Id: <20230329135002.3096-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/12] drm/i915: Add CSC state readout/check
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

Implement state readout/check for the various CSC units
we utilize.

Ville Syrjälä (12):
  drm/i915: Fix limited range csc matrix
  drm/i915: Introduce intel_csc_matrix struct
  drm/i915: Split chv_load_cgm_csc() into pieces
  drm/i915: Start using struct intel_csc_matrix for chv cgm csc
  drm/i915: Store ilk+ csc matrices in the crtc state
  drm/i915: Utilize crtc_state->csc on chv
  drm/i915: Sprinke a few sanity check WARNS during csc assignment
  drm/i915: Add hardware csc readout for ilk+
  drm/i915: Implement chv cgm csc readout
  drm/i915: Include the csc matrices in the crtc state dump
  drm/i915: Hook up csc into state checker
  drm/i915: Do state check for color management changes

 drivers/gpu/drm/i915/display/intel_color.c    | 484 +++++++++++++-----
 .../drm/i915/display/intel_crtc_state_dump.c  |  43 ++
 drivers/gpu/drm/i915/display/intel_display.c  |  27 +
 .../drm/i915/display/intel_display_types.h    |   8 +
 .../drm/i915/display/intel_modeset_verify.c   |   2 +
 5 files changed, 441 insertions(+), 123 deletions(-)

-- 
2.39.2

