Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7DC57B263E
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Sep 2023 22:06:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BDA210E6A3;
	Thu, 28 Sep 2023 20:06:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DF0610E3E8
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Sep 2023 20:06:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695931572; x=1727467572;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=pDLFV8RP2TanDwD9rSpTzLASqaw665tk3nCl2Vt21AY=;
 b=hhV/6jSfDZpKbAsejltuEJkKl/U7sd8hNAKdqLFbzP4ETEbvG1dzDqFJ
 L4mdsvIkKXXcCbXYEYe763+GQnZgBLqTxhyZz/DXPAPSG68e4DApmkUSx
 zDIxYIGwuua/sSZ5W3MOCrrt18cYRER/U/iM3gGBGnb88EzAn2JY4w6nD
 xdU7mLb7/Q6Rnr913/6c9PBB1PMI/hYpnKQcDPd88cVIKq5mk6qd0DloF
 J+Cdy3C1mw4FPI4Xvr48iOamxF8Bno6aJumxmiuvQPaCwaWizH4dLPTsZ
 GuhIOmBYJlr+kIaCQI12YlK49VkeJrO/FiCJNsnag6ajQXM81Mu6+asnz g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="382067493"
X-IronPort-AV: E=Sophos;i="6.03,185,1694761200"; d="scan'208";a="382067493"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2023 13:06:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="865420919"
X-IronPort-AV: E=Sophos;i="6.03,185,1694761200"; d="scan'208";a="865420919"
Received: from jgodoyde-mobl1.amr.corp.intel.com (HELO
 gjsousa-mobl2.intel.com) ([10.255.38.186])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2023 13:06:11 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Sep 2023 17:05:40 -0300
Message-ID: <20230928200540.107857-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI] PR for new GuC v70.12.0 for MTL
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

The following changes since commit 8b855f3797e6b1d207b7a2b8dae0e9913f907e5b:

  Merge branch 'main' into 'main' (2023-09-26 18:31:16 +0000)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware guc_v70.12.0_mtl

for you to fetch changes up to 542cae8661806db49e7d52172f0d1cab6ce641cf:

  i915: Add GuC v70.12.0 for MTL (2023-09-28 16:55:10 -0300)

----------------------------------------------------------------
Ewins, Jon (1):
      i915: Add GuC v70.12.0 for MTL

 WHENCE              |   2 +-
 i915/mtl_guc_70.bin | Bin 308032 -> 365376 bytes
 2 files changed, 1 insertion(+), 1 deletion(-)
