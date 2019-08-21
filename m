Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8837977D5
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2019 13:22:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CF816E2CE;
	Wed, 21 Aug 2019 11:22:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A4C16E2CE
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2019 11:22:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Aug 2019 04:22:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,412,1559545200"; d="scan'208";a="180022012"
Received: from irsmsx105.ger.corp.intel.com ([163.33.3.28])
 by fmsmga007.fm.intel.com with ESMTP; 21 Aug 2019 04:22:08 -0700
Received: from irsmsx156.ger.corp.intel.com (10.108.20.68) by
 irsmsx105.ger.corp.intel.com (163.33.3.28) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 21 Aug 2019 12:22:07 +0100
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.7]) by
 IRSMSX156.ger.corp.intel.com ([169.254.3.87]) with mapi id 14.03.0439.000;
 Wed, 21 Aug 2019 12:22:07 +0100
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2 17/40] drm: Add
 for_each_oldnew_intel_crtc_in_state_reverse()
Thread-Index: AQHVVN+4eT8uGqylx028SmtcqrP8B6cFauWA
Date: Wed, 21 Aug 2019 11:22:06 +0000
Message-ID: <43a15bd748bfb7ef1de7ef5ca164f6f4df474437.camel@intel.com>
References: <20190817093902.2171-1-lucas.demarchi@intel.com>
 <20190817093902.2171-18-lucas.demarchi@intel.com>
In-Reply-To: <20190817093902.2171-18-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.159]
Content-ID: <DCE1D8DCB894744092230084A5EF7DF6@intel.com>
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

T24gU2F0LCAyMDE5LTA4LTE3IGF0IDAyOjM4IC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
Cj4gRnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Cj4g
Cj4gU2FtZSBhcyBmb3JfZWFjaF9vbGRuZXdfaW50ZWxfY3J0Y19pbl9zdGF0ZSgpIGJ1dCBpdGVy
YXRlcyBpbiByZXZlcnNlCj4gb3JkZXIuCj4gCj4gdjI6IEZpeCBhZGRpdGlvbmFsIGJsYW5rIGxp
bmUKPiAKPiBDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgo+IENjOiBW
aWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+IFNpZ25lZC1v
ZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgo+IFNp
Z25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgo+
IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaCB8IDkg
KysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgKPiBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oCj4gaW5kZXggZmQzMDQz
ZTc3YjUwLi5iNjNmYjdhNDU5OWUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuaAo+IEBAIC00MTksNiArNDE5LDE1IEBAIGVudW0gcGh5X2ZpYSB7
Cj4gIAkJCSAgICAgKChjb25uZWN0b3IpID0KPiB0b19pbnRlbF9jb25uZWN0b3IoKF9fc3RhdGUp
LT5iYXNlLmNvbm5lY3RvcnNbX19pXS5wdHIpLCBcCj4gIAkJCSAgICAgKG5ld19jb25uZWN0b3Jf
c3RhdGUpID0KPiB0b19pbnRlbF9kaWdpdGFsX2Nvbm5lY3Rvcl9zdGF0ZSgoX19zdGF0ZSktCj4g
PmJhc2UuY29ubmVjdG9yc1tfX2ldLm5ld19zdGF0ZSksIDEpKQo+ICAKPiArI2RlZmluZSBmb3Jf
ZWFjaF9vbGRuZXdfaW50ZWxfY3J0Y19pbl9zdGF0ZV9yZXZlcnNlKF9fc3RhdGUsIGNydGMsCj4g
b2xkX2NydGNfc3RhdGUsIG5ld19jcnRjX3N0YXRlLCBfX2kpIFwKPiArCWZvciAoKF9faSkgPSAo
X19zdGF0ZSktPmJhc2UuZGV2LT5tb2RlX2NvbmZpZy5udW1fY3J0YyAtIDE7IFwKTWF5YmUgYWxp
Z25pbmcgdGhlc2UgdHdvICdmb3InIGxvb3BzIG9uIHRvcCBvZiBlYWNoIG90aGVyIHNpbWlsYXJs
eSB0bwp0byBvdGhlci4gTm93LCBpdCBzZWVtcyB0aGUgbG93ZXIgb25lIGlzIG9mZiBieSBvbmUu
CgpPdGhlcndpc2UsIHRoaXMgaXMKClJldmlld2VkLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhv
bGFAaW50ZWwuY29tPgoKPiArCSAgICAgKF9faSkgPj0gMCAgJiYgXAo+ICsJICAgICAoKGNydGMp
ID0gdG9faW50ZWxfY3J0YygoX19zdGF0ZSktPmJhc2UuY3J0Y3NbX19pXS5wdHIpLCBcCj4gKwkg
ICAgICAob2xkX2NydGNfc3RhdGUpID0gdG9faW50ZWxfY3J0Y19zdGF0ZSgoX19zdGF0ZSktCj4g
PmJhc2UuY3J0Y3NbX19pXS5vbGRfc3RhdGUpLCBcCj4gKwkgICAgICAobmV3X2NydGNfc3RhdGUp
ID0gdG9faW50ZWxfY3J0Y19zdGF0ZSgoX19zdGF0ZSktCj4gPmJhc2UuY3J0Y3NbX19pXS5uZXdf
c3RhdGUpLCAxKTsgXAo+ICsJICAgICAoX19pKS0tKSBcCj4gKwkJZm9yX2VhY2hfaWYoY3J0YykK
PiArCj4gIHZvaWQgaW50ZWxfbGlua19jb21wdXRlX21fbih1MTYgYnBwLCBpbnQgbmxhbmVzLAo+
ICAJCQkgICAgaW50IHBpeGVsX2Nsb2NrLCBpbnQgbGlua19jbG9jaywKPiAgCQkJICAgIHN0cnVj
dCBpbnRlbF9saW5rX21fbiAqbV9uLApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
