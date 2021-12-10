Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B4D5470162
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Dec 2021 14:17:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D9A510E288;
	Fri, 10 Dec 2021 13:17:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A2DC10E286
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Dec 2021 13:17:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639142240; x=1670678240;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=YrV7aRrRH2Hec+oInxJYzVoP3oP9Mw42AAhh3r+FxQM=;
 b=NHgWz7InNQIoXaiyHZjHKv4BohrDvu6QvFOJJmewWlVYDRdGk6eHslEU
 SBuygjD+l/HhfIv98n4XhVBXQxu1Nhqk5ELbnUlBiOTM7mYUNkvlSFZvS
 5x9gqwLxRRpNvR/rVCobcnJaLjWgu3gLP4DuGU9gFypBHiQxJb5azgyAk
 6V6hKY9ZyTwYXuAZnD0Oz3YY3DAy2eAq/AxEYl35IapVnne7YyK19fh+B
 9OMWFOgbfLzNT6S12yDQfLjwf12R695+DbVDr4zm/I7TWaTPzSmuZQetg
 hJgQKV1aOF+5N4v20eIcGsOWCbWUvdajxjQ3Z3ZzGWeOSkKeXDWex3hpj Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10193"; a="262454392"
X-IronPort-AV: E=Sophos;i="5.88,195,1635231600"; d="scan'208";a="262454392"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2021 05:17:10 -0800
X-IronPort-AV: E=Sophos;i="5.88,195,1635231600"; d="scan'208";a="480724229"
Received: from mpcorrig-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.4.173])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2021 05:17:08 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Dec 2021 15:16:54 +0200
Message-Id: <cover.1639142167.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/7] drm/i915: include reductions
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

v2 of https://patchwork.freedesktop.org/series/97789/

Jani Nikula (7):
  drm/i915/reset: include intel_display.h instead of
    intel_display_types.h
  drm/i915/active: remove useless i915_utils.h include
  drm/i915/psr: avoid intel_frontbuffer.h include with declaration
  drm/i915/fbc: avoid intel_frontbuffer.h include with declaration
  drm/i915/fb: reduce include dependencies
  drm/i915/pxp: un-inline intel_pxp_is_enabled()
  drm/i915/pxp: remove useless includes

 drivers/gpu/drm/i915/display/intel_fbc.h         |  3 +--
 drivers/gpu/drm/i915/display/intel_frontbuffer.h |  2 +-
 drivers/gpu/drm/i915/display/intel_psr.h         | 11 ++++++-----
 drivers/gpu/drm/i915/gt/intel_reset.c            |  2 +-
 drivers/gpu/drm/i915/i915_active_types.h         |  2 --
 drivers/gpu/drm/i915/pxp/intel_pxp.c             |  5 +++++
 drivers/gpu/drm/i915/pxp/intel_pxp.h             | 15 +++++++++------
 drivers/gpu/drm/i915/pxp/intel_pxp_types.h       |  2 --
 8 files changed, 23 insertions(+), 19 deletions(-)

-- 
2.30.2

