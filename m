Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 194BDAEED5
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2019 17:46:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 368D06E0BA;
	Tue, 10 Sep 2019 15:46:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 126DE6E0BA
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2019 15:46:48 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Sep 2019 08:46:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,489,1559545200"; d="scan'208";a="191851404"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 10 Sep 2019 08:46:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 Sep 2019 18:46:44 +0300
Date: Tue, 10 Sep 2019 18:46:44 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20190910154644.GS7482@intel.com>
References: <20190910154252.30503-1-matthew.d.roper@intel.com>
 <20190910154252.30503-2-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190910154252.30503-2-matthew.d.roper@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v4 1/8] drm/i915: Consolidate bxt/cnl/icl
 cdclk readout
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

T24gVHVlLCBTZXAgMTAsIDIwMTkgYXQgMDg6NDI6NDVBTSAtMDcwMCwgTWF0dCBSb3BlciB3cm90
ZToKPiBBc2lkZSBmcm9tIGEgZmV3IG1pbm9yIHJlZ2lzdGVyIGNoYW5nZXMgYW5kIHNvbWUgZGlm
ZmVyZW50IGNsb2NrIHZhbHVlcywKPiBjZGNsayBkZXNpZ24gaGFzbid0IGNoYW5nZWQgbXVjaCBz
aW5jZSBnZW45bHAuICBMZXQncyBjb25zb2xpZGF0ZSB0aGUKPiBoYW5kbGVycyBmb3IgYnh0LCBj
bmwsIGFuZCBpY2wgdG8ga2VlcCB0aGUgY29kZWZsb3cgY29uc2lzdGVudC4KPiAKPiBBbHNvLCB3
aGlsZSB3ZSdyZSBhdCBpdCwgcy9ieHRfZGVfcGxsX3VwZGF0ZS9ieHRfZGVfcGxsX3JlYWRvdXQv
IHNpbmNlCj4gInVwZGF0ZSIgbWFrZXMgbWUgdGhpbmsgd2Ugc2hvdWxkIGJlIHdyaXRpbmcgdG8g
aGFyZHdhcmUgcmF0aGVyIHRoYW4KPiByZWFkaW5nIGZyb20gaXQuCj4gCj4gdjI6Cj4gIC0gRml4
IGljbF9jYWxjX3ZvbHRhZ2VfbGV2ZWwoKSBsaW1pdHMuICAoVmlsbGUpCj4gIC0gVXNlIENOTF9D
RENMS19QTExfUkFUSU9fTUFTSyByYXRoZXIgdGhhbiBCWFRfREVfUExMX1JBVElPX01BU0sgb24K
PiAgICBnZW4xMCsgdG8gYXZvaWQgY29uZnVzaW9uLiAgKFZpbGxlKQo+IAo+IENjOiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+IFN1Z2dlc3RlZC1ieTog
VmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiBTaWduZWQt
b2ZmLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgo+IFJldmlld2Vk
LWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+IC0t
LQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMgfCAzMjUgKysr
KysrKysrLS0tLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAxMzggaW5zZXJ0aW9ucygrKSwg
MTg3IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2NkY2xrLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2NkY2xrLmMKPiBpbmRleCBkM2U1NjYyOGFmNzAuLjAxZWQzMjYyZDkxZSAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMKPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMKPiBAQCAtMTE5MCw2ICsxMTkw
LDM2IEBAIHN0YXRpYyB1OCBieHRfY2FsY192b2x0YWdlX2xldmVsKGludCBjZGNsaykKPiAgCXJl
dHVybiBESVZfUk9VTkRfVVAoY2RjbGssIDI1MDAwKTsKPiAgfQo+ICAKPiArc3RhdGljIHU4IGNu
bF9jYWxjX3ZvbHRhZ2VfbGV2ZWwoaW50IGNkY2xrKQo+ICt7Cj4gKwlpZiAoY2RjbGsgPiAzMzYw
MDApCj4gKwkJcmV0dXJuIDI7Cj4gKwllbHNlIGlmIChjZGNsayA+IDE2ODAwMCkKPiArCQlyZXR1
cm4gMTsKPiArCWVsc2UKPiArCQlyZXR1cm4gMDsKPiArfQo+ICsKPiArc3RhdGljIHU4IGljbF9j
YWxjX3ZvbHRhZ2VfbGV2ZWwoaW50IGNkY2xrKQo+ICt7Cj4gKwlpZiAoY2RjbGsgPiA1NTY4MDAp
Cj4gKwkJcmV0dXJuIDI7Cj4gKwllbHNlIGlmIChjZGNsayA+IDMxMjAwMCkKPiArCQlyZXR1cm4g
MTsKPiArCWVsc2UKPiArCQlyZXR1cm4gMDsKPiArfQo+ICsKPiArc3RhdGljIHU4IGVobF9jYWxj
X3ZvbHRhZ2VfbGV2ZWwoaW50IGNkY2xrKQo+ICt7Cj4gKwlpZiAoY2RjbGsgPiAzMjY0MDApCgpU
aGlzIHN0aWxsIGxvb2tzIG9mZi4KCj4gKwkJcmV0dXJuIDI7Cj4gKwllbHNlIGlmIChjZGNsayA+
IDE4MDAwMCkKPiArCQlyZXR1cm4gMTsKPiArCWVsc2UKPiArCQlyZXR1cm4gMDsKPiArfQo+ICsK
PiAgc3RhdGljIGludCBieHRfZGVfcGxsX3ZjbyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYsIGludCBjZGNsaykKPiAgewo+ICAJaW50IHJhdGlvOwo+IEBAIC0xMjM2LDIzICsxMjY2
LDY5IEBAIHN0YXRpYyBpbnQgZ2xrX2RlX3BsbF92Y28oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2LCBpbnQgY2RjbGspCj4gIAlyZXR1cm4gZGV2X3ByaXYtPmNkY2xrLmh3LnJlZiAq
IHJhdGlvOwo+ICB9Cj4gIAo+IC1zdGF0aWMgdm9pZCBieHRfZGVfcGxsX3VwZGF0ZShzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4gLQkJCSAgICAgIHN0cnVjdCBpbnRlbF9jZGNs
a19zdGF0ZSAqY2RjbGtfc3RhdGUpCj4gK3N0YXRpYyB2b2lkIGNubF9yZWFkb3V0X3JlZmNsayhz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4gKwkJCSAgICAgICBzdHJ1Y3QgaW50
ZWxfY2RjbGtfc3RhdGUgKmNkY2xrX3N0YXRlKQo+ICB7Cj4gLQl1MzIgdmFsOwo+ICsJaWYgKEk5
MTVfUkVBRChTS0xfRFNTTSkgJiBDTkxfRFNTTV9DRENMS19QTExfUkVGQ0xLXzI0TUh6KQo+ICsJ
CWNkY2xrX3N0YXRlLT5yZWYgPSAyNDAwMDsKPiArCWVsc2UKPiArCQljZGNsa19zdGF0ZS0+cmVm
ID0gMTkyMDA7Cj4gK30KPiAgCj4gLQljZGNsa19zdGF0ZS0+cmVmID0gMTkyMDA7Cj4gLQljZGNs
a19zdGF0ZS0+dmNvID0gMDsKPiArc3RhdGljIHZvaWQgaWNsX3JlYWRvdXRfcmVmY2xrKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiArCQkJICAgICAgIHN0cnVjdCBpbnRlbF9j
ZGNsa19zdGF0ZSAqY2RjbGtfc3RhdGUpCj4gK3sKPiArCXUzMiBkc3NtID0gSTkxNV9SRUFEKFNL
TF9EU1NNKSAmIElDTF9EU1NNX0NEQ0xLX1BMTF9SRUZDTEtfTUFTSzsKPiArCj4gKwlzd2l0Y2gg
KGRzc20pIHsKPiArCWRlZmF1bHQ6Cj4gKwkJTUlTU0lOR19DQVNFKGRzc20pOwo+ICsJCS8qIGZh
bGwgdGhyb3VnaCAqLwo+ICsJY2FzZSBJQ0xfRFNTTV9DRENMS19QTExfUkVGQ0xLXzI0TUh6Ogo+
ICsJCWNkY2xrX3N0YXRlLT5yZWYgPSAyNDAwMDsKPiArCQlicmVhazsKPiArCWNhc2UgSUNMX0RT
U01fQ0RDTEtfUExMX1JFRkNMS18xOV8yTUh6Ogo+ICsJCWNkY2xrX3N0YXRlLT5yZWYgPSAxOTIw
MDsKPiArCQlicmVhazsKPiArCWNhc2UgSUNMX0RTU01fQ0RDTEtfUExMX1JFRkNMS18zOF80TUh6
Ogo+ICsJCWNkY2xrX3N0YXRlLT5yZWYgPSAzODQwMDsKPiArCQlicmVhazsKPiArCX0KPiArfQo+
ICsKPiArc3RhdGljIHZvaWQgYnh0X2RlX3BsbF9yZWFkb3V0KHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdiwKPiArCQkJICAgICAgIHN0cnVjdCBpbnRlbF9jZGNsa19zdGF0ZSAqY2Rj
bGtfc3RhdGUpCj4gK3sKPiArCXUzMiB2YWwsIHJhdGlvOwo+ICsKPiArCWlmIChJTlRFTF9HRU4o
ZGV2X3ByaXYpID49IDExKQo+ICsJCWljbF9yZWFkb3V0X3JlZmNsayhkZXZfcHJpdiwgY2RjbGtf
c3RhdGUpOwo+ICsJZWxzZSBpZiAoSVNfQ0FOTk9OTEFLRShkZXZfcHJpdikpCj4gKwkJY25sX3Jl
YWRvdXRfcmVmY2xrKGRldl9wcml2LCBjZGNsa19zdGF0ZSk7Cj4gKwllbHNlCj4gKwkJY2RjbGtf
c3RhdGUtPnJlZiA9IDE5MjAwOwo+ICAKPiAgCXZhbCA9IEk5MTVfUkVBRChCWFRfREVfUExMX0VO
QUJMRSk7Cj4gLQlpZiAoKHZhbCAmIEJYVF9ERV9QTExfUExMX0VOQUJMRSkgPT0gMCkKPiArCWlm
ICgodmFsICYgQlhUX0RFX1BMTF9QTExfRU5BQkxFKSA9PSAwIHx8Cj4gKwkgICAgKHZhbCAmIEJY
VF9ERV9QTExfTE9DSykgPT0gMCkgewo+ICsJCS8qCj4gKwkJICogQ0RDTEsgUExMIGlzIGRpc2Fi
bGVkLCB0aGUgVkNPL3JhdGlvIGRvZXNuJ3QgbWF0dGVyLCBidXQKPiArCQkgKiBzZXR0aW5nIGl0
IHRvIHplcm8gaXMgYSB3YXkgdG8gc2lnbmFsIHRoYXQuCj4gKwkJICovCj4gKwkJY2RjbGtfc3Rh
dGUtPnZjbyA9IDA7Cj4gIAkJcmV0dXJuOwo+ICsJfQo+ICAKPiAtCWlmIChXQVJOX09OKCh2YWwg
JiBCWFRfREVfUExMX0xPQ0spID09IDApKQo+IC0JCXJldHVybjsKPiArCS8qCj4gKwkgKiBDTkwr
IGhhdmUgdGhlIHJhdGlvIGRpcmVjdGx5IGluIHRoZSBQTEwgZW5hYmxlIHJlZ2lzdGVyLCBnZW45
bHAgaGFkCj4gKwkgKiBpdCBpbiBhIHNlcGFyYXRlIFBMTCBjb250cm9sIHJlZ2lzdGVyLgo+ICsJ
ICovCj4gKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMCkKPiArCQlyYXRpbyA9IHZhbCAm
IENOTF9DRENMS19QTExfUkFUSU9fTUFTSzsKPiArCWVsc2UKPiArCQlyYXRpbyA9IEk5MTVfUkVB
RChCWFRfREVfUExMX0NUTCkgJiBCWFRfREVfUExMX1JBVElPX01BU0s7Cj4gIAo+IC0JdmFsID0g
STkxNV9SRUFEKEJYVF9ERV9QTExfQ1RMKTsKPiAtCWNkY2xrX3N0YXRlLT52Y28gPSAodmFsICYg
QlhUX0RFX1BMTF9SQVRJT19NQVNLKSAqIGNkY2xrX3N0YXRlLT5yZWY7Cj4gKwljZGNsa19zdGF0
ZS0+dmNvID0gcmF0aW8gKiBjZGNsa19zdGF0ZS0+cmVmOwo+ICB9Cj4gIAo+ICBzdGF0aWMgdm9p
ZCBieHRfZ2V0X2NkY2xrKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiBAQCAt
MTI2MSwxMiArMTMzNywxOCBAQCBzdGF0aWMgdm9pZCBieHRfZ2V0X2NkY2xrKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiAgCXUzMiBkaXZpZGVyOwo+ICAJaW50IGRpdjsKPiAg
Cj4gLQlieHRfZGVfcGxsX3VwZGF0ZShkZXZfcHJpdiwgY2RjbGtfc3RhdGUpOwo+IC0KPiAtCWNk
Y2xrX3N0YXRlLT5jZGNsayA9IGNkY2xrX3N0YXRlLT5ieXBhc3MgPSBjZGNsa19zdGF0ZS0+cmVm
Owo+ICsJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIpCj4gKwkJY2RjbGtfc3RhdGUtPmJ5
cGFzcyA9IGNkY2xrX3N0YXRlLT5yZWYgLyAyOwo+ICsJZWxzZSBpZiAoSU5URUxfR0VOKGRldl9w
cml2KSA+PSAxMSkKPiArCQljZGNsa19zdGF0ZS0+YnlwYXNzID0gNTAwMDA7Cj4gKwllbHNlCj4g
KwkJY2RjbGtfc3RhdGUtPmJ5cGFzcyA9IGNkY2xrX3N0YXRlLT5yZWY7Cj4gIAo+IC0JaWYgKGNk
Y2xrX3N0YXRlLT52Y28gPT0gMCkKPiArCWJ4dF9kZV9wbGxfcmVhZG91dChkZXZfcHJpdiwgY2Rj
bGtfc3RhdGUpOwo+ICsJaWYgKGNkY2xrX3N0YXRlLT52Y28gPT0gMCkgewo+ICsJCWNkY2xrX3N0
YXRlLT5jZGNsayA9IGNkY2xrX3N0YXRlLT5ieXBhc3M7Cj4gIAkJZ290byBvdXQ7Cj4gKwl9Cj4g
IAo+ICAJZGl2aWRlciA9IEk5MTVfUkVBRChDRENMS19DVEwpICYgQlhUX0NEQ0xLX0NEMlhfRElW
X1NFTF9NQVNLOwo+ICAKPiBAQCAtMTI3NSwxMyArMTM1NywxNSBAQCBzdGF0aWMgdm9pZCBieHRf
Z2V0X2NkY2xrKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiAgCQlkaXYgPSAy
Owo+ICAJCWJyZWFrOwo+ICAJY2FzZSBCWFRfQ0RDTEtfQ0QyWF9ESVZfU0VMXzFfNToKPiAtCQlX
QVJOKElTX0dFTUlOSUxBS0UoZGV2X3ByaXYpLCAiVW5zdXBwb3J0ZWQgZGl2aWRlclxuIik7Cj4g
KwkJV0FSTihJU19HRU1JTklMQUtFKGRldl9wcml2KSB8fCBJTlRFTF9HRU4oZGV2X3ByaXYpID49
IDEwLAo+ICsJCSAgICAgIlVuc3VwcG9ydGVkIGRpdmlkZXJcbiIpOwo+ICAJCWRpdiA9IDM7Cj4g
IAkJYnJlYWs7Cj4gIAljYXNlIEJYVF9DRENMS19DRDJYX0RJVl9TRUxfMjoKPiAgCQlkaXYgPSA0
Owo+ICAJCWJyZWFrOwo+ICAJY2FzZSBCWFRfQ0RDTEtfQ0QyWF9ESVZfU0VMXzQ6Cj4gKwkJV0FS
TihJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEwLCAiVW5zdXBwb3J0ZWQgZGl2aWRlclxuIik7Cj4g
IAkJZGl2ID0gODsKPiAgCQlicmVhazsKPiAgCWRlZmF1bHQ6Cj4gQEAgLTEyOTYsOCArMTM4MCwx
OCBAQCBzdGF0aWMgdm9pZCBieHRfZ2V0X2NkY2xrKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdiwKPiAgCSAqIENhbid0IHJlYWQgdGhpcyBvdXQgOiggTGV0J3MgYXNzdW1lIGl0J3MK
PiAgCSAqIGF0IGxlYXN0IHdoYXQgdGhlIENEQ0xLIGZyZXF1ZW5jeSByZXF1aXJlcy4KPiAgCSAq
Lwo+IC0JY2RjbGtfc3RhdGUtPnZvbHRhZ2VfbGV2ZWwgPQo+IC0JCWJ4dF9jYWxjX3ZvbHRhZ2Vf
bGV2ZWwoY2RjbGtfc3RhdGUtPmNkY2xrKTsKPiArCWlmIChJU19FTEtIQVJUTEFLRShkZXZfcHJp
dikpCj4gKwkJY2RjbGtfc3RhdGUtPnZvbHRhZ2VfbGV2ZWwgPQo+ICsJCQllaGxfY2FsY192b2x0
YWdlX2xldmVsKGNkY2xrX3N0YXRlLT5jZGNsayk7Cj4gKwllbHNlIGlmIChJTlRFTF9HRU4oZGV2
X3ByaXYpID49IDExKQo+ICsJCWNkY2xrX3N0YXRlLT52b2x0YWdlX2xldmVsID0KPiArCQkJaWNs
X2NhbGNfdm9sdGFnZV9sZXZlbChjZGNsa19zdGF0ZS0+Y2RjbGspOwo+ICsJZWxzZSBpZiAoSU5U
RUxfR0VOKGRldl9wcml2KSA+PSAxMCkKPiArCQljZGNsa19zdGF0ZS0+dm9sdGFnZV9sZXZlbCA9
Cj4gKwkJCWNubF9jYWxjX3ZvbHRhZ2VfbGV2ZWwoY2RjbGtfc3RhdGUtPmNkY2xrKTsKPiArCWVs
c2UKPiArCQljZGNsa19zdGF0ZS0+dm9sdGFnZV9sZXZlbCA9Cj4gKwkJCWJ4dF9jYWxjX3ZvbHRh
Z2VfbGV2ZWwoY2RjbGtfc3RhdGUtPmNkY2xrKTsKPiAgfQo+ICAKPiAgc3RhdGljIHZvaWQgYnh0
X2RlX3BsbF9kaXNhYmxlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiBAQCAt
MTUxNSw3NiArMTYwOSw2IEBAIHN0YXRpYyBpbnQgY25sX2NhbGNfY2RjbGsoaW50IG1pbl9jZGNs
aykKPiAgCQlyZXR1cm4gMTY4MDAwOwo+ICB9Cj4gIAo+IC1zdGF0aWMgdTggY25sX2NhbGNfdm9s
dGFnZV9sZXZlbChpbnQgY2RjbGspCj4gLXsKPiAtCWlmIChjZGNsayA+IDMzNjAwMCkKPiAtCQly
ZXR1cm4gMjsKPiAtCWVsc2UgaWYgKGNkY2xrID4gMTY4MDAwKQo+IC0JCXJldHVybiAxOwo+IC0J
ZWxzZQo+IC0JCXJldHVybiAwOwo+IC19Cj4gLQo+IC1zdGF0aWMgdm9pZCBjbmxfY2RjbGtfcGxs
X3VwZGF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4gLQkJCQkgc3RydWN0
IGludGVsX2NkY2xrX3N0YXRlICpjZGNsa19zdGF0ZSkKPiAtewo+IC0JdTMyIHZhbDsKPiAtCj4g
LQlpZiAoSTkxNV9SRUFEKFNLTF9EU1NNKSAmIENOTF9EU1NNX0NEQ0xLX1BMTF9SRUZDTEtfMjRN
SHopCj4gLQkJY2RjbGtfc3RhdGUtPnJlZiA9IDI0MDAwOwo+IC0JZWxzZQo+IC0JCWNkY2xrX3N0
YXRlLT5yZWYgPSAxOTIwMDsKPiAtCj4gLQljZGNsa19zdGF0ZS0+dmNvID0gMDsKPiAtCj4gLQl2
YWwgPSBJOTE1X1JFQUQoQlhUX0RFX1BMTF9FTkFCTEUpOwo+IC0JaWYgKCh2YWwgJiBCWFRfREVf
UExMX1BMTF9FTkFCTEUpID09IDApCj4gLQkJcmV0dXJuOwo+IC0KPiAtCWlmIChXQVJOX09OKCh2
YWwgJiBCWFRfREVfUExMX0xPQ0spID09IDApKQo+IC0JCXJldHVybjsKPiAtCj4gLQljZGNsa19z
dGF0ZS0+dmNvID0gKHZhbCAmIENOTF9DRENMS19QTExfUkFUSU9fTUFTSykgKiBjZGNsa19zdGF0
ZS0+cmVmOwo+IC19Cj4gLQo+IC1zdGF0aWMgdm9pZCBjbmxfZ2V0X2NkY2xrKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiAtCQkJIHN0cnVjdCBpbnRlbF9jZGNsa19zdGF0ZSAq
Y2RjbGtfc3RhdGUpCj4gLXsKPiAtCXUzMiBkaXZpZGVyOwo+IC0JaW50IGRpdjsKPiAtCj4gLQlj
bmxfY2RjbGtfcGxsX3VwZGF0ZShkZXZfcHJpdiwgY2RjbGtfc3RhdGUpOwo+IC0KPiAtCWNkY2xr
X3N0YXRlLT5jZGNsayA9IGNkY2xrX3N0YXRlLT5ieXBhc3MgPSBjZGNsa19zdGF0ZS0+cmVmOwo+
IC0KPiAtCWlmIChjZGNsa19zdGF0ZS0+dmNvID09IDApCj4gLQkJZ290byBvdXQ7Cj4gLQo+IC0J
ZGl2aWRlciA9IEk5MTVfUkVBRChDRENMS19DVEwpICYgQlhUX0NEQ0xLX0NEMlhfRElWX1NFTF9N
QVNLOwo+IC0KPiAtCXN3aXRjaCAoZGl2aWRlcikgewo+IC0JY2FzZSBCWFRfQ0RDTEtfQ0QyWF9E
SVZfU0VMXzE6Cj4gLQkJZGl2ID0gMjsKPiAtCQlicmVhazsKPiAtCWNhc2UgQlhUX0NEQ0xLX0NE
MlhfRElWX1NFTF8yOgo+IC0JCWRpdiA9IDQ7Cj4gLQkJYnJlYWs7Cj4gLQlkZWZhdWx0Ogo+IC0J
CU1JU1NJTkdfQ0FTRShkaXZpZGVyKTsKPiAtCQlyZXR1cm47Cj4gLQl9Cj4gLQo+IC0JY2RjbGtf
c3RhdGUtPmNkY2xrID0gRElWX1JPVU5EX0NMT1NFU1QoY2RjbGtfc3RhdGUtPnZjbywgZGl2KTsK
PiAtCj4gLSBvdXQ6Cj4gLQkvKgo+IC0JICogQ2FuJ3QgcmVhZCB0aGlzIG91dCA6KCBMZXQncyBh
c3N1bWUgaXQncwo+IC0JICogYXQgbGVhc3Qgd2hhdCB0aGUgQ0RDTEsgZnJlcXVlbmN5IHJlcXVp
cmVzLgo+IC0JICovCj4gLQljZGNsa19zdGF0ZS0+dm9sdGFnZV9sZXZlbCA9Cj4gLQkJY25sX2Nh
bGNfdm9sdGFnZV9sZXZlbChjZGNsa19zdGF0ZS0+Y2RjbGspOwo+IC19Cj4gLQo+ICBzdGF0aWMg
dm9pZCBjbmxfY2RjbGtfcGxsX2Rpc2FibGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2KQo+ICB7Cj4gIAl1MzIgdmFsOwo+IEBAIC0xODMwLDkxICsxODU0LDYgQEAgc3RhdGljIGlu
dCBpY2xfY2FsY19jZGNsa19wbGxfdmNvKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
diwgaW50IGNkY2xrKQo+ICAJcmV0dXJuIGRldl9wcml2LT5jZGNsay5ody5yZWYgKiByYXRpbzsK
PiAgfQo+ICAKPiAtc3RhdGljIHU4IGljbF9jYWxjX3ZvbHRhZ2VfbGV2ZWwoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2LCBpbnQgY2RjbGspCj4gLXsKPiAtCWlmIChJU19FTEtIQVJU
TEFLRShkZXZfcHJpdikpIHsKPiAtCQlpZiAoY2RjbGsgPiAzMTIwMDApCj4gLQkJCXJldHVybiAy
Owo+IC0JCWVsc2UgaWYgKGNkY2xrID4gMTgwMDAwKQo+IC0JCQlyZXR1cm4gMTsKPiAtCQllbHNl
Cj4gLQkJCXJldHVybiAwOwo+IC0JfSBlbHNlIHsKPiAtCQlpZiAoY2RjbGsgPiA1NTY4MDApCj4g
LQkJCXJldHVybiAyOwo+IC0JCWVsc2UgaWYgKGNkY2xrID4gMzEyMDAwKQo+IC0JCQlyZXR1cm4g
MTsKPiAtCQllbHNlCj4gLQkJCXJldHVybiAwOwo+IC0JfQo+IC19Cj4gLQo+IC1zdGF0aWMgdm9p
ZCBpY2xfZ2V0X2NkY2xrKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiAtCQkJ
ICBzdHJ1Y3QgaW50ZWxfY2RjbGtfc3RhdGUgKmNkY2xrX3N0YXRlKQo+IC17Cj4gLQl1MzIgdmFs
Owo+IC0JaW50IGRpdjsKPiAtCj4gLQl2YWwgPSBJOTE1X1JFQUQoU0tMX0RTU00pOwo+IC0Jc3dp
dGNoICh2YWwgJiBJQ0xfRFNTTV9DRENMS19QTExfUkVGQ0xLX01BU0spIHsKPiAtCWRlZmF1bHQ6
Cj4gLQkJTUlTU0lOR19DQVNFKHZhbCk7Cj4gLQkJLyogZmFsbCB0aHJvdWdoICovCj4gLQljYXNl
IElDTF9EU1NNX0NEQ0xLX1BMTF9SRUZDTEtfMjRNSHo6Cj4gLQkJY2RjbGtfc3RhdGUtPnJlZiA9
IDI0MDAwOwo+IC0JCWJyZWFrOwo+IC0JY2FzZSBJQ0xfRFNTTV9DRENMS19QTExfUkVGQ0xLXzE5
XzJNSHo6Cj4gLQkJY2RjbGtfc3RhdGUtPnJlZiA9IDE5MjAwOwo+IC0JCWJyZWFrOwo+IC0JY2Fz
ZSBJQ0xfRFNTTV9DRENMS19QTExfUkVGQ0xLXzM4XzRNSHo6Cj4gLQkJY2RjbGtfc3RhdGUtPnJl
ZiA9IDM4NDAwOwo+IC0JCWJyZWFrOwo+IC0JfQo+IC0KPiAtCWlmIChJTlRFTF9HRU4oZGV2X3By
aXYpID49IDEyKQo+IC0JCWNkY2xrX3N0YXRlLT5ieXBhc3MgPSBjZGNsa19zdGF0ZS0+cmVmIC8g
MjsKPiAtCWVsc2UKPiAtCQljZGNsa19zdGF0ZS0+YnlwYXNzID0gNTAwMDA7Cj4gLQo+IC0JdmFs
ID0gSTkxNV9SRUFEKEJYVF9ERV9QTExfRU5BQkxFKTsKPiAtCWlmICgodmFsICYgQlhUX0RFX1BM
TF9QTExfRU5BQkxFKSA9PSAwIHx8Cj4gLQkgICAgKHZhbCAmIEJYVF9ERV9QTExfTE9DSykgPT0g
MCkgewo+IC0JCS8qCj4gLQkJICogQ0RDTEsgUExMIGlzIGRpc2FibGVkLCB0aGUgVkNPL3JhdGlv
IGRvZXNuJ3QgbWF0dGVyLCBidXQKPiAtCQkgKiBzZXR0aW5nIGl0IHRvIHplcm8gaXMgYSB3YXkg
dG8gc2lnbmFsIHRoYXQuCj4gLQkJICovCj4gLQkJY2RjbGtfc3RhdGUtPnZjbyA9IDA7Cj4gLQkJ
Y2RjbGtfc3RhdGUtPmNkY2xrID0gY2RjbGtfc3RhdGUtPmJ5cGFzczsKPiAtCQlnb3RvIG91dDsK
PiAtCX0KPiAtCj4gLQljZGNsa19zdGF0ZS0+dmNvID0gKHZhbCAmIEJYVF9ERV9QTExfUkFUSU9f
TUFTSykgKiBjZGNsa19zdGF0ZS0+cmVmOwo+IC0KPiAtCXZhbCA9IEk5MTVfUkVBRChDRENMS19D
VEwpICYgQlhUX0NEQ0xLX0NEMlhfRElWX1NFTF9NQVNLOwo+IC0Jc3dpdGNoICh2YWwpIHsKPiAt
CWNhc2UgQlhUX0NEQ0xLX0NEMlhfRElWX1NFTF8xOgo+IC0JCWRpdiA9IDI7Cj4gLQkJYnJlYWs7
Cj4gLQljYXNlIEJYVF9DRENMS19DRDJYX0RJVl9TRUxfMjoKPiAtCQlkaXYgPSA0Owo+IC0JCWJy
ZWFrOwo+IC0JZGVmYXVsdDoKPiAtCQlNSVNTSU5HX0NBU0UodmFsKTsKPiAtCQlkaXYgPSAyOwo+
IC0JCWJyZWFrOwo+IC0JfQo+IC0KPiAtCWNkY2xrX3N0YXRlLT5jZGNsayA9IERJVl9ST1VORF9D
TE9TRVNUKGNkY2xrX3N0YXRlLT52Y28sIGRpdik7Cj4gLQo+IC1vdXQ6Cj4gLQkvKgo+IC0JICog
Q2FuJ3QgcmVhZCB0aGlzIG91dCA6KCBMZXQncyBhc3N1bWUgaXQncwo+IC0JICogYXQgbGVhc3Qg
d2hhdCB0aGUgQ0RDTEsgZnJlcXVlbmN5IHJlcXVpcmVzLgo+IC0JICovCj4gLQljZGNsa19zdGF0
ZS0+dm9sdGFnZV9sZXZlbCA9Cj4gLQkJaWNsX2NhbGNfdm9sdGFnZV9sZXZlbChkZXZfcHJpdiwg
Y2RjbGtfc3RhdGUtPmNkY2xrKTsKPiAtfQo+IC0KPiAgc3RhdGljIHZvaWQgaWNsX2luaXRfY2Rj
bGsoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+ICB7Cj4gIAlzdHJ1Y3QgaW50
ZWxfY2RjbGtfc3RhdGUgc2FuaXRpemVkX3N0YXRlOwo+IEBAIC0xOTQ2LDkgKzE4ODUsMTIgQEAg
c3RhdGljIHZvaWQgaWNsX2luaXRfY2RjbGsoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2KQo+ICAJc2FuaXRpemVkX3N0YXRlLmNkY2xrID0gaWNsX2NhbGNfY2RjbGsoMCwgc2FuaXRp
emVkX3N0YXRlLnJlZik7Cj4gIAlzYW5pdGl6ZWRfc3RhdGUudmNvID0gaWNsX2NhbGNfY2RjbGtf
cGxsX3ZjbyhkZXZfcHJpdiwKPiAgCQkJCQkJICAgICBzYW5pdGl6ZWRfc3RhdGUuY2RjbGspOwo+
IC0Jc2FuaXRpemVkX3N0YXRlLnZvbHRhZ2VfbGV2ZWwgPQo+IC0JCQkJaWNsX2NhbGNfdm9sdGFn
ZV9sZXZlbChkZXZfcHJpdiwKPiAtCQkJCQkJICAgICAgIHNhbml0aXplZF9zdGF0ZS5jZGNsayk7
Cj4gKwlpZiAoSVNfRUxLSEFSVExBS0UoZGV2X3ByaXYpKQo+ICsJCXNhbml0aXplZF9zdGF0ZS52
b2x0YWdlX2xldmVsID0KPiArCQkJZWhsX2NhbGNfdm9sdGFnZV9sZXZlbChzYW5pdGl6ZWRfc3Rh
dGUuY2RjbGspOwo+ICsJZWxzZQo+ICsJCXNhbml0aXplZF9zdGF0ZS52b2x0YWdlX2xldmVsID0K
PiArCQkJaWNsX2NhbGNfdm9sdGFnZV9sZXZlbChzYW5pdGl6ZWRfc3RhdGUuY2RjbGspOwo+ICAK
PiAgCWNubF9zZXRfY2RjbGsoZGV2X3ByaXYsICZzYW5pdGl6ZWRfc3RhdGUsIElOVkFMSURfUElQ
RSk7Cj4gIH0KPiBAQCAtMTk1OSw4ICsxOTAxLDEyIEBAIHN0YXRpYyB2b2lkIGljbF91bmluaXRf
Y2RjbGsoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+ICAKPiAgCWNkY2xrX3N0
YXRlLmNkY2xrID0gY2RjbGtfc3RhdGUuYnlwYXNzOwo+ICAJY2RjbGtfc3RhdGUudmNvID0gMDsK
PiAtCWNkY2xrX3N0YXRlLnZvbHRhZ2VfbGV2ZWwgPSBpY2xfY2FsY192b2x0YWdlX2xldmVsKGRl
dl9wcml2LAo+IC0JCQkJCQkJICAgY2RjbGtfc3RhdGUuY2RjbGspOwo+ICsJaWYgKElTX0VMS0hB
UlRMQUtFKGRldl9wcml2KSkKPiArCQljZGNsa19zdGF0ZS52b2x0YWdlX2xldmVsID0KPiArCQkJ
ZWhsX2NhbGNfdm9sdGFnZV9sZXZlbChjZGNsa19zdGF0ZS5jZGNsayk7Cj4gKwllbHNlCj4gKwkJ
Y2RjbGtfc3RhdGUudm9sdGFnZV9sZXZlbCA9Cj4gKwkJCWljbF9jYWxjX3ZvbHRhZ2VfbGV2ZWwo
Y2RjbGtfc3RhdGUuY2RjbGspOwo+ICAKPiAgCWNubF9zZXRfY2RjbGsoZGV2X3ByaXYsICZjZGNs
a19zdGF0ZSwgSU5WQUxJRF9QSVBFKTsKPiAgfQo+IEBAIC0yNTYxLDkgKzI1MDcsMTQgQEAgc3Rh
dGljIGludCBpY2xfbW9kZXNldF9jYWxjX2NkY2xrKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUg
KnN0YXRlKQo+ICAKPiAgCXN0YXRlLT5jZGNsay5sb2dpY2FsLnZjbyA9IHZjbzsKPiAgCXN0YXRl
LT5jZGNsay5sb2dpY2FsLmNkY2xrID0gY2RjbGs7Cj4gLQlzdGF0ZS0+Y2RjbGsubG9naWNhbC52
b2x0YWdlX2xldmVsID0KPiAtCQltYXgoaWNsX2NhbGNfdm9sdGFnZV9sZXZlbChkZXZfcHJpdiwg
Y2RjbGspLAo+IC0JCSAgICBjbmxfY29tcHV0ZV9taW5fdm9sdGFnZV9sZXZlbChzdGF0ZSkpOwo+
ICsJaWYgKElTX0VMS0hBUlRMQUtFKGRldl9wcml2KSkKPiArCQlzdGF0ZS0+Y2RjbGsubG9naWNh
bC52b2x0YWdlX2xldmVsID0KPiArCQkJbWF4KGVobF9jYWxjX3ZvbHRhZ2VfbGV2ZWwoY2RjbGsp
LAo+ICsJCQkgICAgY25sX2NvbXB1dGVfbWluX3ZvbHRhZ2VfbGV2ZWwoc3RhdGUpKTsKPiArCWVs
c2UKPiArCQlzdGF0ZS0+Y2RjbGsubG9naWNhbC52b2x0YWdlX2xldmVsID0KPiArCQkJbWF4KGlj
bF9jYWxjX3ZvbHRhZ2VfbGV2ZWwoY2RjbGspLAo+ICsJCQkgICAgY25sX2NvbXB1dGVfbWluX3Zv
bHRhZ2VfbGV2ZWwoc3RhdGUpKTsKPiAgCj4gIAlpZiAoIXN0YXRlLT5hY3RpdmVfcGlwZXMpIHsK
PiAgCQljZGNsayA9IGljbF9jYWxjX2NkY2xrKHN0YXRlLT5jZGNsay5mb3JjZV9taW5fY2RjbGss
IHJlZik7Cj4gQEAgLTI1NzEsOCArMjUyMiwxMiBAQCBzdGF0aWMgaW50IGljbF9tb2Rlc2V0X2Nh
bGNfY2RjbGsoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpCj4gIAo+ICAJCXN0YXRl
LT5jZGNsay5hY3R1YWwudmNvID0gdmNvOwo+ICAJCXN0YXRlLT5jZGNsay5hY3R1YWwuY2RjbGsg
PSBjZGNsazsKPiAtCQlzdGF0ZS0+Y2RjbGsuYWN0dWFsLnZvbHRhZ2VfbGV2ZWwgPQo+IC0JCQlp
Y2xfY2FsY192b2x0YWdlX2xldmVsKGRldl9wcml2LCBjZGNsayk7Cj4gKwkJaWYgKElTX0VMS0hB
UlRMQUtFKGRldl9wcml2KSkKPiArCQkJc3RhdGUtPmNkY2xrLmFjdHVhbC52b2x0YWdlX2xldmVs
ID0KPiArCQkJCWVobF9jYWxjX3ZvbHRhZ2VfbGV2ZWwoY2RjbGspOwo+ICsJCWVsc2UKPiArCQkJ
c3RhdGUtPmNkY2xrLmFjdHVhbC52b2x0YWdlX2xldmVsID0KPiArCQkJCWljbF9jYWxjX3ZvbHRh
Z2VfbGV2ZWwoY2RjbGspOwo+ICAJfSBlbHNlIHsKPiAgCQlzdGF0ZS0+Y2RjbGsuYWN0dWFsID0g
c3RhdGUtPmNkY2xrLmxvZ2ljYWw7Cj4gIAl9Cj4gQEAgLTI4MTksMTEgKzI3NzQsNyBAQCB2b2lk
IGludGVsX2luaXRfY2RjbGtfaG9va3Moc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
KQo+ICAJCWRldl9wcml2LT5kaXNwbGF5Lm1vZGVzZXRfY2FsY19jZGNsayA9IHZsdl9tb2Rlc2V0
X2NhbGNfY2RjbGs7Cj4gIAl9Cj4gIAo+IC0JaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTEp
Cj4gLQkJZGV2X3ByaXYtPmRpc3BsYXkuZ2V0X2NkY2xrID0gaWNsX2dldF9jZGNsazsKPiAtCWVs
c2UgaWYgKElTX0NBTk5PTkxBS0UoZGV2X3ByaXYpKQo+IC0JCWRldl9wcml2LT5kaXNwbGF5Lmdl
dF9jZGNsayA9IGNubF9nZXRfY2RjbGs7Cj4gLQllbHNlIGlmIChJU19HRU45X0xQKGRldl9wcml2
KSkKPiArCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEwIHx8IElTX0dFTjlfTFAoZGV2X3By
aXYpKQo+ICAJCWRldl9wcml2LT5kaXNwbGF5LmdldF9jZGNsayA9IGJ4dF9nZXRfY2RjbGs7Cj4g
IAllbHNlIGlmIChJU19HRU45X0JDKGRldl9wcml2KSkKPiAgCQlkZXZfcHJpdi0+ZGlzcGxheS5n
ZXRfY2RjbGsgPSBza2xfZ2V0X2NkY2xrOwo+IC0tIAo+IDIuMjAuMQoKLS0gClZpbGxlIFN5cmrD
pGzDpApJbnRlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
