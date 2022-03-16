Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EED34DB02C
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Mar 2022 13:56:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A18010E33E;
	Wed, 16 Mar 2022 12:56:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12A5610E33E
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Mar 2022 12:56:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647435401; x=1678971401;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CCGID6YR72aTzrisgIdooSiQSR8qoodnXaII0QYHsVM=;
 b=GJVP1X+0iVtXwnjnR76Xy4y8JXa3H0+D3+GEPR16TbaSsVOZY1v8LAAT
 ICuxGdqvoBbkxX2N2l9aPMS/x71S2WKxh0jwjCrgC7jwWOVLAzGsiUxcc
 U7L45azc5CK+69tXMFer7TBDa2qJ52oAB8fcgLCapldcNvFC6DHn3pCVZ
 7YBC50OO7XH5fh0XJW/tbq9JNWiWCq8/u9xTwBEpiarX7PHzfFRHOs49r
 2YNJ7uJIj0g4leoN3scT2nK20d/Z68DsnfmPjMDnXIdnoGIG7BljhcZAm
 adLcpQBcM8z6YPwNpg7laiu1uqUYwtfxEbbgdwhfM0xh43yCbYhOnGudD A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="244028991"
X-IronPort-AV: E=Sophos;i="5.90,186,1643702400"; d="scan'208";a="244028991"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2022 05:56:40 -0700
X-IronPort-AV: E=Sophos;i="5.90,186,1643702400"; d="scan'208";a="557425925"
Received: from baskarm-mobl2.gar.corp.intel.com (HELO
 smullati-desk.gar.corp.intel.com) ([10.252.91.116])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2022 05:56:38 -0700
From: Mullati Siva <siva.mullati@intel.com>
To: intel-gfx@lists.freedesktop.org,
	siva.mullati@intel.com
Date: Wed, 16 Mar 2022 18:26:26 +0530
Message-Id: <20220316125627.1738613-1-siva.mullati@intel.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/1] drm/i915/guc: Refactor slpc shared data
 access to use iosys_map
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
Cc: lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Siva Mullati <siva.mullati@intel.com>

This is continuation to the original patch series to use iosys map
APIs to use slpc shared data commands and descriptors.
https://patchwork.freedesktop.org/series/99711/

Siva Mullati (1):
  drm/i915/guc: Convert slpc to iosys_map

 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c   | 79 +++++++++++--------
 .../gpu/drm/i915/gt/uc/intel_guc_slpc_types.h |  5 +-
 2 files changed, 47 insertions(+), 37 deletions(-)

-- 
2.33.0

