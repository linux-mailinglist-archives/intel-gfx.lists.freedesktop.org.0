Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 35C9549DE02
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jan 2022 10:33:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 444FD10EDA8;
	Thu, 27 Jan 2022 09:33:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E281210E64C
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jan 2022 09:33:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643275989; x=1674811989;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=c4nIsn9pUUL8MRak0jz63RlFcuaFVpxLHkJ9VpJGO0o=;
 b=ciLICJjRw1/gZUijUF6OWuOnOHy9u+NZSW5KmBpV47Lfv9lJzR6yeK5P
 L8qs8paDlgRI0V2Jv9T3hLorRAo/H5S/8IqF71nJlyUdrYLfNhWcEpF/1
 j3+wokjxHi3L6PNdV7U7/H00QnH4/43osDWcGhzBXVhyIOIEj85Vvfztz
 WIYtZy6E4J7cDI/rfeOgjA8iO3W4bJfwQggKVw9w8WP9vho9ou41VqLA7
 jNA8pLk1piJMf446gHJRikkiG8gq5uppvVvMjqVXCJ+GbSTN1TaKQu2jl
 cjwhXXLXHLkd+TI60EMUeDzQQEQbu0Mt/0w52gCIx8Jo2iZi7GRayBqnn g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="307514724"
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="307514724"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 01:33:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="535568785"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by orsmga008.jf.intel.com with SMTP; 27 Jan 2022 01:33:04 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 27 Jan 2022 11:33:03 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Jan 2022 11:32:49 +0200
Message-Id: <20220127093303.17309-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/14] drm/i915: M/N cleanup
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

Start cleaning up the M/N stuff. Couple of eventual goals:
- fix/enhance DRRS (it's currently in kind of poor state)
- move towards eliminating any RMW stuff from the atomic
  commit so that we can start playing around with using
  DSB for it, and the DRRS PIPECONF RMWs are a bit in the
  way so need to think of a way to avoid them, or at least
  make them not race with the atomic commit.

Ville Syrjälä (14):
  drm/i915: Extract intel_{get,set}_m_n()
  drm/i915: Clean up M/N register defines
  drm/i915: s/gmch_{m,n}/data_{m,n}/
  drm/i915: Move drrs hardware bit frobbing to small helpers
  drm/i915: Make M/N set/get a bit more direct
  drm/i915: Move PCH transcoder M/N setup into the PCH code
  drm/i915: Move M/N setup to a more logical place on ddi platforms
  drm/i915: Extract {i9xx,ilk}_configure_cpu_transcoder()
  drm/i915: Add fdi_m2_n2
  drm/i915: Program FDI RX TUSIZE2
  drm/i915: Dump dp_m2_n2 always
  drm/i915: Extract can_enable_drrs()
  drm/i915: Set DP M2/N2 equal to M1/N1 when not doing DRRS
  drm/i915: Always check dp_m2_n2 on pre-bdw

 drivers/gpu/drm/i915/display/g4x_dp.c         |  20 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  18 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 355 ++++++++----------
 drivers/gpu/drm/i915/display/intel_display.h  |  35 +-
 .../drm/i915/display/intel_display_types.h    |  21 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |   2 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |   2 -
 drivers/gpu/drm/i915/display/intel_drrs.c     | 107 +++---
 drivers/gpu/drm/i915/display/intel_fdi.c      |   9 +
 .../gpu/drm/i915/display/intel_pch_display.c  |  56 ++-
 .../gpu/drm/i915/display/intel_pch_display.h  |   6 +
 drivers/gpu/drm/i915/i915_reg.h               |  22 +-
 12 files changed, 342 insertions(+), 311 deletions(-)

-- 
2.34.1

