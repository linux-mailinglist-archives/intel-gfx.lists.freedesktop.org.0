Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 61C235B833A
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Sep 2022 10:46:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 256CF10E8C7;
	Wed, 14 Sep 2022 08:46:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D68510E8BA
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Sep 2022 08:46:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10469"; a="362337703"
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="362337703"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 01:46:32 -0700
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="678955805"
Received: from dbrayfor-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.32.164])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 01:46:31 -0700
Resent-Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7,
 02160 Espoo
Resent-To: intel-gfx@lists.freedesktop.org
Resent-From: Jani Nikula <jani.nikula@intel.com>
Resent-Date: Wed, 14 Sep 2022 11:46:26 +0300
Resent-Message-ID: <87k0662vj1.fsf@intel.com>
X-Original-To: jani.nikula@linux.intel.com
Received: from linux.intel.com [10.54.29.200]
 by jnikula-mobl4.ger.corp.intel.com with IMAP (fetchmail-6.4.29)
 for <jani@localhost> (single-drop); Wed, 14 Sep 2022 00:05:52 +0300 (EEST)
Received: from orsmga001.jf.intel.com (orsmga001.jf.intel.com [10.7.209.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id D700B580C37
 for <jani.nikula@linux.intel.com>; Tue, 13 Sep 2022 14:04:13 -0700 (PDT)
X-IronPort-AV: E=McAfee;i="6500,9779,10469"; a="649813518"
X-IronPort-AV: E=Sophos;i="5.93,313,1654585200"; d="scan'208";a="649813518"
Received: from orsmga102-1.jf.intel.com (HELO mga09.intel.com) ([10.7.208.27])
 by orsmga001-1.jf.intel.com with ESMTP; 13 Sep 2022 14:04:13 -0700
Authentication-Results: mtab.intel.com; spf=None smtp.pra=nhuck@google.com;
 spf=Pass
 smtp.mailfrom=3Te4gYwUKC8w5zCu2y66y3w.u641s50.502C3s305CF.05Bw3.u64@flex--nhuck.bounces.google.com;
 spf=None smtp.helo=postmaster@mail-yb1-f202.google.com; dkim=pass
 (signature verified) header.i=@google.com; dmarc=pass (p=reject dis=none)
 d=google.com
IronPort-SDR: 6320ee4f_id3ntU8XghT9+UJMkZN3kFTgA1PDj3DVVlqMvJ28AOM+2o1
 y3aWnmj3GgCzSzooG9UNAAgG4YMRQb7xUHsDOPQ==
IronPort-Data: A9a23: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
IronPort-HdrOrdr: A9a23:J2cfWK/R3YYKCEfS2a5uk+DbI+orL9Y04lQ7vn2ZhyYlFfBw9v
 re+sjzsCWftN9/YhAdcLy7Sc29qBHnhPxICPgqXYtKNTOO0ACVxepZnO7fKv7bdxEWNNQx6U
 6tScdD4aXLfDtHZA/BjjWFLw==
X-IronPort-AV: E=McAfee;i="6500,9779,10469"; a="299053727"
X-IronPort-AV: E=Sophos;i="5.93,313,1654585200"; d="scan'208";a="299053727"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from mail-yb1-f202.google.com ([209.85.219.202])
 by mtab.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Sep 2022
 13:55:43 -0700
Received: by mail-yb1-f202.google.com with SMTP id
 k13-20020a056902024d00b0066fa7f50b97so11060365ybs.6
 for <jani.nikula@linux.intel.com>; Tue, 13 Sep 2022 13:55:42 -0700
 (PDT)
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
 b=CWUDNNEHmIkR1xIDomU5tbXozjvCyDuYM2xs516gHYlOHsrOXyNl1Q2j6X5u0Gm/GU
 5/HeaP/FofuSmv/YGrAJx0K2GUx9NHXYo9anznTkPeoWfaTw7fhx/pwRMbhMbN/V4MUy
 ZsvJ7XljKjs2Xfy3SOdC7W6TI3p5KyLzvK4+nRP+W3I6FlJ+2qsXWQnCWVFJVWvj04UB
 Vf8r3X5TOj3DGYuuD3Fqz13DMb3ytE7teQhLiEtpZVc0Xvw4eoHaeYti/fae28168fO9
 hy4tlUKVN1DXUBFO30KcYlfQiM4Chu8wYNmBBpc12B9ieHdeZmFAhRo3Um+4BDrUznGs
 C3xQ==
X-Gm-Message-State: ACgBeo3LVnt2fifwa2gRzTIcUSMtWrSpBkel36a776POg8U4SBAXKmK8
 LeNAy3esf4UJdXOMjE/0rFT8zM9X5A==
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

