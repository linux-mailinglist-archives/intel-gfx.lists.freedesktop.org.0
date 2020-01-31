Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E3E4E14F3D4
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 22:35:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BFE56FBF2;
	Fri, 31 Jan 2020 21:35:27 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com
 [IPv6:2a00:1450:4864:20::544])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2E996E9AD
 for <Intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 14:05:26 +0000 (UTC)
Received: by mail-ed1-x544.google.com with SMTP id p23so7892155edr.5
 for <Intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 06:05:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=9IKqpnwwrykiW85GeFOFbpJf9Qkv9AygbSAt1ehTp4o=;
 b=TlY+ynxjmth1UUPZDJdYTrc4o3EfxejsSgNBK6FX0JWmKVnY3i1Kc4liIoqcwhXQI4
 LRED+Zz/qDPZrdGNrWfz1aJC5AZ2y0tWuLub5Rj1OJoQW2rv+1ZTvu7CNkBgEQBBgG7U
 FJVA+aeicIUoJaQbo/ChMjnR3qROVvkBvbehwhEQ9zQa6TZtnjAYjqlnPm9jl6X+h2KJ
 zhMPn6H5nBTOOgIR3/MuZA4EWtB7S5qK/UOkwYx6AxgmHij3w0psQ68IOd2mxOa6OTFo
 8NEXbwS0ZBhOzMsgv9eckrdBlHd3PbHI8Ag45p9s9y9zMzkhDJQdc4gqREl4Ygrfm2Yi
 c84g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=9IKqpnwwrykiW85GeFOFbpJf9Qkv9AygbSAt1ehTp4o=;
 b=sFP3BCEXv42+m7jHfCdOm/qXi8JJQjMUNA7bhPXBjG2WzQc+3DtdfBQk2T14lIUUhP
 M73jvcCUaJ9UhRYTATT/ix9UU71AKNg3vCgHf5dq+zylUOeU6Dk0jC2Ll/loy5I9uVwo
 1tpz4rnkEXq4MvwAGg4RL2QYkntzHneyG9CPEEVdFFHfLVYGOU8a/PtV5N65Dv/fvMOO
 eiWeNPtjTFpfYp6UK7ExVO/Ys0FOOQZV2u5Evd2g6i2LAgl4QHwvBgDPX8XAxi3nzDwb
 2V1S5iU5y/rvjUaA4Q3uahSssTicfDYX/iKUfZKNZXTzWJOVhsTWjSGW6d0iqb/wTgEn
 uTNg==
X-Gm-Message-State: APjAAAUXBMpe/zADTOgjU+QDQkBkcB9iGCQoJiSTeUm2wW8tB0XW+vEn
 d201eEAyXthqmKvo4dhWcqmSetx+4uonE2KwE3KhBGll
X-Google-Smtp-Source: APXvYqyOUKl2mCKZnR+23VGwjNJvSk2s9VIcUgUJZJO6BDCo9qkQ6Imy3tY0CEJ9DWFZzJEzS1bSx0OcyXvJrDxlCO8=
X-Received: by 2002:a50:d78e:: with SMTP id w14mr414738edi.20.1580479525113;
 Fri, 31 Jan 2020 06:05:25 -0800 (PST)
MIME-Version: 1.0
From: Egor Suldin <rd3tap@gmail.com>
Date: Fri, 31 Jan 2020 17:05:13 +0300
Message-ID: <CAEtm4fWUteSJkXUHiz0gcqjLSe+Lg36U7dJOaTGRo6_noLbFOw@mail.gmail.com>
To: Intel-gfx@lists.freedesktop.org
X-Mailman-Approved-At: Fri, 31 Jan 2020 21:35:26 +0000
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/tracepoints: Don't compile-out
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
Content-Type: multipart/mixed; boundary="===============1484295281=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1484295281==
Content-Type: multipart/alternative; boundary="000000000000ab50cf059d701055"

--000000000000ab50cf059d701055
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
on the system even if you use tools from Intel. Do you have ETA for
accepting this patch?

Thanks,
Egor

--000000000000ab50cf059d701055
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi!</div><div>I use GPUVis and now Intel Vtune Profil=
er. These tools don&#39;t work out-of-the-box on all Linux based systems fo=
r Intel integrated graphics.</div><div>It is needed to rebuild at least i91=
5 module. And each time when the kernel is updated it is needed to rebuild =
i915 module again.</div><div></div><div><br></div><div>&gt; No numbers from=
 (micro-)bechmarks showing how small the impact of doing<br></div><div>&gt;=
 this is? I thought John was compiling this data. It will be just a no-op<b=
r></div><div>&gt; on the fast path, but a bit more generated code.</div><di=
v>Have you collected the results? If not, I&#39;ve done it for you:</div><d=
iv>
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
s from Intel. Do you have ETA for accepting this patch?<br></div><div></div=
><div><br></div><div>Thanks,</div><div>Egor<br></div><div>

</div>

</div>

</div>

--000000000000ab50cf059d701055--

--===============1484295281==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1484295281==--
