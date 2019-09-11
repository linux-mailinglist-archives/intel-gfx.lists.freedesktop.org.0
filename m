Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 27479AF710
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2019 09:41:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5441A6E9A2;
	Wed, 11 Sep 2019 07:41:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46E476E9A2
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2019 07:41:33 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18446982-1500050 for multiple; Wed, 11 Sep 2019 08:41:29 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Kenneth Graunke <kenneth@whitecape.org>, intel-gfx@lists.freedesktop.org
References: <20190910224226.13978-1-kenneth@whitecape.org>
In-Reply-To: <20190910224226.13978-1-kenneth@whitecape.org>
Message-ID: <156818768749.30942.5625966195547061300@skylake-alporthouse-com>
Date: Wed, 11 Sep 2019 08:41:27 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Whitelist COMMON_SLICE_CHICKEN2
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

UXVvdGluZyBLZW5uZXRoIEdyYXVua2UgKDIwMTktMDktMTAgMjM6NDI6MjYpCj4gVGhpcyBhbGxv
d3MgdXNlcnNwYWNlIHRvIHVzZSAibGVnYWN5IiBtb2RlIGZvciBwdXNoIGNvbnN0YW50cywgd2hl
cmUKPiB0aGV5IGFyZSBjb21taXR0ZWQgYXQgM0RQUklNSVRJVkUgb3IgZmx1c2ggdGltZSwgcmF0
aGVyIHRoYW4gYmVpbmcKPiBjb21taXR0ZWQgYXQgM0RTVEFURV9CSU5ESU5HX1RBQkxFX1BPSU5U
RVJTX1hTIHRpbWUuICBHZW42LTggYW5kIEdlbjExCj4gYm90aCB1c2UgdGhlICJsZWdhY3kiIGJl
aGF2aW9yIC0gb25seSBHZW45IHdvcmtzIGluIHRoZSAibmV3IiB3YXkuCj4gCj4gQ29uZmxhdGlu
ZyBwdXNoIGNvbnN0YW50cyB3aXRoIGJpbmRpbmcgdGFibGVzIGlzIHBhaW5mdWwgZm9yIHVzZXJz
cGFjZSwKPiB3ZSB3b3VsZCBsaWtlIHRvIGJlIGFibGUgdG8gYXZvaWQgZG9pbmcgc28uCj4gCj4g
Q2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfd29ya2Fyb3VuZHMuYyB8IDMgKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2Vy
dGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
d29ya2Fyb3VuZHMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRz
LmMKPiBpbmRleCAyNDNkM2Y3N2JlMTMuLjQxZDBmNzg2ZTA2ZCAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwo+IEBAIC0xMDYyLDYgKzEwNjIsOSBA
QCBzdGF0aWMgdm9pZCBnZW45X3doaXRlbGlzdF9idWlsZChzdHJ1Y3QgaTkxNV93YV9saXN0ICp3
KQo+ICAKPiAgICAgICAgIC8qIFdhQWxsb3dVTURUb01vZGlmeUhEQ0NoaWNrZW4xOnNrbCxieHQs
a2JsLGdsayxjZmwgKi8KPiAgICAgICAgIHdoaXRlbGlzdF9yZWcodywgR0VOOF9IRENfQ0hJQ0tF
TjEpOwo+ICsKPiArICAgICAgIC8qIFdhU2VuZFB1c2hDb25zdGFudHNGcm9tTU1JTzpza2wsYnh0
ICovCj4gKyAgICAgICB3aGl0ZWxpc3RfcmVnKHcsIENPTU1PTl9TTElDRV9DSElDS0VOMik7CgpB
IGNvdXBsZSBiaXRzIGluIHRoZXJlIGxvb2sgbGlrZSB0aGV5IGNvdWxkIGRvIHdpdGggYSB2YWxp
ZGF0aW9uIHBhc3MgdG8KbWFrZSBzdXJlIHRoZXkgZG9uJ3Qga2lsbCB0aGUgbWFjaGluZSB3aGVu
IGluY29ycmVjdGx5IHNldC4gSG93ZXZlciwKd2UgY2FuIHJhaXNlIHRoZSBiYXIgdG9tb3Jyb3cs
IGZvciBub3cgdGhpcyBkb2Vzbid0IGxvb2sgYW55IHdvcnNlIHRoYW4KYW55IG90aGVyIHBvdGVu
dGlhbCBiYWQgYml0LiBQYXNzZWQgb3VyIHNhbml0eSBjaGVja3MgdGhhdCB0aGlzIGlzCm9yZGlu
YXJpbHkgYSBwcml2aWxlZ2VkIHJlZ2lzdGVyIChpLmUuIHdoaXRlbGlzdGluZyBpcyByZXF1aXJl
ZCkKYW5kIHRoYXQgaXQgaXMgY29udGV4dCBzYXZlZCwgc28gaW5jbHVkZSBhIHMtby1iIGFuZAoK
UmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgoKKHMt
by1iIHJlcXVpcmVkISkKLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
