Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 88E7416C38B
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2020 15:13:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C921C6E212;
	Tue, 25 Feb 2020 14:13:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com
 [IPv6:2a00:1450:4864:20::22f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EE306E212
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Feb 2020 14:13:12 +0000 (UTC)
Received: by mail-lj1-x22f.google.com with SMTP id q23so14226563ljm.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Feb 2020 06:13:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=x1gtW27emNxhkEvoW7LMTQPRK73zPNYulw9W2zBEvQc=;
 b=dwp3pAkCzhSX1gkv3YsyzMnUWM/SPW8vV5s/wgkDGcp+1NUaSRisLLfUhR3tE09rpy
 Emy1v90yhBNH8sDG1yPDhDr4xD5Y1lxJDAaw+JR0iTwxewE1Uuacunxv5Lqa83BO1jtS
 cX7769lwR0HJGV3deo8cw2RtiZYJ7BiwOFC7VHpLt/vDuEpEzYH/Rbi4CqG6zcdaDG14
 8fMMBHW4MEdBDycMTYh+8jsR0LByNTdD0By2Bslw9bFaM5oafxgfISZDzE55kNVbhgr6
 jMLi4EZtyx0FV/OpQngVFsELNUHk4x24kvqfR0oki7T+wkg+6qFgbcN/MYy7DypUWw8a
 MM/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=x1gtW27emNxhkEvoW7LMTQPRK73zPNYulw9W2zBEvQc=;
 b=WAAAmnmKG6lZ0XqvqYLJzNLzSV73Nc0SMhL0uttB9kcfykco46xhKy1Vw0VTlHFk0P
 jj+dDOWsFWFQdxssVEvqev0aIwqohp5MjAtC+gefzf+xyzJIbiN6oLbBpsPPn7gpV48U
 QmT0NNA6n0bJjAE+/r+O+RTFdcbG/o+RcZrwxw/ViCKp4Fyt7X9FbmHwJbBiGmXWQ11p
 XiNtd8QU3TCO45yfvQL6IeqVk87WKBuK1PT9XR8oLI2HaQkXbVaMdbac1sIqG/uFvUTC
 DNOd/78Gv+oEPaWHfO93nhwoM5VghCKStondLc3n+ee8icJRMcfo+coOiK8oIz2tzijO
 R4cQ==
X-Gm-Message-State: APjAAAW0vrD/MRkYHDVUeWd+OZPitAUYYIGxIbVdNY4wz/uT3PnvDQBT
 /0iiZ5CgeY9kkXiBH1zObxH0cklQDbkY4rRMSg==
X-Google-Smtp-Source: APXvYqxpmeZxilBsQaSE1pz6nIz3r89uH24bf28gGJt0sae5gDIhMklsuh11C699CzhVDk4OoGhc/1E3MeQUGCz3fYE=
X-Received: by 2002:a2e:3a12:: with SMTP id h18mr10477341lja.81.1582639990685; 
 Tue, 25 Feb 2020 06:13:10 -0800 (PST)
MIME-Version: 1.0
References: <CADDKRnBq6oFFfVzqDRwwx2Eoc74M7f_9Z7UCdSVmS_xGMD1wdQ@mail.gmail.com>
 <CAHk-=wh101Kcdby3UwzGWcCVELdGJoyduQ7Hwp2B6tavzx8ULw@mail.gmail.com>
 <158257881650.26598.5580907010251811605@skylake-alporthouse-com>
 <CAPM=9twmxKz97jMNjMq7U47tZ_3QiZp73EZrcwrYuwLhApcx4Q@mail.gmail.com>
In-Reply-To: <CAPM=9twmxKz97jMNjMq7U47tZ_3QiZp73EZrcwrYuwLhApcx4Q@mail.gmail.com>
From: =?UTF-8?Q?J=C3=B6rg_Otte?= <jrg.otte@gmail.com>
Date: Tue, 25 Feb 2020 15:12:59 +0100
Message-ID: <CADDKRnC-V_WhaJH8KZiiXH6Lomk=9vH1izxZ2X5kicHvS2zhiA@mail.gmail.com>
To: Dave Airlie <airlied@gmail.com>
Subject: Re: [Intel-gfx] i915 GPU-hang regression in v5.6-rcx
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QW0gRGkuLCAyNS4gRmViLiAyMDIwIHVtIDA0OjMzIFVociBzY2hyaWViIERhdmUgQWlybGllIDxh
aXJsaWVkQGdtYWlsLmNvbT46Cj4KPiBPbiBUdWUsIDI1IEZlYiAyMDIwIGF0IDA3OjEzLCBDaHJp
cyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4gd3JvdGU6Cj4gPgo+ID4gUXVvdGlu
ZyBMaW51cyBUb3J2YWxkcyAoMjAyMC0wMi0yNCAyMDoxODowMykKPiA+ID4gTGV0J3MgYWRkIGlu
IHNvbWUgb2YgdGhlIGk5MTUgcGVvcGxlIGFuZCBsaXN0Lgo+ID4KPiA+IEhhc3dlbGwgZWF0aW5n
IGtpdHRlbnMuIFRoZSBvZmZlbmRpbmcgcGF0Y2ggd2lsbCBiZSByb2xsZWQgYmFjayBzaG9ydGx5
Lgo+ID4gLUNocmlzCj4KPiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gv
MzU0Nzc1Lwo+Cj4gaXMgdGhlIHBhdGNoIHRoYXQgaXMgd29ya2luZyBpdCdzIHdheSB0aHJvdWdo
IHRoZSBzeXN0ZW0uCj4KPiBEYXZlLgoKV2l0aCB0aGlzIHBhdGNoIEkgZ2V0IG5vIG1vcmUgaGFu
Z2luZyBHUFUuICBMb29rcyB2ZXJ5IGdvb2QgZm9yIG1lLgoKVGhhbmtzLCBKw7ZyZwpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
