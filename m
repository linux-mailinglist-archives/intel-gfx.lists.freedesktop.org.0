Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B3479D64F
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2019 21:16:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F3A26E2A4;
	Mon, 26 Aug 2019 19:16:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D43226E2A4;
 Mon, 26 Aug 2019 19:16:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Aug 2019 12:16:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,433,1559545200"; d="scan'208";a="380643956"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by fmsmga006.fm.intel.com with ESMTP; 26 Aug 2019 12:16:13 -0700
Received: from bgsmsx154.gar.corp.intel.com (10.224.48.47) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 26 Aug 2019 12:16:13 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.178]) by
 BGSMSX154.gar.corp.intel.com ([169.254.7.192]) with mapi id 14.03.0439.000;
 Tue, 27 Aug 2019 00:46:10 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2 2/6] drm/i915/dp: Add support of BT.2020 Colorimetry
 to DP MSA
Thread-Index: AQHVWZiG3A0IGtoUBUermYPbmz59RacN0fQQ
Date: Mon, 26 Aug 2019 19:16:10 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F821D1D88@BGSMSX104.gar.corp.intel.com>
References: <20190823095232.28908-1-gwan-gyeong.mun@intel.com>
 <20190823095232.28908-3-gwan-gyeong.mun@intel.com>
In-Reply-To: <20190823095232.28908-3-gwan-gyeong.mun@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiN2ZhMzk1MTQtYmI4Yi00YTJiLWJmZTktMjZiMWFlOTQwMzc5IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiQ21obEtYN3JqSFplZ2t3YUluOHF6Q09kRGxFS1NqYkdHeThaQStiZUN1aGg5QlY4WnpGOGY0bldxR2JPdElPWiJ9
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 2/6] drm/i915/dp: Add support of BT.2020
 Colorimetry to DP MSA
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
Cc: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Cgo+LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPkZyb206IE11biwgR3dhbi1neWVvbmcKPlNl
bnQ6IEZyaWRheSwgQXVndXN0IDIzLCAyMDE5IDM6MjIgUE0KPlRvOiBpbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCj5DYzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgU2hh
bmthciwgVW1hIDx1bWEuc2hhbmthckBpbnRlbC5jb20+Owo+U2hhcm1hLCBTaGFzaGFuayA8c2hh
c2hhbmsuc2hhcm1hQGludGVsLmNvbT4KPlN1YmplY3Q6IFtQQVRDSCB2MiAyLzZdIGRybS9pOTE1
L2RwOiBBZGQgc3VwcG9ydCBvZiBCVC4yMDIwIENvbG9yaW1ldHJ5IHRvIERQIE1TQQo+Cj5XaGVu
IEJULjIwMjAgQ29sb3JpbWV0cnkgb3V0cHV0IGlzIHVzZWQgZm9yIERQLCB3ZSBzaG91bGQgcHJv
Z3JhbSBCVC4yMDIwCj5Db2xvcmltZXRyeSB0byBNU0EgYW5kIFZTQyBTRFAuIEl0IGFkZHMgb3V0
cHV0X2NvbG9yc3BhY2UgdG8gaW50ZWxfY3J0Y19zdGF0ZSBzdHJ1Y3QKPmFzIGEgcGxhY2UgaG9s
ZGVyIG9mIHBpcGUncyBvdXRwdXQgY29sb3JzcGFjZS4KPkluIG9yZGVyIHRvIGRpc3Rpbmd1aXNo
IG5lZWRlZCBjb2xvcmltZXRyeSBmb3IgVlNDIFNEUCwgaXQgYWRkcwo+aW50ZWxfZHBfbmVlZHNf
dnNjX2NvbG9yaW1ldHJ5IGZ1bmN0aW9uLgo+SWYgdGhlIG91dHB1dCBjb2xvcnNwYWNlIHJlcXVp
cmVzIHZzYyBzZHAgb3Igb3V0cHV0IGZvcm1hdCBpcyBZQ2JDciA0OjI6MCwgaXQgdXNlcyBNU0EK
PndpdGggVlNDIFNEUC4KPgo+QXMgcGVyIERQIDEuNGEgc3BlYyBzZWN0aW9uIDIuMi40LjMgW01T
QSBGaWVsZCBmb3IgSW5kaWNhdGlvbiBvZiBDb2xvciBFbmNvZGluZwo+Rm9ybWF0IGFuZCBDb250
ZW50IENvbG9yIEdhbXV0XSB3aGlsZSBzZW5kaW5nCj5CVC4yMDIwIENvbG9yaW1ldHJ5IHNpZ25h
bHMgd2Ugc2hvdWxkIHByb2dyYW0gTVNBIE1JU0MxIGZpZWxkcyB3aGljaCBpbmRpY2F0ZSBWU0MK
PlNEUCBmb3IgdGhlIFBpeGVsIEVuY29kaW5nL0NvbG9yaW1ldHJ5IEZvcm1hdC4KPgo+djI6IFJl
bW92ZSB1c2VsZXNzIHBhcmVudGhlc2VzCgpUaGUgY2hhbmdlcyBsb29rIGdvb2QgdG8gbWUuClJl
dmlld2VkLWJ5OiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPgoKPlNpZ25lZC1v
ZmYtYnk6IEd3YW4tZ3llb25nIE11biA8Z3dhbi1neWVvbmcubXVuQGludGVsLmNvbT4KPi0tLQo+
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgICAgICB8ICA4ICsrKy0t
LQo+IC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCAgICB8ICAzICsr
Kwo+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyAgICAgICB8IDI1ICsr
KysrKysrKysrKysrKysrKy0KPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
LmggICAgICAgfCAgMSArCj4gNCBmaWxlcyBjaGFuZ2VkLCAzMyBpbnNlcnRpb25zKCspLCA0IGRl
bGV0aW9ucygtKQo+Cj5kaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kZGkuYwo+Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCj5p
bmRleCA0ZjdlYTBhMzU5NzYuLjVjNDJiNThjMWMyZiAxMDA2NDQKPi0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKPisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGRpLmMKPkBAIC0xNzM3LDExICsxNzM3LDEzIEBAIHZvaWQgaW50ZWxf
ZGRpX3NldF9waXBlX3NldHRpbmdzKGNvbnN0IHN0cnVjdAo+aW50ZWxfY3J0Y19zdGF0ZSAqY3J0
Y19zdGF0ZSkKPiAJLyoKPiAJICogQXMgcGVyIERQIDEuNGEgc3BlYyBzZWN0aW9uIDIuMi40LjMg
W01TQSBGaWVsZCBmb3IgSW5kaWNhdGlvbgo+IAkgKiBvZiBDb2xvciBFbmNvZGluZyBGb3JtYXQg
YW5kIENvbnRlbnQgQ29sb3IgR2FtdXRdIHdoaWxlIHNlbmRpbmcKPi0JICogWUNCQ1IgNDIwIHNp
Z25hbHMgd2Ugc2hvdWxkIHByb2dyYW0gTVNBIE1JU0MxIGZpZWxkcyB3aGljaAo+LQkgKiBpbmRp
Y2F0ZSBWU0MgU0RQIGZvciB0aGUgUGl4ZWwgRW5jb2RpbmcvQ29sb3JpbWV0cnkgRm9ybWF0Lgo+
KwkgKiBZQ0JDUiA0MjAsIEhEUiBCVC4yMDIwIHNpZ25hbHMgd2Ugc2hvdWxkIHByb2dyYW0gTVNB
IE1JU0MxIGZpZWxkcwo+KwkgKiB3aGljaCBpbmRpY2F0ZSBWU0MgU0RQIGZvciB0aGUgUGl4ZWwg
RW5jb2RpbmcvQ29sb3JpbWV0cnkgRm9ybWF0Lgo+IAkgKi8KPi0JaWYgKGNydGNfc3RhdGUtPm91
dHB1dF9mb3JtYXQgPT0gSU5URUxfT1VUUFVUX0ZPUk1BVF9ZQ0JDUjQyMCkKPisJaWYgKGNydGNf
c3RhdGUtPm91dHB1dF9mb3JtYXQgPT0gSU5URUxfT1VUUFVUX0ZPUk1BVF9ZQ0JDUjQyMCB8fAo+
KwkgICAgaW50ZWxfZHBfbmVlZHNfdnNjX2NvbG9yaW1ldHJ5KGNydGNfc3RhdGUtPm91dHB1dF9j
b2xvcnNwYWNlKSkKPiAJCXRlbXAgfD0gVFJBTlNfTVNBX1VTRV9WU0NfU0RQOwo+Kwo+IAlJOTE1
X1dSSVRFKFRSQU5TX01TQV9NSVNDKGNwdV90cmFuc2NvZGVyKSwgdGVtcCk7ICB9Cj4KPmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMu
aAo+Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAo+
aW5kZXggNDQ5YWJhZWE2MTlmLi45ODQ1YWJjZjZmMjkgMTAwNjQ0Cj4tLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAo+KysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKPkBAIC05NjQsNiArOTY0
LDkgQEAgc3RydWN0IGludGVsX2NydGNfc3RhdGUgewo+IAkvKiBPdXRwdXQgZm9ybWF0IFJHQi9Z
Q0JDUiBldGMgKi8KPiAJZW51bSBpbnRlbF9vdXRwdXRfZm9ybWF0IG91dHB1dF9mb3JtYXQ7Cj4K
PisJLyogT3V0cHV0IGNvbG9yc3BhY2Ugc1JHQi9CVC4yMDIwIGV0YyAqLwo+Kwl1MzIgb3V0cHV0
X2NvbG9yc3BhY2U7Cj4rCj4gCS8qIE91dHB1dCBkb3duIHNjYWxpbmcgaXMgZG9uZSBpbiBMU1BD
T04gZGV2aWNlICovCj4gCWJvb2wgbHNwY29uX2Rvd25zYW1wbGluZzsKPgo+ZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+Yi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKPmluZGV4IDU1ZDVhYjk3MDYxYy4uMjk1ZDVlZDJi
ZTk2IDEwMDY0NAo+LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5j
Cj4rKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKPkBAIC0yMTY0
LDYgKzIxNjQsOCBAQCBpbnRlbF9kcF9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZW5jb2Rl
ciAqZW5jb2RlciwKPiAJCXBpcGVfY29uZmlnLT5oYXNfcGNoX2VuY29kZXIgPSB0cnVlOwo+Cj4g
CXBpcGVfY29uZmlnLT5vdXRwdXRfZm9ybWF0ID0gSU5URUxfT1VUUFVUX0ZPUk1BVF9SR0I7Cj4r
CXBpcGVfY29uZmlnLT5vdXRwdXRfY29sb3JzcGFjZSA9IGludGVsX2Nvbm5fc3RhdGUtPmJhc2Uu
Y29sb3JzcGFjZTsKPisKPiAJaWYgKGxzcGNvbi0+YWN0aXZlKQo+IAkJbHNwY29uX3ljYmNyNDIw
X2NvbmZpZygmaW50ZWxfY29ubmVjdG9yLT5iYXNlLCBwaXBlX2NvbmZpZyk7Cj4gCWVsc2UKPkBA
IC00NDA4LDYgKzQ0MTAsMjYgQEAgdTggaW50ZWxfZHBfZHNjX2dldF9zbGljZV9jb3VudChzdHJ1
Y3QgaW50ZWxfZHAKPippbnRlbF9kcCwKPiAJcmV0dXJuIDA7Cj4gfQo+Cj4rYm9vbAo+K2ludGVs
X2RwX25lZWRzX3ZzY19jb2xvcmltZXRyeSh1MzIgY29sb3JzcGFjZSkgewo+Kwlib29sIHJldCA9
IGZhbHNlOwo+Kwo+Kwlzd2l0Y2ggKGNvbG9yc3BhY2UpIHsKPisJY2FzZSBEUk1fTU9ERV9DT0xP
UklNRVRSWV9TWUNDXzYwMToKPisJY2FzZSBEUk1fTU9ERV9DT0xPUklNRVRSWV9PUFlDQ182MDE6
Cj4rCWNhc2UgRFJNX01PREVfQ09MT1JJTUVUUllfQlQyMDIwX1lDQzoKPisJY2FzZSBEUk1fTU9E
RV9DT0xPUklNRVRSWV9CVDIwMjBfUkdCOgo+KwljYXNlIERSTV9NT0RFX0NPTE9SSU1FVFJZX0JU
MjAyMF9DWUNDOgo+KwkJcmV0ID0gdHJ1ZTsKPisJCWJyZWFrOwo+KwlkZWZhdWx0Ogo+KwkJYnJl
YWs7Cj4rCX0KPisKPisJcmV0dXJuIHJldDsKPit9Cj4rCj4gc3RhdGljIHZvaWQKPiBpbnRlbF9k
cF9zZXR1cF92c2Nfc2RwKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCj4gCQkgICAgICAgY29u
c3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsIEBAIC00NTM2LDcgKzQ1NTgs
OAo+QEAgdm9pZCBpbnRlbF9kcF92c2NfZW5hYmxlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAs
Cj4gCQkJIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAo+IAkJCSBj
b25zdCBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZSAqY29ubl9zdGF0ZSkgIHsKPi0JaWYgKGNy
dGNfc3RhdGUtPm91dHB1dF9mb3JtYXQgIT0gSU5URUxfT1VUUFVUX0ZPUk1BVF9ZQ0JDUjQyMCkK
PisJaWYgKGNydGNfc3RhdGUtPm91dHB1dF9mb3JtYXQgIT0gSU5URUxfT1VUUFVUX0ZPUk1BVF9Z
Q0JDUjQyMCAmJgo+KwkgICAgIWludGVsX2RwX25lZWRzX3ZzY19jb2xvcmltZXRyeShjb25uX3N0
YXRlLT5jb2xvcnNwYWNlKSkKPiAJCXJldHVybjsKPgo+IAlpbnRlbF9kcF9zZXR1cF92c2Nfc2Rw
KGludGVsX2RwLCBjcnRjX3N0YXRlLCBjb25uX3N0YXRlKTsgZGlmZiAtLWdpdAo+YS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwLmgKPmluZGV4IDkxYTBlZTYwNThmZS4uYjJkYTdjOTk5OGY3IDEwMDY0
NAo+LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5oCj4rKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmgKPkBAIC0xMTEsNiArMTExLDcg
QEAgYm9vbCBpbnRlbF9kcF9yZWFkX2RwY2Qoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCk7ICBi
b29sCj5pbnRlbF9kcF9nZXRfY29sb3JpbWV0cnlfc3RhdHVzKHN0cnVjdCBpbnRlbF9kcCAqaW50
ZWxfZHApOyAgaW50Cj5pbnRlbF9kcF9saW5rX3JlcXVpcmVkKGludCBwaXhlbF9jbG9jaywgaW50
IGJwcCk7ICBpbnQgaW50ZWxfZHBfbWF4X2RhdGFfcmF0ZShpbnQKPm1heF9saW5rX2Nsb2NrLCBp
bnQgbWF4X2xhbmVzKTsKPitib29sIGludGVsX2RwX25lZWRzX3ZzY19jb2xvcmltZXRyeSh1MzIg
Y29sb3JzcGFjZSk7Cj4gdm9pZCBpbnRlbF9kcF92c2NfZW5hYmxlKHN0cnVjdCBpbnRlbF9kcCAq
aW50ZWxfZHAsCj4gCQkJIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRl
LAo+IAkJCSBjb25zdCBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZSAqY29ubl9zdGF0ZSk7Cj4t
LQo+Mi4yMi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
