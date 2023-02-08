Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 764F168E6F2
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Feb 2023 05:09:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB05510E048;
	Wed,  8 Feb 2023 04:09:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7266210E048;
 Wed,  8 Feb 2023 04:09:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675829356; x=1707365356;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=JkNx6qLkoWhY7lyFgJxHgzGRDZb0xDKvEDDzL2/k6so=;
 b=SWS5nXXKz122M5zdVTUYc1G2v6mVEdT5nLRKgUyWo4gC5zCYN0M7WWWL
 sihXP1wOnE4sNV6LIRrd9ovNgGjpliNRGG4xcahMW3F+kPB/FR9BsvWpw
 +CxI/TCcLozkQzjXeEeblB1H/4m/8aeHrP0wT3Ob59Y4UjXvB7yvaFaYV
 NnughZA0dnfg8euv27/vlOyu6R7GgfRR+ex7mShBm8Js2xegK1DCrwAvA
 hBoKr3tyO3pLBH12C9OTwIUU/xf0ZLD5kyk+B0p0Lyr/1V+Qukmeg5i3O
 BbD5KmFev3b5Dms1U2LUICm1VhqcFcA1IQIQjabQswiV3wzYSoOE7wd58 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="330997971"
X-IronPort-AV: E=Sophos;i="5.97,280,1669104000"; d="scan'208";a="330997971"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 20:09:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="697519792"
X-IronPort-AV: E=Sophos;i="5.97,280,1669104000"; d="scan'208";a="697519792"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga008.jf.intel.com with SMTP; 07 Feb 2023 20:09:12 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 08 Feb 2023 06:09:11 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: dri-devel@lists.freedesktop.org
Date: Wed,  8 Feb 2023 06:09:09 +0200
Message-Id: <20230208040911.12590-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] drm: Add plane SIZE_HINTS property
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
Cc: Simon Ser <contact@emersion.fr>, intel-gfx@lists.freedesktop.org,
 Pekka Paalanen <pekka.paalanen@collabora.com>,
 =?UTF-8?q?Jonas=20=C3=85dahl?= <jadahl@redhat.com>,
 Daniel Stone <daniel@fooishbar.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Proposal for a new plane SIZE_HINTS property to essentially
replace the cursor size caps, based on recent discussion
in this gitlab bug:
https://gitlab.freedesktop.org/drm/intel/-/issues/7687

As for userspace, so far I only did a quick modetest
blob decoder (mainly to verify that it looks correct):
https://gitlab.freedesktop.org/vsyrjala/libdrm/-/commits/plane_size_hints

Didn't yet update my modesetting ddx cursor size patch
to use this or anything.

Cc: Simon Ser <contact@emersion.fr>
Cc: Jonas Ådahl <jadahl@redhat.com>
Cc: Daniel Stone <daniel@fooishbar.org>
Cc: Pekka Paalanen <pekka.paalanen@collabora.com>

Ville Syrjälä (2):
  drm: Introduce plane SIZE_HINTS property
  drm/i915: Add SIZE_HINTS property for cursors

 drivers/gpu/drm/drm_mode_config.c           |  7 +++++
 drivers/gpu/drm/drm_plane.c                 | 33 +++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_cursor.c | 24 +++++++++++++++
 include/drm/drm_mode_config.h               |  5 ++++
 include/drm/drm_plane.h                     |  4 +++
 include/uapi/drm/drm_mode.h                 |  5 ++++
 6 files changed, 78 insertions(+)

-- 
2.39.1

