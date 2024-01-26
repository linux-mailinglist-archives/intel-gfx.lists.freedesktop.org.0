Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F43483D4D1
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jan 2024 09:43:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17CCF10E6F8;
	Fri, 26 Jan 2024 08:43:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
 [209.85.221.51])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AF0410E1BA
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jan 2024 08:42:55 +0000 (UTC)
Received: by mail-wr1-f51.google.com with SMTP id
 ffacd0b85a97d-33934567777so143648f8f.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jan 2024 00:42:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1706258510; x=1706863310; darn=lists.freedesktop.org;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=FHr39JH9ZAVO5s/Q6TxKvwEModPDg6RBhwecUYh/FLY=;
 b=qt6Ih6Bhp147wXcap46qdr3uBm+zpfbOXwxE+FzVx6rfyjSwyug7jizvnNWMU9B6EJ
 sWH/mqGA63yzT9Fi5SNm/CegDnCn0UDIyKKB+LqAujEq9wV9ezbo/FeQRca1lp/kuq8U
 ICB8C8zruKxSi9arZyn2CGOWXtnaNigCcQmuJAEUZiUQiUDNTpNxaCBoiQbNIq9iYVwe
 d/gpYBaZM+K4fIPeF5RDzzlY8OBMmQzEQrBXAFTqEVkRt1wOdhnWvajjYJEhkLnAt52f
 iE0Z76bQOgmbssCRwX5fja86MPenXbWKhC92qI7T4lUZxJBwUUtIooyPN/Ic/mv8p2CJ
 DQcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706258510; x=1706863310;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=FHr39JH9ZAVO5s/Q6TxKvwEModPDg6RBhwecUYh/FLY=;
 b=RfZUbIIPzS15+6gTZxZzjeLaFa+CAeV6KJDnWk29J4SFxsCAFu1W2kCLf4f56dWK9n
 vbtbsfIhAuqNR/omGyT6tpAcj63F+ZgRnBAHxMECj33rpP6NqVlbfFEZnuBLweDk5aPD
 jlO6jGjlo+RBZvAz2H44cVIyUSK32PFylNy+PP8veJxGWBwakDVPTWs3Pmo95iCcvzfu
 mQBD2DS6jZ+CztFDqUCmFpaFU9ASUozBRgdSyyBSjPD2arG8Qu0IqpHf02lDoWON28W2
 2TtXfSEqk22RCeS//F8l6JNs/4aNcFP6PezNQ7iY199z94lBl83Z3DQ43yoc2Yu7O8AC
 oOEQ==
X-Gm-Message-State: AOJu0Ywy6hsHjC6a3l7/ZS7GAXubskYTa+xj1AAq95XS/XsdtJxveGMj
 OO+iiqGs7At9gyRO8XUXvpIdrpfsMm/eF9zJ50tG3+75nAdb8MYbuuhxp4BsmZE=
X-Google-Smtp-Source: AGHT+IGODQTp1WGBJOYeb5QpU8MHe6FvpWAhmxNfECU8K2SX9RjwK0yxx8LAKL3RZy4pjkFNfgFKVQ==
X-Received: by 2002:adf:e852:0:b0:33a:ddff:7774 with SMTP id
 d18-20020adfe852000000b0033addff7774mr24330wrn.36.1706258510562; 
 Fri, 26 Jan 2024 00:41:50 -0800 (PST)
Received: from localhost ([102.140.209.237]) by smtp.gmail.com with ESMTPSA id
 bt7-20020a056000080700b00337d4ce6ab4sm766097wrb.20.2024.01.26.00.41.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Jan 2024 00:41:50 -0800 (PST)
Date: Fri, 26 Jan 2024 11:41:47 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Zhi Wang <zhi.a.wang@intel.com>
Subject: [PATCH] drm/i915/gvt: Fix uninitialized variable in handle_mmio()
Message-ID: <11957c20-b178-4027-9b0a-e32e9591dd7c@moroto.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
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
Cc: dri-devel@lists.freedesktop.org, intel-gvt-dev@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This code prints the wrong variable in the warning message.  It should
print "i" instead of "info->offset".  On the first iteration "info" is
uninitialized leading to a crash and on subsequent iterations it prints
the previous offset instead of the current one.

Fixes: e0f74ed4634d ("i915/gvt: Separate the MMIO tracking table from GVT-g")
Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
---
 drivers/gpu/drm/i915/gvt/handlers.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index 90f6c1ece57d..efcb00472be2 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -2849,8 +2849,7 @@ static int handle_mmio(struct intel_gvt_mmio_table_iter *iter, u32 offset,
 	for (i = start; i < end; i += 4) {
 		p = intel_gvt_find_mmio_info(gvt, i);
 		if (p) {
-			WARN(1, "dup mmio definition offset %x\n",
-				info->offset);
+			WARN(1, "dup mmio definition offset %x\n", i);
 
 			/* We return -EEXIST here to make GVT-g load fail.
 			 * So duplicated MMIO can be found as soon as
-- 
2.43.0

