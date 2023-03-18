Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 558056BFA87
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Mar 2023 14:46:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5F2B10E10A;
	Sat, 18 Mar 2023 13:46:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC80310E464
 for <intel-gfx@lists.freedesktop.org>; Sat, 18 Mar 2023 13:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679147165; x=1710683165;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zMaDmsrmkqoMrk/8OHZAqboMICk/ScCblpQSVvfXlZ0=;
 b=kGFUIpxiBosWWGTnBGDGYJ+2j7UUuS3zYGF5XOjij7rO4o3Lblrh5rfJ
 FcyTDRRon4CdO+ETm45/bi2ARGpEZsro+jec++ukqNZ8G7Kj0WeSxDx4u
 5rBzyni1puzIVr3sUPxV9rR9fMSJKOMf649z6w8tJUyIHSxatWx8fA03F
 9zuNLZXQkt1v/loK8Fkx4aGHvnfs7ANgJ/ci33gtMbnV9HKdFtBKCzxTE
 mS23Bf/qMjO1c00jdona8jEDvqoaQdf4SlxDR5llAUohVb8FyXIEHO+IK
 XU+L0fj9bJ1WkaCZ4Js6M8ONJ5u0HU2XC4T5jFyDLUYfZcGekWlIkXnl3 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="326798809"
X-IronPort-AV: E=Sophos;i="5.98,271,1673942400"; d="scan'208";a="326798809"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2023 06:46:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="823967828"
X-IronPort-AV: E=Sophos;i="5.98,271,1673942400"; d="scan'208";a="823967828"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga001.fm.intel.com with SMTP; 18 Mar 2023 06:46:03 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 18 Mar 2023 15:46:02 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 18 Mar 2023 15:45:43 +0200
Message-Id: <20230318134544.11033-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230318134544.11033-1-ville.syrjala@linux.intel.com>
References: <20230318134544.11033-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH xf86-video-intel 7/8] sna/gen3: Silence compiler
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

../src/sna/kgem_debug_gen3.c:1289:50: warning: ‘%03d’ directive writing between 3 and 10 bytes into a region of size 8 [-Wformat-overflow=]
 1289 |                         sprintf(instr_prefix, "PS%03d", instr);
      |                                                  ^~~~
../src/sna/kgem_debug_gen3.c:1289:47: note: directive argument in the range [0, 1431655764]
 1289 |                         sprintf(instr_prefix, "PS%03d", instr);
      |                                               ^~~~~~~~
../src/sna/kgem_debug_gen3.c:1289:25: note: ‘sprintf’ output between 6 and 13 bytes into a destination of size 10
 1289 |                         sprintf(instr_prefix, "PS%03d", instr);
      |                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The compiler is utterly wrong here of course since 'instr'
will at most be (0x1ff + 2 - 1) / 3 ~= 170 (though the hardware
defined max is actually only 123). But let's bump the buffer
size a little bit to shut the compiler up.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 src/sna/kgem_debug_gen3.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/src/sna/kgem_debug_gen3.c b/src/sna/kgem_debug_gen3.c
index 4a7b1aaaeafa..a52ee61d23f8 100644
--- a/src/sna/kgem_debug_gen3.c
+++ b/src/sna/kgem_debug_gen3.c
@@ -1284,7 +1284,7 @@ gen3_decode_3d_1d(struct kgem *kgem, uint32_t offset)
 		assert(len <= 370);
 		i = 1;
 		for (instr = 0; instr < (len - 1) / 3; instr++) {
-			char instr_prefix[10];
+			char instr_prefix[13];
 
 			sprintf(instr_prefix, "PS%03d", instr);
 			gen3_decode_instruction(data, offset, i, instr_prefix);
-- 
2.39.2

