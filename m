Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55385846552
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 02:15:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAAE610E6B2;
	Fri,  2 Feb 2024 01:15:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WYTeeB+Q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C43210E0F9;
 Fri,  2 Feb 2024 01:15:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706836533; x=1738372533;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UZToXV4E9WAR+3C0HJwhZKtggco7Yvdbubpp9HQz2qo=;
 b=WYTeeB+Q/LDSaUOj7tKCF9z9LVONbHWAO96f2sEFvzJ+dvJ4p3bE1jx9
 NCh0RUixMpTr+IF2m6fs6smLQkMF2ibHCkJL44GFSTfkEhKT67qXISZWy
 g7IW/87CHxJwbCevV23vU8l+rsFxXdhVf+qtN4VnxunVR2xfKf8Tx/Dzn
 d2eWpudFdPyn9rFZ0h6amJJs/7SGC1l8GrG9F2L9sirW577jyFjgMyTou
 /nBfojEWjlcyTFdqHLP6EEE6qRbor6yIJOnUO0qBR0zmXtsxg8kvjKNaH
 kW5rcDSIVInmLG5PTk2yuR2JEu2lUW/z4nE8vGxKxNqyqWi5KQfQjJlLl Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="17435120"
X-IronPort-AV: E=Sophos;i="6.05,236,1701158400"; d="scan'208";a="17435120"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2024 17:15:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="823087522"
X-IronPort-AV: E=Sophos;i="6.05,236,1701158400"; d="scan'208";a="823087522"
Received: from relo-linux-5.jf.intel.com ([10.165.21.152])
 by orsmga001.jf.intel.com with ESMTP; 01 Feb 2024 17:15:31 -0800
From: John.C.Harrison@Intel.com
To: linux-firmware@kernel.org
Cc: jwboyer@kernel.org, kyle@kernel.org, ben@decadent.org.uk,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: PR for new GuC v70.19.2
Date: Thu,  1 Feb 2024 17:12:49 -0800
Message-ID: <20240202011249.1965081-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

The following changes since commit 1a9518c73c4b54854c9cd8f416fd3b8f8e3456e7:

  Merge branch 'mlimonci/amd-2024-01-30.2' into 'main' (2024-01-30 15:55:30 +0000)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware guc_70.19.2

for you to fetch changes up to 92c06b3c1b4b93ccd9953825cfd4e6ab56e03f16:

  xe: First GuC release for LNL and Xe (2024-01-30 09:23:50 -0800)

----------------------------------------------------------------
John Harrison (2):
      i915: Add GuC v70.19.2 for ADL-P, DG1, DG2, MTL and TGL
      xe: First GuC release for LNL and Xe

 LICENSE.xe           |  39 +++++++++++++++++++++++++++++++++++++++
 WHENCE               |  20 ++++++++++++++------
 i915/adlp_guc_70.bin | Bin 342848 -> 347264 bytes
 i915/dg1_guc_70.bin  | Bin 272512 -> 321088 bytes
 i915/dg2_guc_70.bin  | Bin 443200 -> 406336 bytes
 i915/mtl_guc_70.bin  | Bin 365376 -> 332608 bytes
 i915/tgl_guc_70.bin  | Bin 330304 -> 334784 bytes
 xe/lnl_guc_70.bin    | Bin 0 -> 336704 bytes
 8 files changed, 53 insertions(+), 6 deletions(-)
 create mode 100644 LICENSE.xe
 create mode 100644 xe/lnl_guc_70.bin
