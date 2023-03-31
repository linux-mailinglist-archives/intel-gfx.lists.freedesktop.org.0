Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C5876D23D1
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Mar 2023 17:18:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97F9810F29D;
	Fri, 31 Mar 2023 15:18:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B0DD10F29D
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Mar 2023 15:18:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680275891; x=1711811891;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lf3A7lZC/DpKX3vf+FqfMDfoXVcGDeF7smWtyKtuEjg=;
 b=R74M57S1ksflcPtKVZzoC34eSJYhGtZyhFBUKXSak8IcOWuTuwS2WWVz
 0tC2dXthvQG8hyWtB1itAAnRpgx4LrHYFReO546hFrwV7JguRus9PWeBS
 DTo824Kpg7tRdrIM0GhBle6ZwHnsQJT2ygXGq7LGr4dMxHXovhjwVhQNN
 kVCZqkOjoqPGQkkG5epINaqKGN1eyMilMMHVsL3oavMrjV0ne0PywqK3Z
 HlDO3L0TbLXzWWtlvTTVLUWSFAkofuu9s/F/utet3sIqEsqoypT323MZ2
 0SSjdYWZ7lH2DXn2+8IkRQJmJp2wOQmpj1aKr19ipteHrE03JJ3oD0ZsD Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10666"; a="325448787"
X-IronPort-AV: E=Sophos;i="5.98,307,1673942400"; d="scan'208";a="325448787"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2023 08:18:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10666"; a="687697178"
X-IronPort-AV: E=Sophos;i="5.98,307,1673942400"; d="scan'208";a="687697178"
Received: from relo-linux-5.jf.intel.com ([10.165.21.152])
 by fmsmga007.fm.intel.com with ESMTP; 31 Mar 2023 08:18:10 -0700
From: John.C.Harrison@Intel.com
To: intel-gfx@lists.freedesktop.org
Date: Fri, 31 Mar 2023 08:17:37 -0700
Message-Id: <20230331151737.3083271-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI] PR for new GuC v70.6.5 for MTL
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

The following changes since commit bcdcfbcf0a8f24a914b8c163906e6ce93d7f8897:

  linux-firmware: Update firmware file for Intel Bluetooth AX101 (2023-03-20 08:34:27 -0400)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware mtl_guc_70.6.5

for you to fetch changes up to d75acfcd61e44418651c7cb859d79a7ad3e147b7:

  i915: Add GuC v70.6.5 for MTL (2023-03-31 08:02:48 -0700)

----------------------------------------------------------------
John Harrison (1):
      i915: Add GuC v70.6.5 for MTL

 WHENCE                  |   3 +++
 i915/mtl_guc_70.6.5.bin | Bin 0 -> 308032 bytes
 2 files changed, 3 insertions(+)
 create mode 100644 i915/mtl_guc_70.6.5.bin
