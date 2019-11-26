Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A00A710A2E5
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 18:01:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B57B6E43A;
	Tue, 26 Nov 2019 17:01:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A62B56E43A
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 17:01:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 09:00:56 -0800
X-IronPort-AV: E=Sophos;i="5.69,246,1571727600"; d="scan'208";a="202777997"
Received: from kjbrenna-mobl1.ger.corp.intel.com (HELO [10.251.83.147])
 ([10.251.83.147])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 26 Nov 2019 09:00:55 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191126164712.2802694-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <5fa8398b-75df-6d61-92a2-681b54308fc6@linux.intel.com>
Date: Tue, 26 Nov 2019 17:00:53 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191126164712.2802694-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftest: If reconfigure_sseu is
 busy, try again
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

Ck9uIDI2LzExLzIwMTkgMTY6NDcsIENocmlzIFdpbHNvbiB3cm90ZToKPiBGb2xsb3dpbmcgNThi
NGMxYTA3YWRhICgiZHJtL2k5MTU6IFJlZHVjZSBuZXN0ZWQgcHJlcGFyZV9yZW1vdGVfY29udGV4
dCgpCj4gdG8gYSB0cnlsb2NrIiksIHdlIHB1bnQgdG8gdGhlIGNhbGxlciBpZiB0aGUgbG9jYWwg
aW50ZWxfY29udGV4dAo+IGhhcHBlbnMgdG8gYmUgYnVzeSBhcyB3ZSB0cnkgdG8gcmV3cml0ZSB0
aGUgc3NldSAoZHVlIHRvIHJldGlyaW5nIGluCj4gYW5vdGhlciB0aHJlYWQpLiBBcyB0aGUgaW50
ZXJsdWRlIHNob3VsZCBiZSBzaG9ydCwgc3BpbiB1bnRpbCB0aGUgbG9jawo+IGlzIGF2YWlsYWJs
ZS4KPiAKPiBUaGUgcmVncmV0IGZvciB1c2luZyBtdXRleF90cnlsb2NrKCkgYW5kIG5vdCBhbiBh
dG9taWMgaW5zZXJ0aW9uIG9mIHRoZQo+IGJhcnJpZXIgaXMgZ3Jvd2luZy4uLgo+IAo+IFNpZ25l
ZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBU
dnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IC0tLQo+ICAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9jb250ZXh0LmMgfCA1ICsrKyst
Cj4gICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1f
Y29udGV4dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9j
b250ZXh0LmMKPiBpbmRleCAyZWE0NzkwZjM3MjEuLjU3MWNjOTk2NTc3YyAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2NvbnRleHQuYwo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fY29udGV4
dC5jCj4gQEAgLTExOTcsNyArMTE5NywxMCBAQCBfX3NzZXVfdGVzdChjb25zdCBjaGFyICpuYW1l
LAo+ICAgCWlmIChyZXQpCj4gICAJCWdvdG8gb3V0X3BtOwo+ICAgCj4gLQlyZXQgPSBpbnRlbF9j
b250ZXh0X3JlY29uZmlndXJlX3NzZXUoY2UsIHNzZXUpOwo+ICsJZG8gewo+ICsJCXJldCA9IGlu
dGVsX2NvbnRleHRfcmVjb25maWd1cmVfc3NldShjZSwgc3NldSk7Cj4gKwkJY29uZF9yZXNjaGVk
KCk7Cj4gKwl9IHdoaWxlIChyZXQgPT0gLUVBR0FJTik7Cj4gICAJaWYgKHJldCkKPiAgIAkJZ290
byBvdXRfc3BpbjsKPiAgIAo+IAoKSG0gSSBsb29rZWQgYXQgdGhlIHNlbGZ0ZXN0cywgc2F3IGVy
cm9yIGlzIGNvcnJlY3RseSBwcm9wYWdhdGVkLCBhbmQgCmNvbmNsdWRlZCBpdCB3aWxsIGJlIGZp
bmUuIEkgbWlzc2VkIHRoZSBwcm9ibGVtIHNlbGZ0ZXN0cyB3aWxsIG5vdCAKYWN0dWFsbHkgcmV0
cnkuIEJ1dCB3YWl0LCBjYW4gd2UgZXZlbiBjb3VudCB0aGF0IHVzZXJzcGFjZSB3aWxsIGlmIGFs
bCAKb2YgYSBzdWRkZW4gY3R4LnNldF9wYXJhbSBzdGFydHMgcmV0dXJuaW5nIC1FQUdBSU4gc3Bv
cmFkaWNhbGx5PyBGZWVscyAKbGlrZSB3ZSBtYXkgbmVlZCB0byByZXZlcnQuCgpSZWdhcmRzLAoK
VHZydGtvCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
