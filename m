Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4788787F15F
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Mar 2024 21:44:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F57C1120AF;
	Mon, 18 Mar 2024 20:44:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="imrCH8EW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71AAF1120AF
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Mar 2024 20:44:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710794653; x=1742330653;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DYk1kkQmtaawJ6CjjwaxJSU6NAhmGbkgyXFZBhjn/mM=;
 b=imrCH8EWZbIhmvAL77nZM8HYm3KRtr4ZYgWnrRw1UsiZ8mbs+SSulUr2
 9rTkHlrPF5dheBk+serz9rAGgBPiVGo29g7VbnmTEEAHbRrHc5PH1N5ot
 Jtj+LvfKDhWOHNzTnpEEGiqHLIJ1Jpba/HeOFxgQH5mOZAYClFwzreW4I
 kceBk1a7MTA1IRVaQPfykuSQc3acrEhkp8HnIAxzjRZ+1Y+hHoml28Rke
 kLrE8dVo71BVPMOepduarPQWGM6/Aky1EXV5UZubBq34JVLxL8b9Xt5f2
 0QLMdgNBQ5yFxiIW/p8pgF8am8bM2SRyUh8TzxlMa54gcMCLwecqkCjES A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11017"; a="16273729"
X-IronPort-AV: E=Sophos;i="6.07,135,1708416000"; d="scan'208";a="16273729"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2024 13:44:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11017"; a="827781920"
X-IronPort-AV: E=Sophos;i="6.07,135,1708416000"; d="scan'208";a="827781920"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 18 Mar 2024 13:44:09 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 18 Mar 2024 22:44:08 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Simon Ser <contact@emersion.fr>,
 =?UTF-8?q?Jonas=20=C3=85dahl?= <jadahl@redhat.com>,
 Daniel Stone <daniel@fooishbar.org>,
 Sameer Lattannavar <sameer.lattannavar@intel.com>,
 Sebastian Wick <sebastian.wick@redhat.com>,
 Harry Wentland <harry.wentland@amd.com>,
 Pekka Paalanen <pekka.paalanen@collabora.com>
Subject: [PATCH v3 0/2] drm: Add plane SIZE_HINTS property
Date: Mon, 18 Mar 2024 22:44:06 +0200
Message-ID: <20240318204408.9687-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
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

Final final version I hope. Mainly for CI to test against the
new IGTs.

Real userspace implementation:
https://gitlab.gnome.org/GNOME/mutter/-/merge_requests/3165                                                           

IGT:
https://patchwork.freedesktop.org/series/131199/

Changes from v2:
- Limit to cursor planes only (Simon)

Test-with: 20240315191505.27620-1-ville.syrjala@linux.intel.com
Cc: Simon Ser <contact@emersion.fr>
Cc: Jonas Ådahl <jadahl@redhat.com>
Cc: Daniel Stone <daniel@fooishbar.org>
Cc: Sameer Lattannavar <sameer.lattannavar@intel.com>
Cc: Sebastian Wick <sebastian.wick@redhat.com>
Cc: Harry Wentland <harry.wentland@amd.com>
Cc: Pekka Paalanen <pekka.paalanen@collabora.com>

Ville Syrjälä (2):
  drm: Introduce plane SIZE_HINTS property
  drm/i915: Add SIZE_HINTS property for cursors

 drivers/gpu/drm/drm_mode_config.c           |  7 +++
 drivers/gpu/drm/drm_plane.c                 | 56 +++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_cursor.c | 24 +++++++++
 include/drm/drm_mode_config.h               |  5 ++
 include/drm/drm_plane.h                     |  4 ++
 include/uapi/drm/drm_mode.h                 | 11 ++++
 6 files changed, 107 insertions(+)

-- 
2.43.2

