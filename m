Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A04EB14F3D7
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 22:35:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F7E16FBF4;
	Fri, 31 Jan 2020 21:35:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com
 [IPv6:2a00:1450:4864:20::541])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A25AF6E9B6
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 14:50:53 +0000 (UTC)
Received: by mail-ed1-x541.google.com with SMTP id e10so8016890edv.9
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 06:50:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=rmDzB40SFo8FH/064o8OJtcjSAFb8OG30BItrnUomNI=;
 b=auhYkKjQcWPloxllUmCLsj733jXwS65SHSHo0qLbDDvXcNbWdRzutV/FPfxyrFDCHs
 ZYlUKsmRUUtoG3xH3UlsxeyaKdpuHtiAiodvZnPw+mZHyPTMba76A8sWrC3Podgq2jJ4
 7arnh4wlLMNyXEdPJzM/TZiMqnwO5uMNFRlp2W+XCGRILp0sj84u1TbZv16ngqqXEHTX
 lTRF3Nfs97/GscceyM2ogkcOTl/IvohgKTsScUxavJT/x+LkE+jTWULaIXbN2VK/3G4p
 WpY8uLeDCCdF5JoUiHOwd1AYEkzQ+doNUZsHcLvJhp6o/QmiPz1qHMZVkWJmtVm5Yxv8
 aXkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=rmDzB40SFo8FH/064o8OJtcjSAFb8OG30BItrnUomNI=;
 b=maqiwiT4zafxqAKmbk2yb9UIREQ0c+jn2aZ7NT8omwcbQnlVC4BbzHIe6uhHHQTC0V
 UbSHJ5ETRizQr/GfldsnX0a1boxhaY2sbN5e6BzMxLe9gfF1XDPgoDJsZ38ORVCHpwxT
 JAidPqyr6fz7JBsyAQjIQLp+JdrwwPR8cey7GMutn1p9+wloF6wyyzuj+D0kkuErsMPg
 hDpCOTPe0u1AnEeJoObeAqkAIubW4CHZmUxHeSIXTc6MbN5/Bm1Df0b6tjPU9rjhfeKI
 NLbrK/do6/COk0DizINH3JyUKoRjtr3J5YLLRzNwENfU2GojNkFLs+TYCR4M4hrOOo2B
 ewYA==
X-Gm-Message-State: APjAAAXpJiOiNlhZl51vNCXHSatnrpJqMufXurQthiIkpd3rSlA+/9px
 19Uoilbv+UlyX/kmJxHFvZU20i+UJzI95lW4YsJi9odt
X-Google-Smtp-Source: APXvYqxT8WBUwaXGw6Osa2QFxiWpf7kEd6Rcv93DEZrwaC8DmtMC11VlSfbvQhWnY4lPprfVmMebNkpeM8VYRNnqTfI=
X-Received: by 2002:aa7:dd95:: with SMTP id g21mr587326edv.355.1580482252122; 
 Fri, 31 Jan 2020 06:50:52 -0800 (PST)
MIME-Version: 1.0
From: Egor Suldin <rd3tap@gmail.com>
Date: Fri, 31 Jan 2020 17:50:40 +0300
Message-ID: <CAEtm4fVuQV1AYDrk1GQmKKJWKf0XszGDNMY5YbpqUe9mR9ukSA@mail.gmail.com>
To: intel-gfx@lists.freedesktop.org
X-Mailman-Approved-At: Fri, 31 Jan 2020 21:35:26 +0000
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/tracepoints: Don't compile-out
 low-level tracepoints
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
Content-Type: multipart/mixed; boundary="===============1434153908=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1434153908==
Content-Type: multipart/alternative; boundary="000000000000362ec5059d70b370"

--000000000000362ec5059d70b370
Content-Type: text/plain; charset="UTF-8"

 Hi!
I use GPUVis and now Intel Vtune Profiler. These tools don't work
out-of-the-box on all Linux based systems for Intel integrated graphics.
It is needed to rebuild at least i915 module. And each time when the kernel
is updated it is needed to rebuild i915 module again.

> No numbers from (micro-)bechmarks showing how small the impact of doing
> this is? I thought John was compiling this data. It will be just a no-op
> on the fast path, but a bit more generated code.
Have you collected the results? If not, I've done it for you:
Benchmark for Metro 2033 Last Light Redux:
w/o events:
1st run aver. fps: 36.06
2nd run aver. fps: 35.87
w events:
1st run aver. fps: 36.05
2nd run aver. fps: 35.92

There is no difference. It was run on Intel Core i9-9900K CPU @ 3.60GHz on
integrated graphics.

> Assuming that will be fine, the only potentially problematic aspect that
> comes to mind is the fact meaning of these tracepoints is a bit
> different between execlists and guc. But maybe that is thinking to low
> level (!) - in fact they are in both cases at points where i915 is
>passing/receiving requests to/from hardware so not an issue?
In my view, it is not an issue. The real issue now that you cannot collect
performance results for Intel GPU
on Linux systems without rebuilding the i915 module. You cannot debug
performance problems
on the system even if you use tools from Intel. Do you have ETA to accept
this patch?

Thanks,
Egor

--000000000000362ec5059d70b370
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">
<div>Hi!</div><div>I use GPUVis and now Intel Vtune Profiler. These=20
tools don&#39;t work out-of-the-box on all Linux based systems for Intel=20
integrated graphics.</div><div>It is needed to rebuild at least i915=20
module. And each time when the kernel is updated it is needed to rebuild
 i915 module again.</div><div><br></div><div>&gt; No numbers from (micro-)b=
echmarks showing how small the impact of doing<br></div><div>&gt; this is? =
I thought John was compiling this data. It will be just a no-op<br></div><d=
iv>&gt; on the fast path, but a bit more generated code.</div><div>Have you=
 collected the results? If not, I&#39;ve done it for you:</div><div>
Benchmark

for Metro 2033 Last Light Redux:</div><div>w/o events:</div><div>1st run av=
er. fps: 36.06</div><div>2nd run aver. fps: 35.87</div><div>w events:</div>=
<div>
<div>1st run aver. fps: 36.05</div><div>2nd run aver. fps: 35.92</div><div>=
<br></div><div>There is no difference. It was run on Intel Core i9-9900K CP=
U @ 3.60GHz on integrated graphics.</div><div><br></div><div>&gt; Assuming =
that will be fine, the only potentially problematic aspect that <br></div><=
div>&gt; comes to mind is the fact meaning of these tracepoints is a bit <b=
r></div><div>&gt; different between execlists and guc. But maybe that is th=
inking to low <br></div><div>&gt; level (!) - in fact they are in both case=
s at points where i915 is <br></div><div>&gt;passing/receiving requests to/=
from hardware so not an issue?</div><div>In my view, it is not an issue. Th=
e real issue now that you cannot collect performance results for Intel GPU<=
br></div><div>on Linux systems without rebuilding the i915 module. You cann=
ot debug performance problems</div><div> on the system even if you use tool=
s from Intel. Do you have ETA to accept this patch?<br></div><div><br></div=
><div>Thanks,</div><div>Egor</div></div>

</div>

--000000000000362ec5059d70b370--

--===============1434153908==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1434153908==--
