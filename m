Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7E7FA73BA
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2019 21:33:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23F67897DC;
	Tue,  3 Sep 2019 19:33:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5918B897DC
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2019 19:33:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Sep 2019 12:33:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,464,1559545200"; d="scan'208";a="176693393"
Received: from genxfsim-shark-bay-client-platform.iind.intel.com
 ([10.223.34.144])
 by orsmga008.jf.intel.com with ESMTP; 03 Sep 2019 12:33:08 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Sep 2019 00:52:53 +0530
Message-Id: <1567538578-4489-4-git-send-email-swati2.sharma@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1567538578-4489-1-git-send-email-swati2.sharma@intel.com>
References: <1567538578-4489-1-git-send-email-swati2.sharma@intel.com>
Subject: [Intel-gfx] [v10][PATCH 3/8] drm/i915/display: Add func to compare
 hw/sw gamma lut
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
Cc: jani.nikula@intel.com, daniel.vetter@ffwll.ch, ankit.k.nautiyal@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWRkIGZ1bmMgaW50ZWxfY29sb3JfbHV0X2VxdWFsKCkgdG8gY29tcGFyZSBody9zdyBnYW1tYQps
dXQgdmFsdWVzLiBTaW5jZSBody9zdyBnYW1tYSBsdXQgc2l6ZXMgYW5kIGx1dCBlbnRyaWVzIGNv
bXBhcmlzb24Kd2lsbCBiZSBkaWZmZXJlbnQgZm9yIGRpZmZlcmVudCBnYW1tYSBtb2RlcywgYWRk
IGdhbW1hIG1vZGUgZGVwZW5kZW50CmNoZWNrcy4KCnYzOiAgLVJlYmFzZQp2NDogIC1SZW5hbWVk
IGludGVsX2NvbXBhcmVfY29sb3JfbHV0KCkgdG8gaW50ZWxfY29sb3JfbHV0X2VxdWFsKCkgW0ph
bmldCiAgICAgLUFkZGVkIHRoZSBkZWZhdWx0IGxhYmVsIGFib3ZlIHRoZSBjb3JyZWN0IGxhYmVs
IFtKYW5pXQogICAgIC1Db3JyZWN0ZWQgc21hdGNoIHdhcm4gInZhcmlhYmxlIGRlcmVmZXJlbmNl
ZCBiZWZvcmUgY2hlY2siCiAgICAgIFtEYW4gQ2FycGVudGVyXQp2NTogIC1BZGRlZCBjb25kaXRp
b24gKCFibG9iMSAmJiAhYmxvYjIpIHJldHVybiB0cnVlIFtKYW5pXQp2NjogIC1NYWRlIHBhdGNo
MTEgYXMgcGF0Y2gzIFtKYW5pXQp2ODogIC1TcGxpdCBwYXRjaCAzIGludG8gNCBwYXRjaGVzCiAg
ICAgLU9wdGltaXplZCBibG9iIGNoZWNrIGNvbmRpdGlvbiBbVmlsbGVdCnY5OiAgLUV4Y2x1ZGUg
c3BpbHQgZ2FtbWEgbW9kZSAoYmR3IGFuZCBpdmIgcGxhdGZvcm1zKQogICAgICBhcyB0aGVyZSBp
cyBleGNlcHRpb24gaW4gd2F5IGdhbW1hIHZhbHVlcyBhcmUgd3JpdHRlbiBpbgogICAgICBoYXJk
d2FyZSBbVmlsbGVdCiAgICAgLUFkZGVkIGV4Y2VwdGlvbiBtYWRlIGluIGNvbW1pdCBbVW1hXQog
ICAgIC1Ecm9wcGVkIGVsc2UsIGNoYXJhY3RlciBsaW1pdCBhbmQgaW5kZW50YXRpb24gW1VtYV0K
ICAgICAtQWRkZWQgbXVsdGkgc2VnbWVudGVkIGdhbWEgbW9kZSBmb3IgaWNsKyBwbGF0Zm9ybXMg
W1VtYV0KdjEwOiAtRHJvcHBlZCBtdWx0aSBzZWdtZW50ZWQgbW9kZSBmb3IgaWNsKyBwbGF0Zm9y
bXMgW0phbmldCiAgICAgLVJlbW92ZWQgcmVmZXJlbmNlcyBvZiBzdyBhbmQgaHcgc3RhdGUgaW4g
Y29tcGFyZSBjb2RlIFtKYW5pXQogICAgIC1Ecm9wcGVkIGlubGluZSBmcm9tIGZ1bmMgW0phbmld
CgpTaWduZWQtb2ZmLWJ5OiBTd2F0aSBTaGFybWEgPHN3YXRpMi5zaGFybWFAaW50ZWwuY29tPgot
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYyB8IDcyICsrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9jb2xvci5oIHwgIDYgKysrCiAyIGZpbGVzIGNoYW5nZWQsIDc4IGluc2VydGlvbnMoKykK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMKaW5kZXggYjVjMGM2
NS4uMWFiNTYxZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9jb2xvci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3Iu
YwpAQCAtMTQzMSw2ICsxNDMxLDc4IEBAIGludCBpbnRlbF9jb2xvcl9nZXRfZ2FtbWFfYml0X3By
ZWNpc2lvbihjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0CiAJcmV0dXJu
IDA7CiB9CiAKK3N0YXRpYyBib29sIGVycl9jaGVjayhzdHJ1Y3QgZHJtX2NvbG9yX2x1dCAqbHV0
MSwKKwkJICAgICAgc3RydWN0IGRybV9jb2xvcl9sdXQgKmx1dDIsIHUzMiBlcnIpCit7CisJcmV0
dXJuICgoYWJzKChsb25nKWx1dDItPnJlZCAtIGx1dDEtPnJlZCkpIDw9IGVycikgJiYKKwkJKChh
YnMoKGxvbmcpbHV0Mi0+Ymx1ZSAtIGx1dDEtPmJsdWUpKSA8PSBlcnIpICYmCisJCSgoYWJzKChs
b25nKWx1dDItPmdyZWVuIC0gbHV0MS0+Z3JlZW4pKSA8PSBlcnIpOworfQorCitzdGF0aWMgYm9v
bCBpbnRlbF9jb2xvcl9sdXRfZW50cnlfZXF1YWwoc3RydWN0IGRybV9jb2xvcl9sdXQgKmx1dDEs
CisJCQkJCXN0cnVjdCBkcm1fY29sb3JfbHV0ICpsdXQyLAorCQkJCQlpbnQgbHV0X3NpemUsIHUz
MiBlcnIpCit7CisJaW50IGk7CisKKwlmb3IgKGkgPSAwOyBpIDwgbHV0X3NpemU7IGkrKykgewor
CQlpZiAoIWVycl9jaGVjaygmbHV0MVtpXSwgJmx1dDJbaV0sIGVycikpCisJCQlyZXR1cm4gZmFs
c2U7CisJfQorCisJcmV0dXJuIHRydWU7Cit9CisKK2Jvb2wgaW50ZWxfY29sb3JfbHV0X2VxdWFs
KHN0cnVjdCBkcm1fcHJvcGVydHlfYmxvYiAqYmxvYjEsCisJCQkgICBzdHJ1Y3QgZHJtX3Byb3Bl
cnR5X2Jsb2IgKmJsb2IyLAorCQkJICAgdTMyIGdhbW1hX21vZGUsIHUzMiBiaXRfcHJlY2lzaW9u
KQoreworCXN0cnVjdCBkcm1fY29sb3JfbHV0ICpsdXQxLCAqbHV0MjsKKwlpbnQgbHV0X3NpemUx
LCBsdXRfc2l6ZTI7CisJdTMyIGVycjsKKworCWlmICghYmxvYjEgIT0gIWJsb2IyKQorCQlyZXR1
cm4gZmFsc2U7CisKKwlpZiAoIWJsb2IxKQorCQlyZXR1cm4gdHJ1ZTsKKworCWx1dF9zaXplMSA9
IGRybV9jb2xvcl9sdXRfc2l6ZShibG9iMSk7CisJbHV0X3NpemUyID0gZHJtX2NvbG9yX2x1dF9z
aXplKGJsb2IyKTsKKworCS8qIGNoZWNrIHN3IGFuZCBodyBsdXQgc2l6ZSAqLworCXN3aXRjaCAo
Z2FtbWFfbW9kZSkgeworCWNhc2UgR0FNTUFfTU9ERV9NT0RFXzhCSVQ6CisJY2FzZSBHQU1NQV9N
T0RFX01PREVfMTBCSVQ6CisJCWlmIChsdXRfc2l6ZTEgIT0gbHV0X3NpemUyKQorCQkJcmV0dXJu
IGZhbHNlOworCQlicmVhazsKKwlkZWZhdWx0OgorCQlNSVNTSU5HX0NBU0UoZ2FtbWFfbW9kZSk7
CisJCQlyZXR1cm4gZmFsc2U7CisJfQorCisJbHV0MSA9IGJsb2IxLT5kYXRhOworCWx1dDIgPSBi
bG9iMi0+ZGF0YTsKKworCWVyciA9IDB4ZmZmZiA+PiBiaXRfcHJlY2lzaW9uOworCisJLyogY2hl
Y2sgc3cgYW5kIGh3IGx1dCBlbnRyeSB0byBiZSBlcXVhbCAqLworCXN3aXRjaCAoZ2FtbWFfbW9k
ZSkgeworCWNhc2UgR0FNTUFfTU9ERV9NT0RFXzhCSVQ6CisJY2FzZSBHQU1NQV9NT0RFX01PREVf
MTBCSVQ6CisJCWlmICghaW50ZWxfY29sb3JfbHV0X2VudHJ5X2VxdWFsKGx1dDEsIGx1dDIsCisJ
CQkJCQkgbHV0X3NpemUyLCBlcnIpKQorCQkJcmV0dXJuIGZhbHNlOworCQlicmVhazsKKwlkZWZh
dWx0OgorCQlNSVNTSU5HX0NBU0UoZ2FtbWFfbW9kZSk7CisJCQlyZXR1cm4gZmFsc2U7CisJfQor
CisJcmV0dXJuIHRydWU7Cit9CisKIHZvaWQgaW50ZWxfY29sb3JfaW5pdChzdHJ1Y3QgaW50ZWxf
Y3J0YyAqY3J0YykKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19p
OTE1KGNydGMtPmJhc2UuZGV2KTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfY29sb3IuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Y29sb3IuaAppbmRleCAwMjI2ZDNhLi4xNzM3MjdhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9jb2xvci5oCkBAIC02LDggKzYsMTEgQEAKICNpZm5kZWYgX19JTlRFTF9D
T0xPUl9IX18KICNkZWZpbmUgX19JTlRFTF9DT0xPUl9IX18KIAorI2luY2x1ZGUgPGxpbnV4L3R5
cGVzLmg+CisKIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlOwogc3RydWN0IGludGVsX2NydGM7Citz
dHJ1Y3QgZHJtX3Byb3BlcnR5X2Jsb2I7CiAKIHZvaWQgaW50ZWxfY29sb3JfaW5pdChzdHJ1Y3Qg
aW50ZWxfY3J0YyAqY3J0Yyk7CiBpbnQgaW50ZWxfY29sb3JfY2hlY2soc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUgKmNydGNfc3RhdGUpOwpAQCAtMTUsNSArMTgsOCBAQAogdm9pZCBpbnRlbF9jb2xv
cl9sb2FkX2x1dHMoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpOwog
dm9pZCBpbnRlbF9jb2xvcl9nZXRfY29uZmlnKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRj
X3N0YXRlKTsKIGludCBpbnRlbF9jb2xvcl9nZXRfZ2FtbWFfYml0X3ByZWNpc2lvbihjb25zdCBz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7Citib29sIGludGVsX2NvbG9yX2x1
dF9lcXVhbChzdHJ1Y3QgZHJtX3Byb3BlcnR5X2Jsb2IgKmJsb2IxLAorCQkJICAgc3RydWN0IGRy
bV9wcm9wZXJ0eV9ibG9iICpibG9iMiwKKwkJCSAgIHUzMiBnYW1tYV9tb2RlLCB1MzIgYml0X3By
ZWNpc2lvbik7CiAKICNlbmRpZiAvKiBfX0lOVEVMX0NPTE9SX0hfXyAqLwotLSAKMS45LjEKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
