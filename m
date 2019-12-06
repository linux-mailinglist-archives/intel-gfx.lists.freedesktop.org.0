Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4306C1159C3
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Dec 2019 00:49:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2494B6FAB1;
	Fri,  6 Dec 2019 23:49:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 596 seconds by postgrey-1.36 at gabe;
 Fri, 06 Dec 2019 23:49:23 UTC
Received: from 9.mo178.mail-out.ovh.net (9.mo178.mail-out.ovh.net
 [46.105.75.45])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A95DA6FAB1
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Dec 2019 23:49:23 +0000 (UTC)
Received: from player690.ha.ovh.net (unknown [10.108.57.53])
 by mo178.mail-out.ovh.net (Postfix) with ESMTP id 7CDBD83940
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 Dec 2019 00:31:32 +0100 (CET)
Received: from etezian.org (81-175-223-118.bb.dnainternet.fi [81.175.223.118])
 (Authenticated sender: andi@etezian.org)
 by player690.ha.ovh.net (Postfix) with ESMTPSA id 6AC7FCE3FB9B;
 Fri,  6 Dec 2019 23:31:28 +0000 (UTC)
Date: Sat, 7 Dec 2019 01:31:26 +0200
From: Andi Shyti <andi@etezian.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191206233126.GA1300@jack.zhora.eu>
References: <20191206105527.1130413-1-chris@chris-wilson.co.uk>
 <20191206105527.1130413-4-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191206105527.1130413-4-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Ovh-Tracer-Id: 16488804138573742601
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrudekgedgtdejucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdqfffguegfifdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfhfgggtuggjfgesthdtredttdervdenucfhrhhomheptehnughiucfuhhihthhiuceorghnughisegvthgviihirghnrdhorhhgqeenucfkpheptddrtddrtddrtddpkedurddujeehrddvvdefrdduudeknecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrheiledtrdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomheprghnughisegvthgviihirghnrdhorhhgpdhrtghpthhtohepihhnthgvlhdqghhfgieslhhishhtshdrfhhrvggvuggvshhkthhophdrohhrghenucevlhhushhtvghrufhiiigvpedt
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915/gem: Pin gen6_ppgtt prior to
 constructing the request
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
Cc: intel-gfx@lists.freedesktop.org, matthew.auld@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgQ2hyaXMsCgo+IEFsbCBwaW5uaW5nIG11c3QgYmUgZG9uZSBwcmlvciB0byBpOTE1X3JlcXVl
c3RfY3JlYXRlLCB0byBhdm9pZAo+IHRpbWVsaW5lLT5tdXRleCBpbnZlcnNpb25zLgo+IAo+IEhl
cmUgd2Ugc2xpZ2h0bHkgYWJ1c2UgdGhlIGNvbnRleHRfYmFycmllcl90YXNrIHN0YWdlcyB0byB1
dGlsaXNlIHRoZQo+ICdza2lwJyBkZWNpc2lvbiBhcyBhbiBvcHBvcnR1bml0eSB0byBhY3F1aXJl
IHRoZSBwaW4gb24gdGhlIG5ldyBwcGd0dC4KPiBDb25zaWRlciBpdCBzL3NraXAvcHJlcGFyZS8u
IEF0IHRoZSBtb21lbnQsIHdlIG9ubHkgaGF2ZSBvbiB1c2VyIG9mCj4gY29udGV4dF9iYXJyaWVy
X3Rhc2ssIHNvIGl0IG1pZ2h0IGJlIHdvcnRoIGJyZWFraW5nIGl0IGRvd24gZm9yIHRoZQo+IHNw
ZWNpZmljIHRhc2sgb2Ygc2V0LXZtIGFuZCByZWZhY3RvciBpdCBsYXRlciBpZiB3ZSBmaW5kIGEg
c2Vjb25kCj4gcHVycG9zZS4KClsuLi5dCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX2NvbnRleHQuYwo+IGluZGV4IDlmMWRjOTZiMTBhNi4uOWQ4ZDc1NzY1ZWU0IDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMKPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jCj4gQEAgLTEx
NDEsOCArMTE0MSw2IEBAIHN0YXRpYyBpbnQgZW1pdF9wcGd0dF91cGRhdGUoc3RydWN0IGk5MTVf
cmVxdWVzdCAqcnEsIHZvaWQgKmRhdGEpCj4gIAkJKmNzKysgPSBNSV9OT09QOwo+ICAJCWludGVs
X3JpbmdfYWR2YW5jZShycSwgY3MpOwo+ICAJfSBlbHNlIHsKPiAtCQkvKiBwcEdUVCBpcyBub3Qg
cGFydCBvZiB0aGUgbGVnYWN5IGNvbnRleHQgaW1hZ2UgKi8KPiAtCQlnZW42X3BwZ3R0X3Bpbihp
OTE1X3ZtX3RvX3BwZ3R0KHZtKSk7Cj4gIAl9CgptaD8gQW0gSSBub3Qgc2VlaW5nIHNvbWV0aGlu
ZyBvYnZpb3VzPyBDYW4gd2UgcmVtb3ZlIHRoZSBlbHNlPwoKPiAgCj4gIAlyZXR1cm4gMDsKPiBA
QCAtMTE1MCwxMCArMTE0OCwyMCBAQCBzdGF0aWMgaW50IGVtaXRfcHBndHRfdXBkYXRlKHN0cnVj
dCBpOTE1X3JlcXVlc3QgKnJxLCB2b2lkICpkYXRhKQo+ICAKPiAgc3RhdGljIGJvb2wgc2tpcF9w
cGd0dF91cGRhdGUoc3RydWN0IGludGVsX2NvbnRleHQgKmNlLCB2b2lkICpkYXRhKQo+ICB7Cj4g
KwlpZiAoIXRlc3RfYml0KENPTlRFWFRfQUxMT0NfQklULCAmY2UtPmZsYWdzKSkKPiArCQlyZXR1
cm4gdHJ1ZTsKPiArCj4gIAlpZiAoSEFTX0xPR0lDQUxfUklOR19DT05URVhUUyhjZS0+ZW5naW5l
LT5pOTE1KSkKPiAtCQlyZXR1cm4gIWNlLT5zdGF0ZTsKPiAtCWVsc2UKPiAtCQlyZXR1cm4gIWF0
b21pY19yZWFkKCZjZS0+cGluX2NvdW50KTsKPiArCQlyZXR1cm4gZmFsc2U7Cj4gKwo+ICsJaWYg
KCFhdG9taWNfcmVhZCgmY2UtPnBpbl9jb3VudCkpCj4gKwkJcmV0dXJuIHRydWU7Cj4gKwo+ICsJ
LyogcHBHVFQgaXMgbm90IHBhcnQgb2YgdGhlIGxlZ2FjeSBjb250ZXh0IGltYWdlICovCj4gKwlp
ZiAoZ2VuNl9wcGd0dF9waW4oaTkxNV92bV90b19wcGd0dChjZS0+dm0pKSkKPiArCQlyZXR1cm4g
dHJ1ZTsKPiArCj4gKwlyZXR1cm4gZmFsc2U7Cgpsb29rcyBjb3JyZWN0LCBhIGJpdCB0cmlja3ks
IGJ1dCBJIGRvbid0IHNlZSBhbnkgaXNzdWUuCgpSZXZpZXdlZC1ieTogQW5kaSBTaHl0aSA8YW5k
aS5zaHl0aUBpbnRlbC5jb20+CgpBbmRpCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
