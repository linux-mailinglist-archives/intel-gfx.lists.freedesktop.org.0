Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2619B8AFAA
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Sep 2025 20:50:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E5F210EA70;
	Fri, 19 Sep 2025 18:50:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ChJMihQX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC9D410E255
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Sep 2025 18:50:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758307820; x=1789843820;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=a4HeozPjAC3iw9cMsa6+cAqrxBGNL2bQ7NNzqnLZygs=;
 b=ChJMihQXDFnrQRQiIpL43ACq/3O5nFtonxMRygWfp8K8BQTkr/ldubfc
 mNpoWTRX2XKtuwpBoYjJsRN1USKxZVInfLsGT6n/Fuc47XwZX4yYgFBpZ
 +CdQY5B2PBfiA97zSwCjjvfTcmbLkcaRhvn9G8LELb+q9fG4mE5ZehNYA
 JImH10XcpQIZmQAi0XHHJhqjcKaIrrxwUpezSU5wEX764xCvbdSG3z9B1
 rJ4kiG9z+E57bfJvuXssZ4KXzGBw6TtP1dtgxh8T1l1u+1buOvKJzjZPa
 w1KXrtNfTsRKXOpC5TPX7l0GbUmrX58biDOL5JXkdztAxkE866s4wCVMv Q==;
X-CSE-ConnectionGUID: 5ssJnC2aQWmVDA+tJuzj2A==
X-CSE-MsgGUID: IJfNJUtxScGPjHQUsyXj7A==
X-IronPort-AV: E=McAfee;i="6800,10657,11558"; a="86097335"
X-IronPort-AV: E=Sophos;i="6.18,278,1751266800"; d="scan'208";a="86097335"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 11:50:20 -0700
X-CSE-ConnectionGUID: 7mCO2A2HQpyFZ9MNNRtagQ==
X-CSE-MsgGUID: ax4dRmlMRNeLNIoWit+yrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,278,1751266800"; d="scan'208";a="175152909"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.112])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 11:50:19 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v3 0/6] drm/i915/pm: Clean up the hibernate vs. PCI D3 quirk
Date: Fri, 19 Sep 2025 21:50:09 +0300
Message-ID: <20250919185015.14561-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Attempt to make i915 rely more on the standard pci pm
code instead of hand rolling a bunch of
pci_save_state()+pci_set_power_state() stuff in the
driver.

v2: Drop the core pci changes for now since I couldn't
    get any real answers to them
    Drop some redundant pci_*() clals from the pm paths
v3: Rebase, all r-b'd now

Ville Syrjälä (6):
  drm/i915/pm: Simplify pm hook documentation
  drm/i915/pm: Hoist pci_save_state()+pci_set_power_state() to the end
    of pm _late() hook
  drm/i915/pm: Move the hibernate+D3 quirk stuff into noirq() pm hooks
  drm/i915/pm: Do pci_restore_state() in switcheroo resume hook
  drm/i915/pm: Allow drivers/pci to manage our pci state normally
  drm/i915/pm: Drop redundant pci stuff from suspend/resume paths

 drivers/gpu/drm/i915/i915_driver.c | 133 +++++++++++++++--------------
 1 file changed, 69 insertions(+), 64 deletions(-)

-- 
2.49.1

