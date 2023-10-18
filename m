Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AF557CE757
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Oct 2023 21:08:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01FDB10E43F;
	Wed, 18 Oct 2023 19:08:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDCEE10E45A
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Oct 2023 19:08:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697656080; x=1729192080;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=l4H395Dg6duY9LjNNgMUe8M6E+QyjCmebBYyT/dCyTw=;
 b=lNaxqYHh5a50bSCmGpFI4PzdeKrMOncslM/3vydVFqF6XMH91Yv4Ne2l
 CgmBDvsqtwoVGBn4J/NemB0xz2eN9EbCAZmvzKfyG09U3V/l8QFZyZnv4
 ylW2mT0fwgW7QBK7Qwumsrlryr1bkWjRzdWx3LSNTyUCutrDw40OQ+Edf
 BkQ3vF62LCTRzTS975U9ptersZ6WZlSHTHuibFY/eoGXojjaoqM68P8MS
 r9yFADzG+DE8BLO8idg2IQjEm+rTJSZJumlSURzF+f/sBYsqUf6kGxwe3
 iU+9nkr4EYGSvu7hWcrKoiz4g0utNvgoTG64/d4eOT+0Gn2g3bQ4I0UOJ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="450310708"
X-IronPort-AV: E=Sophos;i="6.03,235,1694761200"; d="scan'208";a="450310708"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2023 12:08:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="827028502"
X-IronPort-AV: E=Sophos;i="6.03,235,1694761200"; d="scan'208";a="827028502"
Received: from relo-linux-5.jf.intel.com ([10.165.21.152])
 by fmsmga004.fm.intel.com with ESMTP; 18 Oct 2023 12:07:59 -0700
From: John.C.Harrison@Intel.com
To: linux-firmware@kernel.org
Date: Wed, 18 Oct 2023 12:07:53 -0700
Message-ID: <20231018190753.2392821-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] PR for new GuC v70.13.1
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

The following changes since commit 7727f7e3b3358713c7c91c64a835e80c331a6b8b:

  Merge branch 'patch-1696561325' into 'main' (2023-10-06 03:04:57 +0000)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware guc_70.13.1

for you to fetch changes up to 44a9510c94ac0334931b6c89dd240ffe5bf1e5fa:

  i915: Add GuC v70.13.1 for DG2, TGL, ADL-P and MTL (2023-10-13 11:34:26 -0700)

----------------------------------------------------------------
John Harrison (1):
      i915: Add GuC v70.13.1 for DG2, TGL, ADL-P and MTL

 WHENCE               |   8 ++++----
 i915/adlp_guc_70.bin | Bin 297984 -> 342848 bytes
 i915/dg2_guc_70.bin  | Bin 385856 -> 443200 bytes
 i915/mtl_guc_70.bin  | Bin 308032 -> 365376 bytes
 i915/tgl_guc_70.bin  | Bin 285888 -> 330304 bytes
 5 files changed, 4 insertions(+), 4 deletions(-)
