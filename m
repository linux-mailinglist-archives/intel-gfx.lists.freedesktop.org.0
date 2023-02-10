Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FF73692665
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Feb 2023 20:32:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F93610EDD6;
	Fri, 10 Feb 2023 19:32:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31F8010EDD6
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Feb 2023 19:32:19 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id A9870B825BC
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Feb 2023 19:32:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F67AC4339B
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Feb 2023 19:32:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1676057536;
 bh=ug38gwWwqd9WD7MkHSHdssRPnvuW50g2Hiq4i4QvHrE=;
 h=References:In-Reply-To:From:Date:Subject:To:List-Id:Cc:From;
 b=d97WB41x9xjhzbNzjAwTX9Yi6mkqWtq7nmD6+3AS7yRbfFgkI/OJmFEQ9/KeTOvGL
 O+Rwsy/8AchBcU+vbWI8ya2/vTTi0SntQ1JNj6lUJvMXgW0wn4cGDxvaH99eHow16t
 JQbwztARuN1Az1A0Y4dh2tPwk3WLAbzsV/MHaGKKrrF4Ets8SmBVJF1A/4k1RKK2Bw
 W7ydIn4YLUUJdCteR4PTouz92ud6pa7GUbd/mmKSlvOWmjW3hJs1oN3VIkzLrHCYqW
 81gXzvcB2Cme6+7c9sHcUxIRikTJ5DgdVkh5pNovidwAxAhMGqdVjzqlLzdag7xiXL
 rMviWfXhsIdiQ==
Received: by mail-yb1-f179.google.com with SMTP id s203so2509171ybc.11
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Feb 2023 11:32:16 -0800 (PST)
X-Gm-Message-State: AO0yUKWv54UaW6m2UzD0xGV7Sjjw/FljmpsANhfuV+bHn10zCNYHKPQ1
 ISNTsDeBuuNEhtNtOVFlYWMbYNAbwF2UvbCoE7Q=
X-Google-Smtp-Source: AK7set9Gpb9Gq1fYiZD9UwaPC7TNCPhV7FIDrrS322ktWhtu3+sWil4TSvcVf+ctl+QPhsmhHOpZHh/s+yJiqS3HkMw=
X-Received: by 2002:a05:6902:c2:b0:85b:5c5b:db10 with SMTP id
 i2-20020a05690200c200b0085b5c5bdb10mr1910879ybs.485.1676057535418; Fri, 10
 Feb 2023 11:32:15 -0800 (PST)
MIME-Version: 1.0
References: <20230202165547.xb4uet45aywmt6js@gjsousa-mobl2>
In-Reply-To: <20230202165547.xb4uet45aywmt6js@gjsousa-mobl2>
From: Josh Boyer <jwboyer@kernel.org>
Date: Fri, 10 Feb 2023 14:32:04 -0500
X-Gmail-Original-Message-ID: <CA+5PVA4A8EEff7GTu+162+s_J3eP-_a_-PQk9dM0VSPCnHgPWg@mail.gmail.com>
Message-ID: <CA+5PVA4A8EEff7GTu+162+s_J3eP-_a_-PQk9dM0VSPCnHgPWg@mail.gmail.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] PR for ADLP DMC v2.18
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
Cc: "jwboyer@kernel.org" <jwboyer@kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 linux-firmware@kernel.org, "kyle@mcmartin.ca" <kyle@mcmartin.ca>, "Hutchings,
 Ben" <ben@decadent.org.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 2, 2023 at 11:56 AM Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>
> The following changes since commit 5c11a3742947810ee8bffbd476eb5a1b0c7999f2:
>
>   amdgpu: Add VCN 4.0.2 firmware (2023-01-25 07:40:41 -0500)
>
> are available in the Git repository at:
>
>   git://anongit.freedesktop.org/drm/drm-firmware.git dmc-adlp_2.18

Pulled and pushed out.

josh

> for you to fetch changes up to a5046f435699b88a20fe9f5803da2a5c2f604a7f:
>
>   i915: Add DMC v2.18 for ADLP (2023-02-02 12:58:28 -0300)
>
> ----------------------------------------------------------------
> Gustavo Sousa (1):
>       i915: Add DMC v2.18 for ADLP
>
>  WHENCE            |   3 +++
>  i915/adlp_dmc.bin | Bin 0 -> 78500 bytes
>  2 files changed, 3 insertions(+)
>  create mode 100644 i915/adlp_dmc.bin
