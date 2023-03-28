Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D99236CCCDB
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 00:13:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B60F10E4B8;
	Tue, 28 Mar 2023 22:13:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E33D610E4B8
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Mar 2023 22:13:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680041635; x=1711577635;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=6lVaKwn+JY41+Nz9qyTtdbWGXvzlMYHN2mZba/q9ZOY=;
 b=gZOehicrugfqWSVHZB9Q8O1LpQrP4AwZ4Dxk3Vzlhn96kPbgu+sf7rrd
 MneKOuyplvgWal+2yGfgBCJgjv1ts4I4BmNyMprsbiXplIF7xhCfuZLj/
 uuoYQfr1nlMPv/lMyz+wG88cluuHUYMGdN4FjXtzo4BmOauIEzWPi5l8t
 spk2n0uziakSgL5zCzprSOIgkeieBkLb+Hsdj2NNYJCpnecrs84dj/Lqn
 ZfbOV/0gPf+l4y6+DeVwAOBcN+E6dH4ZAKKQsyeK9vNXKctgRqq6wXrS+
 B2jCDvfLNGiA6sIHeKh2oV9R70KJB9MipteGPJrmV7hfahlU4M3kp1+yq w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="329165449"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="329165449"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2023 15:12:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="807980240"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="807980240"
Received: from relo-linux-5.jf.intel.com ([10.165.21.152])
 by orsmga004.jf.intel.com with ESMTP; 28 Mar 2023 15:12:38 -0700
From: John.C.Harrison@Intel.com
To: intel-gfx@lists.freedesktop.org
Date: Tue, 28 Mar 2023 15:12:01 -0700
Message-Id: <20230328221201.957241-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI] PR for new GuC v70.6.4 for MTL
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

  git://anongit.freedesktop.org/drm/drm-firmware mtl_guc_70.6.4

for you to fetch changes up to 6e1a2bb8c76dd0189f26c710f7b341c0d724d948:

  i915: Add GuC v70.6.4 for MTL (2023-03-28 15:04:06 -0700)

----------------------------------------------------------------
John Harrison (1):
      i915: Add GuC v70.6.4 for MTL

 WHENCE                  |   3 +++
 i915/mtl_guc_70.6.4.bin | Bin 0 -> 537408 bytes
 2 files changed, 3 insertions(+)
 create mode 100644 i915/mtl_guc_70.6.4.bin
