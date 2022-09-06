Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F071C5B5B64
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Sep 2022 15:39:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78C6310E519;
	Mon, 12 Sep 2022 13:38:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com
 [IPv6:2a00:1450:4864:20::634])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67FFD10E69B
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Sep 2022 14:29:21 +0000 (UTC)
Received: by mail-ej1-x634.google.com with SMTP id bj12so23643320ejb.13
 for <intel-gfx@lists.freedesktop.org>; Tue, 06 Sep 2022 07:29:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :from:to:cc:subject:date;
 bh=g/TxYFN5refL1JRueXGtS4elzpHjLBYOwN0VGDuiVJU=;
 b=VoHdf7KKaitRS51RJ4vcNT4a3Lb3o6qdHDDoqtwHmSjioy6m1h9UXU08zJFazCFY0g
 GPnLBBm/IflQNUQ8Gf5XP7ZtYaQ2jChtNX+O9SeONIPfoYwsL1isxT6/j/t9NJwa5gNr
 zd2v1ltUpf5W1EXf0qPCfD4FH09qs2mYg+RhjCs4ishB/EsIcOLjZ2FCtVlyXLztz00q
 ZZYNK/Q23vnlr9HsiVNZXAV8XCQD9gcgnXZ9OrLR+q484TDxaXAGgVqtJRWGr+6aVuf4
 a4BBVMj/3fBvyUAiM8DKqmlctxgntPjzkbYmYFJmdpKS9fftWvpLQdpFuiAax+ZWv5W/
 ZOXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :x-gm-message-state:from:to:cc:subject:date;
 bh=g/TxYFN5refL1JRueXGtS4elzpHjLBYOwN0VGDuiVJU=;
 b=oGiExDR+9KB5kpHES+6yB81UOTlHYOkFObune4yyvLbJIlEa1UzEr9KRulpaeLuwFR
 ORjFw1Bx8PvepZ7lfdJnjrbj6OQ7QHryvuhG+BnWtc+uEFyCjfsL2AKs9AzYr1tyJ3dy
 MXNl2/HOxBlMgTYV4WR7oKsC8EDnSfb09pG8fFzeYEH9S1PiDJveR8zubS+NhjXSPy6A
 7RlJJgknZ2OHPG8gzfTJOTD6ugImZrJnWpe7eePp6HYx+9NyURnzN8F/GI/4OIxYHYNh
 raCioYTah+lE4pxWBZkrGi0rmTiSDvVSCFB2btXRolJmUcFKQUYb0yC89Za1XBq84Yfx
 Kfjw==
X-Gm-Message-State: ACgBeo2/BMF+NqPqVMXUns01jHVuGY0f1ITz6zKDTFCNB3qfpIEoNjVL
 gwbyF3eCfmaKP7aMHdD1SJpSslPd2kR8VfeOtEaUmkNkntXg4ZycIHA=
X-Google-Smtp-Source: AA6agR6lgZ1jdli68iZmoLhcV+YPY65rAeqFYHg590bKZ1oVKp9SH55VrOguop1sC+u5e6juVaKG1LnWdlYUublu2f4=
X-Received: by 2002:a17:907:b09:b0:76f:99cc:81cd with SMTP id
 h9-20020a1709070b0900b0076f99cc81cdmr1371710ejl.530.1662474559627; Tue, 06
 Sep 2022 07:29:19 -0700 (PDT)
MIME-Version: 1.0
References: <tencent_E1BBF05904DFB73C478DCD592740AAE0780A@qq.com>
 <166246909164.8880.10585519190282207260@emeril.freedesktop.org>
In-Reply-To: <166246909164.8880.10585519190282207260@emeril.freedesktop.org>
From: Zheng Hacker <hackerzheng666@gmail.com>
Date: Tue, 6 Sep 2022 22:29:07 +0800
Message-ID: <CAJedcCyVV9ENDko36CHYK=QSn4qia59ShJuC3A99FDr1LKy5Fg@mail.gmail.com>
To: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Mon, 12 Sep 2022 13:38:08 +0000
Subject: Re: [Intel-gfx] 
	=?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
	=?utf-8?q?rm/i915/gvt=3A_fix_double-free_bug_in_split=5F2MB=5Fgtt?=
	=?utf-8?q?=5Fentry=2E?=
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

From 18fc95d6a73f0af7e8947a1cb01a3a39f2e61c00 Mon Sep 17 00:00:00 2001
From: xmzyshypnc <1002992920@qq.com>
Date: Sun, 4 Sep 2022 20:20:56 +0800
Subject: [PATCH] drm/i915/gvt: fix double-free bug in split_2MB_gtt_entry.

There is a double-free security bug in split_2MB_gtt_entry.

Here is a calling chain :
ppgtt_populate_spt->ppgtt_populate_shadow_entry->split_2MB_gtt_entry.
If intel_gvt_dma_map_guest_page failed, it will call
ppgtt_invalidate_spt, which will finally call ppgtt_free_spt and
kfree(spt). But the caller does not notice that, and it will call
ppgtt_free_spt again in error path.

Fix this by returning the result of ppgtt_invalidate_spt to split_2MB_gtt_entry.

Signed-off-by: Zheng Wang <1002992920@qq.com>
---
 drivers/gpu/drm/i915/gvt/gtt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gvt/gtt.c b/drivers/gpu/drm/i915/gvt/gtt.c
index ce0eb03709c3..9f14fded8c0c 100644
--- a/drivers/gpu/drm/i915/gvt/gtt.c
+++ b/drivers/gpu/drm/i915/gvt/gtt.c
@@ -1215,7 +1215,7 @@ static int split_2MB_gtt_entry(struct intel_vgpu *vgpu,
        ret = intel_gvt_dma_map_guest_page(vgpu, start_gfn + sub_index,
                           PAGE_SIZE, &dma_addr);
        if (ret) {
-           ppgtt_invalidate_spt(spt);
+           ret = ppgtt_invalidate_spt(spt);
            return ret;
        }
        sub_se.val64 = se->val64;
-- 
2.25.1
