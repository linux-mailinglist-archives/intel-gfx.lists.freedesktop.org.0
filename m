Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 761DC6EF54A
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Apr 2023 15:16:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE9D810E99D;
	Wed, 26 Apr 2023 13:16:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com
 [IPv6:2a00:1450:4864:20::130])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 281CE10E76E
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Apr 2023 14:37:56 +0000 (UTC)
Received: by mail-lf1-x130.google.com with SMTP id
 2adb3069b0e04-4edcc885d8fso6468851e87.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Apr 2023 07:37:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1682433473; x=1685025473;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :references:in-reply-to:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=hIh3uOH3F3CUxPdLjussyAzV04hrI2I4XDtsKdBf4NY=;
 b=Ld+Bx1d0ensa2m93sNOIyK0zV67VjglgKNYZDrys+twBPEqHxqvhnc9x6AIMBAO78B
 EgHnFrRiRHTJtWKtohkXWMSrPpB79V082fkAaELgwH9P6fTNcjwXasZFhVE3A+aXib5B
 iOq3kaMw2eQUGp+hCNxSoKCZYh8P9Bxaq2BY/x2uR4VNhfPyBPtHK0LCNRicsbuXiuA6
 NsvdOJRHuqXNNN6cvaZR5u0yYeU6j1VPbHv17PFBddhulK/gUq3gTyLEQ8KgWxnCbsSj
 AWiB5Fxsxv9HGLtjcP/tgE4Ctx6Gkt4Gp4PFT/tY9UsH4ryr9ulwH2WCxRq6xxXy6u1J
 +wCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1682433473; x=1685025473;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :references:in-reply-to:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=hIh3uOH3F3CUxPdLjussyAzV04hrI2I4XDtsKdBf4NY=;
 b=a7hsNZpRnvyqDGyoqe80chQUuKPmW0WUvsMFQ6xejpdL3+2g6M2NRlcYHpb7OeWQDO
 Z+XImCHuX6/4D6a4tuwAa5THWbXhGhY+R+eDVmUzLTzepYGtbeqUxpx13/+z9IMpH5bF
 f26g8bOa3Row1nI41JDgiD2z8uSx0bxjKlCM2ePIuNxLyB/bZ2hmQZp9XDUbp+XzucfW
 m4R7NRsjafAV5cGm4bCk9B7LxhmJdqPyqvkVQqhQhVU7vu4gDavmkTHjPtL/r85rXi0I
 dXCTk9J/NtK6KdkhUHuMVbLX8teUK2pbNpEiWGA8z9kmhJXWw3miLxwD1FJx/G2otBk8
 +hTQ==
X-Gm-Message-State: AAQBX9cfl7ZIf78mXSgbaXAjWOyVgFo4NE2jcpl2EQDKw53L0mAXU1pj
 SRPpQTbadaKeOTu+rju1GrhPe7lt4WVOe9F6Rro=
X-Google-Smtp-Source: AKy350ZRNBWIaUssmkBOLIOoKRxyf1JrGPuOy8jfhMZ7kDOIe3TZgDeKEVI1ypClUk/jNV+kKEIF+gxVCbxlKTOyGQM=
X-Received: by 2002:ac2:414a:0:b0:4eb:d20:b2ad with SMTP id
 c10-20020ac2414a000000b004eb0d20b2admr4465752lfi.63.1682433472818; Tue, 25
 Apr 2023 07:37:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab3:5915:0:b0:224:262d:c651 with HTTP; Tue, 25 Apr 2023
 07:37:51 -0700 (PDT)
In-Reply-To: <CAOzgRdagsgD+8PNXhCRzqN6Pk8xympmHoA+yYM1iGK_QVcSGmw@mail.gmail.com>
References: <20230329172434.18744-1-ville.syrjala@linux.intel.com>
 <20230425054657.18474-1-youling257@gmail.com> <ZEed4a0krg3aoJjX@intel.com>
 <CAOzgRdagsgD+8PNXhCRzqN6Pk8xympmHoA+yYM1iGK_QVcSGmw@mail.gmail.com>
From: youling 257 <youling257@gmail.com>
Date: Tue, 25 Apr 2023 22:37:51 +0800
Message-ID: <CAOzgRdZH6HP5Odiz22xf0KWULv783imXuHo3SR14_vk8Gpe+RQ@mail.gmail.com>
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Wed, 26 Apr 2023 13:16:02 +0000
Subject: Re: [Intel-gfx] [1/2] drm/i915: Fix fast wake AUX sync len
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

When i from kernel 6.3rc7 update to 6.3 release, it happened this hdmi
sound problem.
I retest many times, the cause of the problem is not this patch, i'm so sor=
ry.

2023-04-25 21:52 GMT+08:00, youling 257 <youling257@gmail.com>:
> pcmC0D3p use for hdmi sound out,
> numid=3D13,iface=3DCARD,name=3D'HDMI/DP,pcm=3D3 Jack'
>   ; type=3DBOOLEAN,access=3Dr-------,values=3D1
>   : values=3Don
>
> this patch cause 'HDMI/DP,pcm=3D3 Jack' value off, hdmi sound not work,
> replug hdmi cable no useful, still no sound, 'HDMI/DP,pcm=3D3 Jack'
> unable become on, have to reboot.
>
> 2023-04-25 17:31 GMT+08:00, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.=
intel.com>:
>> On Tue, Apr 25, 2023 at 01:46:57PM +0800, youling257 wrote:
>>> This patch cause suspend to disk resume later hdmi out no sound.
>>> Revert "drm/i915: Fix fast wake AUX sync len", suspend resume hdmi soun=
d
>>> work.
>>
>> I find that hard to believe. Fast wake is a PSR2 thing, which has
>> nothing to do with HDMI.
>>
>> --
>> Ville Syrj=C3=A4l=C3=A4
>> Intel
>>
>
