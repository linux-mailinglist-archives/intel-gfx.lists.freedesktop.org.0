Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 28670F7805
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2019 16:49:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5D1B6E243;
	Mon, 11 Nov 2019 15:49:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3CB26E243;
 Mon, 11 Nov 2019 15:49:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Nov 2019 07:49:35 -0800
X-IronPort-AV: E=Sophos;i="5.68,293,1569308400"; d="scan'208";a="197703444"
Received: from mpotanix-mobl2.ccr.corp.intel.com (HELO [10.252.20.183])
 ([10.252.20.183])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 11 Nov 2019 07:49:34 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191111114045.28097-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <4257e4ac-0968-8642-169e-77ebb565879d@linux.intel.com>
Date: Mon, 11 Nov 2019 15:49:32 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191111114045.28097-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_eio: Flush RCU before timing
 our own critical sections
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

Ck9uIDExLzExLzIwMTkgMTE6NDAsIENocmlzIFdpbHNvbiB3cm90ZToKPiBXZSBjYW5ub3QgY29u
dHJvbCBob3cgbG9uZyBSQ1UgdGFrZXMgdG8gZmluZCBhIHF1aWVzY2VudCBwb2ludCBhcyB0aGF0
Cj4gZGVwZW5kcyB1cG9uIHRoZSBiYWNrZ3JvdW5kIGxvYWQgYW5kIHNvIG1heSB0YWtlIGFuIGFy
Yml0cmFyeSB0aW1lLgo+IEluc3RlYWQsIGxldCdzIHRyeSB0byBhdm9pZCB0aGF0IGltcGFjdGlu
ZyBvdXIgbWVhc3VyZW1lbnRzIGJ5IGluc2VydGluZwo+IGFuIHJjdV9iYXJyaWVyKCkgYmVmb3Jl
IG91ciBjcml0aWNhbCB0aW1pbmcgc2VjdGlvbnMgYW5kIGhvcGUgdGhhdCBoaWRlcwo+IHRoZSBp
c3N1ZSwgbGV0dGluZyB1cyBhbHdheXMgcGVyZm9ybSBhIGZhc3QgcmVzZXQuIEZ3aXcsIHdlIGRv
IHRoZQo+IGV4cGVkaXRlZCBSQ1Ugc3luY2hyb25pemUsIGJ1dCB0aGF0IGlzIG5vdCBhbHdheXMg
ZW5vdWdoLgo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2ls
c29uLmNvLnVrPgo+IC0tLQo+ICAgdGVzdHMvaTkxNS9nZW1fZWlvLmMgfCA1ICsrKysrCj4gICAx
IGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL3Rlc3RzL2k5
MTUvZ2VtX2Vpby5jIGIvdGVzdHMvaTkxNS9nZW1fZWlvLmMKPiBpbmRleCA4ZDZjYjk3NjAuLjQ5
ZDJhOTllOSAxMDA2NDQKPiAtLS0gYS90ZXN0cy9pOTE1L2dlbV9laW8uYwo+ICsrKyBiL3Rlc3Rz
L2k5MTUvZ2VtX2Vpby5jCj4gQEAgLTcxLDYgKzcxLDcgQEAgc3RhdGljIHZvaWQgdHJpZ2dlcl9y
ZXNldChpbnQgZmQpCj4gICB7Cj4gICAJc3RydWN0IHRpbWVzcGVjIHRzID0geyB9Owo+ICAgCj4g
KwlyY3VfYmFycmllcihmZCk7IC8qIGZsdXNoIGFueSBleGNlc3Mgd29yayBiZWZvcmUgd2Ugc3Rh
cnQgdGltaW5nICovCj4gICAJaWd0X25zZWNfZWxhcHNlZCgmdHMpOwo+ICAgCj4gICAJaWd0X2tt
c2coS01TR19ERUJVRyAiRm9yY2luZyBHUFUgcmVzZXRcbiIpOwo+IEBAIC0yMjcsNiArMjI4LDEw
IEBAIHN0YXRpYyB2b2lkIGhhbmdfaGFuZGxlcih1bmlvbiBzaWd2YWwgYXJnKQo+ICAgCWlndF9k
ZWJ1ZygiaGFuZyBkZWxheSA9ICUuMmZ1c1xuIiwKPiAgIAkJICBpZ3RfbnNlY19lbGFwc2VkKCZj
dHgtPmRlbGF5KSAvIDEwMDAuMCk7Cj4gICAKPiArCS8qIGZsdXNoIGFueSBleGNlc3Mgd29yayBi
ZWZvcmUgd2Ugc3RhcnQgdGltaW5nIG91ciByZXNldCAqLwo+ICsJaWd0X2Fzc2VydChpZ3Rfc3lz
ZnNfcHJpbnRmKGN0eC0+ZGVidWdmcywgImk5MTVfZHJvcF9jYWNoZXMiLAo+ICsJCQkJICAgICIl
ZCIsIERST1BfUkNVKSk7Cj4gKwo+ICAgCWlndF9uc2VjX2VsYXBzZWQoY3R4LT50cyk7Cj4gICAJ
aWd0X2Fzc2VydChpZ3Rfc3lzZnNfc2V0KGN0eC0+ZGVidWdmcywgImk5MTVfd2VkZ2VkIiwgIi0x
IikpOwo+ICAgCj4gCgpSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGlu
QGludGVsLmNvbT4KCkF2b2lkIHNjb3JpbmcgZGVtZXJpdCBwb2ludHMgaWYgeW91IGFkZCByZWZl
cmVuY2UgdG8gYnVnemlsbGEsIApwcmVzdW1hYmx5IGxpbmtpbmcgdG8gQ0kgcmVzdWx0cywgc2hv
d2luZyB0aGlzIHdhcyBrbm93biB0byBiZSBmbGFreS4gOikKClJlZ2FyZHMsCgpUdnJ0a28KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
