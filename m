Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D069CB945
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2019 13:35:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66E136EB52;
	Fri,  4 Oct 2019 11:35:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6D1C6EB3A
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Oct 2019 11:35:23 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Oct 2019 13:35:08 +0200
Message-Id: <20191004113514.17064-19-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191004113514.17064-1-maarten.lankhorst@linux.intel.com>
References: <20191004113514.17064-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 18/24] drm/i915: Remove special case slave
 handling during hw programming
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

Tm93IHRoYXQgd2Ugc3BsaXQgcGxhbmVfc3RhdGUgd2hpY2ggSSBkaWRuJ3Qgd2FudCB0byBkbyB5
ZXQsIHdlIGNhbgpwcm9ncmFtIHRoZSBzbGF2ZSBwbGFuZSB3aXRob3V0IHJlcXVpcmluZyB0aGUg
bWFzdGVyIHBsYW5lLgoKVGhpcyBpcyB1c2VmdWwgZm9yIHByb2dyYW1taW5nIGJpZ2pvaW5lciBz
bGF2ZSBwbGFuZXMgYXMgd2VsbC4gV2UKd2lsbCBubyBsb25nZXIgbmVlZCB0aGUgbWFzdGVyJ3Mg
cGxhbmVfc3RhdGUuCgpTaWduZWQtb2ZmLWJ5OiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5s
YW5raG9yc3RAbGludXguaW50ZWwuY29tPgotLS0KIC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9hdG9taWNfcGxhbmUuYyB8IDMwICstLS0tLS0tLS0KIC4uLi9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9hdG9taWNfcGxhbmUuaCB8ICAzIC0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jICB8IDE4ICsrKysrKwogLi4uL2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheV90eXBlcy5oICAgIHwgIDYgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfc3ByaXRlLmMgICB8IDU1ICsrKysrKy0tLS0tLS0tLS0tLS0KIDUgZmlsZXMg
Y2hhbmdlZCwgMzkgaW5zZXJ0aW9ucygrKSwgNzMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmMKaW5kZXggY2U3NWNm
MWRjNjVjLi45OTQ3YzA4YWZiNzcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9hdG9taWNfcGxhbmUuYwpAQCAtMjk4LDE2ICsyOTgsNiBAQCB2b2lkIGludGVs
X3VwZGF0ZV9wbGFuZShzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lLAogCXBsYW5lLT51cGRhdGVf
cGxhbmUocGxhbmUsIGNydGNfc3RhdGUsIHBsYW5lX3N0YXRlKTsKIH0KIAotdm9pZCBpbnRlbF91
cGRhdGVfc2xhdmUoc3RydWN0IGludGVsX3BsYW5lICpwbGFuZSwKLQkJCWNvbnN0IHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAotCQkJY29uc3Qgc3RydWN0IGludGVsX3BsYW5l
X3N0YXRlICpwbGFuZV9zdGF0ZSkKLXsKLQlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IHRvX2lu
dGVsX2NydGMoY3J0Y19zdGF0ZS0+dWFwaS5jcnRjKTsKLQotCXRyYWNlX2ludGVsX3VwZGF0ZV9w
bGFuZSgmcGxhbmUtPmJhc2UsIGNydGMpOwotCXBsYW5lLT51cGRhdGVfc2xhdmUocGxhbmUsIGNy
dGNfc3RhdGUsIHBsYW5lX3N0YXRlKTsKLX0KLQogdm9pZCBpbnRlbF9kaXNhYmxlX3BsYW5lKHN0
cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmUsCiAJCQkgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3Rh
dGUgKmNydGNfc3RhdGUpCiB7CkBAIC0zNDAsMjUgKzMzMCw5IEBAIHZvaWQgc2tsX3VwZGF0ZV9w
bGFuZXNfb25fY3J0YyhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKIAkJc3RydWN0
IGludGVsX3BsYW5lX3N0YXRlICpuZXdfcGxhbmVfc3RhdGUgPQogCQkJaW50ZWxfYXRvbWljX2dl
dF9uZXdfcGxhbmVfc3RhdGUoc3RhdGUsIHBsYW5lKTsKIAotCQlpZiAobmV3X3BsYW5lX3N0YXRl
LT51YXBpLnZpc2libGUpIHsKKwkJaWYgKG5ld19wbGFuZV9zdGF0ZS0+dWFwaS52aXNpYmxlIHx8
CisJCSAgICBuZXdfcGxhbmVfc3RhdGUtPnBsYW5hcl9zbGF2ZSkgewogCQkJaW50ZWxfdXBkYXRl
X3BsYW5lKHBsYW5lLCBuZXdfY3J0Y19zdGF0ZSwgbmV3X3BsYW5lX3N0YXRlKTsKLQkJfSBlbHNl
IGlmIChuZXdfcGxhbmVfc3RhdGUtPnBsYW5hcl9zbGF2ZSkgewotCQkJc3RydWN0IGludGVsX3Bs
YW5lICptYXN0ZXIgPQotCQkJCW5ld19wbGFuZV9zdGF0ZS0+cGxhbmFyX2xpbmtlZF9wbGFuZTsK
LQotCQkJLyoKLQkJCSAqIFdlIHVwZGF0ZSB0aGUgc2xhdmUgcGxhbmUgZnJvbSB0aGlzIGZ1bmN0
aW9uIGJlY2F1c2UKLQkJCSAqIHByb2dyYW1taW5nIGl0IGZyb20gdGhlIG1hc3RlciBwbGFuZSdz
IHVwZGF0ZV9wbGFuZQotCQkJICogY2FsbGJhY2sgcnVucyBpbnRvIGlzc3VlcyB3aGVuIHRoZSBZ
IHBsYW5lIGlzCi0JCQkgKiByZWFzc2lnbmVkLCBkaXNhYmxlZCBvciB1c2VkIGJ5IGEgZGlmZmVy
ZW50IHBsYW5lLgotCQkJICoKLQkJCSAqIFRoZSBzbGF2ZSBwbGFuZSBpcyB1cGRhdGVkIHdpdGgg
dGhlIG1hc3RlciBwbGFuZSdzCi0JCQkgKiBwbGFuZV9zdGF0ZS4KLQkJCSAqLwotCQkJbmV3X3Bs
YW5lX3N0YXRlID0KLQkJCQlpbnRlbF9hdG9taWNfZ2V0X25ld19wbGFuZV9zdGF0ZShzdGF0ZSwg
bWFzdGVyKTsKLQotCQkJaW50ZWxfdXBkYXRlX3NsYXZlKHBsYW5lLCBuZXdfY3J0Y19zdGF0ZSwg
bmV3X3BsYW5lX3N0YXRlKTsKIAkJfSBlbHNlIHsKIAkJCWludGVsX2Rpc2FibGVfcGxhbmUocGxh
bmUsIG5ld19jcnRjX3N0YXRlKTsKIAkJfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmgKaW5kZXggMTIzNDA0YTljZjIzLi43MjZlY2VjZDZh
YmQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWlj
X3BsYW5lLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNf
cGxhbmUuaApAQCAtMjUsOSArMjUsNiBAQCB2b2lkIGludGVsX3BsYW5lX2NvcHlfdWFwaV90b19o
d19zdGF0ZShzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlLAogdm9pZCBpbnRl
bF91cGRhdGVfcGxhbmUoc3RydWN0IGludGVsX3BsYW5lICpwbGFuZSwKIAkJCWNvbnN0IHN0cnVj
dCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAogCQkJY29uc3Qgc3RydWN0IGludGVsX3Bs
YW5lX3N0YXRlICpwbGFuZV9zdGF0ZSk7Ci12b2lkIGludGVsX3VwZGF0ZV9zbGF2ZShzdHJ1Y3Qg
aW50ZWxfcGxhbmUgKnBsYW5lLAotCQkJY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNy
dGNfc3RhdGUsCi0JCQljb25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRl
KTsKIHZvaWQgaW50ZWxfZGlzYWJsZV9wbGFuZShzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lLAog
CQkJIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsKIHN0cnVjdCBp
bnRlbF9wbGFuZSAqaW50ZWxfcGxhbmVfYWxsb2Modm9pZCk7CmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IDlhZGQxMTk3NzM3Yy4uZDcxZmQ3ODQy
ODQ5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpA
QCAtMTE5MzQsNiArMTE5MzQsMjQgQEAgc3RhdGljIGludCBpY2xfY2hlY2tfbnYxMl9wbGFuZXMo
c3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCiAJCWNydGNfc3RhdGUtPmFjdGl2
ZV9wbGFuZXMgfD0gQklUKGxpbmtlZC0+aWQpOwogCQljcnRjX3N0YXRlLT51cGRhdGVfcGxhbmVz
IHw9IEJJVChsaW5rZWQtPmlkKTsKIAkJRFJNX0RFQlVHX0tNUygiVXNpbmcgJXMgYXMgWSBwbGFu
ZSBmb3IgJXNcbiIsIGxpbmtlZC0+YmFzZS5uYW1lLCBwbGFuZS0+YmFzZS5uYW1lKTsKKworCQkv
KiBDb3B5IHBhcmFtZXRlcnMgdG8gc2xhdmUgcGxhbmUgKi8KKwkJbGlua2VkX3N0YXRlLT5jdGwg
PSBwbGFuZV9zdGF0ZS0+Y3RsIHwgUExBTkVfQ1RMX1lVVjQyMF9ZX1BMQU5FOworCQlsaW5rZWRf
c3RhdGUtPmNvbG9yX2N0bCA9IHBsYW5lX3N0YXRlLT5jb2xvcl9jdGw7CisJCWxpbmtlZF9zdGF0
ZS0+Y29sb3JfcGxhbmVbMF0gPSBwbGFuZV9zdGF0ZS0+Y29sb3JfcGxhbmVbMF07CisKKwkJbGlu
a2VkX3N0YXRlLT51YXBpLnNyYyA9IHBsYW5lX3N0YXRlLT51YXBpLnNyYzsKKwkJbGlua2VkX3N0
YXRlLT51YXBpLmRzdCA9IHBsYW5lX3N0YXRlLT51YXBpLmRzdDsKKwkJaW50ZWxfcGxhbmVfY29w
eV91YXBpX3RvX2h3X3N0YXRlKGxpbmtlZF9zdGF0ZSwgcGxhbmVfc3RhdGUpOworCisJCWlmIChp
Y2xfaXNfaGRyX3BsYW5lKGRldl9wcml2LCBwbGFuZS0+aWQpKSB7CisJCQlpZiAobGlua2VkLT5p
ZCA9PSBQTEFORV9TUFJJVEU1KQorCQkJCXBsYW5lX3N0YXRlLT5jdXNfY3RsIHw9IFBMQU5FX0NV
U19QTEFORV83OworCQkJZWxzZSBpZiAobGlua2VkLT5pZCA9PSBQTEFORV9TUFJJVEU0KQorCQkJ
CXBsYW5lX3N0YXRlLT5jdXNfY3RsIHw9IFBMQU5FX0NVU19QTEFORV82OworCQkJZWxzZQorCQkJ
CU1JU1NJTkdfQ0FTRShsaW5rZWQtPmlkKTsKKwkJfQogCX0KIAogCXJldHVybiAwOwpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAppbmRl
eCBhNjU5ZGFiODEzN2EuLjBhOWVhNDBmODVlMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKQEAgLTU1NSw2ICs1NTUsOSBAQCBz
dHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgewogCS8qIHBsYW5lIGNvbG9yIGNvbnRyb2wgcmVnaXN0
ZXIgKi8KIAl1MzIgY29sb3JfY3RsOwogCisJLyogY2hyb21hIHVwc2FtcGxlciBjb250cm9sIHJl
Z2lzdGVyICovCisJdTMyIGN1c19jdGw7CisKIAkvKgogCSAqIHNjYWxlcl9pZAogCSAqICAgID0g
LTEgOiBub3QgdXNpbmcgYSBzY2FsZXIKQEAgLTExMTUsOSArMTExOCw2IEBAIHN0cnVjdCBpbnRl
bF9wbGFuZSB7CiAJdm9pZCAoKnVwZGF0ZV9wbGFuZSkoc3RydWN0IGludGVsX3BsYW5lICpwbGFu
ZSwKIAkJCSAgICAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCiAJ
CQkgICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUpOwotCXZv
aWQgKCp1cGRhdGVfc2xhdmUpKHN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmUsCi0JCQkgICAgIGNv
bnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAotCQkJICAgICBjb25zdCBz
dHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlKTsKIAl2b2lkICgqZGlzYWJsZV9w
bGFuZSkoc3RydWN0IGludGVsX3BsYW5lICpwbGFuZSwKIAkJCSAgICAgIGNvbnN0IHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsKIAlib29sICgqZ2V0X2h3X3N0YXRlKShzdHJ1
Y3QgaW50ZWxfcGxhbmUgKnBsYW5lLCBlbnVtIHBpcGUgKnBpcGUpOwpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMKaW5kZXggY2UxOTMzNjdiOTZiLi43NTE1YzM3
M2ZkYzggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3By
aXRlLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYwpA
QCAtNTI4LDcgKzUyOCw3IEBAIHN0YXRpYyB2b2lkCiBza2xfcHJvZ3JhbV9wbGFuZShzdHJ1Y3Qg
aW50ZWxfcGxhbmUgKnBsYW5lLAogCQkgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpj
cnRjX3N0YXRlLAogCQkgIGNvbnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3Rh
dGUsCi0JCSAgaW50IGNvbG9yX3BsYW5lLCBib29sIHNsYXZlLCB1MzIgcGxhbmVfY3RsKQorCQkg
IGludCBjb2xvcl9wbGFuZSkKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYg
PSB0b19pOTE1KHBsYW5lLT5iYXNlLmRldik7CiAJZW51bSBwbGFuZV9pZCBwbGFuZV9pZCA9IHBs
YW5lLT5pZDsKQEAgLTU0MywxMiArNTQzLDEyIEBAIHNrbF9wcm9ncmFtX3BsYW5lKHN0cnVjdCBp
bnRlbF9wbGFuZSAqcGxhbmUsCiAJdTMyIHkgPSBwbGFuZV9zdGF0ZS0+Y29sb3JfcGxhbmVbY29s
b3JfcGxhbmVdLnk7CiAJdTMyIHNyY193ID0gZHJtX3JlY3Rfd2lkdGgoJnBsYW5lX3N0YXRlLT51
YXBpLnNyYykgPj4gMTY7CiAJdTMyIHNyY19oID0gZHJtX3JlY3RfaGVpZ2h0KCZwbGFuZV9zdGF0
ZS0+dWFwaS5zcmMpID4+IDE2OwotCXN0cnVjdCBpbnRlbF9wbGFuZSAqbGlua2VkID0gcGxhbmVf
c3RhdGUtPnBsYW5hcl9saW5rZWRfcGxhbmU7CiAJY29uc3Qgc3RydWN0IGRybV9mcmFtZWJ1ZmZl
ciAqZmIgPSBwbGFuZV9zdGF0ZS0+aHcuZmI7CiAJdTggYWxwaGEgPSBwbGFuZV9zdGF0ZS0+aHcu
YWxwaGEgPj4gODsKIAl1MzIgcGxhbmVfY29sb3JfY3RsID0gMDsKIAl1bnNpZ25lZCBsb25nIGly
cWZsYWdzOwogCXUzMiBrZXltc2ssIGtleW1heDsKKwl1MzIgcGxhbmVfY3RsID0gcGxhbmVfc3Rh
dGUtPmN0bDsKIAogCXBsYW5lX2N0bCB8PSBza2xfcGxhbmVfY3RsX2NydGMoY3J0Y19zdGF0ZSk7
CiAKQEAgLTU4MCwyNiArNTgwLDggQEAgc2tsX3Byb2dyYW1fcGxhbmUoc3RydWN0IGludGVsX3Bs
YW5lICpwbGFuZSwKIAlJOTE1X1dSSVRFX0ZXKFBMQU5FX0FVWF9ESVNUKHBpcGUsIHBsYW5lX2lk
KSwKIAkJICAgICAgKHBsYW5lX3N0YXRlLT5jb2xvcl9wbGFuZVsxXS5vZmZzZXQgLSBzdXJmX2Fk
ZHIpIHwgYXV4X3N0cmlkZSk7CiAKLQlpZiAoaWNsX2lzX2hkcl9wbGFuZShkZXZfcHJpdiwgcGxh
bmVfaWQpKSB7Ci0JCXUzMiBjdXNfY3RsID0gMDsKLQotCQlpZiAobGlua2VkKSB7Ci0JCQkvKiBF
bmFibGUgYW5kIHVzZSBNUEVHLTIgY2hyb21hIHNpdGluZyAqLwotCQkJY3VzX2N0bCA9IFBMQU5F
X0NVU19FTkFCTEUgfAotCQkJCVBMQU5FX0NVU19IUEhBU0VfMCB8Ci0JCQkJUExBTkVfQ1VTX1ZQ
SEFTRV9TSUdOX05FR0FUSVZFIHwKLQkJCQlQTEFORV9DVVNfVlBIQVNFXzBfMjU7Ci0KLQkJCWlm
IChsaW5rZWQtPmlkID09IFBMQU5FX1NQUklURTUpCi0JCQkJY3VzX2N0bCB8PSBQTEFORV9DVVNf
UExBTkVfNzsKLQkJCWVsc2UgaWYgKGxpbmtlZC0+aWQgPT0gUExBTkVfU1BSSVRFNCkKLQkJCQlj
dXNfY3RsIHw9IFBMQU5FX0NVU19QTEFORV82OwotCQkJZWxzZQotCQkJCU1JU1NJTkdfQ0FTRShs
aW5rZWQtPmlkKTsKLQkJfQotCi0JCUk5MTVfV1JJVEVfRlcoUExBTkVfQ1VTX0NUTChwaXBlLCBw
bGFuZV9pZCksIGN1c19jdGwpOwotCX0KKwlpZiAoaWNsX2lzX2hkcl9wbGFuZShkZXZfcHJpdiwg
cGxhbmVfaWQpKQorCQlJOTE1X1dSSVRFX0ZXKFBMQU5FX0NVU19DVEwocGlwZSwgcGxhbmVfaWQp
LCBwbGFuZV9zdGF0ZS0+Y3VzX2N0bCk7CiAKIAlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAx
MCB8fCBJU19HRU1JTklMQUtFKGRldl9wcml2KSkKIAkJSTkxNV9XUklURV9GVyhQTEFORV9DT0xP
Ul9DVEwocGlwZSwgcGxhbmVfaWQpLCBwbGFuZV9jb2xvcl9jdGwpOwpAQCAtNjI5LDcgKzYxMSw3
IEBAIHNrbF9wcm9ncmFtX3BsYW5lKHN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmUsCiAJSTkxNV9X
UklURV9GVyhQTEFORV9TVVJGKHBpcGUsIHBsYW5lX2lkKSwKIAkJICAgICAgaW50ZWxfcGxhbmVf
Z2d0dF9vZmZzZXQocGxhbmVfc3RhdGUpICsgc3VyZl9hZGRyKTsKIAotCWlmICghc2xhdmUgJiYg
cGxhbmVfc3RhdGUtPnNjYWxlcl9pZCA+PSAwKQorCWlmIChwbGFuZV9zdGF0ZS0+c2NhbGVyX2lk
ID49IDApCiAJCXNrbF9wcm9ncmFtX3NjYWxlcihwbGFuZSwgY3J0Y19zdGF0ZSwgcGxhbmVfc3Rh
dGUpOwogCiAJc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmZGV2X3ByaXYtPnVuY29yZS5sb2NrLCBp
cnFmbGFncyk7CkBAIC02NDIsMjQgKzYyNCwxMyBAQCBza2xfdXBkYXRlX3BsYW5lKHN0cnVjdCBp
bnRlbF9wbGFuZSAqcGxhbmUsCiB7CiAJaW50IGNvbG9yX3BsYW5lID0gMDsKIAotCWlmIChwbGFu
ZV9zdGF0ZS0+cGxhbmFyX2xpbmtlZF9wbGFuZSkgeworCWlmIChkcm1fZm9ybWF0X2luZm9faXNf
eXV2X3NlbWlwbGFuYXIocGxhbmVfc3RhdGUtPmh3LmZiLT5mb3JtYXQpICYmCisJICAgICFwbGFu
ZV9zdGF0ZS0+cGxhbmFyX3NsYXZlKQogCQkvKiBQcm9ncmFtIHRoZSBVViBwbGFuZSAqLwogCQlj
b2xvcl9wbGFuZSA9IDE7Ci0JfQogCi0Jc2tsX3Byb2dyYW1fcGxhbmUocGxhbmUsIGNydGNfc3Rh
dGUsIHBsYW5lX3N0YXRlLAotCQkJICBjb2xvcl9wbGFuZSwgZmFsc2UsIHBsYW5lX3N0YXRlLT5j
dGwpOworCXNrbF9wcm9ncmFtX3BsYW5lKHBsYW5lLCBjcnRjX3N0YXRlLCBwbGFuZV9zdGF0ZSwg
Y29sb3JfcGxhbmUpOwogfQotCi1zdGF0aWMgdm9pZAotaWNsX3VwZGF0ZV9zbGF2ZShzdHJ1Y3Qg
aW50ZWxfcGxhbmUgKnBsYW5lLAotCQkgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNy
dGNfc3RhdGUsCi0JCSBjb25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRl
KQotewotCXNrbF9wcm9ncmFtX3BsYW5lKHBsYW5lLCBjcnRjX3N0YXRlLCBwbGFuZV9zdGF0ZSwg
MCwgdHJ1ZSwKLQkJCSAgcGxhbmVfc3RhdGUtPmN0bCB8IFBMQU5FX0NUTF9ZVVY0MjBfWV9QTEFO
RSk7Ci19Ci0KIHN0YXRpYyB2b2lkCiBza2xfZGlzYWJsZV9wbGFuZShzdHJ1Y3QgaW50ZWxfcGxh
bmUgKnBsYW5lLAogCQkgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRl
KQpAQCAtMTg0Niw2ICsxODE3LDE0IEBAIHN0YXRpYyBpbnQgc2tsX3BsYW5lX2NoZWNrKHN0cnVj
dCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAogCQlwbGFuZV9zdGF0ZS0+Y29sb3JfY3Rs
ID0gZ2xrX3BsYW5lX2NvbG9yX2N0bChjcnRjX3N0YXRlLAogCQkJCQkJCSAgICAgcGxhbmVfc3Rh
dGUpOwogCisJaWYgKGljbF9pc19oZHJfcGxhbmUoZGV2X3ByaXYsIHBsYW5lLT5pZCkgJiYgZmIt
PmZvcm1hdC0+aXNfeXV2KQorCQkvKiBFbmFibGUgYW5kIHVzZSBNUEVHLTIgY2hyb21hIHNpdGlu
ZyAqLworCQlwbGFuZV9zdGF0ZS0+Y3VzX2N0bCA9IFBMQU5FX0NVU19FTkFCTEUgfAorCQkJUExB
TkVfQ1VTX0hQSEFTRV8wIHwKKwkJCVBMQU5FX0NVU19WUEhBU0VfU0lHTl9ORUdBVElWRSB8IFBM
QU5FX0NVU19WUEhBU0VfMF8yNTsKKwllbHNlCisJCXBsYW5lX3N0YXRlLT5jdXNfY3RsID0gMDsK
KwogCXJldHVybiAwOwogfQogCkBAIC0yNTE0LDggKzI0OTMsNiBAQCBza2xfdW5pdmVyc2FsX3Bs
YW5lX2NyZWF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJcGxhbmUtPmRp
c2FibGVfcGxhbmUgPSBza2xfZGlzYWJsZV9wbGFuZTsKIAlwbGFuZS0+Z2V0X2h3X3N0YXRlID0g
c2tsX3BsYW5lX2dldF9od19zdGF0ZTsKIAlwbGFuZS0+Y2hlY2tfcGxhbmUgPSBza2xfcGxhbmVf
Y2hlY2s7Ci0JaWYgKGljbF9pc19udjEyX3lfcGxhbmUocGxhbmVfaWQpKQotCQlwbGFuZS0+dXBk
YXRlX3NsYXZlID0gaWNsX3VwZGF0ZV9zbGF2ZTsKIAogCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYp
ID49IDExKQogCQlmb3JtYXRzID0gaWNsX2dldF9wbGFuZV9mb3JtYXRzKGRldl9wcml2LCBwaXBl
LAotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
