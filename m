Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DEC1F167C9
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2019 18:26:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 232F66E801;
	Tue,  7 May 2019 16:25:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EF066E7FB;
 Tue,  7 May 2019 16:25:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 May 2019 09:25:52 -0700
X-ExtLoop1: 1
Received: from nuc.iind.intel.com ([10.99.66.149])
 by orsmga001.jf.intel.com with ESMTP; 07 May 2019 09:25:50 -0700
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 daniel.vetter@intel.com
Date: Tue,  7 May 2019 21:57:40 +0530
Message-Id: <20190507162745.25600-7-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190507162745.25600-1-ramalingam.c@intel.com>
References: <20190507162745.25600-1-ramalingam.c@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v7 06/11] drm/hdcp: gathering hdcp related code
 into drm_hdcp.c
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

Q29uc2lkZXJpbmcgdGhlIHNpZ25pZmljYW50IHNpemUgb2YgaGRjcCByZWxhdGVkIGNvZGUgaW4g
ZHJtLCBhbGwKaGRjcCByZWxhdGVkIGNvZGVzIGFyZSBtb3ZlZCBpbnRvIHNlcGFyYXRlIGZpbGUg
Y2FsbGVkIGRybV9oZGNwLmMuCgp2MjoKICBSZWJhc2VkLgp2MjoKICBSZWJhc2VkLgoKU2lnbmVk
LW9mZi1ieTogUmFtYWxpbmdhbSBDIDxyYW1hbGluZ2FtLmNAaW50ZWwuY29tPgpTdWdnZXN0ZWQt
Ynk6IERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4KUmV2aWV3ZWQtYnk6IERhbmllbCBW
ZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2RybV9j
b25uZWN0b3IuYyB8IDQ0IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogZHJpdmVycy9n
cHUvZHJtL2RybV9oZGNwLmMgICAgICB8IDQ3ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKwogaW5jbHVkZS9kcm0vZHJtX2Nvbm5lY3Rvci5oICAgICB8ICAyIC0tCiBpbmNsdWRlL2Ry
bS9kcm1faGRjcC5oICAgICAgICAgIHwgIDMgKysrCiA0IGZpbGVzIGNoYW5nZWQsIDUwIGluc2Vy
dGlvbnMoKyksIDQ2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9k
cm1fY29ubmVjdG9yLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2Nvbm5lY3Rvci5jCmluZGV4IDdj
MGVkYTljY2E2MC4uNzY0Yzc5MDNlZGY2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJt
X2Nvbm5lY3Rvci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fY29ubmVjdG9yLmMKQEAgLTgy
MywxMyArODIzLDYgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1fcHJvcF9lbnVtX2xpc3QgZHJt
X3R2X3N1YmNvbm5lY3Rvcl9lbnVtX2xpc3RbXSA9IHsKIERSTV9FTlVNX05BTUVfRk4oZHJtX2dl
dF90dl9zdWJjb25uZWN0b3JfbmFtZSwKIAkJIGRybV90dl9zdWJjb25uZWN0b3JfZW51bV9saXN0
KQogCi1zdGF0aWMgc3RydWN0IGRybV9wcm9wX2VudW1fbGlzdCBkcm1fY3BfZW51bV9saXN0W10g
PSB7Ci0JeyBEUk1fTU9ERV9DT05URU5UX1BST1RFQ1RJT05fVU5ERVNJUkVELCAiVW5kZXNpcmVk
IiB9LAotCXsgRFJNX01PREVfQ09OVEVOVF9QUk9URUNUSU9OX0RFU0lSRUQsICJEZXNpcmVkIiB9
LAotCXsgRFJNX01PREVfQ09OVEVOVF9QUk9URUNUSU9OX0VOQUJMRUQsICJFbmFibGVkIiB9LAot
fTsKLURSTV9FTlVNX05BTUVfRk4oZHJtX2dldF9jb250ZW50X3Byb3RlY3Rpb25fbmFtZSwgZHJt
X2NwX2VudW1fbGlzdCkKLQogc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1fcHJvcF9lbnVtX2xpc3Qg
aGRtaV9jb2xvcnNwYWNlc1tdID0gewogCS8qIEZvciBEZWZhdWx0IGNhc2UsIGRyaXZlciB3aWxs
IHNldCB0aGUgY29sb3JzcGFjZSAqLwogCXsgRFJNX01PREVfQ09MT1JJTUVUUllfREVGQVVMVCwg
IkRlZmF1bHQiIH0sCkBAIC0xNTE1LDQzICsxNTA4LDYgQEAgaW50IGRybV9jb25uZWN0b3JfYXR0
YWNoX3NjYWxpbmdfbW9kZV9wcm9wZXJ0eShzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9y
LAogfQogRVhQT1JUX1NZTUJPTChkcm1fY29ubmVjdG9yX2F0dGFjaF9zY2FsaW5nX21vZGVfcHJv
cGVydHkpOwogCi0vKioKLSAqIGRybV9jb25uZWN0b3JfYXR0YWNoX2NvbnRlbnRfcHJvdGVjdGlv
bl9wcm9wZXJ0eSAtIGF0dGFjaCBjb250ZW50IHByb3RlY3Rpb24KLSAqIHByb3BlcnR5Ci0gKgot
ICogQGNvbm5lY3RvcjogY29ubmVjdG9yIHRvIGF0dGFjaCBDUCBwcm9wZXJ0eSBvbi4KLSAqCi0g
KiBUaGlzIGlzIHVzZWQgdG8gYWRkIHN1cHBvcnQgZm9yIGNvbnRlbnQgcHJvdGVjdGlvbiBvbiBz
ZWxlY3QgY29ubmVjdG9ycy4KLSAqIENvbnRlbnQgUHJvdGVjdGlvbiBpcyBpbnRlbnRpb25hbGx5
IHZhZ3VlIHRvIGFsbG93IGZvciBkaWZmZXJlbnQgdW5kZXJseWluZwotICogdGVjaG5vbG9naWVz
LCBob3dldmVyIGl0IGlzIG1vc3QgaW1wbGVtZW50ZWQgYnkgSERDUC4KLSAqCi0gKiBUaGUgY29u
dGVudCBwcm90ZWN0aW9uIHdpbGwgYmUgc2V0IHRvICZkcm1fY29ubmVjdG9yX3N0YXRlLmNvbnRl
bnRfcHJvdGVjdGlvbgotICoKLSAqIFJldHVybnM6Ci0gKiBaZXJvIG9uIHN1Y2Nlc3MsIG5lZ2F0
aXZlIGVycm5vIG9uIGZhaWx1cmUuCi0gKi8KLWludCBkcm1fY29ubmVjdG9yX2F0dGFjaF9jb250
ZW50X3Byb3RlY3Rpb25fcHJvcGVydHkoCi0JCXN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0
b3IpCi17Ci0Jc3RydWN0IGRybV9kZXZpY2UgKmRldiA9IGNvbm5lY3Rvci0+ZGV2OwotCXN0cnVj
dCBkcm1fcHJvcGVydHkgKnByb3AgPQotCQkJZGV2LT5tb2RlX2NvbmZpZy5jb250ZW50X3Byb3Rl
Y3Rpb25fcHJvcGVydHk7Ci0KLQlpZiAoIXByb3ApCi0JCXByb3AgPSBkcm1fcHJvcGVydHlfY3Jl
YXRlX2VudW0oZGV2LCAwLCAiQ29udGVudCBQcm90ZWN0aW9uIiwKLQkJCQkJCWRybV9jcF9lbnVt
X2xpc3QsCi0JCQkJCQlBUlJBWV9TSVpFKGRybV9jcF9lbnVtX2xpc3QpKTsKLQlpZiAoIXByb3Ap
Ci0JCXJldHVybiAtRU5PTUVNOwotCi0JZHJtX29iamVjdF9hdHRhY2hfcHJvcGVydHkoJmNvbm5l
Y3Rvci0+YmFzZSwgcHJvcCwKLQkJCQkgICBEUk1fTU9ERV9DT05URU5UX1BST1RFQ1RJT05fVU5E
RVNJUkVEKTsKLQlkZXYtPm1vZGVfY29uZmlnLmNvbnRlbnRfcHJvdGVjdGlvbl9wcm9wZXJ0eSA9
IHByb3A7Ci0KLQlyZXR1cm4gMDsKLX0KLUVYUE9SVF9TWU1CT0woZHJtX2Nvbm5lY3Rvcl9hdHRh
Y2hfY29udGVudF9wcm90ZWN0aW9uX3Byb3BlcnR5KTsKLQogLyoqCiAgKiBkcm1fbW9kZV9jcmVh
dGVfYXNwZWN0X3JhdGlvX3Byb3BlcnR5IC0gY3JlYXRlIGFzcGVjdCByYXRpbyBwcm9wZXJ0eQog
ICogQGRldjogRFJNIGRldmljZQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9oZGNw
LmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2hkY3AuYwppbmRleCA1ZTU0MDk1MDVjMzEuLjBkYTdi
MzcxOGJhZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9oZGNwLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2RybV9oZGNwLmMKQEAgLTE3LDYgKzE3LDkgQEAKICNpbmNsdWRlIDxkcm0v
ZHJtX3N5c2ZzLmg+CiAjaW5jbHVkZSA8ZHJtL2RybV9wcmludC5oPgogI2luY2x1ZGUgPGRybS9k
cm1fZGV2aWNlLmg+CisjaW5jbHVkZSA8ZHJtL2RybV9wcm9wZXJ0eS5oPgorI2luY2x1ZGUgPGRy
bS9kcm1fbW9kZV9vYmplY3QuaD4KKyNpbmNsdWRlIDxkcm0vZHJtX2Nvbm5lY3Rvci5oPgogCiBz
dHJ1Y3QgaGRjcF9zcm0gewogCXUzMiByZXZva2VkX2tzdl9jbnQ7CkBAIC0zMzEsMyArMzM0LDQ3
IEBAIHZvaWQgZHJtX3RlYXJkb3duX2hkY3Bfc3JtKHN0cnVjdCBjbGFzcyAqZHJtX2NsYXNzKQog
CQlrZnJlZShzcm1fZGF0YSk7CiAJfQogfQorCitzdGF0aWMgc3RydWN0IGRybV9wcm9wX2VudW1f
bGlzdCBkcm1fY3BfZW51bV9saXN0W10gPSB7CisJeyBEUk1fTU9ERV9DT05URU5UX1BST1RFQ1RJ
T05fVU5ERVNJUkVELCAiVW5kZXNpcmVkIiB9LAorCXsgRFJNX01PREVfQ09OVEVOVF9QUk9URUNU
SU9OX0RFU0lSRUQsICJEZXNpcmVkIiB9LAorCXsgRFJNX01PREVfQ09OVEVOVF9QUk9URUNUSU9O
X0VOQUJMRUQsICJFbmFibGVkIiB9LAorfTsKK0RSTV9FTlVNX05BTUVfRk4oZHJtX2dldF9jb250
ZW50X3Byb3RlY3Rpb25fbmFtZSwgZHJtX2NwX2VudW1fbGlzdCkKKworLyoqCisgKiBkcm1fY29u
bmVjdG9yX2F0dGFjaF9jb250ZW50X3Byb3RlY3Rpb25fcHJvcGVydHkgLSBhdHRhY2ggY29udGVu
dCBwcm90ZWN0aW9uCisgKiBwcm9wZXJ0eQorICoKKyAqIEBjb25uZWN0b3I6IGNvbm5lY3RvciB0
byBhdHRhY2ggQ1AgcHJvcGVydHkgb24uCisgKgorICogVGhpcyBpcyB1c2VkIHRvIGFkZCBzdXBw
b3J0IGZvciBjb250ZW50IHByb3RlY3Rpb24gb24gc2VsZWN0IGNvbm5lY3RvcnMuCisgKiBDb250
ZW50IFByb3RlY3Rpb24gaXMgaW50ZW50aW9uYWxseSB2YWd1ZSB0byBhbGxvdyBmb3IgZGlmZmVy
ZW50IHVuZGVybHlpbmcKKyAqIHRlY2hub2xvZ2llcywgaG93ZXZlciBpdCBpcyBtb3N0IGltcGxl
bWVudGVkIGJ5IEhEQ1AuCisgKgorICogVGhlIGNvbnRlbnQgcHJvdGVjdGlvbiB3aWxsIGJlIHNl
dCB0byAmZHJtX2Nvbm5lY3Rvcl9zdGF0ZS5jb250ZW50X3Byb3RlY3Rpb24KKyAqCisgKiBSZXR1
cm5zOgorICogWmVybyBvbiBzdWNjZXNzLCBuZWdhdGl2ZSBlcnJubyBvbiBmYWlsdXJlLgorICov
CitpbnQgZHJtX2Nvbm5lY3Rvcl9hdHRhY2hfY29udGVudF9wcm90ZWN0aW9uX3Byb3BlcnR5KAor
CQlzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yKQoreworCXN0cnVjdCBkcm1fZGV2aWNl
ICpkZXYgPSBjb25uZWN0b3ItPmRldjsKKwlzdHJ1Y3QgZHJtX3Byb3BlcnR5ICpwcm9wID0KKwkJ
CWRldi0+bW9kZV9jb25maWcuY29udGVudF9wcm90ZWN0aW9uX3Byb3BlcnR5OworCisJaWYgKCFw
cm9wKQorCQlwcm9wID0gZHJtX3Byb3BlcnR5X2NyZWF0ZV9lbnVtKGRldiwgMCwgIkNvbnRlbnQg
UHJvdGVjdGlvbiIsCisJCQkJCQlkcm1fY3BfZW51bV9saXN0LAorCQkJCQkJQVJSQVlfU0laRShk
cm1fY3BfZW51bV9saXN0KSk7CisJaWYgKCFwcm9wKQorCQlyZXR1cm4gLUVOT01FTTsKKworCWRy
bV9vYmplY3RfYXR0YWNoX3Byb3BlcnR5KCZjb25uZWN0b3ItPmJhc2UsIHByb3AsCisJCQkJICAg
RFJNX01PREVfQ09OVEVOVF9QUk9URUNUSU9OX1VOREVTSVJFRCk7CisJZGV2LT5tb2RlX2NvbmZp
Zy5jb250ZW50X3Byb3RlY3Rpb25fcHJvcGVydHkgPSBwcm9wOworCisJcmV0dXJuIDA7Cit9CitF
WFBPUlRfU1lNQk9MKGRybV9jb25uZWN0b3JfYXR0YWNoX2NvbnRlbnRfcHJvdGVjdGlvbl9wcm9w
ZXJ0eSk7CmRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9kcm1fY29ubmVjdG9yLmggYi9pbmNsdWRl
L2RybS9kcm1fY29ubmVjdG9yLmgKaW5kZXggMjE4NmVlYzA0MDhiLi5lMjU3Yjg3OWI3MmMgMTAw
NjQ0Ci0tLSBhL2luY2x1ZGUvZHJtL2RybV9jb25uZWN0b3IuaAorKysgYi9pbmNsdWRlL2RybS9k
cm1fY29ubmVjdG9yLmgKQEAgLTEzNDMsOCArMTM0Myw2IEBAIGludCBkcm1fY29ubmVjdG9yX2F0
dGFjaF9zY2FsaW5nX21vZGVfcHJvcGVydHkoc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3Rv
ciwKIAkJCQkJICAgICAgIHUzMiBzY2FsaW5nX21vZGVfbWFzayk7CiBpbnQgZHJtX2Nvbm5lY3Rv
cl9hdHRhY2hfdnJyX2NhcGFibGVfcHJvcGVydHkoCiAJCXN0cnVjdCBkcm1fY29ubmVjdG9yICpj
b25uZWN0b3IpOwotaW50IGRybV9jb25uZWN0b3JfYXR0YWNoX2NvbnRlbnRfcHJvdGVjdGlvbl9w
cm9wZXJ0eSgKLQkJc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3Rvcik7CiBpbnQgZHJtX21v
ZGVfY3JlYXRlX2FzcGVjdF9yYXRpb19wcm9wZXJ0eShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KTsK
IGludCBkcm1fbW9kZV9jcmVhdGVfY29sb3JzcGFjZV9wcm9wZXJ0eShzdHJ1Y3QgZHJtX2Nvbm5l
Y3RvciAqY29ubmVjdG9yKTsKIGludCBkcm1fbW9kZV9jcmVhdGVfY29udGVudF90eXBlX3Byb3Bl
cnR5KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpOwpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0vZHJt
X2hkY3AuaCBiL2luY2x1ZGUvZHJtL2RybV9oZGNwLmgKaW5kZXggMmYwMzM1ZDBhNTBmLi4xMzc3
MWE0OTZlMmIgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvZHJtL2RybV9oZGNwLmgKKysrIGIvaW5jbHVk
ZS9kcm0vZHJtX2hkY3AuaApAQCAtMjg2LDcgKzI4NiwxMCBAQCBzdHJ1Y3QgaGRjcF9zcm1faGVh
ZGVyIHsKIH0gX19wYWNrZWQ7CiAKIHN0cnVjdCBkcm1fZGV2aWNlOworc3RydWN0IGRybV9jb25u
ZWN0b3I7CiAKIGJvb2wgZHJtX2hkY3BfY2hlY2tfa3N2c19yZXZva2VkKHN0cnVjdCBkcm1fZGV2
aWNlICpkZXYsCiAJCQkJIHU4ICprc3ZzLCB1MzIga3N2X2NvdW50KTsKK2ludCBkcm1fY29ubmVj
dG9yX2F0dGFjaF9jb250ZW50X3Byb3RlY3Rpb25fcHJvcGVydHkoCisJCXN0cnVjdCBkcm1fY29u
bmVjdG9yICpjb25uZWN0b3IpOwogI2VuZGlmCi0tIAoyLjE5LjEKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
