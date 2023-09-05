Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE0DF792C44
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Sep 2023 19:16:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2104510E021;
	Tue,  5 Sep 2023 17:16:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D633010E021
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Sep 2023 17:16:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693934205; x=1725470205;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=p2JtoPVuL1449RT2AqbPmqn8w9pMsLQZBQg/aTxGDPY=;
 b=CeHp6yfXKL67UNy7mB+8PdW5BCE19mhs55SrkTBrTMRBPwrGn2tfCnWk
 FEMuFADVVOZ7taW//wlZg59itVaBR/HqV7Rn03kNE4gQNman2DFPnUKxg
 UFwRlmKqH29OO78+q6ywJjOpZH0MlX+K40MXJrgo5i7HKQIdo5j6/VzGe
 X/V+LvmE5ovAv2k/aA+MmB3rRxC1HtSupTuTE9Uo1znG1x0mIs0ifPR89
 sWpQDb7sZIdtD+8FJOWaaY+eHiahslMswSEAYIVUZAFkIYA8kNOYFClV6
 3zexG1IWNUGLA5dc4i+HYHX52riKwN8229+aKJxlLh9P/1nIuGZbOrTL2 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10824"; a="407846475"
X-IronPort-AV: E=Sophos;i="6.02,229,1688454000"; d="scan'208";a="407846475"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2023 10:14:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10824"; a="744343558"
X-IronPort-AV: E=Sophos;i="6.02,229,1688454000"; d="scan'208";a="744343558"
Received: from amyachev-mobl3.ccr.corp.intel.com (HELO localhost)
 ([10.252.60.152])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2023 10:11:34 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Sep 2023 20:11:19 +0300
Message-Id: <cover.1693933849.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/8] drm/i915/dsc: cleanups
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


Jani Nikula (8):
  drm/i915/dsc: improve clarify of the pps reg read/write helpers
  drm/i915/dsc: have intel_dsc_pps_read_and_verify() return the value
  drm/i915/dsc: have intel_dsc_pps_read() return the value
  drm/i915/dsc: rename pps write to intel_dsc_pps_write()
  drm/i915/dsc: drop redundant = 0 assignments
  drm/i915/dsc: clean up pps comments
  drm/i915/dsc: add the PPS number to the register content macros
  drm/i915/dsc: use REG_BIT, REG_GENMASK, and friends for PPS0 and PPS1

 drivers/gpu/drm/i915/display/intel_vdsc.c     | 362 +++++++++---------
 .../gpu/drm/i915/display/intel_vdsc_regs.h    | 184 ++++-----
 2 files changed, 272 insertions(+), 274 deletions(-)

-- 
2.39.2

