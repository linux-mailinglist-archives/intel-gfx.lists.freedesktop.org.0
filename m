Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C67C3150210
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2020 08:46:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B842D6E1AA;
	Mon,  3 Feb 2020 07:46:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 952AE6E1B2
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Feb 2020 07:46:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Feb 2020 23:46:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,397,1574150400"; d="scan'208";a="253971756"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by fmsmga004.fm.intel.com with ESMTP; 02 Feb 2020 23:46:52 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  2 Feb 2020 23:47:55 -0800
Message-Id: <20200203074756.10549-2-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20200203074756.10549-1-manasi.d.navare@intel.com>
References: <20200203074756.10549-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 2/3] drm/i915/dp: Compute port sync crtc
 states post compute_config()
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

VGhpcyBwYXRjaCBwdXNoZXMgb3V0IHRoZSBjb21wdXRhdGlvbiBvZiBtYXN0ZXIgYW5kIHNsYXZl
CnRyYW5zY29kZXJzIGluIGNydGMgc3RhdGVzIGFmdGVyIGVuY29kZXIncyBjb21wdXRlX2NvbmZp
ZyBob29rLgpUaGlzIGVuc3VyZXMgdGhhdCB0aGUgYXNzaWduZWQgbWFzdGVyIHNsYXZlIGNydGNz
IGhhdmUgZXhhY3Qgc2FtZQptb2RlIGFuZCB0aW1pbmdzIHdoaWNoIGlzIGEgcmVxdWlyZW1lbnQg
Zm9yIFBvcnQgc3luYyBtb2RlCnRvIGJlIGVuYWJsZWQuCgp2MjoKKiBDb3JyZWN0IGluZGVudGF0
aW9uCiogUmVuYW1lIHRvIGludGVsX2RkaV9wb3J0X3N5bmNfdHJhbnNjb2RlcnMgKFZpbGxlKQoq
IHJlbW92ZSB1bndhbnRlZCBkZWJ1ZyAoVmlsbGUpCgpTdWdnZXN0ZWQtYnk6IFZpbGxlIFN5cmrD
pGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBWaWxsZSBTeXJqw6Rsw6Qg
PHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBNYW5hc2kgTmF2
YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGRpLmMgICAgIHwgMTA5ICsrKysrKysrKysrKysKIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMTU5ICstLS0tLS0tLS0tLS0tLS0t
LS0KIDIgZmlsZXMgY2hhbmdlZCwgMTEwIGluc2VydGlvbnMoKyksIDE1OCBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwppbmRleCBhYTA2NmZiOWVi
MDAuLmViOTcwNzk3Y2Q2OCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kZGkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rk
aS5jCkBAIC00NDQ4LDYgKzQ0NDgsMTE0IEBAIHN0YXRpYyBpbnQgaW50ZWxfZGRpX2NvbXB1dGVf
Y29uZmlnKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAogCXJldHVybiAwOwogfQogCitz
dGF0aWMgYm9vbCBtb2RlX2VxdWFsKGNvbnN0IHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICptb2Rl
MSwKKwkJICAgICAgIGNvbnN0IHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICptb2RlMikKK3sKKwly
ZXR1cm4gZHJtX21vZGVfbWF0Y2gobW9kZTEsIG1vZGUyLAorCQkJICAgICAgRFJNX01PREVfTUFU
Q0hfVElNSU5HUyB8CisJCQkgICAgICBEUk1fTU9ERV9NQVRDSF9GTEFHUyB8CisJCQkgICAgICBE
Uk1fTU9ERV9NQVRDSF8zRF9GTEFHUykgJiYKKwkJbW9kZTEtPmNsb2NrID09IG1vZGUyLT5jbG9j
azsgLyogd2Ugd2FudCBhbiBleGFjdCBtYXRjaCAqLworfQorCitzdGF0aWMgYm9vbCBtX25fZXF1
YWwoY29uc3Qgc3RydWN0IGludGVsX2xpbmtfbV9uICptX25fMSwKKwkJICAgICAgY29uc3Qgc3Ry
dWN0IGludGVsX2xpbmtfbV9uICptX25fMikKK3sKKwlyZXR1cm4gbV9uXzEtPnR1ID09IG1fbl8y
LT50dSAmJgorCQltX25fMS0+Z21jaF9tID09IG1fbl8yLT5nbWNoX20gJiYKKwkJbV9uXzEtPmdt
Y2hfbiA9PSBtX25fMi0+Z21jaF9uICYmCisJCW1fbl8xLT5saW5rX20gPT0gbV9uXzItPmxpbmtf
bSAmJgorCQltX25fMS0+bGlua19uID09IG1fbl8yLT5saW5rX247Cit9CisKK3N0YXRpYyBib29s
IGNydGNzX3BvcnRfc3luY19jb21wYXRpYmxlKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
ICpjcnRjX3N0YXRlMSwKKwkJCQkgICAgICAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUg
KmNydGNfc3RhdGUyKQoreworCXJldHVybiBjcnRjX3N0YXRlMS0+aHcuYWN0aXZlICYmIGNydGNf
c3RhdGUyLT5ody5hY3RpdmUgJiYKKwkJY3J0Y19zdGF0ZTEtPm91dHB1dF90eXBlcyA9PSBjcnRj
X3N0YXRlMi0+b3V0cHV0X3R5cGVzICYmCisJCWNydGNfc3RhdGUxLT5vdXRwdXRfZm9ybWF0ID09
IGNydGNfc3RhdGUyLT5vdXRwdXRfZm9ybWF0ICYmCisJCWNydGNfc3RhdGUxLT5sYW5lX2NvdW50
ID09IGNydGNfc3RhdGUyLT5sYW5lX2NvdW50ICYmCisJCWNydGNfc3RhdGUxLT5wb3J0X2Nsb2Nr
ID09IGNydGNfc3RhdGUyLT5wb3J0X2Nsb2NrICYmCisJCW1vZGVfZXF1YWwoJmNydGNfc3RhdGUx
LT5ody5hZGp1c3RlZF9tb2RlLAorCQkJICAgJmNydGNfc3RhdGUyLT5ody5hZGp1c3RlZF9tb2Rl
KSAmJgorCQltX25fZXF1YWwoJmNydGNfc3RhdGUxLT5kcF9tX24sICZjcnRjX3N0YXRlMi0+ZHBf
bV9uKTsKK30KKworc3RhdGljIHU4CitpbnRlbF9kZGlfcG9ydF9zeW5jX3RyYW5zY29kZXJzKGNv
bnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpyZWZfY3J0Y19zdGF0ZSwKKwkJCQlpbnQgdGls
ZV9ncm91cF9pZCkKK3sKKwlzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yOworCXN0cnVj
dCBkcm1fY29ubmVjdG9yX3N0YXRlICpjb25uX3N0YXRlOworCXN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUocmVmX2NydGNfc3RhdGUtPnVhcGkuY3J0Yy0+ZGV2KTsK
KwlzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSA9CisJCXRvX2ludGVsX2F0b21pY19z
dGF0ZShyZWZfY3J0Y19zdGF0ZS0+dWFwaS5zdGF0ZSk7CisJdTggdHJhbnNjb2RlcnMgPSAwOwor
CWludCBpOworCisJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPCAxMSkKKwkJcmV0dXJuIDA7CisK
KwlpZiAoIWludGVsX2NydGNfaGFzX3R5cGUocmVmX2NydGNfc3RhdGUsIElOVEVMX09VVFBVVF9E
UCkpCisJCXJldHVybiAwOworCisJZm9yX2VhY2hfbmV3X2Nvbm5lY3Rvcl9pbl9zdGF0ZSgmc3Rh
dGUtPmJhc2UsIGNvbm5lY3RvciwgY29ubl9zdGF0ZSwgaSkgeworCQlzdHJ1Y3QgaW50ZWxfY3J0
YyAqY3J0YyA9IHRvX2ludGVsX2NydGMoY29ubl9zdGF0ZS0+Y3J0Yyk7CisJCXN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlID0gTlVMTDsKKworCQlpZiAoIWNydGMpCisJCQljb250
aW51ZTsKKworCQlpZiAoIShjb25uZWN0b3ItPmhhc190aWxlICYmCisJCSAgICAgIGNvbm5lY3Rv
ci0+dGlsZV9ncm91cC0+aWQgPT0KKwkJICAgICAgdGlsZV9ncm91cF9pZCkpCisJCQljb250aW51
ZTsKKworCQljcnRjX3N0YXRlID0gaW50ZWxfYXRvbWljX2dldF9uZXdfY3J0Y19zdGF0ZShzdGF0
ZSwKKwkJCQkJCQkgICAgIGNydGMpOworCQlpZiAoIWNydGNzX3BvcnRfc3luY19jb21wYXRpYmxl
KHJlZl9jcnRjX3N0YXRlLAorCQkJCQkJY3J0Y19zdGF0ZSkpCisJCQljb250aW51ZTsKKworCQl0
cmFuc2NvZGVycyB8PSBCSVQoY3J0Y19zdGF0ZS0+Y3B1X3RyYW5zY29kZXIpOworCX0KKworCXJl
dHVybiB0cmFuc2NvZGVyczsKK30KKworc3RhdGljIGludCBpbnRlbF9kZGlfY29tcHV0ZV9jb25m
aWdfbGF0ZShzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKKwkJCQkJIHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAorCQkJCQkgc3RydWN0IGRybV9jb25uZWN0b3Jfc3Rh
dGUgKmNvbm5fc3RhdGUpCit7CisJc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciA9IGNv
bm5fc3RhdGUtPmNvbm5lY3RvcjsKKwl1OCBwb3J0X3N5bmNfdHJhbnNjb2RlcnMgPSAwOworCisJ
RFJNX0RFQlVHX0tNUygiW0VOQ09ERVI6JWQ6JXNdIFtDUlRDOiVkOiVzXSIsCisJCSAgICAgIGVu
Y29kZXItPmJhc2UuYmFzZS5pZCwgZW5jb2Rlci0+YmFzZS5uYW1lLAorCQkgICAgICBjcnRjX3N0
YXRlLT51YXBpLmNydGMtPmJhc2UuaWQsIGNydGNfc3RhdGUtPnVhcGkuY3J0Yy0+bmFtZSk7CisK
KwlpZiAoY29ubmVjdG9yLT5oYXNfdGlsZSkKKwkJcG9ydF9zeW5jX3RyYW5zY29kZXJzID0gaW50
ZWxfZGRpX3BvcnRfc3luY190cmFuc2NvZGVycyhjcnRjX3N0YXRlLAorCQkJCQkJCQkJY29ubmVj
dG9yLT50aWxlX2dyb3VwLT5pZCk7CisKKwkvKgorCSAqIEVEUCBUcmFuc2NvZGVycyBjYW5ub3Qg
YmUgZW5zYWx2ZWQKKwkgKiBtYWtlIHRoZW0gYSBtYXN0ZXIgYWx3YXlzIHdoZW4gcHJlc2VudAor
CSAqLworCWlmIChwb3J0X3N5bmNfdHJhbnNjb2RlcnMgJiBCSVQoVFJBTlNDT0RFUl9FRFApKQor
CQljcnRjX3N0YXRlLT5tYXN0ZXJfdHJhbnNjb2RlciA9IFRSQU5TQ09ERVJfRURQOworCWVsc2UK
KwkJY3J0Y19zdGF0ZS0+bWFzdGVyX3RyYW5zY29kZXIgPSBmZnMocG9ydF9zeW5jX3RyYW5zY29k
ZXJzKSAtIDE7CisKKwlpZiAoY3J0Y19zdGF0ZS0+bWFzdGVyX3RyYW5zY29kZXIgPT0gY3J0Y19z
dGF0ZS0+Y3B1X3RyYW5zY29kZXIpIHsKKwkJY3J0Y19zdGF0ZS0+bWFzdGVyX3RyYW5zY29kZXIg
PSBJTlZBTElEX1RSQU5TQ09ERVI7CisJCWNydGNfc3RhdGUtPnN5bmNfbW9kZV9zbGF2ZXNfbWFz
ayA9CisJCQlwb3J0X3N5bmNfdHJhbnNjb2RlcnMgJiB+QklUKGNydGNfc3RhdGUtPmNwdV90cmFu
c2NvZGVyKTsKKwl9CisKKwlyZXR1cm4gMDsKK30KKwogc3RhdGljIHZvaWQgaW50ZWxfZGRpX2Vu
Y29kZXJfZGVzdHJveShzdHJ1Y3QgZHJtX2VuY29kZXIgKmVuY29kZXIpCiB7CiAJc3RydWN0IGlu
dGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQgPSBlbmNfdG9fZGlnX3BvcnQodG9faW50ZWxfZW5j
b2RlcihlbmNvZGVyKSk7CkBAIC00NzU3LDYgKzQ4NjUsNyBAQCB2b2lkIGludGVsX2RkaV9pbml0
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgZW51bSBwb3J0IHBvcnQpCiAJZW5j
b2Rlci0+aG90cGx1ZyA9IGludGVsX2RkaV9ob3RwbHVnOwogCWVuY29kZXItPmNvbXB1dGVfb3V0
cHV0X3R5cGUgPSBpbnRlbF9kZGlfY29tcHV0ZV9vdXRwdXRfdHlwZTsKIAllbmNvZGVyLT5jb21w
dXRlX2NvbmZpZyA9IGludGVsX2RkaV9jb21wdXRlX2NvbmZpZzsKKwllbmNvZGVyLT5jb21wdXRl
X2NvbmZpZ19sYXRlID0gaW50ZWxfZGRpX2NvbXB1dGVfY29uZmlnX2xhdGU7CiAJZW5jb2Rlci0+
ZW5hYmxlID0gaW50ZWxfZW5hYmxlX2RkaTsKIAllbmNvZGVyLT5wcmVfcGxsX2VuYWJsZSA9IGlu
dGVsX2RkaV9wcmVfcGxsX2VuYWJsZTsKIAllbmNvZGVyLT5wcmVfZW5hYmxlID0gaW50ZWxfZGRp
X3ByZV9lbmFibGU7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jCmluZGV4IDJhMmM5ZGQ1NjNlNS4uYTk0Mzc4NzE2N2RlIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtMTI1NjQsMTI2ICsxMjU2NCw2IEBA
IHN0YXRpYyBib29sIGM4X3BsYW5lc19jaGFuZ2VkKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0
YXRlICpuZXdfY3J0Y19zdGF0ZSkKIAlyZXR1cm4gIW9sZF9jcnRjX3N0YXRlLT5jOF9wbGFuZXMg
IT0gIW5ld19jcnRjX3N0YXRlLT5jOF9wbGFuZXM7CiB9CiAKLXN0YXRpYyBib29sCi1pbnRlbF9h
dG9taWNfaXNfbWFzdGVyX2Nvbm5lY3RvcihzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19z
dGF0ZSkKLXsKLQlzdHJ1Y3QgZHJtX2NydGMgKmNydGMgPSBjcnRjX3N0YXRlLT51YXBpLmNydGM7
Ci0Jc3RydWN0IGRybV9hdG9taWNfc3RhdGUgKnN0YXRlID0gY3J0Y19zdGF0ZS0+dWFwaS5zdGF0
ZTsKLQlzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yOwotCXN0cnVjdCBkcm1fY29ubmVj
dG9yX3N0YXRlICpjb25uZWN0b3Jfc3RhdGU7Ci0JaW50IGk7Ci0KLQlmb3JfZWFjaF9uZXdfY29u
bmVjdG9yX2luX3N0YXRlKHN0YXRlLCBjb25uZWN0b3IsIGNvbm5lY3Rvcl9zdGF0ZSwgaSkgewot
CQlpZiAoY29ubmVjdG9yX3N0YXRlLT5jcnRjICE9IGNydGMpCi0JCQljb250aW51ZTsKLQkJaWYg
KGNvbm5lY3Rvci0+aGFzX3RpbGUgJiYKLQkJICAgIGNvbm5lY3Rvci0+dGlsZV9oX2xvYyA9PSBj
b25uZWN0b3ItPm51bV9oX3RpbGUgLSAxICYmCi0JCSAgICBjb25uZWN0b3ItPnRpbGVfdl9sb2Mg
PT0gY29ubmVjdG9yLT5udW1fdl90aWxlIC0gMSkKLQkJCXJldHVybiB0cnVlOwotCX0KLQotCXJl
dHVybiBmYWxzZTsKLX0KLQotc3RhdGljIHZvaWQgcmVzZXRfcG9ydF9zeW5jX21vZGVfc3RhdGUo
c3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCi17Ci0JY3J0Y19zdGF0ZS0+bWFz
dGVyX3RyYW5zY29kZXIgPSBJTlZBTElEX1RSQU5TQ09ERVI7Ci0JY3J0Y19zdGF0ZS0+c3luY19t
b2RlX3NsYXZlc19tYXNrID0gMDsKLX0KLQotc3RhdGljIGludCBpY2xfY29tcHV0ZV9wb3J0X3N5
bmNfY3J0Y19zdGF0ZShzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yLAotCQkJCQkgICAg
c3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCi0JCQkJCSAgICBpbnQgbnVtX3Rp
bGVkX2Nvbm5zKQotewotCXN0cnVjdCBkcm1fY3J0YyAqY3J0YyA9IGNydGNfc3RhdGUtPnVhcGku
Y3J0YzsKLQlzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSA9IHRvX2ludGVsX2F0b21p
Y19zdGF0ZShjcnRjX3N0YXRlLT51YXBpLnN0YXRlKTsKLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGNfc3RhdGUtPnVhcGkuY3J0Yy0+ZGV2KTsKLQlzdHJ1
Y3QgZHJtX2Nvbm5lY3RvciAqbWFzdGVyX2Nvbm5lY3RvcjsKLQlzdHJ1Y3QgZHJtX2Nvbm5lY3Rv
cl9saXN0X2l0ZXIgY29ubl9pdGVyOwotCXN0cnVjdCBkcm1fY3J0YyAqbWFzdGVyX2NydGMgPSBO
VUxMOwotCXN0cnVjdCBkcm1fY3J0Y19zdGF0ZSAqbWFzdGVyX2NydGNfc3RhdGU7Ci0Jc3RydWN0
IGludGVsX2NydGNfc3RhdGUgKm1hc3Rlcl9waXBlX2NvbmZpZzsKLQotCWlmIChJTlRFTF9HRU4o
ZGV2X3ByaXYpIDwgMTEpCi0JCXJldHVybiAwOwotCi0JaWYgKCFpbnRlbF9jcnRjX2hhc190eXBl
KGNydGNfc3RhdGUsIElOVEVMX09VVFBVVF9EUCkpCi0JCXJldHVybiAwOwotCi0JLyoKLQkgKiBJ
biBjYXNlIG9mIHRpbGVkIGRpc3BsYXlzIHRoZXJlIGNvdWxkIGJlIG9uZSBvciBtb3JlIHNsYXZl
cyBidXQgdGhlcmUgaXMKLQkgKiBvbmx5IG9uZSBtYXN0ZXIuIExldHMgbWFrZSB0aGUgQ1JUQyB1
c2VkIGJ5IHRoZSBjb25uZWN0b3IgY29ycmVzcG9uZGluZwotCSAqIHRvIHRoZSBsYXN0IGhvcml6
b25hbCBhbmQgbGFzdCB2ZXJ0aWNhbCB0aWxlIGEgbWFzdGVyL2dlbmxvY2sgQ1JUQy4KLQkgKiBB
bGwgdGhlIG90aGVyIENSVENzIGNvcnJlc3BvbmRpbmcgdG8gb3RoZXIgdGlsZXMgb2YgdGhlIHNh
bWUgVGlsZSBncm91cAotCSAqIGFyZSB0aGUgc2xhdmUgQ1JUQ3MgYW5kIGhvbGQgYSBwb2ludGVy
IHRvIHRoZWlyIGdlbmxvY2sgQ1JUQy4KLQkgKiBJZiBhbGwgdGlsZXMgbm90IHByZXNlbnQgZG8g
bm90IG1ha2UgbWFzdGVyIHNsYXZlIGFzc2lnbm1lbnRzLgotCSAqLwotCWlmICghY29ubmVjdG9y
LT5oYXNfdGlsZSB8fAotCSAgICBjcnRjX3N0YXRlLT5ody5tb2RlLmhkaXNwbGF5ICE9IGNvbm5l
Y3Rvci0+dGlsZV9oX3NpemUgfHwKLQkgICAgY3J0Y19zdGF0ZS0+aHcubW9kZS52ZGlzcGxheSAh
PSBjb25uZWN0b3ItPnRpbGVfdl9zaXplIHx8Ci0JICAgIG51bV90aWxlZF9jb25ucyA8IGNvbm5l
Y3Rvci0+bnVtX2hfdGlsZSAqIGNvbm5lY3Rvci0+bnVtX3ZfdGlsZSkgewotCQlyZXNldF9wb3J0
X3N5bmNfbW9kZV9zdGF0ZShjcnRjX3N0YXRlKTsKLQkJcmV0dXJuIDA7Ci0JfQotCS8qIExhc3Qg
SG9yaXpvbnRhbCBhbmQgbGFzdCB2ZXJ0aWNhbCB0aWxlIGNvbm5lY3RvciBpcyBhIG1hc3Rlcgot
CSAqIE1hc3RlcidzIGNydGMgc3RhdGUgaXMgYWxyZWFkeSBwb3B1bGF0ZWQgaW4gc2xhdmUgZm9y
IHBvcnQgc3luYwotCSAqLwotCWlmIChjb25uZWN0b3ItPnRpbGVfaF9sb2MgPT0gY29ubmVjdG9y
LT5udW1faF90aWxlIC0gMSAmJgotCSAgICBjb25uZWN0b3ItPnRpbGVfdl9sb2MgPT0gY29ubmVj
dG9yLT5udW1fdl90aWxlIC0gMSkKLQkJcmV0dXJuIDA7Ci0KLQkvKiBMb29wIHRocm91Z2ggYWxs
IGNvbm5lY3RvcnMgYW5kIGNvbmZpZ3VyZSB0aGUgU2xhdmUgY3J0Y19zdGF0ZQotCSAqIHRvIHBv
aW50IHRvIHRoZSBjb3JyZWN0IG1hc3Rlci4KLQkgKi8KLQlkcm1fY29ubmVjdG9yX2xpc3RfaXRl
cl9iZWdpbigmZGV2X3ByaXYtPmRybSwgJmNvbm5faXRlcik7Ci0JZHJtX2Zvcl9lYWNoX2Nvbm5l
Y3Rvcl9pdGVyKG1hc3Rlcl9jb25uZWN0b3IsICZjb25uX2l0ZXIpIHsKLQkJc3RydWN0IGRybV9j
b25uZWN0b3Jfc3RhdGUgKm1hc3Rlcl9jb25uX3N0YXRlID0gTlVMTDsKLQotCQlpZiAoIShtYXN0
ZXJfY29ubmVjdG9yLT5oYXNfdGlsZSAmJgotCQkgICAgICBtYXN0ZXJfY29ubmVjdG9yLT50aWxl
X2dyb3VwLT5pZCA9PSBjb25uZWN0b3ItPnRpbGVfZ3JvdXAtPmlkKSkKLQkJCWNvbnRpbnVlOwot
CQlpZiAobWFzdGVyX2Nvbm5lY3Rvci0+dGlsZV9oX2xvYyAhPSBtYXN0ZXJfY29ubmVjdG9yLT5u
dW1faF90aWxlIC0gMSB8fAotCQkgICAgbWFzdGVyX2Nvbm5lY3Rvci0+dGlsZV92X2xvYyAhPSBt
YXN0ZXJfY29ubmVjdG9yLT5udW1fdl90aWxlIC0gMSkKLQkJCWNvbnRpbnVlOwotCi0JCW1hc3Rl
cl9jb25uX3N0YXRlID0gZHJtX2F0b21pY19nZXRfY29ubmVjdG9yX3N0YXRlKCZzdGF0ZS0+YmFz
ZSwKLQkJCQkJCQkJICAgbWFzdGVyX2Nvbm5lY3Rvcik7Ci0JCWlmIChJU19FUlIobWFzdGVyX2Nv
bm5fc3RhdGUpKSB7Ci0JCQlkcm1fY29ubmVjdG9yX2xpc3RfaXRlcl9lbmQoJmNvbm5faXRlcik7
Ci0JCQlyZXR1cm4gUFRSX0VSUihtYXN0ZXJfY29ubl9zdGF0ZSk7Ci0JCX0KLQkJaWYgKG1hc3Rl
cl9jb25uX3N0YXRlLT5jcnRjKSB7Ci0JCQltYXN0ZXJfY3J0YyA9IG1hc3Rlcl9jb25uX3N0YXRl
LT5jcnRjOwotCQkJYnJlYWs7Ci0JCX0KLQl9Ci0JZHJtX2Nvbm5lY3Rvcl9saXN0X2l0ZXJfZW5k
KCZjb25uX2l0ZXIpOwotCi0JaWYgKCFtYXN0ZXJfY3J0YykgewotCQlkcm1fZGJnX2ttcygmZGV2
X3ByaXYtPmRybSwKLQkJCSAgICAiQ291bGQgbm90IGZpbmQgTWFzdGVyIENSVEMgZm9yIFNsYXZl
IENSVEMgJWRcbiIsCi0JCQkgICAgY3J0Yy0+YmFzZS5pZCk7Ci0JCXJldHVybiAtRUlOVkFMOwot
CX0KLQotCW1hc3Rlcl9jcnRjX3N0YXRlID0gZHJtX2F0b21pY19nZXRfY3J0Y19zdGF0ZSgmc3Rh
dGUtPmJhc2UsCi0JCQkJCQkgICAgICBtYXN0ZXJfY3J0Yyk7Ci0JaWYgKElTX0VSUihtYXN0ZXJf
Y3J0Y19zdGF0ZSkpCi0JCXJldHVybiBQVFJfRVJSKG1hc3Rlcl9jcnRjX3N0YXRlKTsKLQotCW1h
c3Rlcl9waXBlX2NvbmZpZyA9IHRvX2ludGVsX2NydGNfc3RhdGUobWFzdGVyX2NydGNfc3RhdGUp
OwotCWNydGNfc3RhdGUtPm1hc3Rlcl90cmFuc2NvZGVyID0gbWFzdGVyX3BpcGVfY29uZmlnLT5j
cHVfdHJhbnNjb2RlcjsKLQltYXN0ZXJfcGlwZV9jb25maWctPnN5bmNfbW9kZV9zbGF2ZXNfbWFz
ayB8PQotCQlCSVQoY3J0Y19zdGF0ZS0+Y3B1X3RyYW5zY29kZXIpOwotCWRybV9kYmdfa21zKCZk
ZXZfcHJpdi0+ZHJtLAotCQkgICAgIk1hc3RlciBUcmFuc2NvZGVyID0gJXMgYWRkZWQgZm9yIFNs
YXZlIENSVEMgPSAlZCwgc2xhdmUgdHJhbnNjb2RlciBiaXRtYXNrID0gJWRcbiIsCi0JCSAgICB0
cmFuc2NvZGVyX25hbWUoY3J0Y19zdGF0ZS0+bWFzdGVyX3RyYW5zY29kZXIpLAotCQkgICAgY3J0
Yy0+YmFzZS5pZCwKLQkJICAgIG1hc3Rlcl9waXBlX2NvbmZpZy0+c3luY19tb2RlX3NsYXZlc19t
YXNrKTsKLQotCXJldHVybiAwOwotfQotCiBzdGF0aWMgdTE2IGhzd19saW5ldGltZV93bShjb25z
dCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIHsKIAljb25zdCBzdHJ1Y3Qg
ZHJtX2Rpc3BsYXlfbW9kZSAqYWRqdXN0ZWRfbW9kZSA9CkBAIC0xMzMzMiwxNSArMTMyMTIsNiBA
QCBpbnRlbF9jcnRjX3ByZXBhcmVfY2xlYXJlZF9zdGF0ZShzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqY3J0Y19zdGF0ZSkKIAlpZiAoSVNfRzRYKGRldl9wcml2KSB8fAogCSAgICBJU19WQUxMRVlW
SUVXKGRldl9wcml2KSB8fCBJU19DSEVSUllWSUVXKGRldl9wcml2KSkKIAkJc2F2ZWRfc3RhdGUt
PndtID0gY3J0Y19zdGF0ZS0+d207Ci0JLyoKLQkgKiBTYXZlIHRoZSBzbGF2ZSBiaXRtYXNrIHdo
aWNoIGdldHMgZmlsbGVkIGZvciBtYXN0ZXIgY3J0YyBzdGF0ZSBkdXJpbmcKLQkgKiBzbGF2ZSBh
dG9taWMgY2hlY2sgY2FsbC4gRm9yIGFsbCBvdGhlciBDUlRDcyByZXNldCB0aGUgcG9ydCBzeW5j
IHZhcmlhYmxlcwotCSAqIGNydGNfc3RhdGUtPm1hc3Rlcl90cmFuc2NvZGVyIG5lZWRzIHRvIGJl
IHNldCB0byBJTlZBTElECi0JICovCi0JcmVzZXRfcG9ydF9zeW5jX21vZGVfc3RhdGUoc2F2ZWRf
c3RhdGUpOwotCWlmIChpbnRlbF9hdG9taWNfaXNfbWFzdGVyX2Nvbm5lY3RvcihjcnRjX3N0YXRl
KSkKLQkJc2F2ZWRfc3RhdGUtPnN5bmNfbW9kZV9zbGF2ZXNfbWFzayA9Ci0JCQljcnRjX3N0YXRl
LT5zeW5jX21vZGVfc2xhdmVzX21hc2s7CiAKIAltZW1jcHkoY3J0Y19zdGF0ZSwgc2F2ZWRfc3Rh
dGUsIHNpemVvZigqY3J0Y19zdGF0ZSkpOwogCWtmcmVlKHNhdmVkX3N0YXRlKTsKQEAgLTEzMzU4
LDggKzEzMjI5LDcgQEAgaW50ZWxfbW9kZXNldF9waXBlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqcGlwZV9jb25maWcpCiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0
b19pOTE1KHBpcGVfY29uZmlnLT51YXBpLmNydGMtPmRldik7CiAJc3RydWN0IGRybV9jb25uZWN0
b3IgKmNvbm5lY3RvcjsKIAlzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZSAqY29ubmVjdG9yX3N0
YXRlOwotCWludCBiYXNlX2JwcCwgcmV0OwotCWludCBpLCB0aWxlX2dyb3VwX2lkID0gLTEsIG51
bV90aWxlZF9jb25ucyA9IDA7CisJaW50IGJhc2VfYnBwLCByZXQsIGk7CiAJYm9vbCByZXRyeSA9
IHRydWU7CiAKIAlwaXBlX2NvbmZpZy0+Y3B1X3RyYW5zY29kZXIgPQpAQCAtMTM0MzEsMjQgKzEz
MzAxLDYgQEAgaW50ZWxfbW9kZXNldF9waXBlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqcGlwZV9jb25maWcpCiAJZHJtX21vZGVfc2V0X2NydGNpbmZvKCZwaXBlX2NvbmZpZy0+aHcu
YWRqdXN0ZWRfbW9kZSwKIAkJCSAgICAgIENSVENfU1RFUkVPX0RPVUJMRSk7CiAKLQkvKiBHZXQg
dGlsZV9ncm91cF9pZCBvZiB0aWxlZCBjb25uZWN0b3IgKi8KLQlmb3JfZWFjaF9uZXdfY29ubmVj
dG9yX2luX3N0YXRlKHN0YXRlLCBjb25uZWN0b3IsIGNvbm5lY3Rvcl9zdGF0ZSwgaSkgewotCQlp
ZiAoY29ubmVjdG9yX3N0YXRlLT5jcnRjID09IGNydGMgJiYKLQkJICAgIGNvbm5lY3Rvci0+aGFz
X3RpbGUpIHsKLQkJCXRpbGVfZ3JvdXBfaWQgPSBjb25uZWN0b3ItPnRpbGVfZ3JvdXAtPmlkOwot
CQkJYnJlYWs7Ci0JCX0KLQl9Ci0KLQkvKiBHZXQgdG90YWwgbnVtYmVyIG9mIHRpbGVkIGNvbm5l
Y3RvcnMgaW4gc3RhdGUgdGhhdCBiZWxvbmcgdG8KLQkgKiB0aGlzIHRpbGUgZ3JvdXAuCi0JICov
Ci0JZm9yX2VhY2hfbmV3X2Nvbm5lY3Rvcl9pbl9zdGF0ZShzdGF0ZSwgY29ubmVjdG9yLCBjb25u
ZWN0b3Jfc3RhdGUsIGkpIHsKLQkJaWYgKGNvbm5lY3Rvci0+aGFzX3RpbGUgJiYKLQkJICAgIGNv
bm5lY3Rvci0+dGlsZV9ncm91cC0+aWQgPT0gdGlsZV9ncm91cF9pZCkKLQkJCW51bV90aWxlZF9j
b25ucysrOwotCX0KLQogCS8qIFBhc3Mgb3VyIG1vZGUgdG8gdGhlIGNvbm5lY3RvcnMgYW5kIHRo
ZSBDUlRDIHRvIGdpdmUgdGhlbSBhIGNoYW5jZSB0bwogCSAqIGFkanVzdCBpdCBhY2NvcmRpbmcg
dG8gbGltaXRhdGlvbnMgb3IgY29ubmVjdG9yIHByb3BlcnRpZXMsIGFuZCBhbHNvCiAJICogYSBj
aGFuY2UgdG8gcmVqZWN0IHRoZSBtb2RlIGVudGlyZWx5LgpAQCAtMTM0NjAsMTUgKzEzMzEyLDYg
QEAgaW50ZWxfbW9kZXNldF9waXBlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqcGlw
ZV9jb25maWcpCiAJCWlmIChjb25uZWN0b3Jfc3RhdGUtPmNydGMgIT0gY3J0YykKIAkJCWNvbnRp
bnVlOwogCi0JCXJldCA9IGljbF9jb21wdXRlX3BvcnRfc3luY19jcnRjX3N0YXRlKGNvbm5lY3Rv
ciwgcGlwZV9jb25maWcsCi0JCQkJCQkgICAgICAgbnVtX3RpbGVkX2Nvbm5zKTsKLQkJaWYgKHJl
dCkgewotCQkJZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwKLQkJCQkgICAgIkNhbm5vdCBhc3NpZ24g
U3luYyBNb2RlIENSVENzOiAlZFxuIiwKLQkJCQkgICAgcmV0KTsKLQkJCXJldHVybiByZXQ7Ci0J
CX0KLQogCQlyZXQgPSBlbmNvZGVyLT5jb21wdXRlX2NvbmZpZyhlbmNvZGVyLCBwaXBlX2NvbmZp
ZywKIAkJCQkJICAgICAgY29ubmVjdG9yX3N0YXRlKTsKIAkJaWYgKHJldCA8IDApIHsKLS0gCjIu
MTkuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
