Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 194615540F
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 18:10:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13F346E15A;
	Tue, 25 Jun 2019 16:10:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C15D16E15A
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 16:10:30 +0000 (UTC)
Received: from kresse.hi.pengutronix.de ([2001:67c:670:100:1d::2a])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1hfo1c-00087t-Uc; Tue, 25 Jun 2019 18:10:28 +0200
Message-ID: <1561479027.2587.15.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
To: Daniel Vetter <daniel.vetter@ffwll.ch>, DRI Development
 <dri-devel@lists.freedesktop.org>
Date: Tue, 25 Jun 2019 18:10:27 +0200
In-Reply-To: <20190614203615.12639-43-daniel.vetter@ffwll.ch>
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
 <20190614203615.12639-43-daniel.vetter@ffwll.ch>
X-Mailer: Evolution 3.22.6-1+deb9u1 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::2a
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: intel-gfx@lists.freedesktop.org
Subject: Re: [Intel-gfx] [PATCH 42/59] drm/etnaviv: Drop resv argument from
 etnaviv_gem_new_impl
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 etnaviv@lists.freedesktop.org, Russell King <linux+etnaviv@armlinux.org.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QW0gRnJlaXRhZywgZGVuIDE0LjA2LjIwMTksIDIyOjM1ICswMjAwIHNjaHJpZWIgRGFuaWVsIFZl
dHRlcjoKPiBPbmx5IHVzZXIgd2FzIHRoZSBwcmltZSBpbXBvcnQsIGFuZCBkcm1fcHJpbWUuYyB0
YWtlcyBjYXJlIG9mIHRoYXQKPiBub3cuCj4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0
dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KPiA+IENjOiBMdWNhcyBTdGFjaCA8bC5zdGFj
aEBwZW5ndXRyb25peC5kZT4KPiA+IENjOiBSdXNzZWxsIEtpbmcgPGxpbnV4K2V0bmF2aXZAYXJt
bGludXgub3JnLnVrPgo+ID4gQ2M6IENocmlzdGlhbiBHbWVpbmVyIDxjaHJpc3RpYW4uZ21laW5l
ckBnbWFpbC5jb20+Cj4gQ2M6IGV0bmF2aXZAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCgpSZXZpZXdl
ZC1ieTogTHVjYXMgU3RhY2ggPGwuc3RhY2hAcGVuZ3V0cm9uaXguZGU+Cgo+IC0tLQo+IMKgZHJp
dmVycy9ncHUvZHJtL2V0bmF2aXYvZXRuYXZpdl9nZW0uY8KgwqDCoMKgwqDCoMKgfCAxNCArKysr
Ky0tLS0tLS0tLQo+IMKgZHJpdmVycy9ncHUvZHJtL2V0bmF2aXYvZXRuYXZpdl9nZW0uaMKgwqDC
oMKgwqDCoMKgfMKgwqAzICstLQo+IMKgZHJpdmVycy9ncHUvZHJtL2V0bmF2aXYvZXRuYXZpdl9n
ZW1fcHJpbWUuYyB8wqDCoDEgLQo+IMKgMyBmaWxlcyBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyks
IDEyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZXRuYXZp
di9ldG5hdml2X2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL2V0bmF2aXYvZXRuYXZpdl9nZW0uYwo+
IGluZGV4IGU4Nzc4ZWJiNzJlNi4uMTdjYTYwMmRiNjBhIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9ldG5hdml2L2V0bmF2aXZfZ2VtLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vZXRu
YXZpdi9ldG5hdml2X2dlbS5jCj4gQEAgLTU2NSw4ICs1NjUsNyBAQCB2b2lkIGV0bmF2aXZfZ2Vt
X29ial9hZGQoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgc3RydWN0IGRybV9nZW1fb2JqZWN0ICpv
YmopCj4gwqB9Cj4gwqAKPiDCoHN0YXRpYyBpbnQgZXRuYXZpdl9nZW1fbmV3X2ltcGwoc3RydWN0
IGRybV9kZXZpY2UgKmRldiwgdTMyIHNpemUsIHUzMiBmbGFncywKPiA+IC0Jc3RydWN0IHJlc2Vy
dmF0aW9uX29iamVjdCAqcm9iaiwgY29uc3Qgc3RydWN0IGV0bmF2aXZfZ2VtX29wcyAqb3BzLAo+
ID4gLQlzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKipvYmopCj4gPiArCWNvbnN0IHN0cnVjdCBldG5h
dml2X2dlbV9vcHMgKm9wcywgc3RydWN0IGRybV9nZW1fb2JqZWN0ICoqb2JqKQo+IMKgewo+ID4g
wqAJc3RydWN0IGV0bmF2aXZfZ2VtX29iamVjdCAqZXRuYXZpdl9vYmo7Cj4gPiDCoAl1bnNpZ25l
ZCBzeiA9IHNpemVvZigqZXRuYXZpdl9vYmopOwo+IEBAIC01OTQsOCArNTkzLDYgQEAgc3RhdGlj
IGludCBldG5hdml2X2dlbV9uZXdfaW1wbChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB1MzIgc2l6
ZSwgdTMyIGZsYWdzLAo+IMKgCj4gPiDCoAlldG5hdml2X29iai0+ZmxhZ3MgPSBmbGFnczsKPiA+
IMKgCWV0bmF2aXZfb2JqLT5vcHMgPSBvcHM7Cj4gPiAtCWlmIChyb2JqKQo+ID4gLQkJZXRuYXZp
dl9vYmotPmJhc2UucmVzdiA9IHJvYmo7Cj4gwqAKPiA+IMKgCW11dGV4X2luaXQoJmV0bmF2aXZf
b2JqLT5sb2NrKTsKPiA+IMKgCUlOSVRfTElTVF9IRUFEKCZldG5hdml2X29iai0+dnJhbV9saXN0
KTsKPiBAQCAtNjE0LDcgKzYxMSw3IEBAIGludCBldG5hdml2X2dlbV9uZXdfaGFuZGxlKHN0cnVj
dCBkcm1fZGV2aWNlICpkZXYsIHN0cnVjdCBkcm1fZmlsZSAqZmlsZSwKPiDCoAo+ID4gwqAJc2l6
ZSA9IFBBR0VfQUxJR04oc2l6ZSk7Cj4gwqAKPiA+IC0JcmV0ID0gZXRuYXZpdl9nZW1fbmV3X2lt
cGwoZGV2LCBzaXplLCBmbGFncywgTlVMTCwKPiA+ICsJcmV0ID0gZXRuYXZpdl9nZW1fbmV3X2lt
cGwoZGV2LCBzaXplLCBmbGFncywKPiA+IMKgCQkJCcKgwqDCoCZldG5hdml2X2dlbV9zaG1lbV9v
cHMsICZvYmopOwo+ID4gwqAJaWYgKHJldCkKPiA+IMKgCQlnb3RvIGZhaWw7Cj4gQEAgLTY0Niwx
MyArNjQzLDEyIEBAIGludCBldG5hdml2X2dlbV9uZXdfaGFuZGxlKHN0cnVjdCBkcm1fZGV2aWNl
ICpkZXYsIHN0cnVjdCBkcm1fZmlsZSAqZmlsZSwKPiDCoH0KPiDCoAo+IMKgaW50IGV0bmF2aXZf
Z2VtX25ld19wcml2YXRlKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHNpemVfdCBzaXplLCB1MzIg
ZmxhZ3MsCj4gPiAtCXN0cnVjdCByZXNlcnZhdGlvbl9vYmplY3QgKnJvYmosIGNvbnN0IHN0cnVj
dCBldG5hdml2X2dlbV9vcHMgKm9wcywKPiA+IC0Jc3RydWN0IGV0bmF2aXZfZ2VtX29iamVjdCAq
KnJlcykKPiA+ICsJY29uc3Qgc3RydWN0IGV0bmF2aXZfZ2VtX29wcyAqb3BzLCBzdHJ1Y3QgZXRu
YXZpdl9nZW1fb2JqZWN0ICoqcmVzKQo+IMKgewo+ID4gwqAJc3RydWN0IGRybV9nZW1fb2JqZWN0
ICpvYmo7Cj4gPiDCoAlpbnQgcmV0Owo+IMKgCj4gPiAtCXJldCA9IGV0bmF2aXZfZ2VtX25ld19p
bXBsKGRldiwgc2l6ZSwgZmxhZ3MsIHJvYmosIG9wcywgJm9iaik7Cj4gPiArCXJldCA9IGV0bmF2
aXZfZ2VtX25ld19pbXBsKGRldiwgc2l6ZSwgZmxhZ3MsIG9wcywgJm9iaik7Cj4gPiDCoAlpZiAo
cmV0KQo+ID4gwqAJCXJldHVybiByZXQ7Cj4gwqAKPiBAQCAtNzM0LDcgKzczMCw3IEBAIGludCBl
dG5hdml2X2dlbV9uZXdfdXNlcnB0cihzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCBzdHJ1Y3QgZHJt
X2ZpbGUgKmZpbGUsCj4gPiDCoAlzdHJ1Y3QgZXRuYXZpdl9nZW1fb2JqZWN0ICpldG5hdml2X29i
ajsKPiA+IMKgCWludCByZXQ7Cj4gwqAKPiA+IC0JcmV0ID0gZXRuYXZpdl9nZW1fbmV3X3ByaXZh
dGUoZGV2LCBzaXplLCBFVE5BX0JPX0NBQ0hFRCwgTlVMTCwKPiA+ICsJcmV0ID0gZXRuYXZpdl9n
ZW1fbmV3X3ByaXZhdGUoZGV2LCBzaXplLCBFVE5BX0JPX0NBQ0hFRCwKPiA+IMKgCQkJCcKgwqDC
oMKgwqDCoCZldG5hdml2X2dlbV91c2VycHRyX29wcywgJmV0bmF2aXZfb2JqKTsKPiA+IMKgCWlm
IChyZXQpCj4gPiDCoAkJcmV0dXJuIHJldDsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2V0bmF2aXYvZXRuYXZpdl9nZW0uaCBiL2RyaXZlcnMvZ3B1L2RybS9ldG5hdml2L2V0bmF2aXZf
Z2VtLmgKPiBpbmRleCA3NTNjNDU4NDk3ZDAuLmZjZDVkNzFiNTAyZiAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vZXRuYXZpdi9ldG5hdml2X2dlbS5oCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2V0bmF2aXYvZXRuYXZpdl9nZW0uaAo+IEBAIC0xMTIsOCArMTEyLDcgQEAgdm9pZCBldG5h
dml2X3N1Ym1pdF9wdXQoc3RydWN0IGV0bmF2aXZfZ2VtX3N1Ym1pdCAqIHN1Ym1pdCk7Cj4gwqBp
bnQgZXRuYXZpdl9nZW1fd2FpdF9ibyhzdHJ1Y3QgZXRuYXZpdl9ncHUgKmdwdSwgc3RydWN0IGRy
bV9nZW1fb2JqZWN0ICpvYmosCj4gPiDCoAlzdHJ1Y3QgdGltZXNwZWMgKnRpbWVvdXQpOwo+IMKg
aW50IGV0bmF2aXZfZ2VtX25ld19wcml2YXRlKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHNpemVf
dCBzaXplLCB1MzIgZmxhZ3MsCj4gPiAtCXN0cnVjdCByZXNlcnZhdGlvbl9vYmplY3QgKnJvYmos
IGNvbnN0IHN0cnVjdCBldG5hdml2X2dlbV9vcHMgKm9wcywKPiA+IC0Jc3RydWN0IGV0bmF2aXZf
Z2VtX29iamVjdCAqKnJlcyk7Cj4gPiArCWNvbnN0IHN0cnVjdCBldG5hdml2X2dlbV9vcHMgKm9w
cywgc3RydWN0IGV0bmF2aXZfZ2VtX29iamVjdCAqKnJlcyk7Cj4gwqB2b2lkIGV0bmF2aXZfZ2Vt
X29ial9hZGQoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgc3RydWN0IGRybV9nZW1fb2JqZWN0ICpv
YmopOwo+IMKgc3RydWN0IHBhZ2UgKipldG5hdml2X2dlbV9nZXRfcGFnZXMoc3RydWN0IGV0bmF2
aXZfZ2VtX29iamVjdCAqb2JqKTsKPiDCoHZvaWQgZXRuYXZpdl9nZW1fcHV0X3BhZ2VzKHN0cnVj
dCBldG5hdml2X2dlbV9vYmplY3QgKm9iaik7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9ldG5hdml2L2V0bmF2aXZfZ2VtX3ByaW1lLmMgYi9kcml2ZXJzL2dwdS9kcm0vZXRuYXZpdi9l
dG5hdml2X2dlbV9wcmltZS5jCj4gaW5kZXggMDBlOGI2YTgxN2UzLi5hMDUyOTJlOGVkNmYgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2V0bmF2aXYvZXRuYXZpdl9nZW1fcHJpbWUuYwo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9ldG5hdml2L2V0bmF2aXZfZ2VtX3ByaW1lLmMKPiBAQCAt
MTA5LDcgKzEwOSw2IEBAIHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqZXRuYXZpdl9nZW1fcHJpbWVf
aW1wb3J0X3NnX3RhYmxlKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCj4gPiDCoAlpbnQgcmV0LCBu
cGFnZXM7Cj4gwqAKPiA+IMKgCXJldCA9IGV0bmF2aXZfZ2VtX25ld19wcml2YXRlKGRldiwgc2l6
ZSwgRVROQV9CT19XQywKPiA+IC0JCQkJwqDCoMKgwqDCoMKgYXR0YWNoLT5kbWFidWYtPnJlc3Ys
Cj4gPiDCoAkJCQnCoMKgwqDCoMKgwqAmZXRuYXZpdl9nZW1fcHJpbWVfb3BzLCAmZXRuYXZpdl9v
YmopOwo+ID4gwqAJaWYgKHJldCA8IDApCj4gPiDCoAkJcmV0dXJuIEVSUl9QVFIocmV0KTsKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
