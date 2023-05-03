Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7C956F5C48
	for <lists+intel-gfx@lfdr.de>; Wed,  3 May 2023 18:58:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2059610E31C;
	Wed,  3 May 2023 16:58:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7894810E328
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 May 2023 16:58:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683133108; x=1714669108;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=JmWq3PsHtXDgfJ+JouZpU37KyzNhDna8x1Sd4MGE/sA=;
 b=g535/65L2Km2x4IDcO5lHoB9+81T/cB0m9/rVvLb3IJHDeGbMgHO2wuw
 X7uTbH1AekK0WJoKNlkuZyaFebtqOJ1pUUIqL9/u7d7EguVN4P0HuiE6Q
 K7u6ub7eTkUDuKq9AHueYaKafOb3f9C9Bva/Ns0NLUpUGWPz9/OqZuj8o
 OPQHsyZTtGcpGYuaZNJgjtv7hx4Yimd/pG0O6VvznFmRu71sK9mMYdezP
 Kq/4/5PnhjEN+zh6E33cmgjjkp6yfrsxhZTViYH40XvndJK6ScaTxevdg
 gItpSTS9AKY0CPe8k3LARtcfokzEb/Xxfpy5Avgj4fOclMuL0PUgikt2u A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10699"; a="337838492"
X-IronPort-AV: E=Sophos;i="5.99,247,1677571200"; d="scan'208";a="337838492"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2023 09:58:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10699"; a="674157067"
X-IronPort-AV: E=Sophos;i="5.99,247,1677571200"; d="scan'208";a="674157067"
Received: from relo-linux-5.jf.intel.com ([10.165.21.152])
 by orsmga006.jf.intel.com with ESMTP; 03 May 2023 09:58:16 -0700
From: John.C.Harrison@Intel.com
To: linux-firmware@kernel.org
Date: Wed,  3 May 2023 09:58:28 -0700
Message-Id: <20230503165828.1002609-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] PR for new GuC v70.6.6 for MTL
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
Cc: jwboyer@kernel.org, intel-gfx@lists.freedesktop.org, kyle@kernel.org,
 ben@decadent.org.uk
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The following changes since commit 312c61f5a6c9c6a313383a8f0c2b02711ec15262:

  amdgpu: update DCN 3.1.6 DMCUB firmware (2023-05-03 09:11:02 -0400)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware mtl_guc_70.6.6

for you to fetch changes up to 192ee6d1a7806620eeb6f8478e6a3ec6ea44821c:

  i915: Add GuC v70.6.6 for MTL (2023-05-03 06:45:11 -0700)

----------------------------------------------------------------
John Harrison (1):
      i915: Add GuC v70.6.6 for MTL

 WHENCE              |   3 +++
 i915/mtl_guc_70.bin | Bin 0 -> 303936 bytes
 2 files changed, 3 insertions(+)
 create mode 100644 i915/mtl_guc_70.bin
