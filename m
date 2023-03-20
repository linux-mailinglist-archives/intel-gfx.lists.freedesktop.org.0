Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7849E6C1126
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Mar 2023 12:50:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B8E410E3F9;
	Mon, 20 Mar 2023 11:49:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B48410E3F9
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Mar 2023 11:49:55 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 728E56149D
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Mar 2023 11:49:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D2DC3C433D2
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Mar 2023 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1679312993;
 bh=Gak5PJ7Tbav4/N7rE4+JEDOkjuxFmTP0bpW8Jv78R2w=;
 h=References:In-Reply-To:From:Date:Subject:To:List-Id:Cc:From;
 b=X8Qx7eSoPzyLLHP60sb2Ss26R7nmY245SLNik2tLJLKjB4zjULIoWj+Y48XcOGC4X
 FWyWogW02iJoUbEoBbJguutHFEmlO4Zajt+HeNROFpuvBZwZss5uZFewKAFlGdHT0m
 oU0BWp/Vs6Rel4nVGwbJd1eXuIXWx/7zvus+AaSbrMuPg4Q6S5+5rQOHwD0RxMAAOt
 CY7lD3LYiVQYleltBvS+gTBYoZ1t/w5VdrO+fis1QE31CDHh6WQa5DypnbzfnRWWbs
 LpayF/xoBXd2wLVr4L8ysQ5oKvTalr55aVbHoMa/0KuvDAt1ul0AV1rbt3jV7jQwm3
 yOzQLP0vbG3aw==
Received: by mail-yw1-f175.google.com with SMTP id
 00721157ae682-536af432ee5so220007707b3.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Mar 2023 04:49:53 -0700 (PDT)
X-Gm-Message-State: AO0yUKV9DO7uo14MFIWDk6o4WQ1CWSqnCns1nZZhxACyk4Vjp6RGZqPS
 FUHMwRxKHyI3Hc+sXET1Xd/sb1HcHuoLLb6OjoM=
X-Google-Smtp-Source: AK7set9JAv+yOAs3sI4sBjEurJtk//AKRSll4hj/3FNS3VIqOVrSwQPfH1dbtmLxuyHvlxl2Cbo2XXuj/ogYzA5a+7U=
X-Received: by 2002:a81:af4d:0:b0:544:b7ff:b0df with SMTP id
 x13-20020a81af4d000000b00544b7ffb0dfmr8005587ywj.2.1679312992962; Mon, 20 Mar
 2023 04:49:52 -0700 (PDT)
MIME-Version: 1.0
References: <20230317171202.7nyudie5yxkg2o55@gjsousa-mobl2>
In-Reply-To: <20230317171202.7nyudie5yxkg2o55@gjsousa-mobl2>
From: Josh Boyer <jwboyer@kernel.org>
Date: Mon, 20 Mar 2023 07:49:42 -0400
X-Gmail-Original-Message-ID: <CA+5PVA7kr+=Qu4aW7ZQ9f9zM8wPOEU=f3jZTTpYWAaJmGHD0Ww@mail.gmail.com>
Message-ID: <CA+5PVA7kr+=Qu4aW7ZQ9f9zM8wPOEU=f3jZTTpYWAaJmGHD0Ww@mail.gmail.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] PR for ADLP DMC v2.19 and MTL DMC v2.12
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
Cc: kyle@mcmartin.ca, intel-gfx@lists.freedesktop.org, ben@decadent.org.uk,
 linux-firmware@kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Mar 17, 2023 at 1:12=E2=80=AFPM Gustavo Sousa <gustavo.sousa@intel.=
com> wrote:
>
> The following changes since commit c761dbe804f903cc2df81f251d367cca285eca=
06:
>
>   Merge tag 'iwlwifi-fw-2023-03-13' of http://git.kernel.org/pub/scm/linu=
x/kernel/git/iwlwifi/linux-firmware (2023-03-13 09:20:47 -0400)
>
> are available in the Git repository at:
>
>   git://anongit.freedesktop.org/drm/drm-firmware dmc-adlp_2.19-mtl_2.12

Pulled and pushed out.

josh

>
> for you to fetch changes up to a18a444bfbd6097515272f587b86856a6de15218:
>
>   i915: Update MTL DMC to v2.12 (2023-03-17 14:06:32 -0300)
>
> ----------------------------------------------------------------
> Gustavo Sousa (2):
>       i915: Update ADLP DMC to v2.19
>       i915: Update MTL DMC to v2.12
>
>  WHENCE            |   4 ++--
>  i915/adlp_dmc.bin | Bin 78500 -> 79044 bytes
>  i915/mtl_dmc.bin  | Bin 48512 -> 49104 bytes
>  3 files changed, 2 insertions(+), 2 deletions(-)
