Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55B5D1B75F8
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2020 14:54:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 813F589BF1;
	Fri, 24 Apr 2020 12:54:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DA7389BF1;
 Fri, 24 Apr 2020 12:54:24 +0000 (UTC)
IronPort-SDR: rANwpcHEcbHYKgniVYWP0GQ7RldJJEvtMistFsJv23mB2QDMs6heLwhrNDQVE+KtAqsojCPDOg
 oc5NHk9ro2VA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2020 05:54:24 -0700
IronPort-SDR: 8EPH0jxU1Ne/V71ZV5CE8hxtsFbKn8IhKuWwq5VZD22XC/765Gy5UvI/OgX8EWdx40H0L/mr71
 lM1oF3EUx/Pg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,311,1583222400"; d="scan'208";a="430756324"
Received: from unknown (HELO jeevan-desktop.iind.intel.com) ([10.223.74.85])
 by orsmga005.jf.intel.com with ESMTP; 24 Apr 2020 05:54:17 -0700
From: Jeevan B <jeevan.b@intel.com>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Fri, 24 Apr 2020 18:20:51 +0530
Message-Id: <1587732655-17544-1-git-send-email-jeevan.b@intel.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/5] drm: report dp downstream port type as a
 subconnector property
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: jani.nikula@intel.com, Jeevan B <jeevan.b@intel.com>,
 Oleg Vasilev <oleg.vasilev@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogT2xlZyBWYXNpbGV2IDxvbGVnLnZhc2lsZXZAaW50ZWwuY29tPgoKQ3VycmVudGx5LCBk
