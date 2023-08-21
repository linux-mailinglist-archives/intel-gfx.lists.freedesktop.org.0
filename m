Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC72F7834BF
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Aug 2023 23:16:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E176610E2B3;
	Mon, 21 Aug 2023 21:16:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D475910E2B3
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Aug 2023 21:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692652585; x=1724188585;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4iLwxg5lTQXmK4R+O1ip9pOJ++zE/rBhMDAMdRe8oTI=;
 b=QVGgqaiJ0VP2X8DJvZVdCNtig8S+tf+mB9r3pK3QsZ5HrZ5kCqdu6d71
 AjRfHI3v7FwTmzoX9tB2vk6t3qXCnhRrRLspx+qFufdxicTlHnoqGDFms
 Rf1hUH1qkE/QZkT/qvyTHoxWvYkLlbPWWVxOocl5Pc4GoDfVvZETpecaO
 atLYVJwPo6WmBk/1NzlDGfmhdA5/TsyRKiQFeUh/0bKVTaJvWMpkW3Nlc
 lSGuz3vuQjmxssj30h3fi5Kxn0qWO71C8uiFx8s5uQIQeuexUewvsmNnz
 9qlJNzOkpqh5RHEywud1cFPaatNs1PycckLUv84+zPMujNPzP1hNIEdv/ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="440075107"
X-IronPort-AV: E=Sophos;i="6.01,191,1684825200"; d="scan'208";a="440075107"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 14:16:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="850332369"
X-IronPort-AV: E=Sophos;i="6.01,191,1684825200"; d="scan'208";a="850332369"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 14:16:24 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 21 Aug 2023 14:16:18 -0700
Message-ID: <20230821211618.1648088-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI] PR for GSC FW release 102.0.0.1655 for MTL
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

The following changes since commit 0e048b061bde79ad735c7b7b5161ee1bd3400150:

  Merge branch 'for-upstream' of https://github.com/CirrusLogic/linux-firmware (2023-08-14 13:03:41 -0400)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware mtl_gsc_1655

for you to fetch changes up to 81caac98eda16944446fa057191ee969c377154a:

  i915: add GSC 102.0.0.1655 for MTL (2023-08-21 14:13:11 -0700)

----------------------------------------------------------------
Daniele Ceraolo Spurio (1):
      i915: add GSC 102.0.0.1655 for MTL

 WHENCE             |   3 +++
 i915/mtl_gsc_1.bin | Bin 0 -> 1142784 bytes
 2 files changed, 3 insertions(+)
 create mode 100755 i915/mtl_gsc_1.bin
