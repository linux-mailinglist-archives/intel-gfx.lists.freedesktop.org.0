Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B2F411747D0
	for <lists+intel-gfx@lfdr.de>; Sat, 29 Feb 2020 16:59:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D60A6E365;
	Sat, 29 Feb 2020 15:58:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com
 [IPv6:2a00:1450:4864:20::543])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D8036E364
 for <intel-gfx@lists.freedesktop.org>; Sat, 29 Feb 2020 15:58:53 +0000 (UTC)
Received: by mail-ed1-x543.google.com with SMTP id m13so7346628edb.6
 for <intel-gfx@lists.freedesktop.org>; Sat, 29 Feb 2020 07:58:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=QTQUXyNOiebpcFCiMQfmA9rfBa0FtY0UBvi/GQjNBHs=;
 b=ZWjlENEkQKLt61rW7m9e2xnJSBSojEps/DWpzoXR3HQ7SHD/ULvgcUcn2js/2HF8ox
 YeGNArSWqEZgCc4mKnXEnYaE0lnVSW4U4g9AOVbCU0fdPZEp9pIMAu1L02ENZY/Qsa9p
 H9KCCrhgS9cnSEV8G4F9Z30oJ0PQ3tF5nKIbtIJazPte6kdpwxs7xWUdO6WcOfD0aE4d
 7+nnuw55FMh7d5wdd1tosxCY6Wcwy2NWM9U9Yfye6nEXTmXA9n10TMRSenQ1YZ03BsYN
 y27cQk60HQy6d/eyxJbGZylNa+/fWYMLwIAwrVTPINMf1VLbhy/SbWpRevNDO1u8sGEF
 QlPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=QTQUXyNOiebpcFCiMQfmA9rfBa0FtY0UBvi/GQjNBHs=;
 b=UAcx0BH5oXJFQ3Zkw9/hw+4fdnP6YTgUxwdDnxod/NXxzxLT7s8QTQgCAY/w/S4oGL
 MmBzQdepNNQKBAdKGldcW3NLitmrbwCHBd1nGDlKfk4K2Ld9G9t0YC7XwQ//6eGdhApR
 /fJOgzjmyg0IEy2UWhkexUIM0H7VXiDJ4hK0qNtXrzP4q7AhYc1gjFY6bfCdkfYB6ufU
 1EneiRThXUL7kXfqyu1A5F6WHA0VxtCNO64UQy9ltWLMAu7RtsgWJF7xHZtCsKye7lhb
 BliJ60Z0Hx4Ijk86QMbpKujxaEpLdUZTNMTmAARGMb9tGnYsGh5/ws2gIPcZExnTG2bj
 uVfA==
X-Gm-Message-State: APjAAAXf1Qaq3jI/b1lku1t+7gwQAP6O5LLlF8L9cVXqBH1PZqtXUPo4
 kOSE/SRmrtS3YYtUHQ0WEhxaScjRd0gGv5sDfqICIA==
X-Google-Smtp-Source: APXvYqw7djOGsfA+6Np/KhkiY8FQic6oHJvjwttPB/5JXRrdxk8OezW8b2tASvVsWmh7rEwCKrmRc/pS5A8uJPoHaV8=
X-Received: by 2002:aa7:c983:: with SMTP id c3mr8893491edt.98.1582991931534;
 Sat, 29 Feb 2020 07:58:51 -0800 (PST)
MIME-Version: 1.0
References: <CAKMK7uHHK2SsCfpmZwEUyTJJHsoccKoadoko3cEBOoYDFkmeAw@mail.gmail.com>
 <CAPM=9txcGPvFdSzMtYZXyqLKnWyacSMuHdoXdV63M53fLFVFpw@mail.gmail.com>
 <b398161ff7d0268454413058dc6c194cf93f5990.camel@collabora.com>
 <a7727f84-ba85-f19d-9823-c7ba04fd1bb8@daenzer.net>
 <CAF6AEGspENM8iRxnfzOSvWp2Y-CfAcxV+=Do4t0Ojp5Qo3O3YA@mail.gmail.com>
In-Reply-To: <CAF6AEGspENM8iRxnfzOSvWp2Y-CfAcxV+=Do4t0Ojp5Qo3O3YA@mail.gmail.com>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Sat, 29 Feb 2020 09:58:40 -0600
Message-ID: <CAOFGe965f-EQKtrXOxGmTuZh97et6++wOhpaPqEfDp7Ysdk-5w@mail.gmail.com>
To: Rob Clark <robdclark@gmail.com>
Subject: Re: [Intel-gfx] [Mesa-dev] gitlab.fd.o financial situation and
 impact on services
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
Cc: Erik Faye-Lund <erik.faye-lund@collabora.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel@daenzer.net>,
 "X.Org development" <xorg-devel@lists.x.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 wayland <wayland-devel@lists.freedesktop.org>,
 "X.Org Foundation Board" <board@foundation.x.org>,
 Xorg Members List <members@x.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Mesa Dev <mesa-dev@lists.freedesktop.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Discussion of the development of and with GStreamer
 <gstreamer-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBGZWIgMjgsIDIwMjAgYXQgMTE6MDAgQU0gUm9iIENsYXJrIDxyb2JkY2xhcmtAZ21h
