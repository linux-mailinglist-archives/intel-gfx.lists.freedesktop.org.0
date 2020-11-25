Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB16D2C4A59
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Nov 2020 23:09:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 802A16EAA6;
	Wed, 25 Nov 2020 22:09:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com
 [IPv6:2607:f8b0:4864:20::642])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A23B6EAAB
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Nov 2020 22:09:41 +0000 (UTC)
Received: by mail-pl1-x642.google.com with SMTP id l11so107197plt.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Nov 2020 14:09:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/ob3FEJdYP5qhdHPeLajEb6PUDm9frxLF1mdXzRdH3M=;
 b=L3KZpP3LXxZlW/DP5AmTnD4MuZ72/rcy+coOeUVeCNTiwrWtzoVQx/hBMoKUsqDMm0
 Foet9vcyJsJZ2PSgueU+Q+MvDj0KUWyeWX5guwBWRMdbnXZ08cX56htqXhsZrxHUuRIn
 vYFnIpmbgrasg1vSD5AH5hKwOy9NejMhVovtjBrzY+2P0ug3w3+5RlYsOk03C83VD9da
 OdGtf9c6uotPHdYcmuyOqbnF5k3fP8Yo6l5eFDVR7n6m5okfFX1oHlXNOB3u6UsnrVGE
 wa6MluYkHn1XOYZTDyrE2KQmcun7Qe6vVmhaYurLDnZVMQG/lFJsGakXcuEY3+Obie2U
 RVfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/ob3FEJdYP5qhdHPeLajEb6PUDm9frxLF1mdXzRdH3M=;
 b=UGeZUNb5xwsdFxV1ouQDRlb/TQjKfOoK90085O6Z9je5KTHI+u5I5uf5nHWEoWYtd9
 /5CZCPwqt+UYlfs4sF2Bypy+/N9Q7910gsqmabDzy6aJJmBJ3+S/iWOA+bUZKIY3bmzh
 Kg9jMhQ65G3WqZVKXaEEvgU6Y57kyFPthabMhvrn75fZkgbzTn15a1mdMij7Wxz6UODB
 OcH9x98JAKCUqL6U7BXpH6xQF8go6skbm8EhOSaZP4cxEKFcH4vsROlCuw06iOTffJNr
 Qk6V/fAc4Kn3NX/e606pso2gJH7FqkGBQfCYFK7H4E44rHk0pYslP61iB/INaZ2Y5LTn
 QrXg==
X-Gm-Message-State: AOAM533jB+EnnlHikMZC4se8KoWRmy9eoZZNPKS/sciK1h8G3BAzrFlT
 /2l7nO4bohMQu9e0Ryvfe6w9pFAMhbiuQ8W0O1h2cg==
X-Google-Smtp-Source: ABdhPJz8lLt/1COGEMpWkFDfyIK6h7HwbxIAa+xtHaAqLUfnjsVh22wexUgkVgdtXLczfRnuDI51yr8PXCWqKuZKul4=
X-Received: by 2002:a17:902:c14a:b029:d8:dc05:d7ef with SMTP id
 10-20020a170902c14ab02900d8dc05d7efmr4885886plj.83.1606342180784; Wed, 25 Nov
 2020 14:09:40 -0800 (PST)
MIME-Version: 1.0
References: <202011201129.B13FDB3C@keescook>
 <20201120115142.292999b2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <202011220816.8B6591A@keescook>
 <9b57fd4914b46f38d54087d75e072d6e947cb56d.camel@HansenPartnership.com>
 <ca071decb87cc7e905411423c05a48f9fd2f58d7.camel@perches.com>
 <0147972a72bc13f3629de8a32dee6f1f308994b5.camel@HansenPartnership.com>
 <d8d1e9add08cdd4158405e77762d4946037208f8.camel@perches.com>
 <dbd2cb703ed9eefa7dde9281ea26ab0f7acc8afe.camel@HansenPartnership.com>
 <20201123130348.GA3119@embeddedor>
 <8f5611bb015e044fa1c0a48147293923c2d904e4.camel@HansenPartnership.com>
 <202011241327.BB28F12F6@keescook>
 <a841536fe65bb33f1c72ce2455a6eb47a0107565.camel@HansenPartnership.com>
 <CAKwvOdkGBn7nuWTAqrORMeN1G+w3YwBfCqqaRD2nwvoAXKi=Aw@mail.gmail.com>
 <alpine.LNX.2.23.453.2011260750300.6@nippy.intranet>
