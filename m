Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA379AFF877
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jul 2025 07:31:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DBE910E363;
	Thu, 10 Jul 2025 05:31:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KIzt9Rj/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C48410E362;
 Thu, 10 Jul 2025 05:31:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752125469; x=1783661469;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=T80CmZ0ARLC1ZEKx4xM8k21r15gw6GuGYPoQPXt1IZA=;
 b=KIzt9Rj/p1IlYHq4kxlzBObtnCpX3TaQ3Q1W0XE3C0fcrHmAAw8CHRwY
 3z1N3BiJO9B649WNlzQZ0GmxVpnnYPLsA6tEzFfXQyA/cXp/00BaGBoPc
 UPblr3KwbzLaSlzoyZNNY7eSw6AULWryYAgYSF9grVIT7NryxpyTxgd7p
 CFQZ15wiaEExPt/BdxYE9fMXFnoj/XGXY8uMSb3BT7WSn9VKlurMwsyaF
 6WwRiEB0GOvSH8RORUrQTT+gBkCth+4x4UMCpmfPPlcWM7317k00WDHTR
 puvTQb8kRcSvYky0FrIWtJe+7k3C1Cpta1oysYJo8EDoNl0SqWOIesX4w w==;
X-CSE-ConnectionGUID: ni6Iz4wzS06z5ahl7ltpxw==
X-CSE-MsgGUID: ymDh+EwpRIes/sjTeB2x2w==
X-IronPort-AV: E=McAfee;i="6800,10657,11489"; a="64654809"
X-IronPort-AV: E=Sophos;i="6.16,299,1744095600"; d="scan'208";a="64654809"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2025 22:31:09 -0700
X-CSE-ConnectionGUID: 7Z3Msz5hQJCxCGZ9nK6egg==
X-CSE-MsgGUID: TP0pmWsFSW6rGQCpGRhJPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,299,1744095600"; d="scan'208";a="156304716"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2025 22:31:07 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jani.nikula@linux.intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 0/1] Revert patch to reject HBR3 for all eDP panels
Date: Thu, 10 Jul 2025 10:50:39 +0530
Message-ID: <20250710052041.1238567-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Revert the existing patch that rejects HBR3 for all eDP panels that
do not support TPS4. With the patch reverted, the gitlab issue#5969 [1]
will get opened again. Add a quirk to limit the rate to HBR2 for the
device mentioned in [1] and close the issue.

This series is a continuation from [2], and [3].

[1] https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5969
[2] https://lore.kernel.org/all/1cd154a09823abf6d34221ae9e02f9cd342cc3a3@intel.com/
[3] https://lore.kernel.org/all/87y0uzh5tz.fsf@intel.com/

Rev2:
Instead of revert and add quirk, add a single patch that fixes the
commit. (Jani).

Rev3:
Instead of refining, just revert the patch for now and add quirk for the
ICL machine as a separate patch. (Ville)

Rev4:
Address review comments from Ville.

Ankit Nautiyal (2):
  Revert "drm/i915/dp: Reject HBR3 when sink doesn't support TPS4"
  drm/i915/dp: Add device specific quirk to limit eDP rate to HBR2

 drivers/gpu/drm/i915/display/intel_dp.c     | 30 ++++++++-------------
 drivers/gpu/drm/i915/display/intel_quirks.c |  9 +++++++
 drivers/gpu/drm/i915/display/intel_quirks.h |  1 +
 3 files changed, 21 insertions(+), 19 deletions(-)

-- 
2.45.2

