Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 137AD1BC676
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2020 19:20:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4C476E88C;
	Tue, 28 Apr 2020 17:20:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CF376E875;
 Tue, 28 Apr 2020 17:20:41 +0000 (UTC)
IronPort-SDR: dniXOxDznfpfCUYYpcfsTAuLy+PdbfY0z9I1vfNNdj+yGBUcbpOm0vouXeQ8fSPq2IFghBE4Hl
 xro9XDtbXnzA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2020 10:20:40 -0700
IronPort-SDR: zIE+YDOPiXztMGQVGi20npXWPDuS0HCAJb68RJGXhrZeQZEUovr1utrtZP+WYfjoAAY5WZdOJw
 +1+uZAy1RIfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,328,1583222400"; d="scan'208";a="292922542"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 28 Apr 2020 10:20:37 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 28 Apr 2020 20:20:37 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: dri-devel@lists.freedesktop.org
Date: Tue, 28 Apr 2020 20:19:38 +0300
Message-Id: <20200428171940.19552-15-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200428171940.19552-1-ville.syrjala@linux.intel.com>
References: <20200428171940.19552-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 14/16] drm/gma500: Stop using
 mode->private_flags
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 Sam Ravnborg <sam@ravnborg.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCmdt
YTUwMCBvbmx5IHVzZXMgbW9kZS0+cHJpdmF0ZV9mbGFncyB0byBjb252ZXkgdGhlIHNkdm8gcGl4
ZWwKbXVsdGlwbGllciBmcm9tIHRoZSBlbmNvZGVyIC5tb2RlX2ZpeHVwKCkgaG9vayB0byB0aGUg
ZW5jb2RlcgoubW9kZV9zZXQoKSBob29rLiBUaG9zZSBhbHdheXMgc2VlbXMgZ2V0IGNhbGxlZCBh
cyBhIHBhaXIgc28KbGV0J3MganVzdCBzdHVmZiB0aGUgcGl4ZWwgbXVsdGlwbGllciBpbnRvIHRo
ZSBlbmNvZGVyIGl0c2VsZgphcyB0aGVyZSBhcmUgbm8gc3RhdGUgb2JqZWN0cyB3ZSBjb3VsZCB1
c2UgaW4gdGhpcyBub24tYXRvbWljCmRyaXZlci4KClBhdmVzIHRoZSB3YXkgZm9yIG51a2luZyBt
b2RlLT5wcml2YXRlX2ZsYWcuCgpDYzogUGF0cmlrIEpha29ic3NvbiA8cGF0cmlrLnIuamFrb2Jz
c29uQGdtYWlsLmNvbT4KQ0M6IFNhbSBSYXZuYm9yZyA8c2FtQHJhdm5ib3JnLm9yZz4KQ2M6IERh
bmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+CkNjOiBFbWlsIFZlbGlrb3YgPGVt
aWwubC52ZWxpa292QGdtYWlsLmNvbT4KUmV2aWV3ZWQtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmll
bC52ZXR0ZXJAZmZ3bGwuY2g+ClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUu
c3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2dtYTUwMC9wc2Jf
aW50ZWxfZHJ2LmggIHwgMTkgLS0tLS0tLS0tLS0tLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2dt
YTUwMC9wc2JfaW50ZWxfc2R2by5jIHwgMTEgKysrKysrLS0tLS0KIDIgZmlsZXMgY2hhbmdlZCwg
NiBpbnNlcnRpb25zKCspLCAyNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vZ21hNTAwL3BzYl9pbnRlbF9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9nbWE1MDAvcHNi
X2ludGVsX2Rydi5oCmluZGV4IGZiNjAxOTgzY2VmMC4uM2RkNTcxOGMzZTMxIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vZ21hNTAwL3BzYl9pbnRlbF9kcnYuaAorKysgYi9kcml2ZXJzL2dw
dS9kcm0vZ21hNTAwL3BzYl9pbnRlbF9kcnYuaApAQCAtNTYsMjUgKzU2LDYgQEAKICNkZWZpbmUg
SU5URUxfT1VUUFVUX0RJU1BMQVlQT1JUIDkKICNkZWZpbmUgSU5URUxfT1VUUFVUX0VEUCAxMAog
Ci0jZGVmaW5lIElOVEVMX01PREVfUElYRUxfTVVMVElQTElFUl9TSElGVCAoMHgwKQotI2RlZmlu
ZSBJTlRFTF9NT0RFX1BJWEVMX01VTFRJUExJRVJfTUFTSyAoMHhmIDw8IElOVEVMX01PREVfUElY
RUxfTVVMVElQTElFUl9TSElGVCkKLQotc3RhdGljIGlubGluZSB2b2lkCi1wc2JfaW50ZWxfbW9k
ZV9zZXRfcGl4ZWxfbXVsdGlwbGllcihzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqbW9kZSwKLQkJ
CQlpbnQgbXVsdGlwbGllcikKLXsKLQltb2RlLT5jbG9jayAqPSBtdWx0aXBsaWVyOwotCW1vZGUt
PnByaXZhdGVfZmxhZ3MgfD0gbXVsdGlwbGllcjsKLX0KLQotc3RhdGljIGlubGluZSBpbnQKLXBz
Yl9pbnRlbF9tb2RlX2dldF9waXhlbF9tdWx0aXBsaWVyKGNvbnN0IHN0cnVjdCBkcm1fZGlzcGxh
eV9tb2RlICptb2RlKQotewotCXJldHVybiAobW9kZS0+cHJpdmF0ZV9mbGFncyAmIElOVEVMX01P
REVfUElYRUxfTVVMVElQTElFUl9NQVNLKQotCSAgICAgICA+PiBJTlRFTF9NT0RFX1BJWEVMX01V
TFRJUExJRVJfU0hJRlQ7Ci19Ci0KLQogLyoKICAqIEhvbGQgaW5mb3JtYXRpb24gdXNlYWxseSBw
dXQgb24gdGhlIGRldmljZSBkcml2ZXIgcHJpdmF0ZXMgaGVyZSwKICAqIHNpbmNlIGl0IG5lZWRz
IHRvIGJlIHNoYXJlZCBhY3Jvc3MgbXVsdGlwbGUgb2YgZGV2aWNlcyBkcml2ZXJzIHByaXZhdGVz
LgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2dtYTUwMC9wc2JfaW50ZWxfc2R2by5jIGIv
ZHJpdmVycy9ncHUvZHJtL2dtYTUwMC9wc2JfaW50ZWxfc2R2by5jCmluZGV4IDY4ZmIzZDdjMTcy
Yi4uMDZlNDRmNDdlNzNlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZ21hNTAwL3BzYl9p
bnRlbF9zZHZvLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2dtYTUwMC9wc2JfaW50ZWxfc2R2by5j
CkBAIC0xMzIsNiArMTMyLDggQEAgc3RydWN0IHBzYl9pbnRlbF9zZHZvIHsKIAkvKiBEREMgYnVz
IHVzZWQgYnkgdGhpcyBTRFZPIGVuY29kZXIgKi8KIAl1aW50OF90IGRkY19idXM7CiAKKwl1OCBw
aXhlbF9tdWx0aXBsaWVyOworCiAJLyogSW5wdXQgdGltaW5ncyBmb3IgYWRqdXN0ZWRfbW9kZSAq
LwogCXN0cnVjdCBwc2JfaW50ZWxfc2R2b19kdGQgaW5wdXRfZHRkOwogCkBAIC05MjgsNyArOTMw
LDYgQEAgc3RhdGljIGJvb2wgcHNiX2ludGVsX3Nkdm9fbW9kZV9maXh1cChzdHJ1Y3QgZHJtX2Vu
Y29kZXIgKmVuY29kZXIsCiAJCQkJICBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqYWRqdXN0ZWRf
bW9kZSkKIHsKIAlzdHJ1Y3QgcHNiX2ludGVsX3Nkdm8gKnBzYl9pbnRlbF9zZHZvID0gdG9fcHNi
X2ludGVsX3Nkdm8oZW5jb2Rlcik7Ci0JaW50IG11bHRpcGxpZXI7CiAKIAkvKiBXZSBuZWVkIHRv
IGNvbnN0cnVjdCBwcmVmZXJyZWQgaW5wdXQgdGltaW5ncyBiYXNlZCBvbiBvdXIKIAkgKiBvdXRw
dXQgdGltaW5ncy4gIFRvIGRvIHRoYXQsIHdlIGhhdmUgdG8gc2V0IHRoZSBvdXRwdXQKQEAgLTk1
NSw4ICs5NTYsOSBAQCBzdGF0aWMgYm9vbCBwc2JfaW50ZWxfc2R2b19tb2RlX2ZpeHVwKHN0cnVj
dCBkcm1fZW5jb2RlciAqZW5jb2RlciwKIAkvKiBNYWtlIHRoZSBDUlRDIGNvZGUgZmFjdG9yIGlu
IHRoZSBTRFZPIHBpeGVsIG11bHRpcGxpZXIuICBUaGUKIAkgKiBTRFZPIGRldmljZSB3aWxsIGZh
Y3RvciBvdXQgdGhlIG11bHRpcGxpZXIgZHVyaW5nIG1vZGVfc2V0LgogCSAqLwotCW11bHRpcGxp
ZXIgPSBwc2JfaW50ZWxfc2R2b19nZXRfcGl4ZWxfbXVsdGlwbGllcihhZGp1c3RlZF9tb2RlKTsK
LQlwc2JfaW50ZWxfbW9kZV9zZXRfcGl4ZWxfbXVsdGlwbGllcihhZGp1c3RlZF9tb2RlLCBtdWx0
aXBsaWVyKTsKKwlwc2JfaW50ZWxfc2R2by0+cGl4ZWxfbXVsdGlwbGllciA9CisJCXBzYl9pbnRl
bF9zZHZvX2dldF9waXhlbF9tdWx0aXBsaWVyKGFkanVzdGVkX21vZGUpOworCWFkanVzdGVkX21v
ZGUtPmNsb2NrICo9IHBzYl9pbnRlbF9zZHZvLT5waXhlbF9tdWx0aXBsaWVyOwogCiAJcmV0dXJu
IHRydWU7CiB9CkBAIC05NzIsNyArOTc0LDYgQEAgc3RhdGljIHZvaWQgcHNiX2ludGVsX3Nkdm9f
bW9kZV9zZXQoc3RydWN0IGRybV9lbmNvZGVyICplbmNvZGVyLAogCXUzMiBzZHZveDsKIAlzdHJ1
Y3QgcHNiX2ludGVsX3Nkdm9faW5fb3V0X21hcCBpbl9vdXQ7CiAJc3RydWN0IHBzYl9pbnRlbF9z
ZHZvX2R0ZCBpbnB1dF9kdGQ7Ci0JaW50IHBpeGVsX211bHRpcGxpZXIgPSBwc2JfaW50ZWxfbW9k
ZV9nZXRfcGl4ZWxfbXVsdGlwbGllcihhZGp1c3RlZF9tb2RlKTsKIAlpbnQgcmF0ZTsKIAlpbnQg
bmVlZF9hdXggPSBJU19NUlNUKGRldikgPyAxIDogMDsKIApAQCAtMTAzMCw3ICsxMDMxLDcgQEAg
c3RhdGljIHZvaWQgcHNiX2ludGVsX3Nkdm9fbW9kZV9zZXQoc3RydWN0IGRybV9lbmNvZGVyICpl
bmNvZGVyLAogCiAJKHZvaWQpIHBzYl9pbnRlbF9zZHZvX3NldF9pbnB1dF90aW1pbmcocHNiX2lu
dGVsX3Nkdm8sICZpbnB1dF9kdGQpOwogCi0Jc3dpdGNoIChwaXhlbF9tdWx0aXBsaWVyKSB7CisJ
c3dpdGNoIChwc2JfaW50ZWxfc2R2by0+cGl4ZWxfbXVsdGlwbGllcikgewogCWRlZmF1bHQ6CiAJ
Y2FzZSAxOiByYXRlID0gU0RWT19DTE9DS19SQVRFX01VTFRfMVg7IGJyZWFrOwogCWNhc2UgMjog
cmF0ZSA9IFNEVk9fQ0xPQ0tfUkFURV9NVUxUXzJYOyBicmVhazsKLS0gCjIuMjQuMQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