aWwuY29tPiB3cm90ZToKPgo+IE9uIEZyaSwgRmViIDI4LCAyMDIwIGF0IDM6NDMgQU0gTWljaGVs
IETDpG56ZXIgPG1pY2hlbEBkYWVuemVyLm5ldD4gd3JvdGU6Cj4gPgo+ID4gT24gMjAyMC0wMi0y
OCAxMDoyOCBhLm0uLCBFcmlrIEZheWUtTHVuZCB3cm90ZToKPiA+ID4KPiA+ID4gV2UgY291bGQg
YWxzbyBkbyBzdHVmZiBsaWtlIHJlZHVjaW5nIHRoZSBhbW91bnQgb2YgdGVzdHMgd2UgcnVuIG9u
IGVhY2gKPiA+ID4gY29tbWl0LCBhbmQgcHVudCBzb21lIHRlc3RpbmcgdG8gYSBwZXItd2Vla2Vu
ZCB0ZXN0LXJ1biBvciBzb21ldGluZwo+ID4gPiBsaWtlIHRoYXQuIFdlIGRvbid0ICpuZWVkKiB0
byBrbm93IGFib3V0IGV2ZXJ5IHByb2JsZW0gdXAgZnJvbnQsIGp1c3QKPiA+ID4gdGhlIHN0dWZm
IHRoYXQncyBhYm91dCB0byBiZSByZWxlYXNlZCwgcmVhbGx5LiBUaGUgb3RoZXIgc3R1ZmYgaXMg
anVzdAo+ID4gPiBuaWNlIHRvIGhhdmUuIElmIGl0J3MgdG9vIGV4cGVuc2l2ZSwgSSB3b3VsZCBz
YXkgZHJvcCBpdC4KPiA+Cj4gPiBJIGRvbid0IGFncmVlIHRoYXQgcHJlLW1lcmdlIHRlc3Rpbmcg
aXMganVzdCBuaWNlIHRvIGhhdmUuIEEgcHJvYmxlbQo+ID4gd2hpY2ggaXMgb25seSBjYXVnaHQg
YWZ0ZXIgaXQgbGFuZHMgaW4gbWFpbmxpbmUgaGFzIGEgbXVjaCBiaWdnZXIgaW1wYWN0Cj4gPiB0
aGFuIG9uZSB3aGljaCBpcyBhbHJlYWR5IGNhdWdodCBlYXJsaWVyLgo+ID4KPgo+IG9uZSB0aG91
Z2h0Li4gc2luY2Ugd2l0aCBtZXNhK21hcmdlYm90IHdlIGVmZmVjdGl2ZWx5IGdldCBhdCBsZWFz
dAo+IHR3byhpc2gpIENJIHJ1bnMgcGVyIE1SLCBpZS4gb25lIHdoZW4gaXQgaXMgaW5pdGlhbGx5
IHB1c2hlZCwgYW5kIG9uZQo+IHdoZW4gbWFyZ2Vib3QgcmViYXNlcyBhbmQgdHJpZXMgdG8gbWVy
Z2UsIGNvdWxkIHdlIGxldmVyYWdlIHRoaXMgdG8KPiBoYXZlIHRyaW1tZWQgZG93biBwcmUtbWFy
Z2Vib3QgQ0kgd2hpY2ggdHJpZXMgdG8ganVzdCB0YXJnZXQgYWZmZWN0ZWQKPiBkcml2ZXJzLCB3
aXRoIG1hcmdlYm90IGRvaW5nIGEgZnVsbCBDSSBydW4gKHdoZW4gaXQgaXMgcG90ZW50aWFsbHkK
PiBiYXRjaGluZyB0b2dldGhlciBtdWx0aXBsZSBNUnMpPwo+Cj4gU2VlbXMgbGlrZSBhIHdheSB0
byByZWR1Y2Ugb3VyIENJIHJ1bnMgd2l0aCBhIGdvb2Qgc2FmZXR5IG5ldCB0bwo+IHByZXZlbnQg
dGhpbmdzIGZyb20gc2xpcHBpbmcgdGhyb3VnaCB0aGUgY3JhY2tzLgoKSGVyZSBhcmUgYSBjb3Vw
bGUgbW9yZSBob3BlZnVsbHkgY29uc3RydWN0aXZlIGJ1dCBwb3NzaWJseSBib2d1cyBpZGVhczoK
CiAxLiBTdWdnZXN0IHBlb3BsZSBwdXQgdGhlaXIgQ0kgZmFybXMgYmVoaW5kIGEgc3F1aWQgdHJh
bnNwYXJlbnQKY2FjaGluZyBwcm94eS4gIFRoZXJlIHNlZW0gdG8gYmUgbWFueSBIb3dUbydzIG9u
IHRoZSBpbnRlcm5ldCBmb3IKZG9pbmcgdGhpcyBhbmQgaXQgc2hvdWxkbid0IGJlIHRlcnJpYmx5
IGhhcmQuICBNYXliZSBHaXRMYWIgdXNlcyB0b28KbXVjaCBIVFRQUyBhbmQgdGhhdCBtZXNzZXMg
dGhpbmdzIHVwPyAgSWYgbm90LCB0aGlzIHdvdWxkIGN1dApkb3dubG9hZHMgdG8gb25lLXBlci1m
YXJtIHJhdGhlciB0aGFuIG9uZS1wZXItbWFjaGluZQoKIDIuIEFkZCAtRHN0cmlwPXRydWUgdG8g
dGhlIG1lc29uIGNvbmZpZy4gIFdlIHdhbnQgYXNzZXJ0cyBidXQgZG8gd2UKcmVhbGx5IG5lZWQg
dGhvc2UgZGVidWcgc3ltYm9scz8gIFF1aWNrIHRlc3Rpbmcgb24gbXkgbWFjaGluZSwgaXQKc2Vl
bXMgdG8gcmVkdWNlIHRoZSBzaXplIG9mIGJ1aWxkIGFydGlmYWN0cyBieSBhYm91dCA2MCUKCkZl
ZWwgZnJlZSB0byB0ZWxsIHRoZSBwZWFudXQgZ2FsbGVyeSAobWUpIHdoeSBJJ20gd3JvbmcuIDot
KQoKLS1KYXNvbgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
