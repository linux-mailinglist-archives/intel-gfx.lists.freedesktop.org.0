Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A106817320
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2019 10:06:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 493A2892AA;
	Wed,  8 May 2019 08:06:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-it1-x142.google.com (mail-it1-x142.google.com
 [IPv6:2607:f8b0:4864:20::142])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 736AC892AA
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 May 2019 08:06:34 +0000 (UTC)
Received: by mail-it1-x142.google.com with SMTP id a190so2621155ite.4
 for <intel-gfx@lists.freedesktop.org>; Wed, 08 May 2019 01:06:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ki8hQ48k4lITqZ/TVIYvLD49Gs7QEyF45lWbuLR1Sl0=;
 b=ckkZQJRJrtRgGXPZnJAdkB3KoFfIZjRJhWLel+Gwc/GUh/N43agWtB+jA3Y10vfyZg
 Cbk8qd+N0uvAT2VJXUCyXw1HobTyzPp79SYhoQ5zyhTrTsdLJn7ib0j/1TGc6R2O/ea6
 fYWt1Ys5UGp1DDWHkiP3Y6OMMPUsfwhtKY0ZULfc86LI0VxKJKo4RCx+WVYSIodI0kfb
 f2VeUHxfYdxZ5sAoYeyNathrboBkmAreISKh62j2JpRgGydGVOMJX0dTfePNmcffqrw3
 QnM2eE8XRsY0kVjpi8Nv1dpxNDYcZpk3uwz2qDq+jI/Fs9+fBTkM0oBb9NNUQ/dwHXVM
 04/g==
X-Gm-Message-State: APjAAAXN89ZhP6wk4HWCReYGwzxmTYMft0KiB134ijTQtcy8fLfMULGg
 Et0X52hVNFfUrhtwqARIhzhQwycHLJWllbsY/EysbA==
X-Google-Smtp-Source: APXvYqz+LcWP0P11hgtedlhpXw1Ues0QKV277c7pjb7z6FDlN0mBHxeeIFN92GfUDXQ/Z8jxOJiL3YzcPDe2HsbWoww=
X-Received: by 2002:a02:ca4a:: with SMTP id i10mr27164568jal.70.1557302793766; 
 Wed, 08 May 2019 01:06:33 -0700 (PDT)
MIME-Version: 1.0
References: <20190507173329.17031-1-daniel.vetter@ffwll.ch>
 <20190508074420.GB15704@jagdpanzerIV> <20190508075302.GC15704@jagdpanzerIV>
In-Reply-To: <20190508075302.GC15704@jagdpanzerIV>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 8 May 2019 10:06:20 +0200
Message-ID: <CAKMK7uFeRmSGkqFj-xmdebwKok9+z1pyDZWUMNXfzTT4H2=-fA@mail.gmail.com>
To: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=Ki8hQ48k4lITqZ/TVIYvLD49Gs7QEyF45lWbuLR1Sl0=;
 b=CvUyCgoivRAhF/4ErqyHzJu2eu3YdNKSU7bPgEtxWicHsKTLP+tGbafiiQw2io/GQb
 PsmMQMPtsa2T8025pi5SsvE5ri1xNbzvZLpapw15edM7IGu2w97/kbA/7yKXYYdu1WMI
 IReG5o25f4R84RgSKj515yoqgHSx3qI4bKkMU=
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
aW5lLCBub3QgdGhpc19jcHUoKS4KPiBTb3JyeSwgbXkgYmFkIQoKV2VsbCBJIHN0YXJ0ZWQgcmVh
ZGluZywgdGhlbiBmcmVha2VkIG91dCBhYm91dCB0aGUgV0FSTl9PTiBpbgppcnFfd29ya19xdWV1
ZV9vbiB1bnRpbCBJIHJlYWxpemVkIHRoYXQncyBub3QgdGhlIG9uZSB3ZSdyZSBjYWxsaW5nCmVp
dGhlciA6LSkKCj4gQW55IHByaW50ay1yZWxhdGVkIHBhdGNoIGluIHRoaXMgYXJlYSB3aWxsIG1h
a2UgUGV0ZXJaIHJlYWxseS1yZWFsbHkKPiBhbmdyeSA6KQoKSG0gYW55IG1vcmUgY29udGV4dCBm
b3Igc29tZW9uZSB3aXRoIG5vIGNsdWUgYWJvdXQgdGhpcz8gSnVzdCB0aGF0IHRoZQpkZXBlbmRl
bmNpZXMgYXJlIGFscmVhZHkgdGVycmlibHkgY29tcGxleCBhbmQgaXQncyBub3QgZ29pbmcgdG8g
Z2V0CmJldHRlciwgb3Igc29tZXRoaW5nIG1vcmUgc3BlY2lmaWM/Cgo+IHByaW50a19kZWZlcnJl
ZCgpLCBqdXN0IGxpa2UgcHJpbmt0X3NhZmUoKSwgZGVwZW5kcyBvbiBJUlEgd29yazsKPiBwcmlu
dGtfc2FmZSgpLCBob3dldmVyLCBjYW4gcmVkaXJlY3QgbXVsdGlwbGUgbGluZXMsIHVubGlrZQo+
IHByaW50a19kZWZlcnJlZCgpLiBTbyBpZiB5b3Ugd2FudCB0byBrZWVwIHRoZSBiYWNrdHJhY2Us
IHlvdSBtYXkKPiBkbyBzb21ldGhpbmcgbGlrZQo+Cj4gICAgICAgICBpZiAodW5saWtlbHkoY3B1
X2lzX29mZmxpbmUoY3B1KSkpIHsKPiAgICAgICAgICAgICAgICAgcHJpbnRrX3NhZmVfZW50ZXIo
Li4uKTsKPiAgICAgICAgICAgICAgICAgV0FSTigxLCAic2NoZWQ6IFVuZXhwZWN0ZWQgcmVzY2hl
ZHVsZSBvZiBvZmZsaW5lIENQVSMlZCFcbiIsCj4gICAgICAgICAgICAgICAgICAgICAgICAgIGNw
dSk7Cj4gICAgICAgICAgICAgICAgIHByaW50a19zYWZlX2V4aXQoLi4uKTsKPiAgICAgICAgICAg
ICAgICAgcmV0dXJuOwo+ICAgICAgICAgfQo+Cj4gSSB0aGluaywgaW4gdGhpcyBjYXNlIEpvaG4n
cyByZXdvcmtlZC1wcmludGsgY2FuIGRvIGJldHRlciB0aGFuCj4gcHJpbnRrX3NhZmUvcHJpbnRr
X2RlZmVycmVkLgoKSG0gSSB0aGluayB0aGlzIGlzIHdoYXQgUGV0ciB3YXMgc3VnZ2VzdGluZywg
YnV0IHNvbWVob3cgSSBkaWRuJ3QgZmluZAp0aGUgcHJpbnRrX3NhZmVfKiBmdW5jdGlvbnMgYW5k
IGRpZG4ndCBjb25uZWN0IHRoZSBkb3RzLiBOZWVkcyB0aGUKX2lycXNhdmUgdmFyaWFudHMgSSBn
dWVzcywgSSdsbCByZXNwaW4gYSB2MiBvZiB0aGlzLgotRGFuaWVsCi0tIApEYW5pZWwgVmV0dGVy
ClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgorNDEgKDApIDc5IDM2NSA1NyA0
OCAtIGh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
