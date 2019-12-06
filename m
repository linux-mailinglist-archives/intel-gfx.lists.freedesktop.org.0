Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C7C16114FCF
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Dec 2019 12:34:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D8D96E141;
	Fri,  6 Dec 2019 11:34:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 525126E141
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Dec 2019 11:34:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Dec 2019 03:34:04 -0800
X-IronPort-AV: E=Sophos;i="5.69,284,1571727600"; d="scan'208";a="206095587"
Received: from cpreilly-mobl1.ger.corp.intel.com (HELO [10.251.80.64])
 ([10.251.80.64])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 06 Dec 2019 03:34:03 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191206105527.1130413-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <050d3f36-ee0f-1963-e4e9-8912e24021f2@linux.intel.com>
Date: Fri, 6 Dec 2019 11:34:01 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191206105527.1130413-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/gem: Flush the pwrite through
 the chipset before signaling
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
Cc: matthew.auld@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDA2LzEyLzIwMTkgMTA6NTUsIENocmlzIFdpbHNvbiB3cm90ZToKPiBCZWZvcmUgd2Ugc2ln
bmFsIHRoZSBmZW5jZSB0byBpbmRpY2F0ZSBjb21wbGV0aW9uLCBlbnN1cmUgdGhlIHB3cml0ZQo+
IHRocm91Z2ggdGhlIGluZGlyZWN0IEdHVFQgaXMgY29oZXJlbnQgKGFzIGJlc3QgYXMgd2Uga25v
dykgaW4gbWVtb3J5Lgo+IEFueSBsaXN0ZW5lcnMgdG8gdGhlIGZlbmNlIG1heSBzdGFydCBpbW1l
ZGlhdGVseSBhbmQgc2FtcGxlIGZyb20gdGhlCj4gYmFja2luZyBzdG9yZSBwcmlvciB0byB0aGUg
d3JpdGVzIGJlaW5nIHBvc3RlZCwgdGh1cyBzZWVpbmcgc3RhbGUgZGF0YS4KPiAKPiBTaWduZWQt
b2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiAtLS0KPiAg
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMgfCAzICsrLQo+ICAgMSBmaWxlIGNoYW5n
ZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9n
ZW0uYwo+IGluZGV4IDk4YjY1YjcxOGUxYS4uOTE5ZDNhNzIzYzUwIDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2dlbS5jCj4gQEAgLTY3MCwxMSArNjcwLDEyIEBAIGk5MTVfZ2VtX2d0dF9wd3JpdGVf
ZmFzdChzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAo+ICAgCQl1c2VyX2RhdGEgKz0g
cGFnZV9sZW5ndGg7Cj4gICAJCW9mZnNldCArPSBwYWdlX2xlbmd0aDsKPiAgIAl9Cj4gKwo+ICsJ
aW50ZWxfZ3RfZmx1c2hfZ2d0dF93cml0ZXMoZ2d0dC0+dm0uZ3QpOwo+ICAgCWludGVsX2Zyb250
YnVmZmVyX2ZsdXNoKG9iai0+ZnJvbnRidWZmZXIsIE9SSUdJTl9DUFUpOwo+ICAgCj4gICAJaTkx
NV9nZW1fb2JqZWN0X3VubG9ja19mZW5jZShvYmosIGZlbmNlKTsKPiAgIG91dF91bnBpbjoKPiAt
CWludGVsX2d0X2ZsdXNoX2dndHRfd3JpdGVzKGdndHQtPnZtLmd0KTsKPiAgIAlpZiAoZHJtX21t
X25vZGVfYWxsb2NhdGVkKCZub2RlKSkgewo+ICAgCQlnZ3R0LT52bS5jbGVhcl9yYW5nZSgmZ2d0
dC0+dm0sIG5vZGUuc3RhcnQsIG5vZGUuc2l6ZSk7Cj4gICAJCXJlbW92ZV9tYXBwYWJsZV9ub2Rl
KGdndHQsICZub2RlKTsKPiAKClJldmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVy
c3VsaW5AaW50ZWwuY29tPgoKUmVnYXJkcywKClR2cnRrbwpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
