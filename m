Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CB47642A23
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Dec 2022 15:12:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87C4210E241;
	Mon,  5 Dec 2022 14:12:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 128EC10E24A
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Dec 2022 14:12:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670249547; x=1701785547;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=VWlYHy0ssKOX7F9bsYtbpZSBMK+gE8jZmpKeGBBhKGU=;
 b=hXE9UIbWd8LusZ/yA8iF6KGWlipZgvGs5BsFKmm2ajWUtXgLsduMEfbf
 4oLE8huz1c22KAUlzedH/ls40lkymwyNj4FeKc7fFJlIL16cSj/YPhC3K
 f+v1rCJQyiPDYFHSo/dc6ttNjl2YybxQvN1QU60kJ45iqBeewJ43Q1G65
 B8PxP+OalcL0YdNJQpLKbc2sutu6X/53rEyNXzYGgkO7qFZvu+kDLNnza
 NLtShahG5X8XDVfduYf0g9RAojDEDFNkCFnGKGAGmDV6OS1oLHPnCkxQ+
 +DaSHmmw01YvJe9Dd1jWZDtri3BCVmerdrc5W/ArQLNGHXl5YpmE7F1+s w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="317499862"
X-IronPort-AV: E=Sophos;i="5.96,219,1665471600"; d="scan'208";a="317499862"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 06:11:25 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10551"; a="678368004"
X-IronPort-AV: E=Sophos;i="5.96,219,1665471600"; d="scan'208";a="678368004"
Received: from akramiss-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.54.203])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 06:11:24 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  5 Dec 2022 16:11:13 +0200
Message-Id: <cover.1670249413.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/5] drm/i915/backlight: drop implict dev_priv
 etc.
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

Dump a local branch I've had laying around for a while.

Jani Nikula (5):
  drm/i915/backlight: use VLV_DISPLAY_BASE for VLV/CHV backlight
    registers
  drm/i915/backlight: get rid of the implicit dev_priv
  drm/i915/backlight: mass rename dev_priv to i915
  drm/i915/backlight: drop drm_device local variables in favor of i915
  drm/i915/backlight: convert DRM_DEBUG_KMS() to drm_dbg_kms()

 .../gpu/drm/i915/display/intel_backlight.c    | 539 +++++++++---------
 .../drm/i915/display/intel_backlight_regs.h   |  27 +-
 2 files changed, 271 insertions(+), 295 deletions(-)

-- 
2.34.1

