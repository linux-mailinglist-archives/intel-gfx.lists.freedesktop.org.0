Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC1403C4053
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Jul 2021 02:18:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5190189B95;
	Mon, 12 Jul 2021 00:18:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x332.google.com (mail-ot1-x332.google.com
 [IPv6:2607:f8b0:4864:20::332])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0544D89B95
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Jul 2021 00:18:47 +0000 (UTC)
Received: by mail-ot1-x332.google.com with SMTP id
 75-20020a9d08510000b02904acfe6bcccaso16937837oty.12
 for <intel-gfx@lists.freedesktop.org>; Sun, 11 Jul 2021 17:18:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:date:message-id:in-reply-to:references:user-agent:subject
 :mime-version; bh=7h96D+Mzxq/Kk/i2SrPGQj6S2CWTqeKE+UC6oFHQfg4=;
 b=PWkjBpAsjb2RUvsveoI5TqgZNKZgo4m8DEOMf8+QtwS+8DF5Isxpw1eXuFJ/5OK0fa
 0KurO6NHi/KB+xahuFhs+tGgukhdAZ4NI9K3sXt3jcXVcUuXWzbiyOD4HOZYzHMAlHR/
 mCR0S395OXgwtwAJLnWOb2xh2b8c6WxGCvTVl1Mv26LPJSPIQ5oI8HEka96Nnx/b5h9x
 oN5EvA7hKS4BbpuLBoX7TTKvIn0w3R5iOpZMR4Pi+hgIh1a6/VTIm7CRWR9g2Ul8lexl
 2ECyCnLGHZxJXXPvgzt5pcsZx7RnmaPPp8ScMSEKFW+vnzq6g4G6d96txMRs/Mo9zbdO
 GemA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:date:message-id:in-reply-to:references
 :user-agent:subject:mime-version;
 bh=7h96D+Mzxq/Kk/i2SrPGQj6S2CWTqeKE+UC6oFHQfg4=;
 b=CZLoh3zBTvBpDStSmN9FIIpRXqyTlKkbjG58RJrjweHfolmhIof/f9rL6O8mSiJCTI
 thbE1AmhuRcyJbep5STvfQZyJTQWelavf+Q6uZo00zDHD/aTlhrRPj8ybue79hZoBLzQ
 RNqzqd9RkdmuoDNljqqIWD6qAMmLGr2HbkwLYOe/ocElFns1Eu+ers74NSwSqtwS/2pC
 1LINWiRB8YhRIrSwYCLeGOvUIxw6uw0DBGSRXADCzak3BScJCC+/CHPH7O1ktfupEzfy
 cVXWXomAUWttEOsct6HEV32kYv4n5/oafRX/QLkH/EOAJyxWTghyqkLcKfOVg+ewYjjs
 zPyA==
X-Gm-Message-State: AOAM531N5SNHDjVKxB8Ov7TWx2m1qYu3kYTXPPnWTIntn1YuC567sfDI
 BpXI4RPF2HwJpnbkMKpP7h6VlNsBI0oZKg==
X-Google-Smtp-Source: ABdhPJz0DBFfgaQzfjG/VSfcG1iNzyDso1lYEJz/HdwcDcaTtBg+Fvpi6wtJeYghnG95Mm9V89q/tg==
X-Received: by 2002:a05:6830:18ca:: with SMTP id
 v10mr32787866ote.299.1626049125999; 
 Sun, 11 Jul 2021 17:18:45 -0700 (PDT)
Received: from [100.64.204.134] ([209.107.186.11])
 by smtp.gmail.com with ESMTPSA id v2sm2820891ots.8.2021.07.11.17.18.45
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 11 Jul 2021 17:18:45 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: <intel-gfx@lists.freedesktop.org>,
 Patchwork <patchwork@emeril.freedesktop.org>
Date: Sun, 11 Jul 2021 19:18:43 -0500
Message-ID: <17a981492b8.2817.c6988b7ea6112e3e892765a0d4287e0c@jlekstrand.net>
In-Reply-To: <162597720046.15484.15515482397580390384@emeril.freedesktop.org>
References: <20210711035336.803025-1-jason@jlekstrand.net>
 <162597720046.15484.15515482397580390384@emeril.freedesktop.org>
User-Agent: AquaMail/1.30.0-1826 (build: 103000001)
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Get_rid_of_fence_error_propagation_=28rev3=29?=
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
Content-Type: multipart/mixed; boundary="===============0964325284=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.
--===============0964325284==
Content-Type: multipart/alternative; boundary="17a981495c843c62817f54e143"

This is a multi-part message in MIME format.
--17a981495c843c62817f54e143
Content-Type: text/plain; format=flowed; charset="UTF-8"
Content-Transfer-Encoding: 8bit

CI is being dumb. This trybot should be identical: 
https://patchwork.freedesktop.org/series/90705/

On July 10, 2021 23:20:01 Patchwork <patchwork@emeril.freedesktop.org> wrote:
> Patch DetailsSeries:drm/i915: Get rid of fence error propagation (rev3)
> URL:https://patchwork.freedesktop.org/series/90891/
> State:failure
>
> Couldn't find any build artifact matching "Test-with: Test-with: 
> 20210711035204.802908-1-jason@jlekstrand.net"
> Check that the msg-id is correct and make sure that it had been built.


--17a981495c843c62817f54e143
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.=
w3.org/TR/html4/loose.dtd">
<html>
<head>
<style id=3D"css-table-select" type=3D"text/css">
   #aqm-original td {
padding: 2pt;
} /* style */

  </style>
</head>
<body>
<div dir=3D"auto">
<div dir=3D"auto">CI is being dumb. This trybot should be identical: <a hre=
f=3D"https://patchwork.freedesktop.org/series/90705/">https://patchwork.fre=
edesktop.org/series/90705/</a></div><div dir=3D'auto'><br></div>
<div id=3D"aqm-original" style=3D"color: black;">

<!-- body start -->
<div class=3D"aqm-original-body">


<div style=3D"color: black;">
<p style=3D"color: black; font-size: 10pt; font-family: sans-serif; margin:=
 8pt 0;">On July 10, 2021 23:20:01 Patchwork &lt;patchwork@emeril.freedeskt=
op.org&gt; wrote:</p>
<blockquote type=3D"cite" class=3D"gmail_quote" style=3D"margin: 0 0 0 0.75=
ex; border-left: 1px solid #808080; padding-left: 0.75ex;">
<b>Patch Details</b>
<table>
<tbody><tr><td><b>Series:</b></td><td>drm/i915: Get rid of fence error prop=
agation (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/90891/">https://patchwork.freedesktop.org/series/90891/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

</tbody></table>


    <p>Couldn't find any build artifact matching "Test-with: Test-with: 202=
10711035204.802908-1-jason@jlekstrand.net"<br>
Check that the msg-id is correct and make sure that it had been built.</p>

</blockquote>
</div>
</div>
<!-- body end -->

</div><div dir=3D"auto"><br></div>
</div></body>
</html>

--17a981495c843c62817f54e143--


--===============0964325284==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0964325284==--

