Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A226AEB1A3
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jun 2025 10:51:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24BE210E97B;
	Fri, 27 Jun 2025 08:51:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FHNi72XM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D12110E97B;
 Fri, 27 Jun 2025 08:51:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751014302; x=1782550302;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=f68FOcot5UAVJUmHP8/9EAGQ3LpBhI3D+nIK5gz0UlA=;
 b=FHNi72XMqLQHpMY64DqjjpD+fwb0N9bUOlZtIOY2BXWtYFzPE7nNg59j
 3amNrMkZEP8/0BHqaJp5eTi6Oz08g1X0rYuurezeYz2axctLzBZw26KbN
 kN/Maa1/tQymyh301+rPXLurwkywJxGjHMSU2dxUkQ0IUyRHQoCsikUaJ
 7kY418Zdip1fWmGbb57lwrrCK34wzRsbGPWaO53k2zvrU/CqSHIKvbrZt
 NAyoH0np4Py2IhXxlwqJXQ+y4YdFXd+Kou+As454w3VEG2TKN0D2yl1jw
 TXoOFbuQqHMNigx814y0OQtRc9+TFwVQFAC7Kf1OeQAzY/D6XrYUa43ZW Q==;
X-CSE-ConnectionGUID: hbVhrNlATQi++eYxTxFtDQ==
X-CSE-MsgGUID: QzhrBOV6TvuZb13AwMlI6Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11476"; a="53266028"
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="53266028"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 01:51:37 -0700
X-CSE-ConnectionGUID: 0lLnr2jrTjaASyormCEJ1A==
X-CSE-MsgGUID: VXwFisRdTAaiXB6oMzKdTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="157302528"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 01:51:36 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jani.nikula@linux.intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 0/1] Revert patch to reject HBR3 for all eDP panels
Date: Fri, 27 Jun 2025 14:10:58 +0530
Message-ID: <20250627084059.2575794-1-ankit.k.nautiyal@intel.com>
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

Ankit Nautiyal (1):
  drm/i915/dp: Refine TPS4-based HBR3 rejection and add quirk to limit
    eDP to HBR2

 drivers/gpu/drm/i915/display/intel_dp.c     | 31 +++++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_quirks.c |  9 ++++++
 drivers/gpu/drm/i915/display/intel_quirks.h |  1 +
 3 files changed, 39 insertions(+), 2 deletions(-)

-- 
2.45.2

