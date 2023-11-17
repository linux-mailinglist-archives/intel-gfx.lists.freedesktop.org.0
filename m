Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 678067EF69B
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Nov 2023 17:52:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4404810E0C9;
	Fri, 17 Nov 2023 16:52:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CB4610E0C9
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Nov 2023 16:52:35 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id BCF1AB81FA1
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Nov 2023 16:52:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1F712C433C9
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Nov 2023 16:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1700239953;
 bh=f9rtcK56mhDLhOp4RKNpeUtKt+ICIAmxCI82XE6Z37Y=;
 h=References:In-Reply-To:From:Date:Subject:To:List-Id:Cc:From;
 b=FNXa8Eqei7viAqPYvU8GZz9CLHcuHSNWDRWRntRPyvK0S4ReCF43hHgvCfyEsnne/
 /UrF1mk4r3L5x3CWj2M3RRtnBPIhTyiBuSrZZUWEbDMXtx/WFIQ5b7R6pEqeVNoOUa
 EGocN91fiighO9HxRH4OaGnSuGqVxxcVYQCGNKEbGVgTgko5SZ+TEJCvXRDTw49B9x
 4VgyCLQ/yZ1BSeYO5YHGnZXPVrcsHBwS6rtZWVNUvbtxM+XpZiFDN4Sf+ifzyDGhYD
 4W5L3WZp00BQs5+rcUJA3JmEV0YoFaYkstVBXZ3JTTC6LQKvHbEWQ52U4y1PuU/I35
 R8Nh7C/d5KPsg==
Received: by mail-yw1-f178.google.com with SMTP id
 00721157ae682-5c6705515d8so11781367b3.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Nov 2023 08:52:33 -0800 (PST)
X-Gm-Message-State: AOJu0YyzBl8qmhg0zvfwMSDavcMDTXoOGbzS42DvQGoBzfgVsy4Njwfk
 O5eryLMa4TjVo4pZgzTSnfyRKUgS+V0pLoU8/T4=
X-Google-Smtp-Source: AGHT+IGinxPFXo5mERoJL+vrqJ92Z5DnP2b6xg9usz1TN6JSUcn7bOPY5ismH06tT8bELfD0NHiOwIBkrs/HTucB11M=
X-Received: by 2002:a0d:e615:0:b0:5c1:25f:5674 with SMTP id
 p21-20020a0de615000000b005c1025f5674mr141383ywe.32.1700239952266; Fri, 17 Nov
 2023 08:52:32 -0800 (PST)
MIME-Version: 1.0
References: <20231117150711.24379-1-gustavo.sousa@intel.com>
In-Reply-To: <20231117150711.24379-1-gustavo.sousa@intel.com>
From: Josh Boyer <jwboyer@kernel.org>
Date: Fri, 17 Nov 2023 11:52:21 -0500
X-Gmail-Original-Message-ID: <CA+5PVA5QSZqFiTkyTnWeWOW-_9iyEjRu2SZSAL+sD4JaiCkc8w@mail.gmail.com>
Message-ID: <CA+5PVA5QSZqFiTkyTnWeWOW-_9iyEjRu2SZSAL+sD4JaiCkc8w@mail.gmail.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] PR for MTL DMC v2.19
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
Cc: intel-gfx@lists.freedesktop.org, kyle@kernel.org, ben@decadent.org.uk,
 linux-firmware@kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Nov 17, 2023 at 10:07=E2=80=AFAM Gustavo Sousa <gustavo.sousa@intel=
.com> wrote:
>
> The following changes since commit 6723a8d9092325d00a125a1b3ca058644f74d3=
14:
>
>   Merge branch 'robot/pr-5-1700153542' into 'main' (2023-11-16 16:54:38 +=
0000)
>
> are available in the Git repository at:
>
>   git://anongit.freedesktop.org/drm/drm-firmware mtl_dmc_2.19

Pulled and pushed out.
https://gitlab.com/kernel-firmware/linux-firmware/-/merge_requests/65

josh

>
> for you to fetch changes up to 451090149cecfae5e674d24944579a564afefe8a:
>
>   i915: Update MTL DMC to v2.19 (2023-11-17 11:03:16 -0300)
>
> ----------------------------------------------------------------
> Gustavo Sousa (1):
>       i915: Update MTL DMC to v2.19
>
>  WHENCE           |   2 +-
>  i915/mtl_dmc.bin | Bin 52508 -> 52476 bytes
>  2 files changed, 1 insertion(+), 1 deletion(-)
