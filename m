Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AE647A09AD
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Sep 2023 17:49:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 682EF10E143;
	Thu, 14 Sep 2023 15:49:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32FE010E143
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Sep 2023 15:49:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694706542; x=1726242542;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=p1/ujPKzutcHZHhAj38lOaC14m8NrDLzxb3DzET2/A0=;
 b=EXOvJYr9USPdih7/p9zPUAFVi8e8V6QqvpYdinYMukUGMzpPv7EBPJfL
 u3ZYRVsl3lHxRwaztyRzwy+YZcFxX05ZPd4fXwfIj4raT4vEeIVnRXeiy
 ClGU8JG7gpFE2yAmQUadub3ODunBzCXF1iaXrdHkbB06fIAhf7ZJbIskc
 zSy60rPCyLbU/bEDaioDxXoWV2NfdAyAXVvU1+M8XQ8aDqR5CUXmEmAs+
 /N0icQBQYkjmKmS48EvWKmBqkmdnKa8Hjx40Z7ic0y1ynV6A/Rj6XnYDj
 oe4fnw8MHIvaZMRM+XXbFnyHaZBsQxGDtCOi/R5g8xwUjR4FTJWVIL4EQ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="381704110"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="381704110"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 08:43:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="737943936"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="737943936"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 08:42:37 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: linux-firmware@kernel.org
Date: Thu, 14 Sep 2023 08:42:25 -0700
Message-ID: <20230914154225.2821571-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] PR for HuC v8.5.4 for MTL
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

The following changes since commit dfa11466cf000120d1551146fd5bf78c44941eda:

  Merge branch 'main' into 'main' (2023-09-07 11:36:57 +0000)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware mtl_huc_8.5.4

for you to fetch changes up to a5dbe400f776b0dc2d0a402ba76b4c16c231b38e:

  i915: update MTL HuC to version 8.5.4 (2023-09-14 08:34:08 -0700)

----------------------------------------------------------------
Daniele Ceraolo Spurio (1):
      i915: update MTL HuC to version 8.5.4

 WHENCE               |   2 +-
 i915/mtl_huc_gsc.bin | Bin 569344 -> 561152 bytes
 2 files changed, 1 insertion(+), 1 deletion(-)
