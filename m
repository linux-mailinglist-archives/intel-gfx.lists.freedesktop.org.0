Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 541EEB65A0
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2019 16:15:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37A156F3AD;
	Wed, 18 Sep 2019 14:15:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 398CB6F3AD;
 Wed, 18 Sep 2019 14:15:05 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Sep 2019 07:15:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,520,1559545200"; d="scan'208";a="186477690"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 18 Sep 2019 07:15:01 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 18 Sep 2019 17:15:00 +0300
Date: Wed, 18 Sep 2019 17:15:00 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Message-ID: <20190918141500.GM1208@intel.com>
References: <20190916071150.9309-1-gwan-gyeong.mun@intel.com>
 <20190916071150.9309-3-gwan-gyeong.mun@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190916071150.9309-3-gwan-gyeong.mun@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v8 2/7] drm/i915/dp: Add support of BT.2020
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 imirkin@alum.mit.edu
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBTZXAgMTYsIDIwMTkgYXQgMTA6MTE6NDVBTSArMDMwMCwgR3dhbi1neWVvbmcgTXVu
IHdyb3RlOgo+IFdoZW4gQlQuMjAyMCBDb2xvcmltZXRyeSBvdXRwdXQgaXMgdXNlZCBmb3IgRFAs
IHdlIHNob3VsZCBwcm9ncmFtIEJULjIwMjAKPiBDb2xvcmltZXRyeSB0byBNU0EgYW5kIFZTQyBT
RFAuIEl0IGFkZHMgb3V0cHV0X2NvbG9yc3BhY2UgdG8KPiBpbnRlbF9jcnRjX3N0YXRlIHN0cnVj
dCBhcyBhIHBsYWNlIGhvbGRlciBvZiBwaXBlJ3Mgb3V0cHV0IGNvbG9yc3BhY2UuCj4gSW4gb3Jk
ZXIgdG8gZGlzdGluZ3Vpc2ggbmVlZGVkIGNvbG9yaW1ldHJ5IGZvciBWU0MgU0RQLCBpdCBhZGRz
Cj4gaW50ZWxfZHBfbmVlZHNfdnNjX3NkcCBmdW5jdGlvbi4KPiBJZiB0aGUgb3V0cHV0IGNvbG9y
c3BhY2UgcmVxdWlyZXMgdnNjIHNkcCBvciBvdXRwdXQgZm9ybWF0IGlzIFlDYkNyIDQ6MjowLAo+
IGl0IHVzZXMgTVNBIHdpdGggVlNDIFNEUC4KPiAKPiBBcyBwZXIgRFAgMS40YSBzcGVjIHNlY3Rp
b24gMi4yLjQuMyBbTVNBIEZpZWxkIGZvciBJbmRpY2F0aW9uIG9mCj4gQ29sb3IgRW5jb2Rpbmcg
Rm9ybWF0IGFuZCBDb250ZW50IENvbG9yIEdhbXV0XSB3aGlsZSBzZW5kaW5nCj4gQlQuMjAyMCBD
b2xvcmltZXRyeSBzaWduYWxzIHdlIHNob3VsZCBwcm9ncmFtIE1TQSBNSVNDMSBmaWVsZHMgd2hp
Y2gKPiBpbmRpY2F0ZSBWU0MgU0RQIGZvciB0aGUgUGl4ZWwgRW5jb2RpbmcvQ29sb3JpbWV0cnkg
Rm9ybWF0Lgo+IAo+IHYyOiBSZW1vdmUgdXNlbGVzcyBwYXJlbnRoZXNlcwo+IHYzOiBBZGRyZXNz
ZWQgcmV2aWV3IGNvbW1lbnRzIGZyb20gVmlsbGUKPiAgICAgLSBJbiBvcmRlciB0byBjaGVja2lu
ZyBvdXRwdXQgZm9ybWF0IGFuZCBvdXRwdXQgY29sb3JzcGFjZSBvbgo+ICAgICAgIGludGVsX2Rw
X25lZWRzX3ZzY19zZHAoKSwgaXQgcGFzc2VzIGVudGlyZSBpbnRlbF9jcnRjX3N0YXRlIHN0cnVj
dAo+ICAgICAgIHZhbHVlLgo+ICAgICAtIFJlbW92ZSBhIHBvaW50bGVzcyB2YXJpYWJsZS4KPiAK
PiBTaWduZWQtb2ZmLWJ5OiBHd2FuLWd5ZW9uZyBNdW4gPGd3YW4tZ3llb25nLm11bkBpbnRlbC5j
b20+Cj4gUmV2aWV3ZWQtYnk6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+Cj4g
LS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgICAgICB8ICA3
ICsrKy0tCj4gIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCAgICB8
ICAzICsrCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyAgICAgICB8
IDI5ICsrKysrKysrKysrKysrKysrKy0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcC5oICAgICAgIHwgIDEgKwo+ICA0IGZpbGVzIGNoYW5nZWQsIDM2IGluc2VydGlvbnMo
KyksIDQgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGRpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RkaS5jCj4gaW5kZXggOThkNjlmZWJkOGUzLi44ZGMwMzA2NTA4MDEgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKPiBAQCAtMTczNywxMSArMTczNywxMiBA
QCB2b2lkIGludGVsX2RkaV9zZXRfcGlwZV9zZXR0aW5ncyhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKPiAgCS8qCj4gIAkgKiBBcyBwZXIgRFAgMS40YSBzcGVjIHNl
Y3Rpb24gMi4yLjQuMyBbTVNBIEZpZWxkIGZvciBJbmRpY2F0aW9uCj4gIAkgKiBvZiBDb2xvciBF
bmNvZGluZyBGb3JtYXQgYW5kIENvbnRlbnQgQ29sb3IgR2FtdXRdIHdoaWxlIHNlbmRpbmcKPiAt
CSAqIFlDQkNSIDQyMCBzaWduYWxzIHdlIHNob3VsZCBwcm9ncmFtIE1TQSBNSVNDMSBmaWVsZHMg
d2hpY2gKPiAtCSAqIGluZGljYXRlIFZTQyBTRFAgZm9yIHRoZSBQaXhlbCBFbmNvZGluZy9Db2xv
cmltZXRyeSBGb3JtYXQuCj4gKwkgKiBZQ0JDUiA0MjAsIEhEUiBCVC4yMDIwIHNpZ25hbHMgd2Ug
c2hvdWxkIHByb2dyYW0gTVNBIE1JU0MxIGZpZWxkcwo+ICsJICogd2hpY2ggaW5kaWNhdGUgVlND
IFNEUCBmb3IgdGhlIFBpeGVsIEVuY29kaW5nL0NvbG9yaW1ldHJ5IEZvcm1hdC4KPiAgCSAqLwo+
IC0JaWYgKGNydGNfc3RhdGUtPm91dHB1dF9mb3JtYXQgPT0gSU5URUxfT1VUUFVUX0ZPUk1BVF9Z
Q0JDUjQyMCkKPiArCWlmIChpbnRlbF9kcF9uZWVkc192c2Nfc2RwKGNydGNfc3RhdGUpKQo+ICAJ
CXRlbXAgfD0gVFJBTlNfTVNBX1VTRV9WU0NfU0RQOwo+ICsKPiAgCUk5MTVfV1JJVEUoVFJBTlNf
TVNBX01JU0MoY3B1X3RyYW5zY29kZXIpLCB0ZW1wKTsKPiAgfQo+ICAKPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAo+IGluZGV4IGQ1
Y2M0YjgxMGQ5ZS4uNDEwODU3MDkwN2Q0IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKPiBAQCAtOTcxLDYgKzk3MSw5IEBA
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlIHsKPiAgCS8qIE91dHB1dCBmb3JtYXQgUkdCL1lDQkNS
IGV0YyAqLwo+ICAJZW51bSBpbnRlbF9vdXRwdXRfZm9ybWF0IG91dHB1dF9mb3JtYXQ7Cj4gIAo+
ICsJLyogT3V0cHV0IGNvbG9yc3BhY2Ugc1JHQi9CVC4yMDIwIGV0YyAqLwo+ICsJdTMyIG91dHB1
dF9jb2xvcnNwYWNlOwoKV2h5IGFyZSB3ZSBkdXBsaWNhdGluZyB0aGlzPyBJdCdzIGFscmVhZHkg
aW4gdGhlIGNvbm5lY3RvciBzdGF0ZSBubz8KCj4gKwo+ICAJLyogT3V0cHV0IGRvd24gc2NhbGlu
ZyBpcyBkb25lIGluIExTUENPTiBkZXZpY2UgKi8KPiAgCWJvb2wgbHNwY29uX2Rvd25zYW1wbGlu
ZzsKPiAgCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+IGluZGV4IGEy
YTAyMTRmNzcxYS4uM2E4YWVmMWM2MDM2IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHAuYwo+IEBAIC0yMTg3LDYgKzIxODcsOCBAQCBpbnRlbF9kcF9jb21wdXRlX2Nv
bmZpZyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKPiAgCQlwaXBlX2NvbmZpZy0+aGFz
X3BjaF9lbmNvZGVyID0gdHJ1ZTsKPiAgCj4gIAlwaXBlX2NvbmZpZy0+b3V0cHV0X2Zvcm1hdCA9
IElOVEVMX09VVFBVVF9GT1JNQVRfUkdCOwo+ICsJcGlwZV9jb25maWctPm91dHB1dF9jb2xvcnNw
YWNlID0gaW50ZWxfY29ubl9zdGF0ZS0+YmFzZS5jb2xvcnNwYWNlOwo+ICsKPiAgCWlmIChsc3Bj
b24tPmFjdGl2ZSkKPiAgCQlsc3Bjb25feWNiY3I0MjBfY29uZmlnKCZpbnRlbF9jb25uZWN0b3It
PmJhc2UsIHBpcGVfY29uZmlnKTsKPiAgCWVsc2UKPiBAQCAtNDQ0OCw2ICs0NDUwLDMxIEBAIHU4
IGludGVsX2RwX2RzY19nZXRfc2xpY2VfY291bnQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwK
PiAgCXJldHVybiAwOwo+ICB9Cj4gIAo+ICtib29sCj4gK2ludGVsX2RwX25lZWRzX3ZzY19zZHAo
Y29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCj4gK3sKPiArCS8qCj4g
KwkgKiBBcyBwZXIgRFAgMS40YSBzcGVjIHNlY3Rpb24gMi4yLjQuMyBbTVNBIEZpZWxkIGZvciBJ
bmRpY2F0aW9uCj4gKwkgKiBvZiBDb2xvciBFbmNvZGluZyBGb3JtYXQgYW5kIENvbnRlbnQgQ29s
b3IgR2FtdXRdLCBpbiBvcmRlciB0bwo+ICsJICogc2VuZGluZyBZQ0JDUiA0MjAgb3IgSERSIEJU
LjIwMjAgc2lnbmFscyB3ZSBzaG91bGQgdXNlIERQIFZTQyBTRFAuCj4gKwkgKi8KPiArCWlmIChj
cnRjX3N0YXRlLT5vdXRwdXRfZm9ybWF0ID09IElOVEVMX09VVFBVVF9GT1JNQVRfWUNCQ1I0MjAp
Cj4gKwkJcmV0dXJuIHRydWU7Cj4gKwo+ICsJc3dpdGNoIChjcnRjX3N0YXRlLT5vdXRwdXRfY29s
b3JzcGFjZSkgewo+ICsJY2FzZSBEUk1fTU9ERV9DT0xPUklNRVRSWV9TWUNDXzYwMToKPiArCWNh
c2UgRFJNX01PREVfQ09MT1JJTUVUUllfT1BZQ0NfNjAxOgo+ICsJY2FzZSBEUk1fTU9ERV9DT0xP
UklNRVRSWV9CVDIwMjBfWUNDOgo+ICsJY2FzZSBEUk1fTU9ERV9DT0xPUklNRVRSWV9CVDIwMjBf
UkdCOgo+ICsJY2FzZSBEUk1fTU9ERV9DT0xPUklNRVRSWV9CVDIwMjBfQ1lDQzoKPiArCQlyZXR1
cm4gdHJ1ZTsKPiArCWRlZmF1bHQ6Cj4gKwkJYnJlYWs7Cj4gKwl9Cj4gKwo+ICsJcmV0dXJuIGZh
bHNlOwo+ICt9Cj4gKwo+ICBzdGF0aWMgdm9pZAo+ICBpbnRlbF9kcF9zZXR1cF92c2Nfc2RwKHN0
cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCj4gIAkJICAgICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlICpjcnRjX3N0YXRlLAo+IEBAIC00NTc2LDcgKzQ2MDMsNyBAQCB2b2lkIGludGVs
X2RwX3ZzY19lbmFibGUoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKPiAgCQkJIGNvbnN0IHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAo+ICAJCQkgY29uc3Qgc3RydWN0IGRy
bV9jb25uZWN0b3Jfc3RhdGUgKmNvbm5fc3RhdGUpCj4gIHsKPiAtCWlmIChjcnRjX3N0YXRlLT5v
dXRwdXRfZm9ybWF0ICE9IElOVEVMX09VVFBVVF9GT1JNQVRfWUNCQ1I0MjApCj4gKwlpZiAoIWlu
dGVsX2RwX25lZWRzX3ZzY19zZHAoY3J0Y19zdGF0ZSkpCj4gIAkJcmV0dXJuOwo+ICAKPiAgCWlu
dGVsX2RwX3NldHVwX3ZzY19zZHAoaW50ZWxfZHAsIGNydGNfc3RhdGUsIGNvbm5fc3RhdGUpOwo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmggYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmgKPiBpbmRleCBiZTEzY2IzOTVl
ZjguLjg3ODgzZDBkNTk3NyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwLmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwLmgKPiBAQCAtMTEyLDYgKzExMiw3IEBAIGJvb2wgaW50ZWxfZHBfcmVhZF9kcGNkKHN0cnVj
dCBpbnRlbF9kcCAqaW50ZWxfZHApOwo+ICBib29sIGludGVsX2RwX2dldF9jb2xvcmltZXRyeV9z
dGF0dXMoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCk7Cj4gIGludCBpbnRlbF9kcF9saW5rX3Jl
cXVpcmVkKGludCBwaXhlbF9jbG9jaywgaW50IGJwcCk7Cj4gIGludCBpbnRlbF9kcF9tYXhfZGF0
YV9yYXRlKGludCBtYXhfbGlua19jbG9jaywgaW50IG1heF9sYW5lcyk7Cj4gK2Jvb2wgaW50ZWxf
ZHBfbmVlZHNfdnNjX3NkcChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0
ZSk7Cj4gIHZvaWQgaW50ZWxfZHBfdnNjX2VuYWJsZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2Rw
LAo+ICAJCQkgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCj4gIAkJ
CSBjb25zdCBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZSAqY29ubl9zdGF0ZSk7Cj4gLS0gCj4g
Mi4yMy4wCgotLSAKVmlsbGUgU3lyasOkbMOkCkludGVsCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
