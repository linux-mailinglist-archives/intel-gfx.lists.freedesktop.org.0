Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53F4BC22688
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Oct 2025 22:26:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EABD10EA49;
	Thu, 30 Oct 2025 21:26:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Pbd+5yJF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A735D10EA41
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Oct 2025 21:26:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761859597; x=1793395597;
 h=resent-from:resent-date:resent-message-id:resent-to:from:
 to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NMZdVvgXbHdfYxQbRHgGuHztJswU0FSX+P/RgkGnavU=;
 b=Pbd+5yJFkjhUjSlrvjwi2fqs6W5R9Z8JBCAEIhFAGxu5ZuFgB/gwBV1w
 SVEAy8kipjjJ+s2FjhkBC6TShNrxC/h3bShnEzLu+AnSAIRJdVVU2e9jW
 8ynmdumjnIzUZO2zdJrMysTF6JtXbSVgO1m+DE+DCAT0ig9/g4MNFsW1b
 16X7CEdxsXFt1UHaQHnodsKnsIc6fmgen71C3UdIIJxJr+tVrHbaC2wN5
 NsLW37gJjg5fM+X2R+37AgYQhZaBs61lrso5lpV8CeVSBjzScEVFz5C6/
 Z5woaYbzqo/sPkx5nCTO9gepnFGdK6Anp5kWZgVeNfOxvnDQ929DbXuxB Q==;
X-CSE-ConnectionGUID: S8NnzeXATpa1If79g/2kXw==
X-CSE-MsgGUID: vEjOtjKcRR2GWU3zc+DJ7Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11598"; a="75364598"
X-IronPort-AV: E=Sophos;i="6.19,267,1754982000"; d="scan'208";a="75364598"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 14:26:37 -0700
X-CSE-ConnectionGUID: mSPUGU3YRZSts93yN8Tksw==
X-CSE-MsgGUID: ULndSBL3TdiiY4Slb96Xuw==
X-ExtLoopCount2: 2 from 10.245.245.234
X-IronPort-AV: E=Sophos;i="6.19,267,1754982000"; d="scan'208";a="185751236"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.234])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 14:26:37 -0700
Resent-From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Resent-Date: Thu, 30 Oct 2025 23:26:33 +0200
Resent-Message-ID: <aQPYCfJIWMlKVKv0@intel.com>
Resent-To: intel-gfx@lists.freedesktop.org
X-Original-To: ville.syrjala@linux.intel.com
Delivered-To: ville.syrjala@linux.intel.com
Received: from linux.intel.com [10.54.29.200]
 by stinkbox.korsu.shacknet.nu with IMAP (fetchmail-6.5.4)
 for <vsyrjala@localhost> (single-drop); Wed, 29 Oct 2025 22:45:39 +0200 (EET)
Received: from orviesa001.jf.intel.com (ORVIESA001.jf.intel.com
 [10.64.159.141])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id 90BEE20B92E9
 for <ville.syrjala@linux.intel.com>; Wed, 29 Oct 2025 13:42:18 -0700 (PDT)
X-CSE-ConnectionGUID: neUIubYESpW+W4ZDg9JEzg==
X-CSE-MsgGUID: PqCOvMeESganSyMM4L4yEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,264,1754982000"; d="scan'208";a="222984520"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.242])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 13:42:17 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/3] drm/1915/dram: Fix DIMM_S decoding on ICL
Date: Wed, 29 Oct 2025 22:42:12 +0200
Message-ID: <20251029204215.12292-1-ville.syrjala@linux.intel.com>
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

Fix MAD_DIMM DIMM_S deocoding on ICL, and clean up the related
register defines a bit while at it.

Ville Syrjälä (3):
  drm/i915/dram: Use REG_GENMASK() & co. for the SKL+ DIMM regs
  drm/i915/dram: Sort SKL+ DIMM register bits
  drm/i915/dram: Fix ICL DIMM_S decoding

 drivers/gpu/drm/i915/intel_mchbar_regs.h |  68 ++++++----
 drivers/gpu/drm/i915/soc/intel_dram.c    | 166 +++++++++++++++++------
 2 files changed, 160 insertions(+), 74 deletions(-)

-- 
2.49.1
