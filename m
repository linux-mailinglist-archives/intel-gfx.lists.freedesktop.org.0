Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 208625B638
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jul 2019 10:00:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64CAD89F85;
	Mon,  1 Jul 2019 08:00:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A33389F85;
 Mon,  1 Jul 2019 08:00:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Jul 2019 01:00:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,438,1557212400"; d="scan'208";a="163610473"
Received: from ovasilev-desk1.fi.intel.com ([10.237.72.57])
 by fmsmga008.fm.intel.com with ESMTP; 01 Jul 2019 01:00:47 -0700
From: Oleg Vasilev <oleg.vasilev@intel.com>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Mon,  1 Jul 2019 11:00:21 +0300
Message-Id: <20190701080022.9415-1-oleg.vasilev@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm: report dp downstream port type as a
 subconnector property
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

Q3VycmVudGx5LCBkb3duc3RyZWFtIHBvcnQgdHlwZSBpcyBvbmx5IHJlcG9ydGVkIGluIGRlYnVn
ZnMuIFRoaXMKaW5mb3JtYXRpb24gc2hvdWxkIGJlIGNvbnNpZGVyZWQgaW1wb3J0YW50IHNpbmNl
IGl0IHJlZmxlY3RzIHRoZSBhY3R1YWwKcGh5c2ljYWwgY29ubmVjdG9yIHR5cGUuIFNvbWUgdXNl
cnNwYWNlIChlLmcuIHdpbmRvdyBjb21wb3NpdG9ycykKbWF5IHdhbnQgdG8gc2hvdyB0aGlzIGlu
Zm8gdG8gYSB1c2VyLgoKVGhlICdzdWJjb25uZWN0b3InIHByb3BlcnR5IGlzIGFscmVhZHkgdXRp
bGl6ZWQgZm9yIERWSS1JIGFuZCBUVi1vdXQgZm9yCnJlcG9ydGluZyBjb25uZWN0b3Igc3VidHlw
ZS4KClRoZSBpbml0aWFsIG1vdGl2YXRpb24gZm9yIHRoaXMgZmVhdHVyZSBjYW1lIGZyb20gaTJj
IHRlc3QgWzFdLgpJdCBpcyBzdXBwb3NlZCB0byBiZSBza2lwcGVkIG9uIFZHQSBjb25uZWN0b3Jz
LCBidXQgaXQgY2Fubm90CmRldGVjdCBWR0Egb3ZlciBEUCBhbmQgZmFpbHMgaW5zdGVhZC4KClsx
XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA0MDk3ClNp
Z25lZC1vZmYtYnk6IE9sZWcgVmFzaWxldiA8b2xlZy52YXNpbGV2QGludGVsLmNvbT4KLS0tCiBk
cml2ZXJzL2dwdS9kcm0vZHJtX2Nvbm5lY3Rvci5jIHwgMzggKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKy0tCiBkcml2ZXJzL2dwdS9kcm0vZHJtX2RwX2hlbHBlci5jIHwgMzYgKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKwogaW5jbHVkZS9kcm0vZHJtX2Nvbm5lY3Rvci5oICAg
ICB8ICAyICsrCiBpbmNsdWRlL2RybS9kcm1fZHBfaGVscGVyLmggICAgIHwgIDMgKysrCiBpbmNs
dWRlL2RybS9kcm1fbW9kZV9jb25maWcuaCAgIHwgIDYgKysrKysrCiBpbmNsdWRlL3VhcGkvZHJt
L2RybV9tb2RlLmggICAgIHwgMjIgKysrKysrKysrKysrLS0tLS0tLQogNiBmaWxlcyBjaGFuZ2Vk
LCA5NyBpbnNlcnRpb25zKCspLCAxMCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vZHJtX2Nvbm5lY3Rvci5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9jb25uZWN0b3Iu
YwppbmRleCAwNjhkNGIwNWYxYmUuLjk1Y2Q1MTI1NGJlNiAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2RybV9jb25uZWN0b3IuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2Nvbm5lY3Rv
ci5jCkBAIC03OTMsNyArNzkzLDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1fcHJvcF9lbnVt
X2xpc3QgZHJtX2R2aV9pX3NlbGVjdF9lbnVtX2xpc3RbXSA9IHsKIERSTV9FTlVNX05BTUVfRk4o
ZHJtX2dldF9kdmlfaV9zZWxlY3RfbmFtZSwgZHJtX2R2aV9pX3NlbGVjdF9lbnVtX2xpc3QpCiAK
IHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX3Byb3BfZW51bV9saXN0IGRybV9kdmlfaV9zdWJjb25u
ZWN0b3JfZW51bV9saXN0W10gPSB7Ci0JeyBEUk1fTU9ERV9TVUJDT05ORUNUT1JfVW5rbm93biwg
ICAiVW5rbm93biIgICB9LCAvKiBEVkktSSBhbmQgVFYtb3V0ICovCisJeyBEUk1fTU9ERV9TVUJD
T05ORUNUT1JfVW5rbm93biwgICAiVW5rbm93biIgICB9LCAvKiBEVkktSSwgVFYtb3V0IGFuZCBE
UCAqLwogCXsgRFJNX01PREVfU1VCQ09OTkVDVE9SX0RWSUQsICAgICAgIkRWSS1EIiAgICAgfSwg
LyogRFZJLUkgICovCiAJeyBEUk1fTU9ERV9TVUJDT05ORUNUT1JfRFZJQSwgICAgICAiRFZJLUEi
ICAgICB9LCAvKiBEVkktSSAgKi8KIH07CkBAIC04MTAsNyArODEwLDcgQEAgc3RhdGljIGNvbnN0
IHN0cnVjdCBkcm1fcHJvcF9lbnVtX2xpc3QgZHJtX3R2X3NlbGVjdF9lbnVtX2xpc3RbXSA9IHsK
IERSTV9FTlVNX05BTUVfRk4oZHJtX2dldF90dl9zZWxlY3RfbmFtZSwgZHJtX3R2X3NlbGVjdF9l
bnVtX2xpc3QpCiAKIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX3Byb3BfZW51bV9saXN0IGRybV90
dl9zdWJjb25uZWN0b3JfZW51bV9saXN0W10gPSB7Ci0JeyBEUk1fTU9ERV9TVUJDT05ORUNUT1Jf
VW5rbm93biwgICAiVW5rbm93biIgICB9LCAvKiBEVkktSSBhbmQgVFYtb3V0ICovCisJeyBEUk1f
TU9ERV9TVUJDT05ORUNUT1JfVW5rbm93biwgICAiVW5rbm93biIgICB9LCAvKiBEVkktSSwgVFYt
b3V0IGFuZCBEUCAqLwogCXsgRFJNX01PREVfU1VCQ09OTkVDVE9SX0NvbXBvc2l0ZSwgIkNvbXBv
c2l0ZSIgfSwgLyogVFYtb3V0ICovCiAJeyBEUk1fTU9ERV9TVUJDT05ORUNUT1JfU1ZJREVPLCAg
ICAiU1ZJREVPIiAgICB9LCAvKiBUVi1vdXQgKi8KIAl7IERSTV9NT0RFX1NVQkNPTk5FQ1RPUl9D
b21wb25lbnQsICJDb21wb25lbnQiIH0sIC8qIFRWLW91dCAqLwpAQCAtODE5LDYgKzgxOSwxOSBA
QCBzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9wcm9wX2VudW1fbGlzdCBkcm1fdHZfc3ViY29ubmVj
dG9yX2VudW1fbGlzdFtdID0gewogRFJNX0VOVU1fTkFNRV9GTihkcm1fZ2V0X3R2X3N1YmNvbm5l
Y3Rvcl9uYW1lLAogCQkgZHJtX3R2X3N1YmNvbm5lY3Rvcl9lbnVtX2xpc3QpCiAKK3N0YXRpYyBj
b25zdCBzdHJ1Y3QgZHJtX3Byb3BfZW51bV9saXN0IGRybV9kcF9zdWJjb25uZWN0b3JfZW51bV9s
aXN0W10gPSB7CisJeyBEUk1fTU9ERV9TVUJDT05ORUNUT1JfVW5rbm93biwgICAiVW5rbm93biIg
ICB9LCAvKiBEVkktSSwgVFYtb3V0IGFuZCBEUCAqLworCXsgRFJNX01PREVfU1VCQ09OTkVDVE9S
X1ZHQSwJICAgIlZHQSIgICAgICAgfSwgLyogRFAgKi8KKwl7IERSTV9NT0RFX1NVQkNPTk5FQ1RP
Ul9EVkksCSAgICJEVkkiICAgICAgIH0sIC8qIERQICovCisJeyBEUk1fTU9ERV9TVUJDT05ORUNU
T1JfSERNSSwJICAgIkhETUkiICAgICAgfSwgLyogRFAgKi8KKwl7IERSTV9NT0RFX1NVQkNPTk5F
Q1RPUl9EUCwgICAgICAgICJEUCIgICAgICAgIH0sIC8qIERQICovCisJeyBEUk1fTU9ERV9TVUJD
T05ORUNUT1JfV2lyZWxlc3MsICAiV2lyZWxlc3MiICB9LCAvKiBEUCAqLworCXsgRFJNX01PREVf
U1VCQ09OTkVDVE9SX05hdGl2ZSwJICAgIk5hdGl2ZSIgICAgfSwgLyogRFAgKi8KK307CisKK0RS
TV9FTlVNX05BTUVfRk4oZHJtX2dldF9kcF9zdWJjb25uZWN0b3JfbmFtZSwKKwkJIGRybV9kcF9z
dWJjb25uZWN0b3JfZW51bV9saXN0KQorCiBzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9wcm9wX2Vu
dW1fbGlzdCBoZG1pX2NvbG9yc3BhY2VzW10gPSB7CiAJLyogRm9yIERlZmF1bHQgY2FzZSwgZHJp
dmVyIHdpbGwgc2V0IHRoZSBjb2xvcnNwYWNlICovCiAJeyBEUk1fTU9ERV9DT0xPUklNRVRSWV9E
RUZBVUxULCAiRGVmYXVsdCIgfSwKQEAgLTExMjgsNiArMTE0MSwyNyBAQCBpbnQgZHJtX21vZGVf
Y3JlYXRlX2R2aV9pX3Byb3BlcnRpZXMoc3RydWN0IGRybV9kZXZpY2UgKmRldikKIH0KIEVYUE9S
VF9TWU1CT0woZHJtX21vZGVfY3JlYXRlX2R2aV9pX3Byb3BlcnRpZXMpOwogCisvKioKKyAqIGRy
bV9tb2RlX2NyZWF0ZV9kcF9wcm9wZXJ0aWVzIC0gY3JlYXRlIERQIHNwZWNpZmljIGNvbm5lY3Rv
ciBwcm9wZXJ0aWVzCisgKiBAZGV2OiBEUk0gZGV2aWNlCisgKgorICogQ2FsbGVkIGJ5IGEgZHJp
dmVyIHRoZSBmaXJzdCB0aW1lIGEgRFAgY29ubmVjdG9yIGlzIG1hZGUuCisgKi8KK3ZvaWQgZHJt
X21vZGVfY3JlYXRlX2RwX3Byb3BlcnRpZXMoc3RydWN0IGRybV9kZXZpY2UgKmRldikKK3sKKwlz
dHJ1Y3QgZHJtX3Byb3BlcnR5ICpkcF9zdWJjb25uZWN0b3I7CisKKwlpZiAoZGV2LT5tb2RlX2Nv
bmZpZy5kcF9zdWJjb25uZWN0b3JfcHJvcGVydHkpCisJCXJldHVybjsKKworCWRwX3N1YmNvbm5l
Y3RvciA9IGRybV9wcm9wZXJ0eV9jcmVhdGVfZW51bShkZXYsIERSTV9NT0RFX1BST1BfSU1NVVRB
QkxFLAorCQkJCQkJICAgInN1YmNvbm5lY3RvciIsCisJCQkJCQkgICBkcm1fZHBfc3ViY29ubmVj
dG9yX2VudW1fbGlzdCwKKwkJCQkJCSAgIEFSUkFZX1NJWkUoZHJtX2RwX3N1YmNvbm5lY3Rvcl9l
bnVtX2xpc3QpKTsKKwlkZXYtPm1vZGVfY29uZmlnLmRwX3N1YmNvbm5lY3Rvcl9wcm9wZXJ0eSA9
IGRwX3N1YmNvbm5lY3RvcjsKK30KK0VYUE9SVF9TWU1CT0woZHJtX21vZGVfY3JlYXRlX2RwX3By
b3BlcnRpZXMpOworCiAvKioKICAqIERPQzogSERNSSBjb25uZWN0b3IgcHJvcGVydGllcwogICoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZHBfaGVscGVyLmMgYi9kcml2ZXJzL2dw
dS9kcm0vZHJtX2RwX2hlbHBlci5jCmluZGV4IDBiOTk0ZDA4M2E4OS4uNjNkOGYwYjg0OTJjIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2RwX2hlbHBlci5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9kcm1fZHBfaGVscGVyLmMKQEAgLTY2Miw2ICs2NjIsNDIgQEAgdm9pZCBkcm1fZHBf
ZG93bnN0cmVhbV9kZWJ1ZyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sCiB9CiBFWFBPUlRfU1lNQk9MKGRy
bV9kcF9kb3duc3RyZWFtX2RlYnVnKTsKIAorLyoqCisgKiBkcm1fZHBfZG93bnN0cmVhbV9zdWJj
b25uZWN0b3JfdHlwZSgpIC0gZ2V0IERQIGJyYW5jaCBkZXZpY2UgdHlwZQorICogQGRwY2Q6IERp
c3BsYXlQb3J0IGNvbmZpZ3VyYXRpb24gZGF0YQorICogQHBvcnRfY2FwOiBwb3J0IGNhcGFiaWxp
dGllcworICoKKyAqLworZW51bSBkcm1fbW9kZV9zdWJjb25uZWN0b3IKK2RybV9kcF9kb3duc3Ry
ZWFtX3N1YmNvbm5lY3Rvcl90eXBlKGNvbnN0IHU4IGRwY2RbRFBfUkVDRUlWRVJfQ0FQX1NJWkVd
LAorCQkJCSAgICBjb25zdCB1OCBwb3J0X2NhcFs0XSkKK3sKKwlpbnQgdHlwZSA9IHBvcnRfY2Fw
WzBdICYgRFBfRFNfUE9SVF9UWVBFX01BU0s7CisJYm9vbCBicmFuY2hfZGV2aWNlX3ByZXNlbnQg
PSBkcGNkW0RQX0RPV05TVFJFQU1QT1JUX1BSRVNFTlRdICYKKwkJCQkgICAgIERQX0RXTl9TVFJN
X1BPUlRfUFJFU0VOVDsKKworCWlmICghYnJhbmNoX2RldmljZV9wcmVzZW50KQorCQlyZXR1cm4g
RFJNX01PREVfU1VCQ09OTkVDVE9SX05hdGl2ZTsKKworCXN3aXRjaCAodHlwZSkgeworCWNhc2Ug
RFBfRFNfUE9SVF9UWVBFX0RQOgorCWNhc2UgRFBfRFNfUE9SVF9UWVBFX0RQX0RVQUxNT0RFOgor
CQlyZXR1cm4gRFJNX01PREVfU1VCQ09OTkVDVE9SX0RQOworCWNhc2UgRFBfRFNfUE9SVF9UWVBF
X1ZHQToKKwkJcmV0dXJuIERSTV9NT0RFX1NVQkNPTk5FQ1RPUl9WR0E7CisJY2FzZSBEUF9EU19Q
T1JUX1RZUEVfRFZJOgorCQlyZXR1cm4gRFJNX01PREVfU1VCQ09OTkVDVE9SX0RWSTsKKwljYXNl
IERQX0RTX1BPUlRfVFlQRV9IRE1JOgorCQlyZXR1cm4gRFJNX01PREVfU1VCQ09OTkVDVE9SX0hE
TUk7CisJY2FzZSBEUF9EU19QT1JUX1RZUEVfV0lSRUxFU1M6CisJCXJldHVybiBEUk1fTU9ERV9T
VUJDT05ORUNUT1JfV2lyZWxlc3M7CisJY2FzZSBEUF9EU19QT1JUX1RZUEVfTk9OX0VESUQ6CisJ
ZGVmYXVsdDoKKwkJcmV0dXJuIERSTV9NT0RFX1NVQkNPTk5FQ1RPUl9Vbmtub3duOworCX0KK30K
K0VYUE9SVF9TWU1CT0woZHJtX2RwX2Rvd25zdHJlYW1fc3ViY29ubmVjdG9yX3R5cGUpOworCiAv
KgogICogSTJDLW92ZXItQVVYIGltcGxlbWVudGF0aW9uCiAgKi8KZGlmZiAtLWdpdCBhL2luY2x1
ZGUvZHJtL2RybV9jb25uZWN0b3IuaCBiL2luY2x1ZGUvZHJtL2RybV9jb25uZWN0b3IuaAppbmRl
eCA0YzMwZDc1MTQ4N2EuLjY2ZjBiMmE1OWM5YyAxMDA2NDQKLS0tIGEvaW5jbHVkZS9kcm0vZHJt
X2Nvbm5lY3Rvci5oCisrKyBiL2luY2x1ZGUvZHJtL2RybV9jb25uZWN0b3IuaApAQCAtMTQ4Myw5
ICsxNDgzLDExIEBAIGNvbnN0IGNoYXIgKmRybV9nZXRfZHZpX2lfc3ViY29ubmVjdG9yX25hbWUo
aW50IHZhbCk7CiBjb25zdCBjaGFyICpkcm1fZ2V0X2R2aV9pX3NlbGVjdF9uYW1lKGludCB2YWwp
OwogY29uc3QgY2hhciAqZHJtX2dldF90dl9zdWJjb25uZWN0b3JfbmFtZShpbnQgdmFsKTsKIGNv
bnN0IGNoYXIgKmRybV9nZXRfdHZfc2VsZWN0X25hbWUoaW50IHZhbCk7Citjb25zdCBjaGFyICpk
cm1fZ2V0X2RwX3N1YmNvbm5lY3Rvcl9uYW1lKGludCB2YWwpOwogY29uc3QgY2hhciAqZHJtX2dl
dF9jb250ZW50X3Byb3RlY3Rpb25fbmFtZShpbnQgdmFsKTsKIAogaW50IGRybV9tb2RlX2NyZWF0
ZV9kdmlfaV9wcm9wZXJ0aWVzKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpOwordm9pZCBkcm1fbW9k
ZV9jcmVhdGVfZHBfcHJvcGVydGllcyhzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KTsKIGludCBkcm1f
bW9kZV9jcmVhdGVfdHZfbWFyZ2luX3Byb3BlcnRpZXMoc3RydWN0IGRybV9kZXZpY2UgKmRldik7
CiBpbnQgZHJtX21vZGVfY3JlYXRlX3R2X3Byb3BlcnRpZXMoc3RydWN0IGRybV9kZXZpY2UgKmRl
diwKIAkJCQkgIHVuc2lnbmVkIGludCBudW1fbW9kZXMsCmRpZmYgLS1naXQgYS9pbmNsdWRlL2Ry
bS9kcm1fZHBfaGVscGVyLmggYi9pbmNsdWRlL2RybS9kcm1fZHBfaGVscGVyLmgKaW5kZXggMzk3
ODk2YjViMjFhLi4zODc5MmMxYWZlZDggMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvZHJtL2RybV9kcF9o
ZWxwZXIuaAorKysgYi9pbmNsdWRlL2RybS9kcm1fZHBfaGVscGVyLmgKQEAgLTEzNzIsNiArMTM3
Miw5IEBAIGludCBkcm1fZHBfZG93bnN0cmVhbV9tYXhfYnBjKGNvbnN0IHU4IGRwY2RbRFBfUkVD
RUlWRVJfQ0FQX1NJWkVdLAogaW50IGRybV9kcF9kb3duc3RyZWFtX2lkKHN0cnVjdCBkcm1fZHBf
YXV4ICphdXgsIGNoYXIgaWRbNl0pOwogdm9pZCBkcm1fZHBfZG93bnN0cmVhbV9kZWJ1ZyhzdHJ1
Y3Qgc2VxX2ZpbGUgKm0sIGNvbnN0IHU4IGRwY2RbRFBfUkVDRUlWRVJfQ0FQX1NJWkVdLAogCQkJ
ICAgICBjb25zdCB1OCBwb3J0X2NhcFs0XSwgc3RydWN0IGRybV9kcF9hdXggKmF1eCk7CitlbnVt
IGRybV9tb2RlX3N1YmNvbm5lY3RvcgorZHJtX2RwX2Rvd25zdHJlYW1fc3ViY29ubmVjdG9yX3R5
cGUoY29uc3QgdTggZHBjZFtEUF9SRUNFSVZFUl9DQVBfU0laRV0sCisJCQkJICAgIGNvbnN0IHU4
IHBvcnRfY2FwWzRdKTsKIAogdm9pZCBkcm1fZHBfYXV4X2luaXQoc3RydWN0IGRybV9kcF9hdXgg
KmF1eCk7CiBpbnQgZHJtX2RwX2F1eF9yZWdpc3RlcihzdHJ1Y3QgZHJtX2RwX2F1eCAqYXV4KTsK
ZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2RybV9tb2RlX2NvbmZpZy5oIGIvaW5jbHVkZS9kcm0v
ZHJtX21vZGVfY29uZmlnLmgKaW5kZXggNzU5ZDQ2MmQwMjhiLi45NTdkOTlhMzQ4NDMgMTAwNjQ0
Ci0tLSBhL2luY2x1ZGUvZHJtL2RybV9tb2RlX2NvbmZpZy5oCisrKyBiL2luY2x1ZGUvZHJtL2Ry
bV9tb2RlX2NvbmZpZy5oCkBAIC02ODAsNiArNjgwLDEyIEBAIHN0cnVjdCBkcm1fbW9kZV9jb25m
aWcgewogCSAqLwogCXN0cnVjdCBkcm1fcHJvcGVydHkgKmR2aV9pX3NlbGVjdF9zdWJjb25uZWN0
b3JfcHJvcGVydHk7CiAKKwkvKioKKwkgKiBAZHBfc3ViY29ubmVjdG9yX3Byb3BlcnR5OiBPcHRp
b25hbCBEUCBwcm9wZXJ0eSB0byBkaWZmZXJlbnRpYXRlCisJICogYmV0d2VlbiBkaWZmZXJlbnQg
RFAgZG93bnN0cmVhbSBwb3J0IHR5cGVzLgorCSAqLworCXN0cnVjdCBkcm1fcHJvcGVydHkgKmRw
X3N1YmNvbm5lY3Rvcl9wcm9wZXJ0eTsKKwogCS8qKgogCSAqIEB0dl9zdWJjb25uZWN0b3JfcHJv
cGVydHk6IE9wdGlvbmFsIFRWIHByb3BlcnR5IHRvIGRpZmZlcmVudGlhdGUKIAkgKiBiZXR3ZWVu
IGRpZmZlcmVudCBUViBjb25uZWN0b3IgdHlwZXMuCmRpZmYgLS1naXQgYS9pbmNsdWRlL3VhcGkv
ZHJtL2RybV9tb2RlLmggYi9pbmNsdWRlL3VhcGkvZHJtL2RybV9tb2RlLmgKaW5kZXggNWFiMzMx
ZTVkYzIzLi45ODA4NDY0YmRiNjMgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvdWFwaS9kcm0vZHJtX21v
ZGUuaAorKysgYi9pbmNsdWRlL3VhcGkvZHJtL2RybV9tb2RlLmgKQEAgLTMzMiwxNCArMzMyLDIw
IEBAIHN0cnVjdCBkcm1fbW9kZV9nZXRfZW5jb2RlciB7CiAvKiBUaGlzIGlzIGZvciBjb25uZWN0
b3JzIHdpdGggbXVsdGlwbGUgc2lnbmFsIHR5cGVzLiAqLwogLyogVHJ5IHRvIG1hdGNoIERSTV9N
T0RFX0NPTk5FQ1RPUl9YIGFzIGNsb3NlbHkgYXMgcG9zc2libGUuICovCiBlbnVtIGRybV9tb2Rl
X3N1YmNvbm5lY3RvciB7Ci0JRFJNX01PREVfU1VCQ09OTkVDVE9SX0F1dG9tYXRpYyA9IDAsCi0J
RFJNX01PREVfU1VCQ09OTkVDVE9SX1Vua25vd24gPSAwLAotCURSTV9NT0RFX1NVQkNPTk5FQ1RP
Ul9EVklEID0gMywKLQlEUk1fTU9ERV9TVUJDT05ORUNUT1JfRFZJQSA9IDQsCi0JRFJNX01PREVf
U1VCQ09OTkVDVE9SX0NvbXBvc2l0ZSA9IDUsCi0JRFJNX01PREVfU1VCQ09OTkVDVE9SX1NWSURF
TyA9IDYsCi0JRFJNX01PREVfU1VCQ09OTkVDVE9SX0NvbXBvbmVudCA9IDgsCi0JRFJNX01PREVf
U1VCQ09OTkVDVE9SX1NDQVJUID0gOSwKKwlEUk1fTU9ERV9TVUJDT05ORUNUT1JfQXV0b21hdGlj
ICA9IDAsICAvKiBEVkktSSwgVFYgICAgICovCisJRFJNX01PREVfU1VCQ09OTkVDVE9SX1Vua25v
d24gICAgPSAwLCAgLyogRFZJLUksIFRWLCBEUCAqLworCURSTV9NT0RFX1NVQkNPTk5FQ1RPUl9W
R0EJID0gMSwgIC8qICAgICAgICAgICAgRFAgKi8KKwlEUk1fTU9ERV9TVUJDT05ORUNUT1JfRFZJ
CSA9IDIsICAvKiAgICAgICAgICAgIERQICovCisJRFJNX01PREVfU1VCQ09OTkVDVE9SX0RWSUQJ
ID0gMywgIC8qIERWSS1JICAgICAgICAgKi8KKwlEUk1fTU9ERV9TVUJDT05ORUNUT1JfRFZJQQkg
PSA0LCAgLyogRFZJLUkgICAgICAgICAqLworCURSTV9NT0RFX1NVQkNPTk5FQ1RPUl9Db21wb3Np
dGUgID0gNSwgIC8qICAgICAgICBUViAgICAgKi8KKwlEUk1fTU9ERV9TVUJDT05ORUNUT1JfU1ZJ
REVPCSA9IDYsICAvKiAgICAgICAgVFYgICAgICovCisJRFJNX01PREVfU1VCQ09OTkVDVE9SX0Nv
bXBvbmVudCAgPSA4LCAgLyogICAgICAgIFRWICAgICAqLworCURSTV9NT0RFX1NVQkNPTk5FQ1RP
Ul9TQ0FSVAkgPSA5LCAgLyogICAgICAgIFRWICAgICAqLworCURSTV9NT0RFX1NVQkNPTk5FQ1RP
Ul9EUAkgPSAxMCwgLyogICAgICAgICAgICBEUCAqLworCURSTV9NT0RFX1NVQkNPTk5FQ1RPUl9I
RE1JICAgICAgID0gMTEsIC8qICAgICAgICAgICAgRFAgKi8KKwlEUk1fTU9ERV9TVUJDT05ORUNU
T1JfTmF0aXZlICAgICA9IDE1LCAvKiAgICAgICAgICAgIERQICovCisJRFJNX01PREVfU1VCQ09O
TkVDVE9SX1dpcmVsZXNzICAgPSAxOSwgLyogICAgICAgICAgICBEUCAqLwogfTsKIAogI2RlZmlu
ZSBEUk1fTU9ERV9DT05ORUNUT1JfVW5rbm93bgkwCi0tIAoyLjIyLjAKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
