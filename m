Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B21663F795D
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Aug 2021 17:48:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77EFC6E372;
	Wed, 25 Aug 2021 15:48:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB9C489020
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Aug 2021 15:47:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10087"; a="281264208"
X-IronPort-AV: E=Sophos;i="5.84,351,1620716400"; d="scan'208";a="281264208"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2021 08:47:59 -0700
X-IronPort-AV: E=Sophos;i="5.84,351,1620716400"; d="scan'208";a="527374683"
Received: from mburkard-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.251.213.64])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2021 08:47:57 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Date: Wed, 25 Aug 2021 18:47:47 +0300
Message-Id: <cover.1629906431.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/5] drm/i915/fdi: refactor some fdi code out of
 intel_display.c
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

Axe more stuff from intel_display.c.

Jani Nikula (5):
  drm/i915/fdi: move intel_update_fdi_pll_freq to intel_fdi.c
  drm/i915/fdi: move fdi bc bifurcation functions to intel_fdi.c
  drm/i915/fdi: move more FDI stuff to FDI link train hooks
  drm/i915/fdi: move fdi mphy reset and programming to intel_fdi.c
  drm/i915/fdi: convert BUG()'s to MISSING_CASE()

 drivers/gpu/drm/i915/display/intel_display.c | 177 +----------------
 drivers/gpu/drm/i915/display/intel_fdi.c     | 191 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_fdi.h     |   2 +
 3 files changed, 195 insertions(+), 175 deletions(-)

-- 
2.20.1

