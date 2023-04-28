Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED0556F0FC5
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Apr 2023 02:46:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1634C10E20E;
	Fri, 28 Apr 2023 00:46:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A41FB10E20E
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Apr 2023 00:46:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682642808; x=1714178808;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=PLI9RIxqEdOdzzbqzeuxd8Z21Ar1F7dujif8QJNcFMw=;
 b=CSv4laaWsORjkF4dVhzooTxPTeSFH6XDSF9/P8tlzjF37wR/DNzgjt2V
 Uh+eUBKcaBSFO0gAFetseQRjWdOe9usHvyrDGgpu0J7RMASn6Je3KGL9a
 Tw2iczoOgf+JNOUjTr86nrdtNE3yKVGfXPMwMPGxaRxv+gOCkBBSzFmMN
 5V0NojofRLRsFhoVAZcrnzyR9MJ/HFZ9LtVeUkjmDjsgWuevuTgSq0FuA
 uyb8Jue7cv+ER+f5NBhu0CcY3lDLwJHd8dwtpxsAq6NbtcdLA/DxXddyj
 sEZDWH8T7GYqa+C1ZEJtDw2z3dt9QbSOiYpRHfGnVu9WDxRmrnIzMX906 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="336649833"
X-IronPort-AV: E=Sophos;i="5.99,233,1677571200"; d="scan'208";a="336649833"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2023 17:46:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="806172971"
X-IronPort-AV: E=Sophos;i="5.99,233,1677571200"; d="scan'208";a="806172971"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2023 17:46:46 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Apr 2023 17:46:38 -0700
Message-Id: <20230428004638.4029484-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI] PR for HuC v8.4.5 for MTL
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

The following changes since commit fab149657d8d029c06179dd006b59b2f3594f916:

  Group all Conexant V4L devices together (2023-04-27 09:15:55 -0400)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware mtl_huc_8.4.5

for you to fetch changes up to 2cae62ee3cc08ad2d6271a5664f18462294d62be:

  i915: add HuC v8.4.5 for MTL (2023-04-27 17:39:43 -0700)

----------------------------------------------------------------
Daniele Ceraolo Spurio (1):
      i915: add HuC v8.4.5 for MTL

 WHENCE               |   3 +++
 i915/mtl_huc_gsc.bin | Bin 0 -> 626688 bytes
 2 files changed, 3 insertions(+)
 create mode 100755 i915/mtl_huc_gsc.bin
