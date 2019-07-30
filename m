Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 665CA7AB1C
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 16:33:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B3136E581;
	Tue, 30 Jul 2019 14:33:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com
 [IPv6:2607:f8b0:4864:20::243])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46F586E580
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 14:33:24 +0000 (UTC)
Received: by mail-oi1-x243.google.com with SMTP id t76so48095691oih.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 07:33:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=X7ZAcJ103Q+TcrL+5+PqgSRWi2eCQ1wo573Yn6x0gSc=;
 b=p7QSDa1gs1I29nxDleqfEeh/eqvlSJQlUllsdMiqSWVT+1WFXB0Tszq9ed50YpZVbV
 uuYp8FQxMiQhJ1H3ezgS7xvaBV70cdcATmDgGDBiIlK4SCnraCpWvqFhhYYH+6YH6RUg
 qbikEsktdMcts60d5u/+NUZR6jWcyrA4ChIfI03Z9Apmai8WezK8KkMNuL+sU51/6CaF
 e6hdcJSUb8xVoHCXRPclQulpryyVVTnRWV8h/oEjm9PEu3B6KEsFLXf+s1LGofzDoDMf
 thkENPTd0pSeGU+IOdHutIEUF6+E6kSztlJoL7PL9eUVYyKWSohP1kp+Aj1ZaVbBx4zL
 Io5Q==
X-Gm-Message-State: APjAAAXFne/Uidl/dGmhUvQObLDegvQPJF5tESm9wmg275qJ5R/B64EC
 TfZ3pm4hCVsbG8IOPSrPR5yn+XRCtJGW4kmrjSg=
X-Google-Smtp-Source: APXvYqz+G/C1P9RfombGxaXko5WV80erStoFLuUT3ryqPTBzuFJb2xlZoLcofvGG50rroMqjhDlEfolhE3dPKyjxRwQ=
X-Received: by 2002:a05:6808:118:: with SMTP id
 b24mr58738233oie.128.1564497203463; 
 Tue, 30 Jul 2019 07:33:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190730003225.322-1-brian.welty@intel.com>
 <951e9e42-96bc-fc8d-0153-3ca7ac5f1e74@amd.com>
 <20190730093847.GP15868@phenom.ffwll.local>
 <ee600bcd-d880-7199-21d0-df6e51f5adfa@amd.com>
 <CAKMK7uHrGgn7FqSBD+qDYYHxyPLvv5OqzwLTACWuqbjANKFuQA@mail.gmail.com>
 <743ab99e-95cb-f6fa-6903-5556d5050f6d@daenzer.net>
In-Reply-To: <743ab99e-95cb-f6fa-6903-5556d5050f6d@daenzer.net>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Tue, 30 Jul 2019 16:33:12 +0200
Message-ID: <CAKMK7uGhwWcJ_PzHF_7uVMP+=3fLug4FfB2k6Q4Dy2C+z2Ae9g@mail.gmail.com>
To: =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel@daenzer.net>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=X7ZAcJ103Q+TcrL+5+PqgSRWi2eCQ1wo573Yn6x0gSc=;
 b=EBNtsOu8I09fRm7GcDgXSU57qJKk3fUtI27PcLB5ugzH94KohkTS/0O29xh3ONEPKb
 bGCfSEwQ5bOCxPWy8P7FzmCGPUgKxFUPsP9txpzkyJYj/l4ODEquINXe1KH35mSAF9t+
 UfjOJyzSG7wwhOX6KKtt3iuHTIJSc4UvWQwzo=
Subject: Re: [Intel-gfx] [RFC PATCH 0/3] Propose new struct drm_mem_region
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
Cc: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Koenig,
 Christian" <Christian.Koenig@amd.com>,
 "amd-gfx@lists.freedesktop.org" <amd-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBKdWwgMzAsIDIwMTkgYXQgNDozMCBQTSBNaWNoZWwgRMOkbnplciA8bWljaGVsQGRh
