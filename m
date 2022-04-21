Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E7E9509FED
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Apr 2022 14:46:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43B2510E166;
	Thu, 21 Apr 2022 12:46:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1034C10E166
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Apr 2022 12:46:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650545205; x=1682081205;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2Qcy3MYE12j7LWMMf73lc+jbB3LvTYXV5HDd9Ly2Gho=;
 b=dCSkl7uoScvpfJTrXGPPEI/owIMv5rd9JJvMDM2XIHs0vBxldDS+1EUd
 mAAzr2IA/jdJeIxEE8syb5o1WLdAQPQwnjdOndZFDbUgs3RZ+2lRpq6AA
 b1J1EhDxz5pO7sFU4XrCtBqQ6i7d7u/nbXbRWh3TLfmkoGg1bIKGSsm8V
 NuTYAHv8QGO572AOQzF6zMvlKHNwrbJRguibWuxEUC8pDEwEKeSmXZGJz
 jAHafH4RdgMjvME55yFj1smiizFX0ZBxsl/m2P7GWPOHJFIb9mYZbiZBc
 tBUuY4qIcEJgEy//HALzARMcXqy0EVI0c+AI9i6S/oD2KcLNYR/1Kvl8H Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10323"; a="244266070"
X-IronPort-AV: E=Sophos;i="5.90,278,1643702400"; d="scan'208";a="244266070"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2022 05:46:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,278,1643702400"; d="scan'208";a="658512852"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by fmsmga002.fm.intel.com with SMTP; 21 Apr 2022 05:46:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 21 Apr 2022 15:46:40 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 21 Apr 2022 15:46:38 +0300
Message-Id: <20220421124640.18467-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH xf86-video-intel 1/3] sna: Don't emit sse2 code
 where not wanted
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

Fix the s/push_options/pop_options/ pragma so that we don't
emit sse2 in the codepaths that run on non-sse2 machines as well.
Seems gcc has become much more aggressive in its sse2 usage
recently and I'm now hitting sse2 instructions in
choose_memcpy_tiled_x() on my non-sse2 P3 machine.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 src/sna/blt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/src/sna/blt.c b/src/sna/blt.c
index afc719f6dc8c..803c5142c726 100644
--- a/src/sna/blt.c
+++ b/src/sna/blt.c
@@ -631,7 +631,7 @@ memcpy_between_tiled_x__swizzle_0__sse2(const void *src, void *dst, int bpp,
 	}
 }
 
-#pragma GCC push_options
+#pragma GCC pop_options
 #endif
 
 fast void
-- 
2.35.1

