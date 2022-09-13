Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBB285BCD30
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Sep 2022 15:29:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A00910E647;
	Mon, 19 Sep 2022 13:29:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com
 [IPv6:2607:f8b0:4864:20::b4a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9C7C10E4BB
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Sep 2022 20:55:42 +0000 (UTC)
Received: by mail-yb1-xb4a.google.com with SMTP id
 q84-20020a25d957000000b006aeb2dba911so8433800ybg.8
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Sep 2022 13:55:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=cc:from:subject:message-id:mime-version:date:from:to:cc:subject
 :date; bh=s33IIyZmc8+UOGDwcegpipUma0relN3TBfpMpfz2BtE=;
 b=RjSvDvpURFWYgxGTp+hsMgMlof5mN8kvxLIrfLqX4X89vJU6vIXFtmx0+5iAbRnMOl
 AmhQI6ePnBrDnOU4psWJxluoIzalZblllUZva2TEr4N95hjhgz8ZGbLOHTFqvjKegQex
 HWb6RVL597rKKcH75a2RB2G/IRszLtafu+XLKFjl5XN0LrxBPn+c8Q69aA2uJCuI/Pre
 OXID5G2XefTpi4prdWtlr5n9LEccAWLjjHsNyMBuF2bFZow0uM/4qIe4sCcbuQskeeTU
 RRC0VCjDJWvklrNi5KxKkgKM/2yq4MoRMOQLvTqdqMcd8Wtu6wIc4NGkOeV8JKsRLtea
 TIhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:from:subject:message-id:mime-version:date:x-gm-message-state
 :from:to:cc:subject:date;
 bh=s33IIyZmc8+UOGDwcegpipUma0relN3TBfpMpfz2BtE=;
 b=Iyt+GQlpsBB5cMpfFznM19I65qaUjfVCcUeeR17AfLKCHEKMwLehhfgaWUwJf/Jy1X
 UFzNznOoumjWpjT1rgiNTGUlDsWcfenKlu4tY3dRsX4GeHgqsZtXs/yxLY6Ltj25xVqv
 b7xFYMXHftK4xpttYQXgrmKQeraAKaG0XsuxKVWd1bJnVuRhTJU67XFKKEKRurgpTE/W
 eDSVzkmMqrhz/yhyBK5a5uSJx+koLIezjjV99TyxrkN+Y3MZ7/1P2q/4LQvmU1igjQVf
 YRuOFhpHNtcY0GyuTHvTRJecsMt/TP2pd14zL5maIj7kWAVTqc4iYDhIH5SyOSYWgbxV
 ZKpA==
X-Gm-Message-State: ACgBeo1tX8uNV2oFKc10/8pm0fBY6L+tiUA/EEOmGqgkwfeZ8KVvvuKU
 fWkMoUeauXebOgdZ5F/HH5as7vmUHw==
X-Google-Smtp-Source: AA6agR5dsFGBClGYLD+8MsGw7ygyHU5aaKZYuov7XnCqBY5RuEfzGEGGFNkCWySIkMRmAQ8phfbVgpv1BQ==
X-Received: from nhuck.c.googlers.com ([fda3:e722:ac3:cc00:14:4d90:c0a8:39cc])
 (user=nhuck job=sendgmr) by 2002:a25:a26a:0:b0:6ae:a723:f721 with
 SMTP id
 b97-20020a25a26a000000b006aea723f721mr15192009ybi.200.1663102541983; Tue, 13
 Sep 2022 13:55:41 -0700 (PDT)
Date: Tue, 13 Sep 2022 13:55:27 -0700
Mime-Version: 1.0
X-Mailer: git-send-email 2.37.2.789.g6183377224-goog
Message-ID: <20220913205531.155046-1-nhuck@google.com>
From: Nathan Huckleberry <nhuck@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Mon, 19 Sep 2022 13:29:09 +0000
Subject: [Intel-gfx] [PATCH] drm/i915: Fix return type of mode_valid
 function hook
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>, llvm@lists.linux.dev,
 Dan Carpenter <error27@gmail.com>, David Airlie <airlied@linux.ie>,
 Tom Rix <trix@redhat.com>, intel-gfx@lists.freedesktop.org,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Nathan Huckleberry <nhuck@google.com>, Nathan Chancellor <nathan@kernel.org>,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

All of the functions used for intel_dvo_dev_ops.mode_valid have a return
type of enum drm_mode_status, but the mode_valid field in the struct
definition has a return type of int.

The mismatched return type breaks forward edge kCFI since the underlying
function definitions do not match the function hook definition.

The return type of the mode_valid field should be changed from int to
enum drm_mode_status.

Reported-by: Dan Carpenter <error27@gmail.com>
Link: https://github.com/ClangBuiltLinux/linux/issues/1703
Cc: llvm@lists.linux.dev
Signed-off-by: Nathan Huckleberry <nhuck@google.com>
---
 drivers/gpu/drm/i915/display/intel_dvo_dev.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dvo_dev.h b/drivers/gpu/drm/i915/display/intel_dvo_dev.h
index d96c3cc46e50..50205f064d93 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo_dev.h
+++ b/drivers/gpu/drm/i915/display/intel_dvo_dev.h
@@ -75,8 +75,8 @@ struct intel_dvo_dev_ops {
 	 *
 	 * \return MODE_OK if the mode is valid, or another MODE_* otherwise.
 	 */
-	int (*mode_valid)(struct intel_dvo_device *dvo,
-			  struct drm_display_mode *mode);
+	enum drm_mode_status (*mode_valid)(struct intel_dvo_device *dvo,
+					   struct drm_display_mode *mode);
 
 	/*
 	 * Callback for preparing mode changes on an output
-- 
2.37.2.789.g6183377224-goog

