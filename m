Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6CF1958C03
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2024 18:14:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35CFE10E44D;
	Tue, 20 Aug 2024 16:14:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cB5/Msdk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74A5B10E449
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2024 16:14:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724170488; x=1755706488;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vQQGN02WOBpAcC/eD5GEEcFQs1BQXJaB09+xfOuP3bA=;
 b=cB5/MsdkMkvJvYOzljIfmjp+5/uYgcZIjUwbcJQiP7PzzNrqAOdqEzbV
 OSNXzXGKLMUJmGwcH1sYK7C1X9+c4ZQaru5A2HkyZsPVumIJAZLjeG4BK
 QkNl4QyKUxjqKkirVauutnNCpiJg1KtiE+K84/+EzzppU/QcrSwVT0n7I
 XjPrqHhrx++2g0kl8y7kULYdbyai8igHiWgdlogm5+prVr7c1qbBEvb1z
 +eSUCDb12HhWOHwM7U1toJ19i0cjbcrPJIwDa2nbsMR8EBhbkP9I4ZSmH
 XlWOFzb4/2IjYpo2U2PW9RVINETFH8CdRmK1YlnSIsRcKrKH4vszMeQAY g==;
X-CSE-ConnectionGUID: mFnx5JVXR5O0KY6Pr9rEKA==
X-CSE-MsgGUID: G+PzSLwsT/qY8SXzcNSH7w==
X-IronPort-AV: E=McAfee;i="6700,10204,11170"; a="22367255"
X-IronPort-AV: E=Sophos;i="6.10,162,1719903600"; d="scan'208";a="22367255"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2024 09:14:48 -0700
X-CSE-ConnectionGUID: 6wX8tijDQz+R7t57tv+dIA==
X-CSE-MsgGUID: 3qYczx6ARYi+3IJgWnRdqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,162,1719903600"; d="scan'208";a="60622950"
Received: from fpallare-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.44])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2024 09:14:47 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jani.nikula@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 0/2] Increase fastwake sync pulse count as a quirk
Date: Tue, 20 Aug 2024 19:14:27 +0300
Message-Id: <20240820161429.2213343-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
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

Implement mechanism to apply quirk only if certain panel is detected
on certain setup. Use this new mechanism to increase fastwake sync
pulse count on certain Dell laptop and only if specific panel is
installed on that laptop. 

Jouni Högander (2):
  drm/i915/display: Add mechanism to use sink model when applying quirk
  drm/i915/display: Increase Fast Wake Sync length as a quirk

 drivers/gpu/drm/i915/display/intel_alpm.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_dp.c     |  5 ++
 drivers/gpu/drm/i915/display/intel_dp_aux.c | 17 ++--
 drivers/gpu/drm/i915/display/intel_dp_aux.h |  2 +-
 drivers/gpu/drm/i915/display/intel_quirks.c | 99 ++++++++++++++++-----
 drivers/gpu/drm/i915/display/intel_quirks.h |  4 +
 6 files changed, 98 insertions(+), 31 deletions(-)

-- 
2.34.1

