Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E2A382F8D
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2019 12:14:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F7F789F06;
	Tue,  6 Aug 2019 10:14:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com
 [IPv6:2a00:1450:4864:20::242])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 406EF6E34B
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Aug 2019 10:14:22 +0000 (UTC)
Received: by mail-lj1-x242.google.com with SMTP id x25so81845044ljh.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 06 Aug 2019 03:14:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WA1PZ71O/SjMHVw3c0YHfht5EP1T46U6jPbJu0k6rO8=;
 b=jJrmH4GhwNkaHNzyjMAy8RiF1s25okq9iZEnr4XEwZLoRlYoRoXb8mhuQpQ51QGEI+
 W7oUGB29EHKiApJhh/CNUVEHTf5x17TDfHdL5Em1j0DayEFHK2gRYso3Nvgvtd2fUNdM
 zZhXNZXvvCqlaVZuzD598haGYAEJ5tundE7R200wcpC6EyPJKlDZsEdRMyeHTiuBJ6hT
 /KFUGaNGUeu+CQIFaywHQGCmcyQqhEEiQXucjmur/JUES8eomIdJYUk9HH+huH4vMyfs
 tSO41zyFC0Z7BJ0mxCNRQjd3/YM22BVERjbbmtPc0Kzwwe6anoPqfNxIvyQurHa5nnOv
 lLxg==
X-Gm-Message-State: APjAAAXvsRmVKn3/DjtWzvV1bC/I0ntd5t/L9toecjPHDz0K+OZkk/EE
 23bLa2mr68ercA7/9jbH3Hug8eLlWCVlrqDrIXM06g==
X-Google-Smtp-Source: APXvYqwI6qc1hM1VrxKIO/gC1mYXSMZJYiA9imlb5Oz4BJ9IAIzq8Nuu/rK1Yxu8Xd1ZpyeRlsGeCAroffaNMeoH+6I=
X-Received: by 2002:a2e:968e:: with SMTP id q14mr1244489lji.195.1565086460402; 
 Tue, 06 Aug 2019 03:14:20 -0700 (PDT)
MIME-Version: 1.0
References: <20190803104719.gwb6hmreeaqyye6n@flea>
 <CAPM=9tygocpAnOzJHy3TW2UQc0_6A86e7CpQT1CCMEhWfjzheg@mail.gmail.com>
 <CAKMK7uEHt2KBJoG21F_zqxbfkyVFRAoir__vZt1yheEFxpwUcg@mail.gmail.com>
 <CACvgo51Do4XDY9wRku-0v5B+mRRzV2+SgD=dvFT3J9TMf8RK9Q@mail.gmail.com>
 <CAKMK7uEcoQK+y6y2wW6GJzKDjtPZZ5gads3JY6xL+JiP+2QABQ@mail.gmail.com>
 <CACvgo50z6bGu4=jqEHCSUOd_geadEwuOcOquLiVRsCdRroG2fg@mail.gmail.com>
 <CAKMK7uFpuLhR6eL+C15-kPYiEO1upU0+z9nz2BOhriKtSnqX5Q@mail.gmail.com>
In-Reply-To: <CAKMK7uFpuLhR6eL+C15-kPYiEO1upU0+z9nz2BOhriKtSnqX5Q@mail.gmail.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Tue, 6 Aug 2019 11:12:34 +0100
Message-ID: <CAPj87rMj+Y6vW9VubUnHm1QUmh5JJ-+VwQRd5SULwH0rg6ZYSw@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=WA1PZ71O/SjMHVw3c0YHfht5EP1T46U6jPbJu0k6rO8=;
 b=uyqhKI3m//hXkutjqkasSH7iHlvzIsNMzZVMT0WgEud7MnplxmMPT2RDm63BWLcXDC
 CiIYQj8WOEIiqPn8hO+lgRVZ+XyvgLHf3yyAsYWcyS1fNnP96ARta8yaa4iv1pg2XHbX
 v60v5MflmOjxp7R4YOSw/RBGGYMagAGaqxsq1EGFfD9xqWS9pwClXx7y7tpH3UUpFFVj
 +6co+4n+U9fpjsfzOg1SMInI+UXsToS6zH5TIINN9UXO2FcCX81z2QSlhYNtIi0J/VBR
 fq9sg4EqUlJ2xdOdOBhW0TRVAzR2Lgl5AhvpC9K2gAq51qfmjkwQnG1quuA0COhTjJt3
 98pA==
Subject: Re: [Intel-gfx] [PULL] drm-misc-next
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: Maxime Ripard <mripard@kernel.org>, Rob Herring <robh@kernel.org>,
 "DRM maintainer tools announcements, discussion,
 and development" <dim-tools@lists.freedesktop.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksCgpPbiBUdWUsIDYgQXVnIDIwMTkgYXQgMTA6NTgsIERhbmllbCBWZXR0ZXIgPGRhbmllbC52
