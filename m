Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C5B96CD6BD
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 11:46:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B91A10EA5E;
	Wed, 29 Mar 2023 09:46:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D485910EA5E
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 09:46:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680083177; x=1711619177;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lHF3XQLBDHYIYhw7mkeMLBmYWZEIujMb97iwNiObBLk=;
 b=PsXpQpgR90vhnJh4hzL146R3YMvouOnWw8BCt0KxE2qmEoNWSKei5VJU
 ssXIEVSJmxCyM3XRCVK1A0YRYtwAK2DKU9AD+52AECCU6An5f6Kp+McSK
 oexGYYWt1fvfgmoX7C4yh/qyXNlrPWncNo29J878LAIEcz1t5TTKNubnt
 3hX3l0OUp+OUg7/3v0Y8zDqeXGJ9frwoXiSyzrHyM3EOPzVEvnMkK/fM3
 Qigcg/RRvxhzvoiPwrnu9OEkXNx02EEV4e29HazLxIg6el7b2hYAzaZCH
 C2e6o7Xqw2a99YxigE9ua0EO/KnQGLVis1i8699E8I6LCCIDvxmMI/8za A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="342424854"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="342424854"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 02:46:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="677724742"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="677724742"
Received: from pgarraul-mobl2.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.251.223.204])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 02:45:59 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Mar 2023 12:45:26 +0300
Message-Id: <20230329094532.221450-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 0/6] High refresh rate PSR fixes
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

Fix/adjust Wa_16013835468 and implement Wa_14015648006. Implement Wa_1136 and
check for vblank being long enough for psr2.

v6:
 - Handle mode change in psr enable/disable
 - Handle wm_level_disable changes separately in pre plane hook
 - Handle WA #1136 in pre/post plane hooks
v5:
 - Add missing patch
v4:
 - Keep/fix Wa_16013835468
 - Use calculated block count number instead of fixed 12
v3:
 - apply Wa_16013835468 for icl as well
 - set/clear chicken bit in post plane update
 - Unify pre/post hooks
v2: Implement Wa_1136

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>

Jouni Högander (6):
  drm/i915/psr: Unify pre/post hooks
  drm/i915/psr: Modify/Fix Wa_16013835468 and prepare for Wa_14015648006
  drm/i915/psr: Implement Wa_14015648006
  drm/i915/psr: Add helpers for block count number handling
  drm/i915/psr: Check that vblank is long enough for psr2
  drm/i915/psr: Implement Display WA #1136

 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 88 +++++++++++++++----
 drivers/gpu/drm/i915/display/skl_watermark.c  |  6 +-
 3 files changed, 72 insertions(+), 23 deletions(-)

-- 
2.34.1

