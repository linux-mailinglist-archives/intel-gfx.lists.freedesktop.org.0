Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 71FAE4D8B91
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Mar 2022 19:19:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42C4710E238;
	Mon, 14 Mar 2022 18:19:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A302B10E186;
 Mon, 14 Mar 2022 18:19:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647281973; x=1678817973;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=yh8+7acVKRtWHd+4Hmsm7A+zWA9RuNdUb2dE1LADBeQ=;
 b=K0z5fKqdo3gZOJremlB7UMd/ZhqIf/jsvpvaBqlf2MtnTx7t4eUSfZo6
 eS4/3R3z2K6zVrcpGW4J5DyHBB10Rm8070e8Ws9RXayT5HXBbI850+LVS
 hOsG+XZl+5TZe9eWPmpEwiTGYN0ENBX5o7XYG3Z1bVrf1yKMVhmFw52gX
 jH0j2fF3jpvz3h6fbHPKleCMCvDEllniVzhsMOwHFgYP08p4ScUMPxNCl
 6D9YgTTyiQ3+D5pYtB11Ii8GYZ/4g3Jp51Lr9qB0yKjB8f+Fo48SVkyuk
 xNBfuf7eCZyhj31xkDpBs1WvnFlGed6eUlhT8Bt6ChKj1EQZr4vDDZyxy g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="316831107"
X-IronPort-AV: E=Sophos;i="5.90,181,1643702400"; d="scan'208";a="316831107"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2022 11:19:14 -0700
X-IronPort-AV: E=Sophos;i="5.90,181,1643702400"; d="scan'208";a="713839363"
Received: from ramaling-i9x.iind.intel.com ([10.203.144.108])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2022 11:19:12 -0700
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Date: Mon, 14 Mar 2022 23:49:44 +0530
Message-Id: <20220314181944.17011-1-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/4] lrc selftest fixes
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
Cc: Hellstrom Thomas <thomas.hellstrom@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Few bug fixes for lrc selftest.

Chris Wilson (4):
  drm/i915/gt: Explicitly clear BB_OFFSET for new contexts
  drm/i915/selftests: Check for incomplete LRI from the context image
  drm/i915/selftest: Clear the output buffers before GPU writes
  drm/i915/selftest: Always cancel semaphore on error

 drivers/gpu/drm/i915/gt/intel_engine_regs.h |   1 +
 drivers/gpu/drm/i915/gt/intel_lrc.c         |  17 +++
 drivers/gpu/drm/i915/gt/selftest_lrc.c      | 115 ++++++++++++++++----
 3 files changed, 113 insertions(+), 20 deletions(-)

-- 
2.20.1

