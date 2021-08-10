Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 966E93E5091
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Aug 2021 03:15:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51FAE89E0C;
	Tue, 10 Aug 2021 01:15:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 573 seconds by postgrey-1.36 at gabe;
 Tue, 10 Aug 2021 01:15:02 UTC
Received: from smtp-relay-canonical-1.canonical.com
 (smtp-relay-canonical-1.canonical.com [185.125.188.121])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DAF589E06
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Aug 2021 01:15:02 +0000 (UTC)
Received: from mail-ot1-f71.google.com (mail-ot1-f71.google.com
 [209.85.210.71])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-canonical-1.canonical.com (Postfix) with ESMTPS id DA5593F0F9
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Aug 2021 01:05:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1628557526;
 bh=NTTyZ1PzVqD5m0nUKgVjDtwNsGqCsp3AlVoZbwU4cKo=;
 h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
 To:Content-Type;
 b=O2rc2J+n4oA8izRtD92NjiBvmIHRHYaa5KJ9n1WzAsiEgAnzaEv/9g3MSZO3j1WKB
 FcRnmenmQW1uVToF8ADOsM8tNM+Kl7HJK0YJ+Ntv0mG8o5scHSmCu4t+6UARuzCDJc
 guEzWP5/D+ElpagnwmtGwYEIItxJUhIXOQj44QbhA3wbZXOHj05NwiK9Jh2gtuDTNm
 u7Up9aeJO4p41H73N1z1/TL++sKPJRuZzqyEpdfKOBGM5Z4QM+hN04bw7S8FQNeQpf
 b58DZgURqpvb6ByufHNdcw/O1S4O924D9dhQEG2H9aJ2rTAWpY4qfSHldV2s+HTxj2
 2DvXJu9WQV4fQ==
Received: by mail-ot1-f71.google.com with SMTP id
 x22-20020a9d6d960000b02904fee99e6058so2544258otp.23
 for <intel-gfx@lists.freedesktop.org>; Mon, 09 Aug 2021 18:05:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=NTTyZ1PzVqD5m0nUKgVjDtwNsGqCsp3AlVoZbwU4cKo=;
 b=ZiFXpO5hpbgfdgAH2ZF6j9CFzwCt1vst2Cuf3dyC8leUzWj2tMo/30s4JNXeturP6e
 YuMNQ80Ao+2GAeQUliXHTAv5Fe5S6NhiqAzrYTEgLXdrGmeDGJ4mHRO8MArOo/GxNHmN
 YKVfYPolYRvwhJifiLYaB6vFS6BHPGZUu3VjbD/3zYkHavnx6VvEFATXlvCNjIW1OO3q
 OVM0ZhVNLmZB6JLf0P7R7BoT3/QkT872K38IauUnos0YXujQW48t7fKonoPuIQ8nkvd6
 fToEkwH0T2vKG2GG/3ubkAf/0Rrv+0FWwTCrYSXuKO5oOCsvNku1b6UQ9Dr1XXcJK/Xf
 6dgA==
X-Gm-Message-State: AOAM531Z32z9tW2vpd3zUmMWELXfy4r8y4o8E2/WCSIVUmpQ/uMZ1p50
 j1AbRITnlpbQUbjQ+Ll3APK6eE4DDnVghy+sbqcCVhwream7YiHz7pupUiUKLc6lk8vFUO17oyR
 ictjROvvHFpa28qljse10UI30FCXqQL+8n0K0vZVOmWf+dQeSOXfETMhUF56DxQ==
X-Received: by 2002:a9d:6c46:: with SMTP id g6mr19203733otq.3.1628557525608;
 Mon, 09 Aug 2021 18:05:25 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwakIsUvKSRWTp1K5+rHfPLunUXpUIP5TbAVshJ0BPaG4u4gUcIumve84BEkju10cNXUDTVQdCdThtFCWLbIkw=
X-Received: by 2002:a9d:6c46:: with SMTP id g6mr19203728otq.3.1628557525346;
 Mon, 09 Aug 2021 18:05:25 -0700 (PDT)
MIME-Version: 1.0
References: <CAJB-X+V5SLikZgkesXCoQ=EufSbj6ABLxKEtO71OSRwyJ1175Q@mail.gmail.com>
 <CAJB-X+Xh1F_7WBvSDOJrtHYZX4YN4WRnLNnrqEG-zPC3h0HEwg@mail.gmail.com>
In-Reply-To: <CAJB-X+Xh1F_7WBvSDOJrtHYZX4YN4WRnLNnrqEG-zPC3h0HEwg@mail.gmail.com>
From: Koba Ko <koba.ko@canonical.com>
Date: Tue, 10 Aug 2021 09:05:14 +0800
Message-ID: <CAJB-X+VdVfAbSrEZvvGCrZiV0C9dSMbkT7e9Zas=K9NjYi43eA@mail.gmail.com>
To: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Subject: [Intel-gfx] Req: split off intel pch definition and move into
 include/drm/
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

Previously, AMD had an issue about noise  with AMD-DG on the RKL platform
AMD provided a parameter.
#modprobe amdgpu ppfeaturemask=0xfff7bffb

 I thought it's better to check and assign values in amd gpu.
Have a trouble determining the type of pch(RKL or else),
search in amd drm driver and can't find any about this.
Would someone please guide me? if there's an existing function.

here's a proposal, check RKL PCH in amd driver,
the pch definitions must be splitted off from intel_pch.h in i915
folder to include/drm/intel_pch_definition.h

> --- a/drivers/gpu/drm/amd/pm/powerplay/hwmgr/smu7_hwmgr.c
> +++ b/drivers/gpu/drm/amd/pm/powerplay/hwmgr/smu7_hwmgr.c
> @@ -1629,7 +1629,7 @@ static void smu7_init_dpm_defaults(struct pp_hwmgr *hwmgr)
>
>         data->mclk_dpm_key_disabled = hwmgr->feature_mask & PP_MCLK_DPM_MASK ? false : true;
>         data->sclk_dpm_key_disabled = hwmgr->feature_mask & PP_SCLK_DPM_MASK ? false : true;
> -       data->pcie_dpm_key_disabled = hwmgr->feature_mask & PP_PCIE_DPM_MASK ? false : true;
> +       data->pcie_dpm_key_disabled = is_rkl_pch() || !(hwmgr->feature_mask & PP_PCIE_DPM_MASK);
>         /* need to set voltage control types before EVV patching */
>         data->voltage_control = SMU7_VOLTAGE_CONTROL_NONE;
>         data->vddci_control = SMU7_VOLTAGE_CONTROL_NONE;
