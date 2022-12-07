Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B64664568B
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Dec 2022 10:34:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E81F910E0D4;
	Wed,  7 Dec 2022 09:34:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D7A410E0D4
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Dec 2022 09:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670405693; x=1701941693;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=7dTFQ6Iw0n1SnPNOonbXS22n9VjtrG8Qp/HHuKd/7sg=;
 b=dFOKAhYAdyIDrHug0NQ7AmqCZcihKBSGSS/mkNilVpjqp1TDTwbyYtBN
 wTw64/WUvzPS7w8IKaom/IiH3g+bkeyKzGkXkGkZTI4HeV89qiK6HwisW
 MCO/n+2iqgKnP6dhgH4QvdQlOjPRxORwsNb/nxlfgifRBPQQRHinudPZY
 ym/RO7PfGaJbhMyTAETyXaCr6HiWjQul+eW7Dwdp7N6XDU5Hbt0jIZawP
 BqjhTXx98mkhd9Si4Ch6lC0w3PpiEhS7t/reFaynO8ePpoEYVkkdUrMrZ
 OVKf/SNh3wHcPtmlFg9YkIT5rRrF9fjeMcnOMlA/e6eu5oqnonVYnmBfb w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="318702643"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="318702643"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 01:34:52 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="715125168"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="715125168"
Received: from fbackhou-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.36.192])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 01:34:50 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Dec 2022 11:34:41 +0200
Message-Id: <cover.1670405587.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/5] drm/i915/backlight: drop implict
 dev_priv etc.
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
Cc: Jani Nikula <jani.nikula@intel.com>, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

v2 of https://patchwork.freedesktop.org/series/111628/ replacing patch 2
with a much simpler approach of completely dropping the
DISPLAY_MMIO_BASE() and dev_priv usage.

Jani Nikula (5):
  drm/i915/backlight: use VLV_DISPLAY_BASE for VLV/CHV backlight
    registers
  drm/i915/backlight: drop DISPLAY_MMIO_BASE() use from backlight
    registers
  drm/i915/backlight: mass rename dev_priv to i915
  drm/i915/backlight: drop drm_device local variables in favor of i915
  drm/i915/backlight: convert DRM_DEBUG_KMS() to drm_dbg_kms()

 .../gpu/drm/i915/display/intel_backlight.c    | 539 +++++++++---------
 .../drm/i915/display/intel_backlight_regs.h   |  27 +-
 2 files changed, 271 insertions(+), 295 deletions(-)

-- 
2.34.1

