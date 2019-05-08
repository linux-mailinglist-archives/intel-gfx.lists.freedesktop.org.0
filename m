Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C367F1736E
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2019 10:15:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A108B896F7;
	Wed,  8 May 2019 08:15:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-it1-x141.google.com (mail-it1-x141.google.com
 [IPv6:2607:f8b0:4864:20::141])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C2F2896F7
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 May 2019 08:15:08 +0000 (UTC)
Received: by mail-it1-x141.google.com with SMTP id o190so2625945itc.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 08 May 2019 01:15:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=u2BaVnSXPGFPoW5xhJE0cknU55cfU2+DP9Ftt16VCH4=;
 b=YGAbfHYlDoa67QGwLwnQlu4s2ySf1G9auv0S73uNnqMBYQ3etzTgLhQse8ALwJxpRn
 uNoyoNqs9Bd1WgRqc9T7p93tDMkZz6LUDRQ517lo6e9gRIgm2oHKVwpt4QqggztpH/GY
 artUbC3OEUw5ybcRxgpw9uQs4Otgr6Js2CM4lfgAsuIgqoEmRaXmGgffFjR2FAeTgHDB
 6RqxHTm6dnxuecVWzCSufwV24vRDOduV1pVt1tdSiNxgGkCNVzWL/9c5tEJ6qEk9fGfk
 QPdGDVrqJ5nlgY+SAxdUlCM5/cXvRWaMrsRSGrQdH6KgnmxvydLlI60bl5WKHELtyQ3D
 vvZg==
X-Gm-Message-State: APjAAAXDH5GnCxn7AYGetVATv9Q+zQp5RxbrzHWUhwrsyhl9nfOyl4DI
 tsD9CyT6L2HpMMB0KwVylxvYibmX+i4PgNlLCFPVCQ==
X-Google-Smtp-Source: APXvYqxKY6qBR/GcaojVTpSV0ibbrs2IcUUWrTgbOa2moyXMfBUqbYmJBKdx4KSC2RlKedp9umj3QRI8uDstN9OmXXs=
X-Received: by 2002:a05:660c:4d0:: with SMTP id
 v16mr2663613itk.62.1557303307917; 
 Wed, 08 May 2019 01:15:07 -0700 (PDT)
MIME-Version: 1.0
References: <20190507173329.17031-1-daniel.vetter@ffwll.ch>
 <20190508074420.GB15704@jagdpanzerIV> <20190508075302.GC15704@jagdpanzerIV>
In-Reply-To: <20190508075302.GC15704@jagdpanzerIV>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 8 May 2019 10:14:55 +0200
Message-ID: <CAKMK7uGOitk0hgOAnoWEVWTJWzbE5WzzuRAUVfrRiNYfVk-uvA@mail.gmail.com>
To: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=u2BaVnSXPGFPoW5xhJE0cknU55cfU2+DP9Ftt16VCH4=;
 b=PbkJUDcswrFyqSBqbPqkp81afTguNnIoOWND0MkBGLoEmIRKjSU1i7mGtQJIKcS6TU
 df8FNExJ7Ueu1d0V7DpZgF6GTwhCLdCg8Idsqr5F2W4i0VTpiIY5G3/nPTChcujgTgKB
 U0ZGjvGnkywQQXm/ZOCOgMAWrI/44yNo8lYPw=
Subject: Re: [Intel-gfx] [PATCH] RFC: x86/smp: use printk_deferred in
 native_smp_send_reschedule
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
Cc: Petr Mladek <pmladek@suse.com>, Nicolai Stange <nstange@suse.de>,
 John Ogness <john.ogness@linutronix.de>, Peter Zijlstra <peterz@infradead.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Will Deacon <will.deacon@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Ingo Molnar <mingo@redhat.com>, Daniel Vetter <daniel.vetter@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBNYXkgOCwgMjAxOSBhdCA5OjUzIEFNIFNlcmdleSBTZW5vemhhdHNreQo8c2VyZ2V5
