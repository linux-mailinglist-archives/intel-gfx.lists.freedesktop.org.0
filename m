Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D629D6C1D06
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Mar 2023 18:00:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E29310E053;
	Mon, 20 Mar 2023 17:00:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1011E10E053
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Mar 2023 17:00:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679331610; x=1710867610;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=XPCzEsLPVvoZr5rsBOZq7S5YuJlz6KhVuXoXko+hV5U=;
 b=KFJNvv7usD3gL2vUEYfZobgv60KrYOI0IZW11sjoccKCHO2CjUO0WuAP
 0G8WY1DV8z75241OFcQPL/noFtjSOdynoDguruq7Ao+UVGbmqw46h3Ilb
 qJUdQAAERrlTvZ+BV5THXH1usrQqQ6VTutsvV4ctLKG3DyIfZfDbR2m87
 BQfy6r3LifbYJfnLAWb8xFX0xduTn73Fj1gHj0xIncarpMeFH0219i5Hp
 3BYT+vSO0gMrXt628sK03RcX+IyCwXy9hmX0KV+ix+gYIrEJkycgWKDa6
 jYt+QCegkHLeqts7kA0R6vh0WuKiDDQ2L3xO0LMU67Ygn+M9jCY2oVybH A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="318367835"
X-IronPort-AV: E=Sophos;i="5.98,276,1673942400"; d="scan'208";a="318367835"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 10:00:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="855328254"
X-IronPort-AV: E=Sophos;i="5.98,276,1673942400"; d="scan'208";a="855328254"
Received: from mmazilu-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.251.221.145])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 10:00:05 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Mar 2023 18:59:41 +0200
Message-Id: <20230320165945.3564891-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 0/4] High refresh rate PSR fixes
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

Fix/adjust Wa_16013835468 and Wa_14015648006. Implement Wa_1136 and
check for vblank being long enough for psr2.

v3:
 - apply Wa_16013835468 for icl as well
 - set/clear chicken bit in post plane update
 - Unify pre/post hooks
v2: Implement Wa_1136

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>

Jouni Högander (4):
  drm/i915/psr: Unify pre/post hooks
  drm/i915/psr: Fix Wa_16013835468 and Wa_14015648006
  drm/i915/psr: Check that vblank is long enough for psr2
  drm/i915/psr: Implement Display WA #1136

 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 94 +++++++++++++------
 drivers/gpu/drm/i915/display/skl_watermark.c  |  6 +-
 3 files changed, 70 insertions(+), 31 deletions(-)

-- 
2.34.1

