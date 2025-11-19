Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8FBAC70B55
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Nov 2025 19:53:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 329EC10E65F;
	Wed, 19 Nov 2025 18:53:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hYdPTnmr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDC9910E259;
 Wed, 19 Nov 2025 18:53:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763578396; x=1795114396;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=6T4UJfDSRr98KswXYtAOakVXrc1Nn196PdXmi+1wO/Q=;
 b=hYdPTnmrFPjbsAaQCJqNUVQspb3ydz4s8Z8HudKOcITL++qtY7CLtEZI
 KjD2/2S1b1RWga2mwdlcDaIpUbHpq5O8hXSr7sB2yuhWwsYZZhK+gBN4n
 e+DCbtHCj6HtEDeYqPxgXibTy0W07nQumqdpCtUQITHDysdN46MkdPRyP
 mruoXE2PEZVH3WoQ0DbIpTt0zfMnul5URP0xwSdwWPw6cbCqGkU9Id9pr
 OYmExT61mVEi2qAKFPwknvNWKynbWRTzdI28//C980f6khISGvCy4lcp9
 HQ04bZfGDqN7sHLjUraGHNkXHDkramb717FaxDEg8WeuHYWJdgRTN1klf A==;
X-CSE-ConnectionGUID: cexNbHlMREyVBCh+jO/OZw==
X-CSE-MsgGUID: zi7jhlhfS5yBeKnmVrOmwQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="53205173"
X-IronPort-AV: E=Sophos;i="6.19,316,1754982000"; d="scan'208";a="53205173"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 10:53:15 -0800
X-CSE-ConnectionGUID: sHeZgk+QT5ajE1QJSPd2bg==
X-CSE-MsgGUID: sCl3hQcmTnWzRppjOAF3Xw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,316,1754982000"; d="scan'208";a="190387646"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO localhost)
 ([10.124.221.119])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 10:53:15 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 0/2] drm/i915: Go back to using AUX interrupts
Date: Wed, 19 Nov 2025 20:53:08 +0200
Message-ID: <20251119185310.10428-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Start relying on AUX interrupts for the AUX completion
again. The polling approach is not great.

Ville Syrjälä (2):
  drm/i915: Enable DDI A/B AUX interrupts on LNL+
  Revert "drm/i915/dp: change aux_ctl reg read to polling read"

 drivers/gpu/drm/i915/display/intel_display_irq.c | 12 +++++++++++-
 drivers/gpu/drm/i915/display/intel_display_irq.h |  2 ++
 drivers/gpu/drm/i915/display/intel_dp_aux.c      | 12 +++++++-----
 drivers/gpu/drm/i915/display/intel_hotplug_irq.c |  5 +----
 4 files changed, 21 insertions(+), 10 deletions(-)

-- 
2.49.1

