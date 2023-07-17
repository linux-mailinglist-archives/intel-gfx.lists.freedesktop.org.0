Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6C51756AF8
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jul 2023 19:51:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D38410E296;
	Mon, 17 Jul 2023 17:51:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4AC010E296
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Jul 2023 17:51:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689616268; x=1721152268;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=KCDMgGgVHlSgwsNxibfgf9fUdqyn0+lpPkoA2ProIO8=;
 b=OI+o/P00Mxs0PHboK6bkrYPEPZm9tfFLQ9ignTR468oJwkAoUqWWyK8v
 ZivVcb+i24JQlu6GwN9XA65OWWeZEr87sfGjUwlXqaybBv37v6NqekkjW
 8ljZQYs1lARvIrKoLeQxwF29HZzn3AHK03YIpFFbAlA46EKdETTggb8iP
 mGIpQlR3WlViBTNy1PY2MO3GijQxEvyJkANGW0lfan2024PtfvgieWHFd
 tM6UBysmvBZmLJwNSMngdsazOycGWWeCsGN329+t8mTErJ8vzZvIXiUJy
 juLA45/LMe/jWMIN3qdzE61/OxHhmdtBDFeJ/ZZAdBS49j8DYhNaWcT/H w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="363461612"
X-IronPort-AV: E=Sophos;i="6.01,211,1684825200"; d="scan'208";a="363461612"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2023 10:51:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="866809507"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2023 10:51:08 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 17 Jul 2023 10:50:57 -0700
Message-ID: <20230717175057.70500-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI] PR for GSC 102.0.0.1625 for MTL
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

The following changes since commit d3f66064cf43bd7338a79174bd0ff60c4ecbdf6d:

  Partially revert "amdgpu: DMCUB updates for DCN 3.1.4 and 3.1.5" (2023-07-07 15:24:32 -0400)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware mtl_gsc_102.0.0.1625

for you to fetch changes up to e372271d839f921a147c03d10e8fd882a34c4890:

  i915: add GSC 102.0.0.1625 for MTL (2023-07-17 10:47:13 -0700)

----------------------------------------------------------------
Daniele Ceraolo Spurio (1):
      i915: add GSC 102.0.0.1625 for MTL

 WHENCE             |   3 +++
 i915/mtl_gsc_1.bin | Bin 0 -> 1142784 bytes
 2 files changed, 3 insertions(+)
 create mode 100755 i915/mtl_gsc_1.bin
