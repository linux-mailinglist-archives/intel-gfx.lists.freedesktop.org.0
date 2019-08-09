Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F94F87A96
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2019 14:54:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2DC5891C3;
	Fri,  9 Aug 2019 12:54:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71929890E4
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Aug 2019 12:54:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17943319-1500050 for multiple; Fri, 09 Aug 2019 13:53:46 +0100
MIME-Version: 1.0
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Martin Wilck <Martin.Wilck@suse.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <ad70d1985e8d0227dc55fedeec769de166e63ae0.camel@suse.com>
References: <ad70d1985e8d0227dc55fedeec769de166e63ae0.camel@suse.com>
Message-ID: <156535522344.29541.9312856809559678262@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 09 Aug 2019 13:53:43 +0100
Subject: Re: [Intel-gfx] 5.3-rc3: Frozen graphics with kcompactd migrating
 i915 pages
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNYXJ0aW4gV2lsY2sgKDIwMTktMDgtMDkgMTM6NDE6NDIpCj4gVGhpcyBoYXBwZW5l
ZCB0byBtZSB0b2RheSwgcnVubmluZyBrZXJuZWwgNS4zLjAtcmMzLTEuZzU3MTg2M2ItZGVmYXVs
dAo+ICg1LjMtcmMzIHdpdGgganVzdCBhIGZldyBwYXRjaGVzIG9uIHRvcCksIGFmdGVyIHN0YXJ0
aW5nIGEgS1ZNIHZpcnR1YWwKPiBtYWNoaW5lLiBUaGUgWCBzY3JlZW4gd2FzIGZyb3plbi4gUmVt
b3RlIGxvZ2luIHZpYSBzc2ggd2FzIHN0aWxsCj4gcG9zc2libGUsIHRodXMgSSB3YXMgYWJsZSB0
byByZXRyaWV2ZSBiYXNpYyBsb2dzLgo+IAo+IHN5c3JxLXcgc2hvd2VkIHR3byBibG9ja2VkIHBy
b2Nlc3NlcyAoa2NvbXBhY3RkMCBhbmQgS1ZNKS4gQWZ0ZXIgYQo+IG1pbnV0ZSwgdGhlIHNhbWUg
dHdvIHByb2Nlc3NlcyB3ZXJlIHN0aWxsIGJsb2NrZWQuIEtWTSBzZWVtcyB0byB0cnkgdG8KPiBh
Y3F1aXJlIGEgbG9jayB0aGF0IGtjb21wYWN0ZCBpcyBob2xkaW5nLiBrY29tcGFjdGQgaXMgd2Fp
dGluZyBmb3IgSU8KPiB0byBjb21wbGV0ZSBvbiBwYWdlcyBvd25lZCBieSB0aGUgaTkxNSBkcml2
ZXIuCgpNeSBiYWQsIGl0J3Mga25vd24uIFdlIGhhdmVuJ3QgZGVjaWRlZCBvbiB3aGV0aGVyIHRv
IHJldmVydCB0aGUKdW5mb3J0dW5hdGUgcmVjdXJzaXZlIGxvY2tpbmcgKGFuZCBzbyBoaXQgYW5v
dGhlciB3YXJuIGVsc2V3aGVyZSkgb3IgdG8KaWdub3JlIHRoZSBkaXJ0eSBwYWdlcyAoYW5kIHNv
IHJpc2sgbG9zaW5nIGRhdGEgYWNyb3NzIHN3YXApLgoKY2I2ZDdjN2RjN2ZmICgiZHJtL2k5MTUv
dXNlcnB0cjogQWNxdWlyZSB0aGUgcGFnZSBsb2NrIGFyb3VuZCBzZXRfcGFnZV9kaXJ0eSgpIikK
LUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
