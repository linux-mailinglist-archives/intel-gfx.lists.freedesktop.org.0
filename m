Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EECFD2B7BCE
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Nov 2020 11:52:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49E026E3F4;
	Wed, 18 Nov 2020 10:52:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C16D6E3F4
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Nov 2020 10:52:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23028779-1500050 for multiple; Wed, 18 Nov 2020 10:52:20 +0000
MIME-Version: 1.0
In-Reply-To: <4EE61155-0590-4677-952B-17E4E21BF3D3@intel.com>
References: <20201117222308.31551-1-steven.t.hampson@intel.com>,
 <160565211968.4536.839020621876876215@build.alporthouse.com>
 <4EE61155-0590-4677-952B-17E4E21BF3D3@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: "Hampson, Steven T" <steven.t.hampson@intel.com>
Date: Wed, 18 Nov 2020 10:52:23 +0000
Message-ID: <160569674330.3553.1254692070520168643@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] i915/gem_flink_race: Fix error in buffer
 usage
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBIYW1wc29uLCBTdGV2ZW4gVCAoMjAyMC0xMS0xNyAyMzo0NToyMykKPiAKPiAKPiBT
ZW50IGZyb20gbXkgaVBob25lCj4gCj4gPiBPbiBOb3YgMTcsIDIwMjAsIGF0IDI6MjggUE0sIENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cm90ZToKPiA+IAo+ID4g77u/
UXVvdGluZyBTdGV2ZSBIYW1wc29uICgyMDIwLTExLTE3IDIyOjIzOjA4KQo+ID4+IEEgYnVmZmVy
IGluIGZ1bmN0aW9uIHRlc3RfZmxpbmtfbmFtZSB3YXMgYm90aCB0b28gc21hbGwgYW5kIG5ldmVy
Cj4gPj4gY2hlY2tlZCBmb3Igb3ZlcmZsb3cuICBCb3RoIGVycm9ycyBhcmUgZml4ZWQuCj4gPiAK
PiA+IFRoYXQgbWFueSBudW1iZXJzIGlzIG5vdCBpbnRlcmVzdGluZy4gU2hvdyB0aGUgcmFuZ2Ug
YW5kIG1lZGlhbiBpbnN0ZWFkLgo+ID4gLUNocmlzCj4gCj4gSSBkb27igJl0IHVuZGVyc3RhbmQg
d2hhdCB5b3UgYXJlIHRhbGtpbmcgYWJvdXQuICAKClRoZSByZWFzb24gSSBwcmludGVkIHRoZSBp
bmRpdmlkdWFsIG51bWJlcnMgd2FzIHNvIHRoYXQgd2UgY291bGQgc2VlIHRoZQpkaXN0cmlidXRp
b24gaW4gY2FzZSBvbmUgdGhyZWFkIHdhcyBiZWluZyBzdGFydmVkIG9yIG5vdC4gVGhhdCBpcyBm
aW5lCmZvciBhIGZldyBudW1iZXJzLCBidXQgYmV5b25kIHRoYXQgd2UgY2FuIHN1bW1hcmlzZSB3
aXRoIHN0YXRpc3RpY3MuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngK
