Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 911DF3384A4
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Mar 2021 05:31:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EC566F418;
	Fri, 12 Mar 2021 04:31:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com
 [IPv6:2607:f8b0:4864:20::22a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 740FA6F416
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Mar 2021 04:31:36 +0000 (UTC)
Received: by mail-oi1-x22a.google.com with SMTP id w195so18948832oif.11
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Mar 2021 20:31:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:date:message-id:in-reply-to:references:user-agent
 :subject:mime-version;
 bh=P7ZFSryoemPw5X1XfPOJ+rZNet/zsDUi+x+BQiS5pCs=;
 b=0TvvU1vSlletijzm1pFi+d98wCVPzftJsTf4nlBrqVD08HoET642ZlVrIcdlgAfE1c
 6KGUmzD0i1ZpZaoV4604NVAXIm1jRWu5KCOEDuiSSF8J1tB+JQ7zyaF32iH9wHOKE/o+
 dqpi1mja6dhx9KUiJGkCGpeLyWBbJVIg9Ed2ufs69EeWQWom+vj5qnp0BrXR0WzZzMhN
 MnpkQpnYR9I/gfRROyegZLhA+91Phf1etvoATzO8+pIc/q4Hw0Igcl+ygY3bwzrmz8PP
 c+IhLBDU0ps9Dr9Nyeyq5dWSffqUz6i4GM1M0S6T9JLkJLOqsGXLZRrHIkARlV7QvNYM
 pS+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:subject:mime-version;
 bh=P7ZFSryoemPw5X1XfPOJ+rZNet/zsDUi+x+BQiS5pCs=;
 b=ScWsqTDuXaywOpy27+Rpk3PAwkTxhJJvmW8UPyLTun4i0rlPgOFY1+Or7p2zIFljXE
 wUOmnnYBVUTI2wfeK02/oN4GFinAb8PCz7ea1vDNrBqfEx8D6K35Bhyu1N6gRJVC6GgW
 trFDi+wnn5WXp7s16itV7lnwNdMJxn65FmMdOtVuHudZVHRtNewMG3WqGepqsHmHsXt/
 aLx55b0S9BdKxxLUha1Fd6msqUoRyddgjROKpBCPIUwrDgc+MZwvM/MQxzJdEy8lfG3i
 Hgfk/GTUeGOt9XWI6RUIdH/HLYDAYpF4McwzQfIoFserQm+qspFzTSx5O6pJjwRUzZ++
 prhQ==
X-Gm-Message-State: AOAM532xRk52rmgcBy2v8spGpK8AtKBPidQcxnVq360RP4/WL222FlFj
 AXGxaQZIlKPSXWqg5nLDq4jemA==
X-Google-Smtp-Source: ABdhPJyO76qzFnJnnf6xVlqK/slevuoJBXRp8IY2ZvZZluntIDEqebY4xmXXPsy9vcISqOxRVzFdHg==
X-Received: by 2002:aca:b489:: with SMTP id d131mr8750178oif.39.1615523495699; 
 Thu, 11 Mar 2021 20:31:35 -0800 (PST)
Received: from [100.78.65.150] ([216.252.221.156])
 by smtp.gmail.com with ESMTPSA id b21sm949902oot.34.2021.03.11.20.31.34
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Mar 2021 20:31:35 -0800 (PST)
From: Jason Ekstrand <jason@jlekstrand.net>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Date: Thu, 11 Mar 2021 22:31:33 -0600
Message-ID: <17824b43488.2817.c6988b7ea6112e3e892765a0d4287e0c@jlekstrand.net>
In-Reply-To: <87sg51un0c.wl-ashutosh.dixit@intel.com>
References: <20210310210049.723206-1-jason@jlekstrand.net>
 <87sg51un0c.wl-ashutosh.dixit@intel.com>
User-Agent: AquaMail/1.28.1-1760 (build: 102800003)
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] i915: Drop legacy execbuffer support
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Type: multipart/mixed; boundary="===============1787273191=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.
--===============1787273191==
Content-Type: multipart/alternative; boundary="----------17824b435e620fc28179155602"

This is a multi-part message in MIME format.
------------17824b435e620fc28179155602
Content-Type: text/plain; format=flowed; charset="us-ascii"
Content-Transfer-Encoding: 8bit


