Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 967223B9725
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jul 2021 22:20:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E45AD6EB89;
	Thu,  1 Jul 2021 20:20:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4D116E0B8;
 Thu,  1 Jul 2021 20:20:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10032"; a="272469696"
X-IronPort-AV: E=Sophos;i="5.83,315,1616482800"; d="scan'208";a="272469696"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2021 13:20:21 -0700
X-IronPort-AV: E=Sophos;i="5.83,315,1616482800"; d="scan'208";a="448041870"
Received: from awvttdev-05.aw.intel.com ([10.228.212.156])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2021 13:20:20 -0700
From: "Michael J. Ruhl" <michael.j.ruhl@intel.com>
To: michael.j.ruhl@intel.com, daniel@ffwll.ch,
 thomas.hellstrom@linux.intel.com, ckoenig.leichtzumerken@gmail.com,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 matthew.auld@intel.com, maarten.lankhorst@linux.intel.com
Date: Thu,  1 Jul 2021 16:20:13 -0400
Message-Id: <20210701202014.910098-1-michael.j.ruhl@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v1 1/2] drm/i915/gem: Correct the locking and
 pin pattern for dma-buf
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29t
PgoKSWYgb3VyIGV4cG9ydGVkIGRtYS1idWZzIGFyZSBpbXBvcnRlZCBieSBhbm90aGVyIGluc3Rh
bmNlIG9mIG91ciBkcml2ZXIsCnRoYXQgaW5zdGFuY2Ugd2lsbCB0eXBpY2FsbHkgaGF2ZSB0aGUg
aW1wb3J0ZWQgZG1hLWJ1ZnMgbG9ja2VkIGR1cmluZwpkbWFfYnVmX21hcF9hdHRhY2htZW50KCku
IEJ1dCB0aGUgZXhwb3J0ZXIgYWxzbyBsb2NrcyB0aGUgc2FtZSByZXNlcnZhdGlvbgpvYmplY3Qg
aW4gdGhlIG1hcF9kbWFfYnVmKCkgY2FsbGJhY2ssIHdoaWNoIGxlYWRzIHRvIHJlY3Vyc2l2ZSBs
b2NraW5nLgoKU28gdGFraW5nIHRoZSBsb2NrIGluc2lkZSBfcGluX3BhZ2VzX3VubG9ja2VkKCkg
aXMgaW5jb3JyZWN0LgoKQWRkaXRpb25hbGx5LCB0aGUgY3VycmVudCBwaW5uaW5nIGNvZGUgcGF0
aCBpcyBjb250cmFyeSB0byB0aGUgZGVmaW5lZAp3YXkgdGhhdCBwaW5uaW5nIHNob3VsZCBvY2N1
ci4KClJlbW92ZSB0aGUgZXhwbGljaXQgcGluL3VucGluIGZyb20gdGhlIG1hcC91bWFwIGZ1bmN0
aW9ucyBhbmQgbW92ZSB0aGVtCnRvIHRoZSBhdHRhY2gvZGV0YWNoIGFsbG93aW5nIGNvcnJlY3Qg
bG9ja2luZyB0byBvY2N1ciwgYW5kIHRvIG1hdGNoCnRoZSBzdGF0aWMgZG1hLWJ1ZiBkcm1fcHJp
bWUgcGF0dGVybi4KCkFkZCBhIGxpdmUgc2VsZnRlc3QgdG8gZXhlcmNpc2UgYm90aCBkeW5hbWlj
IGFuZCBub24tZHluYW1pYwpleHBvcnRzLgoKdjI6Ci0gRXh0ZW5kIHRoZSBzZWxmdGVzdCB3aXRo
IGEgZmFrZSBkeW5hbWljIGltcG9ydGVyLgotIFByb3ZpZGUgcmVhbCBwaW4gYW5kIHVucGluIGNh
bGxiYWNrcyB0byBub3QgYWJ1c2UgdGhlIGludGVyZmFjZS4KdjM6IChydWhsKQotIFJlbW92ZSB0
aGUgZHluYW1pYyBleHBvcnQgc3VwcG9ydCBhbmQgbW92ZSB0aGUgcGlubmluZyBpbnRvIHRoZQog
IGF0dGFjaC9kZXRhY2ggcGF0aC4KdjQ6IChydWhsKQotIFB1dCBwYWdlcyBkb2VzIG5vdCBuZWVk
IHRvIGFzc2VydCBvbiB0aGUgZG1hLXJlc3YKClJlcG9ydGVkLWJ5OiBNaWNoYWVsIEouIFJ1aGwg
PG1pY2hhZWwuai5ydWhsQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogVGhvbWFzIEhlbGxzdHLD
tm0gPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBNaWNo
YWVsIEouIFJ1aGwgPG1pY2hhZWwuai5ydWhsQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fZG1hYnVmLmMgICAgfCAgNDQgKysrKystLQogLi4uL2RybS9p
OTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fZG1hYnVmLmMgIHwgMTE2ICsrKysrKysrKysrKysr
KysrLQogMiBmaWxlcyBjaGFuZ2VkLCAxNDYgaW5zZXJ0aW9ucygrKSwgMTQgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RtYWJ1Zi5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RtYWJ1Zi5jCmluZGV4IDYxNmMz
YTJmMWJhZi4uY2NhZTE3ZDVmNDQxIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fZG1hYnVmLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX2RtYWJ1Zi5jCkBAIC0xMiw2ICsxMiw4IEBACiAjaW5jbHVkZSAiaTkxNV9nZW1fb2JqZWN0
LmgiCiAjaW5jbHVkZSAiaTkxNV9zY2F0dGVybGlzdC5oIgogCitJOTE1X1NFTEZURVNUX0RFQ0xB
UkUoc3RhdGljIGJvb2wgZm9yY2VfZGlmZmVyZW50X2RldmljZXM7KQorCiBzdGF0aWMgc3RydWN0
IGRybV9pOTE1X2dlbV9vYmplY3QgKmRtYV9idWZfdG9fb2JqKHN0cnVjdCBkbWFfYnVmICpidWYp
CiB7CiAJcmV0dXJuIHRvX2ludGVsX2JvKGJ1Zi0+cHJpdik7CkBAIC0yNSwxNSArMjcsMTEgQEAg
c3RhdGljIHN0cnVjdCBzZ190YWJsZSAqaTkxNV9nZW1fbWFwX2RtYV9idWYoc3RydWN0IGRtYV9i
dWZfYXR0YWNobWVudCAqYXR0YWNobWUKIAlzdHJ1Y3Qgc2NhdHRlcmxpc3QgKnNyYywgKmRzdDsK
IAlpbnQgcmV0LCBpOwogCi0JcmV0ID0gaTkxNV9nZW1fb2JqZWN0X3Bpbl9wYWdlc191bmxvY2tl
ZChvYmopOwotCWlmIChyZXQpCi0JCWdvdG8gZXJyOwotCiAJLyogQ29weSBzZyBzbyB0aGF0IHdl
IG1ha2UgYW4gaW5kZXBlbmRlbnQgbWFwcGluZyAqLwogCXN0ID0ga21hbGxvYyhzaXplb2Yoc3Ry
dWN0IHNnX3RhYmxlKSwgR0ZQX0tFUk5FTCk7CiAJaWYgKHN0ID09IE5VTEwpIHsKIAkJcmV0ID0g
LUVOT01FTTsKLQkJZ290byBlcnJfdW5waW5fcGFnZXM7CisJCWdvdG8gZXJyOwogCX0KIAogCXJl
dCA9IHNnX2FsbG9jX3RhYmxlKHN0LCBvYmotPm1tLnBhZ2VzLT5uZW50cywgR0ZQX0tFUk5FTCk7
CkBAIC01OCw4ICs1Niw2IEBAIHN0YXRpYyBzdHJ1Y3Qgc2dfdGFibGUgKmk5MTVfZ2VtX21hcF9k
bWFfYnVmKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaG1lCiAJc2dfZnJlZV90YWJs
ZShzdCk7CiBlcnJfZnJlZToKIAlrZnJlZShzdCk7Ci1lcnJfdW5waW5fcGFnZXM6Ci0JaTkxNV9n
ZW1fb2JqZWN0X3VucGluX3BhZ2VzKG9iaik7CiBlcnI6CiAJcmV0dXJuIEVSUl9QVFIocmV0KTsK
IH0KQEAgLTY4LDEzICs2NCw5IEBAIHN0YXRpYyB2b2lkIGk5MTVfZ2VtX3VubWFwX2RtYV9idWYo
c3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNobWVudCwKIAkJCQkgICBzdHJ1Y3Qgc2df
dGFibGUgKnNnLAogCQkJCSAgIGVudW0gZG1hX2RhdGFfZGlyZWN0aW9uIGRpcikKIHsKLQlzdHJ1
Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqID0gZG1hX2J1Zl90b19vYmooYXR0YWNobWVudC0+
ZG1hYnVmKTsKLQogCWRtYV91bm1hcF9zZ3RhYmxlKGF0dGFjaG1lbnQtPmRldiwgc2csIGRpciwg
RE1BX0FUVFJfU0tJUF9DUFVfU1lOQyk7CiAJc2dfZnJlZV90YWJsZShzZyk7CiAJa2ZyZWUoc2cp
OwotCi0JaTkxNV9nZW1fb2JqZWN0X3VucGluX3BhZ2VzKG9iaik7CiB9CiAKIHN0YXRpYyBpbnQg
aTkxNV9nZW1fZG1hYnVmX3ZtYXAoc3RydWN0IGRtYV9idWYgKmRtYV9idWYsIHN0cnVjdCBkbWFf
YnVmX21hcCAqbWFwKQpAQCAtMTY4LDcgKzE2MCwzMiBAQCBzdGF0aWMgaW50IGk5MTVfZ2VtX2Vu
ZF9jcHVfYWNjZXNzKHN0cnVjdCBkbWFfYnVmICpkbWFfYnVmLCBlbnVtIGRtYV9kYXRhX2RpcmVj
dAogCXJldHVybiBlcnI7CiB9CiAKKy8qKgorICogaTkxNV9nZW1fZG1hYnVmX2F0dGFjaCAtIERv
IGFueSBleHRyYSBhdHRhY2ggd29yayBuZWNlc3NhcnkKKyAqIEBkbWFidWY6IGltcG9ydGVkIGRt
YS1idWYKKyAqIEBhdHRhY2g6IG5ldyBhdHRhY2ggdG8gZG8gd29yayBvbgorICoKKyAqLworc3Rh
dGljIGludCBpOTE1X2dlbV9kbWFidWZfYXR0YWNoKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsCisJ
CQkJICBzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2gpCit7CisJc3RydWN0IGRybV9p
OTE1X2dlbV9vYmplY3QgKm9iaiA9IGRtYV9idWZfdG9fb2JqKGRtYWJ1Zik7CisKKwlhc3NlcnRf
b2JqZWN0X2hlbGQob2JqKTsKKwlyZXR1cm4gaTkxNV9nZW1fb2JqZWN0X3Bpbl9wYWdlcyhvYmop
OworfQorCitzdGF0aWMgdm9pZCBpOTE1X2dlbV9kbWFidWZfZGV0YWNoKHN0cnVjdCBkbWFfYnVm
ICpkbWFidWYsCisJCQkJICAgc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoKQorewor
CXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmogPSBkbWFfYnVmX3RvX29iaihkbWFidWYp
OworCisJaTkxNV9nZW1fb2JqZWN0X3VucGluX3BhZ2VzKG9iaik7Cit9CisKIHN0YXRpYyBjb25z
dCBzdHJ1Y3QgZG1hX2J1Zl9vcHMgaTkxNV9kbWFidWZfb3BzID0gIHsKKwkuYXR0YWNoID0gaTkx
NV9nZW1fZG1hYnVmX2F0dGFjaCwKKwkuZGV0YWNoID0gaTkxNV9nZW1fZG1hYnVmX2RldGFjaCwK
IAkubWFwX2RtYV9idWYgPSBpOTE1X2dlbV9tYXBfZG1hX2J1ZiwKIAkudW5tYXBfZG1hX2J1ZiA9
IGk5MTVfZ2VtX3VubWFwX2RtYV9idWYsCiAJLnJlbGVhc2UgPSBkcm1fZ2VtX2RtYWJ1Zl9yZWxl
YXNlLApAQCAtMjA0LDYgKzIyMSw4IEBAIHN0YXRpYyBpbnQgaTkxNV9nZW1fb2JqZWN0X2dldF9w
YWdlc19kbWFidWYoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaikKIAlzdHJ1Y3Qgc2df
dGFibGUgKnBhZ2VzOwogCXVuc2lnbmVkIGludCBzZ19wYWdlX3NpemVzOwogCisJYXNzZXJ0X29i
amVjdF9oZWxkKG9iaik7CisKIAlwYWdlcyA9IGRtYV9idWZfbWFwX2F0dGFjaG1lbnQob2JqLT5i
YXNlLmltcG9ydF9hdHRhY2gsCiAJCQkJICAgICAgIERNQV9CSURJUkVDVElPTkFMKTsKIAlpZiAo
SVNfRVJSKHBhZ2VzKSkKQEAgLTI0MSw3ICsyNjAsOCBAQCBzdHJ1Y3QgZHJtX2dlbV9vYmplY3Qg
Kmk5MTVfZ2VtX3ByaW1lX2ltcG9ydChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAogCWlmIChkbWFf
YnVmLT5vcHMgPT0gJmk5MTVfZG1hYnVmX29wcykgewogCQlvYmogPSBkbWFfYnVmX3RvX29iaihk
bWFfYnVmKTsKIAkJLyogaXMgaXQgZnJvbSBvdXIgZGV2aWNlPyAqLwotCQlpZiAob2JqLT5iYXNl
LmRldiA9PSBkZXYpIHsKKwkJaWYgKG9iai0+YmFzZS5kZXYgPT0gZGV2ICYmCisJCSAgICAhSTkx
NV9TRUxGVEVTVF9PTkxZKGZvcmNlX2RpZmZlcmVudF9kZXZpY2VzKSkgewogCQkJLyoKIAkJCSAq
IEltcG9ydGluZyBkbWFidWYgZXhwb3J0ZWQgZnJvbSBvdXQgb3duIGdlbSBpbmNyZWFzZXMKIAkJ
CSAqIHJlZmNvdW50IG9uIGdlbSBpdHNlbGYgaW5zdGVhZCBvZiBmX2NvdW50IG9mIGRtYWJ1Zi4K
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1f
ZG1hYnVmLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2Rt
YWJ1Zi5jCmluZGV4IGRkNzRiYzA5ZWM4OC4uODY4YjM0NjllY2JkIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2RtYWJ1Zi5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fZG1hYnVmLmMKQEAgLTM1
LDcgKzM1LDcgQEAgc3RhdGljIGludCBpZ3RfZG1hYnVmX2V4cG9ydCh2b2lkICphcmcpCiBzdGF0
aWMgaW50IGlndF9kbWFidWZfaW1wb3J0X3NlbGYodm9pZCAqYXJnKQogewogCXN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1ID0gYXJnOwotCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpv
Ymo7CisJc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwgKmltcG9ydF9vYmo7CiAJc3Ry
dWN0IGRybV9nZW1fb2JqZWN0ICppbXBvcnQ7CiAJc3RydWN0IGRtYV9idWYgKmRtYWJ1ZjsKIAlp
bnQgZXJyOwpAQCAtNjUsMTQgKzY1LDEyNSBAQCBzdGF0aWMgaW50IGlndF9kbWFidWZfaW1wb3J0
X3NlbGYodm9pZCAqYXJnKQogCQllcnIgPSAtRUlOVkFMOwogCQlnb3RvIG91dF9pbXBvcnQ7CiAJ
fQorCWltcG9ydF9vYmogPSB0b19pbnRlbF9ibyhpbXBvcnQpOworCisJaTkxNV9nZW1fb2JqZWN0
X2xvY2soaW1wb3J0X29iaiwgTlVMTCk7CisJZXJyID0gX19fX2k5MTVfZ2VtX29iamVjdF9nZXRf
cGFnZXMoaW1wb3J0X29iaik7CisJaTkxNV9nZW1fb2JqZWN0X3VubG9jayhpbXBvcnRfb2JqKTsK
KwlpZiAoZXJyKSB7CisJCXByX2VycigiU2FtZSBvYmplY3QgZG1hLWJ1ZiBnZXRfcGFnZXMgZmFp
bGVkIVxuIik7CisJCWdvdG8gb3V0X2ltcG9ydDsKKwl9CiAKIAllcnIgPSAwOwogb3V0X2ltcG9y
dDoKLQlpOTE1X2dlbV9vYmplY3RfcHV0KHRvX2ludGVsX2JvKGltcG9ydCkpOworCWk5MTVfZ2Vt
X29iamVjdF9wdXQoaW1wb3J0X29iaik7CitvdXRfZG1hYnVmOgorCWRtYV9idWZfcHV0KGRtYWJ1
Zik7CitvdXQ6CisJaTkxNV9nZW1fb2JqZWN0X3B1dChvYmopOworCXJldHVybiBlcnI7Cit9CisK
K3N0YXRpYyB2b2lkIGlndF9kbWFidWZfbW92ZV9ub3RpZnkoc3RydWN0IGRtYV9idWZfYXR0YWNo
bWVudCAqYXR0YWNoKQoreworCUdFTV9XQVJOX09OKDEpOworfQorCitzdGF0aWMgY29uc3Qgc3Ry
dWN0IGRtYV9idWZfYXR0YWNoX29wcyBpZ3RfZG1hYnVmX2F0dGFjaF9vcHMgPSB7CisJLm1vdmVf
bm90aWZ5ID0gaWd0X2RtYWJ1Zl9tb3ZlX25vdGlmeSwKK307CisKK3N0YXRpYyBpbnQgaWd0X2Rt
YWJ1Zl9pbXBvcnRfc2FtZV9kcml2ZXIodm9pZCAqYXJnKQoreworCXN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICppOTE1ID0gYXJnOworCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosICpp
bXBvcnRfb2JqOworCXN0cnVjdCBkcm1fZ2VtX29iamVjdCAqaW1wb3J0OworCXN0cnVjdCBkbWFf
YnVmICpkbWFidWY7CisJc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqaW1wb3J0X2F0dGFjaDsK
KwlzdHJ1Y3Qgc2dfdGFibGUgKnN0OworCWxvbmcgdGltZW91dDsKKwlpbnQgZXJyOworCisJZm9y
Y2VfZGlmZmVyZW50X2RldmljZXMgPSB0cnVlOworCW9iaiA9IGk5MTVfZ2VtX29iamVjdF9jcmVh
dGVfc2htZW0oaTkxNSwgUEFHRV9TSVpFKTsKKwlpZiAoSVNfRVJSKG9iaikpCisJCWdvdG8gb3V0
X3JldDsKKworCWRtYWJ1ZiA9IGk5MTVfZ2VtX3ByaW1lX2V4cG9ydCgmb2JqLT5iYXNlLCAwKTsK
KwlpZiAoSVNfRVJSKGRtYWJ1ZikpIHsKKwkJcHJfZXJyKCJpOTE1X2dlbV9wcmltZV9leHBvcnQg
ZmFpbGVkIHdpdGggZXJyPSVkXG4iLAorCQkgICAgICAgKGludClQVFJfRVJSKGRtYWJ1ZikpOwor
CQllcnIgPSBQVFJfRVJSKGRtYWJ1Zik7CisJCWdvdG8gb3V0OworCX0KKworCWltcG9ydCA9IGk5
MTVfZ2VtX3ByaW1lX2ltcG9ydCgmaTkxNS0+ZHJtLCBkbWFidWYpOworCWlmIChJU19FUlIoaW1w
b3J0KSkgeworCQlwcl9lcnIoImk5MTVfZ2VtX3ByaW1lX2ltcG9ydCBmYWlsZWQgd2l0aCBlcnI9
JWRcbiIsCisJCSAgICAgICAoaW50KVBUUl9FUlIoaW1wb3J0KSk7CisJCWVyciA9IFBUUl9FUlIo
aW1wb3J0KTsKKwkJZ290byBvdXRfZG1hYnVmOworCX0KKworCWlmIChpbXBvcnQgPT0gJm9iai0+
YmFzZSkgeworCQlwcl9lcnIoImk5MTVfZ2VtX3ByaW1lX2ltcG9ydCByZXVzZWQgZ2VtIG9iamVj
dCFcbiIpOworCQllcnIgPSAtRUlOVkFMOworCQlnb3RvIG91dF9pbXBvcnQ7CisJfQorCisJaW1w
b3J0X29iaiA9IHRvX2ludGVsX2JvKGltcG9ydCk7CisKKwlpOTE1X2dlbV9vYmplY3RfbG9jayhp
bXBvcnRfb2JqLCBOVUxMKTsKKwllcnIgPSBfX19faTkxNV9nZW1fb2JqZWN0X2dldF9wYWdlcyhp
bXBvcnRfb2JqKTsKKwlpZiAoZXJyKSB7CisJCXByX2VycigiRGlmZmVyZW50IG9iamVjdHMgZG1h
LWJ1ZiBnZXRfcGFnZXMgZmFpbGVkIVxuIik7CisJCWk5MTVfZ2VtX29iamVjdF91bmxvY2soaW1w
b3J0X29iaik7CisJCWdvdG8gb3V0X2ltcG9ydDsKKwl9CisKKwkvKgorCSAqIElmIHRoZSBleHBv
cnRlZCBvYmplY3QgaXMgbm90IGluIHN5c3RlbSBtZW1vcnksIHNvbWV0aGluZworCSAqIHdlaXJk
IGlzIGdvaW5nIG9uLiBUT0RPOiBXaGVuIHAycCBpcyBzdXBwb3J0ZWQsIHRoaXMgaXMgbm8KKwkg
KiBsb25nZXIgY29uc2lkZXJlZCB3ZWlyZC4KKwkgKi8KKwlpZiAob2JqLT5tbS5yZWdpb24gIT0g
aTkxNS0+bW0ucmVnaW9uc1tJTlRFTF9SRUdJT05fU01FTV0pIHsKKwkJcHJfZXJyKCJFeHBvcnRl
ZCBkbWEtYnVmIGlzIG5vdCBpbiBzeXN0ZW0gbWVtb3J5XG4iKTsKKwkJZXJyID0gLUVJTlZBTDsK
Kwl9CisKKwlpOTE1X2dlbV9vYmplY3RfdW5sb2NrKGltcG9ydF9vYmopOworCisJLyogTm93IHRy
eSBhIGZha2UgZHluYW1pYyBpbXBvcnRlciAqLworCWltcG9ydF9hdHRhY2ggPSBkbWFfYnVmX2R5
bmFtaWNfYXR0YWNoKGRtYWJ1Ziwgb2JqLT5iYXNlLmRldi0+ZGV2LAorCQkJCQkgICAgICAgJmln
dF9kbWFidWZfYXR0YWNoX29wcywKKwkJCQkJICAgICAgIE5VTEwpOworCWlmIChJU19FUlIoaW1w
b3J0X2F0dGFjaCkpCisJCWdvdG8gb3V0X2ltcG9ydDsKKworCWRtYV9yZXN2X2xvY2soZG1hYnVm
LT5yZXN2LCBOVUxMKTsKKwlzdCA9IGRtYV9idWZfbWFwX2F0dGFjaG1lbnQoaW1wb3J0X2F0dGFj
aCwgRE1BX0JJRElSRUNUSU9OQUwpOworCWRtYV9yZXN2X3VubG9jayhkbWFidWYtPnJlc3YpOwor
CWlmIChJU19FUlIoc3QpKQorCQlnb3RvIG91dF9kZXRhY2g7CisKKwl0aW1lb3V0ID0gZG1hX3Jl
c3Zfd2FpdF90aW1lb3V0KGRtYWJ1Zi0+cmVzdiwgZmFsc2UsIHRydWUsIDUgKiBIWik7CisJaWYg
KCF0aW1lb3V0KSB7CisJCXByX2VycigiZG1hYnVmIHdhaXQgZm9yIGV4Y2x1c2l2ZSBmZW5jZSB0
aW1lZCBvdXQuXG4iKTsKKwkJdGltZW91dCA9IC1FVElNRTsKKwl9CisJZXJyID0gdGltZW91dCA+
IDAgPyAwIDogdGltZW91dDsKKwlkbWFfYnVmX3VubWFwX2F0dGFjaG1lbnQoaW1wb3J0X2F0dGFj
aCwgc3QsIERNQV9CSURJUkVDVElPTkFMKTsKK291dF9kZXRhY2g6CisJZG1hX2J1Zl9kZXRhY2go
ZG1hYnVmLCBpbXBvcnRfYXR0YWNoKTsKK291dF9pbXBvcnQ6CisJaTkxNV9nZW1fb2JqZWN0X3B1
dChpbXBvcnRfb2JqKTsKIG91dF9kbWFidWY6CiAJZG1hX2J1Zl9wdXQoZG1hYnVmKTsKIG91dDoK
IAlpOTE1X2dlbV9vYmplY3RfcHV0KG9iaik7CitvdXRfcmV0OgorCWZvcmNlX2RpZmZlcmVudF9k
ZXZpY2VzID0gZmFsc2U7CiAJcmV0dXJuIGVycjsKIH0KIApAQCAtMjg2LDYgKzM5Nyw3IEBAIGlu
dCBpOTE1X2dlbV9kbWFidWZfbGl2ZV9zZWxmdGVzdHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUpCiB7CiAJc3RhdGljIGNvbnN0IHN0cnVjdCBpOTE1X3N1YnRlc3QgdGVzdHNbXSA9IHsK
IAkJU1VCVEVTVChpZ3RfZG1hYnVmX2V4cG9ydCksCisJCVNVQlRFU1QoaWd0X2RtYWJ1Zl9pbXBv
cnRfc2FtZV9kcml2ZXIpLAogCX07CiAKIAlyZXR1cm4gaTkxNV9zdWJ0ZXN0cyh0ZXN0cywgaTkx
NSk7Ci0tIAoyLjMxLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeAo=
