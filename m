Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44EEF966445
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2024 16:35:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDBFD10E008;
	Fri, 30 Aug 2024 14:35:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="NI5zAfsW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com
 [209.85.219.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43CB510E008
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Aug 2024 14:35:19 +0000 (UTC)
Received: by mail-qv1-f44.google.com with SMTP id
 6a1803df08f44-6bf7a2035d9so28678386d6.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Aug 2024 07:35:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1725028518; x=1725633318; darn=lists.freedesktop.org;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=2VxmXvnQMrd1wShBdFWtsg5VzFYEYskXHRQWNmfSrhU=;
 b=NI5zAfsWUIsVqC4xIFRG921j7hd3gpTNCRwwytnhGM1sB/8eU6e+R4UuoGS1Vk5n0G
 mfpEGzREeaijw2ku3SSfNC3m4ll3auvoTX5hgFv4vcjovslUQZnk5ir1m1sFF6Rcxqxq
 vqvY5+uu3m6NMsoc8y/ODuX6U5SHIG6qacFFvTcMxUQlKeWY4ECO2TC59bg0oGAxkS8e
 jNXv6wnKSfWtUDIWNQKVivQXJI0m3SS2tqi5LfBYsDKwNaRfMG45MoGArQipkGtXkkWv
 FlUGTbD2MuGj5Lqs9cJOGHz3opkPlX39t8EzLx5gNYuSh5bWgPP4bCBLgkOwsYDcCPgi
 l3eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725028518; x=1725633318;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=2VxmXvnQMrd1wShBdFWtsg5VzFYEYskXHRQWNmfSrhU=;
 b=u/HZ4LFaG6R6SVSdWXewkc/+UqXQ4lhZEOG83JCk4wjDbcYGNYI0lNYfxV6LuVJ/4I
 lywdKsTtwyBa0DnXoxTSHfdlRpYVbfwVki0mn7kgfz9K07e92nEduOvKJHZHp/uVAiWb
 1WBqT0RlkhMra0z/6V5omPn85S2LlxrnpilhEVWw4v8evbHnVpwPhXJncllQnLM5Lm6t
 ZOwDA5NiOpZIHtjVS/XWZFdJ/PCTzOTc2op85RvuxCEG2xzFk9VfpSkC8dHW1i/iMPkp
 loSkx1TjokIAf7ti7ZG0Z6xe5SqvRR1d6CP2yyz+rq4LhvldqgBFncd67YlA4eWDDF0V
 a5LQ==
X-Gm-Message-State: AOJu0YyG3Q39y0h5I0UdvZCtFtMQFb9uSnLygM3jsXKF69Z2HPQtnBN+
 Rg1R0bte77UA4g2iB+kyuZHz83dCWrz8YxAAaYx7QyUIuyWObjmMgW1LlcHnsyaWrsSq3k5Cm4p
 n0Cdzrzy89G9eDono4NazCNOQ/VEJevoxZjk=
X-Google-Smtp-Source: AGHT+IEL/rxCQ0Jv1cvrGxT7qVUKr2bLt0kly4Rpjd0pl0wETieWYr0ZHf8j/9t6zmx65chGS78OFCUsjp+9TriyqQw=
X-Received: by 2002:a05:620a:1726:b0:79e:f745:5445 with SMTP id
 af79cd13be357-7a81206ef16mr351678285a.31.1725028517689; Fri, 30 Aug 2024
 07:35:17 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Maciej_W=C3=B3jcik?= <w8jcik@gmail.com>
Date: Fri, 30 Aug 2024 16:35:06 +0200
Message-ID: <CAAcX7PtQJPv8=hHoFTKkizf+X5PFCiEHd37gvWyt4RDpB5Suyg@mail.gmail.com>
Subject: Lower the speed of I2C for DDC/CI
To: intel-gfx@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="0000000000000643b40620e7802e"
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--0000000000000643b40620e7802e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

DDC/CI is an interface that allows changing of display settings like
brightness, contrast, colors, selection of input.

DDC/CI implemented in i915 driver operates over I2C with a hard-coded speed
of 100KHz.

This speed works for most of the displays, but not all of them.

Would you consider lowering the default speed of I2C to support additional
displays?

Does the change below look acceptable, or do you expect some issues with it=
?

diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c
b/drivers/gpu/drm/i915/display/intel_gmbus.cindex e9e4dcf34..88aba021e
100644--- a/drivers/gpu/drm/i915/display/intel_gmbus.c+++
b/drivers/gpu/drm/i915/display/intel_gmbus.c@@ -200,7 +200,7 @@ bool
intel_gmbus_is_valid_pin(struct drm_i915_private *i915, unsigned int
pin)

 /* Intel GPIO access functions */
 -#define I2C_RISEFALL_TIME 10+#define I2C_RISEFALL_TIME 5

 static inline struct intel_gmbus *
 to_intel_gmbus(struct i2c_adapter *i2c)@@ -916,7 +916,7 @@ int
intel_gmbus_setup(struct drm_i915_private *i915)
 		bus->adapter.retries =3D 1;

 		/* By default use a conservative clock rate */-		bus->reg0 =3D pin |
GMBUS_RATE_100KHZ;+		bus->reg0 =3D pin | GMBUS_RATE_50KHZ;

 		/* gmbus seems to be broken on i830 */
 		if (IS_I830(i915))


I have tested this change by recompiling my system kernel. The change fixes
DDC/CI for one of my displays, while not breaking any other displays that I
had.

What would be even more flexible is some way to change the speed run-time
or boot-time. I can try to implement it if you suggest what mechanism to
use for that. Otherwise, would you accept a simple change of lowering the
speed?

Related issue https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11528

--
Maciej W=C3=B3jcik

--0000000000000643b40620e7802e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>DDC/CI is an interface that allo=
ws changing of display settings like brightness, contrast, colors, selectio=
n of input.</div><div><br>DDC/CI implemented in i915 driver operates over I=
2C with a hard-coded speed of 100KHz.<br><br>This speed works for most of t=
he displays, but not all of them.</div><div><br>Would you consider lowering=
 the default speed of I2C to support additional displays?<br><br>Does the c=
hange below look acceptable, or do you expect some issues with it?<br><pre =
class=3D"gmail-code gmail-highlight" lang=3D"diff"><span class=3D"gmail-gh"=
>diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/=
i915/display/intel_gmbus.c</span>
<span class=3D"gmail-gh">index e9e4dcf34..88aba021e 100644</span>
<span class=3D"gmail-gd">--- a/drivers/gpu/drm/i915/display/intel_gmbus.c</=
span>
<span class=3D"gmail-gi">+++ b/drivers/gpu/drm/i915/display/intel_gmbus.c</=
span>
<span class=3D"gmail-p">@@ -200,7 +200,7 @@</span> bool intel_gmbus_is_vali=
d_pin(struct drm_i915_private *i915, unsigned int pin)
=20
 /* Intel GPIO access functions */
=20
<span class=3D"gmail-gd">-#define I2C_RISEFALL_TIME 10</span>
<span class=3D"gmail-gi">+#define I2C_RISEFALL_TIME 5</span>
=20
 static inline struct intel_gmbus *
 to_intel_gmbus(struct i2c_adapter *i2c)
<span class=3D"gmail-p">@@ -916,7 +916,7 @@</span> int intel_gmbus_setup(st=
ruct drm_i915_private *i915)
 		bus-&gt;adapter.retries =3D 1;
=20
 		/* By default use a conservative clock rate */
<span class=3D"gmail-gd">-		bus-&gt;reg0 =3D pin | GMBUS_RATE_100KHZ;</span=
>
<span class=3D"gmail-gi">+		bus-&gt;reg0 =3D pin | GMBUS_RATE_50KHZ;</span>
=20
 		/* gmbus seems to be broken on i830 */
 		if (IS_I830(i915))
</pre><br>I have tested this change by recompiling my system kernel. The ch=
ange fixes DDC/CI for one of my displays, while not breaking any other disp=
lays that I had.<br><br>What would be even more flexible is some way to cha=
nge the speed run-time or boot-time. I can try to implement it if you sugge=
st what mechanism to use for that. Otherwise, would you accept a simple cha=
nge of lowering the speed?<br><br>Related issue=C2=A0<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/11528">https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/11528</a><br><br>--<br>Maciej W=C3=B3jcik<=
br></div></div>

--0000000000000643b40620e7802e--
