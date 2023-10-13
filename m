Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A61C07C8D1F
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Oct 2023 20:38:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 403CA10E629;
	Fri, 13 Oct 2023 18:38:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D24CA10E629
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Oct 2023 18:38:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697222328; x=1728758328;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=l4H395Dg6duY9LjNNgMUe8M6E+QyjCmebBYyT/dCyTw=;
 b=CK7/4h0QGq3HShOD5QVPVolXkOppiXYEEaVNw0NZefQP8kQQPghy9ENi
 UduMe3bIE+INRCGdmkB9vBfqG5frClErMJfpklBta1c4fkRFVEeigRgNK
 I8BDlSoZnEvLLg5vBotsYjq8i5NxY3cGO+y4VzHJab1K3SSrgtxpEwKuI
 AsMCp3RByNSfXIFcfZ+15cZ9Uz1wYXGtdDGP+oFtsjWXIgFOD4oeGeQev
 +yDAiLmpcdM+fw/0wIZN6m5oA1qwZ6RF4EDN3JvyB3SnC2JIX/CfZLBEy
 A0rY7OQu0DoX/A9dcxon6StYhRsV2aV+Q+9ep3Yk9j5Hi7QZ/Iswj6axX w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10862"; a="364602519"
X-IronPort-AV: E=Sophos;i="6.03,222,1694761200"; d="scan'208";a="364602519"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2023 11:38:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10862"; a="820744107"
X-IronPort-AV: E=Sophos;i="6.03,222,1694761200"; d="scan'208";a="820744107"
Received: from relo-linux-5.jf.intel.com ([10.165.21.152])
 by fmsmga008.fm.intel.com with ESMTP; 13 Oct 2023 11:38:48 -0700
From: John.C.Harrison@Intel.com
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Oct 2023 11:38:33 -0700
Message-ID: <20231013183834.3490370-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI] PR for new GuC v70.13.1
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