LnNlbm96aGF0c2t5LndvcmtAZ21haWwuY29tPiB3cm90ZToKPgo+IE9uICgwNS8wOC8xOSAxNjo0
NCksIFNlcmdleSBTZW5vemhhdHNreSB3cm90ZToKPiA+IFsuLl0KPiA+ID4gIHN0YXRpYyB2b2lk
IG5hdGl2ZV9zbXBfc2VuZF9yZXNjaGVkdWxlKGludCBjcHUpCj4gPiA+ICB7Cj4gPiA+ICAgICBp
ZiAodW5saWtlbHkoY3B1X2lzX29mZmxpbmUoY3B1KSkpIHsKPiA+ID4gLSAgICAgICAgICAgV0FS
TigxLCAic2NoZWQ6IFVuZXhwZWN0ZWQgcmVzY2hlZHVsZSBvZiBvZmZsaW5lIENQVSMlZCFcbiIs
IGNwdSk7Cj4gPiA+ICsgICAgICAgICAgIHByaW50a19kZWZlcnJlZChLRVJOX1dBUk5JTkcKPiA+
ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICJzY2hlZDogVW5leHBlY3RlZCByZXNjaGVk
dWxlIG9mIG9mZmxpbmUgQ1BVIyVkIVxuIiwgY3B1KTsKPiA+ID4gICAgICAgICAgICAgcmV0dXJu
Owo+ID4gPiAgICAgfQo+ID4gPiAgICAgYXBpYy0+c2VuZF9JUEkoY3B1LCBSRVNDSEVEVUxFX1ZF
Q1RPUik7Cj4gPgo+ID4gSG1tLAo+ID4gT25lIHRoaW5nIHRvIG5vdGljZSBoZXJlIGlzIHRoYXQg
dGhlIENQVSBpbiBxdWVzdGlvbiBpcyBvZmZsaW5lLWVkLAo+ID4gYW5kIHByaW50a19kZWZlcnJl
ZCgpIGlzIGEgcGVyLUNQVSB0eXBlIG9mIGRlZmVycmVkIHByaW50aygpLiBTbyB0aGUKPiA+IGZv
bGxvd2luZyB0aGluZwo+ID4KPiA+ICAgICAgIF9fdGhpc19jcHVfb3IocHJpbnRrX3BlbmRpbmcs
IFBSSU5US19QRU5ESU5HX09VVFBVVCk7Cj4gPiAgICAgICBpcnFfd29ya19xdWV1ZSh0aGlzX2Nw
dV9wdHIoJndha2VfdXBfa2xvZ2Rfd29yaykpOwo+ID4KPiA+IG1pZ2h0IG5vdCBwcmludCBhbnl0
aGluZyBhdCBhbGwuIEluIHRoaXMgcGFydGljdWxhciBjYXNlIHdlIGFsd2F5cwo+ID4gbmVlZCBh
bm90aGVyIENQVSB0byBkbyBjb25zb2xlX3VubG9jaygpLCBzaW5jZSB0aGlzX2NwdSgpIGlzIG5v
dAo+ID4gcmVhbGx5IGV4cGVjdGVkIHRvIGRvIHdha2VfdXBfa2xvZ2Rfd29ya19mdW5jKCktPmNv
bnNvbGVfdW5sb2NrKCkuCj4KPiBEJ29oLi4uIEl0J3MgcmVtb3RlIENQVSB3aGljaCBpcyBvZmZs
aW5lLCBub3QgdGhpc19jcHUoKS4KPiBTb3JyeSwgbXkgYmFkIQo+Cj4gQW55IHByaW50ay1yZWxh
dGVkIHBhdGNoIGluIHRoaXMgYXJlYSB3aWxsIG1ha2UgUGV0ZXJaIHJlYWxseS1yZWFsbHkKPiBh
bmdyeSA6KQo+Cj4gcHJpbnRrX2RlZmVycmVkKCksIGp1c3QgbGlrZSBwcmlua3Rfc2FmZSgpLCBk
ZXBlbmRzIG9uIElSUSB3b3JrOwo+IHByaW50a19zYWZlKCksIGhvd2V2ZXIsIGNhbiByZWRpcmVj
dCBtdWx0aXBsZSBsaW5lcywgdW5saWtlCj4gcHJpbnRrX2RlZmVycmVkKCkuIFNvIGlmIHlvdSB3
YW50IHRvIGtlZXAgdGhlIGJhY2t0cmFjZSwgeW91IG1heQo+IGRvIHNvbWV0aGluZyBsaWtlCj4K
PiAgICAgICAgIGlmICh1bmxpa2VseShjcHVfaXNfb2ZmbGluZShjcHUpKSkgewo+ICAgICAgICAg
ICAgICAgICBwcmludGtfc2FmZV9lbnRlciguLi4pOwo+ICAgICAgICAgICAgICAgICBXQVJOKDEs
ICJzY2hlZDogVW5leHBlY3RlZCByZXNjaGVkdWxlIG9mIG9mZmxpbmUgQ1BVIyVkIVxuIiwKPiAg
ICAgICAgICAgICAgICAgICAgICAgICAgY3B1KTsKPiAgICAgICAgICAgICAgICAgcHJpbnRrX3Nh
ZmVfZXhpdCguLi4pOwo+ICAgICAgICAgICAgICAgICByZXR1cm47Cj4gICAgICAgICB9Cj4KPiBJ
IHRoaW5rLCBpbiB0aGlzIGNhc2UgSm9obidzIHJld29ya2VkLXByaW50ayBjYW4gZG8gYmV0dGVy
IHRoYW4KPiBwcmludGtfc2FmZS9wcmludGtfZGVmZXJyZWQuCgpbY29mZmVlIHNsb3dseSBraWNr
aW5nIGluIGl0IHNlZW1zXQoKTG9ja2luZyBhdCBfX3VwX2NvbnNvbGVfc2VtIGluIHByaW50ay5j
LCB3ZSBhbHJlYWR5IGRvIHRoaXMuIEkgZ2V0IGEKYml0IGEgZmVlbGluZyB0aGF0IHRoZSAybmQg
YXR0ZW1wdCBpbiB0aGlzIHNhZ2EgKHB1bGxpbmcgdGhlCndha2VfdXBfcHJvY2VzcyBvdXQgZnJv
bSB1bmRlciBzZW1hcGhvcmUubG9jayBzcGlubG9jayBvZiB0aGUKY29uc29sZV9sb2NrKSBpcyBh
bGwgd2UgcmVhbGx5IG5lZWQsIHNpbmNlIHRoZSBtb3JlIGRpcmVjdCByZWN1cnNpb24KdGhhdCBQ
ZXRyIHBvaW50ZWQgb3V0IGlzIGFscmVhZHkgaGFuZGxlZCB3aXRoIHByaW50a19zYWZlX2VudGVy
L2V4aXQKYXJvdW5kIHRoZSB1cCgpLgoKaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wYXRj
aC8xMDkzMDY3My8gZm9yIHJlZmVyZW5jZSB0aGF0CmFwcHJvYWNoLCBpbiBjYXNlIGl0J3MgbG9z
dCBpbiB5b3VyIGluYm94LgoKQ2hlZXJzLCBEYW5pZWwKLS0gCkRhbmllbCBWZXR0ZXIKU29mdHdh
cmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCis0MSAoMCkgNzkgMzY1IDU3IDQ4IC0gaHR0
cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
