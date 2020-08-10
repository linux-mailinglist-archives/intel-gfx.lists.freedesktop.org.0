Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D9E92404D0
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Aug 2020 12:33:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2CEB6E408;
	Mon, 10 Aug 2020 10:33:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1C7189CDE
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Aug 2020 10:33:27 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Aug 2020 12:30:44 +0200
Message-Id: <20200810103103.303818-6-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200810103103.303818-1-maarten.lankhorst@linux.intel.com>
References: <20200810103103.303818-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 05/24] drm/i915: Add an implementation for
 i915_gem_ww_ctx locking, v2.
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

aTkxNV9nZW1fd3dfY3R4IGlzIHVzZWQgdG8gbG9jayBhbGwgZ2VtIGJvJ3MgZm9yIHBpbm5pbmcg
YW5kIG1lbW9yeQpldmljdGlvbi4gV2UgZG9uJ3QgdXNlIGl0IHlldCwgYnV0IGxldHMgc3RhcnQg
YWRkaW5nIHRoZSBkZWZpbml0aW9uCmZpcnN0LgoKVG8gdXNlIGl0LCB3ZSBoYXZlIHRvIHBhc3Mg
YSBub24tTlVMTCB3dyB0byBnZW1fb2JqZWN0X2xvY2ssIGFuZCBkb24ndAp1bmxvY2sgZGlyZWN0
bHkuIEl0IGlzIGRvbmUgaW4gaTkxNV9nZW1fd3dfY3R4X2ZpbmkuCgpDaGFuZ2VzIHNpbmNlIHYx
OgotIENoYW5nZSB3d19jdHggYW5kIG9iaiBvcmRlciBpbiBsb2NraW5nIGZ1bmN0aW9ucyAoSm9u
YXMgTGFodGluZW4pCgpTaWduZWQtb2ZmLWJ5OiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5s
YW5raG9yc3RAbGludXguaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogVGhvbWFzIEhlbGxzdHLDtm0g
PHRob21hcy5oZWxsc3Ryb21AaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jICB8ICA0ICstCiAuLi4vZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9jbGllbnRfYmx0LmMgICAgfCAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX2RtYWJ1Zi5jICAgIHwgIDQgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9kb21haW4uYyAgICB8IDEwICsrLS0KIC4uLi9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X2V4ZWNidWZmZXIuYyAgICB8ICAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fb2JqZWN0LmggICAgfCAzOCArKysrKysrKysrKy0tLQogLi4uL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fb2JqZWN0X3R5cGVzLmggIHwgIDkgKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX3BtLmMgICAgICAgIHwgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV90aWxpbmcuYyAgICB8ICAyICstCiAuLi4vZ3B1L2RybS9pOTE1L2dlbS9zZWxm
dGVzdHMvaHVnZV9wYWdlcy5jICAgfCAgMiArLQogLi4uL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1
X2dlbV9jbGllbnRfYmx0LmMgIHwgIDIgKy0KIC4uLi9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9n
ZW1fY29oZXJlbmN5LmMgICB8IDEwICsrLS0KIC4uLi9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5
MTVfZ2VtX2NvbnRleHQuYyB8ICA0ICstCiAuLi4vZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1
X2dlbV9tbWFuLmMgICAgfCAgNCArLQogLi4uL2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9n
ZW1fcGh5cy5jICAgIHwgIDIgKy0KIC4uLi9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3Rfd29ya2Fy
b3VuZHMuYyAgICB8ICAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndnQvY21kX3BhcnNlci5j
ICAgICAgICAgfCAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYyAgICAgICAg
ICAgICAgIHwgNTIgKysrKysrKysrKysrKysrKystLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9nZW0uaCAgICAgICAgICAgICAgIHwgMTEgKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvc2Vs
ZnRlc3RzL2k5MTVfZ2VtLmMgICAgIHwgNDEgKysrKysrKysrKysrKysrCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9zZWxmdGVzdHMvaTkxNV92bWEuYyAgICAgfCAgMiArLQogLi4uL2RybS9pOTE1L3Nl
bGZ0ZXN0cy9pbnRlbF9tZW1vcnlfcmVnaW9uLmMgIHwgIDIgKy0KIDIyIGZpbGVzIGNoYW5nZWQs
IDE3MCBpbnNlcnRpb25zKCspLCAzOSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IDUyMmM3NzJhMjExMS4uNWI0NDM0Mjg5
MTE3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpA
QCAtMjMxMSw3ICsyMzExLDcgQEAgaW50ZWxfcGluX2FuZF9mZW5jZV9mYl9vYmooc3RydWN0IGRy
bV9mcmFtZWJ1ZmZlciAqZmIsCiAKIHZvaWQgaW50ZWxfdW5waW5fZmJfdm1hKHN0cnVjdCBpOTE1
X3ZtYSAqdm1hLCB1bnNpZ25lZCBsb25nIGZsYWdzKQogewotCWk5MTVfZ2VtX29iamVjdF9sb2Nr
KHZtYS0+b2JqKTsKKwlpOTE1X2dlbV9vYmplY3RfbG9jayh2bWEtPm9iaiwgTlVMTCk7CiAJaWYg
KGZsYWdzICYgUExBTkVfSEFTX0ZFTkNFKQogCQlpOTE1X3ZtYV91bnBpbl9mZW5jZSh2bWEpOwog
CWk5MTVfZ2VtX29iamVjdF91bnBpbl9mcm9tX2Rpc3BsYXlfcGxhbmUodm1hKTsKQEAgLTE3MTQ5
LDcgKzE3MTQ5LDcgQEAgc3RhdGljIGludCBpbnRlbF9mcmFtZWJ1ZmZlcl9pbml0KHN0cnVjdCBp
bnRlbF9mcmFtZWJ1ZmZlciAqaW50ZWxfZmIsCiAJaWYgKCFpbnRlbF9mYi0+ZnJvbnRidWZmZXIp
CiAJCXJldHVybiAtRU5PTUVNOwogCi0JaTkxNV9nZW1fb2JqZWN0X2xvY2sob2JqKTsKKwlpOTE1
X2dlbV9vYmplY3RfbG9jayhvYmosIE5VTEwpOwogCXRpbGluZyA9IGk5MTVfZ2VtX29iamVjdF9n
ZXRfdGlsaW5nKG9iaik7CiAJc3RyaWRlID0gaTkxNV9nZW1fb2JqZWN0X2dldF9zdHJpZGUob2Jq
KTsKIAlpOTE1X2dlbV9vYmplY3RfdW5sb2NrKG9iaik7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY2xpZW50X2JsdC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX2NsaWVudF9ibHQuYwppbmRleCA5NDdjOGFhOGUxM2UuLmE4NTkwN2Yy
OWM1MyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NsaWVu
dF9ibHQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY2xpZW50X2Js
dC5jCkBAIC0yODgsNyArMjg4LDcgQEAgaW50IGk5MTVfZ2VtX3NjaGVkdWxlX2ZpbGxfcGFnZXNf
Ymx0KHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCiAJZG1hX2ZlbmNlX2luaXQoJndv
cmstPmRtYSwgJmNsZWFyX3BhZ2VzX3dvcmtfb3BzLCAmZmVuY2VfbG9jaywgMCwgMCk7CiAJaTkx
NV9zd19mZW5jZV9pbml0KCZ3b3JrLT53YWl0LCBjbGVhcl9wYWdlc193b3JrX25vdGlmeSk7CiAK
LQlpOTE1X2dlbV9vYmplY3RfbG9jayhvYmopOworCWk5MTVfZ2VtX29iamVjdF9sb2NrKG9iaiwg
TlVMTCk7CiAJZXJyID0gaTkxNV9zd19mZW5jZV9hd2FpdF9yZXNlcnZhdGlvbigmd29yay0+d2Fp
dCwKIAkJCQkJICAgICAgb2JqLT5iYXNlLnJlc3YsIE5VTEwsIHRydWUsIDAsCiAJCQkJCSAgICAg
IEk5MTVfRkVOQ0VfR0ZQKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9kbWFidWYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kbWFi
dWYuYwppbmRleCAyNjc5MzgwMTU5ZmMuLjI3ZmRkYzIyYTdjNiAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RtYWJ1Zi5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV9kbWFidWYuYwpAQCAtMTI4LDcgKzEyOCw3IEBAIHN0YXRpYyBp
bnQgaTkxNV9nZW1fYmVnaW5fY3B1X2FjY2VzcyhzdHJ1Y3QgZG1hX2J1ZiAqZG1hX2J1ZiwgZW51
bSBkbWFfZGF0YV9kaXJlCiAJaWYgKGVycikKIAkJcmV0dXJuIGVycjsKIAotCWVyciA9IGk5MTVf
Z2VtX29iamVjdF9sb2NrX2ludGVycnVwdGlibGUob2JqKTsKKwllcnIgPSBpOTE1X2dlbV9vYmpl
Y3RfbG9ja19pbnRlcnJ1cHRpYmxlKG9iaiwgTlVMTCk7CiAJaWYgKGVycikKIAkJZ290byBvdXQ7
CiAKQEAgLTE0OSw3ICsxNDksNyBAQCBzdGF0aWMgaW50IGk5MTVfZ2VtX2VuZF9jcHVfYWNjZXNz
KHN0cnVjdCBkbWFfYnVmICpkbWFfYnVmLCBlbnVtIGRtYV9kYXRhX2RpcmVjdAogCWlmIChlcnIp
CiAJCXJldHVybiBlcnI7CiAKLQllcnIgPSBpOTE1X2dlbV9vYmplY3RfbG9ja19pbnRlcnJ1cHRp
YmxlKG9iaik7CisJZXJyID0gaTkxNV9nZW1fb2JqZWN0X2xvY2tfaW50ZXJydXB0aWJsZShvYmos
IE5VTEwpOwogCWlmIChlcnIpCiAJCWdvdG8gb3V0OwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG9tYWluLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fZG9tYWluLmMKaW5kZXggN2Y3NmZjNjhmNDk4Li5jMGFjZmM5N2ZhZTMgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kb21haW4uYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG9tYWluLmMKQEAgLTMyLDcgKzMy
LDcgQEAgdm9pZCBpOTE1X2dlbV9vYmplY3RfZmx1c2hfaWZfZGlzcGxheShzdHJ1Y3QgZHJtX2k5
MTVfZ2VtX29iamVjdCAqb2JqKQogCWlmICghaTkxNV9nZW1fb2JqZWN0X2lzX2ZyYW1lYnVmZmVy
KG9iaikpCiAJCXJldHVybjsKIAotCWk5MTVfZ2VtX29iamVjdF9sb2NrKG9iaik7CisJaTkxNV9n
ZW1fb2JqZWN0X2xvY2sob2JqLCBOVUxMKTsKIAlfX2k5MTVfZ2VtX29iamVjdF9mbHVzaF9mb3Jf
ZGlzcGxheShvYmopOwogCWk5MTVfZ2VtX29iamVjdF91bmxvY2sob2JqKTsKIH0KQEAgLTE5Nyw3
ICsxOTcsNyBAQCBpbnQgaTkxNV9nZW1fb2JqZWN0X3NldF9jYWNoZV9sZXZlbChzdHJ1Y3QgZHJt
X2k5MTVfZ2VtX29iamVjdCAqb2JqLAogCWlmIChyZXQpCiAJCXJldHVybiByZXQ7CiAKLQlyZXQg
PSBpOTE1X2dlbV9vYmplY3RfbG9ja19pbnRlcnJ1cHRpYmxlKG9iaik7CisJcmV0ID0gaTkxNV9n
ZW1fb2JqZWN0X2xvY2tfaW50ZXJydXB0aWJsZShvYmosIE5VTEwpOwogCWlmIChyZXQpCiAJCXJl
dHVybiByZXQ7CiAKQEAgLTUzNiw3ICs1MzYsNyBAQCBpOTE1X2dlbV9zZXRfZG9tYWluX2lvY3Rs
KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsCiAJaWYgKGVycikKIAkJZ290byBv
dXQ7CiAKLQllcnIgPSBpOTE1X2dlbV9vYmplY3RfbG9ja19pbnRlcnJ1cHRpYmxlKG9iaik7CisJ
ZXJyID0gaTkxNV9nZW1fb2JqZWN0X2xvY2tfaW50ZXJydXB0aWJsZShvYmosIE5VTEwpOwogCWlm
IChlcnIpCiAJCWdvdG8gb3V0X3VucGluOwogCkBAIC01NzYsNyArNTc2LDcgQEAgaW50IGk5MTVf
Z2VtX29iamVjdF9wcmVwYXJlX3JlYWQoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwK
IAlpZiAoIWk5MTVfZ2VtX29iamVjdF9oYXNfc3RydWN0X3BhZ2Uob2JqKSkKIAkJcmV0dXJuIC1F
Tk9ERVY7CiAKLQlyZXQgPSBpOTE1X2dlbV9vYmplY3RfbG9ja19pbnRlcnJ1cHRpYmxlKG9iaik7
CisJcmV0ID0gaTkxNV9nZW1fb2JqZWN0X2xvY2tfaW50ZXJydXB0aWJsZShvYmosIE5VTEwpOwog
CWlmIChyZXQpCiAJCXJldHVybiByZXQ7CiAKQEAgLTYzMCw3ICs2MzAsNyBAQCBpbnQgaTkxNV9n
ZW1fb2JqZWN0X3ByZXBhcmVfd3JpdGUoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwK
IAlpZiAoIWk5MTVfZ2VtX29iamVjdF9oYXNfc3RydWN0X3BhZ2Uob2JqKSkKIAkJcmV0dXJuIC1F
Tk9ERVY7CiAKLQlyZXQgPSBpOTE1X2dlbV9vYmplY3RfbG9ja19pbnRlcnJ1cHRpYmxlKG9iaik7
CisJcmV0ID0gaTkxNV9nZW1fb2JqZWN0X2xvY2tfaW50ZXJydXB0aWJsZShvYmosIE5VTEwpOwog
CWlmIChyZXQpCiAJCXJldHVybiByZXQ7CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fZXhlY2J1ZmZlci5jCmluZGV4IDcwNTFhZjVhZDhkOC4uMmJiNDE0ZDU1ZjEwIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMKQEAg
LTEwNzYsNyArMTA3Niw3IEBAIHN0YXRpYyB2b2lkICpyZWxvY19pb21hcChzdHJ1Y3QgZHJtX2k5
MTVfZ2VtX29iamVjdCAqb2JqLAogCQlpZiAodXNlX2NwdV9yZWxvYyhjYWNoZSwgb2JqKSkKIAkJ
CXJldHVybiBOVUxMOwogCi0JCWk5MTVfZ2VtX29iamVjdF9sb2NrKG9iaik7CisJCWk5MTVfZ2Vt
X29iamVjdF9sb2NrKG9iaiwgTlVMTCk7CiAJCWVyciA9IGk5MTVfZ2VtX29iamVjdF9zZXRfdG9f
Z3R0X2RvbWFpbihvYmosIHRydWUpOwogCQlpOTE1X2dlbV9vYmplY3RfdW5sb2NrKG9iaik7CiAJ
CWlmIChlcnIpCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
b2JqZWN0LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmgKaW5k
ZXggZTViOTI3NmQyNTRjLi40ODg0NTkxNDMzNjYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fb2JqZWN0LmgKQEAgLTExMCwyMCArMTEwLDQ0IEBAIGk5MTVfZ2VtX29iamVj
dF9wdXQoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaikKIAogI2RlZmluZSBhc3NlcnRf
b2JqZWN0X2hlbGQob2JqKSBkbWFfcmVzdl9hc3NlcnRfaGVsZCgob2JqKS0+YmFzZS5yZXN2KQog
Ci1zdGF0aWMgaW5saW5lIHZvaWQgaTkxNV9nZW1fb2JqZWN0X2xvY2soc3RydWN0IGRybV9pOTE1
X2dlbV9vYmplY3QgKm9iaikKK3N0YXRpYyBpbmxpbmUgaW50IF9faTkxNV9nZW1fb2JqZWN0X2xv
Y2soc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKKwkJCQkJIHN0cnVjdCBpOTE1X2dl
bV93d19jdHggKnd3LAorCQkJCQkgYm9vbCBpbnRyKQogewotCWRtYV9yZXN2X2xvY2sob2JqLT5i
YXNlLnJlc3YsIE5VTEwpOworCWludCByZXQ7CisKKwlpZiAoaW50cikKKwkJcmV0ID0gZG1hX3Jl
c3ZfbG9ja19pbnRlcnJ1cHRpYmxlKG9iai0+YmFzZS5yZXN2LCB3dyA/ICZ3dy0+Y3R4IDogTlVM
TCk7CisJZWxzZQorCQlyZXQgPSBkbWFfcmVzdl9sb2NrKG9iai0+YmFzZS5yZXN2LCB3dyA/ICZ3
dy0+Y3R4IDogTlVMTCk7CisKKwlpZiAoIXJldCAmJiB3dykKKwkJbGlzdF9hZGRfdGFpbCgmb2Jq
LT5vYmpfbGluaywgJnd3LT5vYmpfbGlzdCk7CisJaWYgKHJldCA9PSAtRUFMUkVBRFkpCisJCXJl
dCA9IDA7CisKKwlpZiAocmV0ID09IC1FREVBRExLKQorCQl3dy0+Y29udGVuZGVkID0gb2JqOwor
CisJcmV0dXJuIHJldDsKIH0KIAotc3RhdGljIGlubGluZSBib29sIGk5MTVfZ2VtX29iamVjdF90
cnlsb2NrKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCitzdGF0aWMgaW5saW5lIGlu
dCBpOTE1X2dlbV9vYmplY3RfbG9jayhzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAor
CQkJCSAgICAgICBzdHJ1Y3QgaTkxNV9nZW1fd3dfY3R4ICp3dykKIHsKLQlyZXR1cm4gZG1hX3Jl
c3ZfdHJ5bG9jayhvYmotPmJhc2UucmVzdik7CisJcmV0dXJuIF9faTkxNV9nZW1fb2JqZWN0X2xv
Y2sob2JqLCB3dywgd3cgJiYgd3ctPmludHIpOwogfQogCi1zdGF0aWMgaW5saW5lIGludAotaTkx
NV9nZW1fb2JqZWN0X2xvY2tfaW50ZXJydXB0aWJsZShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVj
dCAqb2JqKQorc3RhdGljIGlubGluZSBpbnQgaTkxNV9nZW1fb2JqZWN0X2xvY2tfaW50ZXJydXB0
aWJsZShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAorCQkJCQkJICAgICBzdHJ1Y3Qg
aTkxNV9nZW1fd3dfY3R4ICp3dykKIHsKLQlyZXR1cm4gZG1hX3Jlc3ZfbG9ja19pbnRlcnJ1cHRp
YmxlKG9iai0+YmFzZS5yZXN2LCBOVUxMKTsKKwlXQVJOX09OKHd3ICYmICF3dy0+aW50cik7CisJ
cmV0dXJuIF9faTkxNV9nZW1fb2JqZWN0X2xvY2sob2JqLCB3dywgdHJ1ZSk7Cit9CisKK3N0YXRp
YyBpbmxpbmUgYm9vbCBpOTE1X2dlbV9vYmplY3RfdHJ5bG9jayhzdHJ1Y3QgZHJtX2k5MTVfZ2Vt
X29iamVjdCAqb2JqKQoreworCXJldHVybiBkbWFfcmVzdl90cnlsb2NrKG9iai0+YmFzZS5yZXN2
KTsKIH0KIAogc3RhdGljIGlubGluZSB2b2lkIGk5MTVfZ2VtX29iamVjdF91bmxvY2soc3RydWN0
IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaikKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9vYmplY3RfdHlwZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9vYmplY3RfdHlwZXMuaAppbmRleCBkMDg0N2Q3ODk2ZjkuLmI1YzE1NTU3Y2M4
NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdF90
eXBlcy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3RfdHlw
ZXMuaApAQCAtMTIzLDYgKzEyMywxNSBAQCBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCB7CiAJ
c3RydWN0IGxpc3RfaGVhZCBsdXRfbGlzdDsKIAlzcGlubG9ja190IGx1dF9sb2NrOyAvKiBndWFy
ZHMgbHV0X2xpc3QgKi8KIAorCS8qKgorCSAqIEBvYmpfbGluazogTGluayBpbnRvIEBpOTE1X2dl
bV93d19jdHgub2JqX2xpc3QKKwkgKgorCSAqIFdoZW4gd2UgbG9jayB0aGlzIG9iamVjdCB0aHJv
dWdoIGk5MTVfZ2VtX29iamVjdF9sb2NrKCkgd2l0aCBhCisJICogY29udGV4dCwgd2UgYWRkIGl0
IHRvIHRoZSBsaXN0IHRvIGVuc3VyZSB3ZSBjYW4gdW5sb2NrIGV2ZXJ5dGhpbmcKKwkgKiB3aGVu
IGk5MTVfZ2VtX3d3X2N0eF9iYWNrb2ZmKCkgb3IgaTkxNV9nZW1fd3dfY3R4X2ZpbmkoKSBhcmUg
Y2FsbGVkLgorCSAqLworCXN0cnVjdCBsaXN0X2hlYWQgb2JqX2xpbms7CisKIAkvKiogU3RvbGVu
IG1lbW9yeSBmb3IgdGhpcyBvYmplY3QsIGluc3RlYWQgb2YgYmVpbmcgYmFja2VkIGJ5IHNobWVt
LiAqLwogCXN0cnVjdCBkcm1fbW1fbm9kZSAqc3RvbGVuOwogCXVuaW9uIHsKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9wbS5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX3BtLmMKaW5kZXggM2QyMTUxNjRkZDVhLi40MGQzZTQwNTAwZmEg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9wbS5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9wbS5jCkBAIC04NCw3ICs4NCw3IEBA
IHZvaWQgaTkxNV9nZW1fc3VzcGVuZF9sYXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
KQogCiAJCQlzcGluX3VubG9ja19pcnFyZXN0b3JlKCZpOTE1LT5tbS5vYmpfbG9jaywgZmxhZ3Mp
OwogCi0JCQlpOTE1X2dlbV9vYmplY3RfbG9jayhvYmopOworCQkJaTkxNV9nZW1fb2JqZWN0X2xv
Y2sob2JqLCBOVUxMKTsKIAkJCWRybV9XQVJOX09OKCZpOTE1LT5kcm0sCiAJCQkgICAgaTkxNV9n
ZW1fb2JqZWN0X3NldF90b19ndHRfZG9tYWluKG9iaiwgZmFsc2UpKTsKIAkJCWk5MTVfZ2VtX29i
amVjdF91bmxvY2sob2JqKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV90aWxpbmcuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV90aWxp
bmcuYwppbmRleCBmZjcyZWUyZmQ5Y2QuLmZmY2FlZTc0YTI0OSAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3RpbGluZy5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV90aWxpbmcuYwpAQCAtMjQ5LDcgKzI0OSw3IEBAIGk5MTVfZ2Vt
X29iamVjdF9zZXRfdGlsaW5nKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCiAJICog
d2hpbHN0IGV4ZWN1dGluZyBhIGZlbmNlZCBjb21tYW5kIGZvciBhbiB1bnRpbGVkIG9iamVjdC4K
IAkgKi8KIAotCWk5MTVfZ2VtX29iamVjdF9sb2NrKG9iaik7CisJaTkxNV9nZW1fb2JqZWN0X2xv
Y2sob2JqLCBOVUxMKTsKIAlpZiAoaTkxNV9nZW1fb2JqZWN0X2lzX2ZyYW1lYnVmZmVyKG9iaikp
IHsKIAkJaTkxNV9nZW1fb2JqZWN0X3VubG9jayhvYmopOwogCQlyZXR1cm4gLUVCVVNZOwpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9odWdlX3BhZ2VzLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2h1Z2VfcGFnZXMuYwppbmRleCBl
MmYzZDAxNGFjYjIuLjY4YzM2MzFmMzc0NiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL3NlbGZ0ZXN0cy9odWdlX3BhZ2VzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL3NlbGZ0ZXN0cy9odWdlX3BhZ2VzLmMKQEAgLTk0Nyw3ICs5NDcsNyBAQCBzdGF0aWMgaW50
IGdwdV93cml0ZShzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UsCiB7CiAJaW50IGVycjsKIAotCWk5
MTVfZ2VtX29iamVjdF9sb2NrKHZtYS0+b2JqKTsKKwlpOTE1X2dlbV9vYmplY3RfbG9jayh2bWEt
Pm9iaiwgTlVMTCk7CiAJZXJyID0gaTkxNV9nZW1fb2JqZWN0X3NldF90b19ndHRfZG9tYWluKHZt
YS0+b2JqLCB0cnVlKTsKIAlpOTE1X2dlbV9vYmplY3RfdW5sb2NrKHZtYS0+b2JqKTsKIAlpZiAo
ZXJyKQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1
X2dlbV9jbGllbnRfYmx0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5
MTVfZ2VtX2NsaWVudF9ibHQuYwppbmRleCAyOTljMjllOWFkODYuLjRlMzZkNDg5N2VhNiAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9jbGll
bnRfYmx0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dl
bV9jbGllbnRfYmx0LmMKQEAgLTc1LDcgKzc1LDcgQEAgc3RhdGljIGludCBfX2lndF9jbGllbnRf
ZmlsbChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiAJCWlmIChlcnIpCiAJCQlnb3Rv
IGVycl91bnBpbjsKIAotCQlpOTE1X2dlbV9vYmplY3RfbG9jayhvYmopOworCQlpOTE1X2dlbV9v
YmplY3RfbG9jayhvYmosIE5VTEwpOwogCQllcnIgPSBpOTE1X2dlbV9vYmplY3Rfc2V0X3RvX2Nw
dV9kb21haW4ob2JqLCBmYWxzZSk7CiAJCWk5MTVfZ2VtX29iamVjdF91bmxvY2sob2JqKTsKIAkJ
aWYgKGVycikKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMv
aTkxNV9nZW1fY29oZXJlbmN5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3Rz
L2k5MTVfZ2VtX2NvaGVyZW5jeS5jCmluZGV4IDg3ZDdkOGFhMDgwZi4uMWRlMjk1OWIxNTNjIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2Nv
aGVyZW5jeS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9n
ZW1fY29oZXJlbmN5LmMKQEAgLTgyLDcgKzgyLDcgQEAgc3RhdGljIGludCBndHRfc2V0KHN0cnVj
dCBjb250ZXh0ICpjdHgsIHVuc2lnbmVkIGxvbmcgb2Zmc2V0LCB1MzIgdikKIAl1MzIgX19pb21l
bSAqbWFwOwogCWludCBlcnIgPSAwOwogCi0JaTkxNV9nZW1fb2JqZWN0X2xvY2soY3R4LT5vYmop
OworCWk5MTVfZ2VtX29iamVjdF9sb2NrKGN0eC0+b2JqLCBOVUxMKTsKIAllcnIgPSBpOTE1X2dl
bV9vYmplY3Rfc2V0X3RvX2d0dF9kb21haW4oY3R4LT5vYmosIHRydWUpOwogCWk5MTVfZ2VtX29i
amVjdF91bmxvY2soY3R4LT5vYmopOwogCWlmIChlcnIpCkBAIC0xMTUsNyArMTE1LDcgQEAgc3Rh
dGljIGludCBndHRfZ2V0KHN0cnVjdCBjb250ZXh0ICpjdHgsIHVuc2lnbmVkIGxvbmcgb2Zmc2V0
LCB1MzIgKnYpCiAJdTMyIF9faW9tZW0gKm1hcDsKIAlpbnQgZXJyID0gMDsKIAotCWk5MTVfZ2Vt
X29iamVjdF9sb2NrKGN0eC0+b2JqKTsKKwlpOTE1X2dlbV9vYmplY3RfbG9jayhjdHgtPm9iaiwg
TlVMTCk7CiAJZXJyID0gaTkxNV9nZW1fb2JqZWN0X3NldF90b19ndHRfZG9tYWluKGN0eC0+b2Jq
LCBmYWxzZSk7CiAJaTkxNV9nZW1fb2JqZWN0X3VubG9jayhjdHgtPm9iaik7CiAJaWYgKGVycikK
QEAgLTE0Nyw3ICsxNDcsNyBAQCBzdGF0aWMgaW50IHdjX3NldChzdHJ1Y3QgY29udGV4dCAqY3R4
LCB1bnNpZ25lZCBsb25nIG9mZnNldCwgdTMyIHYpCiAJdTMyICptYXA7CiAJaW50IGVycjsKIAot
CWk5MTVfZ2VtX29iamVjdF9sb2NrKGN0eC0+b2JqKTsKKwlpOTE1X2dlbV9vYmplY3RfbG9jayhj
dHgtPm9iaiwgTlVMTCk7CiAJZXJyID0gaTkxNV9nZW1fb2JqZWN0X3NldF90b193Y19kb21haW4o
Y3R4LT5vYmosIHRydWUpOwogCWk5MTVfZ2VtX29iamVjdF91bmxvY2soY3R4LT5vYmopOwogCWlm
IChlcnIpCkBAIC0xNzAsNyArMTcwLDcgQEAgc3RhdGljIGludCB3Y19nZXQoc3RydWN0IGNvbnRl
eHQgKmN0eCwgdW5zaWduZWQgbG9uZyBvZmZzZXQsIHUzMiAqdikKIAl1MzIgKm1hcDsKIAlpbnQg
ZXJyOwogCi0JaTkxNV9nZW1fb2JqZWN0X2xvY2soY3R4LT5vYmopOworCWk5MTVfZ2VtX29iamVj
dF9sb2NrKGN0eC0+b2JqLCBOVUxMKTsKIAllcnIgPSBpOTE1X2dlbV9vYmplY3Rfc2V0X3RvX3dj
X2RvbWFpbihjdHgtPm9iaiwgZmFsc2UpOwogCWk5MTVfZ2VtX29iamVjdF91bmxvY2soY3R4LT5v
YmopOwogCWlmIChlcnIpCkBAIC0xOTMsNyArMTkzLDcgQEAgc3RhdGljIGludCBncHVfc2V0KHN0
cnVjdCBjb250ZXh0ICpjdHgsIHVuc2lnbmVkIGxvbmcgb2Zmc2V0LCB1MzIgdikKIAl1MzIgKmNz
OwogCWludCBlcnI7CiAKLQlpOTE1X2dlbV9vYmplY3RfbG9jayhjdHgtPm9iaik7CisJaTkxNV9n
ZW1fb2JqZWN0X2xvY2soY3R4LT5vYmosIE5VTEwpOwogCWVyciA9IGk5MTVfZ2VtX29iamVjdF9z
ZXRfdG9fZ3R0X2RvbWFpbihjdHgtPm9iaiwgdHJ1ZSk7CiAJaTkxNV9nZW1fb2JqZWN0X3VubG9j
ayhjdHgtPm9iaik7CiAJaWYgKGVycikKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fY29udGV4dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9jb250ZXh0LmMKaW5kZXggZDE3NmIwMTUzNTNmLi41MmFm
OWE1MmI3NDMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMv
aTkxNV9nZW1fY29udGV4dC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVz
dHMvaTkxNV9nZW1fY29udGV4dC5jCkBAIC05NTAsNyArOTUwLDcgQEAgZW1pdF9ycGNzX3F1ZXJ5
KHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCiAJaWYgKElTX0VSUih2bWEpKQogCQly
ZXR1cm4gUFRSX0VSUih2bWEpOwogCi0JaTkxNV9nZW1fb2JqZWN0X2xvY2sob2JqKTsKKwlpOTE1
X2dlbV9vYmplY3RfbG9jayhvYmosIE5VTEwpOwogCWVyciA9IGk5MTVfZ2VtX29iamVjdF9zZXRf
dG9fZ3R0X2RvbWFpbihvYmosIGZhbHNlKTsKIAlpOTE1X2dlbV9vYmplY3RfdW5sb2NrKG9iaik7
CiAJaWYgKGVycikKQEAgLTE3MDksNyArMTcwOSw3IEBAIHN0YXRpYyBpbnQgcmVhZF9mcm9tX3Nj
cmF0Y2goc3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgKmN0eCwKIAogCWk5MTVfcmVxdWVzdF9hZGQo
cnEpOwogCi0JaTkxNV9nZW1fb2JqZWN0X2xvY2sob2JqKTsKKwlpOTE1X2dlbV9vYmplY3RfbG9j
ayhvYmosIE5VTEwpOwogCWVyciA9IGk5MTVfZ2VtX29iamVjdF9zZXRfdG9fY3B1X2RvbWFpbihv
YmosIGZhbHNlKTsKIAlpOTE1X2dlbV9vYmplY3RfdW5sb2NrKG9iaik7CiAJaWYgKGVycikKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fbW1h
bi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9tbWFuLmMK
aW5kZXggOWM3NDAyY2U1YmY5Li45ZmI5NWE0NWJjYWQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fbW1hbi5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fbW1hbi5jCkBAIC0xMDMsNyArMTAzLDcg
QEAgc3RhdGljIGludCBjaGVja19wYXJ0aWFsX21hcHBpbmcoc3RydWN0IGRybV9pOTE1X2dlbV9v
YmplY3QgKm9iaiwKIAlHRU1fQlVHX09OKGk5MTVfZ2VtX29iamVjdF9nZXRfdGlsaW5nKG9iaikg
IT0gdGlsZS0+dGlsaW5nKTsKIAlHRU1fQlVHX09OKGk5MTVfZ2VtX29iamVjdF9nZXRfc3RyaWRl
KG9iaikgIT0gdGlsZS0+c3RyaWRlKTsKIAotCWk5MTVfZ2VtX29iamVjdF9sb2NrKG9iaik7CisJ
aTkxNV9nZW1fb2JqZWN0X2xvY2sob2JqLCBOVUxMKTsKIAllcnIgPSBpOTE1X2dlbV9vYmplY3Rf
c2V0X3RvX2d0dF9kb21haW4ob2JqLCB0cnVlKTsKIAlpOTE1X2dlbV9vYmplY3RfdW5sb2NrKG9i
aik7CiAJaWYgKGVycikgewpAQCAtMTg4LDcgKzE4OCw3IEBAIHN0YXRpYyBpbnQgY2hlY2tfcGFy
dGlhbF9tYXBwaW5ncyhzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAogCUdFTV9CVUdf
T04oaTkxNV9nZW1fb2JqZWN0X2dldF90aWxpbmcob2JqKSAhPSB0aWxlLT50aWxpbmcpOwogCUdF
TV9CVUdfT04oaTkxNV9nZW1fb2JqZWN0X2dldF9zdHJpZGUob2JqKSAhPSB0aWxlLT5zdHJpZGUp
OwogCi0JaTkxNV9nZW1fb2JqZWN0X2xvY2sob2JqKTsKKwlpOTE1X2dlbV9vYmplY3RfbG9jayhv
YmosIE5VTEwpOwogCWVyciA9IGk5MTVfZ2VtX29iamVjdF9zZXRfdG9fZ3R0X2RvbWFpbihvYmos
IHRydWUpOwogCWk5MTVfZ2VtX29iamVjdF91bmxvY2sob2JqKTsKIAlpZiAoZXJyKSB7CmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX3BoeXMu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fcGh5cy5jCmlu
ZGV4IDM0OTMyODcxYjNhNS4uYTk0MjQzZGM0YzVjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX3BoeXMuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX3BoeXMuYwpAQCAtNDQsNyArNDQsNyBAQCBz
dGF0aWMgaW50IG1vY2tfcGh5c19vYmplY3Qodm9pZCAqYXJnKQogCX0KIAogCS8qIE1ha2UgdGhl
IG9iamVjdCBkaXJ0eSBzbyB0aGF0IHB1dF9wYWdlcyBtdXN0IGRvIGNvcHkgYmFjayB0aGUgZGF0
YSAqLwotCWk5MTVfZ2VtX29iamVjdF9sb2NrKG9iaik7CisJaTkxNV9nZW1fb2JqZWN0X2xvY2so
b2JqLCBOVUxMKTsKIAllcnIgPSBpOTE1X2dlbV9vYmplY3Rfc2V0X3RvX2d0dF9kb21haW4ob2Jq
LCB0cnVlKTsKIAlpOTE1X2dlbV9vYmplY3RfdW5sb2NrKG9iaik7CiAJaWYgKGVycikgewpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3Rfd29ya2Fyb3VuZHMuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X3dvcmthcm91bmRzLmMKaW5kZXggZmVi
YzllNjY5MmJhLi42MWEwNTMyZDBmM2QgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L3NlbGZ0ZXN0X3dvcmthcm91bmRzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
c2VsZnRlc3Rfd29ya2Fyb3VuZHMuYwpAQCAtMjE0LDcgKzIxNCw3IEBAIHN0YXRpYyBpbnQgY2hl
Y2tfd2hpdGVsaXN0KHN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpjdHgsCiAJCXJldHVybiBQVFJf
RVJSKHJlc3VsdHMpOwogCiAJZXJyID0gMDsKLQlpOTE1X2dlbV9vYmplY3RfbG9jayhyZXN1bHRz
KTsKKwlpOTE1X2dlbV9vYmplY3RfbG9jayhyZXN1bHRzLCBOVUxMKTsKIAlpbnRlbF93ZWRnZV9v
bl90aW1lb3V0KCZ3ZWRnZSwgZW5naW5lLT5ndCwgSFogLyA1KSAvKiBzYWZldHkgbmV0ISAqLwog
CQllcnIgPSBpOTE1X2dlbV9vYmplY3Rfc2V0X3RvX2NwdV9kb21haW4ocmVzdWx0cywgZmFsc2Up
OwogCWk5MTVfZ2VtX29iamVjdF91bmxvY2socmVzdWx0cyk7CmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndnQvY21kX3BhcnNlci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Z0
L2NtZF9wYXJzZXIuYwppbmRleCBmMTk0MDkzOTI2MGEuLjk0M2M4ZDIzMjcwMyAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Z0L2NtZF9wYXJzZXIuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndnQvY21kX3BhcnNlci5jCkBAIC0yOTgyLDcgKzI5ODIsNyBAQCBzdGF0aWMg
aW50IHNoYWRvd19pbmRpcmVjdF9jdHgoc3RydWN0IGludGVsX3NoYWRvd193YV9jdHggKndhX2N0
eCkKIAkJZ290byBwdXRfb2JqOwogCX0KIAotCWk5MTVfZ2VtX29iamVjdF9sb2NrKG9iaik7CisJ
aTkxNV9nZW1fb2JqZWN0X2xvY2sob2JqLCBOVUxMKTsKIAlyZXQgPSBpOTE1X2dlbV9vYmplY3Rf
c2V0X3RvX2NwdV9kb21haW4ob2JqLCBmYWxzZSk7CiAJaTkxNV9nZW1fb2JqZWN0X3VubG9jayhv
YmopOwogCWlmIChyZXQpIHsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
Z2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCmluZGV4IGUxZGU1MDc4MGVk
NS4uNGJjOGZkYjk0MDE5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dl
bS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKQEAgLTQyMCw3ICs0MjAs
NyBAQCBpOTE1X2dlbV9ndHRfcHJlYWQoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwK
IAkJR0VNX0JVR19PTighZHJtX21tX25vZGVfYWxsb2NhdGVkKCZub2RlKSk7CiAJfQogCi0JcmV0
ID0gaTkxNV9nZW1fb2JqZWN0X2xvY2tfaW50ZXJydXB0aWJsZShvYmopOworCXJldCA9IGk5MTVf
Z2VtX29iamVjdF9sb2NrX2ludGVycnVwdGlibGUob2JqLCBOVUxMKTsKIAlpZiAocmV0KQogCQln
b3RvIG91dF91bnBpbjsKIApAQCAtNjE5LDcgKzYxOSw3IEBAIGk5MTVfZ2VtX2d0dF9wd3JpdGVf
ZmFzdChzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAogCQlHRU1fQlVHX09OKCFkcm1f
bW1fbm9kZV9hbGxvY2F0ZWQoJm5vZGUpKTsKIAl9CiAKLQlyZXQgPSBpOTE1X2dlbV9vYmplY3Rf
bG9ja19pbnRlcnJ1cHRpYmxlKG9iaik7CisJcmV0ID0gaTkxNV9nZW1fb2JqZWN0X2xvY2tfaW50
ZXJydXB0aWJsZShvYmosIE5VTEwpOwogCWlmIChyZXQpCiAJCWdvdG8gb3V0X3VucGluOwogCkBA
IC0xMjkwLDcgKzEyOTAsNyBAQCBpbnQgaTkxNV9nZW1fZnJlZXplX2xhdGUoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUpCiAJaTkxNV9nZW1fZHJhaW5fZnJlZWRfb2JqZWN0cyhpOTE1KTsK
IAogCWxpc3RfZm9yX2VhY2hfZW50cnkob2JqLCAmaTkxNS0+bW0uc2hyaW5rX2xpc3QsIG1tLmxp
bmspIHsKLQkJaTkxNV9nZW1fb2JqZWN0X2xvY2sob2JqKTsKKwkJaTkxNV9nZW1fb2JqZWN0X2xv
Y2sob2JqLCBOVUxMKTsKIAkJZHJtX1dBUk5fT04oJmk5MTUtPmRybSwKIAkJCSAgICBpOTE1X2dl
bV9vYmplY3Rfc2V0X3RvX2NwdV9kb21haW4ob2JqLCB0cnVlKSk7CiAJCWk5MTVfZ2VtX29iamVj
dF91bmxvY2sob2JqKTsKQEAgLTEzMjYsNiArMTMyNiw1MiBAQCBpbnQgaTkxNV9nZW1fb3Blbihz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgc3RydWN0IGRybV9maWxlICpmaWxlKQogCXJl
dHVybiByZXQ7CiB9CiAKK3ZvaWQgaTkxNV9nZW1fd3dfY3R4X2luaXQoc3RydWN0IGk5MTVfZ2Vt
X3d3X2N0eCAqd3csIGJvb2wgaW50cikKK3sKKwl3d19hY3F1aXJlX2luaXQoJnd3LT5jdHgsICZy
ZXNlcnZhdGlvbl93d19jbGFzcyk7CisJSU5JVF9MSVNUX0hFQUQoJnd3LT5vYmpfbGlzdCk7CisJ
d3ctPmludHIgPSBpbnRyOworCXd3LT5jb250ZW5kZWQgPSBOVUxMOworfQorCitzdGF0aWMgdm9p
ZCBpOTE1X2dlbV93d19jdHhfdW5sb2NrX2FsbChzdHJ1Y3QgaTkxNV9nZW1fd3dfY3R4ICp3dykK
K3sKKwlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqOworCisJd2hpbGUgKChvYmogPSBs
aXN0X2ZpcnN0X2VudHJ5X29yX251bGwoJnd3LT5vYmpfbGlzdCwgc3RydWN0IGRybV9pOTE1X2dl
bV9vYmplY3QsIG9ial9saW5rKSkpIHsKKwkJbGlzdF9kZWwoJm9iai0+b2JqX2xpbmspOworCQlp
OTE1X2dlbV9vYmplY3RfdW5sb2NrKG9iaik7CisJfQorfQorCit2b2lkIGk5MTVfZ2VtX3d3X2N0
eF9maW5pKHN0cnVjdCBpOTE1X2dlbV93d19jdHggKnd3KQoreworCWk5MTVfZ2VtX3d3X2N0eF91
bmxvY2tfYWxsKHd3KTsKKwlXQVJOX09OKHd3LT5jb250ZW5kZWQpOworCXd3X2FjcXVpcmVfZmlu
aSgmd3ctPmN0eCk7Cit9CisKK2ludCBfX211c3RfY2hlY2sgaTkxNV9nZW1fd3dfY3R4X2JhY2tv
ZmYoc3RydWN0IGk5MTVfZ2VtX3d3X2N0eCAqd3cpCit7CisJaW50IHJldCA9IDA7CisKKwlpZiAo
V0FSTl9PTighd3ctPmNvbnRlbmRlZCkpCisJCXJldHVybiAtRUlOVkFMOworCisJaTkxNV9nZW1f
d3dfY3R4X3VubG9ja19hbGwod3cpOworCWlmICh3dy0+aW50cikKKwkJcmV0ID0gZG1hX3Jlc3Zf
bG9ja19zbG93X2ludGVycnVwdGlibGUod3ctPmNvbnRlbmRlZC0+YmFzZS5yZXN2LCAmd3ctPmN0
eCk7CisJZWxzZQorCQlkbWFfcmVzdl9sb2NrX3Nsb3cod3ctPmNvbnRlbmRlZC0+YmFzZS5yZXN2
LCAmd3ctPmN0eCk7CisKKwlpZiAoIXJldCkKKwkJbGlzdF9hZGRfdGFpbCgmd3ctPmNvbnRlbmRl
ZC0+b2JqX2xpbmssICZ3dy0+b2JqX2xpc3QpOworCisJd3ctPmNvbnRlbmRlZCA9IE5VTEw7CisK
KwlyZXR1cm4gcmV0OworfQorCiAjaWYgSVNfRU5BQkxFRChDT05GSUdfRFJNX0k5MTVfU0VMRlRF
U1QpCiAjaW5jbHVkZSAic2VsZnRlc3RzL21vY2tfZ2VtX2RldmljZS5jIgogI2luY2x1ZGUgInNl
bGZ0ZXN0cy9pOTE1X2dlbS5jIgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9nZW0uaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmgKaW5kZXggZjMzM2U4OGEy
YjZlLi40MjdlYmQwMmZjZWIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
Z2VtLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uaApAQCAtMTE2LDQgKzEx
NiwxNSBAQCBzdGF0aWMgaW5saW5lIGJvb2wgX190YXNrbGV0X2lzX3NjaGVkdWxlZChzdHJ1Y3Qg
dGFza2xldF9zdHJ1Y3QgKnQpCiAJcmV0dXJuIHRlc3RfYml0KFRBU0tMRVRfU1RBVEVfU0NIRUQs
ICZ0LT5zdGF0ZSk7CiB9CiAKK3N0cnVjdCBpOTE1X2dlbV93d19jdHggeworCXN0cnVjdCB3d19h
Y3F1aXJlX2N0eCBjdHg7CisJc3RydWN0IGxpc3RfaGVhZCBvYmpfbGlzdDsKKwlib29sIGludHI7
CisJc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKmNvbnRlbmRlZDsKK307CisKK3ZvaWQgaTkx
NV9nZW1fd3dfY3R4X2luaXQoc3RydWN0IGk5MTVfZ2VtX3d3X2N0eCAqY3R4LCBib29sIGludHIp
Owordm9pZCBpOTE1X2dlbV93d19jdHhfZmluaShzdHJ1Y3QgaTkxNV9nZW1fd3dfY3R4ICpjdHgp
OworaW50IF9fbXVzdF9jaGVjayBpOTE1X2dlbV93d19jdHhfYmFja29mZihzdHJ1Y3QgaTkxNV9n
ZW1fd3dfY3R4ICpjdHgpOworCiAjZW5kaWYgLyogX19JOTE1X0dFTV9IX18gKi8KZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2dlbS5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfZ2VtLmMKaW5kZXggODhkNDAwYjlkZjg4Li4yM2E2
MTMyYzVmNGUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1
X2dlbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2dlbS5jCkBA
IC0xOTksMTEgKzE5OSw1MiBAQCBzdGF0aWMgaW50IGlndF9nZW1faGliZXJuYXRlKHZvaWQgKmFy
ZykKIAlyZXR1cm4gZXJyOwogfQogCitzdGF0aWMgaW50IGlndF9nZW1fd3dfY3R4KHZvaWQgKmFy
ZykKK3sKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGFyZzsKKwlzdHJ1Y3QgZHJt
X2k5MTVfZ2VtX29iamVjdCAqb2JqLCAqb2JqMjsKKwlzdHJ1Y3QgaTkxNV9nZW1fd3dfY3R4IHd3
OworCWludCBlcnIgPSAwOworCisJb2JqID0gaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9pbnRlcm5h
bChpOTE1LCBQQUdFX1NJWkUpOworCWlmIChJU19FUlIob2JqKSkKKwkJcmV0dXJuIFBUUl9FUlIo
b2JqKTsKKworCW9iajIgPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX2ludGVybmFsKGk5MTUsIFBB
R0VfU0laRSk7CisJaWYgKElTX0VSUihvYmopKSB7CisJCWVyciA9IFBUUl9FUlIob2JqKTsKKwkJ
Z290byBwdXQxOworCX0KKworCWk5MTVfZ2VtX3d3X2N0eF9pbml0KCZ3dywgdHJ1ZSk7CityZXRy
eToKKwkvKiBMb2NrIHRoZSBvYmplY3RzLCB0d2ljZSBmb3IgZ29vZCBtZWFzdXJlICgtRUFMUkVB
RFkgaGFuZGxpbmcpICovCisJZXJyID0gaTkxNV9nZW1fb2JqZWN0X2xvY2sob2JqLCAmd3cpOwor
CWlmICghZXJyKQorCQllcnIgPSBpOTE1X2dlbV9vYmplY3RfbG9ja19pbnRlcnJ1cHRpYmxlKG9i
aiwgJnd3KTsKKwlpZiAoIWVycikKKwkJZXJyID0gaTkxNV9nZW1fb2JqZWN0X2xvY2tfaW50ZXJy
dXB0aWJsZShvYmoyLCAmd3cpOworCWlmICghZXJyKQorCQllcnIgPSBpOTE1X2dlbV9vYmplY3Rf
bG9jayhvYmoyLCAmd3cpOworCisJaWYgKGVyciA9PSAtRURFQURMSykgeworCQllcnIgPSBpOTE1
X2dlbV93d19jdHhfYmFja29mZigmd3cpOworCQlpZiAoIWVycikKKwkJCWdvdG8gcmV0cnk7CisJ
fQorCWk5MTVfZ2VtX3d3X2N0eF9maW5pKCZ3dyk7CisJaTkxNV9nZW1fb2JqZWN0X3B1dChvYmoy
KTsKK3B1dDE6CisJaTkxNV9nZW1fb2JqZWN0X3B1dChvYmopOworCXJldHVybiBlcnI7Cit9CisK
IGludCBpOTE1X2dlbV9saXZlX3NlbGZ0ZXN0cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSkKIHsKIAlzdGF0aWMgY29uc3Qgc3RydWN0IGk5MTVfc3VidGVzdCB0ZXN0c1tdID0gewogCQlT
VUJURVNUKGlndF9nZW1fc3VzcGVuZCksCiAJCVNVQlRFU1QoaWd0X2dlbV9oaWJlcm5hdGUpLAor
CQlTVUJURVNUKGlndF9nZW1fd3dfY3R4KSwKIAl9OwogCiAJaWYgKGludGVsX2d0X2lzX3dlZGdl
ZCgmaTkxNS0+Z3QpKQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3Rz
L2k5MTVfdm1hLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV92bWEuYwpp
bmRleCBhZjg5YzdmYzhmNTkuLjg4YzVlOWFjYjg0YyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfdm1hLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
c2VsZnRlc3RzL2k5MTVfdm1hLmMKQEAgLTg5Miw3ICs4OTIsNyBAQCBzdGF0aWMgaW50IGlndF92
bWFfcmVtYXBwZWRfZ3R0KHZvaWQgKmFyZykKIAkJCXVuc2lnbmVkIGludCB4LCB5OwogCQkJaW50
IGVycjsKIAotCQkJaTkxNV9nZW1fb2JqZWN0X2xvY2sob2JqKTsKKwkJCWk5MTVfZ2VtX29iamVj
dF9sb2NrKG9iaiwgTlVMTCk7CiAJCQllcnIgPSBpOTE1X2dlbV9vYmplY3Rfc2V0X3RvX2d0dF9k
b21haW4ob2JqLCB0cnVlKTsKIAkJCWk5MTVfZ2VtX29iamVjdF91bmxvY2sob2JqKTsKIAkJCWlm
IChlcnIpCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaW50ZWxf
bWVtb3J5X3JlZ2lvbi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2ludGVsX21l
bW9yeV9yZWdpb24uYwppbmRleCA3NDEyNzBmY2I2YjkuLjkzYTM4YTMyMzU4NCAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2ludGVsX21lbW9yeV9yZWdpb24uYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaW50ZWxfbWVtb3J5X3JlZ2lvbi5j
CkBAIC01MDksNyArNTA5LDcgQEAgc3RhdGljIGludCBpZ3RfbG1lbV93cml0ZV9jcHUodm9pZCAq
YXJnKQogCWlmIChlcnIpCiAJCWdvdG8gb3V0X3VucGluOwogCi0JaTkxNV9nZW1fb2JqZWN0X2xv
Y2sob2JqKTsKKwlpOTE1X2dlbV9vYmplY3RfbG9jayhvYmosIE5VTEwpOwogCWVyciA9IGk5MTVf
Z2VtX29iamVjdF9zZXRfdG9fd2NfZG9tYWluKG9iaiwgdHJ1ZSk7CiAJaTkxNV9nZW1fb2JqZWN0
X3VubG9jayhvYmopOwogCWlmIChlcnIpCi0tIAoyLjI4LjAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
