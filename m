Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9D737944EB
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Sep 2023 23:05:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B945F10E1E2;
	Wed,  6 Sep 2023 21:05:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA85E10E1E2
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Sep 2023 21:05:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694034304; x=1725570304;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8WSMG/KYjbTfadga1OJx6tG7pPXPqEjBuGwJjm3jC3I=;
 b=W/w3+6rZ2KVXxJZVz9iy3iWbyO2aT+Jv10WEDma0uGS4VJITM7r7pJs/
 9G3NNmbR79B8zcRH9w65niC9vzoUwcKV/JAS2xctfu2p8mRJ8/Nn84QFd
 87J2RF1RXq0GN9TvzNcpQ7O4xsoycpZXR/lpDmXdv6kAL9O3O5oJQQsUg
 9FSISgJPI0DSxTyHa7x9kFJphvHyhTt2szzdg6Ofnb5vALnnCtAOu1YJM
 yFE3kFTRCa1s0vVQ3uLZ3MMohOt5kPLKvuK/1GZ6fgLZiDq1kWJ//kJvP
 6kyOBQDXThQvnolxvufcr5/5nP1v3DhzCwyh7b3LLjkLBecjeIguXE4py A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="367405187"
X-IronPort-AV: E=Sophos;i="6.02,233,1688454000"; d="scan'208";a="367405187"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2023 14:04:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="831850267"
X-IronPort-AV: E=Sophos;i="6.02,233,1688454000"; d="scan'208";a="831850267"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2023 14:04:15 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  6 Sep 2023 14:04:09 -0700
Message-ID: <20230906210409.2674462-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI] PR for MTL HuC v8.5.4
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

The following changes since commit ad03b851816cc6868f27a29732489fc565739368:

  Merge branch 'rb12-fw-v2' into 'main' (2023-09-06 20:40:34 +0000)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware mtl_huc_8.5.4

for you to fetch changes up to 82ef648d026200e40a597ba7ea795b1c97dcebf2:

  i915: update MTL HuC to version 8.5.4 (2023-09-06 13:58:22 -0700)

----------------------------------------------------------------
Daniele Ceraolo Spurio (1):
      i915: update MTL HuC to version 8.5.4

 WHENCE               |   2 +-
 i915/mtl_huc_gsc.bin | Bin 569344 -> 561152 bytes
 2 files changed, 1 insertion(+), 1 deletion(-)
