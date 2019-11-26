Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 621C810A097
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 15:43:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2D096E420;
	Tue, 26 Nov 2019 14:43:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C10C6E40D
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 14:43:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19345497-1500050 for multiple; Tue, 26 Nov 2019 14:43:46 +0000
MIME-Version: 1.0
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <157477908055.23972.1322493645551104788@jlahtine-desk.ger.corp.intel.com>
References: <20191125152710.2125824-1-chris@chris-wilson.co.uk>
 <157477908055.23972.1322493645551104788@jlahtine-desk.ger.corp.intel.com>
Message-ID: <157477941958.15944.6589568089605434527@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 26 Nov 2019 14:43:39 +0000
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

UXVvdGluZyBKb29uYXMgTGFodGluZW4gKDIwMTktMTEtMjYgMTQ6Mzg6MDApCj4gUXVvdGluZyBD
aHJpcyBXaWxzb24gKDIwMTktMTEtMjUgMTc6Mjc6MDkpCj4gPiBPbmUgZG9lcyBub3QgbGlnaHRs
eSBhZGQgYSBuZXcgaGlkZGVuIHN0cnVjdF9tdXRleCBkZXBlbmRlbmN5IGRlZXAgd2l0aGluCj4g
PiB0aGUgZXhlY2J1ZiBib3dlbHMhIFRoZSBpbW1lZGlhdGUgc3VzcGljaW9uIGluIHNlZWluZyB0
aGUgd2hpdGVsaXN0Cj4gPiBjYWNoZWQgb24gdGhlIGNvbnRleHQsIGlzIHRoYXQgaXQgaXMgaW50
ZW5kZWQgdG8gYmUgcHJlc2VydmVkIGJldHdlZW4KPiA+IGJhdGNoZXMsIGFzIHRoZSBrZXJuZWwg
aXMgcXVpdGUgYWRlcHQgYXQgY2FjaGluZyBzbWFsbCBhbGxvY2F0aW9ucwo+ID4gaXRzZWxmLiBC
dXQgbm8sIGl0J3Mgc29sZSBwdXJwb3NlIGlzIHRvIHNlcmlhbGlzZSBjb21tYW5kIHN1Ym1pc3Np
b24gaW4KPiA+IG9yZGVyIHRvIHNhdmUgYSBrbWFsbG9jIG9uIGEgc2xvdywgc2xvdyBwYXRoIQo+
IAo+IFdoZW4gbWVtb3J5IHByZXNzdXJlIGluY3JlYXNlcywgaXQgY291bGQgYmUgdGhlIHByZS1l
eGlzdGluZyBjbGllbnRzCj4gdGhhdCB0aGF0IGZhaWwgdG8gYWxsb2NhdGUgdGhlIGp1bXBsaXN0
IGFuZCBzdGFydCBmYWlsaW5nIGluc3RlYWQgb2YKPiB0aGUgbmV3IG9uZXMuLi4KClN1cmUsIGRv
ZXNuJ3Qgc2VlbSBsaWtlIGEgYmlnIGlzc3VlIHNpbmNlIGFueSBuZXcgYWxsb2NhdGlvbiAoc3Vj
aCBhcyBhCnJlcXVlc3QhISEpIG1heSBmYWlsLgogCj4gQnV0IGlmIHlvdSB0aGluayBtYW55IG90
aGVyIHBsYWNlcyB3aWxsIGZhbGwgYXBhcnQgYmVmb3JlIHRoYXQgaGFwcGVucywKPiBmZWVsIGZy
ZWUgdG8gbWFrZSBpdCBkeW5hbWljLgoKSSBjb3VsZCBhbHNvIGFyZ3VlIHRoYXQgdW5uZWNlc3Nh
cmlseSBjYWNoaW5nIHdoaXRlbGlzdHMgaW4gaWRsZQpjb250ZXh0cyB3b3VsZCBsZWFkIHRvIG1v
cmUgb29tIDopCgpUaGVyZSBpcyBhIGNhc2UgdGhhdCBpZiB0aGUgbWFsbG9jIGNhY2hlIGlzIHNs
b3csIG9yIGlmIHdlIG5lZWQgdG8KZmFsbGJhY2sgdG8gdm1hbGxvYywgdGhlbiB3ZSBzaG91bGQg
bG9vayBhdCBhIHNtYWxsIGxvY2FsIGNhY2hlIChvbiB0aGUKZW5naW5lPykuCgpUaGUgZ29vZCBu
ZXdzIGlzIHRoYXQgbWVzYSBpcyBjb21wbGFpbmluZyBhYm91dCA0LjE5IGhpdHRpbmcgRU5PTUVN
IHdpdGgKY29udGV4dC1jcmVhdGUsIHNvIHdlIGtub3cgdGhhdCBhdCBzb21lIHBvaW50IHRoZXkg
d2lsbCBjb21wbGFpbiBhdCBhbnkKa21hbGxvYyBpZiBpdCBmYWlscy4gKEJ1dCA0LjE5IC0tIHdo
eSBldmVuIGFzayBtZSEhISkKLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
