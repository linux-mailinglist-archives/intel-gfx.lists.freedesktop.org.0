Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A3BD7DEEA2
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Nov 2023 10:08:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D331910E12E;
	Thu,  2 Nov 2023 09:08:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1859710E12E
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Nov 2023 09:08:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698916112; x=1730452112;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=yymkb0ZVa/94F2zAG1CeGfeOqAAGaB4FGv+TeIMzlto=;
 b=DiSxOBFC1gqWJYd4pV1TPxvsokE0kxIAH9Bc6Wlr3GKvjoD/sXINTLZv
 s4h0nNLEhX8ffHmcL1wDbITmDJlz6fhPUH7sjZah7qS9MMkhq2IfIOtQ2
 VlAAnJSvgQc053hEj6JznB1+EozeoXI5/9x2HwyT1KiLiYNvyHKuM5MKl
 BkVFn1P+5FNKJRWTFw7yjsGSc8bS0mI/QiZ9IYi6aeplglMXxAc9BBx1z
 3GInSwOh8mALnEajk0slUIwjf8pxAnFPJ08grtIVwECEbjzgDHaK3gHvO
 EKmQjLY6EpMblijJlrIBKvSzAMaJbsi4WeOZ1yS/37wasj90dhnhp2ljz w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10881"; a="387545608"
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; d="scan'208";a="387545608"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 02:08:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10881"; a="761225416"
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; d="scan'208";a="761225416"
Received: from avhiruda-mobl1.amr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.34.224])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 02:08:29 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Nov 2023 11:08:10 +0200
Message-Id: <20231102090812.951411-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] Implement sel_fetch disable for planes
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

Move plane sel fetch configuration into plane source files and
implement selective fetch disable for planes that are not part of
selective update.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>

Jouni Högander (2):
  drm/i915/psr: Move plane sel fetch configuration into plane source
    files
  drm/i915/psr: Add proper handling for disabling sel fetch for planes

 drivers/gpu/drm/i915/display/intel_cursor.c   | 35 +++++++-
 drivers/gpu/drm/i915/display/intel_psr.c      | 87 +++----------------
 drivers/gpu/drm/i915/display/intel_psr.h      | 10 ---
 .../drm/i915/display/skl_universal_plane.c    | 79 ++++++++++++++++-
 4 files changed, 120 insertions(+), 91 deletions(-)

-- 
2.34.1

