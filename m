Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5641DFBCB8
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Nov 2019 00:56:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6557F6EEA1;
	Wed, 13 Nov 2019 23:56:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F2AB6EEA0;
 Wed, 13 Nov 2019 23:56:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19193952-1500050 for multiple; Wed, 13 Nov 2019 23:55:59 +0000
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191113154913.8787-3-mika.kuoppala@linux.intel.com>
References: <20191113154913.8787-1-mika.kuoppala@linux.intel.com>
 <20191113154913.8787-3-mika.kuoppala@linux.intel.com>
Message-ID: <157368935824.26076.11275023264176301427@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 13 Nov 2019 23:55:58 +0000
Subject: Re: [Intel-gfx] [PATCH i-g-t 3/7] lib/i915: Add query to detect if
 engine accepts only ro batches
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
Cc: igt-dev@lists.freedesktop.org, Kuoppala@rosetta.fi.intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTExLTEzIDE1OjQ5OjA5KQo+IGRpZmYgLS1naXQg
YS90ZXN0cy9pOTE1L2dlbV9leGVjX3NjaGVkdWxlLmMgYi90ZXN0cy9pOTE1L2dlbV9leGVjX3Nj
aGVkdWxlLmMKPiBpbmRleCA1YzE1ZjE3Ny4uY2E2YmVmNmEgMTAwNjQ0Cj4gLS0tIGEvdGVzdHMv
aTkxNS9nZW1fZXhlY19zY2hlZHVsZS5jCj4gKysrIGIvdGVzdHMvaTkxNS9nZW1fZXhlY19zY2hl
ZHVsZS5jCj4gQEAgLTY1Miw3ICs2NTIsOCBAQCBzdGF0aWMgdm9pZCBzZW1hcGhvcmVfbm9za2lw
KGludCBpOTE1KQo+ICAgICAgICAgICAgICAgICBpZ3Rfc3Bpbl90ICpjaGFpbiwgKnNwaW47Cj4g
IAo+ICAgICAgICAgICAgICAgICBpZiAoZWJfcmluZyhpbm5lcikgPT0gZWJfcmluZyhvdXRlcikg
fHwKPiAtICAgICAgICAgICAgICAgICAgICFnZW1fY2FuX3N0b3JlX2R3b3JkKGk5MTUsIGViX3Jp
bmcoaW5uZXIpKSkKPiArICAgICAgICAgICAgICAgICAgICFnZW1fY2FuX3N0b3JlX2R3b3JkKGk5
MTUsIGViX3JpbmcoaW5uZXIpKSB8fAo+ICsgICAgICAgICAgICAgICAgICAgIWdlbV9lbmdpbmVf
aGFzX211dGFibGVfc3VibWlzc2lvbihpOTE1LCBlYl9yaW5nKGlubmVyKSkpCj4gICAgICAgICAg
ICAgICAgICAgICAgICAgY29udGludWU7Cj4gIAo+ICAgICAgICAgICAgICAgICBjaGFpbiA9IF9f
aWd0X3NwaW5fbmV3KGk5MTUsIC5lbmdpbmUgPSBlYl9yaW5nKG91dGVyKSk7Cj4gQEAgLTExNTcs
NiArMTE1OCw5IEBAIHN0YXRpYyB2b2lkIGRlZXAoaW50IGZkLCB1bnNpZ25lZCByaW5nKQo+ICAg
ICAgICAgaW50IGRlcF9ucmVxOwo+ICAgICAgICAgaW50IG47Cj4gIAo+ICsgICAgICAgaWd0X3Jl
cXVpcmUoZ2VtX2Nhbl9zdG9yZV9kd29yZChmZCwgcmluZykpOwo+ICsgICAgICAgaWd0X3JlcXVp
cmUoZ2VtX2VuZ2luZV9oYXNfbXV0YWJsZV9zdWJtaXNzaW9uKGZkLCByaW5nKSk7Cj4gKwo+ICAg
ICAgICAgY3R4ID0gbWFsbG9jKHNpemVvZigqY3R4KSAqIE1BWF9DT05URVhUUyk7Cj4gICAgICAg
ICBmb3IgKG4gPSAwOyBuIDwgTUFYX0NPTlRFWFRTOyBuKyspIHsKPiAgICAgICAgICAgICAgICAg
Y3R4W25dID0gZ2VtX2NvbnRleHRfY3JlYXRlKGZkKTsKCldvcmtzLCBubyBuZWVkIHRvIHNraXAu
Cgo+IGRpZmYgLS1naXQgYS90ZXN0cy9pOTE1L2dlbV9leGVjX3doaXNwZXIuYyBiL3Rlc3RzL2k5
MTUvZ2VtX2V4ZWNfd2hpc3Blci5jCj4gaW5kZXggYTMzODQ3NjAuLjQ1Y2MxNDM3IDEwMDY0NAo+
IC0tLSBhL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfd2hpc3Blci5jCj4gKysrIGIvdGVzdHMvaTkxNS9n
ZW1fZXhlY193aGlzcGVyLmMKPiBAQCAtMjA0LDEzICsyMDQsMTUgQEAgc3RhdGljIHZvaWQgd2hp
c3BlcihpbnQgZmQsIHVuc2lnbmVkIGVuZ2luZSwgdW5zaWduZWQgZmxhZ3MpCj4gICAgICAgICBu
ZW5naW5lID0gMDsKPiAgICAgICAgIGlmIChlbmdpbmUgPT0gQUxMX0VOR0lORVMpIHsKPiAgICAg
ICAgICAgICAgICAgZm9yX2VhY2hfcGh5c2ljYWxfZW5naW5lKGUsIGZkKSB7Cj4gLSAgICAgICAg
ICAgICAgICAgICAgICAgaWYgKGdlbV9jYW5fc3RvcmVfZHdvcmQoZmQsIGViX3JpbmcoZSkpKQo+
ICsgICAgICAgICAgICAgICAgICAgICAgIGlmIChnZW1fY2FuX3N0b3JlX2R3b3JkKGZkLCBlYl9y
aW5nKGUpKSAmJgo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICBnZW1fZW5naW5lX2hhc19t
dXRhYmxlX3N1Ym1pc3Npb24oZmQsIGViX3JpbmcoZSkpKQo+ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgZW5naW5lc1tuZW5naW5lKytdID0gZWJfcmluZyhlKTsKPiAgICAgICAgICAg
ICAgICAgfQo+ICAgICAgICAgfSBlbHNlIHsKPiAgICAgICAgICAgICAgICAgaWd0X2Fzc2VydCgh
KGZsYWdzICYgQUxMKSk7Cj4gICAgICAgICAgICAgICAgIGlndF9yZXF1aXJlKGdlbV9oYXNfcmlu
ZyhmZCwgZW5naW5lKSk7Cj4gICAgICAgICAgICAgICAgIGlndF9yZXF1aXJlKGdlbV9jYW5fc3Rv
cmVfZHdvcmQoZmQsIGVuZ2luZSkpOwo+ICsgICAgICAgICAgICAgICBpZ3RfcmVxdWlyZShnZW1f
ZW5naW5lX2hhc19tdXRhYmxlX3N1Ym1pc3Npb24oZmQsIGVuZ2luZSkpOwo+ICAgICAgICAgICAg
ICAgICBlbmdpbmVzW25lbmdpbmUrK10gPSBlbmdpbmU7Cj4gICAgICAgICB9Cj4gICAgICAgICBp
Z3RfcmVxdWlyZShuZW5naW5lKTsKCllvdSBzaG91bGQgYmUgYWJsZSB0byBoYW5kbGUgdGhlIHdo
aXNwZXI7IGl0J3Mgb25lIG9mIHRoZSBiYXNpYyBkb2VzIHRoZQprZXJuZWwgd29yayBhdCBhbGwu
IEFsbCBpdCBpcyB0ZXN0aW5nIGlzIHJlbG9jYXRpb24gYW5kIHNjaGVkdWxpbmcuLi4KCldvcmtz
Zm9ybWUuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