In-Reply-To: <alpine.LNX.2.23.453.2011260750300.6@nippy.intranet>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Wed, 25 Nov 2020 14:09:29 -0800
Message-ID: <CAKwvOdna5Zj_O=sB7Q0jHZX0BJSaakX=ZyftwQ_3=L3-ZB54XQ@mail.gmail.com>
To: Finn Thain <fthain@telegraphics.com.au>
Subject: Re: [Intel-gfx] [Intel-wired-lan] [PATCH 000/141] Fix fall-through
 warnings for Clang
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
Cc: alsa-devel@alsa-project.org, bridge@lists.linux-foundation.org,
 target-devel@vger.kernel.org, Greg KH <gregkh@linuxfoundation.org>,
 linux-iio@vger.kernel.org, linux-wireless <linux-wireless@vger.kernel.org>,
 linux-mmc@vger.kernel.org, linux-fbdev@vger.kernel.org,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 James Bottomley <James.Bottomley@hansenpartnership.com>,
 linux-ide@vger.kernel.org, dm-devel@redhat.com, keyrings@vger.kernel.org,
 linux-mtd@lists.infradead.org, GR-everest-linux-l2@marvell.com,
 wcn36xx@lists.infradead.org, linux-i3c@lists.infradead.org,
 linux1394-devel@lists.sourceforge.net, linux-afs@lists.infradead.org,
 drbd-dev@lists.linbit.com, devel@driverdev.osuosl.org,
 linux-cifs@vger.kernel.org, rds-devel@oss.oracle.com,
 linux-scsi@vger.kernel.org, linux-acpi@vger.kernel.org,
 linux-rdma@vger.kernel.org, oss-drivers@netronome.com,
 linux-atm-general@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 linux-stm32@st-md-mailman.stormreply.com, cluster-devel@redhat.com,
 usb-storage@lists.one-eyed-alien.net, coreteam@netfilter.org,
 intel-wired-lan@lists.osuosl.org, linux-input@vger.kernel.org,
 Miguel Ojeda <ojeda@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 linux-ext4@vger.kernel.org, virtualization@lists.linux-foundation.org,
 netfilter-devel@vger.kernel.org, linux-media@vger.kernel.org,
 Kees Cook <keescook@chromium.org>, selinux@vger.kernel.org,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>, intel-gfx@lists.freedesktop.org,
 linux-sctp@vger.kernel.org, reiserfs-devel@vger.kernel.org,
 linux-geode@lists.infradead.org, linux-block@vger.kernel.org,
 linux-gpio@vger.kernel.org, op-tee@lists.trustedfirmware.org,
 linux-mediatek@lists.infradead.org, xen-devel@lists.xenproject.org,
 nouveau@lists.freedesktop.org, linux-hams@vger.kernel.org,
 Nathan Chancellor <natechancellor@gmail.com>, linux-can@vger.kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-hwmon@vger.kernel.org,
 "maintainer:X86 ARCHITECTURE \(32-BIT AND 64-BIT\)" <x86@kernel.org>,
 linux-watchdog@vger.kernel.org, GR-Linux-NIC-Dev@marvell.com,
 Linux Memory Management List <linux-mm@kvack.org>,
 Network Development <netdev@vger.kernel.org>,
 linux-decnet-user@lists.sourceforge.net, samba-technical@lists.samba.org,
 LKML <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 linux-security-module@vger.kernel.org, linux-usb@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>, Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 patches@opensource.cirrus.com, Joe Perches <joe@perches.com>,
 linux-integrity@vger.kernel.org, linux-nfs@vger.kernel.org,
 linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Nov 25, 2020 at 1:33 PM Finn Thain <fthain@telegraphics.com.au> wrote:
>
> Or do you think that a codebase can somehow satisfy multiple checkers and
> their divergent interpretations of the language spec?

Have we found any cases yet that are divergent? I don't think so.  It
sounds to me like GCC's cases it warns for is a subset of Clang's.
Having additional coverage with Clang then should ensure coverage for
both.

> > This is not a shiny new warning; it's already on for GCC and has existed
> > in both compilers for multiple releases.
> >
>
> Perhaps you're referring to the compiler feature that lead to the
> ill-fated, tree-wide /* fallthrough */ patch series.
>
> When the ink dries on the C23 language spec and the implementations figure
> out how to interpret it then sure, enforce the warning for new code -- the
> cost/benefit analysis is straight forward. However, the case for patching
> existing mature code is another story.

I don't think we need to wait for the ink to dry on the C23 language
spec to understand that implicit fallthrough is an obvious defect of
the C language.  While the kernel is a mature codebase, it's not
immune to bugs.  And its maturity has yet to slow its rapid pace of
development.
-- 
Thanks,
~Nick Desaulniers
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
