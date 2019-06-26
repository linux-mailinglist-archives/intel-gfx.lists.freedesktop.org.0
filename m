Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 378A956A12
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2019 15:12:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F42D6E423;
	Wed, 26 Jun 2019 13:12:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B09E6E423
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jun 2019 13:12:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jun 2019 06:12:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,420,1557212400"; d="scan'208";a="172729088"
Received: from gaia.fi.intel.com ([10.237.72.169])
 by orsmga002.jf.intel.com with ESMTP; 26 Jun 2019 06:12:02 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 1F6235C1EAC; Wed, 26 Jun 2019 16:11:49 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190626065303.31624-1-chris@chris-wilson.co.uk>
References: <20190626065303.31624-1-chris@chris-wilson.co.uk>
Date: Wed, 26 Jun 2019 16:11:49 +0300
Message-ID: <878sto5w4q.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915/selftests: Serialise nop reset
 with retirement
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gSW4gb3Jk
ZXIgZm9yIHRoZSByZXNldCBjb3VudCB0byBiZSBhY2N1cmF0ZSBhY3Jvc3Mgb3VyIHNlbGZ0ZXN0
LCB3ZSBuZWVkCj4gdG8gcHJldmVudCB0aGUgYmFja2dyb3VuZCByZXRpcmUgd29ya2VyIGZyb20g
bW9kaWZ5aW5nIG91ciBleHBlY3RlZAo+IHN0YXRlLgo+CgpPaywgdG8gc3VtbWFyaXplIHRoZSBp
cmMgZGlzY3Vzc2lvbiB3ZSBoYWQ6IFRoZSBhYm92ZSBob2xkcyB0cnVlCmZvciBpZ3RfcmVzZXRf
ZW5naW5lX25vcCBvbmx5LiBBcyB0aGVyZSBpcyBubyByYWNlIGluCmdsb2JhbCByZXNldCBwYXRo
Li4uY3VycmVudGx5LgoKQnV0IHRoZXJlIGlzIGludGVudCB0b3dhcmRzIHN5bW1ldHJ5IG9uIGJv
dGggcGF0aHMKc28gaXQgbWFrZXMgc2Vuc2UgdG8ga2VlcCB0aGUgdGVzdHMgYWxpZ25lZC4KClRo
ZSBjb21taXQgbXNnIGNvdWxkIGJlIGVuaGFuY2VkIG9uIHRoaXMgcmVnYXJkLgoKQWxzbyB3aGls
ZSBsb29raW5nIHRocm91Z2ggdGhpcywgd2UgZG8gaW5jcmVhc2UKdGhlIHJlc2V0X2NvdW50IHJh
dGhlciBlYXJseSBiZWZvcmUgdGhlIGZhaWxwYXRocy4KZXZlbiB3aXRoIHRoZSByZXNldHMgZGlz
YWJsZWQgaXQgZ2V0cyBpbmNyZW1lbnRlZC4KU28gbm93IGl0IGlzIG1vcmUgb2YgYSBhdHRlbXB0
ZWQgcmVzZXQgY291bnQuCgpCdXQgdGhhdCBpcyBub3QgYSB0b3BpYyBmb3IgdGhpcyBwYXRjaCBz
bywKUmV2aWV3ZWQtYnk6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwu
Y29tPgoKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5j
by51az4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfaGFuZ2NoZWNr
LmMgfCA3ICsrKystLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMyBkZWxl
dGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVz
dF9oYW5nY2hlY2suYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2hhbmdjaGVj
ay5jCj4gaW5kZXggM2NlYjM5N2M4NjQ1Li4wZTBiNmM1NzJhZTkgMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfaGFuZ2NoZWNrLmMKPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9oYW5nY2hlY2suYwo+IEBAIC0zOTgsNiArMzk4LDcg
QEAgc3RhdGljIGludCBpZ3RfcmVzZXRfbm9wKHZvaWQgKmFyZykKPiAgCWNvdW50ID0gMDsKPiAg
CWRvIHsKPiAgCQltdXRleF9sb2NrKCZpOTE1LT5kcm0uc3RydWN0X211dGV4KTsKPiArCj4gIAkJ
Zm9yX2VhY2hfZW5naW5lKGVuZ2luZSwgaTkxNSwgaWQpIHsKPiAgCQkJaW50IGk7Cj4gIAo+IEBA
IC00MTMsMTEgKzQxNCwxMiBAQCBzdGF0aWMgaW50IGlndF9yZXNldF9ub3Aodm9pZCAqYXJnKQo+
ICAJCQkJaTkxNV9yZXF1ZXN0X2FkZChycSk7Cj4gIAkJCX0KPiAgCQl9Cj4gLQkJbXV0ZXhfdW5s
b2NrKCZpOTE1LT5kcm0uc3RydWN0X211dGV4KTsKPiAgCj4gIAkJaWd0X2dsb2JhbF9yZXNldF9s
b2NrKGk5MTUpOwo+ICAJCWk5MTVfcmVzZXQoaTkxNSwgQUxMX0VOR0lORVMsIE5VTEwpOwo+ICAJ
CWlndF9nbG9iYWxfcmVzZXRfdW5sb2NrKGk5MTUpOwo+ICsKPiArCQltdXRleF91bmxvY2soJmk5
MTUtPmRybS5zdHJ1Y3RfbXV0ZXgpOwo+ICAJCWlmIChpOTE1X3Jlc2V0X2ZhaWxlZChpOTE1KSkg
ewo+ICAJCQllcnIgPSAtRUlPOwo+ICAJCQlicmVhazsKPiBAQCAtNTExLDkgKzUxMyw4IEBAIHN0
YXRpYyBpbnQgaWd0X3Jlc2V0X25vcF9lbmdpbmUodm9pZCAqYXJnKQo+ICAKPiAgCQkJCWk5MTVf
cmVxdWVzdF9hZGQocnEpOwo+ICAJCQl9Cj4gLQkJCW11dGV4X3VubG9jaygmaTkxNS0+ZHJtLnN0
cnVjdF9tdXRleCk7Cj4gLQo+ICAJCQllcnIgPSBpOTE1X3Jlc2V0X2VuZ2luZShlbmdpbmUsIE5V
TEwpOwo+ICsJCQltdXRleF91bmxvY2soJmk5MTUtPmRybS5zdHJ1Y3RfbXV0ZXgpOwo+ICAJCQlp
ZiAoZXJyKSB7Cj4gIAkJCQlwcl9lcnIoImk5MTVfcmVzZXRfZW5naW5lIGZhaWxlZFxuIik7Cj4g
IAkJCQlicmVhazsKPiAtLSAKPiAyLjIwLjEKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
