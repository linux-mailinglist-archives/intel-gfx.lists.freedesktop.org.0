Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E814AB41FB
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Sep 2019 22:37:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30FC76EA81;
	Mon, 16 Sep 2019 20:37:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2B6A6EA81
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Sep 2019 20:37:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Sep 2019 13:37:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,514,1559545200"; d="scan'208";a="361638766"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga005.jf.intel.com with ESMTP; 16 Sep 2019 13:37:34 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190914082550.11547-1-chris@chris-wilson.co.uk>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <68a86006-4113-d8fd-4ca5-4f7a00b1d21f@intel.com>
Date: Mon, 16 Sep 2019 13:37:26 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190914082550.11547-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Suspend pre-parser across GTT
 invalidations
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiA5LzE0LzE5IDE6MjUgQU0sIENocmlzIFdpbHNvbiB3cm90ZToKPiBCZWZvcmUgd2UgZXhl
Y3V0ZSBhIGJhdGNoLCB3ZSBtdXN0IGZpcnN0IGlzc3VlIGFueSBhbmQgYWxsIFRMQgo+IGludmFs
aWRhdGlvbnMgc28gdGhhdCBiYXRjaCBwaWNrcyB1cCB0aGUgbmV3IHBhZ2UgdGFibGUgZW50cmll
cy4KPiBUaWdlcmxha2UncyBwcmVwYXJzZXIgaXMgd2Vha2VuaW5nIG91ciBwb3N0LXN5bmMgQ1Nf
U1RBTEwgaW5zaWRlIHRoZQo+IGludmFsaWRhdGUgcGlwZS1jb250cm9sIGFuZCBhbGxvd2luZyB0
aGUgbG9hZGluZyBvZiB0aGUgYmF0Y2ggYnVmZmVyCj4gYmVmb3JlIHdlIGhhdmUgc2V0dXAgaXRz
IHBhZ2UgdGFibGUgKGFuZCBzbyBpdCBsb2FkcyB0aGUgd3JvbmcgcGFnZSBhbmQKPiBleGVjdXRl
cyBpbmRlZmluaXRlbHkpLgo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxl
LmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgo+IENjOiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3Bw
YWxhQGxpbnV4LmludGVsLmNvbT4KPiAtLS0KPiBTdWdnZXN0aW9ucyB3ZWxjb21lIGFzIHRoaXMg
ZG9lcyBub3Qgc2VlbSBpbnRlbmRlZCBiZWhhdmlvdXIsIHNvIEkKPiBzdXNwZWN0IHRoZXJlIGlz
IGEgc3Ryb25nIHBpcGVjb250cm9sIGZsYWcgd2UgYXJlIG1pc3NpbmcuCgpXaGVuIEkgZGlzY3Vz
c2VkIHRoZSBwcmUtcGFyc2VyIHdpdGggdGhlIEhXIHRlYW0gdGhlIGZlZWRiYWNrIEkgZ290IHdh
cyAKdGhhdCB0aGUgb25seSB3YXkgdG8gbWFrZSBzdXJlIHdlIGRvbid0IHJhY2UgdGhlIG1lbW9y
eSB1cGRhdGUgaXMgdG8gCmVpdGhlciBsZWF2ZSBlbm91Z2ggQ0wgb2Ygc3BhY2Ugb3IgdHVybiB0
aGUgcGFyc2VyIG9mZiBsaWtlIHlvdSBkaWQgCmJlbG93LiBUaGF0IGRpc2N1c3Npb24gd2FzIGFi
b3V0IGFjdHVhbCBwaHlzaWNhbCBtZW1vcnkgYWNjZXNzIHRob3VnaCAKYW5kIG5vdCBUTEIuCkFu
eXdheSwgdHVybmluZyBvZmYgdGhlIHBhcnNlciBhcm91bmQgdGhlIHBpcGUgY29udHJvbCwgaWYg
aXQgZml4ZXMgdGhlIApwcm9ibGVtLCBzaG91bGRuJ3QgYmUgdG9vIGJhZCBzaW5jZSB0aGUgbWFp
biBwZXJmb3JtYW5jZSBhZHZhbnRhZ2Ugb2YgCnRoZSBwYXJzZXIgaXMgZXhwZWN0ZWQgaW5zaWRl
IHRoZSB1c2VyIGJhdGNoLiBUaGUgYWx0ZXJuYXRpdmUgd291bGQgCnByb2JhYmx5IGJlIHRvIHN0
b3AgaW52YWxpZGF0aW5nIHRoZSBUTEJzIGZyb20gd2l0aGluIHRoZSByaW5nIGFuZCAKc3dpdGNo
IHRvIE1NSU8gaW52YWxpZGF0aW9ucyB3aGVuIGxpdGUtcmVzdG9yaW5nIGEgbmV3IHJlcXVlc3Qg
aW4gdGhlIApyaW5nICh0aGUgQ1Mgd2lsbCBpbXBsaWNpdGx5IHN0b3AgdGhlIHBhcnNlciBhbmQg
aW52YWxpZGF0ZSBldmVyeXRoaW5nIApvbiBhIGZ1bGwgY3R4IHN3aXRjaCkuCgpEYW5pZWxlCgo+
IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgfCA1ICsrKystCj4g
ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiBpbmRleCBhM2YwZTQ5OTk3NDQuLmE5ZTY5MGMz
MDNjYyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4gQEAgLTI3OTYsMTEg
KzI3OTYsMTQgQEAgc3RhdGljIGludCBnZW4xMV9lbWl0X2ZsdXNoX3JlbmRlcihzdHJ1Y3QgaTkx
NV9yZXF1ZXN0ICpyZXF1ZXN0LAo+ICAgCQlmbGFncyB8PSBQSVBFX0NPTlRST0xfUVdfV1JJVEU7
Cj4gICAJCWZsYWdzIHw9IFBJUEVfQ09OVFJPTF9HTE9CQUxfR1RUX0lWQjsKPiAgIAo+IC0JCWNz
ID0gaW50ZWxfcmluZ19iZWdpbihyZXF1ZXN0LCA2KTsKPiArCQljcyA9IGludGVsX3JpbmdfYmVn
aW4ocmVxdWVzdCwgOCk7Cj4gICAJCWlmIChJU19FUlIoY3MpKQo+ICAgCQkJcmV0dXJuIFBUUl9F
UlIoY3MpOwo+ICAgCj4gKwkJKmNzKysgPSBNSV9BUkJfQ0hFQ0sgfCAxIDw8IDggfCAxOwo+ICAg
CQljcyA9IGdlbjhfZW1pdF9waXBlX2NvbnRyb2woY3MsIGZsYWdzLCBzY3JhdGNoX2FkZHIpOwo+
ICsJCSpjcysrID0gTUlfQVJCX0NIRUNLIHwgMSA8PCA4Owo+ICsKPiAgIAkJaW50ZWxfcmluZ19h
ZHZhbmNlKHJlcXVlc3QsIGNzKTsKPiAgIAl9Cj4gICAKPiAKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
