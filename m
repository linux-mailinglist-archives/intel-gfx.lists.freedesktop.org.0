Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6238E3A2FC1
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jun 2021 17:47:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 174C56ED64;
	Thu, 10 Jun 2021 15:47:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com
 [IPv6:2607:f8b0:4864:20::234])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 053276E49B
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Jun 2021 15:40:57 +0000 (UTC)
Received: by mail-oi1-x234.google.com with SMTP id t140so2604270oih.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Jun 2021 08:40:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jIeOXVZdX3oss7/1RmWBNPIezQSeenQ/7A4FW9ywRDo=;
 b=AS8+jF/qVkTPU8/koMEES0Y3StOcif6labsTuHWKlsV87lalI6EK6YupX1A8t83FJV
 CQ8RxtGouzYSsWJQQNszeTqhqrxbM/p/vv2QLT2k+N/tirlWatqUqYXKaka50zMQ+QlP
 8sm9ge1jMnNbAa+BG5iyUMqSlxSaH074NH5MJ7Awpg7PogVHgIa1nPFQhseHAfZj39L3
 7NmjFg9Z4GS0nfMllprS/NGNJU5GfOgvliaGyUa8sBYAc5lE9B+X/3V1K5/PPxQ3F3WC
 ySECIccK7K5+N8Siq+GLR/wwA8NWv2xu4S/yWtgvkmZOJqQ29tYelHqFQfOleXe8HctU
 CaBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jIeOXVZdX3oss7/1RmWBNPIezQSeenQ/7A4FW9ywRDo=;
 b=V5QdzpDGB3B/LlmQTDN0cCEJnYOZMFbCH0T8QlMFgVQKqqPbcMQ+xs+TJOeRef0ILW
 9mN3biMKO9E9mRb2eEpBfVSNJiWv/RyvCUEaDF+KsO5hBroPimnbaA/jTNVStzhO5iKV
 y6/scAfy9Vv7pL6uiGm9k2ouhD+fHyL6EtA9mhjpXgJEKHJDtMTQWLSFOWRQSjiItr/a
 Ou2YIrS9qJK7uBa4NpfmwcxZbfKYRrpggITZu3EoYQyNHnf2tp3KynusFJ+0rdPRreub
 A1heomf/UTvRNUmuBIDgmF1lt2lpV6UKrgqvpIKatBcrFNs2wToaY3vcY41yW5Ytotg+
 zvaA==
X-Gm-Message-State: AOAM53058qOC4Gl4QyMufm5mLveanRsPYXPk7KpO/pkacfHNtwjbLqOu
 QNyiJymyI36uRhpLlRFQOr8VohsI+pxy9uLUMoNUUQ==
X-Google-Smtp-Source: ABdhPJyqbdXAyn4whN6gEhpiSFX5lOGReknxmYTjBobcqUZp7JqIBse5vTvv4zisINtvdGX+2FwkEMQ+HgVSRrM5yeM=
X-Received: by 2002:a54:408b:: with SMTP id i11mr3976129oii.132.1623339657061; 
 Thu, 10 Jun 2021 08:40:57 -0700 (PDT)
MIME-Version: 1.0
References: <548dd463-3942-00a1-85c3-232897dea1a3@canonical.com>
 <162332615476.15946.17135355064135638083@jlahtine-mobl.ger.corp.intel.com>
In-Reply-To: <162332615476.15946.17135355064135638083@jlahtine-mobl.ger.corp.intel.com>
From: Jesse Barnes <jsbarnes@google.com>
Date: Thu, 10 Jun 2021 08:40:45 -0700
Message-ID: <CAJmaN==rk+C_C_-avQ9vuC8LkJbgL=P3by0+p4LC9dZN_Urv4g@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============1214586668=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1214586668==
Content-Type: multipart/alternative; boundary="0000000000009c528c05c46b37e9"

--0000000000009c528c05c46b37e9
Content-Type: text/plain; charset="UTF-8"

It may be ok to drop this driver entirely now too; I doubt anyone is
relying on GPU turbo in Ironlake for anything critical anymore.  That would
allow for some simplifications in i915 too if it's still supported.

Jesse

On Thu, Jun 10, 2021 at 4:56 AM Joonas Lahtinen <
joonas.lahtinen@linux.intel.com> wrote:

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
> >  871 static u32 get_cpu_power(struct ips_driver *ips, u32 *last, int
> period)
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
> According to git blame code seems to have been disabled intentionally by
> the
> following commit:
>
> commit 96f3823f537088c13735cfdfbf284436c802352a
> Author: Jesse Barnes <jbarnes@virtuousgeek.org>
> Date:   Tue Oct 5 14:50:59 2010 -0400
>
>     [PATCH 2/2] IPS driver: disable CPU turbo
>
>     The undocumented interface we're using for reading CPU power seems to
> be
>     overreporting power.  Until we figure out how to correct it, disable
> CPU
>     turbo and power reporting to be safe.  This will keep the CPU within
> default
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
>

--0000000000009c528c05c46b37e9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">It may be ok to drop this driver entirely now too; I doubt=
 anyone is relying on GPU turbo in Ironlake for anything critical anymore.=
