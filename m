Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DFB6576D380
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Aug 2023 18:17:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E9E110E552;
	Wed,  2 Aug 2023 16:17:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99D3410E552
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Aug 2023 16:17:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690993023; x=1722529023;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+Bq3ak/FG49tc+oTYduhZk5MR5cVr8WBzv+q6NP8Dj8=;
 b=mL9K1jz0L1iq35/kqw4uWCvPfopmdwJcxGjWnPuSGQX8JZmKtEY4NL3u
 J1gh+JQ1rwOWxKXdozzW6pkRJqM4QeTZGC5ipo/7x7yAiSoQ9IfYNmmDB
 i6NfG4oWO5GH6UcVHrEJPkyH1CzbGlllcLGczEN7TmbowmWadD3fKpphJ
 9eHkApWhnA0veriLePZRfcMFi/jNZsgWDqhk/QfHZw8+A0tGd26DiZ9s9
 oioiz/iWUyNzb2FEfhDA1b4ZgSP+U0+/JQFvXPptJrCIgM4yd8aPSUZ6J
 Wr795olvHyK38ytA4/sOjrvuSKJR54XDCI9PEalNn02zdpj/g2gWAznQB A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10790"; a="367093249"
X-IronPort-AV: E=Sophos;i="6.01,249,1684825200"; d="scan'208";a="367093249"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2023 09:17:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10790"; a="794650795"
X-IronPort-AV: E=Sophos;i="6.01,249,1684825200"; d="scan'208";a="794650795"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2023 09:17:02 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Aug 2023 09:16:54 -0700
Message-ID: <20230802161654.755133-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI] PR for PVC FWs for Xe
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

The following changes since commit 253cc179d849fc82489773b2b553a49858d8725f:

  amdgpu: Update DMCUB for DCN314 & Yellow Carp (2023-07-31 11:22:02 -0400)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware xe_pvc

for you to fetch changes up to 3b72a71413f8ef76c76e1dbff0273ac3b77f68da:

  xe: add PVC guc 70.6.4 and 70.8.0 (2023-07-31 14:16:51 -0700)

----------------------------------------------------------------
Daniele Ceraolo Spurio (1):
      xe: add PVC guc 70.6.4 and 70.8.0

 WHENCE                |  11 +++++++++++
 xe/pvc_guc_70.6.4.bin | Bin 0 -> 525120 bytes
 xe/pvc_guc_70.bin     | Bin 0 -> 533312 bytes
 3 files changed, 11 insertions(+)
 create mode 100644 xe/pvc_guc_70.6.4.bin
 create mode 100644 xe/pvc_guc_70.bin
