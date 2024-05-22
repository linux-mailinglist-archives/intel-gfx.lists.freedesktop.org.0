Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AD7A8CC592
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2024 19:34:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BC3F10E1A9;
	Wed, 22 May 2024 17:33:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SlbFZLln";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5809C10E1A9;
 Wed, 22 May 2024 17:33:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716399235; x=1747935235;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9oAF/67+kwSXaCYW45M9yEobmTxfTCbtTqsGw0M0VwI=;
 b=SlbFZLln1Z31uYWx7VCSj6d2aB842v7hrXCcF6KUvPAwTx2aAtXUSFAP
 WgCC/9fZGYFR0n1lrYUUWKwcBfq3C8LceLem/vuE10IwQtSWe3rQoZISY
 J1s0UdXxlhOm86Xs3Jv3fvGm+bM6zaVnLVVzqB4XMSimusT9wUzKrKZCe
 88bRzmcspY6acBhQUhYOTYVzCcwEyy46DmcvADRQoii+iXH0qCpZNBlU4
 DHFItPOHwTmcTgMB9kQ1yHreEoTBv32rdJiDEK1hyMigIqW1KFR77jkVQ
 +gGFDaTw0ZgV2E8a+FaWAw63uMcCGOuXpaPeOrBtBPuRQmwc9oUS0IWgM w==;
X-CSE-ConnectionGUID: S2az2UpsTCWW7rQONdz6Cw==
X-CSE-MsgGUID: GcIdFUZQT/K1XL0OpAFClw==
X-IronPort-AV: E=McAfee;i="6600,9927,11080"; a="38053787"
X-IronPort-AV: E=Sophos;i="6.08,181,1712646000"; d="scan'208";a="38053787"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2024 10:33:55 -0700
X-CSE-ConnectionGUID: 8vFsuYmMR26yzKJLP83wvw==
X-CSE-MsgGUID: PF1FlKVdR9uTzKnxvjQGwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,181,1712646000"; d="scan'208";a="33425119"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.230])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2024 10:33:53 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	rodrigo.vivi@intel.com,
	lucas.demarchi@intel.com
Subject: [PATCH 00/10] drm/i915: identify all platforms in display probe
Date: Wed, 22 May 2024 20:33:37 +0300
Message-Id: <cover.1716399081.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
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

Add independent platform probe in display, in preparation for breaking
free from i915 and xe code.

Up next would be adding separate IS_<PLATFORM>() style macros to
display. Not included here, because I couldn't come up with nice names
yet. IS_DISPLAY_<PLATFORM>() is a bit verbose.

BR,
Jani.

Jani Nikula (10):
  drm/i915/display: move params copy at probe earlier
  drm/i915/display: change probe for no display case
  drm/i915/display: check platforms without display one level higher
  drm/i915/display: change GMD ID display ip ver propagation at probe
  drm/i915/display: add platform descriptors
  drm/i915: add LNL PCI IDs
  drm/i915/display: change display probe to identify GMD ID based
    platforms
  drm/i915/display: identify platforms with enum and name
  drm/i915/display: add support for subplatforms
  drm/i915/display: add probe message

 .../drm/i915/display/intel_display_device.c   | 920 ++++++++++++------
 .../drm/i915/display/intel_display_device.h   |  86 +-
 include/drm/i915_pciids.h                     |   6 +
 3 files changed, 731 insertions(+), 281 deletions(-)

-- 
2.39.2

