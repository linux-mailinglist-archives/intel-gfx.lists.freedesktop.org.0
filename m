Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 772EB60607C
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Oct 2022 14:44:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E7EC10E135;
	Thu, 20 Oct 2022 12:44:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AC5710E104
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Oct 2022 12:44:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666269856; x=1697805856;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xW+1RZ94xsUzMnHhyxWHzLelprJwXhygm9zv6uakxiE=;
 b=g13Ep/OEg2Hz+4zSzbZEWLnimHwR/IY4xf/0MoR/zTZ6Oq/BYZshOctF
 SkWIYmt8yHMurKyBZAxtBS7Ibq4AGXRjqrGEM4i14jliaxIM2RXWwybDF
 ULJyvhGBO08BmUOVG5G2ydxXUxM0SmxTI/aNKOsFlZjufZtegvjLHzWWG
 witnR+Ybdo01hL+yRaDylKzzLyLj7nHc4PeKqn1G4ZU5KO2dq4bc41S0i
 oNOBFddx7IGS88vjjqSliW8vWq+AUlafU+5ywyyhRve/j6LLHbYW8T0W7
 SgH2R/h0893RIqp6TA31AE1jlFMt4AkIPRobIORCIRWATtDNvhZLV/RXn w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="294089813"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="294089813"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 05:44:15 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="804856340"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="804856340"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 05:44:13 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Oct 2022 18:14:34 +0530
Message-Id: <20221020124437.2429511-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/3] Get dsc optimal output bpp
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

Currently, when going with DSC for DP, we take the max lane, rate
and pipe bpp, to get the maximum compressed bpp possible. We then
set the output bpp to this value. It might be possible to have lesser
rate or lane count, for which the same compressed bpp works.

This RFC series attempts to get the best compressed bpp such that we
have maximum bpc, with minimum link rate and lane possible.

The policy here is chosen such that 'best compressed bpp' mean minimum
compression, ie. maximum compressed bpp. It means compress only that
is sufficient to sent over the link, and for that compressed bpp,
use minimum lanes, and rate.

Current series, only touches the DSC for DisplayPort. eDP might require
some more changes and also a different policy.

Rev2: Added fix to check that force_dsc_dpc <= connector
max_requested_bpc.

Ankit Nautiyal (3):
  drm/i915/dp: Check if force dsc bpc <= max requested bpc
  drm/i915/dp: Rename helpers to get DSC max pipe bpp and max output bpp
  drm/i915/dp: Get optimal link config to have best compressed bpp

 drivers/gpu/drm/i915/display/intel_dp.c | 229 +++++++++++++++++++-----
 1 file changed, 183 insertions(+), 46 deletions(-)

-- 
2.25.1

