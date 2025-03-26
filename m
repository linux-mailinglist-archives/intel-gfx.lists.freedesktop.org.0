Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55EC7A71B96
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Mar 2025 17:15:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59DF510E151;
	Wed, 26 Mar 2025 16:15:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V0496oKm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DB4710E151;
 Wed, 26 Mar 2025 16:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743005708; x=1774541708;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2yjCBTkRzBURq3aUwSuDrBxo1Am4UI824QPdEwcps2Y=;
 b=V0496oKm1tSVEvMgAgUKDMYqMJSTR1/kmIK1xFDEALHI+5Mbw9GGi3wO
 tCUi+DBas4vFSD+jC/hsaVrewwunxHgkDuenuqEZkOyF/6QkzEGZJxCYg
 +YEAJH9oCKVpy3LRF2fh0sF8gkectJB5W3F1a0pZvCCVuShamR6hnr80I
 qMtaEPLz3dQNS0NjzLtXsLOSKZbryAIuwnBISlxcC7e0PF+e63ULYnyGU
 mgKiutOFgJIogN5P5+SI0CFe1XSf8+1VekFVRJF1kMv5878clUegfc6Sd
 m5ujDCIq29CemvlH8YgAIumDlFDujXKjcJ37rVh/UpX5kV1KX78yA/x4u w==;
X-CSE-ConnectionGUID: 4ZdsChCzQZyZ1Atk+j1BMw==
X-CSE-MsgGUID: uhf0z3CLTa2bC9GT07lbtA==
X-IronPort-AV: E=McAfee;i="6700,10204,11385"; a="44488101"
X-IronPort-AV: E=Sophos;i="6.14,278,1736841600"; d="scan'208";a="44488101"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2025 09:15:08 -0700
X-CSE-ConnectionGUID: zdQhjBmFR0q4GXW2SeCDnA==
X-CSE-MsgGUID: CoGk0bUqS9OPDQeM+HWSlw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,278,1736841600"; d="scan'208";a="129929737"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2025 09:15:06 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 0/2] VRR Register Read/Write Updates
Date: Wed, 26 Mar 2025 21:33:19 +0530
Message-ID: <20250326160321.550753-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
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

Now that we have switched to VRR Timing generator from PTL onwards, we
no longer need to program VTOTAL.Vtotal bits, which were used by Legacy
Timing Generator.
This patch series is a continuation from discussion of another patch for
avoid reading/writing VTOTAL.Vtotal bits [1].
First patch introduces a macro to exclude DSI transcoded from VRR
programming in a consistent manner. The next patch actually modifies
reading/writing VTOTAL register.

[1] https://patchwork.freedesktop.org/patch/644683/?series=134383&rev=17

Rev2: Address comments from Ville.

Ankit Nautiyal (2):
  drm/i915/display: Introduce transcoder_has_vrr() helper
  drm/i915/display: Avoid use of VTOTAL.Vtotal bits

 drivers/gpu/drm/i915/display/intel_display.c | 46 ++++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_vrr.c     | 10 +++++
 2 files changed, 52 insertions(+), 4 deletions(-)

-- 
2.45.2

