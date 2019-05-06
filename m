Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D835914509
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2019 09:11:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20A8F89209;
	Mon,  6 May 2019 07:11:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-io1-xd41.google.com (mail-io1-xd41.google.com
 [IPv6:2607:f8b0:4864:20::d41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32EE289209
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 May 2019 07:11:50 +0000 (UTC)
Received: by mail-io1-xd41.google.com with SMTP id s20so568117ioj.7
 for <intel-gfx@lists.freedesktop.org>; Mon, 06 May 2019 00:11:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=u8UT3Tn0T2EP3iQmDK1wowFJS5RBn2hVawFqvc++3dU=;
 b=c134gjz43hUKBc9U3i/6nfW6IGhefCptUcPEcuCZXjZkCy9ZC681D2LLcFPAefJ1i3
 PW0KL3W5Ug9vdAWqvK1ySuAkgcxJkNgRhZwRSMOj3ovlDj/B9/kcRejrc/6672HX86X7
 QOCV6iaUj1zBXcnLZBqmz0roYMVGSSGbXUxiQYDHo7ggYQ9pGywaX8DUURUamosczMtn
 PcMsErsf+YPJP43MoWOf1PPaXExsDDOUB57WtNLTtYMqemnxhrwnCLQNK3pUvOen1IJM
 H9AVJU2yKJq1RH60d1+Dd6jM+OFf0AdziyJZZ9MlWxHBmm9Ga9WPMSZEnoU8GDPWeEg7
 lpGA==
X-Gm-Message-State: APjAAAUIv58z6FKt5cGb9rRj78ulj7NHoBt9702shNUaB+i8g3UF7rnv
 9x2FLXMcBbO83eAVdpUiDT6xqftUcyD3Sxi811eh8A==
X-Google-Smtp-Source: APXvYqxtJtItUL3SFcvknMu2SDjVfpED2iuBsb8Ja6ehJj2ySNhVJwztFSL/SpK7NM1x2+2/ZRJgiI4aPK/8vZPaoq8=
X-Received: by 2002:a6b:b654:: with SMTP id g81mr11945265iof.34.1557126709525; 
 Mon, 06 May 2019 00:11:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190502141643.21080-1-daniel.vetter@ffwll.ch>
 <20190503151437.dc2ty2mnddabrz4r@pathway.suse.cz>
In-Reply-To: <20190503151437.dc2ty2mnddabrz4r@pathway.suse.cz>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Mon, 6 May 2019 09:11:37 +0200
Message-ID: <CAKMK7uF8AD6033_tJw1Y7VsAXb6OD_syZtG3a-JM2g9eEb-P9g@mail.gmail.com>
To: Petr Mladek <pmladek@suse.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=u8UT3Tn0T2EP3iQmDK1wowFJS5RBn2hVawFqvc++3dU=;
 b=d4yoYmO7+QLVUx1XeEVtgfXn+9mEq5nbnq3Ff/ns4s/RG+VKMH3QVIz4fT5MRFxFgO
 eA8TI7hh8gf6QqXZ2QGankFqvWBqIYQx7UeMsJGNz3/5GwcJOwwALATBwnnTxe5diKSK
 gZg4oo04esqti8ArfExvZS+7e9ob6e2abCc+E=
Subject: Re: [Intel-gfx] [PATCH] RFC: console: hack up console_trylock more
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
Cc: John Ogness <john.ogness@linutronix.de>,
 Peter Zijlstra <peterz@infradead.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Will Deacon <will.deacon@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Ingo Molnar <mingo@redhat.com>, Steven Rostedt <rostedt@goodmis.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBNYXkgMywgMjAxOSBhdCA1OjE0IFBNIFBldHIgTWxhZGVrIDxwbWxhZGVrQHN1c2Uu
Y29tPiB3cm90ZToKPiBPbiBUaHUgMjAxOS0wNS0wMiAxNjoxNjo0MywgRGFuaWVsIFZldHRlciB3
cm90ZToKPiA+IGNvbnNvbGVfdHJ5bG9jaywgY2FsbGVkIGZyb20gd2l0aGluIHByaW50aywgY2Fu
IGJlIGNhbGxlZCBmcm9tIHByZXR0eQo+ID4gbXVjaCBhbnl3aGVyZS4gSW5jbHVkaW5nIHRyeV90
b193YWtlX3VwLiBOb3RlIHRoYXQgdGhpcyBpc24ndCBjb21tb24sCj4gPiB1c3VhbGx5IHRoZSBi
b3ggaXMgaW4gcHJldHR5IGJhZCBzaGFwZSBhdCB0aGF0IHBvaW50IGFscmVhZHkuIEJ1dCBpdAo+
ID4gcmVhbGx5IGRvZXNuJ3QgaGVscCB3aGVuIHRoZW4gbG9ja2RlcCBqdW1wcyBpbiBhbmQgc3Bh
bXMgdGhlIGxvZ3MsCj4gPiBwb3RlbnRpYWxseSBvYnNjdXJpbmcgdGhlIHJlYWwgYmFja3RyYWNl
IHdlJ3JlIHJlYWxseSBpbnRlcmVzdGVkIGluLgo+ID4gT25lIGNhc2UgSSd2ZSBzZWVuIChzbGln
aHRseSBzaW1wbGlmaWVkIGJhY2t0cmFjZSk6Cj4gPgo+ID4gIENhbGwgVHJhY2U6Cj4gPiAgIDxJ
UlE+Cj4gPiAgIGNvbnNvbGVfdHJ5bG9jaysweGUvMHg2MAo+ID4gICB2cHJpbnRrX2VtaXQrMHhm
MS8weDMyMAo+ID4gICBwcmludGsrMHg0ZC8weDY5Cj4gPiAgIF9fd2Fybl9wcmludGsrMHg0Ni8w
eDkwCj4gPiAgIG5hdGl2ZV9zbXBfc2VuZF9yZXNjaGVkdWxlKzB4MmYvMHg0MAo+ID4gICBjaGVj
a19wcmVlbXB0X2N1cnIrMHg4MS8weGEwCj4gPiAgIHR0d3VfZG9fd2FrZXVwKzB4MTQvMHgyMjAK
PiA+ICAgdHJ5X3RvX3dha2VfdXArMHgyMTgvMHg1ZjAKPiA+ICAgcG9sbHdha2UrMHg2Zi8weDkw
Cj4gPiAgIGNyZWRpdF9lbnRyb3B5X2JpdHMrMHgyMDQvMHgzMTAKPiA+ICAgYWRkX2ludGVycnVw
dF9yYW5kb21uZXNzKzB4MThmLzB4MjEwCj4gPiAgIGhhbmRsZV9pcnErMHg2Ny8weDE2MAo+ID4g
ICBkb19JUlErMHg1ZS8weDEzMAo+ID4gICBjb21tb25faW50ZXJydXB0KzB4Zi8weGYKPiA+ICAg
PC9JUlE+Cj4gPgo+ID4gVGhpcyBhbG9uZSBpc24ndCBhIHByb2JsZW0sIGJ1dCB0aGUgc3Bpbmxv
Y2sgaW4gdGhlIHNlbWFwaG9yZSBpcyBhbHNvCj4gPiBzdGlsbCBoZWxkIHdoaWxlIHdha2luZyB1
cCB3YWl0ZXJzICh1cCgpIC0+IF9fdXAoKSAtPiB0cnlfdG9fd2FrZV91cCgpCj4gPiBjYWxsY2hh
aW4pLCB3aGljaCB0aGVuIGNsb3NlcyB0aGUgcnVucXVldWUgdnMuIHNlbWFwaG9yZS5sb2NrIGxv
b3AsCj4gPiBhbmQgdXBzZXRzIGxvY2tkZXAsIHdoaWNoIGlzc3VlcyBhIGNpcmN1bGFyIGxvY2tp
bmcgc3BsYXQgdG8gZG1lc2cuCj4gPiBXb3JzZSBpdCB1cHNldHMgZGV2ZWxvcGVycywgc2luY2Ug
d2UgZG9uJ3Qgd2FudCB0byBzcGFtIGRtZXNnIHdpdGgKPiA+IGNsdXR0ZXIgd2hlbiB0aGUgbWFj
aGluZSBpcyBkeWluZyBhbHJlYWR5Lgo+ID4KPiA+IEZpeCB0aGlzIGJ5IGNyZWF0aW5nIGEgX19k
b3duX3RyeWxvY2sgd2hpY2ggb25seSB0cnlsb2NrcyB0aGUKPiA+IHNlbWFwaG9yZS5sb2NrLiBU
aGlzIGlzbid0IGNvcnJlY3QgaW4gZnVsbCBnZW5lcmFsaXR5LCBidXQgZ29vZCBlbm91Z2gKPiA+
IGZvciBjb25zb2xlX2xvY2s6Cj4gPgo+ID4gLSB0aGVyZSdzIG9ubHkgZXZlciBvbmUgY29uc29s
ZV9sb2NrIGhvbGRlciwgd2Ugd29uJ3QgZmFpbCBzcHVyaW91c2x5Cj4gPiAgIGJlY2F1c2Ugc29t
ZW9uZSBpcyBkb2luZyBhIGRvd24oKSBvciB1cCgpIHdoaWxlIHRoZXJlJ3Mgc3RpbGwgcm9vbQo+
ID4gICAodW5saWtlIG90aGVyIHNlbWFwaG9yZXMgd2l0aCBjb3VudCA+IDEpLgo+ID4KPiA+IC0g
Y29uc29sZV91bmxvY2soKSBoYXMgb25lIG1hc3NpdmUgcmV0cnkgbG9vcCwgd2hpY2ggd2lsbCBj
YXRjaCBhbnlvbmUKPiA+ICAgd2hvIHJhY2VzIHRoZSB0cnlsb2NrIGFnYWluc3QgdGhlIHVwKCku
IFRoaXMgbWFrZXMgc3VyZSB0aGF0IG5vCj4gPiAgIHByaW50ayBsaW5lcyB3aWxsIGdldCBsb3N0
LiBNYWtpbmcgdGhlIHRyeWxvY2sgbW9yZSByYWN5IHRoZXJlZm9yZQo+ID4gICBoYXMgbm8gZnVy
dGhlciBpbXBhY3QuCj4KPiBUbyBiZSBob25lc3QsIEkgZG8gbm90IHNlZSBob3cgdGhpcyBjb3Vs
ZCBzb2x2ZSB0aGUgcHJvYmxlbS4KPgo+IFRoZSBjaXJjdWxhciBkZXBlbmRlbmN5IGlzIHN0aWxs
IHRoZXJlLiBJZiB0aGUgbmV3IF9fZG93bl90cnlsb2NrKCkKPiBzdWNjZWVkcyB0aGVuIGNvbnNv
bGVfdW5sb2NrKCkgd2lsbCBnZXQgY2FsbGVkIGluIHRoZSBzYW1lIGNvbnRleHQKPiBhbmQgaXQg
d2lsbCBzdGlsbCBuZWVkIHRvIGNhbGwgdXAoKSAtPiB0cnlfdG9fd2FrZV91cCgpLgo+Cj4gTm90
ZSB0aGF0IHRoZXJlIGFyZSBtYW55IG90aGVyIGNvbnNvbGVfbG9jaygpIGNhbGxlcnMgdGhhdCBt
aWdodAo+IGhhcHBlbiBpbiBwYXJhbGxlbCBhbmQgbWlnaHQgYXBwZWFyIGluIHRoZSB3YWl0IHF1
ZXVlLgoKSG0gcmlnaHQuIEl0J3MgdmVyeSByYXJlIHdlIGhpdCB0aGlzIGluIG91ciBDSSBhbmQg
SSBkb24ndCBrbm93IGhvdyB0bwpyZXBybyBvdGhlcndpc2UsIHNvIGp1c3QgdGhyZXcgdGhpcyBv
dXQgYXQgdGhlIHdhbGwgdG8gc2VlIGlmIGl0CnN0aWNrcy4gSSdsbCB0cnkgYW5kIGNvbWUgdXAg
d2l0aCBhIG5ldyB0cmljayB0aGVuLgoKVGhhbmtzLCBEYW5pZWwKLS0gCkRhbmllbCBWZXR0ZXIK
U29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCis0MSAoMCkgNzkgMzY1IDU3IDQ4
IC0gaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
