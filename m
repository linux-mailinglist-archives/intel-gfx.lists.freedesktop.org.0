Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A5CCE4C9938
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Mar 2022 00:22:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D36AF10E7D2;
	Tue,  1 Mar 2022 23:22:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-xa2f.google.com (mail-vk1-xa2f.google.com
 [IPv6:2607:f8b0:4864:20::a2f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1EDC10E7D2
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Mar 2022 23:22:41 +0000 (UTC)
Received: by mail-vk1-xa2f.google.com with SMTP id m195so16428vka.5
 for <intel-gfx@lists.freedesktop.org>; Tue, 01 Mar 2022 15:22:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=MPQHz1qy9tWKEUX01tk1m93jc1oVOCglEUqkt2q1XsI=;
 b=CnYAHzBHUhb7Ka/UTSLbIUgmHZCxBEGgYIjMw1U5jNFnmxEmMQSa3O+O2JlwK3bTpn
 hAz37huhcy4rpcmnSnNG9qpD6kRs5YQGLy21HqsSUMgMWq2WyILF1EFXmPwNm2EtN799
 ibzfU5d6ODVZST4T3C+RM4Phc0reu8E847gv5vWXGD9ofx9wpS2+P1acp7+/KtUE/MoK
 gYInmtb/CpIiMsJu49B4vVF2y5BER3CH3eZmtyGnLJo4u5nSr4P3VpICcZUlJHpYa5Rf
 PgG4lnEbzm9fDKa+6/UlIAXRsdD5JFC1IT4EF1C3zkeQNI3e9f976eOY9wpVMjUxBdRw
 U8XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=MPQHz1qy9tWKEUX01tk1m93jc1oVOCglEUqkt2q1XsI=;
 b=yz5YZnSw35lIymWz2GhkC/4uAZTy1Lz6vwXOy67B0r4v94uGZH74yQ5PNnUe59Glf/
 u1DwjEqc4xliiPq2Xb5BpgBjAyMWsPMpOJ5+P0fo9geRRiRp+QEAlek9C09OAry4M06o
 u33WPDSqbhQZu098U3bv/wHR3rShsx9utSbHLcEsOdgSoRFRAY6H74qAoJlQDAP+tjpx
 d3VCPio7B/m1UQtAP9MtdPUf4OCeOBR0YY4BPHNNnabzZo/Ydv52pUeT7MGjypOjNUpt
 am56vQ6jvgrABD8W9zk2X4AjpO61R0Dd5WAgIsyqy2QdwN15sv9gpYwVvoiNBQ/FBkea
 c3cg==
X-Gm-Message-State: AOAM531FYKeMINQEAunDNx0IzraUscNh28tVRfI71LrJwXxxQmQca83W
 ic8d9EMU9pMyxp3rbcTHCGsy5m4Uc4iduC8etk6/FLFTh8k=
X-Google-Smtp-Source: ABdhPJzXA6CDDO6MW9GgJnqtgIK9QThmmNZql9NaG6b+CJ+OwbOA27CpGjn7jFkWVXO+Wc5zeEXWz+rwkwD5PutfNl8=
X-Received: by 2002:a1f:1355:0:b0:333:40fd:64ce with SMTP id
 82-20020a1f1355000000b0033340fd64cemr5824360vkt.17.1646176960937; Tue, 01 Mar
 2022 15:22:40 -0800 (PST)
MIME-Version: 1.0
References: <20220301164629.3814634-1-jim.cromie@gmail.com>
 <164617037032.8599.11195195015630248913@emeril.freedesktop.org>
In-Reply-To: <164617037032.8599.11195195015630248913@emeril.freedesktop.org>
From: jim.cromie@gmail.com
Date: Tue, 1 Mar 2022 16:22:14 -0700
Message-ID: <CAJfuBxwJJ99yUYGrPc_ghSwEzfQKa4QWOig=4S8o1e6938iMwA@mail.gmail.com>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] 
	=?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgdXNl?=
	=?utf-8?q?_dynamic-debug_under_drm=2Edebug_api_=28rev2=29?=
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

On Tue, Mar 1, 2022 at 2:32 PM Patchwork
<patchwork@emeril.freedesktop.org> wrote:
>
> Patch Details
> Series:use dynamic-debug under drm.debug api (rev2)
> URL:https://patchwork.freedesktop.org/series/100289/
> State:failure
> Details:https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22448/index.html
>
> CI Bug Log - changes from CI_DRM_11306 -> Patchwork_22448
>
> Summary
>
> FAILURE
>
> Serious unknown changes coming with Patchwork_22448 absolutely need to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_22448, please notify your bug team to allow them
> to document this new failure mode, which will reduce false positives in CI.
>
> External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22448/index.html
>
> Participating hosts (50 -> 45)
>
> Missing (5): shard-tglu fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus
>
> Possible new issues
>
> Here are the unknown changes that may have been introduced in Patchwork_22448:
>
> IGT changes
>
> Possible regressions
>
> igt@gem_exec_suspend@basic-s3@smem:
>
> fi-cml-u2: PASS -> INCOMPLETE


this one's incomplete cuz of an ext4 boot problem and panic.  unrelated.

<2>[   77.549595] EXT4-fs error (device sda2):
ext4_journal_check_start:83: comm dmesg: Detected aborted journal
<3>[   77.549651] Buffer I/O error on dev sda2, logical block
58228736, lost sync page write
<2>[   77.549684] EXT4-fs error (device sda2):
ext4_journal_check_start:83: comm rs:main Q:Reg: Detected aborted
journal
<3>[   77.550560] JBD2: Error -5 detected when updating journal
superblock for sda2-8.
<3>[   77.553593] Buffer I/O error on dev sda2, logical block 0, lost
sync page write
<3>[   77.554225] EXT4-fs (sda2): I/O error while writing superblock
<3>[   77.554229] EXT4-fs (sda2): I/O error while writing superblock
<0>[   77.554869] Kernel panic - not syncing: EXT4-fs (device sda2):
panic forced after error
<0>[   78.581703] Shutting down cpus with NMI
<0>[   78.581733] Kernel Offset: disabled
<4>[   78.581785] CPU: 5 PID: 957 Comm: dmesg Not tainted
5.17.0-rc6-CI-Patchwork_22448+ #1


>
> Known issues
>
> Here are the changes found in Patchwork_22448 that come from known issues:
>
> c2ed9cc02d9c dyndbg: fix static_branch manipulation
