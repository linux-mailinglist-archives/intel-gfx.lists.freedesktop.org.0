Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 80F476BFA86
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Mar 2023 14:46:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB39E10E41A;
	Sat, 18 Mar 2023 13:46:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8FE510E41A
 for <intel-gfx@lists.freedesktop.org>; Sat, 18 Mar 2023 13:46:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679147162; x=1710683162;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5KhXKBzkvrP6UxKsPvN24OLS4pYrik1syKSODesgcNc=;
 b=ZEmV5FQQ8uZYUqBspAWu8XksYKH9S/YkpTIrSPkZjuMZ0PjEPlUC2LKL
 ROrNspCYS7IjLpXo2vQgnVqf0Q11WeWkBakbBqRiaRWm8p7EgxSXDpwjo
 xXJK4wgMyHMUratwbwfcPmwz0dahYZCjID0zgL5rSXxxlSunO9kQDqVvU
 GLnsgvs/hqaWxhiFMKFhH8cPX1m11RStZ6eNKSgC4fUeEIxymeDrX6Whq
 FGsgnC5SSLAkREWoaonu1jYzlRNw5cxoSkbC0+7vrJpPnWZGlEEQRjIwe
 QmA8vHuoiQFDUYXlBTIJHaTBKh8UWbfPIOvq/QnTqvXmel4gL/Nzanqq2 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="326798791"
X-IronPort-AV: E=Sophos;i="5.98,271,1673942400"; d="scan'208";a="326798791"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2023 06:46:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="823967799"
X-IronPort-AV: E=Sophos;i="5.98,271,1673942400"; d="scan'208";a="823967799"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga001.fm.intel.com with SMTP; 18 Mar 2023 06:46:00 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 18 Mar 2023 15:45:59 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 18 Mar 2023 15:45:42 +0200
Message-Id: <20230318134544.11033-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230318134544.11033-1-ville.syrjala@linux.intel.com>
References: <20230318134544.11033-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH xf86-video-intel 6/8] sna/gen3: Fix
 3DSTATE_PIXEL_SHADER_PROGRAM debugs
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

3DSTATE_PIXEL_SHADER_PROGRAM instruction length is
9 bits, not 8 bits.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 src/sna/kgem_debug_gen3.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/src/sna/kgem_debug_gen3.c b/src/sna/kgem_debug_gen3.c
index 1634225c4193..4a7b1aaaeafa 100644
--- a/src/sna/kgem_debug_gen3.c
+++ b/src/sna/kgem_debug_gen3.c
@@ -1279,7 +1279,7 @@ gen3_decode_3d_1d(struct kgem *kgem, uint32_t offset)
 		return len;
 	case 0x05:
 		kgem_debug_print(data, offset, 0, "3DSTATE_PIXEL_SHADER_PROGRAM\n");
-		len = (data[0] & 0x000000ff) + 2;
+		len = (data[0] & 0x000001ff) + 2;
 		assert(((len-1) % 3) == 0);
 		assert(len <= 370);
 		i = 1;
-- 
2.39.2

