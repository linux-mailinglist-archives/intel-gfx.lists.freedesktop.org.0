Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D55717A0FF1
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Sep 2023 23:36:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3587910E58B;
	Thu, 14 Sep 2023 21:36:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8915110E58B
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Sep 2023 21:36:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694727389; x=1726263389;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=RVlM7dQ95bQvOYm8u4OUsHenOfUSwQYVYh7FqQXOrB4=;
 b=TXRxeboHiumlzMfgMfl5RJe2hMlJh1oHyISx3OUoRLHS88PTa4+h/Jfy
 S2nAh4yHC9+aY1bWKw1EvY9IC7n/limwmM+S+tLsZoePoxUn8QJdapvHf
 ADdANtgm0D6h9QwmlrI+7Vx3h3SdM6sZ7NaQmsn5KUgTHVHWmDoApkvZX
 Fe2L3WY010OkCa65+8tZG8VX23pTUh23nlAcaTiEZIq+OHGCNXT4vuie/
 LxA9J9DhpX+rOa5ML8A2zLFkjM7vFrkpBOSr+EJXjMmyoHaPO/Eouz3IS
 jdq82F/kwonAJoUoQOEIbrK4eV0xXFdtDLhCR5ZHrp3X+7XewycOMWUP+ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="358497129"
X-IronPort-AV: E=Sophos;i="6.02,147,1688454000"; d="scan'208";a="358497129"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 14:36:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="738055061"
X-IronPort-AV: E=Sophos;i="6.02,147,1688454000"; d="scan'208";a="738055061"
Received: from relo-linux-5.jf.intel.com ([10.165.21.152])
 by orsmga007.jf.intel.com with ESMTP; 14 Sep 2023 14:36:28 -0700
From: John.C.Harrison@Intel.com
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Sep 2023 14:35:30 -0700
Message-ID: <20230914213530.21006-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI] PR for new GuC v70.11.0
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

The following changes since commit dfa11466cf000120d1551146fd5bf78c44941eda:

  Merge branch 'main' into 'main' (2023-09-07 11:36:57 +0000)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware guc_70.11.0

for you to fetch changes up to af0fdbdde5b3e2318aefa4db00115c808a9cfe2d:

  i915: Add GuC v70.11.0 for DG2, ADL-P and MTL (2023-09-14 14:25:18 -0700)

----------------------------------------------------------------
John Harrison (1):
      i915: Add GuC v70.11.0 for DG2, ADL-P and MTL

 WHENCE               |   6 +++---
 i915/adlp_guc_70.bin | Bin 297984 -> 341696 bytes
 i915/dg2_guc_70.bin  | Bin 385856 -> 443200 bytes
 i915/mtl_guc_70.bin  | Bin 308032 -> 365376 bytes
 4 files changed, 3 insertions(+), 3 deletions(-)
