Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D244C59FB86
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 15:40:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD4EC14AC69;
	Wed, 24 Aug 2022 13:39:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C68ECB5973
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Aug 2022 13:39:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661348385; x=1692884385;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=r/1ajQtvzMwejumda/nGic7PwSZZVDDeTnyRava4dxU=;
 b=Z2DwWhc1+E41tm974sSENn+emgSCUk0GC1+KBEXbeHxQ+AWGlS1YOIb0
 8gFRGlSd68edkbrUvQwIAMhFQuS+5imvXJrWWZYHvaF7fPvgHYqw5TApr
 QPnq0CdvBOkaScJFbQ3eudYfzswQBhXud4BI8S47lncX5uAkjEpvazoPm
 CV8KgKlOlE0Ctkys/UOuYN+Ebr1Qi0k9Zid83un1maDduF3nQgscnmMUV
 DIjRPBgaWoXYU/3xOCofIUFa3hg82luArvXNSkSwmtaXmtukKbIwnN7+C
 fobiDFmG9S7TM3amLb8Qlhfl2lcdTpjQqtROjSNrSSz87BDZ7RnEPtlNl g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10449"; a="380261322"
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="380261322"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2022 06:39:45 -0700
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="639122473"
Received: from josouza-mobl2.fso.intel.com ([10.230.19.140])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2022 06:39:43 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Aug 2022 06:39:35 -0700
Message-Id: <20220824133935.51560-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Add new ADL-S pci id
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

New PCI id recently added.

BSpec: 53655
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 include/drm/i915_pciids.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
index 278031aa2e848..4a4c190f76984 100644
--- a/include/drm/i915_pciids.h
+++ b/include/drm/i915_pciids.h
@@ -641,6 +641,7 @@
 	INTEL_VGA_DEVICE(0x4682, info), \
 	INTEL_VGA_DEVICE(0x4688, info), \
 	INTEL_VGA_DEVICE(0x468A, info), \
+	INTEL_VGA_DEVICE(0x468B, info), \
 	INTEL_VGA_DEVICE(0x4690, info), \
 	INTEL_VGA_DEVICE(0x4692, info), \
 	INTEL_VGA_DEVICE(0x4693, info)
-- 
2.37.2

