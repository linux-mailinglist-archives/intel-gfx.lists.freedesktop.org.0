Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DB53773B9E
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Aug 2023 17:53:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AA2010E1AE;
	Tue,  8 Aug 2023 15:53:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22D3B10E1CC
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Aug 2023 15:53:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691510019; x=1723046019;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gfusRxA6aihzrx4RNfStp7YZ9V5kA9ZL94xFMLLZJSE=;
 b=Uqhdf1CRXEohtFXPpJoeKZKC/sSR1zOB2GXScb5vBhxfcvjoLY0TKMwW
 rixPuHGkI0q/w10R7s3YOLVZz7LHjSLVok0THkQ33DnEcuEy89AtVIT9X
 37GLTmtSF9+i8MBF65uXzNNtmk6kI8+lZMyq/9coXp7LrWvE/KexN1yWH
 XP3gDFK7cEgDNnjv1YcmI/q58RGnE5W1mZxyJ0QO71eNs7ZTL13NcW5SH
 +T+XobPgUI1bGpbTGgP8L1eJW7eIUYkpyx63ffMfnlpWrgG9JuiYrlALu
 F/ZVGFkUMkivUn+6GZAVq15SHUuJh0gf4oIzlW9qdwhtqGqxj7sOXM8UL g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="355798186"
X-IronPort-AV: E=Sophos;i="6.01,156,1684825200"; d="scan'208";a="355798186"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2023 08:53:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="874788038"
Received: from sschwar3-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.49.159])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2023 08:53:39 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Aug 2023 18:53:27 +0300
Message-Id: <cover.1691509966.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/4] drm/i915/irq: cleanups
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

Cleanups that should additionally help xe&i915 display integration.

Jani Nikula (4):
  drm/i915/irq: add dedicated intel_display_irq_init()
  drm/i915/irq: add dg1_de_irq_postinstall()
  drm/i915/irq: add ilk_de_irq_postinstall()
  drm/i915/irq: move all PCH irq postinstall calls to display code

 .../drm/i915/display/intel_display_driver.c   |  2 +
 .../gpu/drm/i915/display/intel_display_irq.c  | 84 ++++++++++++++++++-
 .../gpu/drm/i915/display/intel_display_irq.h  |  7 +-
 drivers/gpu/drm/i915/i915_irq.c               | 74 +---------------
 4 files changed, 89 insertions(+), 78 deletions(-)

-- 
2.39.2

