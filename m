Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 89E76E9D79
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2019 15:27:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5BD46EA31;
	Wed, 30 Oct 2019 14:27:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 691966EA06
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2019 14:27:06 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Oct 2019 15:26:57 +0100
Message-Id: <20191030142657.22405-12-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191030142657.22405-1-maarten.lankhorst@linux.intel.com>
References: <20191030142657.22405-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 12/12] drm/i915: Remove special case slave handling
 during hw programming, v3.
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
cGxhbmVfc3RhdGUuCgpDaGFuZ2VzIHNpbmNlIHYxOgotIHNldCBzcmMvZHN0IHJlY3RhbmdsZXMg
YWZ0ZXIgY29weV91YXBpX3RvX2h3X3N0YXRlLgpDaGFuZ2VzIHNpbmNlIHYyOgotIFVzZSB0aGUg
Y29ycmVjdCBjb2xvcl9wbGFuZSBmb3IgcHJlLWdlbjExIGJ5IHVzaW5nIHBsYW5hcl9saW5rZWRf
cGxhbmUgIT0gTlVMTC4KLSBVc2UgZHJtX2Zvcm1hdF9pbmZvX2lzX3l1dl9zZW1pcGxhbmFyIGlu
IHNrbF9wbGFuZV9jaGVjaygpIHRvIGZpeCBnZW4xMSsuCgpTaWduZWQtb2ZmLWJ5OiBNYWFydGVu
IExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgotLS0KIC4uLi9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuYyB8IDMwICstLS0tLS0tLS0K
IC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuaCB8ICAzIC0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jICB8IDE4ICsrKysrKwog
Li4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oICAgIHwgIDYgKy0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMgICB8IDU3ICsrKysrKy0t
LS0tLS0tLS0tLS0KIDUgZmlsZXMgY2hhbmdlZCwgNDAgaW5zZXJ0aW9ucygrKSwgNzQgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9h
dG9taWNfcGxhbmUuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWlj
X3BsYW5lLmMKaW5kZXggMjQ5ZmI0MWQ3OGE1Li45M2QzOTFhYjNmNzUgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuYwpAQCAtMzQ4LDE2
ICszNDgsNiBAQCB2b2lkIGludGVsX3VwZGF0ZV9wbGFuZShzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBs
YW5lLAogCXBsYW5lLT51cGRhdGVfcGxhbmUocGxhbmUsIGNydGNfc3RhdGUsIHBsYW5lX3N0YXRl
KTsKIH0KIAotdm9pZCBpbnRlbF91cGRhdGVfc2xhdmUoc3RydWN0IGludGVsX3BsYW5lICpwbGFu
ZSwKLQkJCWNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAotCQkJY29u
c3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSkKLXsKLQlzdHJ1Y3QgaW50
ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0ZS0+dWFwaS5jcnRjKTsKLQot
CXRyYWNlX2ludGVsX3VwZGF0ZV9wbGFuZSgmcGxhbmUtPmJhc2UsIGNydGMpOwotCXBsYW5lLT51
cGRhdGVfc2xhdmUocGxhbmUsIGNydGNfc3RhdGUsIHBsYW5lX3N0YXRlKTsKLX0KLQogdm9pZCBp
bnRlbF9kaXNhYmxlX3BsYW5lKHN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmUsCiAJCQkgY29uc3Qg
c3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCiB7CkBAIC0zOTAsMjUgKzM4MCw5
IEBAIHZvaWQgc2tsX3VwZGF0ZV9wbGFuZXNfb25fY3J0YyhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0
YXRlICpzdGF0ZSwKIAkJc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpuZXdfcGxhbmVfc3RhdGUg
PQogCQkJaW50ZWxfYXRvbWljX2dldF9uZXdfcGxhbmVfc3RhdGUoc3RhdGUsIHBsYW5lKTsKIAot
CQlpZiAobmV3X3BsYW5lX3N0YXRlLT51YXBpLnZpc2libGUpIHsKKwkJaWYgKG5ld19wbGFuZV9z
dGF0ZS0+dWFwaS52aXNpYmxlIHx8CisJCSAgICBuZXdfcGxhbmVfc3RhdGUtPnBsYW5hcl9zbGF2
ZSkgewogCQkJaW50ZWxfdXBkYXRlX3BsYW5lKHBsYW5lLCBuZXdfY3J0Y19zdGF0ZSwgbmV3X3Bs
YW5lX3N0YXRlKTsKLQkJfSBlbHNlIGlmIChuZXdfcGxhbmVfc3RhdGUtPnBsYW5hcl9zbGF2ZSkg
ewotCQkJc3RydWN0IGludGVsX3BsYW5lICptYXN0ZXIgPQotCQkJCW5ld19wbGFuZV9zdGF0ZS0+
cGxhbmFyX2xpbmtlZF9wbGFuZTsKLQotCQkJLyoKLQkJCSAqIFdlIHVwZGF0ZSB0aGUgc2xhdmUg
cGxhbmUgZnJvbSB0aGlzIGZ1bmN0aW9uIGJlY2F1c2UKLQkJCSAqIHByb2dyYW1taW5nIGl0IGZy
b20gdGhlIG1hc3RlciBwbGFuZSdzIHVwZGF0ZV9wbGFuZQotCQkJICogY2FsbGJhY2sgcnVucyBp
bnRvIGlzc3VlcyB3aGVuIHRoZSBZIHBsYW5lIGlzCi0JCQkgKiByZWFzc2lnbmVkLCBkaXNhYmxl
ZCBvciB1c2VkIGJ5IGEgZGlmZmVyZW50IHBsYW5lLgotCQkJICoKLQkJCSAqIFRoZSBzbGF2ZSBw
bGFuZSBpcyB1cGRhdGVkIHdpdGggdGhlIG1hc3RlciBwbGFuZSdzCi0JCQkgKiBwbGFuZV9zdGF0
ZS4KLQkJCSAqLwotCQkJbmV3X3BsYW5lX3N0YXRlID0KLQkJCQlpbnRlbF9hdG9taWNfZ2V0X25l
d19wbGFuZV9zdGF0ZShzdGF0ZSwgbWFzdGVyKTsKLQotCQkJaW50ZWxfdXBkYXRlX3NsYXZlKHBs
YW5lLCBuZXdfY3J0Y19zdGF0ZSwgbmV3X3BsYW5lX3N0YXRlKTsKIAkJfSBlbHNlIHsKIAkJCWlu
dGVsX2Rpc2FibGVfcGxhbmUocGxhbmUsIG5ld19jcnRjX3N0YXRlKTsKIAkJfQpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuaCBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmgKaW5kZXggY2Ri
MGY5N2QwOWY5Li41Y2VkYWZkZGRiNTUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuaApAQCAtMjUsOSArMjUsNiBAQCB2b2lkIGludGVs
X3BsYW5lX2NvcHlfdWFwaV90b19od19zdGF0ZShzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBs
YW5lX3N0YXRlLAogdm9pZCBpbnRlbF91cGRhdGVfcGxhbmUoc3RydWN0IGludGVsX3BsYW5lICpw
bGFuZSwKIAkJCWNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAogCQkJ
Y29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSk7Ci12b2lkIGludGVs
X3VwZGF0ZV9zbGF2ZShzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lLAotCQkJY29uc3Qgc3RydWN0
IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCi0JCQljb25zdCBzdHJ1Y3QgaW50ZWxfcGxh
bmVfc3RhdGUgKnBsYW5lX3N0YXRlKTsKIHZvaWQgaW50ZWxfZGlzYWJsZV9wbGFuZShzdHJ1Y3Qg
aW50ZWxfcGxhbmUgKnBsYW5lLAogCQkJIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpj
cnRjX3N0YXRlKTsKIHN0cnVjdCBpbnRlbF9wbGFuZSAqaW50ZWxfcGxhbmVfYWxsb2Modm9pZCk7
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IDdl
ZTVkMWY1YTE4MC4uNTNmOWM4ODVmYzU2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtMTE5ODgsNiArMTE5ODgsMjQgQEAgc3RhdGljIGludCBp
Y2xfY2hlY2tfbnYxMl9wbGFuZXMoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUp
CiAJCWNydGNfc3RhdGUtPmFjdGl2ZV9wbGFuZXMgfD0gQklUKGxpbmtlZC0+aWQpOwogCQljcnRj
X3N0YXRlLT51cGRhdGVfcGxhbmVzIHw9IEJJVChsaW5rZWQtPmlkKTsKIAkJRFJNX0RFQlVHX0tN
UygiVXNpbmcgJXMgYXMgWSBwbGFuZSBmb3IgJXNcbiIsIGxpbmtlZC0+YmFzZS5uYW1lLCBwbGFu
ZS0+YmFzZS5uYW1lKTsKKworCQkvKiBDb3B5IHBhcmFtZXRlcnMgdG8gc2xhdmUgcGxhbmUgKi8K
KwkJbGlua2VkX3N0YXRlLT5jdGwgPSBwbGFuZV9zdGF0ZS0+Y3RsIHwgUExBTkVfQ1RMX1lVVjQy
MF9ZX1BMQU5FOworCQlsaW5rZWRfc3RhdGUtPmNvbG9yX2N0bCA9IHBsYW5lX3N0YXRlLT5jb2xv
cl9jdGw7CisJCWxpbmtlZF9zdGF0ZS0+Y29sb3JfcGxhbmVbMF0gPSBwbGFuZV9zdGF0ZS0+Y29s
b3JfcGxhbmVbMF07CisKKwkJaW50ZWxfcGxhbmVfY29weV91YXBpX3RvX2h3X3N0YXRlKGxpbmtl
ZF9zdGF0ZSwgcGxhbmVfc3RhdGUpOworCQlsaW5rZWRfc3RhdGUtPnVhcGkuc3JjID0gcGxhbmVf
c3RhdGUtPnVhcGkuc3JjOworCQlsaW5rZWRfc3RhdGUtPnVhcGkuZHN0ID0gcGxhbmVfc3RhdGUt
PnVhcGkuZHN0OworCisJCWlmIChpY2xfaXNfaGRyX3BsYW5lKGRldl9wcml2LCBwbGFuZS0+aWQp
KSB7CisJCQlpZiAobGlua2VkLT5pZCA9PSBQTEFORV9TUFJJVEU1KQorCQkJCXBsYW5lX3N0YXRl
LT5jdXNfY3RsIHw9IFBMQU5FX0NVU19QTEFORV83OworCQkJZWxzZSBpZiAobGlua2VkLT5pZCA9
PSBQTEFORV9TUFJJVEU0KQorCQkJCXBsYW5lX3N0YXRlLT5jdXNfY3RsIHw9IFBMQU5FX0NVU19Q
TEFORV82OworCQkJZWxzZQorCQkJCU1JU1NJTkdfQ0FTRShsaW5rZWQtPmlkKTsKKwkJfQogCX0K
IAogCXJldHVybiAwOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5X3R5cGVzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfdHlwZXMuaAppbmRleCBmZWY4MWU0NTBlMjIuLjRhMTgyYjYyZmYyZCAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgK
QEAgLTU2Myw2ICs1NjMsOSBAQCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgewogCS8qIHBsYW5l
IGNvbG9yIGNvbnRyb2wgcmVnaXN0ZXIgKi8KIAl1MzIgY29sb3JfY3RsOwogCisJLyogY2hyb21h
IHVwc2FtcGxlciBjb250cm9sIHJlZ2lzdGVyICovCisJdTMyIGN1c19jdGw7CisKIAkvKgogCSAq
IHNjYWxlcl9pZAogCSAqICAgID0gLTEgOiBub3QgdXNpbmcgYSBzY2FsZXIKQEAgLTExMjIsOSAr
MTEyNSw2IEBAIHN0cnVjdCBpbnRlbF9wbGFuZSB7CiAJdm9pZCAoKnVwZGF0ZV9wbGFuZSkoc3Ry
dWN0IGludGVsX3BsYW5lICpwbGFuZSwKIAkJCSAgICAgY29uc3Qgc3RydWN0IGludGVsX2NydGNf
c3RhdGUgKmNydGNfc3RhdGUsCiAJCQkgICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0
ZSAqcGxhbmVfc3RhdGUpOwotCXZvaWQgKCp1cGRhdGVfc2xhdmUpKHN0cnVjdCBpbnRlbF9wbGFu
ZSAqcGxhbmUsCi0JCQkgICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0
YXRlLAotCQkJICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRl
KTsKIAl2b2lkICgqZGlzYWJsZV9wbGFuZSkoc3RydWN0IGludGVsX3BsYW5lICpwbGFuZSwKIAkJ
CSAgICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsKIAlib29s
ICgqZ2V0X2h3X3N0YXRlKShzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lLCBlbnVtIHBpcGUgKnBp
cGUpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJp
dGUuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMKaW5kZXgg
ZWY3NDA5ZjY5NWY5Li4xNGIzNTY3OGEzNjMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9zcHJpdGUuYwpAQCAtNTc1LDcgKzU3NSw3IEBAIHN0YXRpYyB2b2lkCiBza2xf
cHJvZ3JhbV9wbGFuZShzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lLAogCQkgIGNvbnN0IHN0cnVj
dCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAogCQkgIGNvbnN0IHN0cnVjdCBpbnRlbF9w
bGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUsCi0JCSAgaW50IGNvbG9yX3BsYW5lLCBib29sIHNsYXZl
LCB1MzIgcGxhbmVfY3RsKQorCQkgIGludCBjb2xvcl9wbGFuZSkKIHsKIAlzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KHBsYW5lLT5iYXNlLmRldik7CiAJZW51bSBw
bGFuZV9pZCBwbGFuZV9pZCA9IHBsYW5lLT5pZDsKQEAgLTU5MCwxMiArNTkwLDEyIEBAIHNrbF9w
cm9ncmFtX3BsYW5lKHN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmUsCiAJdTMyIHkgPSBwbGFuZV9z
dGF0ZS0+Y29sb3JfcGxhbmVbY29sb3JfcGxhbmVdLnk7CiAJdTMyIHNyY193ID0gZHJtX3JlY3Rf
d2lkdGgoJnBsYW5lX3N0YXRlLT51YXBpLnNyYykgPj4gMTY7CiAJdTMyIHNyY19oID0gZHJtX3Jl
Y3RfaGVpZ2h0KCZwbGFuZV9zdGF0ZS0+dWFwaS5zcmMpID4+IDE2OwotCXN0cnVjdCBpbnRlbF9w
bGFuZSAqbGlua2VkID0gcGxhbmVfc3RhdGUtPnBsYW5hcl9saW5rZWRfcGxhbmU7CiAJY29uc3Qg
c3RydWN0IGRybV9mcmFtZWJ1ZmZlciAqZmIgPSBwbGFuZV9zdGF0ZS0+aHcuZmI7CiAJdTggYWxw
aGEgPSBwbGFuZV9zdGF0ZS0+aHcuYWxwaGEgPj4gODsKIAl1MzIgcGxhbmVfY29sb3JfY3RsID0g
MDsKIAl1bnNpZ25lZCBsb25nIGlycWZsYWdzOwogCXUzMiBrZXltc2ssIGtleW1heDsKKwl1MzIg
cGxhbmVfY3RsID0gcGxhbmVfc3RhdGUtPmN0bDsKIAogCXBsYW5lX2N0bCB8PSBza2xfcGxhbmVf
Y3RsX2NydGMoY3J0Y19zdGF0ZSk7CiAKQEAgLTYyNywyNiArNjI3LDggQEAgc2tsX3Byb2dyYW1f
cGxhbmUoc3RydWN0IGludGVsX3BsYW5lICpwbGFuZSwKIAlJOTE1X1dSSVRFX0ZXKFBMQU5FX0FV
WF9ESVNUKHBpcGUsIHBsYW5lX2lkKSwKIAkJICAgICAgKHBsYW5lX3N0YXRlLT5jb2xvcl9wbGFu
ZVsxXS5vZmZzZXQgLSBzdXJmX2FkZHIpIHwgYXV4X3N0cmlkZSk7CiAKLQlpZiAoaWNsX2lzX2hk
cl9wbGFuZShkZXZfcHJpdiwgcGxhbmVfaWQpKSB7Ci0JCXUzMiBjdXNfY3RsID0gMDsKLQotCQlp
ZiAobGlua2VkKSB7Ci0JCQkvKiBFbmFibGUgYW5kIHVzZSBNUEVHLTIgY2hyb21hIHNpdGluZyAq
LwotCQkJY3VzX2N0bCA9IFBMQU5FX0NVU19FTkFCTEUgfAotCQkJCVBMQU5FX0NVU19IUEhBU0Vf
MCB8Ci0JCQkJUExBTkVfQ1VTX1ZQSEFTRV9TSUdOX05FR0FUSVZFIHwKLQkJCQlQTEFORV9DVVNf
VlBIQVNFXzBfMjU7Ci0KLQkJCWlmIChsaW5rZWQtPmlkID09IFBMQU5FX1NQUklURTUpCi0JCQkJ
Y3VzX2N0bCB8PSBQTEFORV9DVVNfUExBTkVfNzsKLQkJCWVsc2UgaWYgKGxpbmtlZC0+aWQgPT0g
UExBTkVfU1BSSVRFNCkKLQkJCQljdXNfY3RsIHw9IFBMQU5FX0NVU19QTEFORV82OwotCQkJZWxz
ZQotCQkJCU1JU1NJTkdfQ0FTRShsaW5rZWQtPmlkKTsKLQkJfQotCi0JCUk5MTVfV1JJVEVfRlco
UExBTkVfQ1VTX0NUTChwaXBlLCBwbGFuZV9pZCksIGN1c19jdGwpOwotCX0KKwlpZiAoaWNsX2lz
X2hkcl9wbGFuZShkZXZfcHJpdiwgcGxhbmVfaWQpKQorCQlJOTE1X1dSSVRFX0ZXKFBMQU5FX0NV
U19DVEwocGlwZSwgcGxhbmVfaWQpLCBwbGFuZV9zdGF0ZS0+Y3VzX2N0bCk7CiAKIAlpZiAoSU5U
RUxfR0VOKGRldl9wcml2KSA+PSAxMCB8fCBJU19HRU1JTklMQUtFKGRldl9wcml2KSkKIAkJSTkx
NV9XUklURV9GVyhQTEFORV9DT0xPUl9DVEwocGlwZSwgcGxhbmVfaWQpLCBwbGFuZV9jb2xvcl9j
dGwpOwpAQCAtNjc2LDcgKzY1OCw3IEBAIHNrbF9wcm9ncmFtX3BsYW5lKHN0cnVjdCBpbnRlbF9w
bGFuZSAqcGxhbmUsCiAJSTkxNV9XUklURV9GVyhQTEFORV9TVVJGKHBpcGUsIHBsYW5lX2lkKSwK
IAkJICAgICAgaW50ZWxfcGxhbmVfZ2d0dF9vZmZzZXQocGxhbmVfc3RhdGUpICsgc3VyZl9hZGRy
KTsKIAotCWlmICghc2xhdmUgJiYgcGxhbmVfc3RhdGUtPnNjYWxlcl9pZCA+PSAwKQorCWlmIChw
bGFuZV9zdGF0ZS0+c2NhbGVyX2lkID49IDApCiAJCXNrbF9wcm9ncmFtX3NjYWxlcihwbGFuZSwg
Y3J0Y19zdGF0ZSwgcGxhbmVfc3RhdGUpOwogCiAJc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmZGV2
X3ByaXYtPnVuY29yZS5sb2NrLCBpcnFmbGFncyk7CkBAIC02ODksMjQgKzY3MSwxMiBAQCBza2xf
dXBkYXRlX3BsYW5lKHN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmUsCiB7CiAJaW50IGNvbG9yX3Bs
YW5lID0gMDsKIAotCWlmIChwbGFuZV9zdGF0ZS0+cGxhbmFyX2xpbmtlZF9wbGFuZSkgewotCQkv
KiBQcm9ncmFtIHRoZSBVViBwbGFuZSAqLworCWlmIChwbGFuZV9zdGF0ZS0+cGxhbmFyX2xpbmtl
ZF9wbGFuZSAmJiAhcGxhbmVfc3RhdGUtPnBsYW5hcl9zbGF2ZSkKKwkJLyogUHJvZ3JhbSB0aGUg
VVYgcGxhbmUgb24gcGxhbmFyIG1hc3RlciAqLwogCQljb2xvcl9wbGFuZSA9IDE7Ci0JfQotCi0J
c2tsX3Byb2dyYW1fcGxhbmUocGxhbmUsIGNydGNfc3RhdGUsIHBsYW5lX3N0YXRlLAotCQkJICBj
b2xvcl9wbGFuZSwgZmFsc2UsIHBsYW5lX3N0YXRlLT5jdGwpOwotfQogCi1zdGF0aWMgdm9pZAot
aWNsX3VwZGF0ZV9zbGF2ZShzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lLAotCQkgY29uc3Qgc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCi0JCSBjb25zdCBzdHJ1Y3QgaW50ZWxf
cGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlKQotewotCXNrbF9wcm9ncmFtX3BsYW5lKHBsYW5lLCBj
cnRjX3N0YXRlLCBwbGFuZV9zdGF0ZSwgMCwgdHJ1ZSwKLQkJCSAgcGxhbmVfc3RhdGUtPmN0bCB8
IFBMQU5FX0NUTF9ZVVY0MjBfWV9QTEFORSk7CisJc2tsX3Byb2dyYW1fcGxhbmUocGxhbmUsIGNy
dGNfc3RhdGUsIHBsYW5lX3N0YXRlLCBjb2xvcl9wbGFuZSk7CiB9Ci0KIHN0YXRpYyB2b2lkCiBz
a2xfZGlzYWJsZV9wbGFuZShzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lLAogCQkgIGNvbnN0IHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQpAQCAtMjIzOCw2ICsyMjA4LDE1IEBA
IHN0YXRpYyBpbnQgc2tsX3BsYW5lX2NoZWNrKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRj
X3N0YXRlLAogCQlwbGFuZV9zdGF0ZS0+Y29sb3JfY3RsID0gZ2xrX3BsYW5lX2NvbG9yX2N0bChj
cnRjX3N0YXRlLAogCQkJCQkJCSAgICAgcGxhbmVfc3RhdGUpOwogCisJaWYgKGRybV9mb3JtYXRf
aW5mb19pc195dXZfc2VtaXBsYW5hcihmYi0+Zm9ybWF0KSAmJgorCSAgICBpY2xfaXNfaGRyX3Bs
YW5lKGRldl9wcml2LCBwbGFuZS0+aWQpKQorCQkvKiBFbmFibGUgYW5kIHVzZSBNUEVHLTIgY2hy
b21hIHNpdGluZyAqLworCQlwbGFuZV9zdGF0ZS0+Y3VzX2N0bCA9IFBMQU5FX0NVU19FTkFCTEUg
fAorCQkJUExBTkVfQ1VTX0hQSEFTRV8wIHwKKwkJCVBMQU5FX0NVU19WUEhBU0VfU0lHTl9ORUdB
VElWRSB8IFBMQU5FX0NVU19WUEhBU0VfMF8yNTsKKwllbHNlCisJCXBsYW5lX3N0YXRlLT5jdXNf
Y3RsID0gMDsKKwogCXJldHVybiAwOwogfQogCkBAIC0yOTE3LDggKzI4OTYsNiBAQCBza2xfdW5p
dmVyc2FsX3BsYW5lX2NyZWF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJ
cGxhbmUtPmdldF9od19zdGF0ZSA9IHNrbF9wbGFuZV9nZXRfaHdfc3RhdGU7CiAJcGxhbmUtPmNo
ZWNrX3BsYW5lID0gc2tsX3BsYW5lX2NoZWNrOwogCXBsYW5lLT5taW5fY2RjbGsgPSBza2xfcGxh
bmVfbWluX2NkY2xrOwotCWlmIChpY2xfaXNfbnYxMl95X3BsYW5lKHBsYW5lX2lkKSkKLQkJcGxh
bmUtPnVwZGF0ZV9zbGF2ZSA9IGljbF91cGRhdGVfc2xhdmU7CiAKIAlpZiAoSU5URUxfR0VOKGRl
dl9wcml2KSA+PSAxMSkKIAkJZm9ybWF0cyA9IGljbF9nZXRfcGxhbmVfZm9ybWF0cyhkZXZfcHJp
diwgcGlwZSwKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
