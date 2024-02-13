Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F475853960
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Feb 2024 19:03:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C3B810E604;
	Tue, 13 Feb 2024 18:03:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RTkAn9rh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8057610E550
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Feb 2024 18:03:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707847397; x=1739383397;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Qq68ODDOsubSB5VHz1gss/YsgINa6zlItMFBSnjt0Vg=;
 b=RTkAn9rhAmgmXjT7g8at4KTlDHb5TVsYOfTczSH3XqN3DE5tEDy5L7+C
 USC6pT2B2xC2TCpGdrxJN4Df+aa838BIGS15cuNGdMawBx99fQa3n28kF
 mnV3pwIvylweZIYOyespLT61x6mmi7cwpgc6JsK2Cm/MsHYvRP0tkbCi7
 fG7xIqy8Fq9li/hAhhWurIIfQtNvyeP2XDFxrvcKjsYqUdAPTaOaL+waZ
 l+9lwxI2BxRsGxW6OOcS1ox+vo1ZK2qVIxRPwVCLVcIQyN/1uX2PNwkQb
 j8VOPNehFEgB7iPHZpFE3FZsCQR1Itc05LKW0IgBP71EV7A3OWnE5sA5v A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="5689389"
X-IronPort-AV: E=Sophos;i="6.06,157,1705392000"; 
   d="scan'208";a="5689389"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2024 10:03:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="911852939"
X-IronPort-AV: E=Sophos;i="6.06,157,1705392000"; d="scan'208";a="911852939"
Received: from dut7231atsm.jf.intel.com ([10.98.51.28])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2024 10:03:15 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Subject: [PATCH 0/2] Fix crash due to open pmu events during unbind
Date: Tue, 13 Feb 2024 10:03:00 -0800
Message-Id: <20240213180302.47266-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.34.1
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

Once a user opens an fd for a perf event, if the driver undergoes a
function level reset (FLR), the resources are not cleaned up as
expected. For this discussion FLR is defined as a PCI unbind followed by
a bind. perf_pmu_unregister() would cleanup everything, but when the
user closes the perf fd much later, perf_release() is called and we
encounter null pointer dereferences and/or list corruption in that path
which require a reboot to recover.

The only approach that worked to resolve this was to close the file
associated with the event such that the relevant cleanup happens w.r.t.
the open file. To do so, use the event->owner task and find the file
relevant to the event and close it. This relies on the
file->private_data matching the event object.

Test-with: 20240213062948.32735-1-umesh.nerlige.ramappa@intel.com
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Umesh Nerlige Ramappa (2):
  i915/pmu: Add pmu_teardown helper
  i915/pmu: Cleanup pending events on unbind

 drivers/gpu/drm/i915/i915_pmu.c | 192 ++++++++++++++++++++++++--------
 drivers/gpu/drm/i915/i915_pmu.h |  15 +++
 2 files changed, 161 insertions(+), 46 deletions(-)

-- 
2.34.1

