Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F01A5C923A1
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Nov 2025 15:09:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8161310E0DB;
	Fri, 28 Nov 2025 14:09:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="lE9BrNqd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yx1-f54.google.com (mail-yx1-f54.google.com
 [74.125.224.54])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D2C110E0DB
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Nov 2025 14:09:10 +0000 (UTC)
Received: by mail-yx1-f54.google.com with SMTP id
 956f58d0204a3-640f2c9ccbdso1520472d50.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Nov 2025 06:09:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1764338949; x=1764943749; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=lhciBtlz8BBjEvstdHtMcf+DgjMPp5gTBdWSY2wXL0I=;
 b=lE9BrNqdqgPd6vteWEFk3KfVub1bZWGyIu+BCxbXteM4bx8EI3x5774zTVRIF07Hcn
 K+TcHehj/48WsT2Bkm1g+Zgydwitcxagu7o9cXa1y9s+BPSxLYzUPRdClcuFp77Kvfl3
 +kdlUh0VShlqkhOWNIOSmDEQDN+pW3ZuzPclP4nnxyhmmM7SQ6LMw5wensYJ2rEBxWpn
 0C6XNMBgQG0hNegd23f1ab6eDmWmF+eqFPucfji0uMBOV9qkTQwvYpaLWW7CrIHgbn68
 Ynv10ousirf3bS8AmQdD1PIGmIS/MJgY23gIiltpV/r1NprgxCdtJBLaqO5zO1REG2Vh
 vFOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764338949; x=1764943749;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=lhciBtlz8BBjEvstdHtMcf+DgjMPp5gTBdWSY2wXL0I=;
 b=QtavoVOj8p45tzioK+u3hYZSh1f3OoJAaWLWxdAb+hUKS/7fzRhxmv3iunaN0PmLVk
 /5+ip0i55SqqNanyRNgatUXS5gU+omU0O72+8oNvcioFaWXoS7721SV4u4tGTiIbFMp8
 57pxL0voBF8d9XyWwEQ1NRLcxYBeGV5adZG9mgxrg8KuWK8HPXJoqAqvgrFQI57VOYOq
 fdHZLxmO24iSnwY5/qrTiH969K+qLKjOfu6EWJFG3oyTygVBeZeks/uVxE2dD03zGNMF
 vj1dOgggXEJEIPGhdaAWRO/yx+joLnYBOEM2sskUe3kIzpMFm/tmX+O1C2Pp7DF8rKqn
 jvBw==
X-Gm-Message-State: AOJu0YyJsIarkMcwngSRDYh7rbmkU6IO2CSlFtP9WZZOKGRrp8EohUO8
 ze9+poT2ahCymThtzXBT6sJaBRZbF7zrWTUSXnDaXofLbF1Qhskcn1o/1aCldnGHigDDxrrNG/0
 OSmBbfzcfItjNZBDo9GmabcKEVYOkIH8=
X-Gm-Gg: ASbGnctigjyGsHhS4eWv8woO0vvkZbHAtAzI2kJMFbKbAJTnXKzFAU9A7eHKMe7z2kd
 8kemdlcfGYvfBe6/t2d7uhRI3mcGVXZMgvJAoeB7ujDxJqf1orI0TiDZ1rLlywzk2fKp19R9pLa
 TUqKCKTVqDeVBfvv1It0lPRZK0+E6KZ7MbD4ESmKApoorLF6wEUcQ/4u9UyUUEoggReKOcWrWQT
 D2SDfHC/WruYByMOtX24HwhDwsuZv48EPAGe3HNsGotrShsvcR7lL3I/RfC23dhEpqB+slDJy72
 GIUogajxhxcGoZSX+og1FWPCPEf1Pw==
X-Google-Smtp-Source: AGHT+IEuTZSQSha1n8c1igQcV6bgGm0b6xCGrP7FNkA28M5cFTnbI1+R1O2Z2h+/3tavIp/rVeMb//sfNIR8rvfnzZY=
X-Received: by 2002:a05:690e:4189:b0:63f:c529:33df with SMTP id
 956f58d0204a3-643292c2c1cmr10243865d50.16.1764338948898; Fri, 28 Nov 2025
 06:09:08 -0800 (PST)
MIME-Version: 1.0
References: <CADusC6XGSRY8snhf32xY8eT_P2PGp72Ne=-C3TOC=0CqkeKNVA@mail.gmail.com>
 <70da0a931679e4ef5cfdd6864db9a5e33b9192d3@intel.com>
In-Reply-To: <70da0a931679e4ef5cfdd6864db9a5e33b9192d3@intel.com>
From: =?UTF-8?B?15PXoNeZ15DXnCDXodeZ16DXmQ==?= <danielsinai0808@gmail.com>
Date: Fri, 28 Nov 2025 14:08:57 +0000
X-Gm-Features: AWmQ_bnpfX0dIdROLryVhHQcShajUNgnImthop30fDF-ZXqpPM-UTnMuNisnANI
Message-ID: <CADusC6U9ene8w1W19QKgi2m2hdFf=a=As_ASug7A4x6bg6h2hg@mail.gmail.com>
Subject: Re: Question about the GTDRIVER_MAILBOX_DATA0 register in Gen 12.0
 (Tiger Lake)
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="0000000000005002580644a82c07"
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

--0000000000005002580644a82c07
Content-Type: text/plain; charset="UTF-8"

Apologies for slipping to a private thread, this was unintended,
I wanted to thank Jani Nikula for helping out greatly and
confirming that, in fact, the GTDRIVER_MAILBOX_DATA*
registers are the same as their GEN6_PCODE_DATA* counterparts
as defined in the Linux kernel(see first message in the thread).

Thanks again to Jani Nikula for the assistance, this resolves the issue.

--0000000000005002580644a82c07
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"rtl"><div dir=3D"ltr">Apologies for slipping to a private threa=
d, this was unintended,<br></div><div dir=3D"ltr">I wanted to thank Jani Ni=
kula for helping out greatly and<br></div><div dir=3D"ltr">confirming that,=
=C2=A0in fact, the GTDRIVER_MAILBOX_DATA*</div><div dir=3D"ltr">registers a=
re the same as their GEN6_PCODE_DATA* counterparts<br></div><div dir=3D"ltr=
">as defined in the Linux kernel(see first message in the thread).<br><br><=
/div><div dir=3D"ltr">Thanks again to Jani Nikula for the assistance, this =
resolves the issue.</div></div>

--0000000000005002580644a82c07--
