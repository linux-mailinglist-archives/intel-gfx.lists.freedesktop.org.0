Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 54BB9724938
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jun 2023 18:33:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D10B210E37B;
	Tue,  6 Jun 2023 16:33:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4FE310E37B
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Jun 2023 16:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686069233; x=1717605233;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=P1q6rVmOF/6IGNt1dQ0OrhY1sUDstftmwkOwbaFR67I=;
 b=e1KeXVBRpa/MqEJn9rTpJXB5kmrhVZW+2vlRzNH9vB4n34Xg9Kd9JTla
 8eZXMoSXZTkq0LaRLHpphN1HyFvZlIXKclAlw+Z7/epDEEEV4wEuWgXIX
 leJ6acyDtxWscLOLc9pEbUdXb5wIeqkkZVuQgZWSI+MtbCiarNL+lobIz
 QetrPSlPnD/kX48vyw3UN3T2tSAFm8J6hHo1+XeG8WLJgpQxZSuwTGSMH
 RXb3UnfuhyqZj0hXG6WuaLqMSkIpaecT3dBnHMg/7fjfP3acHS4sSzr1W
 pMhQR4YRupkE0xvgsXYKDKgK02b4H/Q9LYc/nTfwB0kBDm+JeyXmPbwRu w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="336356327"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="336356327"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 09:33:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="774187029"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="774187029"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 09:33:53 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: linux-firmware@kernel.org
Date: Tue,  6 Jun 2023 09:33:45 -0700
Message-Id: <20230606163345.2058790-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] PR for HuC v8.5.0 for MTL
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

The following changes since commit fc90c59beebd551dde5fe5eb3e76d36651ba08fb:

  Merge branch 'db410c' of https://github.com/lumag/linux-firmware (2023-05-31 07:35:15 -0400)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware mtl_huc_v8.5.0

for you to fetch changes up to 5de33fb45cee8d83abfe17e9e85bd74d51a2653f:

  i915: Add HuC v8.5.0 for MTL (2023-06-06 09:24:40 -0700)

----------------------------------------------------------------
Daniele Ceraolo Spurio (1):
      i915: Add HuC v8.5.0 for MTL

 WHENCE               |   3 +++
 i915/mtl_huc_gsc.bin | Bin 0 -> 565248 bytes
 2 files changed, 3 insertions(+)
 create mode 100755 i915/mtl_huc_gsc.bin