b3duc3RyZWFtIHBvcnQgdHlwZSBpcyBvbmx5IHJlcG9ydGVkIGluIGRlYnVnZnMuIFRoaXMKaW5m
b3JtYXRpb24gc2hvdWxkIGJlIGNvbnNpZGVyZWQgaW1wb3J0YW50IHNpbmNlIGl0IHJlZmxlY3Rz
IHRoZSBhY3R1YWwKcGh5c2ljYWwgY29ubmVjdG9yIHR5cGUuIFNvbWUgdXNlcnNwYWNlIChlLmcu
IHdpbmRvdyBjb21wb3NpdG9ycykKbWF5IHdhbnQgdG8gc2hvdyB0aGlzIGluZm8gdG8gYSB1c2Vy
LgoKVGhlICdzdWJjb25uZWN0b3InIHByb3BlcnR5IGlzIGFscmVhZHkgdXRpbGl6ZWQgZm9yIERW
SS1JIGFuZCBUVi1vdXQgZm9yCnJlcG9ydGluZyBjb25uZWN0b3Igc3VidHlwZS4KClRoZSBpbml0
aWFsIG1vdGl2YXRpb24gZm9yIHRoaXMgZmVhdHVyZSBjYW1lIGZyb20gaTJjIHRlc3QgWzFdLgpJ
dCBpcyBzdXBwb3NlZCB0byBiZSBza2lwcGVkIG9uIFZHQSBjb25uZWN0b3JzLCBidXQgaXQgY2Fu
bm90CmRldGVjdCBWR0Egb3ZlciBEUCBhbmQgZmFpbHMgaW5zdGVhZC4KCnYyOgogLSBWaWxsZTog
dXRpbGl6ZWQgZHJtX2RwX2lzX2JyYW5jaCgpCiAtIFZpbGxlOiBpbXBsZW1lbnQgRFAgMS4wIGRv
d25zdHJlYW0gdHlwZSBpbmZvCiAtIFJlcGxhY2VkIGNyZWF0ZV9kcF9wcm9wZXJ0aWVzIHdpdGgg
YWRkX2RwX3N1YmNvbm5lY3Rvcl9wcm9wZXJ0eQogLSBBZGRlZCBkcF9zZXRfc3ViY29ubmVjdG9y
X3Byb3BlcnR5IGhlbHBlcgoKdjQ6CiAtIFZpbGxlOiBhZGQgRFAxLjAgYmVzdCBhc3N1bXB0aW9u
IGFib3V0IHN1YmNvbm5lY3RvcgogLSBWaWxsZTogYXNzdW1lIERWSSBpcyBEVkktRAogLSBWaWxs
ZTogcmV1c2UgV3JpdGViYWNrIGVudW0gdmFsdWUgZm9yIFZpcnR1YWwgc3ViY29ubmVjdG9yCiAt
IFJlbmFtZWQgI2RlZmluZXM6IEhETUkgLT4gSERNSUEsIERQIC0+IERpc3BsYXlQb3J0Cgp2NTog
cmViYXNlCgp2NjoKIC0gSmFuaSBOaWt1bGE6IHJlbmFtZWQgYSBmdW5jdGlvbiBuYW1lCiAtIEph
bmkgTmlrdWxhOiBhZGRyZXNzZWQgdGhlIGlzc3VlcyB3aXRoIGRvY3VtZW50YXRpb24KClsxXTog
aHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA0MDk3CgpDYzog
VmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IGludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKU2lnbmVkLW9mZi1ieTogSmVldmFuIEIgPGplZXZh
bi5iQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogT2xlZyBWYXNpbGV2IDxvbGVnLnZhc2lsZXZA
aW50ZWwuY29tPgpSZXZpZXdlZC1ieTogRW1pbCBWZWxpa292IDxlbWlsLnZlbGlrb3ZAY29sbGFi
b3JhLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vZHJtX2Nvbm5lY3Rvci5jIHwgNDkgKysrKysr
KysrKysrKysrKysrKysrKysrKystLQogZHJpdmVycy9ncHUvZHJtL2RybV9kcF9oZWxwZXIuYyB8
IDcxICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCiBpbmNsdWRlL2Ry
bS9kcm1fY29ubmVjdG9yLmggICAgIHwgIDMgKysKIGluY2x1ZGUvZHJtL2RybV9kcF9oZWxwZXIu
aCAgICAgfCAgOCArKysrKwogaW5jbHVkZS9kcm0vZHJtX21vZGVfY29uZmlnLmggICB8ICA2ICsr
KysKIGluY2x1ZGUvdWFwaS9kcm0vZHJtX21vZGUuaCAgICAgfCAyMSArKysrKysrLS0tLS0KIDYg
ZmlsZXMgY2hhbmdlZCwgMTQ4IGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fY29ubmVjdG9yLmMgYi9kcml2ZXJzL2dwdS9kcm0v
ZHJtX2Nvbm5lY3Rvci5jCmluZGV4IGIxMDk5ZTEuLjU4Zjc4YzYgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9kcm1fY29ubmVjdG9yLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9jb25u
ZWN0b3IuYwpAQCAtODQ0LDcgKzg0NCw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX3Byb3Bf
ZW51bV9saXN0IGRybV9kdmlfaV9zZWxlY3RfZW51bV9saXN0W10gPSB7CiBEUk1fRU5VTV9OQU1F
X0ZOKGRybV9nZXRfZHZpX2lfc2VsZWN0X25hbWUsIGRybV9kdmlfaV9zZWxlY3RfZW51bV9saXN0
KQogCiBzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9wcm9wX2VudW1fbGlzdCBkcm1fZHZpX2lfc3Vi
Y29ubmVjdG9yX2VudW1fbGlzdFtdID0gewotCXsgRFJNX01PREVfU1VCQ09OTkVDVE9SX1Vua25v
d24sICAgIlVua25vd24iICAgfSwgLyogRFZJLUkgYW5kIFRWLW91dCAqLworCXsgRFJNX01PREVf
U1VCQ09OTkVDVE9SX1Vua25vd24sICAgIlVua25vd24iICAgfSwgLyogRFZJLUksIFRWLW91dCBh
bmQgRFAgKi8KIAl7IERSTV9NT0RFX1NVQkNPTk5FQ1RPUl9EVklELCAgICAgICJEVkktRCIgICAg
IH0sIC8qIERWSS1JICAqLwogCXsgRFJNX01PREVfU1VCQ09OTkVDVE9SX0RWSUEsICAgICAgIkRW
SS1BIiAgICAgfSwgLyogRFZJLUkgICovCiB9OwpAQCAtODYxLDcgKzg2MSw3IEBAIHN0YXRpYyBj
b25zdCBzdHJ1Y3QgZHJtX3Byb3BfZW51bV9saXN0IGRybV90dl9zZWxlY3RfZW51bV9saXN0W10g
PSB7CiBEUk1fRU5VTV9OQU1FX0ZOKGRybV9nZXRfdHZfc2VsZWN0X25hbWUsIGRybV90dl9zZWxl
Y3RfZW51bV9saXN0KQogCiBzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9wcm9wX2VudW1fbGlzdCBk
cm1fdHZfc3ViY29ubmVjdG9yX2VudW1fbGlzdFtdID0gewotCXsgRFJNX01PREVfU1VCQ09OTkVD
VE9SX1Vua25vd24sICAgIlVua25vd24iICAgfSwgLyogRFZJLUkgYW5kIFRWLW91dCAqLworCXsg
RFJNX01PREVfU1VCQ09OTkVDVE9SX1Vua25vd24sICAgIlVua25vd24iICAgfSwgLyogRFZJLUks
IFRWLW91dCBhbmQgRFAgKi8KIAl7IERSTV9NT0RFX1NVQkNPTk5FQ1RPUl9Db21wb3NpdGUsICJD
b21wb3NpdGUiIH0sIC8qIFRWLW91dCAqLwogCXsgRFJNX01PREVfU1VCQ09OTkVDVE9SX1NWSURF
TywgICAgIlNWSURFTyIgICAgfSwgLyogVFYtb3V0ICovCiAJeyBEUk1fTU9ERV9TVUJDT05ORUNU
T1JfQ29tcG9uZW50LCAiQ29tcG9uZW50IiB9LCAvKiBUVi1vdXQgKi8KQEAgLTg3MCw2ICs4NzAs
MTkgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1fcHJvcF9lbnVtX2xpc3QgZHJtX3R2X3N1YmNv
bm5lY3Rvcl9lbnVtX2xpc3RbXSA9IHsKIERSTV9FTlVNX05BTUVfRk4oZHJtX2dldF90dl9zdWJj
b25uZWN0b3JfbmFtZSwKIAkJIGRybV90dl9zdWJjb25uZWN0b3JfZW51bV9saXN0KQogCitzdGF0
aWMgY29uc3Qgc3RydWN0IGRybV9wcm9wX2VudW1fbGlzdCBkcm1fZHBfc3ViY29ubmVjdG9yX2Vu
dW1fbGlzdFtdID0geworCXsgRFJNX01PREVfU1VCQ09OTkVDVE9SX1Vua25vd24sICAgICAiVW5r
bm93biIgICB9LCAvKiBEVkktSSwgVFYtb3V0IGFuZCBEUCAqLworCXsgRFJNX01PREVfU1VCQ09O
TkVDVE9SX1ZHQSwJICAgICAiVkdBIiAgICAgICB9LCAvKiBEUCAqLworCXsgRFJNX01PREVfU1VC
Q09OTkVDVE9SX0RWSUQsCSAgICAgIkRWSS1EIiAgICAgfSwgLyogRFAgKi8KKwl7IERSTV9NT0RF
X1NVQkNPTk5FQ1RPUl9IRE1JQSwJICAgICAiSERNSSIgICAgICB9LCAvKiBEUCAqLworCXsgRFJN
X01PREVfU1VCQ09OTkVDVE9SX0Rpc3BsYXlQb3J0LCAiRFAiICAgICAgICB9LCAvKiBEUCAqLwor
CXsgRFJNX01PREVfU1VCQ09OTkVDVE9SX1dpcmVsZXNzLCAgICAiV2lyZWxlc3MiICB9LCAvKiBE
UCAqLworCXsgRFJNX01PREVfU1VCQ09OTkVDVE9SX05hdGl2ZSwJICAgICAiTmF0aXZlIiAgICB9
LCAvKiBEUCAqLworfTsKKworRFJNX0VOVU1fTkFNRV9GTihkcm1fZ2V0X2RwX3N1YmNvbm5lY3Rv
cl9uYW1lLAorCQkgZHJtX2RwX3N1YmNvbm5lY3Rvcl9lbnVtX2xpc3QpCisKIHN0YXRpYyBjb25z
dCBzdHJ1Y3QgZHJtX3Byb3BfZW51bV9saXN0IGhkbWlfY29sb3JzcGFjZXNbXSA9IHsKIAkvKiBG
b3IgRGVmYXVsdCBjYXNlLCBkcml2ZXIgd2lsbCBzZXQgdGhlIGNvbG9yc3BhY2UgKi8KIAl7IERS
TV9NT0RFX0NPTE9SSU1FVFJZX0RFRkFVTFQsICJEZWZhdWx0IiB9LApAQCAtMTE4Niw2ICsxMTk5
LDE0IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX3Byb3BfZW51bV9saXN0IGRwX2NvbG9yc3Bh
Y2VzW10gPSB7CiAgKgljYW4gYWxzbyBleHBvc2UgdGhpcyBwcm9wZXJ0eSB0byBleHRlcm5hbCBv
dXRwdXRzLCBpbiB3aGljaCBjYXNlIHRoZXkKICAqCW11c3Qgc3VwcG9ydCAiTm9uZSIsIHdoaWNo
IHNob3VsZCBiZSB0aGUgZGVmYXVsdCAoc2luY2UgZXh0ZXJuYWwgc2NyZWVucwogICoJaGF2ZSBh
IGJ1aWx0LWluIHNjYWxlcikuCisgKgorICogc3ViY29ubmVjdG9yOgorICoJVGhpcyBwcm9wZXJ0
eSBpcyB1c2VkIGJ5IERWSS1JLCBUVm91dCBhbmQgRGlzcGxheVBvcnQgdG8gaW5kaWNhdGUgZGlm
ZmVyZW50CisgKgljb25uZWN0b3Igc3VidHlwZXMuIEVudW0gdmFsdWVzIG1vcmUgb3IgbGVzcyBt
YXRjaCB3aXRoIHRob3NlIGZyb20gbWFpbgorICoJY29ubmVjdG9yIHR5cGVzLgorICoJRm9yIERW
SS1JIGFuZCBUVm91dCB0aGVyZSBpcyBhbHNvIGEgbWF0Y2hpbmcgcHJvcGVydHkgInNlbGVjdCBz
dWJjb25uZWN0b3IiCisgKglhbGxvd2luZyB0byBzd2l0Y2ggYmV0d2VlbiBzaWduYWwgdHlwZXMu
CisgKglEUCBzdWJjb25uZWN0b3IgY29ycmVzcG9uZHMgdG8gYSBkb3duc3RyZWFtIHBvcnQuCiAg
Ki8KIAogaW50IGRybV9jb25uZWN0b3JfY3JlYXRlX3N0YW5kYXJkX3Byb3BlcnRpZXMoc3RydWN0
IGRybV9kZXZpY2UgKmRldikKQEAgLTEyNzUsNiArMTI5NiwzMCBAQCBpbnQgZHJtX21vZGVfY3Jl
YXRlX2R2aV9pX3Byb3BlcnRpZXMoc3RydWN0IGRybV9kZXZpY2UgKmRldikKIEVYUE9SVF9TWU1C
T0woZHJtX21vZGVfY3JlYXRlX2R2aV9pX3Byb3BlcnRpZXMpOwogCiAvKioKKyAqIGRybV9jb25u
ZWN0b3JfYXR0YWNoX2RwX3N1YmNvbm5lY3Rvcl9wcm9wZXJ0eSAtIGNyZWF0ZSBzdWJjb25uZWN0
b3IgcHJvcGVydHkgZm9yIERQCisgKiBAY29ubmVjdG9yOiBkcm1fY29ubmVjdG9yIHRvIGF0dGFj
aCBwcm9wZXJ0eQorICoKKyAqIENhbGxlZCBieSBhIGRyaXZlciB3aGVuIERQIGNvbm5lY3RvciBp
cyBjcmVhdGVkLgorICovCit2b2lkIGRybV9jb25uZWN0b3JfYXR0YWNoX2RwX3N1YmNvbm5lY3Rv
cl9wcm9wZXJ0eShzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yKQoreworCXN0cnVjdCBk
cm1fbW9kZV9jb25maWcgKm1vZGVfY29uZmlnID0gJmNvbm5lY3Rvci0+ZGV2LT5tb2RlX2NvbmZp
ZzsKKworCWlmICghbW9kZV9jb25maWctPmRwX3N1YmNvbm5lY3Rvcl9wcm9wZXJ0eSkKKwkJbW9k
ZV9jb25maWctPmRwX3N1YmNvbm5lY3Rvcl9wcm9wZXJ0eSA9CisJCQlkcm1fcHJvcGVydHlfY3Jl
YXRlX2VudW0oY29ubmVjdG9yLT5kZXYsCisJCQkJRFJNX01PREVfUFJPUF9JTU1VVEFCTEUsCisJ
CQkJInN1YmNvbm5lY3RvciIsCisJCQkJZHJtX2RwX3N1YmNvbm5lY3Rvcl9lbnVtX2xpc3QsCisJ
CQkJQVJSQVlfU0laRShkcm1fZHBfc3ViY29ubmVjdG9yX2VudW1fbGlzdCkpOworCisJZHJtX29i
amVjdF9hdHRhY2hfcHJvcGVydHkoJmNvbm5lY3Rvci0+YmFzZSwKKwkJCQkgICBtb2RlX2NvbmZp
Zy0+ZHBfc3ViY29ubmVjdG9yX3Byb3BlcnR5LAorCQkJCSAgIERSTV9NT0RFX1NVQkNPTk5FQ1RP
Ul9Vbmtub3duKTsKK30KK0VYUE9SVF9TWU1CT0woZHJtX2Nvbm5lY3Rvcl9hdHRhY2hfZHBfc3Vi
Y29ubmVjdG9yX3Byb3BlcnR5KTsKKworLyoqCiAgKiBET0M6IEhETUkgY29ubmVjdG9yIHByb3Bl
cnRpZXMKICAqCiAgKiBjb250ZW50IHR5cGUgKEhETUkgc3BlY2lmaWMpOgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2RybV9kcF9oZWxwZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZHBf
aGVscGVyLmMKaW5kZXggNjEyYTU5ZS4uZjM0MzM5ZWUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9kcm1fZHBfaGVscGVyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9kcF9oZWxwZXIu
YwpAQCAtNTk0LDYgKzU5NCw3NyBAQCB2b2lkIGRybV9kcF9kb3duc3RyZWFtX2RlYnVnKHN0cnVj
dCBzZXFfZmlsZSAqbSwKIH0KIEVYUE9SVF9TWU1CT0woZHJtX2RwX2Rvd25zdHJlYW1fZGVidWcp
OwogCisvKioKKyAqIGRybV9kcF9zdWJjb25uZWN0b3JfdHlwZSgpIC0gZ2V0IERQIGJyYW5jaCBk
ZXZpY2UgdHlwZQorICoKKyAqLworZW51bSBkcm1fbW9kZV9zdWJjb25uZWN0b3IKK2RybV9kcF9z
dWJjb25uZWN0b3JfdHlwZShjb25zdCB1OCBkcGNkW0RQX1JFQ0VJVkVSX0NBUF9TSVpFXSwKKwkJ
CSBjb25zdCB1OCBwb3J0X2NhcFs0XSkKK3sKKwlpbnQgdHlwZTsKKwlpZiAoIWRybV9kcF9pc19i
cmFuY2goZHBjZCkpCisJCXJldHVybiBEUk1fTU9ERV9TVUJDT05ORUNUT1JfTmF0aXZlOworCS8q
IERQIDEuMCBhcHByb2FjaCAqLworCWlmIChkcGNkW0RQX0RQQ0RfUkVWXSA9PSBEUF9EUENEX1JF
Vl8xMCkgeworCQl0eXBlID0gZHBjZFtEUF9ET1dOU1RSRUFNUE9SVF9QUkVTRU5UXSAmCisJCSAg
ICAgICBEUF9EV05fU1RSTV9QT1JUX1RZUEVfTUFTSzsKKworCQlzd2l0Y2ggKHR5cGUpIHsKKwkJ
Y2FzZSBEUF9EV05fU1RSTV9QT1JUX1RZUEVfVE1EUzoKKwkJCS8qIENhbiBiZSBIRE1JIG9yIERW
SS1ELCBEVkktRCBpcyBhIHNhZmVyIG9wdGlvbiAqLworCQkJcmV0dXJuIERSTV9NT0RFX1NVQkNP
Tk5FQ1RPUl9EVklEOworCQljYXNlIERQX0RXTl9TVFJNX1BPUlRfVFlQRV9BTkFMT0c6CisJCQkv
KiBDYW4gYmUgVkdBIG9yIERWSS1BLCBWR0EgaXMgbW9yZSBwb3B1bGFyICovCisJCQlyZXR1cm4g
RFJNX01PREVfU1VCQ09OTkVDVE9SX1ZHQTsKKwkJY2FzZSBEUF9EV05fU1RSTV9QT1JUX1RZUEVf
RFA6CisJCQlyZXR1cm4gRFJNX01PREVfU1VCQ09OTkVDVE9SX0Rpc3BsYXlQb3J0OworCQljYXNl
IERQX0RXTl9TVFJNX1BPUlRfVFlQRV9PVEhFUjoKKwkJZGVmYXVsdDoKKwkJCXJldHVybiBEUk1f
TU9ERV9TVUJDT05ORUNUT1JfVW5rbm93bjsKKwkJfQorCX0KKwl0eXBlID0gcG9ydF9jYXBbMF0g
JiBEUF9EU19QT1JUX1RZUEVfTUFTSzsKKworCXN3aXRjaCAodHlwZSkgeworCWNhc2UgRFBfRFNf
UE9SVF9UWVBFX0RQOgorCWNhc2UgRFBfRFNfUE9SVF9UWVBFX0RQX0RVQUxNT0RFOgorCQlyZXR1
cm4gRFJNX01PREVfU1VCQ09OTkVDVE9SX0Rpc3BsYXlQb3J0OworCWNhc2UgRFBfRFNfUE9SVF9U
WVBFX1ZHQToKKwkJcmV0dXJuIERSTV9NT0RFX1NVQkNPTk5FQ1RPUl9WR0E7CisJY2FzZSBEUF9E
U19QT1JUX1RZUEVfRFZJOgorCQlyZXR1cm4gRFJNX01PREVfU1VCQ09OTkVDVE9SX0RWSUQ7CisJ
Y2FzZSBEUF9EU19QT1JUX1RZUEVfSERNSToKKwkJcmV0dXJuIERSTV9NT0RFX1NVQkNPTk5FQ1RP
Ul9IRE1JQTsKKwljYXNlIERQX0RTX1BPUlRfVFlQRV9XSVJFTEVTUzoKKwkJcmV0dXJuIERSTV9N
T0RFX1NVQkNPTk5FQ1RPUl9XaXJlbGVzczsKKwljYXNlIERQX0RTX1BPUlRfVFlQRV9OT05fRURJ
RDoKKwlkZWZhdWx0OgorCQlyZXR1cm4gRFJNX01PREVfU1VCQ09OTkVDVE9SX1Vua25vd247CisJ
fQorfQorRVhQT1JUX1NZTUJPTChkcm1fZHBfc3ViY29ubmVjdG9yX3R5cGUpOworCisvKioKKyAq
IGRybV9tb2RlX3NldF9kcF9zdWJjb25uZWN0b3JfcHJvcGVydHkgLSBzZXQgc3ViY29ubmVjdG9y
IGZvciBEUCBjb25uZWN0b3IKKyAqCisgKiBDYWxsZWQgYnkgYSBkcml2ZXIgb24gZXZlcnkgZGV0
ZWN0IGV2ZW50LgorICovCit2b2lkIGRybV9kcF9zZXRfc3ViY29ubmVjdG9yX3Byb3BlcnR5KHN0
cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IsCisJCQkJICAgICAgZW51bSBkcm1fY29ubmVj
dG9yX3N0YXR1cyBzdGF0dXMsCisJCQkJICAgICAgY29uc3QgdTggKmRwY2QsCisJCQkJICAgICAg
Y29uc3QgdTggcG9ydF9jYXBbNF0pCit7CisJZW51bSBkcm1fbW9kZV9zdWJjb25uZWN0b3Igc3Vi
Y29ubmVjdG9yID0gRFJNX01PREVfU1VCQ09OTkVDVE9SX1Vua25vd247CisKKwlpZiAoc3RhdHVz
ID09IGNvbm5lY3Rvcl9zdGF0dXNfY29ubmVjdGVkKQorCQlzdWJjb25uZWN0b3IgPSBkcm1fZHBf
c3ViY29ubmVjdG9yX3R5cGUoZHBjZCwgcG9ydF9jYXApOworCWRybV9vYmplY3RfcHJvcGVydHlf
c2V0X3ZhbHVlKCZjb25uZWN0b3ItPmJhc2UsCisJCQljb25uZWN0b3ItPmRldi0+bW9kZV9jb25m
aWcuZHBfc3ViY29ubmVjdG9yX3Byb3BlcnR5LAorCQkJc3ViY29ubmVjdG9yKTsKK30KK0VYUE9S
VF9TWU1CT0woZHJtX2RwX3NldF9zdWJjb25uZWN0b3JfcHJvcGVydHkpOworCiAvKgogICogSTJD
LW92ZXItQVVYIGltcGxlbWVudGF0aW9uCiAgKi8KZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2Ry
bV9jb25uZWN0b3IuaCBiL2luY2x1ZGUvZHJtL2RybV9jb25uZWN0b3IuaAppbmRleCBmZDU0M2Qx
Li5kNGQzYmVkIDEwMDY0NAotLS0gYS9pbmNsdWRlL2RybS9kcm1fY29ubmVjdG9yLmgKKysrIGIv
aW5jbHVkZS9kcm0vZHJtX2Nvbm5lY3Rvci5oCkBAIC0xNTU2LDEwICsxNTU2LDEzIEBAIGNvbnN0
IGNoYXIgKmRybV9nZXRfZHZpX2lfc3ViY29ubmVjdG9yX25hbWUoaW50IHZhbCk7CiBjb25zdCBj
aGFyICpkcm1fZ2V0X2R2aV9pX3NlbGVjdF9uYW1lKGludCB2YWwpOwogY29uc3QgY2hhciAqZHJt
X2dldF90dl9zdWJjb25uZWN0b3JfbmFtZShpbnQgdmFsKTsKIGNvbnN0IGNoYXIgKmRybV9nZXRf
dHZfc2VsZWN0X25hbWUoaW50IHZhbCk7Citjb25zdCBjaGFyICpkcm1fZ2V0X2RwX3N1YmNvbm5l
Y3Rvcl9uYW1lKGludCB2YWwpOwogY29uc3QgY2hhciAqZHJtX2dldF9jb250ZW50X3Byb3RlY3Rp
b25fbmFtZShpbnQgdmFsKTsKIGNvbnN0IGNoYXIgKmRybV9nZXRfaGRjcF9jb250ZW50X3R5cGVf
bmFtZShpbnQgdmFsKTsKIAogaW50IGRybV9tb2RlX2NyZWF0ZV9kdmlfaV9wcm9wZXJ0aWVzKHN0
cnVjdCBkcm1fZGV2aWNlICpkZXYpOwordm9pZCBkcm1fY29ubmVjdG9yX2F0dGFjaF9kcF9zdWJj
b25uZWN0b3JfcHJvcGVydHkoc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3Rvcik7CisKIGlu
dCBkcm1fbW9kZV9jcmVhdGVfdHZfbWFyZ2luX3Byb3BlcnRpZXMoc3RydWN0IGRybV9kZXZpY2Ug
KmRldik7CiBpbnQgZHJtX21vZGVfY3JlYXRlX3R2X3Byb3BlcnRpZXMoc3RydWN0IGRybV9kZXZp
Y2UgKmRldiwKIAkJCQkgIHVuc2lnbmVkIGludCBudW1fbW9kZXMsCmRpZmYgLS1naXQgYS9pbmNs
dWRlL2RybS9kcm1fZHBfaGVscGVyLmggYi9pbmNsdWRlL2RybS9kcm1fZHBfaGVscGVyLmgKaW5k
ZXggM2JlYjJhYS4uMGY1NDMyYyAxMDA2NDQKLS0tIGEvaW5jbHVkZS9kcm0vZHJtX2RwX2hlbHBl
ci5oCisrKyBiL2luY2x1ZGUvZHJtL2RybV9kcF9oZWxwZXIuaApAQCAtMjYsNiArMjYsNyBAQAog
I2luY2x1ZGUgPGxpbnV4L2RlbGF5Lmg+CiAjaW5jbHVkZSA8bGludXgvaTJjLmg+CiAjaW5jbHVk
ZSA8bGludXgvdHlwZXMuaD4KKyNpbmNsdWRlIDxkcm0vZHJtX2Nvbm5lY3Rvci5oPgogCiAvKgog
ICogVW5sZXNzIG90aGVyd2lzZSBub3RlZCwgYWxsIHZhbHVlcyBhcmUgZnJvbSB0aGUgRFAgMS4x
YSBzcGVjLiAgTm90ZSB0aGF0CkBAIC0xNjA4LDYgKzE2MDksMTMgQEAgaW50IGRybV9kcF9kb3du
c3RyZWFtX21heF9icGMoY29uc3QgdTggZHBjZFtEUF9SRUNFSVZFUl9DQVBfU0laRV0sCiBpbnQg
ZHJtX2RwX2Rvd25zdHJlYW1faWQoc3RydWN0IGRybV9kcF9hdXggKmF1eCwgY2hhciBpZFs2XSk7
CiB2b2lkIGRybV9kcF9kb3duc3RyZWFtX2RlYnVnKHN0cnVjdCBzZXFfZmlsZSAqbSwgY29uc3Qg
dTggZHBjZFtEUF9SRUNFSVZFUl9DQVBfU0laRV0sCiAJCQkgICAgIGNvbnN0IHU4IHBvcnRfY2Fw
WzRdLCBzdHJ1Y3QgZHJtX2RwX2F1eCAqYXV4KTsKK2VudW0gZHJtX21vZGVfc3ViY29ubmVjdG9y
Citkcm1fZHBfc3ViY29ubmVjdG9yX3R5cGUoY29uc3QgdTggZHBjZFtEUF9SRUNFSVZFUl9DQVBf
U0laRV0sCisJCQkgY29uc3QgdTggcG9ydF9jYXBbNF0pOwordm9pZCBkcm1fZHBfc2V0X3N1YmNv
bm5lY3Rvcl9wcm9wZXJ0eShzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yLAorCQkJCSAg
ICAgIGVudW0gZHJtX2Nvbm5lY3Rvcl9zdGF0dXMgc3RhdHVzLAorCQkJCSAgICAgIGNvbnN0IHU4
ICpkcGNkLAorCQkJCSAgICAgIGNvbnN0IHU4IHBvcnRfY2FwWzRdKTsKIAogdm9pZCBkcm1fZHBf
cmVtb3RlX2F1eF9pbml0KHN0cnVjdCBkcm1fZHBfYXV4ICphdXgpOwogdm9pZCBkcm1fZHBfYXV4
X2luaXQoc3RydWN0IGRybV9kcF9hdXggKmF1eCk7CmRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9k
cm1fbW9kZV9jb25maWcuaCBiL2luY2x1ZGUvZHJtL2RybV9tb2RlX2NvbmZpZy5oCmluZGV4IDZj
M2VmNDkuLjA4NWZiMDAgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvZHJtL2RybV9tb2RlX2NvbmZpZy5o
CisrKyBiL2luY2x1ZGUvZHJtL2RybV9tb2RlX2NvbmZpZy5oCkBAIC02ODEsNiArNjgxLDEyIEBA
IHN0cnVjdCBkcm1fbW9kZV9jb25maWcgewogCXN0cnVjdCBkcm1fcHJvcGVydHkgKmR2aV9pX3Nl
bGVjdF9zdWJjb25uZWN0b3JfcHJvcGVydHk7CiAKIAkvKioKKwkgKiBAZHBfc3ViY29ubmVjdG9y
X3Byb3BlcnR5OiBPcHRpb25hbCBEUCBwcm9wZXJ0eSB0byBkaWZmZXJlbnRpYXRlCisJICogYmV0
d2VlbiBkaWZmZXJlbnQgRFAgZG93bnN0cmVhbSBwb3J0IHR5cGVzLgorCSAqLworCXN0cnVjdCBk
cm1fcHJvcGVydHkgKmRwX3N1YmNvbm5lY3Rvcl9wcm9wZXJ0eTsKKworCS8qKgogCSAqIEB0dl9z
dWJjb25uZWN0b3JfcHJvcGVydHk6IE9wdGlvbmFsIFRWIHByb3BlcnR5IHRvIGRpZmZlcmVudGlh
dGUKIAkgKiBiZXR3ZWVuIGRpZmZlcmVudCBUViBjb25uZWN0b3IgdHlwZXMuCiAJICovCmRpZmYg
LS1naXQgYS9pbmNsdWRlL3VhcGkvZHJtL2RybV9tb2RlLmggYi9pbmNsdWRlL3VhcGkvZHJtL2Ry
bV9tb2RlLmgKaW5kZXggNzM1YzhjZi4uMzM1OGM2YiAxMDA2NDQKLS0tIGEvaW5jbHVkZS91YXBp
L2RybS9kcm1fbW9kZS5oCisrKyBiL2luY2x1ZGUvdWFwaS9kcm0vZHJtX21vZGUuaApAQCAtMzMy
LDE0ICszMzIsMTkgQEAgc3RydWN0IGRybV9tb2RlX2dldF9lbmNvZGVyIHsKIC8qIFRoaXMgaXMg
Zm9yIGNvbm5lY3RvcnMgd2l0aCBtdWx0aXBsZSBzaWduYWwgdHlwZXMuICovCiAvKiBUcnkgdG8g
bWF0Y2ggRFJNX01PREVfQ09OTkVDVE9SX1ggYXMgY2xvc2VseSBhcyBwb3NzaWJsZS4gKi8KIGVu
dW0gZHJtX21vZGVfc3ViY29ubmVjdG9yIHsKLQlEUk1fTU9ERV9TVUJDT05ORUNUT1JfQXV0b21h
dGljID0gMCwKLQlEUk1fTU9ERV9TVUJDT05ORUNUT1JfVW5rbm93biA9IDAsCi0JRFJNX01PREVf
U1VCQ09OTkVDVE9SX0RWSUQgPSAzLAotCURSTV9NT0RFX1NVQkNPTk5FQ1RPUl9EVklBID0gNCwK
LQlEUk1fTU9ERV9TVUJDT05ORUNUT1JfQ29tcG9zaXRlID0gNSwKLQlEUk1fTU9ERV9TVUJDT05O
RUNUT1JfU1ZJREVPID0gNiwKLQlEUk1fTU9ERV9TVUJDT05ORUNUT1JfQ29tcG9uZW50ID0gOCwK
LQlEUk1fTU9ERV9TVUJDT05ORUNUT1JfU0NBUlQgPSA5LAorCURSTV9NT0RFX1NVQkNPTk5FQ1RP
Ul9BdXRvbWF0aWMgICA9IDAsICAvKiBEVkktSSwgVFYgICAgICovCisJRFJNX01PREVfU1VCQ09O
TkVDVE9SX1Vua25vd24gICAgID0gMCwgIC8qIERWSS1JLCBUViwgRFAgKi8KKwlEUk1fTU9ERV9T
VUJDT05ORUNUT1JfVkdBCSAgPSAxLCAgLyogICAgICAgICAgICBEUCAqLworCURSTV9NT0RFX1NV
QkNPTk5FQ1RPUl9EVklECSAgPSAzLCAgLyogRFZJLUkgICAgICBEUCAqLworCURSTV9NT0RFX1NV
QkNPTk5FQ1RPUl9EVklBCSAgPSA0LCAgLyogRFZJLUkgICAgICAgICAqLworCURSTV9NT0RFX1NV
QkNPTk5FQ1RPUl9Db21wb3NpdGUgICA9IDUsICAvKiAgICAgICAgVFYgICAgICovCisJRFJNX01P
REVfU1VCQ09OTkVDVE9SX1NWSURFTwkgID0gNiwgIC8qICAgICAgICBUViAgICAgKi8KKwlEUk1f
TU9ERV9TVUJDT05ORUNUT1JfQ29tcG9uZW50ICAgPSA4LCAgLyogICAgICAgIFRWICAgICAqLwor
CURSTV9NT0RFX1NVQkNPTk5FQ1RPUl9TQ0FSVAkgID0gOSwgIC8qICAgICAgICBUViAgICAgKi8K
KwlEUk1fTU9ERV9TVUJDT05ORUNUT1JfRGlzcGxheVBvcnQgPSAxMCwgLyogICAgICAgICAgICBE
UCAqLworCURSTV9NT0RFX1NVQkNPTk5FQ1RPUl9IRE1JQSAgICAgICA9IDExLCAvKiAgICAgICAg
ICAgIERQICovCisJRFJNX01PREVfU1VCQ09OTkVDVE9SX05hdGl2ZSAgICAgID0gMTUsIC8qICAg
ICAgICAgICAgRFAgKi8KKwlEUk1fTU9ERV9TVUJDT05ORUNUT1JfV2lyZWxlc3MgICAgPSAxOCwg
LyogICAgICAgICAgICBEUCAqLwogfTsKIAogI2RlZmluZSBEUk1fTU9ERV9DT05ORUNUT1JfVW5r
bm93bgkwCi0tIAoyLjcuNAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cg==
