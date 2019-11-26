Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F95C109D16
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 12:37:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CFCA8808E;
	Tue, 26 Nov 2019 11:37:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B25BC8808E
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 11:37:45 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19342725-1500050 for multiple; Tue, 26 Nov 2019 11:37:47 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191125152710.2125824-1-chris@chris-wilson.co.uk>
 <875zj6nb54.fsf@gaia.fi.intel.com>
In-Reply-To: <875zj6nb54.fsf@gaia.fi.intel.com>
Message-ID: <157476826077.15944.9004053753038132736@skylake-alporthouse-com>
Date: Tue, 26 Nov 2019 11:37:40 +0000
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/gem: Excise the per-batch
 whitelist from the context
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTExLTI2IDExOjEzOjI3KQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBPbmUgZG9lcyBub3Qg
bGlnaHRseSBhZGQgYSBuZXcgaGlkZGVuIHN0cnVjdF9tdXRleCBkZXBlbmRlbmN5IGRlZXAgd2l0
aGluCj4gPiB0aGUgZXhlY2J1ZiBib3dlbHMhIFRoZSBpbW1lZGlhdGUgc3VzcGljaW9uIGluIHNl
ZWluZyB0aGUgd2hpdGVsaXN0Cj4gPiBjYWNoZWQgb24gdGhlIGNvbnRleHQsIGlzIHRoYXQgaXQg
aXMgaW50ZW5kZWQgdG8gYmUgcHJlc2VydmVkIGJldHdlZW4KPiA+IGJhdGNoZXMsIGFzIHRoZSBr
ZXJuZWwgaXMgcXVpdGUgYWRlcHQgYXQgY2FjaGluZyBzbWFsbCBhbGxvY2F0aW9ucwo+ID4gaXRz
ZWxmLiBCdXQgbm8sIGl0J3Mgc29sZSBwdXJwb3NlIGlzIHRvIHNlcmlhbGlzZSBjb21tYW5kIHN1
Ym1pc3Npb24gaW4KPiA+IG9yZGVyIHRvIHNhdmUgYSBrbWFsbG9jIG9uIGEgc2xvdywgc2xvdyBw
YXRoIQo+IAo+IEkgbmVlZGVkIG4rMSBjdXBzIG9mIGNvZmZlZSBmb3IgYm91bmNpbmcgYmV0d2Vl
biB0aGlzLCBjb2RlIGFuZAo+IHRoZSBjb2RlYmFzZS4gTm8gaGFybSBkb25lIHVubGVzcyBJIHN0
YXJ0IHRvIHNwYW0gaXJjIGluIGNoYXR0eW5lc3MKPiBkdWUgdG8gb3ZlcmRvemUuCj4gCj4gLi4u
d2hlbiB0aGUgcmVhbCB0aXAtb2ZmIGlzIHRoZSBwYXRjaCBzdWJqZWN0IQo+IAo+IFRoYW5rcyBm
b3IgZXhwbGFpbmluZyBpdCB0aHJvdWdoIGluIGlyYy4KPiAKPiBJdCBpcyBvYnZpb3VzIG5vdyB3
aGVuIG9uZSBkb2VzIGdldCBpdCBidXQgaXQgd2Fzbid0Cj4gYmVmb3JlLiBTbyBwbGVhc2UgYWRk
IGZldyBsaW5lcyB0byB0aGUgY29tbWl0IG1lc3NhZ2Ugb2Ygd2hhdAo+IHRoZSBleGNpc2UgZ2l2
ZXMgdXMgd3J0IHRvIGZ1dHVyZSBpbXByb3ZlbWVudHMgaW4gaGVyZS4KPiAKPiBzb21ldGhpbmcg
bGlrZQo+ICJCeSByZW1vdmluZyB0aGUgd2hpdGVsZXN0IGRlcGVuZGFuY3kgZnJvbSBjb250ZXh0
IG91ciBmcmVlZG9tCj4gdG8gY2hvcCB0aGUgYmlnIG11dGV4IGlzIGdyZWF0bHkgYXVnbWVudGVk
IgoKT2suCiAKPiAuLmluIHByb3BlciBlbmdsaXNoLgoKSGFoLCB0aGF0IHdhcyBmYXIgbW9yZSBl
bG9xdWVudCB0aGFuIG15IHVzdWFsIGRyaXZlbC4KIAo+IFdoYXQgYXJlIHlvdXIgdGhvdWdodHMg
b24gdXNpbmcgbm9uYXRvbWljIGJpdG9wcz8KCkZpbmUuIEV2ZW4gYSBoaW50IG9mIGNvbmN1cnJl
bnQgdXNlIG9mIHRoZSB3aGl0ZWxpc3QgaXMgYSByZWNpcGUgZm9yIGEKbmlnaHRtYXJlLCBzbyBz
L3NldF9iaXQvX19zZXRfYml0LyBpcyBvay4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
