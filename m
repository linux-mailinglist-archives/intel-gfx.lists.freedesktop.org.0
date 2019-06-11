Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 714623D311
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2019 18:56:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AE7089160;
	Tue, 11 Jun 2019 16:56:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0FAB8922A
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2019 16:56:49 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jun 2019 09:56:49 -0700
X-ExtLoop1: 1
Received: from gaia.fi.intel.com ([10.237.72.169])
 by orsmga002.jf.intel.com with ESMTP; 11 Jun 2019 09:56:47 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 04FB25C1F29; Tue, 11 Jun 2019 19:56:41 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190611142725.4531-1-chris@chris-wilson.co.uk>
References: <20190611142725.4531-1-chris@chris-wilson.co.uk>
Date: Tue, 11 Jun 2019 19:56:40 +0300
Message-ID: <87blz49i2f.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gtt: Skip initializing PT with
 scratch if full
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gSWYgd2Ug
d2lsbCBjb21wbGV0ZWx5IG92ZXJ3cml0ZSB0aGUgUFQgd2l0aCBQVEVzIGZvciB0aGUgb2JqZWN0
LCB3ZSBjYW4KPiBmb3JnbyBmaWxsaW5nIGl0IHdpdGggc2NyYXRjaCBlbnRyaWVzLgo+Cj4gUmVm
ZXJlbmNlczogMTQ4MjY2NzMyNDdlICgiZHJtL2k5MTU6IE9ubHkgaW5pdGlhbGl6ZSBwYXJ0aWFs
bHkgZmlsbGVkIHBhZ2V0YWJsZXMiKQo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hy
aXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0
aW5lbkBsaW51eC5pbnRlbC5jb20+Cj4gQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFA
bGludXguaW50ZWwuY29tPgo+IENjOiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcud2lsbGlhbS5hdWxk
QGdtYWlsLmNvbT4KPiBSZXZpZXdlZC1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LndpbGxpYW0u
YXVsZEBnbWFpbC5jb20+CgpSZXZpZXdlZC1ieTogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFs
YUBsaW51eC5pbnRlbC5jb20+Cgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dl
bV9ndHQuYyB8IDMgKystCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVs
ZXRpb24oLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9n
dHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCj4gaW5kZXggZGFlY2Jm
OTFlZmM2Li42ZjQzN2IyOGZlMmEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9nZW1fZ3R0LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQu
Ywo+IEBAIC0xODQ2LDcgKzE4NDYsOCBAQCBzdGF0aWMgaW50IGdlbjZfYWxsb2NfdmFfcmFuZ2Uo
c3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0sCj4gIAkJCWlmIChJU19FUlIocHQpKQo+ICAJ
CQkJZ290byB1bndpbmRfb3V0Owo+ICAKPiAtCQkJZ2VuNl9pbml0aWFsaXplX3B0KHZtLCBwdCk7
Cj4gKwkJCWlmIChjb3VudCA8IEdFTjZfUFRFUykKPiArCQkJCWdlbjZfaW5pdGlhbGl6ZV9wdCh2
bSwgcHQpOwo+ICAKPiAgCQkJb2xkID0gY21weGNoZygmcHBndHQtPmJhc2UucGQucGFnZV90YWJs
ZVtwZGVdLAo+ICAJCQkJICAgICAgdm0tPnNjcmF0Y2hfcHQsIHB0KTsKPiAtLSAKPiAyLjIwLjEK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
