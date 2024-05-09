Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 050BD8C159F
	for <lists+intel-gfx@lfdr.de>; Thu,  9 May 2024 21:47:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41E0F10F1B6;
	Thu,  9 May 2024 19:47:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YhPOQkkY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D13A110F1B6;
 Thu,  9 May 2024 19:47:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715284071; x=1746820071;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=IVTabDqpuPhlwLB7TiGgxA1XuYB9/hb1y6nnVfyEuSM=;
 b=YhPOQkkYYUpShx/KKr47g1u3enjFqAyFKXCFNS1B5Jcc2ZNGDacFOw4F
 o94e1R8Y5ZhR0VmvciFemYvwP26cmysL5MWqB8abWHDeaEfDdRwRZiZKi
 HaWTNvkmLMic9H4SvuJwNuM39EzHAP+vQk9Z9LXrY8oRxTwV8rruYZyZq
 +lP6J7b8O8bWALyZORWbUEWDrwL5Tx8085WIFGkX7l7fsBmFZEX+I2Et+
 p0T585DlkXXyrQgp8zeTsj6U3ioc649DM4G2At+gXAaAXzlBOk/E9jdPn
 65kp3eanTvd3udsfQbUCGQiLW/OAR7VOe1n9/GGw7WyJ2fVU3tVoDsOeO Q==;
X-CSE-ConnectionGUID: D+cmHgSrTDq5/490T5NJKA==
X-CSE-MsgGUID: VPRl55MPQlKKTeUtgZpGxA==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="11080858"
X-IronPort-AV: E=Sophos;i="6.08,148,1712646000"; d="scan'208";a="11080858"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2024 12:47:50 -0700
X-CSE-ConnectionGUID: 1rKGOTZuTsitbS8lEH2iNQ==
X-CSE-MsgGUID: JvF0khoESYiO+QR7TLex0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,148,1712646000"; d="scan'208";a="29457818"
Received: from bjrankin-mobl3.amr.corp.intel.com (HELO
 gjsousa-mobl2.intel.com) ([10.124.223.58])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2024 12:47:49 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: linux-firmware@kernel.org
Cc: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: PR for BMG DMC v2.06
Date: Thu,  9 May 2024 16:47:40 -0300
Message-ID: <20240509194740.358934-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.45.0
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

The following changes since commit 93f329774542b9b7d57abb18ea8b6542f2d8feac:

  Merge branch 'robot/pr-0-1709214990' into 'main' (2024-02-29 14:10:53 +0000)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/firmware.git tags/intel-2024-05-09

for you to fetch changes up to 8724b227b8999e11cf89601fec9f6f80795d8fa8:

  i915: Add BMG DMC v2.06 (2024-05-09 15:10:44 -0300)

----------------------------------------------------------------
Intel DRM firmware intel-2024-05-09

----------------------------------------------------------------
Daniele Ceraolo Spurio (1):
      i915: Add DG2 HuC 7.10.15

Dnyaneshwar Bhadane (1):
      i915: Update Xe2LPD DMC to v2.20

Gustavo Sousa (1):
      i915: Add BMG DMC v2.06

 WHENCE               |   7 +++++--
 i915/bmg_dmc.bin     | Bin 0 -> 45964 bytes
 i915/dg2_huc_gsc.bin | Bin 622592 -> 630784 bytes
 i915/xe2lpd_dmc.bin  | Bin 61208 -> 59284 bytes
 4 files changed, 5 insertions(+), 2 deletions(-)
 create mode 100644 i915/bmg_dmc.bin
 mode change 100755 => 100644 i915/dg2_huc_gsc.bin
