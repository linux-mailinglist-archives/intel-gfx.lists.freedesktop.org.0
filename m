Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F2E0108DB8
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Nov 2019 13:18:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B61736E13A;
	Mon, 25 Nov 2019 12:18:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A98136E13A
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Nov 2019 12:18:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Nov 2019 04:18:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,241,1571727600"; d="scan'208";a="233379208"
Received: from unknown (HELO localhost.localdomain) ([10.223.165.29])
 by fmsmga004.fm.intel.com with ESMTP; 25 Nov 2019 04:18:16 -0800
From: Ankit Navik <ankit.p.navik@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 25 Nov 2019 17:47:08 +0530
Message-Id: <1574684229-26600-3-git-send-email-ankit.p.navik@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1574684229-26600-1-git-send-email-ankit.p.navik@intel.com>
References: <1574684229-26600-1-git-send-email-ankit.p.navik@intel.com>
Subject: [Intel-gfx] [PATCH v6 2/3] drm/i915: set optimum eu/slice/sub-slice
 configuration based on load type
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
Cc: ankit.p.navik@intel.com, vipin.anand@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBwYXRjaCB3aWxsIHNlbGVjdCBvcHRpbXVtIGV1L3NsaWNlL3N1Yi1zbGljZSBjb25maWd1
cmF0aW9uIGJhc2VkIG9uCnR5cGUgb2YgbG9hZCAobG93LCBtZWRpdW0sIGhpZ2gpIGFzIGlucHV0
LgpCYXNlZCBvbiBvdXIgcmVhZGluZ3MgYW5kIGV4cGVyaW1lbnRzIHdlIGhhdmUgcHJlZGVmaW5l
ZCBzZXQgb2Ygb3B0aW11bQpjb25maWd1cmF0aW9uIGZvciBlYWNoIHBsYXRmb3JtKENIVCwgS0JM
KS4KaTkxNV9nZW1fY29udGV4dF9zZXRfbG9hZF90eXBlIHdpbGwgc2VsZWN0IG9wdGltdW0gY29u
ZmlndXJhdGlvbiBmcm9tCnByZS1kZWZpbmVkIG9wdGltdW0gY29uZmlndXJhdGlvbiB0YWJsZShv
cHRfY29uZmlnKS4KCkl0IGFsc28gaW50cm9kdWNlIGZsYWcgdXBkYXRlX3JlbmRlcl9jb25maWcg
d2hpY2ggY2FuIHNldCBieSBhbnkgZ292ZXJub3IuCgp2MjoKICogTW92ZSBzdGF0aWMgb3B0aW11
bV9jb25maWcgdG8gZGV2aWNlIGluaXQgdGltZS4KICogUmVuYW1lIGZ1bmN0aW9uIHRvIGFwcHJv
cHJpYXRlIG5hbWUsIGZpeCBkYXRhIHR5cGVzIGFuZCBwYXRjaCBvcmRlcmluZy4KICogUmVuYW1l
IHByZXZfbG9hZF90eXBlIHRvIHBlbmRpbmdfbG9hZF90eXBlLiAoVHZydGtvIFVyc3VsaW4pCgp2
MzoKICogQWRkIHNhZmUgZ3VhcmQgY2hlY2sgaW4gaTkxNV9nZW1fY29udGV4dF9zZXRfbG9hZF90
eXBlLgogKiBSZW5hbWUgc3RydWN0IGZyb20gb3B0aW11bV9jb25maWcgdG8gaTkxNV9zc2V1X29w
dGltdW1fY29uZmlnIHRvCiAgIGF2b2lkIG5hbWVzcGFjZSBjbGFzaGVzLgogKiBSZWR1Y2VzIG1l
bWNweSBmb3Igc3BhY2UgZWZmaWNpZW50LgogKiBSZWJhc2UuCiAqIEltcHJvdmVkIGNvbW1pdCBt
ZXNzYWdlLiAoVHZydGtvIFVyc3VsaW4pCgp2NDoKICogTW92ZSBvcHRpbXVtIGNvbmZpZyB0YWJs
ZSB0byBmaWxlIHNjb3BlLiAoVHZydGtvIFVyc3VsaW4pCgp2NToKICogQWRkcyBvcHRpbWFsIHRh
YmxlIG9mIHNsaWNlL3N1Yi1zbGljZS9FVSBmb3IgR2VuIDkgR1QxLgogKiBSZWJhc2UuCgp2NjoK
ICogUmViYXNlLgoKQ2M6IFZpcGluIEFuYW5kIDx2aXBpbi5hbmFuZEBpbnRlbC5jb20+ClNpZ25l
ZC1vZmYtYnk6IEFua2l0IE5hdmlrIDxhbmtpdC5wLm5hdmlrQGludGVsLmNvbT4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jICAgICAgIHwgMTkgKysrKysr
KysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmggICAgICAgfCAg
MiArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dF90eXBlcy5oIHwg
MzIgKysrKysrKysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgICAg
ICAgICAgICAgICB8IDQyICsrKysrKysrKysrKysrKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZHJ2LmggICAgICAgICAgICAgICAgICAgfCAgNSArKwogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfZGV2aWNlX2luZm8uYyAgICAgICAgICB8IDU4ICsrKysrKysrKysrKysrKysrKysrKyst
CiA2IGZpbGVzIGNoYW5nZWQsIDE1NCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jCmluZGV4IGVmMzM5ODUu
LjVkNmNmMGEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9j
b250ZXh0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQu
YwpAQCAtNzEyLDEwICs3MTIsMjkgQEAgaTkxNV9nZW1fY3JlYXRlX2NvbnRleHQoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmk5MTUsIHVuc2lnbmVkIGludCBmbGFncykKIAogCXRyYWNlX2k5MTVf
Y29udGV4dF9jcmVhdGUoY3R4KTsKIAlhdG9taWNfc2V0KCZjdHgtPnJlcV9jbnQsIDApOworCWN0
eC0+c2xpY2VfY250ID0gaHdlaWdodDgoUlVOVElNRV9JTkZPKGk5MTUpLT5zc2V1LnNsaWNlX21h
c2spOworCWN0eC0+c3Vic2xpY2VfY250ID0gaHdlaWdodDgoCisJCQlSVU5USU1FX0lORk8oaTkx
NSktPnNzZXUuc3Vic2xpY2VfbWFza1swXSk7CisJY3R4LT5ldV9jbnQgPSBSVU5USU1FX0lORk8o
aTkxNSktPnNzZXUuZXVfcGVyX3N1YnNsaWNlOwogCiAJcmV0dXJuIGN0eDsKIH0KIAordm9pZCBp
OTE1X2dlbV9jb250ZXh0X3NldF9sb2FkX3R5cGUoc3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgKmN0
eCwKKwkJCQkJZW51bSBnZW1fbG9hZF90eXBlIHR5cGUpCit7CisJc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2ID0gY3R4LT5pOTE1OworCisJaWYgKEdFTV9XQVJOX09OKHR5cGUgPiBM
T0FEX1RZUEVfTEFTVCkpCisJCXJldHVybjsKKworCS8qIENhbGwgb3B0X2NvbmZpZyB0byBnZXQg
Y29ycmVjdCBjb25maWd1cmF0aW9uIGZvciBldSxzbGljZSxzdWJzbGljZSAqLworCWN0eC0+c2xp
Y2VfY250ID0gZGV2X3ByaXYtPm9wdF9jb25maWdbdHlwZV0uc2xpY2U7CisJY3R4LT5zdWJzbGlj
ZV9jbnQgPSBkZXZfcHJpdi0+b3B0X2NvbmZpZ1t0eXBlXS5zdWJzbGljZTsKKwljdHgtPmV1X2Nu
dCA9IGRldl9wcml2LT5vcHRfY29uZmlnW3R5cGVdLmV1OworCWN0eC0+cGVuZGluZ19sb2FkX3R5
cGUgPSB0eXBlOworfQorCiBzdGF0aWMgdm9pZAogZGVzdHJveV9rZXJuZWxfY29udGV4dChzdHJ1
Y3QgaTkxNV9nZW1fY29udGV4dCAqKmN0eHApCiB7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX2NvbnRleHQuaAppbmRleCAxOGU1MGE3Li44Njc3NDI3IDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5oCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmgKQEAgLTE3Nyw2ICsxNzcsOCBAQCBp
bnQgaTkxNV9nZW1fY29udGV4dF9zZXRwYXJhbV9pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2
LCB2b2lkICpkYXRhLAogCQkJCSAgICBzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGVfcHJpdik7CiBpbnQg
aTkxNV9nZW1fY29udGV4dF9yZXNldF9zdGF0c19pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2
LCB2b2lkICpkYXRhLAogCQkJCSAgICAgICBzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGUpOwordm9pZCBp
OTE1X2dlbV9jb250ZXh0X3NldF9sb2FkX3R5cGUoc3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgKmN0
eCwKKwkJCQllbnVtIGdlbV9sb2FkX3R5cGUgdHlwZSk7CiAKIHN0cnVjdCBpOTE1X2dlbV9jb250
ZXh0ICoKIGk5MTVfZ2VtX2NvbnRleHRfY3JlYXRlX2tlcm5lbChzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqaTkxNSwgaW50IHByaW8pOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX2NvbnRleHRfdHlwZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9jb250ZXh0X3R5cGVzLmgKaW5kZXggMzkzMWMwNi4uNjg0N2Q0OSAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHRfdHlwZXMuaAorKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dF90eXBlcy5oCkBAIC00
MCw2ICs0MCwxOSBAQCBzdHJ1Y3QgaTkxNV9nZW1fZW5naW5lc19pdGVyIHsKIAljb25zdCBzdHJ1
Y3QgaTkxNV9nZW1fZW5naW5lcyAqZW5naW5lczsKIH07CiAKK2VudW0gZ2VtX2xvYWRfdHlwZSB7
CisJTE9BRF9UWVBFX0xPVywKKwlMT0FEX1RZUEVfTUVESVVNLAorCUxPQURfVFlQRV9ISUdILAor
CUxPQURfVFlQRV9MQVNUCit9OworCitzdHJ1Y3QgaTkxNV9zc2V1X29wdGltdW1fY29uZmlnIHsK
Kwl1OCBzbGljZTsKKwl1OCBzdWJzbGljZTsKKwl1OCBldTsKK307CisKIC8qKgogICogc3RydWN0
IGk5MTVfZ2VtX2NvbnRleHQgLSBjbGllbnQgc3RhdGUKICAqCkBAIC0xNzMsNiArMTg2LDI1IEBA
IHN0cnVjdCBpOTE1X2dlbV9jb250ZXh0IHsKIAkgKi8KIAlhdG9taWNfdCByZXFfY250OwogCisJ
LyoqIHNsaWNlX2NudDogdXNlZCB0byBzZXQgdGhlICMgb2Ygc2xpY2VzIHRvIGJlIGVuYWJsZWQu
ICovCisJdTggc2xpY2VfY250OworCisJLyoqIHN1YnNsaWNlX2NudDogdXNlZCB0byBzZXQgdGhl
ICMgb2Ygc3Vic2xpY2VzIHRvIGJlIGVuYWJsZWQuICovCisJdTggc3Vic2xpY2VfY250OworCisJ
LyoqIGV1X2NudDogdXNlZCB0byBzZXQgdGhlICMgb2YgZXUgdG8gYmUgZW5hYmxlZC4gKi8KKwl1
OCBldV9jbnQ7CisKKwkvKiogbG9hZF90eXBlOiBUaGUgZGVzaWduYXRlZCBsb2FkX3R5cGUgKGhp
Z2gvbWVkaXVtL2xvdykgZm9yIGEgZ2l2ZW4KKwkgKiBudW1iZXIgb2YgcGVuZGluZyBjb21tYW5k
cyBpbiB0aGUgY29tbWFuZCBxdWV1ZS4KKwkgKi8KKwllbnVtIGdlbV9sb2FkX3R5cGUgbG9hZF90
eXBlOworCisJLyoqIHBlbmRpbmdfbG9hZF90eXBlOiBUaGUgZWFybGllciBsb2FkIHR5cGUgdGhh
dCB0aGUgR1BVIHdhcyBjb25maWd1cmVkCisJICogZm9yIChoaWdoL21lZGl1bS9sb3cpLgorCSAq
LworCWVudW0gZ2VtX2xvYWRfdHlwZSBwZW5kaW5nX2xvYWRfdHlwZTsKKwogCS8qKiBqdW1wX3do
aXRlbGlzdDogQml0IGFycmF5IGZvciB0cmFja2luZyBjbWRzIGR1cmluZyBjbWRwYXJzaW5nCiAJ
ICogIEd1YXJkZWQgYnkgc3RydWN0X211dGV4CiAJICovCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2xyYy5jCmluZGV4IGJmMmM3YTUuLmI2MzlkMjQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2xyYy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2xyYy5jCkBAIC0yNDI5LDYgKzI0MjksMzYgQEAgc3RhdGljIHZvaWQgZXhlY2xpc3RzX2NvbnRl
eHRfdW5waW4oc3RydWN0IGludGVsX2NvbnRleHQgKmNlKQogCWludGVsX3JpbmdfcmVzZXQoY2Ut
PnJpbmcsIGNlLT5yaW5nLT50YWlsKTsKIH0KIAorc3RhdGljIHUzMgorZ2V0X2NvbnRleHRfcnBj
c19jb25maWcoc3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgKmN0eCkKK3sKKwl1MzIgcnBjcyA9IDA7
CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gY3R4LT5pOTE1OworCisJaWYg
KElOVEVMX0dFTihkZXZfcHJpdikgPCA4KQorCQlyZXR1cm4gMDsKKworCWlmIChSVU5USU1FX0lO
Rk8oZGV2X3ByaXYpLT5zc2V1Lmhhc19zbGljZV9wZykgeworCQlycGNzIHw9IEdFTjhfUlBDU19T
X0NOVF9FTkFCTEU7CisJCXJwY3MgfD0gY3R4LT5zbGljZV9jbnQgPDwgR0VOOF9SUENTX1NfQ05U
X1NISUZUOworCQlycGNzIHw9IEdFTjhfUlBDU19FTkFCTEU7CisJfQorCisJaWYgKFJVTlRJTUVf
SU5GTyhkZXZfcHJpdiktPnNzZXUuaGFzX3N1YnNsaWNlX3BnKSB7CisJCXJwY3MgfD0gR0VOOF9S
UENTX1NTX0NOVF9FTkFCTEU7CisJCXJwY3MgfD0gY3R4LT5zdWJzbGljZV9jbnQgPDwgR0VOOF9S
UENTX1NTX0NOVF9TSElGVDsKKwkJcnBjcyB8PSBHRU44X1JQQ1NfRU5BQkxFOworCX0KKworCWlm
IChSVU5USU1FX0lORk8oZGV2X3ByaXYpLT5zc2V1Lmhhc19ldV9wZykgeworCQlycGNzIHw9IGN0
eC0+ZXVfY250IDw8IEdFTjhfUlBDU19FVV9NSU5fU0hJRlQ7CisJCXJwY3MgfD0gY3R4LT5ldV9j
bnQgPDwgR0VOOF9SUENTX0VVX01BWF9TSElGVDsKKwkJcnBjcyB8PSBHRU44X1JQQ1NfRU5BQkxF
OworCX0KKworCXJldHVybiBycGNzOworfQorCiBzdGF0aWMgdm9pZAogX19leGVjbGlzdHNfdXBk
YXRlX3JlZ19zdGF0ZShjb25zdCBzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UsCiAJCQkgICAgIGNv
bnN0IHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKQEAgLTI0NDUsOCArMjQ3NSwxMyBA
QCBfX2V4ZWNsaXN0c191cGRhdGVfcmVnX3N0YXRlKGNvbnN0IHN0cnVjdCBpbnRlbF9jb250ZXh0
ICpjZSwKIAogCS8qIFJQQ1MgKi8KIAlpZiAoZW5naW5lLT5jbGFzcyA9PSBSRU5ERVJfQ0xBU1Mp
IHsKLQkJcmVnc1tDVFhfUl9QV1JfQ0xLX1NUQVRFXSA9Ci0JCQlpbnRlbF9zc2V1X21ha2VfcnBj
cyhlbmdpbmUtPmk5MTUsICZjZS0+c3NldSk7CisJCWlmKGVuZ2luZS0+aTkxNS0+cHJlZGljdGl2
ZV9sb2FkX2VuYWJsZSkgeworCQkJcmVnc1tDVFhfUl9QV1JfQ0xLX1NUQVRFXSA9CisJCQkJZ2V0
X2NvbnRleHRfcnBjc19jb25maWcoY2UtPmdlbV9jb250ZXh0KTsKKwkJfSBlbHNlIHsKKwkJCXJl
Z3NbQ1RYX1JfUFdSX0NMS19TVEFURV0gPQorCQkJCWludGVsX3NzZXVfbWFrZV9ycGNzKGVuZ2lu
ZS0+aTkxNSwgJmNlLT5zc2V1KTsKKwkJfQogCiAJCWk5MTVfb2FfaW5pdF9yZWdfc3RhdGUoY2Us
IGVuZ2luZSk7CiAJfQpAQCAtMjQ3OCw2ICsyNTEzLDkgQEAgX19leGVjbGlzdHNfY29udGV4dF9w
aW4oc3RydWN0IGludGVsX2NvbnRleHQgKmNlLAogCWNlLT5scmNfcmVnX3N0YXRlID0gdmFkZHIg
KyBMUkNfU1RBVEVfUE4gKiBQQUdFX1NJWkU7CiAJX19leGVjbGlzdHNfdXBkYXRlX3JlZ19zdGF0
ZShjZSwgZW5naW5lKTsKIAorCWlmIChjZS0+Z2VtX2NvbnRleHQtPmxvYWRfdHlwZSAhPSBjZS0+
Z2VtX2NvbnRleHQtPnBlbmRpbmdfbG9hZF90eXBlKQorCQljZS0+Z2VtX2NvbnRleHQtPmxvYWRf
dHlwZSA9IGNlLT5nZW1fY29udGV4dC0+cGVuZGluZ19sb2FkX3R5cGU7CisKIAlyZXR1cm4gMDsK
IAogdW5waW5fYWN0aXZlOgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
cnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKaW5kZXggZmRhZTVhOS4uMzA2
NGRkZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAorKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCkBAIC05OTksNiArOTk5LDExIEBAIHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlIHsKIAkvKiBwcm90ZWN0cyBwYW5lbCBwb3dlciBzZXF1ZW5jZXIg
c3RhdGUgKi8KIAlzdHJ1Y3QgbXV0ZXggcHBzX211dGV4OwogCisJLyogb3B0aW1hbCBzbGljZS9z
dWJzbGljZS9FVSBjb25maWdyYXRpb24gc3RhdGUgKi8KKwlzdHJ1Y3QgaTkxNV9zc2V1X29wdGlt
dW1fY29uZmlnICpvcHRfY29uZmlnOworCisJaW50IHByZWRpY3RpdmVfbG9hZF9lbmFibGU7CisK
IAl1bnNpZ25lZCBpbnQgZnNiX2ZyZXEsIG1lbV9mcmVxLCBpc19kZHIzOwogCXVuc2lnbmVkIGlu
dCBza2xfcHJlZmVycmVkX3Zjb19mcmVxOwogCXVuc2lnbmVkIGludCBtYXhfY2RjbGtfZnJlcTsK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jCmluZGV4IGE1YjU3MTMuLjI2
ZGVkZmUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZv
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYwpAQCAtODcz
LDYgKzg3MywzNCBAQCB2b2lkIGludGVsX2RldmljZV9pbmZvX3N1YnBsYXRmb3JtX2luaXQoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAJUlVOVElNRV9JTkZPKGk5MTUpLT5wbGF0Zm9y
bV9tYXNrW3BpXSB8PSBtYXNrOwogfQogCisvKiBzdGF0aWMgdGFibGUgb2Ygc2xpY2Uvc3Vic2xp
Y2UvRVUgZm9yIENoZXJyeXZpZXcgKi8KK3N0YXRpYyBjb25zdCBzdHJ1Y3QgaTkxNV9zc2V1X29w
dGltdW1fY29uZmlnIGNodl9jb25maWdbTE9BRF9UWVBFX0xBU1RdID0geworCXsxLCAxLCA0fSwJ
LyogTG93ICovCisJezEsIDEsIDZ9LAkvKiBNZWRpdW0gKi8KKwl7MSwgMiwgNn0JLyogSGlnaCAq
LworfTsKKworLyogc3RhdGljIHRhYmxlIG9mIHNsaWNlL3N1YnNsaWNlL0VVIGZvciBHTEsgR1Qx
ICovCitzdGF0aWMgY29uc3Qgc3RydWN0IGk5MTVfc3NldV9vcHRpbXVtX2NvbmZpZyBnbGtfZ3Qx
X2NvbmZpZ1tMT0FEX1RZUEVfTEFTVF0gPSB7CisJezEsIDIsIDJ9LAkvKiBMb3cgKi8KKwl7MSwg
MiwgM30sCS8qIE1lZGl1bSAqLworCXsxLCAyLCA2fQkvKiBIaWdoICovCit9OworCisvKiBzdGF0
aWMgdGFibGUgb2Ygc2xpY2Uvc3Vic2xpY2UvRVUgZm9yIEtCTCBHVDIgKi8KK3N0YXRpYyBjb25z
dCBzdHJ1Y3QgaTkxNV9zc2V1X29wdGltdW1fY29uZmlnIGtibF9ndDJfY29uZmlnW0xPQURfVFlQ
RV9MQVNUXSA9IHsKKwl7MSwgMywgMn0sCS8qIExvdyAqLworCXsxLCAzLCA0fSwJLyogTWVkaXVt
ICovCisJezEsIDMsIDh9CS8qIEhpZ2ggKi8KK307CisKKy8qIHN0YXRpYyB0YWJsZSBvZiBzbGlj
ZS9zdWJzbGljZS9FVSBmb3IgS0JMIEdUMyAqLworc3RhdGljIGNvbnN0IHN0cnVjdCBpOTE1X3Nz
ZXVfb3B0aW11bV9jb25maWcga2JsX2d0M19jb25maWdbTE9BRF9UWVBFX0xBU1RdID0geworCXsy
LCAzLCA0fSwJLyogTG93ICovCisJezIsIDMsIDZ9LAkvKiBNZWRpdW0gKi8KKwl7MiwgMywgOH0J
LyogSGlnaCAqLworfTsKKwogLyoqCiAgKiBpbnRlbF9kZXZpY2VfaW5mb19ydW50aW1lX2luaXQg
LSBpbml0aWFsaXplIHJ1bnRpbWUgaW5mbwogICogQGRldl9wcml2OiB0aGUgaTkxNSBkZXZpY2UK
QEAgLTg5NCw2ICs5MjIsNyBAQCB2b2lkIGludGVsX2RldmljZV9pbmZvX3J1bnRpbWVfaW5pdChz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJc3RydWN0IGludGVsX2RldmljZV9p
bmZvICppbmZvID0gbWt3cml0ZV9kZXZpY2VfaW5mbyhkZXZfcHJpdik7CiAJc3RydWN0IGludGVs
X3J1bnRpbWVfaW5mbyAqcnVudGltZSA9IFJVTlRJTUVfSU5GTyhkZXZfcHJpdik7CiAJZW51bSBw
aXBlIHBpcGU7CisJc3RydWN0IGk5MTVfc3NldV9vcHRpbXVtX2NvbmZpZyAqb3B0X2NvbmZpZyA9
IE5VTEw7CiAKIAlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMCkgewogCQlmb3JfZWFjaF9w
aXBlKGRldl9wcml2LCBwaXBlKQpAQCAtOTk5LDEyICsxMDI4LDM0IEBAIHZvaWQgaW50ZWxfZGV2
aWNlX2luZm9fcnVudGltZV9pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikK
IAkvKiBJbml0aWFsaXplIHNsaWNlL3N1YnNsaWNlL0VVIGluZm8gKi8KIAlpZiAoSVNfSEFTV0VM
TChkZXZfcHJpdikpCiAJCWhhc3dlbGxfc3NldV9pbmZvX2luaXQoZGV2X3ByaXYpOwotCWVsc2Ug
aWYgKElTX0NIRVJSWVZJRVcoZGV2X3ByaXYpKQorCWVsc2UgaWYgKElTX0NIRVJSWVZJRVcoZGV2
X3ByaXYpKSB7CiAJCWNoZXJyeXZpZXdfc3NldV9pbmZvX2luaXQoZGV2X3ByaXYpOworCQlvcHRf
Y29uZmlnID0gY2h2X2NvbmZpZzsKKwkJQlVJTERfQlVHX09OKEFSUkFZX1NJWkUoY2h2X2NvbmZp
ZykgIT0gTE9BRF9UWVBFX0xBU1QpOworCX0KIAllbHNlIGlmIChJU19CUk9BRFdFTEwoZGV2X3By
aXYpKQogCQlicm9hZHdlbGxfc3NldV9pbmZvX2luaXQoZGV2X3ByaXYpOwotCWVsc2UgaWYgKElT
X0dFTihkZXZfcHJpdiwgOSkpCisJZWxzZSBpZiAoSVNfR0VOKGRldl9wcml2LCA5KSkgewogCQln
ZW45X3NzZXVfaW5mb19pbml0KGRldl9wcml2KTsKKworCQlzd2l0Y2ggKGluZm8tPmd0KSB7CisJ
CWRlZmF1bHQ6IC8qIGZhbGwgdGhyb3VnaCAqLworCQljYXNlIDE6CisJCQlvcHRfY29uZmlnID0g
Z2xrX2d0MV9jb25maWc7CisJCQlCVUlMRF9CVUdfT04oQVJSQVlfU0laRShnbGtfZ3QxX2NvbmZp
ZykKKwkJCQkJCSE9IExPQURfVFlQRV9MQVNUKTsKKwkJY2FzZSAyOgorCQkJb3B0X2NvbmZpZyA9
IGtibF9ndDJfY29uZmlnOworCQkJQlVJTERfQlVHX09OKEFSUkFZX1NJWkUoa2JsX2d0Ml9jb25m
aWcpCisJCQkJCQkhPSBMT0FEX1RZUEVfTEFTVCk7CisJCWJyZWFrOworCQljYXNlIDM6CisJCQlv
cHRfY29uZmlnID0ga2JsX2d0M19jb25maWc7CisJCQlCVUlMRF9CVUdfT04oQVJSQVlfU0laRShr
YmxfZ3QzX2NvbmZpZykKKwkJCQkJCSE9IExPQURfVFlQRV9MQVNUKTsKKwkJYnJlYWs7CisJCX0K
Kwl9CiAJZWxzZSBpZiAoSVNfR0VOKGRldl9wcml2LCAxMCkpCiAJCWdlbjEwX3NzZXVfaW5mb19p
bml0KGRldl9wcml2KTsKIAllbHNlIGlmIChJU19HRU4oZGV2X3ByaXYsIDExKSkKQEAgLTEwMTcs
NiArMTA2OCw5IEBAIHZvaWQgaW50ZWxfZGV2aWNlX2luZm9fcnVudGltZV9pbml0KHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAkJaW5mby0+cHBndHRfdHlwZSA9IElOVEVMX1BQ
R1RUX05PTkU7CiAJfQogCisJaWYgKG9wdF9jb25maWcpCisJCWRldl9wcml2LT5vcHRfY29uZmln
ID0gb3B0X2NvbmZpZzsKKwogCS8qIEluaXRpYWxpemUgY29tbWFuZCBzdHJlYW0gdGltZXN0YW1w
IGZyZXF1ZW5jeSAqLwogCXJ1bnRpbWUtPmNzX3RpbWVzdGFtcF9mcmVxdWVuY3lfa2h6ID0gcmVh
ZF90aW1lc3RhbXBfZnJlcXVlbmN5KGRldl9wcml2KTsKIH0KLS0gCjIuNy40CgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
