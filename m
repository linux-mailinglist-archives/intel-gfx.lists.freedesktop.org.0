Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D26495C53
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2019 12:33:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01AF06E636;
	Tue, 20 Aug 2019 10:33:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 973676E636
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 10:33:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18200127-1500050 for multiple; Tue, 20 Aug 2019 11:33:37 +0100
MIME-Version: 1.0
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190817093902.2171-33-lucas.demarchi@intel.com>
References: <20190817093902.2171-1-lucas.demarchi@intel.com>
 <20190817093902.2171-33-lucas.demarchi@intel.com>
Message-ID: <156629721504.1374.16673799641050589056@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 20 Aug 2019 11:33:35 +0100
Subject: Re: [Intel-gfx] [PATCH v2 32/40] drm/i915/tgl: Updated Private PAT
 programming
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
Cc: Michel Thierry <michel.thierry@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBMdWNhcyBEZSBNYXJjaGkgKDIwMTktMDgtMTcgMTA6Mzg6NTQpCj4gRnJvbTogTWlj
aGVsIFRoaWVycnkgPG1pY2hlbC50aGllcnJ5QGludGVsLmNvbT4KPiAKPiBHZW4xMiByZW1vdmVz
IHRoZSB0YXJnZXQtY2FjaGUgYW5kIGFnZSBmaWVsZHMgZnJvbSB0aGUgcHJpdmF0ZSBQQVQKPiBi
ZWNhdXNlIE1PQ1Mgbm93IGhhdmUgdGhlIGNhcGFiaWxpdHkgdG8gc2V0IHRoZXNlIGl0c2VsZi4g
T25seSBtZW1vcnktdHlwZQo+IGZpZWxkIHNob3VsZCBiZSBwcm9ncmFtbWVkIGluIHRoZSBwcGF0
LCB0aGUgcmVtaW5kZWQgYml0cyBhcmUgcmVzZXJ2ZWQuCj4gCj4gU2luY2Ugbm93IHRoZXJlIGFy
ZSBvbmx5IDQgcG9zc2libGUgY29tYmluYXRpb25zLCB3ZSBjb3VsZCBzZXQgb25seSA0Cj4gUFBB
VCBhbmQgbGVhdmUgdGhlIHJlbWluZGVkIDQgYXMgVUMsIGJ1dCBJIGxlZnQgdGhlbSBhcyBXQiBh
cyB3ZSB1c2VkCj4gdG8gaGF2ZSBiZWZvcmUuCj4gCj4gQWxzbyB0aGVzZSByZWdpc3RlcnMgaGF2
ZSBiZWVuIHJlbG9jYXRlZCB0byB0aGUgMHg0ODAwLTB4NDgxYyByYW5nZS4KPiAKPiBIU0RFUzog
MTQwNjQwMjY2MQo+IEJTcGVjOiAzMTY1NAo+IENjOiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxk
YW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IE1pY2hlbCBU
aGllcnJ5IDxtaWNoZWwudGhpZXJyeUBpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTHVjYXMg
RGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBDaHJpcyBX
aWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLUNocmlzCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
