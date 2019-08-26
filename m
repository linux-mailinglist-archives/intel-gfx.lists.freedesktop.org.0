Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BEAC89CC66
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2019 11:18:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75FEE6E21E;
	Mon, 26 Aug 2019 09:18:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D79C6E21C
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Aug 2019 09:18:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18264064-1500050 for multiple; Mon, 26 Aug 2019 10:17:58 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190825224801.19117-1-prathap.kumar.valsan@intel.com>
 <20190825233527.17841-1-prathap.kumar.valsan@intel.com>
In-Reply-To: <20190825233527.17841-1-prathap.kumar.valsan@intel.com>
Message-ID: <156681107573.2672.9638164714564673895@skylake-alporthouse-com>
Date: Mon, 26 Aug 2019 10:17:55 +0100
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/tgl: Add sysfs interface to
 control class-of-service
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBQcmF0aGFwIEt1bWFyIFZhbHNhbiAoMjAxOS0wOC0yNiAwMDozNToyNykKPiBUbyBw
cm92aWRlIHNoYXJlZCBsYXN0LWxldmVsLWNhY2hlIGlzb2xhdGlvbiB0byBjcHUgd29ya2xvYWRz
IHJ1bm5pbmcKPiBjb25jdXJyZW50bHkgd2l0aCBncHUgd29ya2xvYWRzLCB0aGUgZ3B1IGFsbG9j
YXRpb24gb2YgY2FjaGUgbGluZXMgbmVlZHMKPiB0byBiZSByZXN0cmljdGVkIHRvIGNlcnRhaW4g
d2F5cy4gQ3VycmVudGx5IEdQVSBoYXJkd2FyZSBzdXBwb3J0cyBmb3VyCj4gY2xhc3Mtb2Ytc2Vy
dmljZShDTE9TKSBsZXZlbHMgYW5kIHRoZXJlIGlzIGFuIGFzc29jaWF0ZWQgd2F5LW1hc2sgZm9y
Cj4gZWFjaCBDTE9TLgo+IAo+IEhhcmR3YXJlIHN1cHBvcnRzIHJlYWRpbmcgc3VwcG9ydGVkIHdh
eS1tYXNrIGNvbmZpZ3VyYXRpb24gZm9yIEdQVSB1c2luZwo+IGEgYmlvcyBwY29kZSBpbnRlcmZh
Y2UuIFRoZSBzdXBwb3J0ZWQgd2F5LW1hc2tzIGFuZCB0aGUgb25lIGN1cnJlbnRseQo+IGFjdGl2
ZSBpcyBjb21tdW5pY2F0ZWQgdG8gdXNlcnNwYWNlIHZpYSBhIHN5c2ZzIGZpbGUtLWNsb3NjdHJs
LiBBZG1pbiB1c2VyCj4gY2FuIHRoZW4gc2VsZWN0IGEgbmV3IG1hc2sgYnkgd3JpdGluZyB0aGUg
bWFzayB2YWx1ZSB0byB0aGUgZmlsZS4KCldoYXQgaW1wYWN0IGRvZXMgdGhpcyBoYXZlIG9uIGlu
ZmxpZ2h0IHdvcms/IERvIHlvdSBuZWVkIHRvIGRyYWluIHRoZQpzdWJtaXNzaW9uIHF1ZXVlLCBj
aGFuZ2UgdGhlIGdsb2JhbCByZWdpc3RlcnMsIGZvcmNlIGFuIGludmFsaWRhdGlvbiBhbmQKdGhl
biByZXN0YXJ0PyBDYW4gaXQgYmUgZG9uZSBmcm9tIGluc2lkZSB0aGUgR1BVIHNvIHRoYXQgaXQg
aXMKc2VyaWFsaXNlZCB3aXRoIG9uLWdvaW5nIHN1Ym1pc3Npb24/Ci1DaHJpcwpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
