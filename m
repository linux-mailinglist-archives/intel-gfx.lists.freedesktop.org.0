Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6107346173
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 16:47:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C38AA899B7;
	Fri, 14 Jun 2019 14:47:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CDE6899B7
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 14:47:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jun 2019 07:47:49 -0700
X-ExtLoop1: 1
Received: from gaia.fi.intel.com ([10.237.72.169])
 by FMSMGA003.fm.intel.com with ESMTP; 14 Jun 2019 07:47:49 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 65E0A5C1ECC; Fri, 14 Jun 2019 17:47:46 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190614071023.17929-4-chris@chris-wilson.co.uk>
References: <20190614071023.17929-1-chris@chris-wilson.co.uk>
 <20190614071023.17929-4-chris@chris-wilson.co.uk>
Date: Fri, 14 Jun 2019 17:47:46 +0300
Message-ID: <87h88s8bql.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 03/39] drm/i915: Avoid tainting
 i915_gem_park() with wakeref.lock
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gV2hpbGUg
d2UgbmVlZCB0byBmbHVzaCB0aGUgd2FrZXJlZiBiZWZvcmUgcGFya2luZywgd2UgZG8gbm90IG5l
ZWQgdG8KPiBwZXJmb3JtIHRoZSBpOTE1X2dlbV9wYXJrKCkgaXRzZWxmIHVuZGVybmVhdGggdGhl
IHdha2VyZWYgbG9jaywgbWVyZWx5Cj4gdGhlIHN0cnVjdF9tdXRleC4gSWYgd2UgcmVhcnJhbmdl
IHRoZSBsb2Nrcywgd2UgY2FuIGF2b2lkIHRoZSB1bm5lY2Vzc2FyeQo+IHRhaW50aW5nLgo+Cj4g
U2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4g
LS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9wbS5jIHwgMTcgKysrKysr
KystLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlv
bnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
cG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9wbS5jCj4gaW5kZXggNmU3
NTcwMmM1NjcxLi5hMzNmNjk2MTBkNmYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX3BtLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fcG0uYwo+IEBAIC0zMCwyMyArMzAsMjIgQEAgc3RhdGljIHZvaWQgaWRsZV93b3JrX2hh
bmRsZXIoc3RydWN0IHdvcmtfc3RydWN0ICp3b3JrKQo+ICB7Cj4gIAlzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSA9Cj4gIAkJY29udGFpbmVyX29mKHdvcmssIHR5cGVvZigqaTkxNSksIGdl
bS5pZGxlX3dvcmspOwo+IC0JYm9vbCByZXN0YXJ0ID0gdHJ1ZTsKPiArCWJvb2wgcGFyazsKPgoK
Y2FuX3BhcmsuLi5tZWguCgo+IC0JY2FuY2VsX2RlbGF5ZWRfd29yaygmaTkxNS0+Z2VtLnJldGly
ZV93b3JrKTsKPiArCWNhbmNlbF9kZWxheWVkX3dvcmtfc3luYygmaTkxNS0+Z2VtLnJldGlyZV93
b3JrKTsKPiAgCW11dGV4X2xvY2soJmk5MTUtPmRybS5zdHJ1Y3RfbXV0ZXgpOwo+ICAKPiAgCWlu
dGVsX3dha2VyZWZfbG9jaygmaTkxNS0+Z3Qud2FrZXJlZik7Cj4gLQlpZiAoIWludGVsX3dha2Vy
ZWZfYWN0aXZlKCZpOTE1LT5ndC53YWtlcmVmKSAmJiAhd29ya19wZW5kaW5nKHdvcmspKSB7Cj4g
LQkJaTkxNV9nZW1fcGFyayhpOTE1KTsKPiAtCQlyZXN0YXJ0ID0gZmFsc2U7Cj4gLQl9Cj4gKwlw
YXJrID0gIWludGVsX3dha2VyZWZfYWN0aXZlKCZpOTE1LT5ndC53YWtlcmVmKSAmJiAhd29ya19w
ZW5kaW5nKHdvcmspOwo+ICAJaW50ZWxfd2FrZXJlZl91bmxvY2soJmk5MTUtPmd0Lndha2VyZWYp
Owo+IC0KPiAtCW11dGV4X3VubG9jaygmaTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7Cj4gLQlpZiAo
cmVzdGFydCkKPiArCWlmIChwYXJrKQo+ICsJCWk5MTVfZ2VtX3BhcmsoaTkxNSk7CgpEaWQgbm90
IGZpbmQgYW55dGhpbmcgYmVuZWF0aCBnZW0gcGFyayB0aGF0IHdvdWxkIG5lZWQgd2FrZXJlZi4K
ClJldmlld2VkLWJ5OiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNv
bT4KCj4gKwllbHNlCj4gIAkJcXVldWVfZGVsYXllZF93b3JrKGk5MTUtPndxLAo+ICAJCQkJICAg
Jmk5MTUtPmdlbS5yZXRpcmVfd29yaywKPiAgCQkJCSAgIHJvdW5kX2ppZmZpZXNfdXBfcmVsYXRp
dmUoSFopKTsKPiArCj4gKwltdXRleF91bmxvY2soJmk5MTUtPmRybS5zdHJ1Y3RfbXV0ZXgpOwo+
ICB9Cj4gIAo+ICBzdGF0aWMgdm9pZCByZXRpcmVfd29ya19oYW5kbGVyKHN0cnVjdCB3b3JrX3N0
cnVjdCAqd29yaykKPiAtLSAKPiAyLjIwLjEKPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IEludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
