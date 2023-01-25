Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74B8A67B9E4
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jan 2023 19:52:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42BED10E812;
	Wed, 25 Jan 2023 18:52:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16BAF10E811
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Jan 2023 18:52:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674672760; x=1706208760;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8HAzYSEbxkJBYsJlfb+nD4zJhpnbXeP/iLIbuxGIAL0=;
 b=brZjzRLjPPL2eoT/Ncyh6zdEXq/6hbI9kDbj0yN/+pQ/IBCbNauLDEOF
 ro+VhSec+gFI5bxVBTrItyLE77YO0SdSQLadeIzzOXpTQccyesl23Zpnz
 OOEihLt4A3atWwQ3pmCNhMiO56oPGtK+5d+dilZY22dHW4igPkKvlfVkF
 9571tCPWBS0Lxi0KayiZWv5POJA3m80gTB6nA8s7KXwsCY+1t0X7lAbUQ
 1Ti9FCLfFwvxkbHCDAaqfXxTDntA3dF7DRLZetH2ixK1688356CqOQgoB
 4uP3TriGjy4pdFSvSrQrUCZEuEZ2vp0y0sCY2d6ix4Td+KjlV8djFocN2 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10601"; a="326671487"
X-IronPort-AV: E=Sophos;i="5.97,246,1669104000"; d="scan'208";a="326671487"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2023 10:52:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10601"; a="655912109"
X-IronPort-AV: E=Sophos;i="5.97,246,1669104000"; d="scan'208";a="655912109"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga007.jf.intel.com with SMTP; 25 Jan 2023 10:52:36 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 25 Jan 2023 20:52:34 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Jan 2023 20:52:29 +0200
Message-Id: <20230125185234.21599-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/5] drm/i915: Error/underrun interrupt fixes
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

Fix up some error interrupt/underrun reporting issues
on old platforms.

Ville Syrjälä (5):
  drm/i915: Mark FIFO underrun disabled earlier
  drm/i915: Undo rmw damage to gen3 error interrupt handler
  drm/i915: Dump PGTBL_ER on gen2/3/4 error interrupt
  drm/i915: Extract {i9xx,i965)_error_mask()
  drm/i915: Mask page table errors on gen2/3 with FBC

 drivers/gpu/drm/i915/display/intel_crtc.c     |  3 +
 .../drm/i915/display/intel_fifo_underrun.c    | 20 +++++
 .../drm/i915/display/intel_fifo_underrun.h    |  3 +
 .../drm/i915/display/intel_modeset_setup.c    | 24 ++----
 drivers/gpu/drm/i915/i915_irq.c               | 80 +++++++++++++------
 5 files changed, 86 insertions(+), 44 deletions(-)

-- 
2.39.1

