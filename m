Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A80C5E0162
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 12:01:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C5E56E512;
	Tue, 22 Oct 2019 10:01:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77C636E514;
 Tue, 22 Oct 2019 10:01:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Oct 2019 03:01:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,326,1566889200"; d="scan'208";a="196388709"
Received: from sharmash-desk1.iind.intel.com ([10.99.66.206])
 by fmsmga008.fm.intel.com with ESMTP; 22 Oct 2019 03:01:16 -0700
From: Shashank Sharma <shashank.sharma@intel.com>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Tue, 22 Oct 2019 15:29:44 +0530
Message-Id: <20191022095946.29354-2-shashank.sharma@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191022095946.29354-1-shashank.sharma@intel.com>
References: <20191022095946.29354-1-shashank.sharma@intel.com>
Subject: [Intel-gfx] [PATCH 1/3] drm: Introduce scaling filter mode property
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBwYXRjaCBhZGRzIGEgc2NhbGluZyBmaWx0ZXIgbW9kZSBwb3JwZXJ0eQp0byBhbGxvdzoK
LSBBIGRyaXZlci9IVyB0byBzaG93Y2FzZSBpdCdzIHNjYWxpbmcgZmlsdGVyIGNhcGFiaWxpdGll
cy4KLSBBIHVzZXJzcGFjZSB0byBwaWNrIGEgZGVzaXJlZCBlZmZlY3Qgd2hpbGUgc2NhbGluZy4K
ClRoaXMgb3B0aW9uIHdpbGwgYmUgcGFydGljdWxhcmx5IHVzZWZ1bCBpbiB0aGUgc2NlbmFyaW9z
IHdoZXJlCkludGVnZXIgbW9kZSBzY2FsaW5nIGlzIHBvc3NpYmxlLCBhbmQgYSBVSSBjbGllbnQg
d2FudHMgdG8gcGljawpmaWx0ZXJzIGxpa2UgTmVhcmVzdC1uZWlnaGJvciBhcHBsaWVkIGZvciBu
b24tYmx1cnJ5IG91dHB1dHMuCgpUaGVyZSB3YXMgYSBSRkMgcGF0Y2ggc2VyaWVzIHB1Ymxpc2hl
ZCwgdG8gZGlzY3VzIHRoZSByZXF1ZXN0IHRvIGVuYWJsZQpJbnRlZ2VyIG1vZGUgc2NhbGluZyBi
eSBzb21lIG9mIHRoZSBnYW1pbmcgY29tbXVuaXRpZXMsIHdoaWNoIGNhbiBiZQpmb3VuZCBoZXJl
OgpodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY2MTc1LwoKU2lnbmVk
LW9mZi1ieTogU2hhc2hhbmsgU2hhcm1hIDxzaGFzaGFuay5zaGFybWFAaW50ZWwuY29tPgotLS0K
IGRyaXZlcnMvZ3B1L2RybS9kcm1fYXRvbWljX3VhcGkuYyB8ICA0ICsrKysKIGluY2x1ZGUvZHJt
L2RybV9jcnRjLmggICAgICAgICAgICB8IDI2ICsrKysrKysrKysrKysrKysrKysrKysrKysrCiBp
bmNsdWRlL2RybS9kcm1fbW9kZV9jb25maWcuaCAgICAgfCAgNiArKysrKysKIDMgZmlsZXMgY2hh
bmdlZCwgMzYgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1f
YXRvbWljX3VhcGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fYXRvbWljX3VhcGkuYwppbmRleCAw
ZDQ2NmQzYjA4MDkuLjg4MzMyOTQ1M2E4NiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2Ry
bV9hdG9taWNfdWFwaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fYXRvbWljX3VhcGkuYwpA
QCAtNDM1LDYgKzQzNSw4IEBAIHN0YXRpYyBpbnQgZHJtX2F0b21pY19jcnRjX3NldF9wcm9wZXJ0
eShzdHJ1Y3QgZHJtX2NydGMgKmNydGMsCiAJCXJldHVybiByZXQ7CiAJfSBlbHNlIGlmIChwcm9w
ZXJ0eSA9PSBjb25maWctPnByb3BfdnJyX2VuYWJsZWQpIHsKIAkJc3RhdGUtPnZycl9lbmFibGVk
ID0gdmFsOworCX0gZWxzZSBpZiAocHJvcGVydHkgPT0gY29uZmlnLT5zY2FsaW5nX2ZpbHRlcl9w
cm9wZXJ0eSkgeworCQlzdGF0ZS0+c2NhbGluZ19maWx0ZXIgPSB2YWw7CiAJfSBlbHNlIGlmIChw
cm9wZXJ0eSA9PSBjb25maWctPmRlZ2FtbWFfbHV0X3Byb3BlcnR5KSB7CiAJCXJldCA9IGRybV9h
dG9taWNfcmVwbGFjZV9wcm9wZXJ0eV9ibG9iX2Zyb21faWQoZGV2LAogCQkJCQkmc3RhdGUtPmRl
Z2FtbWFfbHV0LApAQCAtNTAzLDYgKzUwNSw4IEBAIGRybV9hdG9taWNfY3J0Y19nZXRfcHJvcGVy
dHkoc3RydWN0IGRybV9jcnRjICpjcnRjLAogCQkqdmFsID0gKHN0YXRlLT5nYW1tYV9sdXQpID8g
c3RhdGUtPmdhbW1hX2x1dC0+YmFzZS5pZCA6IDA7CiAJZWxzZSBpZiAocHJvcGVydHkgPT0gY29u
ZmlnLT5wcm9wX291dF9mZW5jZV9wdHIpCiAJCSp2YWwgPSAwOworCWVsc2UgaWYgKHByb3BlcnR5
ID09IGNvbmZpZy0+c2NhbGluZ19maWx0ZXJfcHJvcGVydHkpCisJCSp2YWwgPSBzdGF0ZS0+c2Nh
bGluZ19maWx0ZXI7CiAJZWxzZSBpZiAoY3J0Yy0+ZnVuY3MtPmF0b21pY19nZXRfcHJvcGVydHkp
CiAJCXJldHVybiBjcnRjLT5mdW5jcy0+YXRvbWljX2dldF9wcm9wZXJ0eShjcnRjLCBzdGF0ZSwg
cHJvcGVydHksIHZhbCk7CiAJZWxzZQpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0vZHJtX2NydGMu
aCBiL2luY2x1ZGUvZHJtL2RybV9jcnRjLmgKaW5kZXggNWU5YjE1YTBlOGM1Li45NGM1NTA5NDc0
YTggMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvZHJtL2RybV9jcnRjLmgKKysrIGIvaW5jbHVkZS9kcm0v
ZHJtX2NydGMuaApAQCAtNTgsNiArNTgsMjUgQEAgc3RydWN0IGRldmljZV9ub2RlOwogc3RydWN0
IGRtYV9mZW5jZTsKIHN0cnVjdCBlZGlkOwogCitlbnVtIGRybV9zY2FsaW5nX2ZpbHRlcnMgewor
CURSTV9TQ0FMSU5HX0ZJTFRFUl9ERUZBVUxULAorCURSTV9TQ0FMSU5HX0ZJTFRFUl9NRURJVU0s
CisJRFJNX1NDQUxJTkdfRklMVEVSX0JJTElORUFSLAorCURSTV9TQ0FMSU5HX0ZJTFRFUl9OTiwK
KwlEUk1fU0NBTElOR19GSUxURVJfTk5fSVNfT05MWSwKKwlEUk1fU0NBTElOR19GSUxURVJfRURH
RV9FTkhBTkNFLAorCURSTV9TQ0FMSU5HX0ZJTFRFUl9JTlZBTElELAorfTsKKworc3RhdGljIGNv
bnN0IHN0cnVjdCBkcm1fcHJvcF9lbnVtX2xpc3QgZHJtX3NjYWxpbmdfZmlsdGVyX2VudW1fbGlz
dFtdID0geworCXsgRFJNX1NDQUxJTkdfRklMVEVSX0RFRkFVTFQsICJEZWZhdWx0IiB9LAorCXsg
RFJNX1NDQUxJTkdfRklMVEVSX01FRElVTSwgIk1lZGl1bSIgfSwKKwl7IERSTV9TQ0FMSU5HX0ZJ
TFRFUl9CSUxJTkVBUiwgIkJpbGluZWFyIiB9LAorCXsgRFJNX1NDQUxJTkdfRklMVEVSX05OLCAi
TmVhcmVzdCBOZWlnaGJvciIgfSwKKwl7IERSTV9TQ0FMSU5HX0ZJTFRFUl9OTl9JU19PTkxZLCAi
SW50ZWdlciBNb2RlIFNjYWxpbmciIH0sCisJeyBEUk1fU0NBTElOR19GSUxURVJfSU5WQUxJRCwg
IkludmFsaWQiIH0sCit9OworCiBzdGF0aWMgaW5saW5lIGludDY0X3QgVTY0Mkk2NCh1aW50NjRf
dCB2YWwpCiB7CiAJcmV0dXJuIChpbnQ2NF90KSooKGludDY0X3QgKikmdmFsKTsKQEAgLTI4Myw2
ICszMDIsMTMgQEAgc3RydWN0IGRybV9jcnRjX3N0YXRlIHsKIAkgKi8KIAl1MzIgdGFyZ2V0X3Zi
bGFuazsKIAorCS8qKgorCSAqIEBzY2FsaW5nX2ZpbHRlcjoKKwkgKgorCSAqIFNjYWxpbmcgZmls
dGVyIG1vZGUgdG8gYmUgYXBwbGllZAorCSAqLworCXUzMiBzY2FsaW5nX2ZpbHRlcjsKKwogCS8q
KgogCSAqIEBhc3luY19mbGlwOgogCSAqCmRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9kcm1fbW9k
ZV9jb25maWcuaCBiL2luY2x1ZGUvZHJtL2RybV9tb2RlX2NvbmZpZy5oCmluZGV4IDNiY2JlMzAz
MzlmMC4uZWZkNmZkNTU3NzBmIDEwMDY0NAotLS0gYS9pbmNsdWRlL2RybS9kcm1fbW9kZV9jb25m
aWcuaAorKysgYi9pbmNsdWRlL2RybS9kcm1fbW9kZV9jb25maWcuaApAQCAtOTE0LDYgKzkxNCwx
MiBAQCBzdHJ1Y3QgZHJtX21vZGVfY29uZmlnIHsKIAkgKi8KIAlzdHJ1Y3QgZHJtX3Byb3BlcnR5
ICptb2RpZmllcnNfcHJvcGVydHk7CiAKKwkvKioKKwkgKiBAc2NhbGluZ19maWx0ZXJfcHJvcGVy
dHk6IENSVEMgcHJvcGVydHkgdG8gYXBwbHkgYSBwYXJ0aWN1bGFyIGZpbHRlcgorCSAqIHdoaWxl
IHNjYWxpbmcgaW4gcGFuZWwgZml0dGVyIG1vZGUuCisJICovCisJc3RydWN0IGRybV9wcm9wZXJ0
eSAqc2NhbGluZ19maWx0ZXJfcHJvcGVydHk7CisKIAkvKiBjdXJzb3Igc2l6ZSAqLwogCXVpbnQz
Ml90IGN1cnNvcl93aWR0aCwgY3Vyc29yX2hlaWdodDsKIAotLSAKMi4xNy4xCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
