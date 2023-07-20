Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 33C1A75B5B2
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jul 2023 19:35:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A16210E5F8;
	Thu, 20 Jul 2023 17:35:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18ABE10E5F2
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jul 2023 17:35:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689874552; x=1721410552;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fBKREk4PBD1GuDN0lxGr74qHKoIx0ldo1vIT+GjokKk=;
 b=js7Gcg9TherR78n3JyaxIDWa3XDQ+BrDko+tKyQqSAJ/bZnnQyYMc6fu
 FnGh5sMQFgUjqQaakpyxeiPmpKZYP4uIw4KGmQQhMFYarkvYw3Rdx0s3B
 gJsDh3l91L2qnS0Jf42PmuX+5iQHhfnHcap/XdGhKEentpjdQsfaMtnBN
 /MPZGQr+nVGloYenwgPtBxLfv2uBrLJASylu8woWpqHutbTxWrugtUKMX
 Flom2sMHohawvuv3mN1/T2orCU5rpl2BCwwwGzzkKZgaq0csncF0jEec+
 khVj6ysHjBYqli5lk17Vrq3KccY2NpyLByx8nEkM5LyQEZ7rSuyOJ0nn4 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10777"; a="430609880"
X-IronPort-AV: E=Sophos;i="6.01,219,1684825200"; d="scan'208";a="430609880"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2023 10:35:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10777"; a="848521685"
X-IronPort-AV: E=Sophos;i="6.01,219,1684825200"; d="scan'208";a="848521685"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2023 10:35:51 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: linux-firmware@kernel.org
Date: Thu, 20 Jul 2023 10:35:22 -0700
Message-ID: <20230720173522.194818-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PR] GuC 70.8 for MTL and DG2 + HuC 8.5.1 for MTL
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

The following changes since commit d3f66064cf43bd7338a79174bd0ff60c4ecbdf6d:

  Partially revert "amdgpu: DMCUB updates for DCN 3.1.4 and 3.1.5" (2023-07-07 15:24:32 -0400)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware dg2_mtl_guc_70.8

for you to fetch changes up to 6f3a37f47d68d5e2108b98a900e4be910e8c7106:

  i915: update DG2 GuC to v70.8.0 (2023-07-20 10:14:57 -0700)

----------------------------------------------------------------
Daniele Ceraolo Spurio (2):
      i915: update to GuC 70.8.0 and HuC 8.5.1 for MTL
      i915: update DG2 GuC to v70.8.0

 WHENCE               |   6 +++---
 i915/dg2_guc_70.bin  | Bin 369600 -> 385856 bytes
 i915/mtl_guc_70.bin  | Bin 303936 -> 308032 bytes
 i915/mtl_huc_gsc.bin | Bin 565248 -> 569344 bytes
 4 files changed, 3 insertions(+), 3 deletions(-)
