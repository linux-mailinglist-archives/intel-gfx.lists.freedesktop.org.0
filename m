Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C3B0E0B46
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 20:16:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B31326E095;
	Tue, 22 Oct 2019 18:16:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E07546E095
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2019 18:16:10 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Oct 2019 11:16:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,217,1569308400"; d="scan'208";a="203720919"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 22 Oct 2019 11:16:08 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 22 Oct 2019 21:16:07 +0300
Date: Tue, 22 Oct 2019 21:16:07 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <20191022181607.GQ1208@intel.com>
References: <20191017132105.15528-5-maarten.lankhorst@linux.intel.com>
 <20191018081323.5836-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191018081323.5836-1-maarten.lankhorst@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Perform manual conversions for
 crtc uapi/hw split, v2.
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBPY3QgMTgsIDIwMTkgYXQgMTA6MTM6MjNBTSArMDIwMCwgTWFhcnRlbiBMYW5raG9y
c3Qgd3JvdGU6Cj4gaW50ZWxfZ2V0X2xvYWRfZGV0ZWN0X3BpcGUoKSBuZWVkcyB0byBzZXQgdWFw
aSBhY3RpdmUsCj4gdWFwaSBlbmFibGUgaXMgc2V0IGJ5IHRoZSBjYWxsIHRvIGRybV9hdG9taWNf
c2V0X21vZGVfZm9yX2NydGMoKSwKPiBzbyB3ZSBjYW4gcmVtb3ZlIGl0Lgo+IAo+IGludGVsX3Bp
cGVfY29uZmlnX2NvbXBhcmUoKSBuZWVkcyB0byBsb29rIGF0IGh3IHN0YXRlLCBidXQgSSBkaWRu
J3QKPiBjaGFuZ2Ugc3BhdGNoIHRvIGxvb2sgYXQgaXQuIEl0J3MgZWFzeSBlbm91Z2ggdG8gZG8g
bWFudWFsbHkuCj4gCj4gaW50ZWxfYXRvbWljX2NoZWNrKCkgZGVmaW5pdGVseSBuZWVkcyB0byBj
aGVjayBmb3IgdWFwaSBlbmFibGUsCj4gb3RoZXJ3aXNlIGludGVsX21vZGVzZXRfcGlwZV9jb25m
aWcgY2Fubm90IGNvcHkgdWFwaSBzdGF0ZSB0byBody4KCldlIHNlZW0gdG8gaGF2ZSB0aHJlZSB0
b3RhbGx5IHNlcGFyYXRlIHRoaW5ncyBpbiB0aGlzIG9uZSBwYXRjaC4KCj4gCj4gQ2hhbmdlcyBz
aW5jZSB2MToKPiAtIEFjdHVhbGx5IHNldCB1YXBpLmFjdGl2ZSBpbiBnZXRfbG9hZF9kZXRlY3Rf
cGlwZSgpLgo+IAo+IFNpZ25lZC1vZmYtYnk6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxh
bmtob3JzdEBsaW51eC5pbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgNDIgKysrKysrKysrKy0tLS0tLS0tLS0KPiAgMSBmaWxl
IGNoYW5nZWQsIDIxIGluc2VydGlvbnMoKyksIDIxIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gaW5kZXggZmEwYWJmZGZm
MmFlLi5iYmFjNmI3NjRkOTIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYwo+IEBAIC0xMTIxNCw3ICsxMTIxNCw3IEBAIGludCBpbnRlbF9nZXRf
bG9hZF9kZXRlY3RfcGlwZShzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yLAo+ICAJCWdv
dG8gZmFpbDsKPiAgCX0KPiAgCj4gLQljcnRjX3N0YXRlLT5iYXNlLmFjdGl2ZSA9IGNydGNfc3Rh
dGUtPmJhc2UuZW5hYmxlID0gdHJ1ZTsKPiArCWNydGNfc3RhdGUtPnVhcGkuYWN0aXZlID0gdHJ1
ZTsKPiAgCj4gIAlpZiAoIW1vZGUpCj4gIAkJbW9kZSA9ICZsb2FkX2RldGVjdF9tb2RlOwo+IEBA
IC0xMjc1NCwxOSArMTI3NTQsMTkgQEAgaW50ZWxfcGlwZV9jb25maWdfY29tcGFyZShjb25zdCBz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3VycmVudF9jb25maWcsCj4gIAo+ICAJUElQRV9DT05G
X0NIRUNLX1gob3V0cHV0X3R5cGVzKTsKPiAgCj4gLQlQSVBFX0NPTkZfQ0hFQ0tfSShiYXNlLmFk
anVzdGVkX21vZGUuY3J0Y19oZGlzcGxheSk7Cj4gLQlQSVBFX0NPTkZfQ0hFQ0tfSShiYXNlLmFk
anVzdGVkX21vZGUuY3J0Y19odG90YWwpOwo+IC0JUElQRV9DT05GX0NIRUNLX0koYmFzZS5hZGp1
c3RlZF9tb2RlLmNydGNfaGJsYW5rX3N0YXJ0KTsKPiAtCVBJUEVfQ09ORl9DSEVDS19JKGJhc2Uu
YWRqdXN0ZWRfbW9kZS5jcnRjX2hibGFua19lbmQpOwo+IC0JUElQRV9DT05GX0NIRUNLX0koYmFz
ZS5hZGp1c3RlZF9tb2RlLmNydGNfaHN5bmNfc3RhcnQpOwo+IC0JUElQRV9DT05GX0NIRUNLX0ko
YmFzZS5hZGp1c3RlZF9tb2RlLmNydGNfaHN5bmNfZW5kKTsKPiArCVBJUEVfQ09ORl9DSEVDS19J
KGh3LmFkanVzdGVkX21vZGUuY3J0Y19oZGlzcGxheSk7Cj4gKwlQSVBFX0NPTkZfQ0hFQ0tfSSho
dy5hZGp1c3RlZF9tb2RlLmNydGNfaHRvdGFsKTsKPiArCVBJUEVfQ09ORl9DSEVDS19JKGh3LmFk
anVzdGVkX21vZGUuY3J0Y19oYmxhbmtfc3RhcnQpOwo+ICsJUElQRV9DT05GX0NIRUNLX0koaHcu
YWRqdXN0ZWRfbW9kZS5jcnRjX2hibGFua19lbmQpOwo+ICsJUElQRV9DT05GX0NIRUNLX0koaHcu
YWRqdXN0ZWRfbW9kZS5jcnRjX2hzeW5jX3N0YXJ0KTsKPiArCVBJUEVfQ09ORl9DSEVDS19JKGh3
LmFkanVzdGVkX21vZGUuY3J0Y19oc3luY19lbmQpOwo+ICAKPiAtCVBJUEVfQ09ORl9DSEVDS19J
KGJhc2UuYWRqdXN0ZWRfbW9kZS5jcnRjX3ZkaXNwbGF5KTsKPiAtCVBJUEVfQ09ORl9DSEVDS19J
KGJhc2UuYWRqdXN0ZWRfbW9kZS5jcnRjX3Z0b3RhbCk7Cj4gLQlQSVBFX0NPTkZfQ0hFQ0tfSShi
YXNlLmFkanVzdGVkX21vZGUuY3J0Y192Ymxhbmtfc3RhcnQpOwo+IC0JUElQRV9DT05GX0NIRUNL
X0koYmFzZS5hZGp1c3RlZF9tb2RlLmNydGNfdmJsYW5rX2VuZCk7Cj4gLQlQSVBFX0NPTkZfQ0hF
Q0tfSShiYXNlLmFkanVzdGVkX21vZGUuY3J0Y192c3luY19zdGFydCk7Cj4gLQlQSVBFX0NPTkZf
Q0hFQ0tfSShiYXNlLmFkanVzdGVkX21vZGUuY3J0Y192c3luY19lbmQpOwo+ICsJUElQRV9DT05G
X0NIRUNLX0koaHcuYWRqdXN0ZWRfbW9kZS5jcnRjX3ZkaXNwbGF5KTsKPiArCVBJUEVfQ09ORl9D
SEVDS19JKGh3LmFkanVzdGVkX21vZGUuY3J0Y192dG90YWwpOwo+ICsJUElQRV9DT05GX0NIRUNL
X0koaHcuYWRqdXN0ZWRfbW9kZS5jcnRjX3ZibGFua19zdGFydCk7Cj4gKwlQSVBFX0NPTkZfQ0hF
Q0tfSShody5hZGp1c3RlZF9tb2RlLmNydGNfdmJsYW5rX2VuZCk7Cj4gKwlQSVBFX0NPTkZfQ0hF
Q0tfSShody5hZGp1c3RlZF9tb2RlLmNydGNfdnN5bmNfc3RhcnQpOwo+ICsJUElQRV9DT05GX0NI
RUNLX0koaHcuYWRqdXN0ZWRfbW9kZS5jcnRjX3ZzeW5jX2VuZCk7Cj4gIAo+ICAJUElQRV9DT05G
X0NIRUNLX0kocGl4ZWxfbXVsdGlwbGllcik7Cj4gIAlQSVBFX0NPTkZfQ0hFQ0tfSShvdXRwdXRf
Zm9ybWF0KTsKPiBAQCAtMTI3ODMsMTcgKzEyNzgzLDE3IEBAIGludGVsX3BpcGVfY29uZmlnX2Nv
bXBhcmUoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmN1cnJlbnRfY29uZmlnLAo+ICAK
PiAgCVBJUEVfQ09ORl9DSEVDS19CT09MX0lOQ09NUExFVEUoaGFzX2F1ZGlvKTsKPiAgCj4gLQlQ
SVBFX0NPTkZfQ0hFQ0tfRkxBR1MoYmFzZS5hZGp1c3RlZF9tb2RlLmZsYWdzLAo+ICsJUElQRV9D
T05GX0NIRUNLX0ZMQUdTKGh3LmFkanVzdGVkX21vZGUuZmxhZ3MsCj4gIAkJCSAgICAgIERSTV9N
T0RFX0ZMQUdfSU5URVJMQUNFKTsKPiAgCj4gIAlpZiAoIVBJUEVfQ09ORl9RVUlSSyhQSVBFX0NP
TkZJR19RVUlSS19NT0RFX1NZTkNfRkxBR1MpKSB7Cj4gLQkJUElQRV9DT05GX0NIRUNLX0ZMQUdT
KGJhc2UuYWRqdXN0ZWRfbW9kZS5mbGFncywKPiArCQlQSVBFX0NPTkZfQ0hFQ0tfRkxBR1MoaHcu
YWRqdXN0ZWRfbW9kZS5mbGFncywKPiAgCQkJCSAgICAgIERSTV9NT0RFX0ZMQUdfUEhTWU5DKTsK
PiAtCQlQSVBFX0NPTkZfQ0hFQ0tfRkxBR1MoYmFzZS5hZGp1c3RlZF9tb2RlLmZsYWdzLAo+ICsJ
CVBJUEVfQ09ORl9DSEVDS19GTEFHUyhody5hZGp1c3RlZF9tb2RlLmZsYWdzLAo+ICAJCQkJICAg
ICAgRFJNX01PREVfRkxBR19OSFNZTkMpOwo+IC0JCVBJUEVfQ09ORl9DSEVDS19GTEFHUyhiYXNl
LmFkanVzdGVkX21vZGUuZmxhZ3MsCj4gKwkJUElQRV9DT05GX0NIRUNLX0ZMQUdTKGh3LmFkanVz
dGVkX21vZGUuZmxhZ3MsCj4gIAkJCQkgICAgICBEUk1fTU9ERV9GTEFHX1BWU1lOQyk7Cj4gLQkJ
UElQRV9DT05GX0NIRUNLX0ZMQUdTKGJhc2UuYWRqdXN0ZWRfbW9kZS5mbGFncywKPiArCQlQSVBF
X0NPTkZfQ0hFQ0tfRkxBR1MoaHcuYWRqdXN0ZWRfbW9kZS5mbGFncywKPiAgCQkJCSAgICAgIERS
TV9NT0RFX0ZMQUdfTlZTWU5DKTsKPiAgCX0KPiAgCj4gQEAgLTEyODMyLDcgKzEyODMyLDcgQEAg
aW50ZWxfcGlwZV9jb25maWdfY29tcGFyZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAq
Y3VycmVudF9jb25maWcsCj4gIAo+ICAJCWJwX2dhbW1hID0gaW50ZWxfY29sb3JfZ2V0X2dhbW1h
X2JpdF9wcmVjaXNpb24ocGlwZV9jb25maWcpOwo+ICAJCWlmIChicF9nYW1tYSkKPiAtCQkJUElQ
RV9DT05GX0NIRUNLX0NPTE9SX0xVVChnYW1tYV9tb2RlLCBiYXNlLmdhbW1hX2x1dCwgYnBfZ2Ft
bWEpOwo+ICsJCQlQSVBFX0NPTkZfQ0hFQ0tfQ09MT1JfTFVUKGdhbW1hX21vZGUsIGh3LmdhbW1h
X2x1dCwgYnBfZ2FtbWEpOwo+ICAKPiAgCX0KPiAgCj4gQEAgLTEyODc3LDcgKzEyODc3LDcgQEAg
aW50ZWxfcGlwZV9jb25maWdfY29tcGFyZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAq
Y3VycmVudF9jb25maWcsCj4gIAlpZiAoSVNfRzRYKGRldl9wcml2KSB8fCBJTlRFTF9HRU4oZGV2
X3ByaXYpID49IDUpCj4gIAkJUElQRV9DT05GX0NIRUNLX0kocGlwZV9icHApOwo+ICAKPiAtCVBJ
UEVfQ09ORl9DSEVDS19DTE9DS19GVVpaWShiYXNlLmFkanVzdGVkX21vZGUuY3J0Y19jbG9jayk7
Cj4gKwlQSVBFX0NPTkZfQ0hFQ0tfQ0xPQ0tfRlVaWlkoaHcuYWRqdXN0ZWRfbW9kZS5jcnRjX2Ns
b2NrKTsKPiAgCVBJUEVfQ09ORl9DSEVDS19DTE9DS19GVVpaWShwb3J0X2Nsb2NrKTsKPiAgCj4g
IAlQSVBFX0NPTkZfQ0hFQ0tfSShtaW5fdm9sdGFnZV9sZXZlbCk7Cj4gQEAgLTEzNTcyLDcgKzEz
NTcyLDcgQEAgc3RhdGljIGludCBpbnRlbF9hdG9taWNfY2hlY2soc3RydWN0IGRybV9kZXZpY2Ug
KmRldiwKPiAgCQlpZiAoIW5lZWRzX21vZGVzZXQobmV3X2NydGNfc3RhdGUpKQo+ICAJCQljb250
aW51ZTsKPiAgCj4gLQkJaWYgKCFuZXdfY3J0Y19zdGF0ZS0+YmFzZS5lbmFibGUpIHsKPiArCQlp
ZiAoIW5ld19jcnRjX3N0YXRlLT51YXBpLmVuYWJsZSkgewo+ICAJCQlhbnlfbXMgPSB0cnVlOwo+
ICAJCQljb250aW51ZTsKPiAgCQl9Cj4gLS0gCj4gMi4yMy4wCj4gCj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0
Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4CgotLSAKVmlsbGUgU3lyasOkbMOk
CkludGVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