ZXR0ZXJAZmZ3bGwuY2g+IHdyb3RlOgo+IE9uIFR1ZSwgQXVnIDYsIDIwMTkgYXQgMTE6NTUgQU0g
RW1pbCBWZWxpa292IDxlbWlsLmwudmVsaWtvdkBnbWFpbC5jb20+IHdyb3RlOgo+ID4gT24gVHVl
LCA2IEF1ZyAyMDE5IGF0IDEwOjQ5LCBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xs
LmNoPiB3cm90ZToKPiA+ID4gVGhlIHRoaW5nIGlzLCBkaW0gcHVzaCBzaG91bGRuJ3QgYWxsb3cg
eW91IHRvIGRvIHRoYXQuIEFuZCB0aGUgcGF0Y2hlcwo+ID4gPiBoYXZlIGNsZWFybHkgYmVlbiBh
cHBsaWVkIHdpdGggZGltIGFwcGx5IChvciBhdCBsZWFzdCB5b3UgYWRkZWQgdGhlCj4gPiA+IExp
bmspLCB1bmxpa2UgUm9iIHdobyBzZWVtcyB0byBqdXN0IGhhdmUgcHVzaGVkIHRoZSByZXZlcnQu
Cj4gPiA+Cj4gPiBUaGFua3MsIGRpZCBub3Qga25vdyBhYm91dCBkaW0gcHVzaC4gV2lsbCBtYWtl
IHN1cmUgSSB1c2UgaXQuCj4KPiBTbyB0aGUgaW50cm8gZG9jIGlzbid0IGdvb2QgZW5vdWdoLCBh
bmQgd2UgbmVlZCB0byBlbmZvcmNlIGl0LiBJIHRoaW5rCj4gRGFuaWVsJ3MgaWRlYSB3YXMgdG8g
aGF2ZSBhIHByZS1tZXJnZSBob29rIHdoaWNoIGNoZWNrcyBmb3IgYSBnaXQKPiB2YXJpYWJsZSB1
c2luZyAtLXB1c2gtb3B0aW9uLiBDYW4geW91IHBscyBsb29rIGludG8gdGhpcz8gSSBndWVzcyB3
ZSdkCj4gbmVlZCB0aGUgZGltIHBhdGNoLCBhbmQgZXhhbXBsZSBwcmVtZXJnZSBob29rIHRvIGJl
IGluc3RhbGxlZAo+IHNlcnZlci1zaWRlLiBTaG91bGQgaGF2ZSBhIG5pY2UgZXJyb3IgbWVzc2Fn
ZSB0b28gb2ZjLgoKWWVhaCwgdGhlIGRvY3MgYXJlIGFscmVhZHkgcXVpdGUgY2xlYXIgdGhhdCB5
b3UgY2Fubm90IHB1c2ggdG8gdGhlIERSTQp0cmVlcyB3aXRoIG5vcm1hbCBnaXQsIGFuZCB0aGF0
IHlvdSBoYXZlIHRvIHVzZSBkaW0uIE5vdCBvbmx5IGRvZXMgaXQKY2hlY2sgYW5kIGVuZm9yY2Ug
YWxsIHRoZSBydWxlcyBpbiB0aGUgZG9jdW1lbnRhdGlvbiwgYnV0IGl0IGFsc28KcmVidWlsZHMg
ZHJtLXRpcCBhbmQga2VlcHMgb3RoZXIgdHJlZXMgaW4gc3luYywgd2hpY2ggaXNuJ3QgZG9uZSB3
aXRoCmEgcmVndWxhciBnaXQgcHVzaC4KClRoZSBpZGVhIEkgaGFkIGEgZmV3IHdlZWtzIGFnbyB3
YXMgdG8gaGF2ZSBkaW0gdXNlICdnaXQgcHVzaAotLXB1c2gtb3B0aW9uIGZkby5wdXNoZWRXaXRo
RGltPXRoaXMtd2FzLXB1c2hlZC13aXRoLWRpbS1hbmQtbm90LW1hbnVhbGx5JywKdGhlbiBoYXZl
IHRoZSBob29rcyBvbiB0aGUgc2VydmVyIHNpZGUgY2hlY2sgZm9yIHRoYXQgb3B0aW9uIGFuZApy
ZWZ1c2UgYW55IGRpcmVjdCBwdXNoZXMuIChPciBhdCBsZWFzdCwgaWYgcGVvcGxlIGFyZSBwdXNo
aW5nCmRpcmVjdGx5LCB0aGV5IGhhdmUgdG8gX3JlYWxseV8gdHJ5IHRvIGJlIGRvaW5nIGl0LCBh
bmQgY2FuJ3QgZG8gaXQgYnkKYWNjaWRlbnQuKQoKSWYgc29tZW9uZSB0eXBlcyB1cCB0aGUgZGlt
IHBhdGNoIHRvIGRvIHRoYXQgYW5kIGdldHMgaXQgY29tbWl0dGVkLAphZnRlciBhIGNvdXBsZSBv
ZiBkYXlzJyBncmFjZSBwZXJpb2QgZm9yIGV2ZXJ5b25lIHRvIHVwZGF0ZSBJIGNhbiByb2xsCm91
dCB0aGUgc2VydmVyLXNpZGUgaG9va3Mgd2hpY2ggcmVmdXNlIG5vbi1kaW0gcHVzaGVzLgoKQ2hl
ZXJzLApEYW5pZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
