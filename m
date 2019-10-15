Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00BD7D78FC
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 16:45:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14DBD6E5F5;
	Tue, 15 Oct 2019 14:45:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01D086E5F5
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 14:45:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Oct 2019 07:45:48 -0700
X-IronPort-AV: E=Sophos;i="5.67,300,1566889200"; d="scan'208";a="185831782"
Received: from dwiesing-mobl.ger.corp.intel.com (HELO [10.252.31.172])
 ([10.252.31.172])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 15 Oct 2019 07:45:46 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191015132606.14349-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <b3c05df8-902c-a2e5-41f5-85659b2cd5f6@linux.intel.com>
Date: Tue, 15 Oct 2019 15:45:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191015132606.14349-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Flush tasklet submission before
 sleeping on i915_request_wait
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

Ck9uIDE1LzEwLzIwMTkgMTQ6MjYsIENocmlzIFdpbHNvbiB3cm90ZToKPiBJZiB0aGUgc3lzdGVt
IGlzIGJlaW5nIHNsb3cgYW5kIHVzZXJzcGFjZSBpcyByYWNpbmcgYWhlYWQgb2YgdGhlIEdQVSBh
bmQKPiBmaW5kcyBpdHNlbGYgd2FpdGluZyBmb3IgdGhlIEdQVSB0byBjYXRjaCB1cCwgYmVmb3Jl
IHRoZSBwcm9jZXNzIHNsZWVwcwo+IGdpdmUgdGhlIHRhc2tsZXQgYSBraWNrLCBieXBhc3Npbmcg
a3NvZnRpcnFkLiBJZiB0aGUgc3lzdGVtIGlzCj4gb3ZlcmxvYWRlZCwgdGhlbiBrc29mdGlycWQg
bWF5IGJlIGRlbGF5ZWQgaW5jdXJyaW5nIGFkZGl0aW9uYWwgbGF0ZW5jeQo+IHRvIG91ciB1c2Vy
Lgo+IAo+IFRoaXMgc2hvdWxkIG5vdCBiZSBhIGZyZXF1ZW50IHByb2JsZW0sIGJ1dCBpbiB0aGUg
cGFzdCB3ZSBoYXZlIG9ic2VydmVkCj4gc2V2ZXJhbCBodW5kcmVkIG1pbGxpc2Vjb25kIGRlbGF5
cyBiZWZvcmUga3NvZnRpcnFkIHNlcnZpY2VzIGFuCj4gaW50ZXJydXB0LCBzbyBidXJuIGEgZmV3
IGN5Y2xlcyB0byBsZW5kIGEgaGVscGluZyBoYW5kLgo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlz
IFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBUdnJ0a28gVXJzdWxpbiA8
dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9yZXF1ZXN0LmMgfCAxICsKPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+
IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jCj4gaW5kZXggYjhhNTQ1NzJhNGY4Li5m
MWNhZGFkNGU4MWMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1
ZXN0LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYwo+IEBAIC0x
NDk2LDYgKzE0OTYsNyBAQCBsb25nIGk5MTVfcmVxdWVzdF93YWl0KHN0cnVjdCBpOTE1X3JlcXVl
c3QgKnJxLAo+ICAgCQkJYnJlYWs7Cj4gICAJCX0KPiAgIAo+ICsJCWludGVsX2VuZ2luZV9mbHVz
aF9zdWJtaXNzaW9uKHJxLT5lbmdpbmUpOwo+ICAgCQl0aW1lb3V0ID0gaW9fc2NoZWR1bGVfdGlt
ZW91dCh0aW1lb3V0KTsKPiAgIAl9Cj4gICAJX19zZXRfY3VycmVudF9zdGF0ZShUQVNLX1JVTk5J
TkcpOwo+IAoKUmV2aWV3ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRl
bC5jb20+CgpSZWdhcmRzLAoKVHZydGtvCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
