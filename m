Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8006CBC3E
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2019 15:51:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9F556EB9A;
	Fri,  4 Oct 2019 13:51:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C67156EB97;
 Fri,  4 Oct 2019 13:51:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Oct 2019 06:51:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,256,1566889200"; d="scan'208";a="186263219"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga008.jf.intel.com with ESMTP; 04 Oct 2019 06:51:38 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 418595C1E01; Fri,  4 Oct 2019 16:51:05 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20191002112648.12532-1-chris@chris-wilson.co.uk>
References: <20191002112648.12532-1-chris@chris-wilson.co.uk>
Date: Fri, 04 Oct 2019 16:51:05 +0300
Message-ID: <87lfu0liuu.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] i915/gem_ctx_isolation:
 Bump support for Tigerlake
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gVGhlcmUn
cyB2ZXJ5IGxpdHRsZSB2YXJpYXRpb24gaW4gbm9uLXByaXZpbGVnZWQgcmVnaXN0ZXJzIGZvciBU
aWdlcmxha2UsCj4gc28gd2UgY2FuIG1vc3RseSBpbmhlcml0IHRoZSBzZXQgZnJvbSBnZW4xMS4g
VGhlcmUgaXMgbm8gd2hpdGVsaXN0IGF0Cj4gcHJlc2VudCwgc28gd2UgZG8gbm90IG5lZWQgdG8g
YWRkIGFueSBzcGVjaWFsIHJlZ2lzdGVycy4KPgo+IEJ1Z3ppbGxhOiBodHRwczovL2J1Z3MuZnJl
ZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTE1OTkKPiBTaWduZWQtb2ZmLWJ5OiBDaHJp
cyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiAtLS0KPiAgdGVzdHMvaTkxNS9n
ZW1fY3R4X2lzb2xhdGlvbi5jIHwgMTEgKysrKysrLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDYg
aW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS90ZXN0cy9pOTE1
L2dlbV9jdHhfaXNvbGF0aW9uLmMgYi90ZXN0cy9pOTE1L2dlbV9jdHhfaXNvbGF0aW9uLmMKPiBp
bmRleCBkZjFkNjU1YWUuLjgxOWRhYWZjMyAxMDA2NDQKPiAtLS0gYS90ZXN0cy9pOTE1L2dlbV9j
dHhfaXNvbGF0aW9uLmMKPiArKysgYi90ZXN0cy9pOTE1L2dlbV9jdHhfaXNvbGF0aW9uLmMKPiBA
QCAtNTUsMTAgKzU1LDExIEBAIGVudW0gewo+ICAjZGVmaW5lIEdFTjkgKEFMTCA8PCA5KQo+ICAj
ZGVmaW5lIEdFTjEwIChBTEwgPDwgMTApCj4gICNkZWZpbmUgR0VOMTEgKEFMTCA8PCAxMSkKPiAr
I2RlZmluZSBHRU4xMiAoQUxMIDw8IDEyKQo+ICAKPiAgI2RlZmluZSBOT0NUWCAwCj4gIAo+IC0j
ZGVmaW5lIExBU1RfS05PV05fR0VOIDExCj4gKyNkZWZpbmUgTEFTVF9LTk9XTl9HRU4gMTIKPiAg
Cj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgbmFtZWRfcmVnaXN0ZXIgewo+ICAJY29uc3QgY2hhciAq
bmFtZTsKPiBAQCAtMTE2LDkgKzExNyw5IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgbmFtZWRfcmVn
aXN0ZXIgewo+ICAJeyAiQ2FjaGVfTW9kZV8wIiwgR0VONywgUkNTMCwgMHg3MDAwLCAubWFza2Vk
ID0gdHJ1ZSB9LAo+ICAJeyAiQ2FjaGVfTW9kZV8xIiwgR0VONywgUkNTMCwgMHg3MDA0LCAubWFz
a2VkID0gdHJ1ZSB9LAo+ICAJeyAiR1RfTU9ERSIsIEdFTjgsIFJDUzAsIDB4NzAwOCwgLm1hc2tl
ZCA9IHRydWUgfSwKPiAtCXsgIkwzX0NvbmZpZyIsIEdFTjgsIFJDUzAsIDB4NzAzNCB9LAo+IC0J
eyAiVERfQ1RMIiwgR0VOOCwgUkNTMCwgMHhlNDAwLCAud3JpdGVfbWFzayA9IDB4ZmZmZiB9LAo+
IC0JeyAiVERfQ1RMMiIsIEdFTjgsIFJDUzAsIDB4ZTQwNCB9LAo+ICsJeyAiTDNfQ29uZmlnIiwg
R0VOX1JBTkdFKDgsIDExKSwgUkNTMCwgMHg3MDM0IH0sCj4gKwl7ICJURF9DVEwiLCBHRU5fUkFO
R0UoOCwgMTEpLCBSQ1MwLCAweGU0MDAsIC53cml0ZV9tYXNrID0gMHhmZmZmIH0sCj4gKwl7ICJU
RF9DVEwyIiwgR0VOX1JBTkdFKDgsIDExKSwgUkNTMCwgMHhlNDA0IH0sCgpUaGUgaWdub3JlIGxp
c3QgbmVlZHMgYW4gdXBkYXRlIHRvbz8KLU1pa2EKCgo+ICAJeyAiU09fTlVNX1BSSU1TX1dSSVRU
RU4wIiwgR0VONiwgUkNTMCwgMHg1MjAwLCAyIH0sCj4gIAl7ICJTT19OVU1fUFJJTVNfV1JJVFRF
TjEiLCBHRU42LCBSQ1MwLCAweDUyMDgsIDIgfSwKPiAgCXsgIlNPX05VTV9QUklNU19XUklUVEVO
MiIsIEdFTjYsIFJDUzAsIDB4NTIxMCwgMiB9LAo+IEBAIC04NTIsNyArODUzLDcgQEAgaWd0X21h
aW4KPiAgCQlnZW4gPSBpbnRlbF9nZW4oaW50ZWxfZ2V0X2RybV9kZXZpZChmZCkpOwo+ICAKPiAg
CQlpZ3Rfd2Fybl9vbl9mKGdlbiA+IExBU1RfS05PV05fR0VOLAo+IC0JCQkJCSAgIkdFTiBub3Qg
cmVjb2duaXplZCEgVGVzdCBuZWVkcyB0byBiZSB1cGRhdGVkIHRvIHJ1bi4iKTsKPiArCQkJICAg
ICAgIkdFTiBub3QgcmVjb2duaXplZCEgVGVzdCBuZWVkcyB0byBiZSB1cGRhdGVkIHRvIHJ1bi4i
KTsKPiAgCQlpZ3Rfc2tpcF9vbihnZW4gPiBMQVNUX0tOT1dOX0dFTik7Cj4gIAl9Cj4gIAo+IC0t
IAo+IDIuMjMuMAo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPiBpZ3QtZGV2IG1haWxpbmcgbGlzdAo+IGlndC1kZXZAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pZ3Qt
ZGV2Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
