Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8762A7CB04C
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Oct 2023 18:51:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D15A910E226;
	Mon, 16 Oct 2023 16:51:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com
 [IPv6:2607:f8b0:4864:20::62c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20B2310E5E8;
 Fri, 13 Oct 2023 12:14:03 +0000 (UTC)
Received: by mail-pl1-x62c.google.com with SMTP id
 d9443c01a7336-1c9d132d92cso5612835ad.0; 
 Fri, 13 Oct 2023 05:14:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1697199242; x=1697804042; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=X4z+hjgZoqLiz+otFUtzfcX1EPVHUCZR+4Ag5x9f1fQ=;
 b=VwSVLAgETMMmKx534kn8TtMHLpLbyl/hSj0opq91r8fLfBFs5klwuZ55lAQ3xgPcKO
 rAwn5dHs7+2+kFvHCrnjBtw45v/UqtjPeR9AKHI2eSGlo9hGZBvcxWtmn35T9AuLz5wf
 0GJ3ilD9QVhLEMEp6fa729KQ3LDyMnXx0u66Xl8E1Jgm8ETi1ZtTAJQ4lRQv81HFV4M1
 Ijp1f8POmDNFe7Dhy3rmcOdJ3kgp5FN+xlnYryGTDl28wVc5FmA+tmy1Pf8iXSYQu5OX
 WZwdyvxcV7FvA9u7dI0vYNJ7dGBSbyQV/HonO/vsRmACbn7ZdeX5m2iem9vNiIgHHu6p
 csJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697199242; x=1697804042;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=X4z+hjgZoqLiz+otFUtzfcX1EPVHUCZR+4Ag5x9f1fQ=;
 b=RF6e4NFQoQxgIgCD8f22o38Y1oc3O2Kaxurb07HJbCVsez8/zPD/1ytX328gQmsSTL
 AN3a5utKp6tXJcaP1zcqnMAITwMFaDXuXOIzOQjjenJU66kaVDpFE59HU8wwG/gd06PE
 AwC/CaGpb8phIpfjZRewVfalTp/Ap0VBOPWYkAc+BB55+h3ifDr639IkaVdyAOK6uGGP
 fEIQV4JBMCO/Je8FPprMFloKt2HaG93fmMTozpxbw8QDgkzwdU2EAkEPMmHSLdYcGmj4
 RF06syLvZBphTxv28MGQ4JuJML4xM96Gl620BGviUXOM2s7X5JEGY3r/yZApSutMF5iX
 oP2g==
X-Gm-Message-State: AOJu0YxNKdYfDbiq1eAth+fXKMg7bjRuW3TVx1k2wkSEsdZLHAybqFn2
 FHDZ9hZuXUamfmjJqDma5DY=
X-Google-Smtp-Source: AGHT+IEvL0BqKkBivK2O51JqvuzsTo5t+dd4ijMHTK++9Mpa1lZpCfypvnqQ5IeTEfD71vwd34Eezw==
X-Received: by 2002:a17:902:ce84:b0:1c6:9312:187 with SMTP id
 f4-20020a170902ce8400b001c693120187mr29212356plg.3.1697199242587; 
 Fri, 13 Oct 2023 05:14:02 -0700 (PDT)
Received: from localhost.localdomain ([140.116.154.65])
 by smtp.gmail.com with ESMTPSA id
 ja20-20020a170902efd400b001c1f4edfb9csm3747683plb.173.2023.10.13.05.13.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Oct 2023 05:14:01 -0700 (PDT)
From: Kuan-Wei Chiu <visitorckw@gmail.com>
To: ville.syrjala@linux.intel.com, zhenyuw@linux.intel.com,
 zhi.a.wang@intel.com
Date: Fri, 13 Oct 2023 20:13:55 +0800
Message-Id: <20231013121355.2125824-1-visitorckw@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <ZSkdoVcMxKIbXUOW@intel.com>
References: <ZSkdoVcMxKIbXUOW@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 16 Oct 2023 16:51:05 +0000
Subject: [Intel-gfx] [PATCH v2] drm/i915/gvt: Optimize mmio_offset_compare()
 for efficiency
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
Cc: intel-gvt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Kuan-Wei Chiu <visitorckw@gmail.com>,
 dri-devel@lists.freedesktop.org, daniel@ffwll.ch, rodrigo.vivi@intel.com,
 airlied@gmail.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The original code used conditional branching in the mmio_offset_compare
function to compare two values and return -1, 1, or 0 based on the
result. However, the list_sort comparison function only needs results
<0, >0, or =0. This patch optimizes the code to make the comparison
branchless, improving efficiency and reducing code size. This change
reduces the number of comparison operations from 1-2 to a single
subtraction operation, thereby saving the number of instructions.

Signed-off-by: Kuan-Wei Chiu <visitorckw@gmail.com>
---
v1 -> v2:
- Add explicit type cast in case the sizes of u32 and int differ.

 drivers/gpu/drm/i915/gvt/debugfs.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gvt/debugfs.c b/drivers/gpu/drm/i915/gvt/debugfs.c
index baccbf1761b7..d85d8a3b5ae5 100644
--- a/drivers/gpu/drm/i915/gvt/debugfs.c
+++ b/drivers/gpu/drm/i915/gvt/debugfs.c
@@ -48,11 +48,7 @@ static int mmio_offset_compare(void *priv,
 
 	ma = container_of(a, struct diff_mmio, node);
 	mb = container_of(b, struct diff_mmio, node);
-	if (ma->offset < mb->offset)
-		return -1;
-	else if (ma->offset > mb->offset)
-		return 1;
-	return 0;
+	return (int)ma->offset - (int)mb->offset;
 }
 
 static inline int mmio_diff_handler(struct intel_gvt *gvt,
-- 
2.25.1

