Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F02817399
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2019 10:25:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26A818915B;
	Wed,  8 May 2019 08:25:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-it1-x142.google.com (mail-it1-x142.google.com
 [IPv6:2607:f8b0:4864:20::142])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69E39891C0
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 May 2019 08:25:33 +0000 (UTC)
Received: by mail-it1-x142.google.com with SMTP id q19so2649045itk.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 08 May 2019 01:25:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IPBNJEnOOgZOHP3DTkbWlOxf/mJIrBhutW0vGsGc1B8=;
 b=Pzbvi0En4x3YYr1QF/3mf1nZO6y7qYDBLUbS0jVQJtwH3rcoEcDjGcf3g46vI1+u1z
 /r5lzQvbO29wfCWeDhXh2k5drbn5efTtga/8P05RLMzvnYaA8jw3svamkDMuOekTQtS3
 yYgu/hva9iFgVsrGWwa9ZvKDImUIc8Vatf50ItyvZQzilY0J+iV72q81EL421iL92Vl1
 c0KmSAewO/P9CRbHwOA7CNqISTSLb/2aienXbMPQhBLw3cmqJEqRa9A8K4NVQH15x1fO
 Uaiw0ORf7mEdkWrcK7V8fRax3qm32CImzdzaB/sgRj3Eltlh8ZS7svzkHNnT3UQPX4ks
 /wAw==
X-Gm-Message-State: APjAAAX0zUOehvadcEleFmy/2c7eIaHXj8uMSMaEC8jeFaPcN/Hf0+HQ
 FhWsSz24NjyBK8vvf0EUxWRHAv35P6GIeKc5u95SgA==
X-Google-Smtp-Source: APXvYqzTloJlW0inTtoYD5qbYbep//Q1zTPB6vaGFFnpXuJ1SJ7igL7fT98s5D2BWX8MxxcLaI/57hDNfl4TzG8G7fY=
X-Received: by 2002:a24:39c6:: with SMTP id l189mr2576224ita.51.1557303932766; 
 Wed, 08 May 2019 01:25:32 -0700 (PDT)
MIME-Version: 1.0
References: <20190507173329.17031-1-daniel.vetter@ffwll.ch>
 <20190508074420.GB15704@jagdpanzerIV>
In-Reply-To: <20190508074420.GB15704@jagdpanzerIV>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 8 May 2019 10:25:19 +0200
Message-ID: <CAKMK7uHF_2QyYP5TB40gPQ6eG_=qk4ucij4RHnM_E=vutqWH5g@mail.gmail.com>
To: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=IPBNJEnOOgZOHP3DTkbWlOxf/mJIrBhutW0vGsGc1B8=;
 b=jXCprDUUshKVwss7HDPEZJcorfnfLTcvXjQhe/GtsyRYKLD8OZKqvjNIuK7EIqW/gI
 NrADf/w6vCYRcdhKz3ZQEnK2JcXgfyjwSzxnAKNaF3NSxv92cfarsSf0qjlUX3+Zm1Gz
 e7IL41sZF/D+wuNMtyXtU82pKahZWsHfVz3wA=
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

