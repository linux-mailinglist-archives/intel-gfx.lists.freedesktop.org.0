Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ACFA61FB25
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Nov 2022 18:23:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E61C810E4E7;
	Mon,  7 Nov 2022 17:22:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4ACA10E4E5
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Nov 2022 17:22:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667841775; x=1699377775;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=cLfC2dN+RejVu0nGQMScHzzShPSklDm+0HPZInW6vJk=;
 b=Nc+Wj7OPfG68XLkQ9Zf9nKQRADJ6uIpnvSIkw1UhqoE7qmRxtGy497D/
 alkXrnc1wlvPl7goqavfKdMuZP8FfeZV1NlVQOC9ZfnYZpvjHIPWwOsUF
 lp8Jv3P9G/FTjgh6jwcoC5KidzZGgFngoaQOnXHwDnvjbEPHea8WE96Kc
 wdulTKGl8sQMyR0fod/1Yi/Al7TK0lFbbskIu6akimu4JRt0H++GhVgkz
 3Fg6WksVAX6IyvwEJw3WTKQ7c9tc/Z8+KOmJN4oQNUdvqsew5Y7J5ORuI
 mbxRF085SBkpzV6dfIJbKSpu2k/o+vrOJFX5IilbXfpPQfC2SA0jN0urF A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="312247070"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="312247070"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 09:09:22 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="667248431"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="667248431"
Received: from ideak-desk.fi.intel.com ([10.237.68.144])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 09:09:20 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Nov 2022 19:09:08 +0200
Message-Id: <20221107170917.3566758-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/9] drm/i915/tgl+: Enable DC power states on
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is v2 of [1] addressing the review comments from Ville and Jani:

- Select the AUX power domain based on PSR capability instead of is_edp().
- Split out change using AUX vs AUX_IO on port A without PSR.
- Don't enable AUX_IO on eDP w/o PSR and external DP combo PHY ports.
- Simplify intel_display_power_(get/put)_in_set().

[1] https://lore.kernel.org/intel-gfx/20221102171530.3261282-1-imre.deak@intel.com/T/#t

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>

Imre Deak (9):
  drm/i915: Allocate power domain set wakerefs dynamically
  drm/i915: Move the POWER_DOMAIN_AUX_IO_A definition to its logical
    place
  drm/i915: Use the AUX_IO power domain only for eDP/PSR port
  drm/i915/tgl+: Enable display DC power states on all eDP ports
  drm/i915: Add missing AUX_IO_A power domain->well mappings
  drm/i915: Add missing DC_OFF power domain->well mappings
  drm/i915: Factor out function to get/put AUX_IO power for main link
  drm/i915: Don't enable the AUX_IO power for combo-PHY external DP port
    main links
  drm/i915/mtl+: Don't enable the AUX_IO power for non-eDP port main
    links

 drivers/gpu/drm/i915/display/intel_crtc.c     |   4 +
 drivers/gpu/drm/i915/display/intel_ddi.c      |  89 +++++++-----
 .../drm/i915/display/intel_display_power.c    | 129 ++++++++++++++----
 .../drm/i915/display/intel_display_power.h    |  14 +-
 .../i915/display/intel_display_power_map.c    |  69 ++++++++--
 5 files changed, 237 insertions(+), 68 deletions(-)

-- 
2.37.1

