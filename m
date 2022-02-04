Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B08C54A99E7
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Feb 2022 14:25:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E9BA10ED9B;
	Fri,  4 Feb 2022 13:25:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com
 [IPv6:2a00:1450:4864:20::529])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90FB910EE75;
 Fri,  4 Feb 2022 10:04:38 +0000 (UTC)
Received: by mail-ed1-x529.google.com with SMTP id l5so12041236edv.3;
 Fri, 04 Feb 2022 02:04:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RN0YEy0Xp/dnIRm1BZPhayCGRmkyCaUBn+FhNu63VS8=;
 b=V3B/dN4F6Ksb5c1CTTCatJyJYVWzcKGc04S77l4wnC6MdySHPtBvrMWjw45yXOi4w9
 g0Q/ftnt2D3ZHMHKqbPEHApl+8F5iGwrQy4uiNL4i9hfxb1Wp1EY+XJnbDR+H+IYFlGO
 SJwhkPXEdB+gVorR1oO3/+HloLYdztJx/UjZaaZonG+U+gmlvmz5hONBZ/o/X+qmUG1M
 Nt9ZYehwFmaE3FkEHfMHvtJ9FPnBWtzC7fK2NQ42w5MS3JRPJuLl8FB4FOu2/ppwCLZ9
 KePiJVpa+ZpB6pxFhJs3hI9OU4UxU5iBr92bSuS44c8RT7cPGpvIF43UxfkqkZeII+Rg
 Xifg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RN0YEy0Xp/dnIRm1BZPhayCGRmkyCaUBn+FhNu63VS8=;
 b=MdtwgcxAaWJU9BRgf5bMlMwxK4iGaBRdNCWsS+1/AYR8EnZG8ggD42ltWHfBSJz8mq
 Jsx1tUmzhHzzrRHMtRhoZtV+Avmkog6Ai5BjDNzmDX1msDCVf6a4ZnUKYAGfhgVRLJSG
 b/f4ajH0f3Czo1pDjmvq4/9LJNY+laMaP/bNXB7sgTrS2ywKdflJyCtjPlG5NsJeOLop
 5ranZTsTNqQlmuLRo2zYLBpmjj0TG3dUmPuw4Cm5NHOFg7/pLcxcQzV0kqUmUI2SMm7h
 J+9U8s3Qf58EvEUCNQOCUOJiRkR3VXUcQaeREwbFBIOkHW54w7mdZqlZm/k3U2h2lFdL
 3Z/A==
X-Gm-Message-State: AOAM533vQX0VrHbogiWPjXaH9ufJhC1BDGkK3ONKDLUGlEC1NpTWn3QH
 D6WOWKePaD8fpW/CNECb9uM=
X-Google-Smtp-Source: ABdhPJyL6Woi68nOxF05GloDFvRLvlG+3RLTwFTV0uHPKuFxsIGEiUocj+Z6Wf5HQ/GhLFOt/wQmEg==
X-Received: by 2002:a50:ef16:: with SMTP id m22mr2267171eds.340.1643969076911; 
 Fri, 04 Feb 2022 02:04:36 -0800 (PST)
Received: from able.fritz.box (p57b0bff8.dip0.t-ipconnect.de. [87.176.191.248])
 by smtp.gmail.com with ESMTPSA id z10sm633943edl.54.2022.02.04.02.04.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Feb 2022 02:04:36 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: sumit.semwal@linaro.org, thomas.hellstrom@linux.intel.com,
 daniel.vetter@ffwll.ch, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Fri,  4 Feb 2022 11:04:23 +0100
Message-Id: <20220204100429.2049-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Fri, 04 Feb 2022 13:25:44 +0000
Subject: [Intel-gfx] Add warning for nesting dma_fence containers
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi everyone,

Since some operations can then lead to recursive handling nesting
dma_fence containers into each other is only allowed under some
restrictions.

dma_fence_array containers can be attached to dma_fence_chain
containers and dma_fence_chain containers by chaining them together.

In all other cases the individual fences should be extracted with
the appropriate iterators and added to the new containers
individually.

I've separated the i915 cleanup from this change since it is
generally a different functionality and the build bots complained
about some issues with those patches.

Most patches are already reviewd, but especially the first one still
needs an rb tag.

Please review and comment,
Christian.


