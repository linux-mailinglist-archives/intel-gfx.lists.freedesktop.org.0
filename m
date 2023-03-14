Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A02356B8E08
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Mar 2023 10:02:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 495BD10E190;
	Tue, 14 Mar 2023 09:02:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 818AC10E190
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Mar 2023 09:02:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678784537; x=1710320537;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=GE4DnCmawYFgaVE0WHzGdEd68d4hOt+4aZefAbBgHQA=;
 b=AZ+9va7Z834DVn5pL9uTTejuhK1RGn4lZJjXmH/CH89zLKHvjGEUeSG/
 FSLUNaY+VlKTMIGEMCQnCLW9gUfIQz3561pwwPRthN0RXWpNrxwC5WvwV
 WfTvxFdAa93KhJ/bpVyqEHv27iRrTewqDgLOLtF8t2G7en+2O44XcDscS
 mQEqcUdYqT3GXUz14x0wsi3+czYt4BrDy1+PK6Z0R111fI7+ZeMCn3ELd
 lfLe5D+xhK4t08ffxZ0fGTZ9qRMVayKde+gcYmOxm7PsMFL+Lq5shyfpC
 dckoJ8AWeLxNTclxjPprX6SLxzCxwtArttBo+tNTQ17LgaIF5rhvOqJWc w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="325734148"
X-IronPort-AV: E=Sophos;i="5.98,259,1673942400"; d="scan'208";a="325734148"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2023 02:02:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="679016283"
X-IronPort-AV: E=Sophos;i="5.98,259,1673942400"; d="scan'208";a="679016283"
Received: from cstoita-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.252.60.14])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2023 02:02:08 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Mar 2023 11:01:40 +0200
Message-Id: <20230314090142.947764-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] High refresh rate PSR fixes
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

This patch set contains fix for Wa_16013835468 and Wa_14015648006 and
check for vblank being long enough for psr2.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>

Jouni Högander (2):
  drm/i915/psr: Fix Wa_16013835468 and Wa_14015648006
  drm/i915/psr: Check that vblank is long enough for psr2

 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 20 ++++++++++++-------
 drivers/gpu/drm/i915/display/skl_watermark.c  |  7 +++++--
 3 files changed, 19 insertions(+), 9 deletions(-)

-- 
2.34.1

