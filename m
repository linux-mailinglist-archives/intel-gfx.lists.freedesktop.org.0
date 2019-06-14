Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B106646BFA
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 23:37:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 170BA89711;
	Fri, 14 Jun 2019 21:37:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D96789711
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 21:37:27 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jun 2019 14:37:26 -0700
X-ExtLoop1: 1
Received: from cebrownx-mobl.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.254.23.106])
 by orsmga002.jf.intel.com with ESMTP; 14 Jun 2019 14:37:26 -0700
Date: Fri, 14 Jun 2019 14:37:26 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
Message-ID: <20190614213726.2rcikss7nynsi27q@ldmartin-desk1>
References: <20190607091230.1489-1-lucas.demarchi@intel.com>
 <20190607091230.1489-10-lucas.demarchi@intel.com>
 <83F5C7385F545743AD4FB2A62F75B073480D37AB@ORSMSX108.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <83F5C7385F545743AD4FB2A62F75B073480D37AB@ORSMSX108.amr.corp.intel.com>
User-Agent: NeoMutt/20180716
Subject: Re: [Intel-gfx] [PATCH 9/9] drm/i915/dmc: protect against loading
 wrong firmware
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBKdW4gMTQsIDIwMTkgYXQgMTI6NDQ6NTBQTSAtMDcwMCwgQW51c2hhIFNyaXZhdHNh
IHdyb3RlOgo+Cj4KPj4tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+PkZyb206IERlIE1hcmNo
aSwgTHVjYXMKPj5TZW50OiBGcmlkYXksIEp1bmUgNywgMjAxOSAyOjEzIEFNCj4+VG86IGludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPj5DYzogVml2aSwgUm9kcmlnbyA8cm9kcmlnby52
aXZpQGludGVsLmNvbT47IFNyaXZhdHNhLCBBbnVzaGEKPj48YW51c2hhLnNyaXZhdHNhQGludGVs
LmNvbT47IERlIE1hcmNoaSwgTHVjYXMgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KPj5TdWJq
ZWN0OiBbUEFUQ0ggOS85XSBkcm0vaTkxNS9kbWM6IHByb3RlY3QgYWdhaW5zdCBsb2FkaW5nIHdy
b25nIGZpcm13YXJlCj4+Cj4+SW4gaW50ZWxfcGFja2FnZV9oZWFkZXIgdmVyc2lvbiAyIHRoZXJl
J3MgYSBuZXcgZmllbGQgaW4gdGhlIGZ3X2luZm8gdGFibGUgdGhhdAo+Pm11c3QgYmUgMCwgb3Ro
ZXJ3aXNlIGl0J3Mgbm90IHRoZSBjb3JyZWN0IERNQyBmaXJtd2FyZS4gQWRkIGEgY2hlY2sgZm9y
IHZlcnNpb24gMgo+Pm9yIGxhdGVyLgo+Pgo+PlNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNo
aSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgo+Pi0tLQo+PiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9jc3IuYyB8IDE0ICsrKysrKysrKysrLS0tCj4+IDEgZmlsZSBjaGFuZ2VkLCAxMSBp
bnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+Pgo+PmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9jc3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Nzci5j
Cj4+aW5kZXggNzYwOGU0ZTI5NTBkLi44NjQ1MzFhYWUxYTUgMTAwNjQ0Cj4+LS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfY3NyLmMKPj4rKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9jc3IuYwo+PkBAIC0xMjAsNyArMTIwLDEwIEBAIHN0cnVjdCBpbnRlbF9jc3NfaGVhZGVy
IHsgIH0gX19wYWNrZWQ7Cj4+Cj4+IHN0cnVjdCBpbnRlbF9md19pbmZvIHsKPj4tCXUxNiByZXNl
cnZlZDE7Cj4+Kwl1OCByZXNlcnZlZDE7Cj4+Kwo+PisJLyogcmVzZXJ2ZWQgb24gcGFja2FnZV9o
ZWFkZXIgdmVyc2lvbiAxLCBtdXN0IGJlIDAgb24gdmVyc2lvbiAyICovCj4+Kwl1OCBkbWNfaWQ7
Cj4+Cj4+IAkvKiBTdGVwcGluZyAoQSwgQiwgQywgLi4uLCAqKS4gKiBpcyBhIHdpbGRjYXJkICov
Cj4+IAljaGFyIHN0ZXBwaW5nOwo+PkBAIC0zMjUsMTIgKzMyOCwxNiBAQCB2b2lkIGludGVsX2Nz
cl9sb2FkX3Byb2dyYW0oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUKPj4qZGV2X3ByaXYpCj4+ICAq
Lwo+PiBzdGF0aWMgdTMyIGZpbmRfZG1jX2Z3X29mZnNldChjb25zdCBzdHJ1Y3QgaW50ZWxfZndf
aW5mbyAqZndfaW5mbywKPj4gCQkJICAgICAgdW5zaWduZWQgaW50IG51bV9lbnRyaWVzLAo+Pi0J
CQkgICAgICBjb25zdCBzdHJ1Y3Qgc3RlcHBpbmdfaW5mbyAqc2kpCj4+KwkJCSAgICAgIGNvbnN0
IHN0cnVjdCBzdGVwcGluZ19pbmZvICpzaSwKPj4rCQkJICAgICAgdTggcGFja2FnZV92ZXIpCj4+
IHsKPj4gCXUzMiBkbWNfb2Zmc2V0ID0gQ1NSX0RFRkFVTFRfRldfT0ZGU0VUOwo+PiAJdW5zaWdu
ZWQgaW50IGk7Cj4+Cj4+IAlmb3IgKGkgPSAwOyBpIDwgbnVtX2VudHJpZXM7IGkrKykgewo+PisJ
CWlmIChwYWNrYWdlX3ZlciA+IDEgJiYgZndfaW5mb1tpXS5kbWNfaWQgIT0gMCkKPj4rCQkJY29u
dGludWU7Cj4KPldvbnQgd2UgbmVlZCBhIG1lc3NhZ2UgaGVyZT8gIldyb25nIERNQyB2ZXJzaW9u
LCBub3QgbG9hZGluZyB2X3guMHgiIG9yIHNvbWV0aGluZz8uLiIKCkkgZG9uJ3QgdGhpbmsgc28u
IEl0J3Mgbm9ybWFsIHRvIGhhdmUgb3RoZXIgYmxvYnMgaW5zaWRlIHRoZSBmaXJtd2FyZQp0aGF0
IHdlIGRvbid0IGNhcmUgYWJvdXQuIEF0IG1vc3QgSSBjb3VsZCBwdXQgYSBkZWJ1ZywgYnV0IEkg
ZG9uJ3QgdGhpbmsKd2UgcmVhbGx5IGNhcmUuCgpBcyBsb25nIGFzIHdlIGZpbmQgb25lIHdlIHNo
b3VsZCBiZSBmaW5lLiBBbmQgaWYgd2UgZG9uJ3QsIHRoZW4gd2Ugd2lsbApjb21wbGFpbiBsb3Vk
bHkgbGF0ZXIgaW4gdGhpcyBmdW5jdGlvbiB3aXRoIGEgRFJNX0VSUk9SKCkuCmRtY19vZmZzZXQg
cmVtYWluaW5nIGFzIENTUl9ERUZBVUxUX0ZXX09GRlNFVCBoYXMgYSBkb3VibGUgbWVhbmluZyBo
ZXJlOgplaXRoZXIgd2UgZGlkbid0IGZpbmQgYW55IGVudHJ5IG9yIHdlIGZvdW5kIG9uZSB0aGF0
IGhhZCB0aGUgb2Zmc2V0IHNldAp0byB0aGlzIHZhbHVlLgoKTHVjYXMgRGUgTWFyY2hpCgo+Cj5B
bnVzaGEKPj4gCQlpZiAoZndfaW5mb1tpXS5zdWJzdGVwcGluZyA9PSAnKicgJiYKPj4gCQkgICAg
c2ktPnN0ZXBwaW5nID09IGZ3X2luZm9baV0uc3RlcHBpbmcpIHsKPj4gCQkJZG1jX29mZnNldCA9
IGZ3X2luZm9baV0ub2Zmc2V0Owo+PkBAIC01MDgsNyArNTE1LDggQEAgcGFyc2VfY3NyX2Z3X3Bh
Y2thZ2Uoc3RydWN0IGludGVsX2NzciAqY3NyLAo+Pgo+PiAJZndfaW5mbyA9IChjb25zdCBzdHJ1
Y3QgaW50ZWxfZndfaW5mbyAqKQo+PiAJCSgodTggKilwYWNrYWdlX2hlYWRlciArIHNpemVvZigq
cGFja2FnZV9oZWFkZXIpKTsKPj4tCWRtY19vZmZzZXQgPSBmaW5kX2RtY19md19vZmZzZXQoZndf
aW5mbywgbnVtX2VudHJpZXMsIHNpKTsKPj4rCWRtY19vZmZzZXQgPSBmaW5kX2RtY19md19vZmZz
ZXQoZndfaW5mbywgbnVtX2VudHJpZXMsIHNpLAo+PisJCQkJCXBhY2thZ2VfaGVhZGVyLT5oZWFk
ZXJfdmVyKTsKPj4gCWlmIChkbWNfb2Zmc2V0ID09IENTUl9ERUZBVUxUX0ZXX09GRlNFVCkgewo+
PiAJCURSTV9FUlJPUigiRE1DIGZpcm13YXJlIG5vdCBzdXBwb3J0ZWQgZm9yICVjIHN0ZXBwaW5n
XG4iLAo+PiAJCQkgIHNpLT5zdGVwcGluZyk7Cj4+LS0KPj4yLjIxLjAKPgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
