Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9903A7B251F
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Sep 2023 20:20:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB4A910E42B;
	Thu, 28 Sep 2023 18:20:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com
 [IPv6:2a00:1450:4864:20::52d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B49610E671
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Sep 2023 18:20:24 +0000 (UTC)
Received: by mail-ed1-x52d.google.com with SMTP id
 4fb4d7f45d1cf-5230a22cfd1so16559097a12.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Sep 2023 11:20:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=grsecurity.net; s=grsec; t=1695925223; x=1696530023;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=Jd1kqKYgK8ocyQzLc7jitf332inz7rcY2WpObZLICiQ=;
 b=HzzEx7NX/qSSbRIl3Gx+oxfMiOAzoz/d+WjU8HC59gUy5qEEl3XCicSQJmz2yX4yfJ
 XVUy7C5RFiS8QEh85U6XYU1lSYTwL+QxR+OxPuLnY/soVU4rkslfhyzP12R488OLhnKk
 DD+BrrT5RhVuP+SEV90xKcLuLxiDBFTukwFGgI4S4mYxFOknH/uZBQ4+GMB/NUZPR9QI
 FXsUn9U2QPXV2l9gsaxj5YOpkyo06c3es9AGriPcqwvMn9eILf1Afr/6gQ+DDPwb8tNv
 w3qGrVbgcA75r0KkC4kXMmxP3rHvBuBR+EBIub4/IDKlOKpuZoiRYXsDWSJ0q2EAsuRK
 xUNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695925223; x=1696530023;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Jd1kqKYgK8ocyQzLc7jitf332inz7rcY2WpObZLICiQ=;
 b=scxQ9KLjk/P1L/dZQr8Lf2gGFZd34cvQFPJuCV9pxVJ3XllvTtKeTsyddvUXlb4j/S
 WbpNECObQkzlCvfXlbg5wmr/3j3gYwJgdtP7GbJ4ADjmMGX5zGfbw7sGzIrXPzOhuvak
 IREAKboG3l1rBKIwvBQzhg44Vu9WV5YK4/Suq3uzNL7EeSVKJVSgr3WN3WWtccN1Pbrj
 HLksXJVjTfZG+L+ihP973RJARI8LbUNViDHt/3BUkkVaSTR3RNeLGOf3gSTCdpzo3ClG
 gTqd8Zy+C48VkCDplVXkD2ZCBFoknEz5z7/eNZlZTVPkYMC/RKdNABn27Tpl5Ml1gBEJ
 78EQ==
X-Gm-Message-State: AOJu0Yzs34pYqjCSVR1WV5Pewcy0tuc1/hrnfKvgKI8Ni+ytk7OtUVUt
 /MrdWJlNs8yGQwY5yqDCptrdU6hqs83PwWsplRE=
X-Google-Smtp-Source: AGHT+IEwkpKJ5DdU5fonR76CAAJUMPSwjaG+nZuABTGcQmjWEoZv0X2TCr2oZmrf6ciGTQUR23xFsw==
X-Received: by 2002:aa7:c508:0:b0:52f:8ca7:f255 with SMTP id
 o8-20020aa7c508000000b0052f8ca7f255mr2033020edq.37.1695925222936; 
 Thu, 28 Sep 2023 11:20:22 -0700 (PDT)
Received: from x1.fritz.box
 (p200300f6af043200d2a06d439b047d41.dip0.t-ipconnect.de.
 [2003:f6:af04:3200:d2a0:6d43:9b04:7d41])
 by smtp.gmail.com with ESMTPSA id
 g7-20020aa7d1c7000000b0053112d6a40esm10114765edp.82.2023.09.28.11.20.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Sep 2023 11:20:22 -0700 (PDT)
From: Mathias Krause <minipli@grsecurity.net>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Sep 2023 20:20:17 +0200
Message-Id: <20230928182019.10256-1-minipli@grsecurity.net>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/2] drm/i915: fix rb-tree/llist/list
 confusion
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
as the rb tree isn't set up this early during driver initialization.
This triggered a sanity check we have in our grsecurity kernels, fixed
by doing the engine registration earlier (as suggested by Tvrtko) and
giving the type-multiplexed members some more visibility to avoid making
a similar mistake again in the future (patch 2).

Changelog:
v1 -> v2:
- instead of reverting commit 1ec23ed7126e, register engines earlier
  (Tvrtko)

v1: https://lore.kernel.org/intel-gfx/20230905113921.14071-1-minipli@grsecurity.net/

Please apply!

Thanks,
Mathias

Mathias Krause (2):
  drm/i915: Register engines early to avoid type confusion
  drm/i915: Clarify type evolution of uabi_node/uabi_engines

 drivers/gpu/drm/i915/gt/intel_engine_types.h | 10 +++++++++-
 drivers/gpu/drm/i915/gt/intel_engine_user.c  | 17 +++++++----------
 drivers/gpu/drm/i915/i915_drv.h              | 17 ++++++++++++++++-
 drivers/gpu/drm/i915/i915_gem.c              |  9 +++++++--
 4 files changed, 39 insertions(+), 14 deletions(-)

-- 
2.39.2

