Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DFE09580B6
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 12:43:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4996D6E14E;
	Thu, 27 Jun 2019 10:43:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 873B76E14E
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2019 10:43:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17042195-1500050 for multiple; Thu, 27 Jun 2019 11:43:23 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190627080339.9178-1-lionel.g.landwerlin@intel.com>
 <156163086213.20851.13729658057147323012@skylake-alporthouse-com>
 <d37bf1f5-7634-1040-1dc6-ae7a96d3245d@intel.com>
In-Reply-To: <d37bf1f5-7634-1040-1dc6-ae7a96d3245d@intel.com>
Message-ID: <156163219995.20851.15235239865952527572@skylake-alporthouse-com>
Date: Thu, 27 Jun 2019 11:43:19 +0100
Subject: Re: [Intel-gfx] [PATCH v2 0/2] drm/i915: timeline semaphore support
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

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0wNi0yNyAxMTozOToyNCkKPiBPbiAyNy8w
Ni8yMDE5IDEzOjIxLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIExpb25lbCBMYW5k
d2VybGluICgyMDE5LTA2LTI3IDA5OjAzOjM3KQo+ID4+IEhpLAo+ID4+Cj4gPj4gVGhpcyByZXZp
c2lvbiBnZXRzIHJpZCBvZiB0aGUgc3luY2hyb25vdXMgd2FpdC4gV2Ugbm93IGltcGxlbWVudCB0
aGUKPiA+PiBzeW5jaHJvbm91cyB3YWl0IGFzIHBhcnQgb2YgdGhlIHVzZXJzcGFjZSBkcml2ZXIu
IEEgdGhyZWFkIGlzIHNwYXduZWQKPiA+PiBmb3IgZWFjaCBlbmdpbmUgYW5kIHdhaXRzIGZvciBh
dmFpbGFiaWxpdHkgb2YgdGhlIHN5bmNvYmpzIGJlZm9yZQo+ID4+IGNhbGxpbmcgaW50byBleGVj
YnVmZmVyLgo+ID4gV2h5IHdvdWxkIHlvdSBkbyB0aGF0PyBJdCdzIG5vdCBsaWtlIHRoZSBrZXJu
ZWwgYWxyZWFkeSBoYXMgdGhlIGFiaWxpdHkKPiA+IHRvIHNlcmlhbGlzZXMgZXhlY3V0aW9uIGFz
eW5jaHJvbm91c2x5Li4uCj4gPiAtQ2hyaXMKPiA+Cj4gTWF5YmUgSSBkaWRuJ3QgZXhwcmVzcyBt
eXNlbGYgd2VsbC4KPiAKPiBUaGVyZSBpcyBhIHJlcXVpcmVtZW50IGZyb20gdGhlIFZ1bGthbiBz
cGVjIHRoYXQgd2Ugc2hvdWxkIGJlIGFibGUgdG8gCj4gcXVldWUgYSB3b3JrbG9hZCBkZXBlbmRp
bmcgb24gZmVuY2VzIHRoYXQgaGF2ZW4ndCBtYXRlcmlhbGl6ZWQgeWV0Lgo+IAo+IAo+IFRoZSBs
YXN0IHJldmlzaW9uIGltcGxlbWVudGVkIHRoYXQgaW4gdGhlIGk5MTUgYnkgYmxvY2tpbmcgaW4g
dGhlIAo+IGV4ZWNidWZmZXIgdW50aWwgdGhlIGlucHV0IGZlbmNlcyBoYWQgYWxsIG1hdGVyaWFs
aXplZC4KCk15IHBvaW50IHdhcyB0aGF0IHRoZSBzeW5jb2JqIHNlcW5vIGl0c2VsZiBjb3VsZCBi
ZSBleHByZXNzZWQgYXMgYSBwcm94eQpmZW5jZSB0aGF0IHdhcyByZXBsYWNlZCB3aXRoIHRoZSBy
ZWFsIGZlbmNlIGxhdGVyLiAoQW5kIHRoYXQgd2UKcHJldmlvdXNseSBoYWQgY29kZSB0byBkbyBl
eGFjdGx5IHRoYXQgOiggaTkxNSB3b3VsZCBsaXN0ZW4gdG8gdGhlCnByb3h5IGZlbmNlIGZvciBp
dHMgc2NoZWR1bGluZyBhbmQgc28gYmUgc2lnbmFsZWQgYnkgdGhlIHJpZ2h0IGZlbmNlCndoZW4g
aXQgd2FzIGtub3duLiBUaGF0IHdpbGwgYmUgYSBmZXcgb3JkZXJzIG9mIG1hZ25pdHVkZSBsb3dl
ciBsYXRlbmN5LAptb3JlIGlmIHdlIGNhbiBvcHRpbWlzZSBhd2F5IHRoZSBpcnEgYnkga25vd2lu
ZyB0aGUgcHJveHkgZmVuY2UgYWhlYWQgb2YKdGltZS4KLUNocmlzCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
