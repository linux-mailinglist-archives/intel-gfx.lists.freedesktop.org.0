Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 356F93A2FC2
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jun 2021 17:47:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 685BB6ED82;
	Thu, 10 Jun 2021 15:47:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x231.google.com (mail-oi1-x231.google.com
 [IPv6:2607:f8b0:4864:20::231])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 629EC6ED14
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Jun 2021 15:43:53 +0000 (UTC)
Received: by mail-oi1-x231.google.com with SMTP id m137so2573323oig.6
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Jun 2021 08:43:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bIkOC7ijnAkY9Mv5y+9kSysZ6u0yFrSnVrFQUWyVl0k=;
 b=PoYNHPf/2yuR5K/nzjrK6zwk0D4OD9xdvf7Py80pXwPb5pQTwpnWUb/UmeC49+VD9k
 8jyk2PS5KwoZXvKxZcIf5lnopBxandWalBuxXJ3JuiC/vRN5aQK7PwfM9B0dU/ZkaYQo
 NTgcCS4uI9If9wkCr73EkhnJBZLYw3l+WKS2bfJuoHdpbAysYLLZqMThyvijKJt39uRC
 KLemQgY0EXkvGHgxIyxalj5XyyKC8JCd+i62eoHNmvjOiA9e/9w/9/5ZtxXqISusrwdv
 8TMSzD9kESyYjbGqEBnskid1PlTrV8tvsFGCvHS+lVMm/HoDBWGeBcqQ6TwAqRwnwnq2
 FQdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bIkOC7ijnAkY9Mv5y+9kSysZ6u0yFrSnVrFQUWyVl0k=;
 b=sEG4YGMGN+wq9efqwxh2KU4IpOiVg7+gc2xEA1Wfmfeudbeq7nlS4qqezA2Gh+FOA1
 ehflEiz8XkffavaxHzxlUaI+SUUTwswS67kSSzs/ukQpyMVI+brXjgRcpLF/qeBwUx9e
 Ogmhw98FZvIdt0swzdzC9UOciK8SI93YNdxjJZ4GKivVzX2FlmQkXkBkqLwkXYyri1PV
 gMGLWIscx2Z5fDWBCArrLho2h+vpP7uvWhyIHUAtKCoYN+fkhiHrdDbTTPHum0cDG+Am
 isAvTXax+0dgZ+ZC1tE/ltWn3lImnXr8D50SgVpbmesLiJVE0YOAOdERHYG+g1EArNcc
 aixg==
X-Gm-Message-State: AOAM533bOe4RFtvc8hXSZjSsng+um9IrzcL8pt8+/JVvHNIlsGL0YRAR
 W1OIQjR0nskQcqxg/vycTrgo9UWWoTUbzBMOu1CsBw==
X-Google-Smtp-Source: ABdhPJzOHeoZSvYc1NerQZgvWa/MQnTSIUxyjUv8ITSmLs44wRNwhb1SwHGpge4+SkLY/DhDACQsez6dQfmAKaWL+1M=
X-Received: by 2002:a54:408b:: with SMTP id i11mr3984419oii.132.1623339832419; 
 Thu, 10 Jun 2021 08:43:52 -0700 (PDT)
MIME-Version: 1.0
References: <548dd463-3942-00a1-85c3-232897dea1a3@canonical.com>
 <162332615476.15946.17135355064135638083@jlahtine-mobl.ger.corp.intel.com>
In-Reply-To: <162332615476.15946.17135355064135638083@jlahtine-mobl.ger.corp.intel.com>
From: Jesse Barnes <jsbarnes@google.com>
Date: Thu, 10 Jun 2021 08:43:40 -0700
Message-ID: <CAJmaN=ma2vFqB8c=g7YyV6zeKx1dFRDx7o9JmFgse4QTc6C84Q@mail.gmail.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
X-Mailman-Approved-At: Thu, 10 Jun 2021 15:47:07 +0000
Subject: Re: [Intel-gfx] Computation of return value being discarded in
 get_cpu_power() in drivers/platform/x86/intel_ips.c
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
Cc: Mark Gross <mgross@linux.intel.com>, intel-gfx@lists.freedesktop.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 platform-driver-x86@vger.kernel.org,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Colin Ian King <colin.king@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Arg html email sorry.  Resending plain text:

It may be ok to drop this driver entirely now too; I doubt anyone is
relying on GPU turbo in Ironlake for anything critical anymore.  That
would allow for some simplifications in i915 too if it's still
supported.


On Thu, Jun 10, 2021 at 4:56 AM Joonas Lahtinen
<joonas.lahtinen@linux.intel.com> wrote:
>
> (Address for Hans was corrupt in previous message, which confused my mail
> client. Sorry for duplicate message, the other is without From: field).
>
> + Jesse
>
> Quoting Colin Ian King (2021-06-09 14:50:07)
> > Hi,
> >
> > I was reviewing some old unassigned variable warnings from static
> > analysis by Coverity and found an issue introduced with the following
> > commit:
> >
> > commit aa7ffc01d254c91a36bf854d57a14049c6134c72
> > Author: Jesse Barnes <jbarnes@virtuousgeek.org>
> > Date:   Fri May 14 15:41:14 2010 -0700
> >
> >     x86 platform driver: intelligent power sharing driver
> >
> > The analysis is as follows:
> >
> > drivers/platform/x86/intel_ips.c
> >
> >  871 static u32 get_cpu_power(struct ips_driver *ips, u32 *last, int period)
> >  872 {
> >  873        u32 val;
> >  874        u32 ret;
> >  875
> >  876        /*
> >  877         * CEC is in joules/65535.  Take difference over time to
> >  878         * get watts.
> >  879         */
> >  880        val = thm_readl(THM_CEC);
> >  881
> >  882        /* period is in ms and we want mW */
> >  883        ret = (((val - *last) * 1000) / period);
> >
> > Unused value (UNUSED_VALUE)
> > assigned_value:  Assigning value from ret * 1000U / 65535U to ret here,
> > but that stored value is not used.
> >
> >  884        ret = (ret * 1000) / 65535;
> >  885        *last = val;
> >  886
> >  887        return 0;
> >  888 }
> >
> > I'm really not sure why ret is being calculated on lines 883,884 and not
> > being used. Should that be *last = ret on line 885? Looks suspect anyhow.
>
> According to git blame code seems to have been disabled intentionally by the
> following commit:
>
> commit 96f3823f537088c13735cfdfbf284436c802352a
> Author: Jesse Barnes <jbarnes@virtuousgeek.org>
> Date:   Tue Oct 5 14:50:59 2010 -0400
>
>     [PATCH 2/2] IPS driver: disable CPU turbo
>
>     The undocumented interface we're using for reading CPU power seems to be
>     overreporting power.  Until we figure out how to correct it, disable CPU
>     turbo and power reporting to be safe.  This will keep the CPU within default
>     limits and still allow us to increase GPU frequency as needed.
>
> Maybe wrap the code after thm_readl() in #if 0 in case somebody ends up
> wanting to fix it? Or eliminate completely.
>
> In theory the thm_readl() may affect the system behavior so would not
> remove that for extra paranoia.
>
> Regards, Joonas
>
> > Colin
> >
> >
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