On March 11, 2021 20:26:06 "Dixit, Ashutosh" <ashutosh.dixit@intel.com> wrote:

> On Wed, 10 Mar 2021 13:00:49 -0800, Jason Ekstrand wrote:
>>
>> libdrm has supported the newer execbuffer2 ioctl and using it by default
>> when it exists since libdrm commit b50964027bef249a0cc3d511de05c2464e0a1e22
>> which landed Mar 2, 2010.  The i915 and i965 drivers in Mesa at the time
>> both used libdrm and so did the Intel X11 back-end.  The SNA back-end
>> for X11 has always used execbuffer2.
>>
>> Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
>> ---
>> .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 100 ------------------
>> drivers/gpu/drm/i915/gem/i915_gem_ioctls.h    |   2 -
>> drivers/gpu/drm/i915/i915_drv.c               |   2 +-
>> 3 files changed, 1 insertion(+), 103 deletions(-)
>
> Don't we want to clean up references to legacy execbuffer in
> include/uapi/drm/i915_drm.h too?

I thought about that but Daniel said we should leave them. Maybe a comment 
is in order?

--Jason


------------17824b435e620fc28179155602
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.=
w3.org/TR/html4/loose.dtd">
<html>
<body>
<div dir=3D"auto">
<div dir=3D"auto"><br></div><div dir=3D"auto"><span style=3D"font-size: 12p=
t;">On March 11, 2021 20:26:06 "Dixit, Ashutosh" &lt;ashutosh.dixit@intel.c=
om&gt; wrote:</span></div><div id=3D"aqm-original" style=3D"color: black;">
<div><br></div>
<blockquote type=3D"cite" class=3D"gmail_quote" style=3D"margin: 0 0 0 0.75=
ex; border-left: 1px solid #808080; padding-left: 0.75ex;">
<div dir=3D"auto">On Wed, 10 Mar 2021 13:00:49 -0800, Jason Ekstrand wrote:=
</div>
<blockquote type=3D"cite" class=3D"gmail_quote" style=3D"margin: 0 0 0 0.75=
ex; border-left: 1px solid #0099CC; padding-left: 0.75ex;">
<div dir=3D"auto"><br></div>
<div dir=3D"auto">libdrm has supported the newer execbuffer2 ioctl and usin=
g it by default</div>
<div dir=3D"auto">when it exists since libdrm commit b50964027bef249a0cc3d5=
11de05c2464e0a1e22</div>
<div dir=3D"auto">which landed Mar 2, 2010. &nbsp;The i915 and i965 drivers=
 in Mesa at the time</div>
<div dir=3D"auto">both used libdrm and so did the Intel X11 back-end. &nbsp=
;The SNA back-end</div>
<div dir=3D"auto">for X11 has always used execbuffer2.</div>
<div dir=3D"auto"><br></div>
<div dir=3D"auto">Signed-off-by: Jason Ekstrand &lt;jason@jlekstrand.net&gt=
;</div>
<div dir=3D"auto">---</div>
<div dir=3D"auto">.../gpu/drm/i915/gem/i915_gem_execbuffer.c &nbsp; &nbsp;|=
 100 ------------------</div>
<div dir=3D"auto">drivers/gpu/drm/i915/gem/i915_gem_ioctls.h &nbsp; &nbsp;|=
 &nbsp; 2 -</div>
<div dir=3D"auto">drivers/gpu/drm/i915/i915_drv.c &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; | &nbsp; 2 +-</div>
<div dir=3D"auto">3 files changed, 1 insertion(+), 103 deletions(-)</div>
</blockquote>
<div dir=3D"auto"><br></div>
<div dir=3D"auto">Don't we want to clean up references to legacy execbuffer=
 in</div>
<div dir=3D"auto">include/uapi/drm/i915_drm.h too?</div>
</blockquote>
</div><div dir=3D"auto"><br></div><div dir=3D"auto">I thought about that bu=
t Daniel said we should leave them. Maybe a comment is in order?</div><div =
dir=3D"auto"><br></div><div dir=3D"auto">--Jason</div><div dir=3D"auto"><br=
></div>
</div></body>
</html>

------------17824b435e620fc28179155602--


--===============1787273191==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1787273191==--

