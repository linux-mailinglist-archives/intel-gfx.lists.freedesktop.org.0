Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C546091F3E
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Aug 2019 10:44:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E57346E0DE;
	Mon, 19 Aug 2019 08:44:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECDFF6E0DE
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Aug 2019 08:44:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Aug 2019 01:44:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,403,1559545200"; d="scan'208";a="189471527"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga002.jf.intel.com with ESMTP; 19 Aug 2019 01:44:14 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 153005C1F29; Mon, 19 Aug 2019 11:43:29 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190819075835.20065-3-chris@chris-wilson.co.uk>
References: <20190819075835.20065-1-chris@chris-wilson.co.uk>
 <20190819075835.20065-3-chris@chris-wilson.co.uk>
Date: Mon, 19 Aug 2019 11:43:29 +0300
Message-ID: <87ftlx5yvi.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 02/18] drm/i915/gt: Mark up the nested
 engine-pm timeline lock as irqsafe
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gV2UgdXNl
IGEgZmFrZSB0aW1lbGluZS0+bXV0ZXggbG9jayB0byByZWFzc3VyZSBsb2NrZGVwIHRoYXQgdGhl
IHRpbWVsaW5lCj4gaXMgYWx3YXlzIGxvY2tlZCB3aGVuIGVtaXR0aW5nIHJlcXVlc3RzLiBIb3dl
dmVyLCB0aGUgdXNlIGluc2lkZQo+IF9fZW5naW5lX3BhcmsoKSBtYXkgYmUgaW5zaWRlIGhhcmRp
cnEgYW5kIHNvIGxvY2tkZXAgbm93IGNvbXBsYWlucyBhYm91dAo+IHRoZSBtaXhlZCBpcnEtc3Rh
dGUgb2YgdGhlIG5lc3RlZCBsb2NrZWQuIERpc2FibGUgaXJxcyBhcm91bmQgdGhlCj4gbG9ja2Rl
cCB0cmFja2luZyB0byBrZWVwIGl0IGhhcHB5Lgo+Cj4gRml4ZXM6IDZjNjlhNDU0NDVhZiAoImRy
bS9pOTE1L2d0OiBNYXJrIGNvbnRleHQtPmFjdGl2ZV9jb3VudCBhcyBwcm90ZWN0ZWQgYnkgdGlt
ZWxpbmUtPm11dGV4IikKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4KPiBDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVs
LmNvbT4KPiBDYzogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+
Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wbS5jIHwgMTgg
KysrKysrKysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAxOCBpbnNlcnRpb25zKCspCj4K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3BtLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG0uYwo+IGluZGV4IDVmMDNm
N2RjYWQ3Mi4uNWQwMDM3NTE5NjhiIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2VuZ2luZV9wbS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfZW5naW5lX3BtLmMKPiBAQCAtMzcsOSArMzcsMTUgQEAgc3RhdGljIGludCBfX2VuZ2luZV91
bnBhcmsoc3RydWN0IGludGVsX3dha2VyZWYgKndmKQo+ICAJcmV0dXJuIDA7Cj4gIH0KPiAgCj4g
KyNpZiBJU19FTkFCTEVEKENPTkZJR19MT0NLREVQKQo+ICsKPiAgc3RhdGljIGlubGluZSB2b2lk
IF9fdGltZWxpbmVfbWFya19sb2NrKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSkKPiAgewo+ICsJ
dW5zaWduZWQgbG9uZyBmbGFnczsKPiArCj4gKwlsb2NhbF9pcnFfc2F2ZShmbGFncyk7Cj4gIAlt
dXRleF9hY3F1aXJlKCZjZS0+dGltZWxpbmUtPm11dGV4LmRlcF9tYXAsIDIsIDAsIF9USElTX0lQ
Xyk7Cj4gKwlsb2NhbF9pcnFfcmVzdG9yZShmbGFncyk7CgpJIGFtIHN0YXJ0aW5nIHRvIGhhdmUg
c2Vjb25kIHRob3VnaHRzLiBPbmUgY291bGQgYXJndWUgdGhhdCB0aGUKbmV0IGVmZmVjdCBpcyBv
biBwb3NpdGl2ZSBzaWRlLgoKQnV0IHdlIGRpdmVyZ2Ugb24gYmVoYXZpb3VyIG5vdy4KClJldmll
d2VkLWJ5OiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KCj4g
IH0KPiAgCj4gIHN0YXRpYyBpbmxpbmUgdm9pZCBfX3RpbWVsaW5lX21hcmtfdW5sb2NrKHN0cnVj
dCBpbnRlbF9jb250ZXh0ICpjZSkKPiBAQCAtNDcsNiArNTMsMTggQEAgc3RhdGljIGlubGluZSB2
b2lkIF9fdGltZWxpbmVfbWFya191bmxvY2soc3RydWN0IGludGVsX2NvbnRleHQgKmNlKQo+ICAJ
bXV0ZXhfcmVsZWFzZSgmY2UtPnRpbWVsaW5lLT5tdXRleC5kZXBfbWFwLCAwLCBfVEhJU19JUF8p
Owo+ICB9Cj4gIAo+ICsjZWxzZQo+ICsKPiArc3RhdGljIGlubGluZSB2b2lkIF9fdGltZWxpbmVf
bWFya19sb2NrKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSkKPiArewo+ICt9Cj4gKwo+ICtzdGF0
aWMgaW5saW5lIHZvaWQgX190aW1lbGluZV9tYXJrX3VubG9jayhzdHJ1Y3QgaW50ZWxfY29udGV4
dCAqY2UpCj4gK3sKPiArfQo+ICsKPiArI2VuZGlmCj4gKwo+ICBzdGF0aWMgYm9vbCBzd2l0Y2hf
dG9fa2VybmVsX2NvbnRleHQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQo+ICB7Cj4g
IAlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycTsKPiAtLSAKPiAyLjIzLjAucmMxCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
