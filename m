Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3780B1CBC
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Sep 2019 13:58:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67B2B6EF3F;
	Fri, 13 Sep 2019 11:58:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 371E06EF3F;
 Fri, 13 Sep 2019 11:58:13 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Sep 2019 04:58:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,492,1559545200"; d="scan'208";a="190283712"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 13 Sep 2019 04:58:09 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 13 Sep 2019 14:58:08 +0300
Date: Fri, 13 Sep 2019 14:58:08 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20190913115808.GB1208@intel.com>
References: <20190912195132.62574-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190912195132.62574-1-jose.souza@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/connector: Share with non-atomic
 drivers the function to get the single encoder
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBTZXAgMTIsIDIwMTkgYXQgMTI6NTE6MzFQTSAtMDcwMCwgSm9zw6kgUm9iZXJ0byBk
ZSBTb3V6YSB3cm90ZToKPiBUaGlzIDMgbm9uLWF0b21pYyBkcml2ZXJzIGFsbCBoYXZlIHRoZSBz
YW1lIGZ1bmN0aW9uIGdldHRpbmcgdGhlCj4gb25seSBlbmNvZGVyIGF2YWlsYWJsZSBpbiB0aGUg
Y29ubmVjdG9yLCBhbHNvIGF0b21pYyBkcml2ZXJzIGhhdmUKPiB0aGlzIGZhbGxiYWNrLiBTbyBt
b3ZpbmcgaXQgYSBjb21tb24gcGxhY2UgYW5kIHNoYXJpbmcgYmV0d2VlbiBhdG9taWMKPiBhbmQg
bm9uLWF0b21pYyBkcml2ZXJzLgo+IAo+IFdoaWxlIGF0IGl0IEkgYWxzbyByZW1vdmVkIHRoZSBt
ZW50aW9uIG9mCj4gZHJtX2F0b21pY19oZWxwZXJfYmVzdF9lbmNvZGVyKCkgdGhhdCB3YXMgcmVu
YW1lZCBpbgo+IGNvbW1pdCAyOTdlMzBiNWQ5YjYgKCJkcm0vYXRvbWljLWhlbHBlcjogVW5leHBv
cnQKPiBkcm1fYXRvbWljX2hlbHBlcl9iZXN0X2VuY29kZXIiKS4KPiAKPiB2MzogbW92aW5nIGRy
bV9jb25uZWN0b3JfZ2V0X3NpbmdsZV9lbmNvZGVyIHRvIGRybV9rbXNfaGVscGVyIG1vZHVsZQo+
IAo+IFN1Z2dlc3RlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4Lmlu
dGVsLmNvbT4KPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4KPiBDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KPiBDYzog
TGF1cmVudCBQaW5jaGFydCA8bGF1cmVudC5waW5jaGFydEBpZGVhc29uYm9hcmQuY29tPgo+IENj
OiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gQ2M6IGludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKPiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxq
b3NlLnNvdXphQGludGVsLmNvbT4KCmxndG0KUmV2aWV3ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0v
YXN0L2FzdF9tb2RlLmMgICAgICAgICAgICAgfCAxMiAtLS0tLS0tLS0tLS0KPiAgZHJpdmVycy9n
cHUvZHJtL2RybV9hdG9taWNfaGVscGVyLmMgICAgICAgIHwgMTUgKystLS0tLS0tLS0tLS0tCj4g
IGRyaXZlcnMvZ3B1L2RybS9kcm1fY3J0Y19oZWxwZXIuYyAgICAgICAgICB8IDE3ICsrKysrKysr
KysrKysrKystCj4gIGRyaXZlcnMvZ3B1L2RybS9kcm1fY3J0Y19oZWxwZXJfaW50ZXJuYWwuaCB8
ICAzICsrKwo+ICBkcml2ZXJzL2dwdS9kcm0vbWdhZzIwMC9tZ2FnMjAwX21vZGUuYyAgICAgfCAx
MSAtLS0tLS0tLS0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vdWRsL3VkbF9jb25uZWN0b3IuYyAgICAg
ICAgfCAgOCAtLS0tLS0tLQo+ICBpbmNsdWRlL2RybS9kcm1fbW9kZXNldF9oZWxwZXJfdnRhYmxl
cy5oICAgfCAgNiArKystLS0KPiAgNyBmaWxlcyBjaGFuZ2VkLCAyNCBpbnNlcnRpb25zKCspLCA0
OCBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2FzdC9hc3Rf
bW9kZS5jIGIvZHJpdmVycy9ncHUvZHJtL2FzdC9hc3RfbW9kZS5jCj4gaW5kZXggZDM0OWM3MjE1
MDFjLi5lZWY5NWUxYWYwNmIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FzdC9hc3Rf
bW9kZS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2FzdC9hc3RfbW9kZS5jCj4gQEAgLTY4Nywx
NyArNjg3LDYgQEAgc3RhdGljIHZvaWQgYXN0X2VuY29kZXJfZGVzdHJveShzdHJ1Y3QgZHJtX2Vu
Y29kZXIgKmVuY29kZXIpCj4gIAlrZnJlZShlbmNvZGVyKTsKPiAgfQo+ICAKPiAtCj4gLXN0YXRp
YyBzdHJ1Y3QgZHJtX2VuY29kZXIgKmFzdF9iZXN0X3NpbmdsZV9lbmNvZGVyKHN0cnVjdCBkcm1f
Y29ubmVjdG9yICpjb25uZWN0b3IpCj4gLXsKPiAtCWludCBlbmNfaWQgPSBjb25uZWN0b3ItPmVu
Y29kZXJfaWRzWzBdOwo+IC0JLyogcGljayB0aGUgZW5jb2RlciBpZHMgKi8KPiAtCWlmIChlbmNf
aWQpCj4gLQkJcmV0dXJuIGRybV9lbmNvZGVyX2ZpbmQoY29ubmVjdG9yLT5kZXYsIE5VTEwsIGVu
Y19pZCk7Cj4gLQlyZXR1cm4gTlVMTDsKPiAtfQo+IC0KPiAtCj4gIHN0YXRpYyBjb25zdCBzdHJ1
Y3QgZHJtX2VuY29kZXJfZnVuY3MgYXN0X2VuY19mdW5jcyA9IHsKPiAgCS5kZXN0cm95ID0gYXN0
X2VuY29kZXJfZGVzdHJveSwKPiAgfTsKPiBAQCAtODQ3LDcgKzgzNiw2IEBAIHN0YXRpYyB2b2lk
IGFzdF9jb25uZWN0b3JfZGVzdHJveShzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yKQo+
ICBzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9jb25uZWN0b3JfaGVscGVyX2Z1bmNzIGFzdF9jb25u
ZWN0b3JfaGVscGVyX2Z1bmNzID0gewo+ICAJLm1vZGVfdmFsaWQgPSBhc3RfbW9kZV92YWxpZCwK
PiAgCS5nZXRfbW9kZXMgPSBhc3RfZ2V0X21vZGVzLAo+IC0JLmJlc3RfZW5jb2RlciA9IGFzdF9i
ZXN0X3NpbmdsZV9lbmNvZGVyLAo+ICB9Owo+ICAKPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1f
Y29ubmVjdG9yX2Z1bmNzIGFzdF9jb25uZWN0b3JfZnVuY3MgPSB7Cj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9kcm1fYXRvbWljX2hlbHBlci5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9h
dG9taWNfaGVscGVyLmMKPiBpbmRleCA0NzA2NDM5ZmI0OTAuLjlkN2U0ZGE2YzI5MiAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2F0b21pY19oZWxwZXIuYwo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9kcm1fYXRvbWljX2hlbHBlci5jCj4gQEAgLTk3LDE3ICs5Nyw2IEBAIGRybV9h
dG9taWNfaGVscGVyX3BsYW5lX2NoYW5nZWQoc3RydWN0IGRybV9hdG9taWNfc3RhdGUgKnN0YXRl
LAo+ICAJfQo+ICB9Cj4gIAo+IC0vKgo+IC0gKiBGb3IgY29ubmVjdG9ycyB0aGF0IHN1cHBvcnQg
bXVsdGlwbGUgZW5jb2RlcnMsIGVpdGhlciB0aGUKPiAtICogLmF0b21pY19iZXN0X2VuY29kZXIo
KSBvciAuYmVzdF9lbmNvZGVyKCkgb3BlcmF0aW9uIG11c3QgYmUgaW1wbGVtZW50ZWQuCj4gLSAq
Lwo+IC1zdGF0aWMgc3RydWN0IGRybV9lbmNvZGVyICoKPiAtcGlja19zaW5nbGVfZW5jb2Rlcl9m
b3JfY29ubmVjdG9yKHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IpCj4gLXsKPiAtCVdB
Uk5fT04oY29ubmVjdG9yLT5lbmNvZGVyX2lkc1sxXSk7Cj4gLQlyZXR1cm4gZHJtX2VuY29kZXJf
ZmluZChjb25uZWN0b3ItPmRldiwgTlVMTCwgY29ubmVjdG9yLT5lbmNvZGVyX2lkc1swXSk7Cj4g
LX0KPiAtCj4gIHN0YXRpYyBpbnQgaGFuZGxlX2NvbmZsaWN0aW5nX2VuY29kZXJzKHN0cnVjdCBk
cm1fYXRvbWljX3N0YXRlICpzdGF0ZSwKPiAgCQkJCSAgICAgICBib29sIGRpc2FibGVfY29uZmxp
Y3RpbmdfZW5jb2RlcnMpCj4gIHsKPiBAQCAtMTM1LDcgKzEyNCw3IEBAIHN0YXRpYyBpbnQgaGFu
ZGxlX2NvbmZsaWN0aW5nX2VuY29kZXJzKHN0cnVjdCBkcm1fYXRvbWljX3N0YXRlICpzdGF0ZSwK
PiAgCQllbHNlIGlmIChmdW5jcy0+YmVzdF9lbmNvZGVyKQo+ICAJCQluZXdfZW5jb2RlciA9IGZ1
bmNzLT5iZXN0X2VuY29kZXIoY29ubmVjdG9yKTsKPiAgCQllbHNlCj4gLQkJCW5ld19lbmNvZGVy
ID0gcGlja19zaW5nbGVfZW5jb2Rlcl9mb3JfY29ubmVjdG9yKGNvbm5lY3Rvcik7Cj4gKwkJCW5l
d19lbmNvZGVyID0gZHJtX2Nvbm5lY3Rvcl9nZXRfc2luZ2xlX2VuY29kZXIoY29ubmVjdG9yKTsK
PiAgCj4gIAkJaWYgKG5ld19lbmNvZGVyKSB7Cj4gIAkJCWlmIChlbmNvZGVyX21hc2sgJiBkcm1f
ZW5jb2Rlcl9tYXNrKG5ld19lbmNvZGVyKSkgewo+IEBAIC0zNTksNyArMzQ4LDcgQEAgdXBkYXRl
X2Nvbm5lY3Rvcl9yb3V0aW5nKHN0cnVjdCBkcm1fYXRvbWljX3N0YXRlICpzdGF0ZSwKPiAgCWVs
c2UgaWYgKGZ1bmNzLT5iZXN0X2VuY29kZXIpCj4gIAkJbmV3X2VuY29kZXIgPSBmdW5jcy0+YmVz
dF9lbmNvZGVyKGNvbm5lY3Rvcik7Cj4gIAllbHNlCj4gLQkJbmV3X2VuY29kZXIgPSBwaWNrX3Np
bmdsZV9lbmNvZGVyX2Zvcl9jb25uZWN0b3IoY29ubmVjdG9yKTsKPiArCQluZXdfZW5jb2RlciA9
IGRybV9jb25uZWN0b3JfZ2V0X3NpbmdsZV9lbmNvZGVyKGNvbm5lY3Rvcik7Cj4gIAo+ICAJaWYg
KCFuZXdfZW5jb2Rlcikgewo+ICAJCURSTV9ERUJVR19BVE9NSUMoIk5vIHN1aXRhYmxlIGVuY29k
ZXIgZm91bmQgZm9yIFtDT05ORUNUT1I6JWQ6JXNdXG4iLAo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vZHJtX2NydGNfaGVscGVyLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2NydGNfaGVs
cGVyLmMKPiBpbmRleCBhNTE4MjRhN2U3YzEuLjRhNzQ0N2E1M2NlYSAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vZHJtX2NydGNfaGVscGVyLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
ZHJtX2NydGNfaGVscGVyLmMKPiBAQCAtNDYwLDYgKzQ2MCwxNyBAQCBkcm1fY3J0Y19oZWxwZXJf
ZGlzYWJsZShzdHJ1Y3QgZHJtX2NydGMgKmNydGMpCj4gIAlfX2RybV9oZWxwZXJfZGlzYWJsZV91
bnVzZWRfZnVuY3Rpb25zKGRldik7Cj4gIH0KPiAgCj4gKy8qCj4gKyAqIEZvciBjb25uZWN0b3Jz
IHRoYXQgc3VwcG9ydCBtdWx0aXBsZSBlbmNvZGVycywgZWl0aGVyIHRoZQo+ICsgKiAuYXRvbWlj
X2Jlc3RfZW5jb2RlcigpIG9yIC5iZXN0X2VuY29kZXIoKSBvcGVyYXRpb24gbXVzdCBiZSBpbXBs
ZW1lbnRlZC4KPiArICovCj4gK3N0cnVjdCBkcm1fZW5jb2RlciAqCj4gK2RybV9jb25uZWN0b3Jf
Z2V0X3NpbmdsZV9lbmNvZGVyKHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IpCj4gK3sK
PiArCVdBUk5fT04oY29ubmVjdG9yLT5lbmNvZGVyX2lkc1sxXSk7Cj4gKwlyZXR1cm4gZHJtX2Vu
Y29kZXJfZmluZChjb25uZWN0b3ItPmRldiwgTlVMTCwgY29ubmVjdG9yLT5lbmNvZGVyX2lkc1sw
XSk7Cj4gK30KPiArCj4gIC8qKgo+ICAgKiBkcm1fY3J0Y19oZWxwZXJfc2V0X2NvbmZpZyAtIHNl
dCBhIG5ldyBjb25maWcgZnJvbSB1c2Vyc3BhY2UKPiAgICogQHNldDogbW9kZSBzZXQgY29uZmln
dXJhdGlvbgo+IEBAIC02MjUsNyArNjM2LDExIEBAIGludCBkcm1fY3J0Y19oZWxwZXJfc2V0X2Nv
bmZpZyhzdHJ1Y3QgZHJtX21vZGVfc2V0ICpzZXQsCj4gIAkJbmV3X2VuY29kZXIgPSBjb25uZWN0
b3ItPmVuY29kZXI7Cj4gIAkJZm9yIChybyA9IDA7IHJvIDwgc2V0LT5udW1fY29ubmVjdG9yczsg
cm8rKykgewo+ICAJCQlpZiAoc2V0LT5jb25uZWN0b3JzW3JvXSA9PSBjb25uZWN0b3IpIHsKPiAt
CQkJCW5ld19lbmNvZGVyID0gY29ubmVjdG9yX2Z1bmNzLT5iZXN0X2VuY29kZXIoY29ubmVjdG9y
KTsKPiArCQkJCWlmIChjb25uZWN0b3JfZnVuY3MtPmJlc3RfZW5jb2RlcikKPiArCQkJCQluZXdf
ZW5jb2RlciA9IGNvbm5lY3Rvcl9mdW5jcy0+YmVzdF9lbmNvZGVyKGNvbm5lY3Rvcik7Cj4gKwkJ
CQllbHNlCj4gKwkJCQkJbmV3X2VuY29kZXIgPSBkcm1fY29ubmVjdG9yX2dldF9zaW5nbGVfZW5j
b2Rlcihjb25uZWN0b3IpOwo+ICsKPiAgCQkJCS8qIGlmIHdlIGNhbid0IGdldCBhbiBlbmNvZGVy
IGZvciBhIGNvbm5lY3Rvcgo+ICAJCQkJICAgd2UgYXJlIHNldHRpbmcgbm93IC0gdGhlbiBmYWls
ICovCj4gIAkJCQlpZiAobmV3X2VuY29kZXIgPT0gTlVMTCkKPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2RybV9jcnRjX2hlbHBlcl9pbnRlcm5hbC5oIGIvZHJpdmVycy9ncHUvZHJtL2Ry
bV9jcnRjX2hlbHBlcl9pbnRlcm5hbC5oCj4gaW5kZXggYjVhYzE1ODFlNjIzLi5mMGE2NmVmNDdl
NWEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9jcnRjX2hlbHBlcl9pbnRlcm5h
bC5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9jcnRjX2hlbHBlcl9pbnRlcm5hbC5oCj4g
QEAgLTc1LDMgKzc1LDYgQEAgZW51bSBkcm1fbW9kZV9zdGF0dXMgZHJtX2VuY29kZXJfbW9kZV92
YWxpZChzdHJ1Y3QgZHJtX2VuY29kZXIgKmVuY29kZXIsCj4gIAkJCQkJICAgIGNvbnN0IHN0cnVj
dCBkcm1fZGlzcGxheV9tb2RlICptb2RlKTsKPiAgZW51bSBkcm1fbW9kZV9zdGF0dXMgZHJtX2Nv
bm5lY3Rvcl9tb2RlX3ZhbGlkKHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IsCj4gIAkJ
CQkJICAgICAgc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKm1vZGUpOwo+ICsKPiArc3RydWN0IGRy
bV9lbmNvZGVyICoKPiArZHJtX2Nvbm5lY3Rvcl9nZXRfc2luZ2xlX2VuY29kZXIoc3RydWN0IGRy
bV9jb25uZWN0b3IgKmNvbm5lY3Rvcik7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9t
Z2FnMjAwL21nYWcyMDBfbW9kZS5jIGIvZHJpdmVycy9ncHUvZHJtL21nYWcyMDAvbWdhZzIwMF9t
b2RlLmMKPiBpbmRleCA1ZTc3OGI1ZjFhMTAuLjY4MjI2NTU2MDQ0YiAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vbWdhZzIwMC9tZ2FnMjAwX21vZGUuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9tZ2FnMjAwL21nYWcyMDBfbW9kZS5jCj4gQEAgLTE2MzgsMTYgKzE2MzgsNiBAQCBzdGF0
aWMgZW51bSBkcm1fbW9kZV9zdGF0dXMgbWdhX3ZnYV9tb2RlX3ZhbGlkKHN0cnVjdCBkcm1fY29u
bmVjdG9yICpjb25uZWN0b3IsCj4gIAlyZXR1cm4gTU9ERV9PSzsKPiAgfQo+ICAKPiAtc3RhdGlj
IHN0cnVjdCBkcm1fZW5jb2RlciAqbWdhX2Nvbm5lY3Rvcl9iZXN0X2VuY29kZXIoc3RydWN0IGRy
bV9jb25uZWN0b3IKPiAtCQkJCQkJICAqY29ubmVjdG9yKQo+IC17Cj4gLQlpbnQgZW5jX2lkID0g
Y29ubmVjdG9yLT5lbmNvZGVyX2lkc1swXTsKPiAtCS8qIHBpY2sgdGhlIGVuY29kZXIgaWRzICov
Cj4gLQlpZiAoZW5jX2lkKQo+IC0JCXJldHVybiBkcm1fZW5jb2Rlcl9maW5kKGNvbm5lY3Rvci0+
ZGV2LCBOVUxMLCBlbmNfaWQpOwo+IC0JcmV0dXJuIE5VTEw7Cj4gLX0KPiAtCj4gIHN0YXRpYyB2
b2lkIG1nYV9jb25uZWN0b3JfZGVzdHJveShzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9y
KQo+ICB7Cj4gIAlzdHJ1Y3QgbWdhX2Nvbm5lY3RvciAqbWdhX2Nvbm5lY3RvciA9IHRvX21nYV9j
b25uZWN0b3IoY29ubmVjdG9yKTsKPiBAQCAtMTY1OSw3ICsxNjQ5LDYgQEAgc3RhdGljIHZvaWQg
bWdhX2Nvbm5lY3Rvcl9kZXN0cm95KHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IpCj4g
IHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9oZWxwZXJfZnVuY3MgbWdhX3ZnYV9j
b25uZWN0b3JfaGVscGVyX2Z1bmNzID0gewo+ICAJLmdldF9tb2RlcyA9IG1nYV92Z2FfZ2V0X21v
ZGVzLAo+ICAJLm1vZGVfdmFsaWQgPSBtZ2FfdmdhX21vZGVfdmFsaWQsCj4gLQkuYmVzdF9lbmNv
ZGVyID0gbWdhX2Nvbm5lY3Rvcl9iZXN0X2VuY29kZXIsCj4gIH07Cj4gIAo+ICBzdGF0aWMgY29u
c3Qgc3RydWN0IGRybV9jb25uZWN0b3JfZnVuY3MgbWdhX3ZnYV9jb25uZWN0b3JfZnVuY3MgPSB7
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS91ZGwvdWRsX2Nvbm5lY3Rvci5jIGIvZHJp
dmVycy9ncHUvZHJtL3VkbC91ZGxfY29ubmVjdG9yLmMKPiBpbmRleCBkZGI2MWE2MGM2MTAuLmI0
YWUzZTg5YTdiNCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vdWRsL3VkbF9jb25uZWN0
b3IuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS91ZGwvdWRsX2Nvbm5lY3Rvci5jCj4gQEAgLTkw
LDEzICs5MCw2IEBAIHVkbF9kZXRlY3Qoc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3Rvciwg
Ym9vbCBmb3JjZSkKPiAgCXJldHVybiBjb25uZWN0b3Jfc3RhdHVzX2Nvbm5lY3RlZDsKPiAgfQo+
ICAKPiAtc3RhdGljIHN0cnVjdCBkcm1fZW5jb2RlcioKPiAtdWRsX2Jlc3Rfc2luZ2xlX2VuY29k
ZXIoc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvcikKPiAtewo+IC0JaW50IGVuY19pZCA9
IGNvbm5lY3Rvci0+ZW5jb2Rlcl9pZHNbMF07Cj4gLQlyZXR1cm4gZHJtX2VuY29kZXJfZmluZChj
b25uZWN0b3ItPmRldiwgTlVMTCwgZW5jX2lkKTsKPiAtfQo+IC0KPiAgc3RhdGljIGludCB1ZGxf
Y29ubmVjdG9yX3NldF9wcm9wZXJ0eShzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yLAo+
ICAJCQkJICAgICAgc3RydWN0IGRybV9wcm9wZXJ0eSAqcHJvcGVydHksCj4gIAkJCQkgICAgICB1
aW50NjRfdCB2YWwpCj4gQEAgLTEyMCw3ICsxMTMsNiBAQCBzdGF0aWMgdm9pZCB1ZGxfY29ubmVj
dG9yX2Rlc3Ryb3koc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvcikKPiAgc3RhdGljIGNv
bnN0IHN0cnVjdCBkcm1fY29ubmVjdG9yX2hlbHBlcl9mdW5jcyB1ZGxfY29ubmVjdG9yX2hlbHBl
cl9mdW5jcyA9IHsKPiAgCS5nZXRfbW9kZXMgPSB1ZGxfZ2V0X21vZGVzLAo+ICAJLm1vZGVfdmFs
aWQgPSB1ZGxfbW9kZV92YWxpZCwKPiAtCS5iZXN0X2VuY29kZXIgPSB1ZGxfYmVzdF9zaW5nbGVf
ZW5jb2RlciwKPiAgfTsKPiAgCj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9m
dW5jcyB1ZGxfY29ubmVjdG9yX2Z1bmNzID0gewo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9k
cm1fbW9kZXNldF9oZWxwZXJfdnRhYmxlcy5oIGIvaW5jbHVkZS9kcm0vZHJtX21vZGVzZXRfaGVs
cGVyX3Z0YWJsZXMuaAo+IGluZGV4IDZiMThjOGFkZmU5ZC4uYjU1NDEyYzZjZTNhIDEwMDY0NAo+
IC0tLSBhL2luY2x1ZGUvZHJtL2RybV9tb2Rlc2V0X2hlbHBlcl92dGFibGVzLmgKPiArKysgYi9p
bmNsdWRlL2RybS9kcm1fbW9kZXNldF9oZWxwZXJfdnRhYmxlcy5oCj4gQEAgLTk1NSw4ICs5NTUs
OCBAQCBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9oZWxwZXJfZnVuY3Mgewo+ICAJICogQGF0b21pY19i
ZXN0X2VuY29kZXIuCj4gIAkgKgo+ICAJICogWW91IGNhbiBsZWF2ZSB0aGlzIGZ1bmN0aW9uIHRv
IE5VTEwgaWYgdGhlIGNvbm5lY3RvciBpcyBvbmx5Cj4gLQkgKiBhdHRhY2hlZCB0byBhIHNpbmds
ZSBlbmNvZGVyIGFuZCB5b3UgYXJlIHVzaW5nIHRoZSBhdG9taWMgaGVscGVycy4KPiAtCSAqIElu
IHRoaXMgY2FzZSwgdGhlIGNvcmUgd2lsbCBjYWxsIGRybV9hdG9taWNfaGVscGVyX2Jlc3RfZW5j
b2RlcigpCj4gKwkgKiBhdHRhY2hlZCB0byBhIHNpbmdsZSBlbmNvZGVyLgo+ICsJICogSW4gdGhp
cyBjYXNlLCB0aGUgY29yZSB3aWxsIGNhbGwgZHJtX2Nvbm5lY3Rvcl9nZXRfc2luZ2xlX2VuY29k
ZXIoKQo+ICAJICogZm9yIHlvdS4KPiAgCSAqCj4gIAkgKiBSRVRVUk5TOgo+IEBAIC05NzcsNyAr
OTc3LDcgQEAgc3RydWN0IGRybV9jb25uZWN0b3JfaGVscGVyX2Z1bmNzIHsKPiAgCSAqCj4gIAkg
KiBUaGlzIGZ1bmN0aW9uIGlzIHVzZWQgYnkgZHJtX2F0b21pY19oZWxwZXJfY2hlY2tfbW9kZXNl
dCgpLgo+ICAJICogSWYgaXQgaXMgbm90IGltcGxlbWVudGVkLCB0aGUgY29yZSB3aWxsIGZhbGxi
YWNrIHRvIEBiZXN0X2VuY29kZXIKPiAtCSAqIChvciBkcm1fYXRvbWljX2hlbHBlcl9iZXN0X2Vu
Y29kZXIoKSBpZiBAYmVzdF9lbmNvZGVyIGlzIE5VTEwpLgo+ICsJICogKG9yIGRybV9jb25uZWN0
b3JfZ2V0X3NpbmdsZV9lbmNvZGVyKCkgaWYgQGJlc3RfZW5jb2RlciBpcyBOVUxMKS4KPiAgCSAq
Cj4gIAkgKiBOT1RFOgo+ICAJICoKPiAtLSAKPiAyLjIzLjAKCi0tIApWaWxsZSBTeXJqw6Rsw6QK
SW50ZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