T24gV2VkLCBNYXkgOCwgMjAxOSBhdCA5OjQ0IEFNIFNlcmdleSBTZW5vemhhdHNreQo8c2VyZ2V5
LnNlbm96aGF0c2t5LndvcmtAZ21haWwuY29tPiB3cm90ZToKPgo+IE9uICgwNS8wNy8xOSAxOToz
MyksIERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4gWy4uXQo+ID4gLSBtYWtlIHRoZSBjb25zb2xlX3Ry
eWxvY2sgdHJ5bG9jayBhbHNvIHRoZSBzcGlubG9jay4gVGhpcyB3b3JrcyBpbgo+ID4gICB0aGUg
bGltaXRlZCBjYXNlIG9mIHRoZSBjb25zb2xlX2xvY2sgdXNlLWNhc2UsIGJ1dCBkb2Vzbid0IGZp
eCB0aGUKPiA+ICAgc2FtZSBzZW1hcGhvcmUubG9jayBhY3F1aXNpdGlvbiBpbiB0aGUgdXAoKSBw
YXRoIGluIGNvbnNvbGVfdW5sb2NrLAo+ID4gICB3aGljaCB3ZSBjYW4ndCBhdm9pZCB3aXRoIGEg
dHJ5bG9jay4KPiA+Cj4gPiAtIG1vdmUgdGhlIHdha2VfdXBfcHJvY2VzcyBpbiB1cCgpIG91dCBm
cm9tIHVuZGVyIHRoZSBzZW1hcGhvcmUubG9jawo+ID4gICBzcGlubG9jayBjcml0aWNhbCBzZWN0
aW9uLiBBZ2FpbiB0aGlzIHdvcmtzIGZvciB0aGUgbGltaXRlZCBjYXNlIG9mCj4gPiAgIHRoZSBj
b25zb2xlX2xvY2ssIGFuZCBkb2VzIGZ1bGx5IGJyZWFrIHRoZSBjeWNsZSBmb3IgdGhpcyBsb2Nr
Lgo+ID4gICBVbmZvcnR1bmF0ZWx5IHRoZXJlJ3Mgc3RpbGwgcGxlbnR5IG9mIHNjaGVkdWxlciBy
ZWxhdGVkIGxvY2tzIHRoYXQKPiA+ICAgd2FrZV91cF9wcm9jZXNzIG5lZWRzLCBzbyB0aGUgbG9v
cCBpcyBzdGlsbCB0aGVyZSwganVzdCB3aXRoIGEgZmV3Cj4gPiAgIGxlc3MgbG9ja3MgaW52b2x2
ZWQuCj4gPgo+ID4gSGVuY2Ugbm93IHRoaXJkIGF0dGVtcHQsIHRyeWluZyB0byBmaXggdGhpcyBi
eSB1c2luZyBwcmludGtfZGVmZXJyZWQoKQo+ID4gaW5zdGVhZCBvZiB0aGUgbm9ybWFsIHByaW50
ayB0aGF0IFdBUk4oKSB1c2VzLgo+ID4gbmF0aXZlX3NtcF9zZW5kX3Jlc2NoZWR1bGUgaXMgb25s
eSBjYWxsZWQgZnJvbSBzY2hlZHVsZXIgcmVsYXRlZCBjb2RlLAo+ID4gd2hpY2ggaGFzIHRvIHVz
ZSBwcmludGtfZGVmZXJyZWQgZHVlIHRvIHRoaXMgbG9ja2luZyByZWN1cnNpb24sIHNvCj4gPiB0
aGlzIHNlZW1zIGNvbnNpc3RlbnQuCj4gPgo+ID4gSXQgaGFzIHRoZSB1bmZvcnR1bmF0ZSBkb3du
c2lkZSB0aGF0IHdlJ3JlIGxvc2luZyB0aGUgYmFja3RyYWNlIHRob3VnaAo+ID4gKEkgZGlkbid0
IGZpbmQgYSBwcmludGtfZGVmZXJyZWQgdmVyc2lvbiBvZiBXQVJOLCBhbmQgSSdtIG5vdCBzdXJl
Cj4gPiBpdCdzIGEgYnJpZ2h0IGlkZWEgdG8gZHVtcCB0aGF0IG11Y2ggdXNpbmcgcHJpbnRrX2Rl
ZmVycmVkLikKPgo+IEknbSBjYXRjaGluZyB1cCB3aXRoIHRoZSBlbWFpbHMgbm93ICh3YXMgb2Zm
bGluZSBmb3IgYWxtb3N0IDIgd2Vla3MpLAo+IHNvIEkgaGF2ZW4ndCBzZWVuIFt5ZXRdIGFsbCBv
ZiB0aGUgcHJldmlvdXMgcGF0Y2hlcy9kaXNjdXNzaW9ucy4KPgo+IFsuLl0KPiA+ICBzdGF0aWMg
dm9pZCBuYXRpdmVfc21wX3NlbmRfcmVzY2hlZHVsZShpbnQgY3B1KQo+ID4gIHsKPiA+ICAgICAg
IGlmICh1bmxpa2VseShjcHVfaXNfb2ZmbGluZShjcHUpKSkgewo+ID4gLSAgICAgICAgICAgICBX
QVJOKDEsICJzY2hlZDogVW5leHBlY3RlZCByZXNjaGVkdWxlIG9mIG9mZmxpbmUgQ1BVIyVkIVxu
IiwgY3B1KTsKPiA+ICsgICAgICAgICAgICAgcHJpbnRrX2RlZmVycmVkKEtFUk5fV0FSTklORwo+
ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgInNjaGVkOiBVbmV4cGVjdGVkIHJlc2No
ZWR1bGUgb2Ygb2ZmbGluZSBDUFUjJWQhXG4iLCBjcHUpOwo+ID4gICAgICAgICAgICAgICByZXR1
cm47Cj4gPiAgICAgICB9Cj4gPiAgICAgICBhcGljLT5zZW5kX0lQSShjcHUsIFJFU0NIRURVTEVf
VkVDVE9SKTsKPgo+IEhtbSwKPiBPbmUgdGhpbmcgdG8gbm90aWNlIGhlcmUgaXMgdGhhdCB0aGUg
Q1BVIGluIHF1ZXN0aW9uIGlzIG9mZmxpbmUtZWQsCj4gYW5kIHByaW50a19kZWZlcnJlZCgpIGlz
IGEgcGVyLUNQVSB0eXBlIG9mIGRlZmVycmVkIHByaW50aygpLiBTbyB0aGUKPiBmb2xsb3dpbmcg
dGhpbmcKPgo+ICAgICAgICAgX190aGlzX2NwdV9vcihwcmludGtfcGVuZGluZywgUFJJTlRLX1BF
TkRJTkdfT1VUUFVUKTsKPiAgICAgICAgIGlycV93b3JrX3F1ZXVlKHRoaXNfY3B1X3B0cigmd2Fr
ZV91cF9rbG9nZF93b3JrKSk7Cj4KPiBtaWdodCBub3QgcHJpbnQgYW55dGhpbmcgYXQgYWxsLiBJ
biB0aGlzIHBhcnRpY3VsYXIgY2FzZSB3ZSBhbHdheXMKPiBuZWVkIGFub3RoZXIgQ1BVIHRvIGRv
IGNvbnNvbGVfdW5sb2NrKCksIHNpbmNlIHRoaXNfY3B1KCkgaXMgbm90Cj4gcmVhbGx5IGV4cGVj
dGVkIHRvIGRvIHdha2VfdXBfa2xvZ2Rfd29ya19mdW5jKCktPmNvbnNvbGVfdW5sb2NrKCkuCgpI
bSByaWdodCwgSSB3YXMgaGFwcHkgZW5vdWdoIHdoZW4gUGV0ciBwb2ludGVkIG91dCB0aGUgcHJp
bnRrX2RlZmVycmVkCmluZnJhc3RydWN0dXJlIHRoYXQgSSBkaWRuJ3QgbG9vayB0b28gZGVlcGx5
IGludG8gaG93IGl0IHdvcmtzLiBGcm9tIGEKcXVpY2sgbG9vCgoKCgotLQpEYW5pZWwgVmV0dGVy
ClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgorNDEgKDApIDc5IDM2NSA1NyA0
OCAtIGh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
