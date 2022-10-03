Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FCC35F3737
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Oct 2022 22:39:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9D4410E406;
	Mon,  3 Oct 2022 20:39:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E1F610E406
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Oct 2022 20:39:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664829582; x=1696365582;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fo65/YujDfdPb7m+QTcyhTARI9Sg+dGo7Mt8qrtaSyw=;
 b=B1q9Lt+eamZ1WeFz4kPx0FzQ3NSGzBBytAds27O6uQBwFkr2Tja0r0Bo
 IszPWZU494xDaOb7/ppWD4dZJ5cGR3FJLAokpC7K/IuKZ1adWIIPDSy6I
 alJkBzcHNHDwBROZytpeDbTn++sL/U/d5EvP90G+pbPoWpHZHer+lYjaF
 4+VSz9XEJa//AikPW2bQ8iDsel2LmdXubm1sZMfaRFHnYa3Y9PmWwEUvA
 219pR/nexdBuHsnA868Zg5ZhGw3kgsNuqhXP9EspbRf9U6+3mqEOqu8iG
 iR2Z38fSYR2wyfnsaZqvtSx7kUbeIAwtF2VHQ+n5/h1tBqVM3ryAf5laL A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="302733328"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="302733328"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 13:39:41 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="798879424"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="798879424"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 13:39:41 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: linux-firmware@kernel.org
Date: Mon,  3 Oct 2022 13:41:07 -0700
Message-Id: <20221003204107.1105725-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] PR for DG2 HuC v7.10.6
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

The following changes since commit fdf1a65258522edf18a0a1768fbafa61ed07e598:

  linux-firmware: Update AMD cpu microcode (2022-09-30 17:33:35 -0400)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware dg2_huc_7.10.6_pr

for you to fetch changes up to b3110904e23e0032f6b6c72af84547066a5c4f26:

  i915: add HuC 7.10.6 for DG2 (2022-10-03 13:32:30 -0700)

----------------------------------------------------------------
Daniele Ceraolo Spurio (1):
      i915: add HuC 7.10.6 for DG2

 WHENCE               |   3 +++
 i915/dg2_huc_gsc.bin | Bin 0 -> 626688 bytes
 2 files changed, 3 insertions(+)
 create mode 100755 i915/dg2_huc_gsc.bin
