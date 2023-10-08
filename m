Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BBBFA7BCFBA
	for <lists+intel-gfx@lfdr.de>; Sun,  8 Oct 2023 21:06:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CAAC10E00F;
	Sun,  8 Oct 2023 19:06:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 811A310E00F
 for <intel-gfx@lists.freedesktop.org>; Sun,  8 Oct 2023 19:06:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696792006; x=1728328006;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=TNrkCjY6zXlkFDMc8LRjO/9bxraHHqhRW7E0cqlmgxA=;
 b=ID2IWFEvh9vguVhZApvxc3PHvc1ByHf3JSUfJiFKRNY7t2kBJfAGMRzK
 EKHttZmpwd7ld9wNpn+WpXRGbqGUcdbXbuUCviE7gjbs0TiTfjn9cCvZi
 fcUCMQHWRPwcQE5kdRH5v6h8N56UHVYeI/dgfFmLE89kw21NSioN+DTJ+
 JqhgYIKOraEbKTkJ3E6QoJApKs4g4ccYROo4I7dzLHgrF0E2jNKC559Dh
 QYbQDkMUUiTZ1rntxkA3lEHHq7ZugooobCn+7KJgjNZB7TyUoZcrZuGeg
 im/x/uFoQBBLCQa+7ZqLEC5YAdpz8IwJQvVvwVBrNJapBLodt9s+sc0u+ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10857"; a="386868781"
X-IronPort-AV: E=Sophos;i="6.03,207,1694761200"; d="scan'208";a="386868781"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2023 12:06:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10857"; a="818613730"
X-IronPort-AV: E=Sophos;i="6.03,207,1694761200"; d="scan'208";a="818613730"
Received: from bbhinojo-mobl1.amr.corp.intel.com (HELO
 gjsousa-mobl2.intel.com) ([10.255.39.135])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2023 12:06:33 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  8 Oct 2023 16:05:48 -0300
Message-ID: <20231008190548.8083-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI] PR for new GuC v70.13.0 for DG2, TGL, ADL-P and MTL
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

The following changes since commit 7727f7e3b3358713c7c91c64a835e80c331a6b8b:

  Merge branch 'patch-1696561325' into 'main' (2023-10-06 03:04:57 +0000)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware guc_v70.13.0_dg2_tgl_adlp_mtl

for you to fetch changes up to 0a50f717436fa5d54e32a1c551a4f5f359428d1a:

  i915: Add GuC v70.13.0 for DG2, TGL, ADL-P and MTL (2023-10-08 15:55:34 -0300)

----------------------------------------------------------------
John Harrison (1):
      i915: Add GuC v70.13.0 for DG2, TGL, ADL-P and MTL

 WHENCE               |   8 ++++----
 i915/adlp_guc_70.bin | Bin 297984 -> 342656 bytes
 i915/dg2_guc_70.bin  | Bin 385856 -> 443200 bytes
 i915/mtl_guc_70.bin  | Bin 308032 -> 365376 bytes
 i915/tgl_guc_70.bin  | Bin 285888 -> 330176 bytes
 5 files changed, 4 insertions(+), 4 deletions(-)
