Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D40446C477B
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Mar 2023 11:22:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 362A110E35A;
	Wed, 22 Mar 2023 10:22:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4951110E35A
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Mar 2023 10:22:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679480546; x=1711016546;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=yfAy+qJaKiORu+RegyBZZKjbE6MU3fmyzg5SnQ2Kwvs=;
 b=KpwWs0gzFCRRVgxJxxh/VRIkzyt5UZ4o96I1gpsswyECX487Wv/TlHF5
 HCxz+qnvXJdzhbAw980s9EKEsNo1cz/2/bx0HqatqpxsWOBQi0Kc3lQR2
 xpfpYxc2SbdWudcYp7DB5lT0bhveXNTZ3A8Ft4W5ZZHnqkae9oSCQO43b
 B26zOKU/cK4svSD097txWiADpXkdl/Y6bxXID3M1oxYiYxBj8jWiGwFkL
 kqpWFzzT7AFlycz0dp5B8bWGY7KweEho/pO04pn1CF9zAA6lW89VMXRRF
 7Ix0Eniqd7yPKUJfVMCWnGdHFpQDd59FB57ugOzPACyUzn2ZSZisY0UB2 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="340714764"
X-IronPort-AV: E=Sophos;i="5.98,281,1673942400"; d="scan'208";a="340714764"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 03:22:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="1011309798"
X-IronPort-AV: E=Sophos;i="5.98,281,1673942400"; d="scan'208";a="1011309798"
Received: from swcompto-mobl1.amr.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.252.63.36])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 03:22:23 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Mar 2023 12:21:59 +0200
Message-Id: <20230322102204.116056-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 0/5] High refresh rate PSR fixes
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

Jouni Högander (5):
  drm/i915/psr: Modify/fix Wa_16013835468 and prepare for Wa_14015648006
  drm/i915/psr: Implement Wa_14015648006
  drm/i915/psr: Add helpers for block count number handling
  drm/i915/psr: Check that vblank is long enough for psr2
  drm/i915/psr: Implement Display WA #1136

 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 95 +++++++++++++++----
 drivers/gpu/drm/i915/display/skl_watermark.c  |  6 +-
 3 files changed, 80 insertions(+), 22 deletions(-)

-- 
2.34.1

