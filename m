Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C097F56A66
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2019 15:27:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 223476E42D;
	Wed, 26 Jun 2019 13:27:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1052F6E42D
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jun 2019 13:27:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jun 2019 06:27:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,420,1557212400"; d="scan'208";a="337212560"
Received: from gaia.fi.intel.com ([10.237.72.169])
 by orsmga005.jf.intel.com with ESMTP; 26 Jun 2019 06:27:31 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 360D35C1EAC; Wed, 26 Jun 2019 16:27:17 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190626065303.31624-2-chris@chris-wilson.co.uk>
References: <20190626065303.31624-1-chris@chris-wilson.co.uk>
 <20190626065303.31624-2-chris@chris-wilson.co.uk>
Date: Wed, 26 Jun 2019 16:27:17 +0300
Message-ID: <875zos5vey.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915/selftests: Drop manual request
 wakerefs around hangcheck
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gV2Ugbm8g
bG9uZ2VyIG5lZWQgdG8gbWFudWFsbHkgYWNxdWlyZSBhIHdha2VyZWYgZm9yIHJlcXVlc3QgZW1p
c3Npb24sIHNvCj4gZHJvcCB0aGUgcmVkdW5kYW50IHdha2VyZWZzLCBsZXR0aW5nIHVzIHRlc3Qg
b3VyIHdha2VyZWYgaGFuZGxpbmcgbW9yZQo+IHByZWNpc2VseS4KPgo+IFNpZ25lZC1vZmYtYnk6
IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgoKUmlkaW5nIG9uIHRoZSBy
ZXF1ZXN0J3MgcmVmIGFuZCBnZXR0aW5nIG1vcmUgZmluZQpncmFpbmVkIHNvdW5kcyBnb29kLgoK
UmV2aWV3ZWQtYnk6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29t
PgoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfaGFuZ2NoZWNrLmMg
fCA3IC0tLS0tLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfcmVzZXQuYyAg
ICAgfCA0ICsrLS0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDkgZGVsZXRp
b25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3Rf
aGFuZ2NoZWNrLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9oYW5nY2hlY2su
Ywo+IGluZGV4IDBlMGI2YzU3MmFlOS4uY2Y1OTJhMDQ5YTcxIDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2hhbmdjaGVjay5jCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfaGFuZ2NoZWNrLmMKPiBAQCAtMzczLDcgKzM3Myw2IEBA
IHN0YXRpYyBpbnQgaWd0X3Jlc2V0X25vcCh2b2lkICphcmcpCj4gIAlzdHJ1Y3QgaTkxNV9nZW1f
Y29udGV4dCAqY3R4Owo+ICAJdW5zaWduZWQgaW50IHJlc2V0X2NvdW50LCBjb3VudDsKPiAgCWVu
dW0gaW50ZWxfZW5naW5lX2lkIGlkOwo+IC0JaW50ZWxfd2FrZXJlZl90IHdha2VyZWY7Cj4gIAlz
dHJ1Y3QgZHJtX2ZpbGUgKmZpbGU7Cj4gIAlJR1RfVElNRU9VVChlbmRfdGltZSk7Cj4gIAlpbnQg
ZXJyID0gMDsKPiBAQCAtMzkzLDcgKzM5Miw2IEBAIHN0YXRpYyBpbnQgaWd0X3Jlc2V0X25vcCh2
b2lkICphcmcpCj4gIAl9Cj4gIAo+ICAJaTkxNV9nZW1fY29udGV4dF9jbGVhcl9iYW5uYWJsZShj
dHgpOwo+IC0Jd2FrZXJlZiA9IGludGVsX3J1bnRpbWVfcG1fZ2V0KCZpOTE1LT5ydW50aW1lX3Bt
KTsKPiAgCXJlc2V0X2NvdW50ID0gaTkxNV9yZXNldF9jb3VudCgmaTkxNS0+Z3B1X2Vycm9yKTsK
PiAgCWNvdW50ID0gMDsKPiAgCWRvIHsKPiBAQCAtNDQyLDggKzQ0MCw2IEBAIHN0YXRpYyBpbnQg
aWd0X3Jlc2V0X25vcCh2b2lkICphcmcpCj4gIAllcnIgPSBpZ3RfZmx1c2hfdGVzdChpOTE1LCBJ
OTE1X1dBSVRfTE9DS0VEKTsKPiAgCW11dGV4X3VubG9jaygmaTkxNS0+ZHJtLnN0cnVjdF9tdXRl
eCk7Cj4gIAo+IC0JaW50ZWxfcnVudGltZV9wbV9wdXQoJmk5MTUtPnJ1bnRpbWVfcG0sIHdha2Vy
ZWYpOwo+IC0KPiAgb3V0Ogo+ICAJbW9ja19maWxlX2ZyZWUoaTkxNSwgZmlsZSk7Cj4gIAlpZiAo
aTkxNV9yZXNldF9mYWlsZWQoaTkxNSkpCj4gQEAgLTQ1Nyw3ICs0NTMsNiBAQCBzdGF0aWMgaW50
IGlndF9yZXNldF9ub3BfZW5naW5lKHZvaWQgKmFyZykKPiAgCXN0cnVjdCBpbnRlbF9lbmdpbmVf
Y3MgKmVuZ2luZTsKPiAgCXN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpjdHg7Cj4gIAllbnVtIGlu
dGVsX2VuZ2luZV9pZCBpZDsKPiAtCWludGVsX3dha2VyZWZfdCB3YWtlcmVmOwo+ICAJc3RydWN0
IGRybV9maWxlICpmaWxlOwo+ICAJaW50IGVyciA9IDA7Cj4gIAo+IEBAIC00NzksNyArNDc0LDYg
QEAgc3RhdGljIGludCBpZ3RfcmVzZXRfbm9wX2VuZ2luZSh2b2lkICphcmcpCj4gIAl9Cj4gIAo+
ICAJaTkxNV9nZW1fY29udGV4dF9jbGVhcl9iYW5uYWJsZShjdHgpOwo+IC0Jd2FrZXJlZiA9IGlu
dGVsX3J1bnRpbWVfcG1fZ2V0KCZpOTE1LT5ydW50aW1lX3BtKTsKPiAgCWZvcl9lYWNoX2VuZ2lu
ZShlbmdpbmUsIGk5MTUsIGlkKSB7Cj4gIAkJdW5zaWduZWQgaW50IHJlc2V0X2NvdW50LCByZXNl
dF9lbmdpbmVfY291bnQ7Cj4gIAkJdW5zaWduZWQgaW50IGNvdW50Owo+IEBAIC01NDksNyArNTQz
LDYgQEAgc3RhdGljIGludCBpZ3RfcmVzZXRfbm9wX2VuZ2luZSh2b2lkICphcmcpCj4gIAllcnIg
PSBpZ3RfZmx1c2hfdGVzdChpOTE1LCBJOTE1X1dBSVRfTE9DS0VEKTsKPiAgCW11dGV4X3VubG9j
aygmaTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7Cj4gIAo+IC0JaW50ZWxfcnVudGltZV9wbV9wdXQo
Jmk5MTUtPnJ1bnRpbWVfcG0sIHdha2VyZWYpOwo+ICBvdXQ6Cj4gIAltb2NrX2ZpbGVfZnJlZShp
OTE1LCBmaWxlKTsKPiAgCWlmIChpOTE1X3Jlc2V0X2ZhaWxlZChpOTE1KSkKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfcmVzZXQuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X3Jlc2V0LmMKPiBpbmRleCA4OWRhOWU3Y2MxYmEuLjY0YzJj
OGFiNjRlYyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9y
ZXNldC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfcmVzZXQuYwo+
IEBAIC02Myw4ICs2Myw4IEBAIHN0YXRpYyBpbnQgaWd0X2F0b21pY19yZXNldCh2b2lkICphcmcp
Cj4gIAo+ICAJLyogQ2hlY2sgdGhhdCB0aGUgcmVzZXRzIGFyZSB1c2FibGUgZnJvbSBhdG9taWMg
Y29udGV4dCAqLwo+ICAKPiArCWludGVsX2d0X3BtX2dldCgmaTkxNS0+Z3QpOwo+ICAJaWd0X2ds
b2JhbF9yZXNldF9sb2NrKGk5MTUpOwo+IC0JbXV0ZXhfbG9jaygmaTkxNS0+ZHJtLnN0cnVjdF9t
dXRleCk7Cj4gIAo+ICAJLyogRmx1c2ggYW55IHJlcXVlc3RzIGJlZm9yZSB3ZSBnZXQgc3RhcnRl
ZCBhbmQgY2hlY2sgYmFzaWNzICovCj4gIAlpZiAoIWlndF9mb3JjZV9yZXNldChpOTE1KSkKPiBA
QCAtODksOCArODksOCBAQCBzdGF0aWMgaW50IGlndF9hdG9taWNfcmVzZXQodm9pZCAqYXJnKQo+
ICAJaWd0X2ZvcmNlX3Jlc2V0KGk5MTUpOwo+ICAKPiAgdW5sb2NrOgo+IC0JbXV0ZXhfdW5sb2Nr
KCZpOTE1LT5kcm0uc3RydWN0X211dGV4KTsKPiAgCWlndF9nbG9iYWxfcmVzZXRfdW5sb2NrKGk5
MTUpOwo+ICsJaW50ZWxfZ3RfcG1fcHV0KCZpOTE1LT5ndCk7Cj4gIAo+ICAJcmV0dXJuIGVycjsK
PiAgfQo+IC0tIAo+IDIuMjAuMQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
