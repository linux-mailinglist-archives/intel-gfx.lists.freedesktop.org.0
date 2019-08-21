Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 709F897ACE
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2019 15:32:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4D816E339;
	Wed, 21 Aug 2019 13:32:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E71376E339
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2019 13:32:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Aug 2019 06:32:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,412,1559545200"; d="scan'208";a="180048784"
Received: from irsmsx109.ger.corp.intel.com ([163.33.3.23])
 by fmsmga007.fm.intel.com with ESMTP; 21 Aug 2019 06:32:02 -0700
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.7]) by
 IRSMSX109.ger.corp.intel.com ([169.254.13.11]) with mapi id 14.03.0439.000;
 Wed, 21 Aug 2019 14:32:02 +0100
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2 17/40] drm: Add
 for_each_oldnew_intel_crtc_in_state_reverse()
Thread-Index: AQHVVN+4eT8uGqylx028SmtcqrP8B6cFauWAgAAkTAA=
Date: Wed, 21 Aug 2019 13:32:01 +0000
Message-ID: <0600aff2a6cf23ff781433cb71189056024eeda9.camel@intel.com>
References: <20190817093902.2171-1-lucas.demarchi@intel.com>
 <20190817093902.2171-18-lucas.demarchi@intel.com>
 <43a15bd748bfb7ef1de7ef5ca164f6f4df474437.camel@intel.com>
In-Reply-To: <43a15bd748bfb7ef1de7ef5ca164f6f4df474437.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.159]
Content-ID: <86117E2454DB7948AD22054E297EAFE1@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 17/40] drm: Add
 for_each_oldnew_intel_crtc_in_state_reverse()
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

T24gV2VkLCAyMDE5LTA4LTIxIGF0IDExOjIyICswMDAwLCBLYWhvbGEsIE1pa2Egd3JvdGU6Cj4g
T24gU2F0LCAyMDE5LTA4LTE3IGF0IDAyOjM4IC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
Cj4gPiBGcm9tOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4K
PiA+IAo+ID4gU2FtZSBhcyBmb3JfZWFjaF9vbGRuZXdfaW50ZWxfY3J0Y19pbl9zdGF0ZSgpIGJ1
dCBpdGVyYXRlcyBpbgo+ID4gcmV2ZXJzZQo+ID4gb3JkZXIuCj4gPiAKPiA+IHYyOiBGaXggYWRk
aXRpb25hbCBibGFuayBsaW5lCj4gPiAKPiA+IENjOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2
aUBpbnRlbC5jb20+Cj4gPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4KPiA+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpv
c2Uuc291emFAaW50ZWwuY29tPgo+ID4gU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxs
dWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaCB8IDkgKysrKysrKysrCj4gPiAgMSBmaWxlIGNoYW5n
ZWQsIDkgaW5zZXJ0aW9ucygrKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgKPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgKPiA+IGluZGV4IGZkMzA0M2U3N2I1MC4uYjYzZmI3YTQ1
OTllIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmgKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5oCj4gPiBAQCAtNDE5LDYgKzQxOSwxNSBAQCBlbnVtIHBoeV9maWEgewo+ID4gIAkJCSAg
ICAgKChjb25uZWN0b3IpID0KPiA+IHRvX2ludGVsX2Nvbm5lY3RvcigoX19zdGF0ZSktPmJhc2Uu
Y29ubmVjdG9yc1tfX2ldLnB0ciksIFwKPiA+ICAJCQkgICAgIChuZXdfY29ubmVjdG9yX3N0YXRl
KSA9Cj4gPiB0b19pbnRlbF9kaWdpdGFsX2Nvbm5lY3Rvcl9zdGF0ZSgoX19zdGF0ZSktCj4gPiA+
IGJhc2UuY29ubmVjdG9yc1tfX2ldLm5ld19zdGF0ZSksIDEpKQo+ID4gCj4gPiAgCj4gPiArI2Rl
ZmluZSBmb3JfZWFjaF9vbGRuZXdfaW50ZWxfY3J0Y19pbl9zdGF0ZV9yZXZlcnNlKF9fc3RhdGUs
IGNydGMsCj4gPiBvbGRfY3J0Y19zdGF0ZSwgbmV3X2NydGNfc3RhdGUsIF9faSkgXAo+ID4gKwlm
b3IgKChfX2kpID0gKF9fc3RhdGUpLT5iYXNlLmRldi0+bW9kZV9jb25maWcubnVtX2NydGMgLSAx
OyBcCj4gCj4gTWF5YmUgYWxpZ25pbmcgdGhlc2UgdHdvICdmb3InIGxvb3BzIG9uIHRvcCBvZiBl
YWNoIG90aGVyIHNpbWlsYXJseQo+IHRvCj4gdG8gb3RoZXIuIE5vdywgaXQgc2VlbXMgdGhlIGxv
d2VyIG9uZSBpcyBvZmYgYnkgb25lLgpQbGVhc2UgZm9yZ2V0IHRoaXMgY29tbWVudC4gVGhlIHBh
dGNoIERPRVMgYWxpZ24gY2xlYW5seS4gCgo+IAo+IE90aGVyd2lzZSwgdGhpcyBpcwo+IAo+IFJl
dmlld2VkLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPgo+IAo+ID4gKwkg
ICAgIChfX2kpID49IDAgICYmIFwKPiA+ICsJICAgICAoKGNydGMpID0gdG9faW50ZWxfY3J0Yygo
X19zdGF0ZSktPmJhc2UuY3J0Y3NbX19pXS5wdHIpLCBcCj4gPiArCSAgICAgIChvbGRfY3J0Y19z
dGF0ZSkgPSB0b19pbnRlbF9jcnRjX3N0YXRlKChfX3N0YXRlKS0KPiA+ID4gYmFzZS5jcnRjc1tf
X2ldLm9sZF9zdGF0ZSksIFwKPiA+IAo+ID4gKwkgICAgICAobmV3X2NydGNfc3RhdGUpID0gdG9f
aW50ZWxfY3J0Y19zdGF0ZSgoX19zdGF0ZSktCj4gPiA+IGJhc2UuY3J0Y3NbX19pXS5uZXdfc3Rh
dGUpLCAxKTsgXAo+ID4gCj4gPiArCSAgICAgKF9faSktLSkgXAo+ID4gKwkJZm9yX2VhY2hfaWYo
Y3J0YykKPiA+ICsKPiA+ICB2b2lkIGludGVsX2xpbmtfY29tcHV0ZV9tX24odTE2IGJwcCwgaW50
IG5sYW5lcywKPiA+ICAJCQkgICAgaW50IHBpeGVsX2Nsb2NrLCBpbnQgbGlua19jbG9jaywKPiA+
ICAJCQkgICAgc3RydWN0IGludGVsX2xpbmtfbV9uICptX24sCj4gCj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0
Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
