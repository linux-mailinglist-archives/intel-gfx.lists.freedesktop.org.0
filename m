Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D186B370476
	for <lists+intel-gfx@lfdr.de>; Sat,  1 May 2021 02:35:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6274C6F61B;
	Sat,  1 May 2021 00:35:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x334.google.com (mail-ot1-x334.google.com
 [IPv6:2607:f8b0:4864:20::334])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D0C76F616
 for <intel-gfx@lists.freedesktop.org>; Sat,  1 May 2021 00:35:44 +0000 (UTC)
Received: by mail-ot1-x334.google.com with SMTP id
 n32-20020a9d1ea30000b02902a53d6ad4bdso120206otn.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Apr 2021 17:35:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:date:message-id:in-reply-to:references:user-agent
 :subject:mime-version;
 bh=lQRYmgCaPlyiQPSqhkt/k7ys2QwwAU2JroYC2TvH5sg=;
 b=iDq/OAMgq1+bYj3cx4hL4Gty3kzsK9P+6LgdZA0aO0rDJV03YmfLGuJW4mWexFiR/L
 /5oGvTXLsDdJ7HSZUv9Hkf24emWesFRGwzQa6rEjIzVM/XxJB3mxt5io39L7qFBm1qSx
 TcI7KyIUBC1gb6qhJZjDxZ7gyXjSOqw618RlvPnsw1PVtvZ0kGTW4gDd6EX5Sx5ngJwE
 kdVWw+NWH7dBz0d78XNTBQbK1ooG6oYeyFGp2VBlxVmdmWLIHfj4/xAESr2fQ3ozFR2n
 d56nUBMs32j1Yf84AGGGWz1/KE5grBjpszxZm+AxUV8NXz9PxGdWHBXGYKPsjfJ82WG3
 bxWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:subject:mime-version;
 bh=lQRYmgCaPlyiQPSqhkt/k7ys2QwwAU2JroYC2TvH5sg=;
 b=MoSYtn5ww85uxQAkr22I6fedYaiwuhjOzj+QXi5ayWaszPZ55Pp7Hmx3H5XcU39UCf
 cepLhovaN75K0NMRO433KAueisiS2RGJdwsfZldqX1J9j7+rbjTCtkkGw+xHIhpBO4nU
 2aDo176yssqTefP5cTpXcLtavN7baFg42QBFHYXMwCHuzFspj44HdH3weiKGYqoLEX16
 4068gkYJahA440FeAbaQ26eDG1isGOS/rEAORjRadqvqnrkfKvWg+zedb3Lg3Wx5k46/
 IBlECrh0fkYwz6r4mwnCE2lzI9PEggvzd+PQLGRUFb2Ue6mULiJsWzW96BjENz/JnjAi
 2LqQ==
X-Gm-Message-State: AOAM53262FSOURUNc6WJfabPbYuRJ0I7Qm805FZroXvrXbUA7PX4/6ZZ
 FME2GHszzS9mdLJRnEYUqVhjFg==
X-Google-Smtp-Source: ABdhPJzuLHVoBS6Rdsx5oVjdZ2PDdSbRZd0RQz50RCqtY31pa4tU6xDtrhGT5pNZAUm6M6rmxcL5HA==
X-Received: by 2002:a05:6830:2e1:: with SMTP id
 r1mr5778764ote.195.1619829344166; 
 Fri, 30 Apr 2021 17:35:44 -0700 (PDT)
Received: from [100.64.196.46] ([209.107.186.11])
 by smtp.gmail.com with ESMTPSA id a4sm514615oib.17.2021.04.30.17.35.42
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 30 Apr 2021 17:35:43 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>,
 Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Date: Fri, 30 Apr 2021 19:35:41 -0500
Message-ID: <179255a3b48.2817.c6988b7ea6112e3e892765a0d4287e0c@jlekstrand.net>
In-Reply-To: <87czubbco1.wl-ashutosh.dixit@intel.com>
References: <20210429003410.69754-1-umesh.nerlige.ramappa@intel.com>
 <20210429003410.69754-2-umesh.nerlige.ramappa@intel.com>
 <CAOFGe95O_Q09p4c5Sru0_5E-tBG3DFGm+f-uX-_YHx-UHLOBUA@mail.gmail.com>
 <20210430222609.GC38093@orsosgc001.ra.intel.com>
 <87czubbco1.wl-ashutosh.dixit@intel.com>
User-Agent: AquaMail/1.29.1-1808 (build: 102900007)
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/1] i915/query: Correlate engine and cpu
 timestamps with better accuracy
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
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============0065759134=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.
--===============0065759134==
Content-Type: multipart/alternative; boundary="179255a3cb05f6d28177d11c5a"

