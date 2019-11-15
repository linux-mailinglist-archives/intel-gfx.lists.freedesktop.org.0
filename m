Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D58FFDF62
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 14:54:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 373446E5F5;
	Fri, 15 Nov 2019 13:54:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C31C6E5F5
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 13:54:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19213448-1500050 for multiple; Fri, 15 Nov 2019 13:54:19 +0000
MIME-Version: 1.0
To: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191115114549.23716-3-abdiel.janulgue@linux.intel.com>
References: <20191115114549.23716-1-abdiel.janulgue@linux.intel.com>
 <20191115114549.23716-3-abdiel.janulgue@linux.intel.com>
Message-ID: <157382605675.11997.15122826569608431814@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 15 Nov 2019 13:54:16 +0000
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: cpu-map based dumb buffers
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBBYmRpZWwgSmFudWxndWUgKDIwMTktMTEtMTUgMTE6NDU6NDgpCj4gUHJlZmVyIENQ
VSBXQyBtbWFwcyB2aWEgb3VyIG5ldyBtbWFwIG9mZnNldCBwbHVtYmluZyBvdGhlcndpc2UgZmFs
bC0KPiBiYWNrIHRvIEdUVCBtbWFwcyB3aGVuIGh3IGRvZXNuJ3Qgc3VwcG9ydCBQQVQKPiAKPiBT
aWduZWQtb2ZmLWJ5OiBBYmRpZWwgSmFudWxndWUgPGFiZGllbC5qYW51bGd1ZUBsaW51eC5pbnRl
bC5jb20+Cj4gQ2M6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KPiAtLS0K
PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYyB8IDE4ICsrKysrKysr
KysrKysrKysrKwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5oIHwg
IDIgKysKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyAgICAgICAgICB8ICAxICsK
PiAgMyBmaWxlcyBjaGFuZ2VkLCAyMSBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5jCj4gaW5kZXggZDJlZDhhNDYzNjcyLi5jMTc1NmU0ZjQ2
YjkgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4u
Ywo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMKPiBAQCAt
NTQwLDYgKzU0MCwyNCBAQCBfX2Fzc2lnbl9nZW1fb2JqZWN0X21tYXBfZGF0YShzdHJ1Y3QgZHJt
X2ZpbGUgKmZpbGUsCj4gICAgICAgICByZXR1cm4gcmV0Owo+ICB9Cj4gIAo+ICtpbnQKPiAraTkx
NV9nZW1fbW1hcF9kdW1iKHN0cnVjdCBkcm1fZmlsZSAqZmlsZSwKPiArICAgICAgICAgICAgICAg
ICBzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAo+ICsgICAgICAgICAgICAgICAgIHUzMiBoYW5kbGUs
Cj4gKyAgICAgICAgICAgICAgICAgdTY0ICpvZmZzZXQpCj4gK3sKPiArICAgICAgIGVudW0gaTkx
NV9tbWFwX3R5cGUgbW1hcF90eXBlOwo+ICsKPiArICAgICAgIGlmIChib290X2NwdV9oYXMoWDg2
X0ZFQVRVUkVfUEFUKSkKPiArICAgICAgICAgICAgICAgbW1hcF90eXBlID0gSTkxNV9NTUFQX1RZ
UEVfV0M7Cj4gKyAgICAgICBlbHNlIGlmICghaTkxNV9nZ3R0X2hhc19hcGVydHVyZSgmdG9faTkx
NShkZXYpLT5nZ3R0KSkKPiArICAgICAgICAgICAgICAgcmV0dXJuIC1FTk9ERVY7Cj4gKyAgICAg
ICBlbHNlCj4gKyAgICAgICAgICAgICAgIG1tYXBfdHlwZSA9IEk5MTVfTU1BUF9UWVBFX0dUVDsK
PiArCj4gKyAgICAgICByZXR1cm4gX19hc3NpZ25fZ2VtX29iamVjdF9tbWFwX2RhdGEoZmlsZSwg
aGFuZGxlLCBtbWFwX3R5cGUsIG9mZnNldCk7CgpMb29rcyBvay4gSnVzdCBhIGZldyBuYWdnaW5n
IGRvdWJ0cyBhYm91dCBwb3RlbnRpYWwgZXhpc3RpbmcgbWlzdXNlIGJ5CnVzZXJzcGFjZSwgc3Vj
aCBhcyBhcmUgdmVyeSB1c2luZyB0aWxpbmcgb24gdGhlaXIgZHVtYiBidWZmZXIsIGFyZSB0aGV5
CnBhc3NpbmcgaW4gYSBub24tZHVtYiBoYW5kbGU/CgpPZiBjb3Vyc2Ugd2Ugd2lsbCBuZWVkIHRv
IGJlYXQgaWd0IGludG8gc2hhcGUgZmlyc3QsIGFzIGEgZmV3IHBpcGUtY3JjCnJlc3VsdHMgc3Vn
Z2VzdHMgc29tZSBub3Qgc21hcnQgdXNlIG9mIGR1bWIgYnVmZmVycy4KLUNocmlzCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
