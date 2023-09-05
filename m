Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC43E79235F
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Sep 2023 16:14:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE4B610E52A;
	Tue,  5 Sep 2023 14:14:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com
 [IPv6:2a00:1450:4864:20::235])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5C6E10E4C8
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Sep 2023 11:39:37 +0000 (UTC)
Received: by mail-lj1-x235.google.com with SMTP id
 38308e7fff4ca-2b95d5ee18dso40159201fa.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 05 Sep 2023 04:39:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=grsecurity.net; s=grsec; t=1693913975; x=1694518775;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=EgyJ9YyGx2LDc1GPAGms+otoA53IamgUiaCyLCDrdks=;
 b=asIXdk4uwi1LFQ749WqapZmdEht5NxNZ/t9+LVD/H6ZMOvYSKr17eVndcwah0m+8d8
 o+HzDzwEl9rrACIXXjDkM80bw8xajLFAkYF78abHVmaidefiRuaP09AsUTqdMLvlbLk+
 QsAaALkQ3Jf71p0PeuvfPvnYuv2VnSvgol4cZobe5njrr2Qxnio0nJeWDMX3rWFpIXVQ
 YbcXQw2dxu0pQcP+bAN5JSPA/VOmtXnBd7tmXvG36ORAfn0Cr4Ivzekabc8VxqjyXqcf
 J0HsLWJH2ZL4wmyvJGp3FhztsW0lBOYavgXjwuDhpX3L6eG2NS7piykGw0ulEJaIScTr
 k+lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1693913975; x=1694518775;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=EgyJ9YyGx2LDc1GPAGms+otoA53IamgUiaCyLCDrdks=;
 b=aBOP9w8qgGd7iIiN7yVMu2YX1kdwYi+9fhVJtbn2k+QmYQFlQDeMFJ4S3kU9iC5rRN
 4a7Rs3gVFQI+k9NYKmB9PQppE/S7mnw7vXY1ClHmzgR74Ddjcg+Ss+CiaKGdLytOnG1V
 nULWVHChxBE9AKK0Z3x4pzd0EO7SJFwanczqB3hRFcg17Of1OGkAJsVt6TM0aPUJz8sY
 QGUsxwXqo5u6l+F8qvw3UpqvTf1SL1JWr4FJ+wDAnqvORu1xMWrt0B/3R2vl3IRsCHbK
 UjYwQxkTQKRjzNKJP+leI/z+Rp4XFbI1FEP16BxVIfbFu94Ui0Qyk5p5HmI5jAe8BxfN
 M2dA==
X-Gm-Message-State: AOJu0YzimEcDB5bf0QGn7F1nQwP3K+Ryh6n9oGGGxHYauU+alLKqRCBP
 xgTAuxXXZl3vCSVq3tIe72/7gHfwcJzykgAPIDc=
X-Google-Smtp-Source: AGHT+IHswdc2MT17vMvB4RBGn1G7yiE1huZ82l9lX4d2QtJw4lvQj3AdAY24MUAS58dScsIeVSoDXQ==
X-Received: by 2002:ac2:5f46:0:b0:500:8f31:955b with SMTP id
 6-20020ac25f46000000b005008f31955bmr7516303lfz.3.1693913975185; 
 Tue, 05 Sep 2023 04:39:35 -0700 (PDT)
Received: from x1.fritz.box
 (p200300f6af30f500da79246c82d39696.dip0.t-ipconnect.de.
 [2003:f6:af30:f500:da79:246c:82d3:9696])
 by smtp.gmail.com with ESMTPSA id
 w16-20020a056402129000b005255f5735adsm6989036edv.24.2023.09.05.04.39.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Sep 2023 04:39:34 -0700 (PDT)
From: Mathias Krause <minipli@grsecurity.net>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Sep 2023 13:39:19 +0200
Message-Id: <20230905113921.14071-1-minipli@grsecurity.net>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 05 Sep 2023 14:14:03 +0000
Subject: [Intel-gfx] [PATCH 0/2] drm/i915: fix rb-tree/llist/list confusion
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
Cc: Mathias Krause <minipli@grsecurity.net>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Commit 1ec23ed7126e ("drm/i915: Use uabi engines for the default engine
map") introduced a bug regarding engine iteration in default_engines()
as the rb tree isn't set up yet that early during driver initialization.
This triggered a sanity check we have in our grsecurity kernels, fixed
by reverting the offending commit (patch 1) and giving the
type-multiplexed members some more visibility to avoid making a similar
mistake again in the future (patch 2).

Please apply!

Thanks,
Mathias

Mathias Krause (2):
  Revert "drm/i915: Use uabi engines for the default engine map"
  drm/i915: Clarify type evolution of uabi_node/uabi_engines

 drivers/gpu/drm/i915/gem/i915_gem_context.c  |  9 +++++----
 drivers/gpu/drm/i915/gt/intel_engine_types.h | 10 +++++++++-
 drivers/gpu/drm/i915/gt/intel_engine_user.c  | 17 +++++++----------
 drivers/gpu/drm/i915/i915_drv.h              | 17 ++++++++++++++++-
 4 files changed, 37 insertions(+), 16 deletions(-)

-- 
2.39.2

