Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C943674927
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jul 2019 10:30:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18FC26E69A;
	Thu, 25 Jul 2019 08:30:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C21656E699
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jul 2019 08:30:29 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17589461-1500050 for multiple; Thu, 25 Jul 2019 09:30:27 +0100
MIME-Version: 1.0
To: Takashi Iwai <tiwai@suse.de>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <s5h5znqtt7z.wl-tiwai@suse.de>
References: <20190725080300.1913-1-chris@chris-wilson.co.uk>
 <s5h8ssmttq0.wl-tiwai@suse.de> <s5h5znqtt7z.wl-tiwai@suse.de>
Message-ID: <156404342516.31349.4825957285152464339@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 25 Jul 2019 09:30:25 +0100
Subject: Re: [Intel-gfx] [PATCH] Revert "ALSA: hda - Fix intermittent
 CORB/RIRB stall on Intel chips"
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUYWthc2hpIEl3YWkgKDIwMTktMDctMjUgMDk6MjY6NTYpCj4gT24gVGh1LCAyNSBK
dWwgMjAxOSAxMDoxNjowNyArMDIwMCwKPiBUYWthc2hpIEl3YWkgd3JvdGU6Cj4gPiAKPiA+IE9u
IFRodSwgMjUgSnVsIDIwMTkgMTA6MDM6MDAgKzAyMDAsCj4gPiBDaHJpcyBXaWxzb24gd3JvdGU6
Cj4gPiA+IAo+ID4gPiBKdXN0IGEgaGVhZHMgdXAgdGhhdCBpY2wgaXMgY29uc2lzdGVudGx5IHNo
b3dpbmcKPiA+ID4gCj4gPiA+IDw0PiBbMzE1LjQ3ODgzMF0gc25kX2hkYV9pbnRlbCAwMDAwOjAw
OjFmLjM6IGF6eF9nZXRfcmVzcG9uc2UgdGltZW91dCwgc3dpdGNoaW5nIHRvIHBvbGxpbmcgbW9k
ZTogbGFzdCBjbWQ9MHgyMDJmODEwMAo+ID4gPiA8ND4gWzMxNi40ODI3OTldIHNuZF9oZGFfaW50
ZWwgMDAwMDowMDoxZi4zOiBObyByZXNwb25zZSBmcm9tIGNvZGVjLCBkaXNhYmxpbmcgTVNJOiBs
YXN0IGNtZD0weDIwMmY4MTAwCj4gPiA+IDwzPiBbNTA4LjQxMjkxNV0gc25kX2hkYV9jb2RlY19o
ZG1pIGhkYXVkaW9DMEQyOiBVbmFibGUgdG8gc3luYyByZWdpc3RlciAweDJmODEwMC4gLTExCj4g
PiA+IAo+ID4gPiBmb2xsb3dpbmcgY29tbWl0cyAyNzU2ZDkxNDNhYTUgKCJBTFNBOiBoZGEgLSBG
aXggaW50ZXJtaXR0ZW50IENPUkIvUklSQgo+ID4gPiBzdGFsbCBvbiBJbnRlbCBjaGlwcyIpIGFu
ZCBhMzBmMTc0M2U0ZjUgKCJBTFNBOiBsaW5lNjogc2l6ZW9mIChieXRlKSBpcwo+ID4gPiBhbHdh
eXMgMSwgdXNlIHRoYXQgZmFjdC4iKQo+ID4gCj4gPiBUaGUgdmVyYiB0aGF0IHN0YWxscyAoMHgy
MDJmODEwMCkgaXMgYSByZWFkIHZlcmIgKDB4ZjgxLCBJbnRlbAo+ID4gdmVuZG9yLXNwZWNpZmlj
IHZlcmIgZm9yIEhETUkpLCBzbyBpdCBzaG91bGRuJ3QgbWF0dGVyIHdoZXRoZXIgd2l0aCBvcgo+
ID4gd2l0aG91dCB3cml0ZSBzeW5jLCBiZWNhdXNlIGl0IG5lZWRzIHRvIHJlYWQgdGhlIHJlc3Bv
bnNlIGluIGFueXdheS4KPiA+IAo+ID4gSWYgdGhhdCBwYXRjaCBicm9rZSBhbnl0aGluZywgaXQg
bWVhbnMgdGhhdCBzb21ldGhpbmcgZWxzZSB3YXMgYWxyZWFkeQo+ID4gYnJva2VuLiAgT2ggd2Vs
bCwgdGhhdCBJQ0wgY3JhcC4uLgo+ID4gCj4gPiBJcyBpdCBhYm91dCB0aGUgcnVudGltZSBQTSwg
b3IgUzMgb3IgUzQ/ICBUaGUgb25seSBjYXNlIHdlIG5lZWQgdG8KPiA+IHJlLWlzc3VlIHRoaXMg
dmVyYiBpcyBvbmx5IFM0LCBJIHN1cHBvc2UsIHNvIHdlIG1heSBza2lwIHRoYXQgaW4gbW9zdAo+
ID4gY2FzZXMuCj4gCj4gTm93IGNoZWNraW5nIHRoZSBjb2RlLCBhbmQgSSBiZWxpZXZlIHRoZSB3
b3JrYXJvdW5kIGFwcGxpZWQgdGhlcmUgY2FuCj4gYmUgc2tpcHBlZCBmb3Igbm9uLUhhc3dlbGwg
Y2hpcHMuICBDb3VsZCB5b3UgdHJ5IHRoZSBwYXRjaCBiZWxvdyBpbgo+IGFkZGl0aW9uPwoKRHVl
IHRvIHRoZSB3YXkgcGF0Y2h3b3JrIHdvcmtzLCB0aGlzIHBhdGNoIHdpbGwgbm93IGJlIHRlc3Rl
ZCBpbnN0ZWFkIG9mCnRoZSByZXZlcnQuIFNvIHdhdGNoIHRoaXMgc3BhY2UuCi1DaHJpcwpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
