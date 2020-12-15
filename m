Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA7072DAE09
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Dec 2020 14:33:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7481589298;
	Tue, 15 Dec 2020 13:33:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FF9B89298
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Dec 2020 13:33:39 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23332216-1500050 for multiple; Tue, 15 Dec 2020 13:33:35 +0000
MIME-Version: 1.0
In-Reply-To: <20201214185440.243537-1-jose.souza@intel.com>
References: <20201214185440.243537-1-jose.souza@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: José Roberto de Souza <jose.souza@intel.com>, intel-gfx@lists.freedesktop.org
Date: Tue, 15 Dec 2020 13:33:36 +0000
Message-ID: <160803921612.10792.14553877968742507945@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] doc: Fix build of documentation after i915
 file rename
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBKb3PDqSBSb2JlcnRvIGRlIFNvdXphICgyMDIwLTEyLTE0IDE4OjU0OjQwKQo+IENv
bW1pdCA3MGEyYjQzMWMzNjQgKCJkcm0vaTkxNS9ndDogUmVuYW1lIGxyYy5jIHRvCj4gZXhlY2xp
c3RzX3N1Ym1pc3Npb24uYyIpIHJlbmFtZWQgaW50ZWxfbHJjLmMgdG8KPiBpbnRlbF9leGVjbGlz
dHNfc3VibWlzc2lvbi5jIGJ1dCBmb3Jnb3QgdG8gdXBkYXRlIGk5MTUucnN0Lgo+IAo+IEZpeGVz
OiA3MGEyYjQzMWMzNjQgKCJkcm0vaTkxNS9ndDogUmVuYW1lIGxyYy5jIHRvIGV4ZWNsaXN0c19z
dWJtaXNzaW9uLmMiKQo+IENjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4KPiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGlu
dGVsLmNvbT4KPiAtLS0KPiAgRG9jdW1lbnRhdGlvbi9ncHUvaTkxNS5yc3QgfCAyICstCj4gIDEg
ZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1n
aXQgYS9Eb2N1bWVudGF0aW9uL2dwdS9pOTE1LnJzdCBiL0RvY3VtZW50YXRpb24vZ3B1L2k5MTUu
cnN0Cj4gaW5kZXggMjA4NjhmM2QwMTIzLi40ODZjNzIwZjM4OTAgMTAwNjQ0Cj4gLS0tIGEvRG9j
dW1lbnRhdGlvbi9ncHUvaTkxNS5yc3QKPiArKysgYi9Eb2N1bWVudGF0aW9uL2dwdS9pOTE1LnJz
dAo+IEBAIC00MjgsNyArNDI4LDcgQEAgVXNlciBCYXRjaGJ1ZmZlciBFeGVjdXRpb24KPiAgTG9n
aWNhbCBSaW5ncywgTG9naWNhbCBSaW5nIENvbnRleHRzIGFuZCBFeGVjbGlzdHMKPiAgLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiAgCj4gLS4uIGtl
cm5lbC1kb2M6OiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+ICsuLiBrZXJu
ZWwtZG9jOjogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZXhlY2xpc3RzX3N1Ym1pc3Np
b24uYwo+ICAgICA6ZG9jOiBMb2dpY2FsIFJpbmdzLCBMb2dpY2FsIFJpbmcgQ29udGV4dHMgYW5k
IEV4ZWNsaXN0cwoKSXQncyBubyBsb25nZXIgYXByb3BvcyB0byBpbnRlbF9leGVjbGlzdHNfc3Vi
bWlzc2lvbi5jLCBidXQgbmV2ZXJ0aGVsZXNzClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeAo=
