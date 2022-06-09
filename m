Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B2B6754574B
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jun 2022 00:22:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC98311B580;
	Thu,  9 Jun 2022 22:22:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56D7011B580
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jun 2022 22:22:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654813334; x=1686349334;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wDqh/6+ySOcH1pe4GrBErtaJyYsBlBtxEsHSgvsWdPc=;
 b=gayCocISWyL677LvIaZ43ny1zAVoEUqcGGynh4pbgbzjbX4YvFnNrExZ
 tSl7sy01BWyUbZLdEOkweNGU/E4Zp0xLCYszstP98taz4yp8sYzi67Q+M
 LT/JPhcItjvt3+M2r8bn8zKvZp2hHBHULiqzPwvmJNgHEiTlDdjbhWYVB
 I7EreENuXqFxpy7G6xWMLQqByNHnI/zUVVW390F4ZVFkB616oTcbeIUsw
 T9lOzqYyyrCN1Z6GeN2fuE8L1WgFe/44nbNaDM14nAb4GqkBGLLrSoG9Y
 3BGedTy71GUpJXlIf1yspyT3dzs1kWoQx2bbx/V9GWJk1jhMOqblxIxyl g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10373"; a="277469128"
X-IronPort-AV: E=Sophos;i="5.91,288,1647327600"; d="scan'208";a="277469128"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2022 15:22:12 -0700
X-IronPort-AV: E=Sophos;i="5.91,288,1647327600"; d="scan'208";a="671538654"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2022 15:22:12 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Jun 2022 15:21:54 -0700
Message-Id: <20220609222154.3632058-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI] PR for DG2 HuC v7.10.0
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

The following changes since commit 02c69863c885db963f8c0121b533f2816ef5be3b:

  rtl_bt: Update RTL8852A BT USB firmware to 0xDFB8_0634 (2022-06-07 08:32:39 -0400)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware dg2_huc_7.10.0

for you to fetch changes up to 24b38442e8bd59c4456919aaedec111bb864ea5d:

  i915: Add HuC 7.10.0 for DG2 (2022-06-09 15:09:58 -0700)

----------------------------------------------------------------
Daniele Ceraolo Spurio (1):
      i915: Add HuC 7.10.0 for DG2

 WHENCE                      |   3 +++
 i915/dg2_huc_7.10.0_gsc.bin | Bin 0 -> 622592 bytes
 2 files changed, 3 insertions(+)
 create mode 100644 i915/dg2_huc_7.10.0_gsc.bin