This is a multi-part message in MIME format.
--179255a3cb05f6d28177d11c5a
Content-Type: text/plain; format=flowed; charset="us-ascii"
Content-Transfer-Encoding: 8bit

On April 30, 2021 18:00:58 "Dixit, Ashutosh" <ashutosh.dixit@intel.com> wrote:

> On Fri, 30 Apr 2021 15:26:09 -0700, Umesh Nerlige Ramappa wrote:
>>
>> Looks like the engine can be dropped since all timestamps are in sync. I
>> just have one more question here. The timestamp itself is 36 bits.  Should
>> the uapi also report the timestamp width to the user OR should I just
>> return the lower 32 bits of the timestamp?

Yeah, I think reporting the timestamp width is a good idea since we're 
reporting the period/frequency here.

>>
> How would exposing only the lower 32 bits of the timestamp work?
>
> The way to avoid exposing the width would be to expose the timestamp as a
> regular 64 bit value. In the kernel engine state, have a variable for the
> counter and keep on accumulating that (on each query) to full 64 bits in
> spite of the 36 bit HW counter overflow.

That's doesn't actually work since you can query the 64-bit timestamp value 
from the GPU. The way this is handled in Vulkan is that the number of 
timestamp bits is reported to the application as a queue property.

--Jason
>



--179255a3cb05f6d28177d11c5a
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.=
w3.org/TR/html4/loose.dtd">
<html>
<body>
<div dir=3D"auto">
<div dir=3D"auto"><span style=3D"font-size: 12pt;">On April 30, 2021 18:00:=
58 "Dixit, Ashutosh" &lt;ashutosh.dixit@intel.com&gt; wrote:</span></div><d=
iv id=3D"aqm-original" style=3D"color: black;">
<div><br></div>
<blockquote type=3D"cite" class=3D"gmail_quote" style=3D"margin: 0 0 0 0.75=
ex; border-left: 1px solid #808080; padding-left: 0.75ex;">
<div dir=3D"auto">On Fri, 30 Apr 2021 15:26:09 -0700, Umesh Nerlige Ramappa=
 wrote:</div>
<blockquote type=3D"cite" class=3D"gmail_quote" style=3D"margin: 0 0 0 0.75=
ex; border-left: 1px solid #0099CC; padding-left: 0.75ex;">
<div dir=3D"auto"><br></div>
<div dir=3D"auto">Looks like the engine can be dropped since all timestamps=
 are in sync. I</div>
<div dir=3D"auto">just have one more question here. The timestamp itself is=
 36 bits. &nbsp;Should</div>
<div dir=3D"auto">the uapi also report the timestamp width to the user OR s=
hould I just</div>
<div dir=3D"auto">return the lower 32 bits of the timestamp?</div></blockqu=
ote></blockquote></div><div dir=3D"auto"><br></div><div dir=3D"auto">Yeah, =
I think reporting the timestamp width is a good idea since we're reporting =
the period/frequency here.</div><div dir=3D"auto"><br></div><div id=3D"aqm-=
original" style=3D"color: black;" dir=3D"auto"><blockquote type=3D"cite" cl=
ass=3D"gmail_quote" style=3D"margin: 0 0 0 0.75ex; border-left: 1px solid #=
808080; padding-left: 0.75ex;"><blockquote type=3D"cite" class=3D"gmail_quo=
te" style=3D"margin: 0 0 0 0.75ex; border-left: 1px solid #0099CC; padding-=
left: 0.75ex;"><div dir=3D"auto"></div></blockquote>
<div dir=3D"auto">How would exposing only the lower 32 bits of the timestam=
p work?</div>
<div dir=3D"auto"><br></div>
<div dir=3D"auto">The way to avoid exposing the width would be to expose th=
e timestamp as a</div>
<div dir=3D"auto">regular 64 bit value. In the kernel engine state, have a =
variable for the</div>
<div dir=3D"auto">counter and keep on accumulating that (on each query) to =
full 64 bits in</div>
<div dir=3D"auto">spite of the 36 bit HW counter overflow.</div></blockquot=
e></div><div dir=3D"auto"><br></div><div dir=3D"auto">That's doesn't actual=
ly work since you can query the 64-bit timestamp value from the GPU. The wa=
y this is handled in Vulkan is that the number of timestamp bits is reporte=
d to the application as a queue property.</div><div dir=3D"auto"><br></div>=
<div dir=3D"auto">--Jason</div><div id=3D"aqm-original" style=3D"color: bla=
ck;" dir=3D"auto"><blockquote type=3D"cite" class=3D"gmail_quote" style=3D"=
margin: 0 0 0 0.75ex; border-left: 1px solid #808080; padding-left: 0.75ex;=
">
</blockquote>
</div><div dir=3D"auto"><br></div>
</div></body>
</html>

--179255a3cb05f6d28177d11c5a--


--===============0065759134==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0065759134==--

