Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 181AFA5D00E
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 20:56:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9122110E050;
	Tue, 11 Mar 2025 19:56:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cexsyUQG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E6EA10E050
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Mar 2025 19:56:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741722987; x=1773258987;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=mNHY/Zz0S7Xb/45MeN09mopDBuuseKyqkk5/1+D4kXw=;
 b=cexsyUQGHhxWSJYuDQegWCD5Ek5fukDQaq/i9eRYoFRI1Ml/CliCRiBB
 7qW6NDGTv78CMQmbbhtFjxpFDioSpKBuCHSFoxrES7YanIDpAf/mSfi3T
 coXfjadIbHZclJNONqdzOjGXvvkvLbUjzergL7o6zEPKDJ5gO954VcTkF
 xSYOWuCR8Nej3IRifNiclnE5tZR+MDc6GeOTHdcK7nS62a52O75dTxcDb
 mwfGWNYmzkCr57brOH/wqw/au/NkiErJ+0H30Ms0bqJ5jg8G5h0pF2YsI
 6hn9oNrCKBCh2Ur/lm8ki4uPNobuAkoxNMO1pvKez7zrvlN7ulQXjbRy0 w==;
X-CSE-ConnectionGUID: KFv1G5LGTQi6nYMWrNfbCA==
X-CSE-MsgGUID: vbLyRxjbTUu90NKPOFBdCQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="60183847"
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="60183847"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 12:56:27 -0700
X-CSE-ConnectionGUID: Y73VcY3YRA2Y4QsfijqK7w==
X-CSE-MsgGUID: Yv0slcbITQuppUI4LA+66Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="125617178"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 11 Mar 2025 12:56:23 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 Mar 2025 21:56:24 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 0/6] drm/i915/pm: Clean up the hibernate vs. PCI D3 quirk
Date: Tue, 11 Mar 2025 21:56:18 +0200
Message-ID: <20250311195624.22420-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
2.45.3

