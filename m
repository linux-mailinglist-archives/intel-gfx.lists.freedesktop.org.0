Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EEF8E4FBF31
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Apr 2022 16:34:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3496C10E02C;
	Mon, 11 Apr 2022 14:34:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CE7210E02C
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Apr 2022 14:34:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649687651; x=1681223651;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Wdow4xABwqogFBUvgaenM0AFki1eTSWwY12jTxHxGKU=;
 b=nQMRvzfTDPKu3fMpzNh+mj8si9fGhxgFs3JItk2why/ynvxggnvCIuyP
 vVoR1rFu0SD+vz3bjG0anfybXnIy7xXXAQFCfWXWQsD8uDXVuL5hVYixL
 y2/M+R3QhDwQuO3+JadVPK7h01LdsDt9Vke72ctSK0e/bYeUh4/pciCBX
 TqsB4Jjo/naa2wUF2yi1aCrir7JjuL8Snm768jWou1DEMGf510GYn3k0A
 swLuMNUItF29GJ8vL8XU1JsNaZfdQuPfXqUqasLeLGfk9yY6/zVF91yvi
 EhjsvxID6sef9Z1hJJfivb0/9UcG1LELxE6mNxcB3TjnOSsmOsCatqDng A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10314"; a="348568490"
X-IronPort-AV: E=Sophos;i="5.90,252,1643702400"; d="scan'208";a="348568490"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2022 07:34:10 -0700
X-IronPort-AV: E=Sophos;i="5.90,252,1643702400"; d="scan'208";a="525999805"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2022 07:34:07 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 11 Apr 2022 17:34:01 +0300
Message-Id: <20220411143405.1073845-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/4] drm/i915/dg2: Add support for
 render/media decompression
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 =?UTF-8?q?Juha-Pekka=20Heikkil=C3=A4?= <juha-pekka.heikkila@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is v2 of [1] amending the authorship and commit log in patch 4 and
adding the r-bs, acks. Resending for CI as well for retesting on drm-tip
where the dependency patchset [2] is now also part of the drm-intel-next
branch.

[1] https://patchwork.freedesktop.org/series/102147/
[2] https://patchwork.freedesktop.org/series/100419/

Cc: Anshuman Gupta <anshuman.gupta@intel.com>
Cc: Ramalingam C <ramalingam.c@intel.com>
Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>
Cc: Juha-Pekka Heikkilä <juha-pekka.heikkila@intel.com>
Cc: Nanley Chery <nanley.g.chery@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>

Juha-Pekka Heikkilä (1):
  drm/i915/dg2: Add support for DG2 clear color compression

Matt Roper (2):
  drm/fourcc: Introduce format modifiers for DG2 render and media
    compression
  drm/i915/dg2: Add support for DG2 render and media compression

Mika Kahola (1):
  drm/fourcc: Introduce format modifier for DG2 clear color

 drivers/gpu/drm/i915/display/intel_display.c  |  4 +-
 drivers/gpu/drm/i915/display/intel_fb.c       | 53 +++++++++++++++----
 .../drm/i915/display/skl_universal_plane.c    | 49 +++++++++++++----
 include/uapi/drm/drm_fourcc.h                 | 36 +++++++++++++
 4 files changed, 122 insertions(+), 20 deletions(-)

-- 
2.30.2

