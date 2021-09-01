Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E4543FDF6F
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Sep 2021 18:10:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B36E16E1F8;
	Wed,  1 Sep 2021 16:10:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44AA56E197
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Sep 2021 16:10:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10094"; a="198352506"
X-IronPort-AV: E=Sophos;i="5.84,369,1620716400"; d="scan'208";a="198352506"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2021 09:10:12 -0700
X-IronPort-AV: E=Sophos;i="5.84,369,1620716400"; d="scan'208";a="532264189"
Received: from josearun-mobl1.gar.corp.intel.com (HELO localhost)
 ([10.251.212.211])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2021 09:10:10 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	jose.souza@intel.com,
	ankit.k.nautiyal@intel.com
Date: Wed,  1 Sep 2021 19:09:58 +0300
Message-Id: <cover.1630512523.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/7] drm/i915/bios: remove vbt ddi_port_info
 caching
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

v2 of https://patchwork.freedesktop.org/series/93957/ with the CI issues
fixed (fingers crossed!).

BR,
Jani.

Jani Nikula (7):
  drm/i915/bios: use hdmi level shift directly from child data
  drm/i915/bios: use max tmds clock directly from child data
  drm/i915/bios: use dp max link rate directly from child data
  drm/i915/bios: use alternate aux channel directly from child data
  drm/i915/bios: move ddc pin mapping code next to ddc pin sanitize
  drm/i915/bios: use ddc pin directly from child data
  drm/i915/bios: get rid of vbt ddi_port_info

 drivers/gpu/drm/i915/display/intel_bios.c | 372 +++++++++++-----------
 drivers/gpu/drm/i915/i915_drv.h           |  18 +-
 2 files changed, 187 insertions(+), 203 deletions(-)

-- 
2.30.2

