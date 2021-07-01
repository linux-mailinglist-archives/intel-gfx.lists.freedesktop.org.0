Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 821833B93BB
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jul 2021 17:10:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D5526EB35;
	Thu,  1 Jul 2021 15:10:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 170546EB35;
 Thu,  1 Jul 2021 15:10:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10032"; a="188234848"
X-IronPort-AV: E=Sophos;i="5.83,314,1616482800"; d="scan'208";a="188234848"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2021 08:10:33 -0700
X-IronPort-AV: E=Sophos;i="5.83,314,1616482800"; d="scan'208";a="457693530"
Received: from dfdonlon-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.21.173])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2021 08:10:31 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  1 Jul 2021 16:10:17 +0100
Message-Id: <20210701151019.1103315-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 1/3] drm/i915: use consistent CPU mappings
 for pin_map users
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rm9yIGRpc2NyZXRlLCB1c2VycyBvZiBwaW5fbWFwKCkgbmVlZHMgdG8gb2JleSB0aGUgc2FtZSBy
dWxlcyBhdCB0aGUgVFRNCmJhY2tlbmQsIHdoZXJlIHdlIG1hcCBzeXN0ZW0gb25seSBvYmplY3Rz
IGFzIFdCLCBhbmQgZXZlcnl0aGluZyBlbHNlIGFzCldDLiBUaGUgc2ltcGxlc3QgZm9yIG5vdyBp
cyB0byBqdXN0IGZvcmNlIHRoZSBjb3JyZWN0IG1hcHBpbmcgdHlwZSBhcwpwZXIgdGhlIG5ldyBy
dWxlcyBmb3IgZGlzY3JldGUuCgpTdWdnZXN0ZWQtYnk6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9t
YXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTWF0dGhldyBBdWxk
IDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpDYzogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5o
ZWxsc3Ryb21AbGludXguaW50ZWwuY29tPgpDYzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4u
bGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0
ZXJAZmZ3bGwuY2g+CkNjOiBSYW1hbGluZ2FtIEMgPHJhbWFsaW5nYW0uY0BpbnRlbC5jb20+Ci0t
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jIHwgMzQgKysrKysr
KysrKysrKysrKysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVj
dC5oIHwgIDQgKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcGFnZXMuYyAg
fCAyMiArKysrKysrKysrKystLQogMyBmaWxlcyBjaGFuZ2VkLCA1OCBpbnNlcnRpb25zKCspLCAy
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9vYmplY3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3Qu
YwppbmRleCA1NDdjYzlkYWQ5MGQuLjlkYTdiMjg4YjdlZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYwpAQCAtNjI1LDYgKzYyNSw0MCBAQCBpbnQgaTkxNV9n
ZW1fb2JqZWN0X21pZ3JhdGUoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKIAlyZXR1
cm4gb2JqLT5vcHMtPm1pZ3JhdGUob2JqLCBtcik7CiB9CiAKKy8qKgorICogaTkxNV9nZW1fb2Jq
ZWN0X3BsYWNlbWVudF9wb3NzaWJsZSAtIENoZWNrIHdoZXRoZXIgdGhlIG9iamVjdCBjYW4gYmUK
KyAqIHBsYWNlZCBhdCBjZXJ0YWluIG1lbW9yeSB0eXBlCisgKiBAb2JqOiBQb2ludGVyIHRvIHRo
ZSBvYmplY3QKKyAqIEB0eXBlOiBUaGUgbWVtb3J5IHR5cGUgdG8gY2hlY2sKKyAqCisgKiBSZXR1
cm46IFRydWUgaWYgdGhlIG9iamVjdCBjYW4gYmUgcGxhY2VkIGluIEB0eXBlLiBGYWxzZSBvdGhl
cndpc2UuCisgKi8KK2Jvb2wgaTkxNV9nZW1fb2JqZWN0X3BsYWNlbWVudF9wb3NzaWJsZShzdHJ1
Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAorCQkJCQllbnVtIGludGVsX21lbW9yeV90eXBl
IHR5cGUpCit7CisJdW5zaWduZWQgaW50IGk7CisKKwlpZiAoIW9iai0+bW0ubl9wbGFjZW1lbnRz
KSB7CisJCXN3aXRjaCAodHlwZSkgeworCQljYXNlIElOVEVMX01FTU9SWV9MT0NBTDoKKwkJCXJl
dHVybiBpOTE1X2dlbV9vYmplY3RfaGFzX2lvbWVtKG9iaik7CisJCWNhc2UgSU5URUxfTUVNT1JZ
X1NZU1RFTToKKwkJCXJldHVybiBpOTE1X2dlbV9vYmplY3RfaGFzX3BhZ2VzKG9iaik7CisJCWRl
ZmF1bHQ6CisJCQkvKiBJZ25vcmUgc3RvbGVuIGZvciBub3cgKi8KKwkJCUdFTV9CVUdfT04oMSk7
CisJCQlyZXR1cm4gZmFsc2U7CisJCX0KKwl9CisKKwlmb3IgKGkgPSAwOyBpIDwgb2JqLT5tbS5u
X3BsYWNlbWVudHM7IGkrKykgeworCQlpZiAob2JqLT5tbS5wbGFjZW1lbnRzW2ldLT50eXBlID09
IHR5cGUpCisJCQlyZXR1cm4gdHJ1ZTsKKwl9CisKKwlyZXR1cm4gZmFsc2U7Cit9CisKIHZvaWQg
aTkxNV9nZW1faW5pdF9fb2JqZWN0cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIHsK
IAlJTklUX1dPUksoJmk5MTUtPm1tLmZyZWVfd29yaywgX19pOTE1X2dlbV9mcmVlX3dvcmspOwpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oCmluZGV4IGQ0MjNkOGNh
YzRmMi4uOGJlNGZhZGVlZTQ4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fb2JqZWN0LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X29iamVjdC5oCkBAIC0xMiw2ICsxMiw3IEBACiAjaW5jbHVkZSA8ZHJtL2RybV9kZXZpY2UuaD4K
IAogI2luY2x1ZGUgImRpc3BsYXkvaW50ZWxfZnJvbnRidWZmZXIuaCIKKyNpbmNsdWRlICJpbnRl
bF9tZW1vcnlfcmVnaW9uLmgiCiAjaW5jbHVkZSAiaTkxNV9nZW1fb2JqZWN0X3R5cGVzLmgiCiAj
aW5jbHVkZSAiaTkxNV9nZW1fZ3R0LmgiCiAjaW5jbHVkZSAiaTkxNV9nZW1fd3cuaCIKQEAgLTYw
Nyw2ICs2MDgsOSBAQCBib29sIGk5MTVfZ2VtX29iamVjdF9jYW5fbWlncmF0ZShzdHJ1Y3QgZHJt
X2k5MTVfZ2VtX29iamVjdCAqb2JqLAogaW50IGk5MTVfZ2VtX29iamVjdF93YWl0X21pZ3JhdGlv
bihzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAogCQkJCSAgIHVuc2lnbmVkIGludCBm
bGFncyk7CiAKK2Jvb2wgaTkxNV9nZW1fb2JqZWN0X3BsYWNlbWVudF9wb3NzaWJsZShzdHJ1Y3Qg
ZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAorCQkJCQllbnVtIGludGVsX21lbW9yeV90eXBlIHR5
cGUpOworCiAjaWZkZWYgQ09ORklHX01NVV9OT1RJRklFUgogc3RhdGljIGlubGluZSBib29sCiBp
OTE1X2dlbV9vYmplY3RfaXNfdXNlcnB0cihzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2Jq
KQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BhZ2VzLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcGFnZXMuYwppbmRleCBmMmY4NTBl
MzFiOGUuLjgxMGExNTdhMThmOCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX3BhZ2VzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X3BhZ2VzLmMKQEAgLTMyMSw4ICszMjEsNyBAQCBzdGF0aWMgdm9pZCAqaTkxNV9nZW1fb2JqZWN0
X21hcF9wZm4oc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKIAlkbWFfYWRkcl90IGFk
ZHI7CiAJdm9pZCAqdmFkZHI7CiAKLQlpZiAodHlwZSAhPSBJOTE1X01BUF9XQykKLQkJcmV0dXJu
IEVSUl9QVFIoLUVOT0RFVik7CisJR0VNX0JVR19PTih0eXBlICE9IEk5MTVfTUFQX1dDKTsKIAog
CWlmIChuX3BmbiA+IEFSUkFZX1NJWkUoc3RhY2spKSB7CiAJCS8qIFRvbyBiaWcgZm9yIHN0YWNr
IC0tIGFsbG9jYXRlIHRlbXBvcmFyeSBhcnJheSBpbnN0ZWFkICovCkBAIC0zNzQsNiArMzczLDI1
IEBAIHZvaWQgKmk5MTVfZ2VtX29iamVjdF9waW5fbWFwKHN0cnVjdCBkcm1faTkxNV9nZW1fb2Jq
ZWN0ICpvYmosCiAJfQogCUdFTV9CVUdfT04oIWk5MTVfZ2VtX29iamVjdF9oYXNfcGFnZXMob2Jq
KSk7CiAKKwkvKgorCSAqIEZvciBkaXNjcmV0ZSBvdXIgQ1BVIG1hcHBpbmdzIG5lZWRzIHRvIGJl
IGNvbnNpc3RlbnQgaW4gb3JkZXIgdG8KKwkgKiBmdW5jdGlvbiBjb3JyZWN0bHkgb24gIXg4Ni4g
V2hlbiBtYXBwaW5nIHRoaW5ncyB0aHJvdWdoIFRUTSwgd2UgdXNlCisJICogdGhlIHNhbWUgcnVs
ZXMgdG8gZGV0ZXJtaW5lIHRoZSBjYWNoaW5nIHR5cGUuCisJICoKKwkgKiBJbnRlcm5hbCB1c2Vy
cyBvZiBsbWVtIGFyZSBhbHJlYWR5IGV4cGVjdGVkIHRvIGdldCB0aGlzIHJpZ2h0LCBzbyBubwor
CSAqIGZ1ZGdpbmcgbmVlZGVkIHRoZXJlLgorCSAqLworCWlmIChpOTE1X2dlbV9vYmplY3RfcGxh
Y2VtZW50X3Bvc3NpYmxlKG9iaiwgSU5URUxfTUVNT1JZX0xPQ0FMKSkgeworCQlpZiAodHlwZSAh
PSBJOTE1X01BUF9XQyAmJiAhb2JqLT5tbS5uX3BsYWNlbWVudHMpIHsKKwkJCXB0ciA9IEVSUl9Q
VFIoLUVOT0RFVik7CisJCQlnb3RvIGVycl91bnBpbjsKKwkJfQorCisJCXR5cGUgPSBJOTE1X01B
UF9XQzsKKwl9IGVsc2UgaWYgKElTX0RHRlgodG9faTkxNShvYmotPmJhc2UuZGV2KSkpIHsKKwkJ
dHlwZSA9IEk5MTVfTUFQX1dCOworCX0KKwogCXB0ciA9IHBhZ2VfdW5wYWNrX2JpdHMob2JqLT5t
bS5tYXBwaW5nLCAmaGFzX3R5cGUpOwogCWlmIChwdHIgJiYgaGFzX3R5cGUgIT0gdHlwZSkgewog
CQlpZiAocGlubmVkKSB7Ci0tIAoyLjI2LjMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeAo=
