Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD07F99AEE6
	for <lists+intel-gfx@lfdr.de>; Sat, 12 Oct 2024 00:55:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CD0610E11A;
	Fri, 11 Oct 2024 22:55:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jBr2gOV1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDBFE10E11A
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2024 22:55:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728687313; x=1760223313;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xsZL4mhwciKGgXvMtJG9NXaA0uWehN5cUNlfcExCCO8=;
 b=jBr2gOV11EoScTphU4zBsoZTjxa+VTWX6UK5mmnjh6t/BBbeRaUQSMR9
 RT9UgM2HRy68PM5pvyQRus13H0MobQlZu52Fgh7uEuilLpkAZCZ5hHVwJ
 YJPI9QKBfV78DqG2hWlS0TGIHS29rmESqnZ0g8TlY14gHPys7qiDG0/0n
 BCG6rmtDPz9O4x9tAtXQ77DWCZelEbk2IdkD7pIEvlBRci+Mc54qwXmFP
 TrzXE4A7/i9VXU/2lc40jzQfTg0PU4FwJOY1lW0FjoYDwm7GDD9SWnnIl
 GfF47SeblHK75bUQxvz/X8LCjBYeoA/gplvY1aTxA8BKbwhCQemZpU9v6 A==;
X-CSE-ConnectionGUID: ozJMxR5LRfGFTPBznbkjCA==
X-CSE-MsgGUID: dEGtp0lrRgCwam8H1/4tqw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="53519741"
X-IronPort-AV: E=Sophos;i="6.11,196,1725346800"; d="scan'208";a="53519741"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2024 15:55:12 -0700
X-CSE-ConnectionGUID: DkYv5E/MQZGyHYI9AanVew==
X-CSE-MsgGUID: 1WzRrzEKTE+R5XzZ1veGYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,196,1725346800"; d="scan'208";a="77040401"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2024 15:55:12 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>,
 Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Subject: [PATCH 0/8] Fix i915 pmu on bind/unbind
Date: Fri, 11 Oct 2024 15:54:22 -0700
Message-ID: <20241011225430.1219345-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.47.0
MIME-Version: 1.0
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

Add i915 changes on top of the fixes proposed at
https://lore.kernel.org/all/20241008183501.1354695-1-lucas.demarchi@intel.com/

First patch is the patches needed from that series, squashed to avoid
reviewing them here and multiple versions.

Second and third patches fix the issues with i915 unbind. The rest are
"nice to have refactors/cleanups".

This series went through the sames bind/unbind tests as they dummy_pmu.
I do get some warnings, but none related to PMU - they are related with
other parts of i915 not behaving correctly on fast bind/unbind
sequences:

	- i915 0000:03:00.0: [drm] *ERROR* Failed to setup i915 fbdev emulation (ret=-512)

	and

	- RIP: 0010:drm_mode_config_cleanup+0x2f4/0x310 [drm]


Lucas De Marchi (8):
  squashed series - 20241008183501.1354695-1-lucas.demarchi@intel.com
  drm/i915/pmu: Let resource survive unbind
  drm/i915/pmu: Fix crash due to use-after-free
  drm/i915/pmu: Rename cpuhp_slot to cpuhp_state
  drm/i915/pmu: Stop setting event_init to NULL
  drm/i915/pmu: Replace closed with registered
  drm/i915/pmu: Remove pointless synchronize_rcu() call
  drm/i915/pmu: Release open events when unregistering

 drivers/gpu/drm/i915/i915_pmu.c | 129 +++++++++++++++++++++-----------
 drivers/gpu/drm/i915/i915_pmu.h |  10 ++-
 include/linux/perf_event.h      |  12 +++
 kernel/events/core.c            |  37 +++++++--
 4 files changed, 137 insertions(+), 51 deletions(-)

-- 
2.47.0

