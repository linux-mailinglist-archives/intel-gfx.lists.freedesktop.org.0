Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DD0A275A0AA
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jul 2023 23:38:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19CAE10E51E;
	Wed, 19 Jul 2023 21:38:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E934010E51E
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jul 2023 21:38:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689802704; x=1721338704;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QRbFeSYooXtFzGeo48Ory5U6zU72VuxZH9XcH8hyRcQ=;
 b=HBnYhdPcudMnZIxoJKHY+vjRUTEVqWdgWPqeVQR7XrGSwRnombI9xnMi
 uG71uR8vyAf4ce4+9skmTz96oeZL1liktFjG58yrOv/AGQ8Pq+zlRNL9F
 P+NG61HXv1Co4vGsxlYPEq/fIXubhsI7hVfNKwIfYAz43HUlS2/mXQBgp
 UlFwDAojjsFzGEBwba5WncSxrpj5ylVWLJLpHhQn3E6d8CPHPDid63fPG
 N+YgBYZP0pfg0Ta7zMQj4tadBG2ZW/I6+5jaEpMHjcNJek3mgEM6vyMXA
 +adp5PWzhBGIyJ6+1+xxlBiW+6nichxW5F7U5OD+CXFW175tI/Fd1OVMl g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="432764015"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="432764015"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2023 14:38:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="837843481"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="837843481"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2023 14:38:24 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Jul 2023 14:38:15 -0700
Message-ID: <20230719213815.179115-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI] PR for MTL and DG2 FW updates
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

This is a unified version of the 3 separate PRs that I've sent in the
last week. If there are no CI issues, this version will be sent to
linux-firmware instead of the other 3.

The following changes since commit d3f66064cf43bd7338a79174bd0ff60c4ecbdf6d:

  Partially revert "amdgpu: DMCUB updates for DCN 3.1.4 and 3.1.5" (2023-07-07 15:24:32 -0400)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware mtl_fws_and_dg2_guc_70.8

for you to fetch changes up to 4e0915c88db08d0f601f3f797b0e63e7ddec0486:

  i915: update DG2 GuC to v70.8.0 (2023-07-19 11:05:35 -0700)

----------------------------------------------------------------
Daniele Ceraolo Spurio (3):
      i915: update to GuC 70.8.0 and HuC 8.5.1 for MTL
      i915: add GSC 102.0.0.1625 for MTL
      i915: update DG2 GuC to v70.8.0

 WHENCE               |   9 ++++++---
 i915/dg2_guc_70.bin  | Bin 369600 -> 385856 bytes
 i915/mtl_gsc_1.bin   | Bin 0 -> 1142784 bytes
 i915/mtl_guc_70.bin  | Bin 303936 -> 308032 bytes
 i915/mtl_huc_gsc.bin | Bin 565248 -> 569344 bytes
 5 files changed, 6 insertions(+), 3 deletions(-)
 create mode 100755 i915/mtl_gsc_1.bin