ZW56ZXIubmV0PiB3cm90ZToKPiBPbiAyMDE5LTA3LTMwIDEyOjQ1IHAubS4sIERhbmllbCBWZXR0
ZXIgd3JvdGU6Cj4gPiBPbiBUdWUsIEp1bCAzMCwgMjAxOSBhdCAxMjoyNCBQTSBLb2VuaWcsIENo
cmlzdGlhbgo+ID4gPENocmlzdGlhbi5Lb2VuaWdAYW1kLmNvbT4gd3JvdGU6Cj4gPj4gQW0gMzAu
MDcuMTkgdW0gMTE6Mzggc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+ID4+PiBPbiBUdWUsIEp1bCAz
MCwgMjAxOSBhdCAwODo0NTo1N0FNICswMDAwLCBLb2VuaWcsIENocmlzdGlhbiB3cm90ZToKPiA+
Cj4gPj4+Pj4gKyNkZWZpbmUgRFJNX01FTV9TWVNURU0gICAgIDAKPiA+Pj4+PiArI2RlZmluZSBE
Uk1fTUVNX1NUT0xFTiAgICAgMQo+ID4+Pj4gSSB0aGluayB3ZSBuZWVkIGEgYmV0dGVyIG5hbWlu
ZyBmb3IgdGhhdC4KPiA+Pj4+Cj4gPj4+PiBTVE9MRU4gc291bmRzIHdheSB0byBtdWNoIGxpa2Ug
c3RvbGVuIFZSQU0gZm9yIGludGVncmF0ZWQgR1BVcywgYnV0IGF0Cj4gPj4+PiBsZWFzdCBmb3Ig
VFRNIHRoaXMgaXMgdGhlIHN5c3RlbSBtZW1vcnkgY3VycmVudGx5IEdQVSBhY2Nlc3NpYmxlLgo+
ID4+PiBZdXAgdGhpcyBpcyB3cm9uZywgZm9yIGk5MTUgd2UgdXNlIHRoaXMgYXMgc3RvbGVuLCBm
b3IgdHRtIGl0J3MgdGhlIGdwdQo+ID4+PiB0cmFuc2xhdGlvbiB0YWJsZSB3aW5kb3cgaW50byBz
eXN0ZW0gbWVtb3J5LiBOb3QgdGhlIHNhbWUgdGhpbmcgYXQgYWxsLgo+ID4+Cj4gPj4gVGhvdWdo
dCBzby4gVGhlIGNsb3Nlc3QgSSBoYXZlIGluIG1pbmQgaXMgR1RULCBidXQgZXZlcnl0aGluZyBl
bHNlIHdvcmtzCj4gPj4gYXMgd2VsbC4KPiA+Cj4gPiBXb3VsZCB5b3VyIEdQVV9NQVBQRUQgYWJv
dmUgd29yayBmb3IgVFQ/IEkgdGhpbmsgd2UnbGwgYWxzbyBuZWVkCj4gPiBTVE9MRU4sIEknbSBl
dmVuIGhlYXJpbmcgbm9pc2VzIHRoYXQgdGhlcmUncyBnb2luZyB0byBiZSBzdG9sZW4gZm9yCj4g
PiBkaXNjcmV0ZSB2cmFtIGZvciB1cyAuLi4KPgo+IENvdWxkIGk5MTUgdXNlIERSTV9NRU1fUFJJ
ViBmb3Igc3RvbGVuPyBPciBpcyB0aGVyZSBvdGhlciBoYXJkd2FyZSB3aXRoCj4gc29tZXRoaW5n
IHNpbWlsYXI/CgpJIGRvbid0IHRoaW5rIGl0IG1hdHRlcnMgbXVjaCB3aGF0IHdlIG5hbWUgaXQg
Li4uIF9QUklWIHNvdW5kcyBhcyBnb29kCmFzIGFueXRoaW5nIGVsc2UuIEFzIGxvbmcgYXMgd2Ug
bWFrZSBpdCBjbGVhciB0aGF0IHVzZXJzcGFjZSBibyBhbHNvCm1pZ2h0IGVuZCB1cCBpbiB0aGVy
ZSBJIHRoaW5rIGl0J3MgYWxsIGdvb2QuCi1EYW5pZWwKLS0gCkRhbmllbCBWZXR0ZXIKU29mdHdh
cmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCis0MSAoMCkgNzkgMzY1IDU3IDQ4IC0gaHR0
cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
