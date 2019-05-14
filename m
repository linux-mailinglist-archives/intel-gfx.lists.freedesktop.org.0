Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 788FF1C8FF
	for <lists+intel-gfx@lfdr.de>; Tue, 14 May 2019 14:47:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BBBA890CD;
	Tue, 14 May 2019 12:47:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A402A890CD;
 Tue, 14 May 2019 12:47:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 May 2019 05:47:46 -0700
X-ExtLoop1: 1
Received: from lstanule-mobl1.ger.corp.intel.com (HELO [10.252.8.33])
 ([10.252.8.33])
 by orsmga007.jf.intel.com with ESMTP; 14 May 2019 05:47:45 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190508100958.32637-1-chris@chris-wilson.co.uk>
 <20190508100958.32637-11-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <9f96b224-ca13-10a1-b147-5e907106af4b@linux.intel.com>
Date: Tue, 14 May 2019 13:48:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190508100958.32637-11-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t 11/16] i915/gem_exec_whisper:
 debugfs/next_seqno is defunct
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
Cc: igt-dev@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDA4LzA1LzIwMTkgMTE6MDksIENocmlzIFdpbHNvbiB3cm90ZToKPiBXZSByZW1vdmVkIG5l
eHRfc2Vxbm8gaW4gNS4xLCBzbyB0aW1lIHRvIHdhdmUgZ29vZGJ5ZS4KPiAKPiBTaWduZWQtb2Zm
LWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiAtLS0KPiAgIHRl
c3RzL2k5MTUvZ2VtX2V4ZWNfd2hpc3Blci5jIHwgMTIgLS0tLS0tLS0tLS0tCj4gICAxIGZpbGUg
Y2hhbmdlZCwgMTIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL3Rlc3RzL2k5MTUvZ2Vt
X2V4ZWNfd2hpc3Blci5jIGIvdGVzdHMvaTkxNS9nZW1fZXhlY193aGlzcGVyLmMKPiBpbmRleCBk
NWFmYzgxMTkuLjYxYjhkNmRhYyAxMDA2NDQKPiAtLS0gYS90ZXN0cy9pOTE1L2dlbV9leGVjX3do
aXNwZXIuYwo+ICsrKyBiL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfd2hpc3Blci5jCj4gQEAgLTQ0LDE1
ICs0NCw2IEBACj4gICAKPiAgICNkZWZpbmUgVkVSSUZZIDAKPiAgIAo+IC1zdGF0aWMgdm9pZCB3
cml0ZV9zZXFubyhpbnQgZGlyLCB1bnNpZ25lZCBvZmZzZXQpCj4gLXsKPiAtCXVpbnQzMl90IHNl
cW5vID0gVUlOVDMyX01BWCAtIG9mZnNldDsKPiAtCj4gLQlpZ3Rfc3lzZnNfcHJpbnRmKGRpciwg
Imk5MTVfbmV4dF9zZXFubyIsICIweCV4Iiwgc2Vxbm8pOwo+IC0KPiAtCWlndF9kZWJ1ZygibmV4
dCBzZXFubyBzZXQgdG86IDB4JXhcbiIsIHNlcW5vKTsKPiAtfQo+IC0KPiAgIHN0YXRpYyB2b2lk
IGNoZWNrX2JvKGludCBmZCwgdWludDMyX3QgaGFuZGxlLCBpbnQgcGFzcykKPiAgIHsKPiAgIAl1
aW50MzJfdCAqbWFwOwo+IEBAIC0zNTUsOSArMzQ2LDYgQEAgc3RhdGljIHZvaWQgd2hpc3Blcihp
bnQgZmQsIHVuc2lnbmVkIGVuZ2luZSwgdW5zaWduZWQgZmxhZ3MpCj4gICAJCQlpZ3RfdW50aWxf
dGltZW91dCgxNTApIHsKPiAgIAkJCQl1aW50NjRfdCBvZmZzZXQ7Cj4gICAKPiAtCQkJCWlmIChu
Y2hpbGQgPT0gMSkKPiAtCQkJCQl3cml0ZV9zZXFubyhkZWJ1Z2ZzLCBwYXNzKTsKPiAtCj4gICAJ
CQkJaWYgKGZsYWdzICYgSEFORykKPiAgIAkJCQkJc3VibWl0X2hhbmcoJmhhbmcsIGVuZ2luZXMs
IG5lbmdpbmUsIGZsYWdzKTsKPiAgIAo+IAoKUmV2aWV3ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0
dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CgpSZWdhcmRzLAoKVHZydGtvCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
