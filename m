Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E2D3F6BFA85
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Mar 2023 14:46:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45E6C10E297;
	Sat, 18 Mar 2023 13:46:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBD6010E297
 for <intel-gfx@lists.freedesktop.org>; Sat, 18 Mar 2023 13:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679147159; x=1710683159;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dfbOtKtBMTiPz3YcqploFw4nB8fC4hyFgnmnvE8xOIo=;
 b=iByXhmAd+zBHZ8Anq74HUZZuG9szaXuIVaSHF24S4TY4NJqYkiyHOx5C
 94hSE4iYW2DFxl4ttPe9FggJrVGscLcRtE+VUju5AncGntMti+ELZVLHi
 R2ycXKVl8UXJxYLqRu4cBWzpHrLZ0EVnJsEj2UPd1nLdGRNld2Hx2P5zV
 DGMSN/Pwi/inXSxkgNpcJjdJPKOnLl0CsJjfq9+fKx9QwHUhctZYRqTjO
 CIx03KfNTyYej47ioAN9ZxOVViU5qpSccunGKQTvYzj98/LVUPjm+rYaB
 Kqb/Hjt+ZVlttJ7ajPFY2KNhYT25g74+iNbnoI//uJUXbzBsPM0Iy5z8T A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="326798777"
X-IronPort-AV: E=Sophos;i="5.98,271,1673942400"; d="scan'208";a="326798777"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2023 06:45:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="823967797"
X-IronPort-AV: E=Sophos;i="5.98,271,1673942400"; d="scan'208";a="823967797"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga001.fm.intel.com with SMTP; 18 Mar 2023 06:45:57 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 18 Mar 2023 15:45:56 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 18 Mar 2023 15:45:41 +0200
Message-Id: <20230318134544.11033-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230318134544.11033-1-ville.syrjala@linux.intel.com>
References: <20230318134544.11033-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH xf86-video-intel 5/8] sna/gen2: Silence compiler
 warn
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

../src/sna/kgem_debug_gen2.c:625:5: warning: ‘static’ is not at beginning of declaration [-Wold-style-declaration]
  625 |     const static struct {
      |     ^~~~~

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 src/sna/kgem_debug_gen2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/src/sna/kgem_debug_gen2.c b/src/sna/kgem_debug_gen2.c
index 3f91c29d1967..a4b1b841aef9 100644
--- a/src/sna/kgem_debug_gen2.c
+++ b/src/sna/kgem_debug_gen2.c
@@ -622,7 +622,7 @@ decode_3d_1c(struct kgem *kgem, uint32_t offset)
 
 int kgem_gen2_decode_3d(struct kgem *kgem, uint32_t offset)
 {
-    const static struct {
+    static const struct {
 	uint32_t opcode;
 	int min_len;
 	int max_len;
-- 
2.39.2

