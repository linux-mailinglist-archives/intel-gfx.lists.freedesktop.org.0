Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A82276D08E
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Aug 2023 16:49:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9CE810E533;
	Wed,  2 Aug 2023 14:49:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com
 [IPv6:2a00:1450:4864:20::12e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7095210E1FF
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Aug 2023 14:49:35 +0000 (UTC)
Received: by mail-lf1-x12e.google.com with SMTP id
 2adb3069b0e04-4fe4762173bso3079077e87.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 02 Aug 2023 07:49:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1690987771; x=1691592571;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=aKHkYl6IMr8QnTnvT30Nci/brg8p0pHZBfK3BKGZxuI=;
 b=Pq+bTdD5N+DD8rAc1KC2k90a8XMV7LkhjQxc3v2pKh8PnyU7kWBUdsFCQYpNZVV6EC
 hzVPKhAtO4Dpsdb/K/SlkDd+P9SNEHV3MuzO6agsVMjk+NVzIYXSPtfWY+zU55J+LMFw
 U4vErh2k/QNPBEBRDrUuqt7etJP9KBld9i0PU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1690987771; x=1691592571;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=aKHkYl6IMr8QnTnvT30Nci/brg8p0pHZBfK3BKGZxuI=;
 b=RMVHW+zxxaNHg64kotkkZ4pZezjnKPKYPMSsraoq8O3zgYY0pc5SM6BipmuwR47xtN
 L/vnwQSWV7FhmzYmTLq6Bzga6rLxRYXTrNN0GhagF0BvLfA8ndWtEZmI8saWIdmPhkF9
 o0aWEOCYWMEx/OKbGs1vmun5CCwUgm+cEQ1cs/PFnDi3aspdIH96tIxdQfCPoHNwyCpn
 MNGBnsvA/yNGapv7jZH2eDcC7LViGZ8v/7dnOiSLur5iTFeYIzcW1EHoksEGv3H+lnZh
 FaTxzvIGcEHbPnoe32sMZlZrel5WgJLQBOpztS0m4U3q+G69FuWOheeqM8jYsdUqnYX7
 HVSA==
X-Gm-Message-State: ABy/qLZ4ZYJLGrjEyuwKz1ai1sbNknEK/dv/oX1rd7SRD4/B1rLPj824
 Cm2NQrc+Ieb8iHbbsyMnmYcvGJv9kVE1X5k1U4PQTGoS
X-Google-Smtp-Source: APBJJlHSqWorjX9y3i28QTwOHtLu3LayhpwUYbnCq/R4eGMqQBKq4c+zcf4XwJjNWFU+wrAh80N2dQ==
X-Received: by 2002:a05:6512:3c84:b0:4fd:d6ff:c244 with SMTP id
 h4-20020a0565123c8400b004fdd6ffc244mr6224563lfv.62.1690987771228; 
 Wed, 02 Aug 2023 07:49:31 -0700 (PDT)
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com.
 [209.85.208.52]) by smtp.gmail.com with ESMTPSA id
 n13-20020a05640206cd00b005223fb6d511sm8694092edy.28.2023.08.02.07.49.30
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 02 Aug 2023 07:49:31 -0700 (PDT)
Received: by mail-ed1-f52.google.com with SMTP id
 4fb4d7f45d1cf-5223910acf2so14236a12.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 02 Aug 2023 07:49:30 -0700 (PDT)
X-Received: by 2002:a50:9f84:0:b0:521:f642:7183 with SMTP id
 c4-20020a509f84000000b00521f6427183mr415975edf.1.1690987770404; Wed, 02 Aug
 2023 07:49:30 -0700 (PDT)
MIME-Version: 1.0
References: <20230802141724.0edce253@canb.auug.org.au>
In-Reply-To: <20230802141724.0edce253@canb.auug.org.au>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 2 Aug 2023 07:49:18 -0700
X-Gmail-Original-Message-ID: <CAD=FV=V4RmorrEu9oGrW+ovBXn+nC_APVhH-M+mHHXYoYLYRPQ@mail.gmail.com>
Message-ID: <CAD=FV=V4RmorrEu9oGrW+ovBXn+nC_APVhH-M+mHHXYoYLYRPQ@mail.gmail.com>
To: Stephen Rothwell <sfr@canb.auug.org.au>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] linux-next: build warning after merge of the
 drm-misc tree
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 DRI <dri-devel@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On Tue, Aug 1, 2023 at 9:17=E2=80=AFPM Stephen Rothwell <sfr@canb.auug.org.=
au> wrote:
>
> Hi all,
>
> After merging the drm-misc tree, today's linux-next build (htmldocs)
> produced this warning:
>
> Documentation/gpu/todo.rst:469: ERROR: Unexpected indentation.
>
> Introduced by commit
>
>   d2aacaf07395 ("drm/panel: Check for already prepared/enabled in drm_pan=
el")

Thanks for the report. I've posted:

https://lore.kernel.org/all/20230802074727.2.Iaeb7b0f7951aee6b8c090364bbc87=
b1ae198a857@changeid/

To fix this one.

-Doug
