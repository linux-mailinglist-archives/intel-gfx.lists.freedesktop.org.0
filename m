Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C6BD85FCD64
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Oct 2022 23:40:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFB0710E029;
	Wed, 12 Oct 2022 21:40:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8535B10E029
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Oct 2022 21:40:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665610831; x=1697146831;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=JTS5yGUKxAArOu7P85smkr1CEyqKhQb32U5uNhRpAQw=;
 b=HZmRhU3sWPR8DCt06a8JxXxC3ymJpx8oI0N0/Oaedz99ROqwdwtGpVja
 g4mXxPQ9U6Rk/bMEOTqnPXd8mx/C4Atk8zZjFq065N2ZWzDZDM01yyEk2
 ql1NLnk6UFFWyDqQ2kvs00aeeBObis93rnm/0Iz68Af0yRQKCnWEwKNnb
 /H1nujTy/TKb1Un08VLXR2AGIuDUOvER1PhDpYi4diWq0B2uVsh6kM5Up
 4mavm5MIVdALQuBMWOvRUwq2fa72PrV78aJeAKQdSacs2k0iW3lBGcFfS
 8z2wzxnWS8MoEiM6VvTnx0+l/P2r5xh53cOnrwXr3e18qLDnCjn6Gqs6L A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10498"; a="288182978"
X-IronPort-AV: E=Sophos;i="5.95,180,1661842800"; d="scan'208";a="288182978"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 14:40:30 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10498"; a="716081872"
X-IronPort-AV: E=Sophos;i="5.95,180,1661842800"; d="scan'208";a="716081872"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 14:40:30 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 12 Oct 2022 14:42:22 -0700
Message-Id: <20221012214222.1677743-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI] PR for HuC 7.10.3
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

The following changes since commit fdf1a65258522edf18a0a1768fbafa61ed07e598:

  linux-firmware: Update AMD cpu microcode (2022-09-30 17:33:35 -0400)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware dg2_huc_7.10.3

for you to fetch changes up to 1655a5116858051e83cae6ae47f2d9de0a8c1d4c:

  i915: Add HuC 7.10.3 for DG2 (2022-10-12 11:25:14 -0700)

----------------------------------------------------------------
Daniele Ceraolo Spurio (1):
      i915: Add HuC 7.10.3 for DG2

 WHENCE               |   3 +++
 i915/dg2_huc_gsc.bin | Bin 0 -> 622592 bytes
 2 files changed, 3 insertions(+)
 create mode 100755 i915/dg2_huc_gsc.bin
