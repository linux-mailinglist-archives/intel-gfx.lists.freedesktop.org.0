Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0884330818
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Mar 2021 07:28:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 262D46E817;
	Mon,  8 Mar 2021 06:28:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6B276E817
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Mar 2021 06:28:45 +0000 (UTC)
IronPort-SDR: qIFP0JvVpfsgaS6Wr+nJ6QqLdtvOWvagWHA0vUOmGPVjwqow4wTTd6nzRnOB2vxvAK2x1vS9/i
 cd4WLkKj8HGw==
X-IronPort-AV: E=McAfee;i="6000,8403,9916"; a="249354870"
X-IronPort-AV: E=Sophos;i="5.81,231,1610438400"; d="scan'208";a="249354870"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2021 22:28:35 -0800
IronPort-SDR: Z+T8H/+nt6auK0aiH5DmMiNNG5QJqF/6TBXwMiiTcPDEghr1OO/lrpFSWg7ozgEpJ4lR6q7SiT
 bv7qzC2pGVNw==
X-IronPort-AV: E=Sophos;i="5.81,231,1610438400"; d="scan'208";a="409182028"
Received: from twinkler-lnx.jer.intel.com ([10.12.91.138])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2021 22:28:31 -0800
From: Tomas Winkler <tomas.winkler@intel.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Date: Mon,  8 Mar 2021 08:27:47 +0200
Message-Id: <20210308062748.208017-10-tomas.winkler@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210308062748.208017-1-tomas.winkler@intel.com>
References: <20210308062748.208017-1-tomas.winkler@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH 09/10 v2] MAINTAINERS: add Intel i915 spi
 driver entry
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
Cc: linux-mtd@lists.infradead.org, intel-gfx@lists.freedesktop.org,
 Tomas Winkler <tomas.winkler@intel.com>,
 Alexander Usyskin <alexander.usyskin@intel.com>,
 Vitaly Lubart <vitaly.lubart@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add entry for Intel i915 spi driver.

Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
---
V2:
1. New in the series.

 MAINTAINERS | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 23f3c02493a8..dfe46844bbef 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -8992,6 +8992,17 @@ L:	platform-driver-x86@vger.kernel.org
 S:	Maintained
 F:	drivers/platform/x86/intel-hid.c
 
+INTEL I915 SPI DRIVER
+M:	Tomas Winkler <tomas.winkler@intel.com>
+L:	intel-gfx@lists.freedesktop.org
+S:	Supported
+W:	https://01.org/linuxgraphics/
+Q:	http://patchwork.freedesktop.org/project/intel-gfx/
+B:	https://gitlab.freedesktop.org/drm/intel/-/wikis/How-to-file-i915-bugs
+C:	irc://chat.freenode.net/intel-gfx
+T:	git git://anongit.freedesktop.org/drm-intel
+F:	drivers/gpu/drm/i915/spi/*
+
 INTEL I/OAT DMA DRIVER
 M:	Dave Jiang <dave.jiang@intel.com>
 R:	Dan Williams <dan.j.williams@intel.com>
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
