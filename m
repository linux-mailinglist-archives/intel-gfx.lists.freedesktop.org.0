Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D49B616A5C
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 18:15:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BE4F10E52E;
	Wed,  2 Nov 2022 17:15:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E4AA10E52C
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Nov 2022 17:15:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667409338; x=1698945338;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ogIrWjl+DHeyNJM0qLL/3fL6FqMb9YuQ1QEazwTJK2g=;
 b=KVo0hm4FO2e+J6D+LnV9Vos0+brftSUUB3+c10cioZMX+CpM+qHazXUp
 r7O+AMcV4zDhV2V0uOoHpMCVtFBbwAQkGM9cQH5Mf2SePzOc2znFvy6r6
 fhLdUPVcgQy1ssBgW3w8wewhFf4BZv1jimycN2kXNcBQXcNqiqBxlvQc/
 4iNfIXyspw8aT2Od+/JfZK01TdgU+zcc1VzHXIcrOyaNwXtKcvgKv0qT4
 k6wnL4rvXmSswWRQxzOLpK5JM615Pbx9smDpcloZD2OCMl/e+f5Tj38zG
 Vs/0JSDsGeL2PnddOzNXLhwdrCEyI51u0+hE9E/9XBYmr3Vk56J97qVIC g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="296918892"
X-IronPort-AV: E=Sophos;i="5.95,234,1661842800"; d="scan'208";a="296918892"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 10:15:34 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="636857828"
X-IronPort-AV: E=Sophos;i="5.95,234,1661842800"; d="scan'208";a="636857828"
Received: from ideak-desk.fi.intel.com ([10.237.68.144])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 10:15:33 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Nov 2022 19:15:23 +0200
Message-Id: <20221102171530.3261282-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/7] drm/i915/tgl+: Enable DC power states on
 all eDP ports
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

The patchset makes sure that the display DC power states are enabled on
all eDP ports; atm these can stay blocked on the TGL+ ports B+. It
also has a few minor related display power domain fixes.

Imre Deak (7):
  drm/i915: Allocate power domain set wakerefs dynamically
  drm/i915: Move the POWER_DOMAIN_AUX_IO_A definition to its logical
    place
  drm/i915/tgl+: Enable display DC power states on all eDP ports
  drm/i915: Add missing AUX_IO_A power domain->well mappings
  drm/i915: Add missing DC_OFF power domain->well mappings
  drm/i915: Factor out function to get/put AUX_IO power for main link
  drm/i915/mtl+: Don't enable the AUX_IO power for non-eDP port main
    links

 drivers/gpu/drm/i915/display/intel_ddi.c      | 91 +++++++++++-------
 .../drm/i915/display/intel_display_power.c    | 95 ++++++++++++++++---
 .../drm/i915/display/intel_display_power.h    | 14 ++-
 .../i915/display/intel_display_power_map.c    | 69 ++++++++++++--
 4 files changed, 213 insertions(+), 56 deletions(-)

-- 
2.37.1

