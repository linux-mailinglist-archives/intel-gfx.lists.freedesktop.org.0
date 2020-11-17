Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4B202B6DC8
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Nov 2020 19:51:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9B5B6E038;
	Tue, 17 Nov 2020 18:50:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C2F589FD4
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Nov 2020 18:50:52 +0000 (UTC)
IronPort-SDR: HltTyUe2J1D8fh8xM8I+Ts8OBXtAUNfuqhk/doRJWTf07JvSziZGvmTO6hedUhIIjLTM6fUWt5
 72w9mroLjR2A==
X-IronPort-AV: E=McAfee;i="6000,8403,9808"; a="168412286"
X-IronPort-AV: E=Sophos;i="5.77,486,1596524400"; d="scan'208";a="168412286"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 10:50:49 -0800
IronPort-SDR: hP+lRRrwwAXz2BrA9Jktnp6kAqSdsWnXiRhZqxYGRyvPs0jbIXFkgJpKuzwMNEN96JvTu5tWZJ
 7rusQyOA/GUw==
X-IronPort-AV: E=Sophos;i="5.77,486,1596524400"; d="scan'208";a="340996869"
Received: from ankithac-mobl1.amr.corp.intel.com (HELO
 aswarup-mobl.amr.corp.intel.com) ([10.254.101.215])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 10:50:49 -0800
From: Aditya Swarup <aditya.swarup@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Nov 2020 10:50:18 -0800
Message-Id: <20201117185029.22078-11-aditya.swarup@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201117185029.22078-1-aditya.swarup@intel.com>
References: <20201117185029.22078-1-aditya.swarup@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/21] drm/i915/adl_s: Add HTI support and
 initialize display for ADL-S
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SW5pdGlhbGl6ZSBkaXNwbGF5IG91dHB1dHMgYW5kIGFkZCBIVEkgc3VwcG9ydCBmb3IgQURMLVMu
IEFETC1TIGhhcyA1CmRpc3BsYXkgb3V0cHV0cyAtPiAxIGVEUCwgMiBIRE1JIGFuZCAyIERQKysg
b3V0cHV0cy4KCkNjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgpDYzogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IEltcmUgRGVh
ayA8aW1yZS5kZWFrQGludGVsLmNvbT4KQ2M6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBp
bnRlbC5jb20+CkNjOiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4K
U2lnbmVkLW9mZi1ieTogQWRpdHlhIFN3YXJ1cCA8YWRpdHlhLnN3YXJ1cEBpbnRlbC5jb20+Ci0t
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCA4ICsrKysr
KystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jICAgICAgICAgICAgICB8IDEgKwog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAgICAgfCAyICstCiAzIGZp
bGVzIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IGRjYjcwZWZiZmEzYi4u
ZGI4YmE1ZTI5N2ZmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYwpAQCAtMTcyNjEsNyArMTcyNjEsMTMgQEAgc3RhdGljIHZvaWQgaW50ZWxfc2V0dXBf
b3V0cHV0cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJaWYgKCFIQVNfRElT
UExBWShkZXZfcHJpdikpCiAJCXJldHVybjsKIAotCWlmIChJU19ERzEoZGV2X3ByaXYpIHx8IElT
X1JPQ0tFVExBS0UoZGV2X3ByaXYpKSB7CisJaWYgKElTX0FMREVSTEFLRV9TKGRldl9wcml2KSkg
eworCQlpbnRlbF9kZGlfaW5pdChkZXZfcHJpdiwgUE9SVF9BKTsKKwkJaW50ZWxfZGRpX2luaXQo
ZGV2X3ByaXYsIFBPUlRfRCk7CS8qIERESSBUQzEgKi8KKwkJaW50ZWxfZGRpX2luaXQoZGV2X3By
aXYsIFBPUlRfRSk7CS8qIERESSBUQzIgKi8KKwkJaW50ZWxfZGRpX2luaXQoZGV2X3ByaXYsIFBP
UlRfRik7CS8qIERESSBUQzMgKi8KKwkJaW50ZWxfZGRpX2luaXQoZGV2X3ByaXYsIFBPUlRfRyk7
CS8qIERESSBUQzQgKi8KKwl9IGVsc2UgaWYgKElTX0RHMShkZXZfcHJpdikgfHwgSVNfUk9DS0VU
TEFLRShkZXZfcHJpdikpIHsKIAkJaW50ZWxfZGRpX2luaXQoZGV2X3ByaXYsIFBPUlRfQSk7CiAJ
CWludGVsX2RkaV9pbml0KGRldl9wcml2LCBQT1JUX0IpOwogCQlpbnRlbF9kZGlfaW5pdChkZXZf
cHJpdiwgUE9SVF9UQzEpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9w
Y2kuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMKaW5kZXggMDY5YWMwYzI4YmIz
Li4yNmU0YmY4YmI0ZWYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNp
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYwpAQCAtOTMwLDYgKzkzMCw3
IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfZGV2aWNlX2luZm8gYWRsX3NfaW5mbyA9IHsK
IAlQTEFURk9STShJTlRFTF9BTERFUkxBS0VfUyksCiAJLnBpcGVfbWFzayA9IEJJVChQSVBFX0Ep
IHwgQklUKFBJUEVfQikgfCBCSVQoUElQRV9DKSB8IEJJVChQSVBFX0QpLAogCS5yZXF1aXJlX2Zv
cmNlX3Byb2JlID0gMSwKKwkuZGlzcGxheS5oYXNfaHRpID0gMSwKIAkuZGlzcGxheS5oYXNfcHNy
X2h3X3RyYWNraW5nID0gMCwKIAkucGxhdGZvcm1fZW5naW5lX21hc2sgPQogCQlCSVQoUkNTMCkg
fCBCSVQoQkNTMCkgfCBCSVQoVkVDUzApIHwgQklUKFZDUzApIHwgQklUKFZDUzIpLApkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcmVnLmgKaW5kZXggNTQxNmQwNDM3M2FlLi40YzhkMGQ4NGFmNmEgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9yZWcuaApAQCAtMjkyOCw3ICsyOTI4LDcgQEAgc3RhdGljIGlubGluZSBib29s
IGk5MTVfbW1pb19yZWdfdmFsaWQoaTkxNV9yZWdfdCByZWcpCiAjZGVmaW5lIE1CVVNfQkJPWF9D
VExfUzIJCV9NTUlPKDB4NDUwNDQpCiAKICNkZWZpbmUgSERQT1JUX1NUQVRFCQkJX01NSU8oMHg0
NTA1MCkKLSNkZWZpbmUgICBIRFBPUlRfRFBMTF9VU0VEX01BU0sJCVJFR19HRU5NQVNLKDE0LCAx
MikKKyNkZWZpbmUgICBIRFBPUlRfRFBMTF9VU0VEX01BU0sJCVJFR19HRU5NQVNLKDE1LCAxMikK
ICNkZWZpbmUgICBIRFBPUlRfUEhZX1VTRURfRFAocGh5KQlSRUdfQklUKDIgKiAocGh5KSArIDIp
CiAjZGVmaW5lICAgSERQT1JUX1BIWV9VU0VEX0hETUkocGh5KQlSRUdfQklUKDIgKiAocGh5KSAr
IDEpCiAjZGVmaW5lICAgSERQT1JUX0VOQUJMRUQJCVJFR19CSVQoMCkKLS0gCjIuMjcuMAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