=C2=A0 That would allow for some simplifications in i915 too if it&#39;s st=
ill supported.<div><br></div><div>Jesse</div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jun 10, 2021 at 4:56 A=
M Joonas Lahtinen &lt;<a href=3D"mailto:joonas.lahtinen@linux.intel.com">jo=
onas.lahtinen@linux.intel.com</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex">(Address for Hans was corrupt in previous mess=
age, which confused my mail<br>
client. Sorry for duplicate message, the other is without From: field).<br>
<br>
+ Jesse<br>
<br>
Quoting Colin Ian King (2021-06-09 14:50:07)<br>
&gt; Hi,<br>
&gt; <br>
&gt; I was reviewing some old unassigned variable warnings from static<br>
&gt; analysis by Coverity and found an issue introduced with the following<=
br>
&gt; commit:<br>
&gt; <br>
&gt; commit aa7ffc01d254c91a36bf854d57a14049c6134c72<br>
&gt; Author: Jesse Barnes &lt;<a href=3D"mailto:jbarnes@virtuousgeek.org" t=
arget=3D"_blank">jbarnes@virtuousgeek.org</a>&gt;<br>
&gt; Date:=C2=A0 =C2=A0Fri May 14 15:41:14 2010 -0700<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0x86 platform driver: intelligent power sharing driv=
er<br>
&gt; <br>
&gt; The analysis is as follows:<br>
&gt; <br>
&gt; drivers/platform/x86/intel_ips.c<br>
&gt; <br>
&gt;=C2=A0 871 static u32 get_cpu_power(struct ips_driver *ips, u32 *last, =
int period)<br>
&gt;=C2=A0 872 {<br>
&gt;=C2=A0 873=C2=A0 =C2=A0 =C2=A0 =C2=A0 u32 val;<br>
&gt;=C2=A0 874=C2=A0 =C2=A0 =C2=A0 =C2=A0 u32 ret;<br>
&gt;=C2=A0 875<br>
&gt;=C2=A0 876=C2=A0 =C2=A0 =C2=A0 =C2=A0 /*<br>
&gt;=C2=A0 877=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* CEC is in joules/65535.=
=C2=A0 Take difference over time to<br>
&gt;=C2=A0 878=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* get watts.<br>
&gt;=C2=A0 879=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*/<br>
&gt;=C2=A0 880=C2=A0 =C2=A0 =C2=A0 =C2=A0 val =3D thm_readl(THM_CEC);<br>
&gt;=C2=A0 881<br>
&gt;=C2=A0 882=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* period is in ms and we want mW=
 */<br>
&gt;=C2=A0 883=C2=A0 =C2=A0 =C2=A0 =C2=A0 ret =3D (((val - *last) * 1000) /=
 period);<br>
&gt; <br>
&gt; Unused value (UNUSED_VALUE)<br>
&gt; assigned_value:=C2=A0 Assigning value from ret * 1000U / 65535U to ret=
 here,<br>
&gt; but that stored value is not used.<br>
&gt; <br>
&gt;=C2=A0 884=C2=A0 =C2=A0 =C2=A0 =C2=A0 ret =3D (ret * 1000) / 65535;<br>
&gt;=C2=A0 885=C2=A0 =C2=A0 =C2=A0 =C2=A0 *last =3D val;<br>
&gt;=C2=A0 886<br>
&gt;=C2=A0 887=C2=A0 =C2=A0 =C2=A0 =C2=A0 return 0;<br>
&gt;=C2=A0 888 }<br>
&gt; <br>
&gt; I&#39;m really not sure why ret is being calculated on lines 883,884 a=
nd not<br>
&gt; being used. Should that be *last =3D ret on line 885? Looks suspect an=
yhow.<br>
<br>
According to git blame code seems to have been disabled intentionally by th=
e<br>
following commit:<br>
<br>
commit 96f3823f537088c13735cfdfbf284436c802352a<br>
Author: Jesse Barnes &lt;<a href=3D"mailto:jbarnes@virtuousgeek.org" target=
=3D"_blank">jbarnes@virtuousgeek.org</a>&gt;<br>
Date:=C2=A0 =C2=A0Tue Oct 5 14:50:59 2010 -0400<br>
<br>
=C2=A0 =C2=A0 [PATCH 2/2] IPS driver: disable CPU turbo<br>
<br>
=C2=A0 =C2=A0 The undocumented interface we&#39;re using for reading CPU po=
wer seems to be<br>
=C2=A0 =C2=A0 overreporting power.=C2=A0 Until we figure out how to correct=
 it, disable CPU<br>
=C2=A0 =C2=A0 turbo and power reporting to be safe.=C2=A0 This will keep th=
e CPU within default<br>
=C2=A0 =C2=A0 limits and still allow us to increase GPU frequency as needed=
.<br>
<br>
Maybe wrap the code after thm_readl() in #if 0 in case somebody ends up<br>
wanting to fix it? Or eliminate completely.<br>
<br>
In theory the thm_readl() may affect the system behavior so would not<br>
remove that for extra paranoia.<br>
<br>
Regards, Joonas<br>
<br>
&gt; Colin<br>
&gt; <br>
&gt; <br>
</blockquote></div>

--0000000000009c528c05c46b37e9--

--===============1214586668==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1214586668==--
