Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E25E6AA35A
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2019 14:39:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50105892C2;
	Thu,  5 Sep 2019 12:39:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05721892C2
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Sep 2019 12:39:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Sep 2019 05:39:39 -0700
X-IronPort-AV: E=Sophos;i="5.64,470,1559545200"; d="scan'208";a="334542843"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Sep 2019 05:39:36 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Sep 2019 15:39:16 +0300
Message-Id: <20190905123916.27846-4-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190905123916.27846-1-jani.nikula@intel.com>
References: <20190905123916.27846-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [CI 3/3] drm/i915: introduce INTEL_DISPLAY_ENABLED()
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UHJlcGFyZSBmb3IgbWFraW5nIGEgZGlzdGluY3Rpb24gYmV0d2VlbiBub3QgaGF2aW5nIGRpc3Bs
YXkgYW5kIGhhdmluZwpkaXNhYmxlZCBkaXNwbGF5LiBBZGQgSU5URUxfRElTUExBWV9FTkFCTEVE
KCkgYW5kIHVzZSBpdCB3aGVyZQpIQVNfRElTUExBWSgpIGlzIHVzZWQuIFRoaXMgaXMgaW5pdGlh
bGx5IGR1cGxpY2F0aW9uLCBhcyBkaXNhYmxpbmcKZGlzcGxheSBzdGlsbCBsZWFkcyB0byAtPnBp
cGVfbWFzayA9IDAgYW5kIEhBU19ESVNQTEFZKCkgYmVpbmcgZmFsc2UuCgpTaW5jZSBJTlRFTF9E
SVNQTEFZX0VOQUJMRUQoKSB3aWxsIG5vdCBtYWtlIHNlbnNlIHVubGVzcyBIQVNfRElTUExBWSgp
CmlzIHRydWUsIGluY2x1ZGUgYSB3YXJuaW5nIGZvciBjYXRjaGluZyBtaXN1c2VzIG1ha2luZyBk
ZWNpc2lvbnMgb24KSU5URUxfRElTUExBWV9FTkFCTEVEKCkgd2hlbiBIQVNfRElTUExBWSgpIGlz
IGZhbHNlLgoKQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzog
Sm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CkNjOiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogSm9z
w6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CkFja2VkLWJ5OiBWaWxs
ZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5
OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jICAgIHwgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCA0ICsrLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZmJkZXYuYyAgIHwgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9nbWJ1cy5jICAgfCAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Ry
di5jICAgICAgICAgICAgICB8IDggKysrKy0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZHJ2LmggICAgICAgICAgICAgIHwgMyArKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Bj
aC5jICAgICAgICAgICAgIHwgMiArLQogNyBmaWxlcyBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCsp
LCAxMCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Jpb3MuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlv
cy5jCmluZGV4IGVmYjM5ZjM1MGIxOS4uMWRlZjU1MGM2OGM4IDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYwpAQCAtMTgzMyw3ICsxODMzLDcgQEAgdm9pZCBpbnRl
bF9iaW9zX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCWNvbnN0IHN0
cnVjdCBiZGJfaGVhZGVyICpiZGI7CiAJdTggX19pb21lbSAqYmlvcyA9IE5VTEw7CiAKLQlpZiAo
IUhBU19ESVNQTEFZKGRldl9wcml2KSkgeworCWlmICghSEFTX0RJU1BMQVkoZGV2X3ByaXYpIHx8
ICFJTlRFTF9ESVNQTEFZX0VOQUJMRUQoZGV2X3ByaXYpKSB7CiAJCURSTV9ERUJVR19LTVMoIlNr
aXBwaW5nIFZCVCBpbml0IGR1ZSB0byBkaXNhYmxlZCBkaXNwbGF5LlxuIik7CiAJCXJldHVybjsK
IAl9CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4
IDBkYTVmOGVmN2QwMi4uYjkyZDBlYjg3MzJjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtMTUzNjAsNyArMTUzNjAsNyBAQCBzdGF0aWMgdm9p
ZCBpbnRlbF9zZXR1cF9vdXRwdXRzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikK
IAogCWludGVsX3Bwc19pbml0KGRldl9wcml2KTsKIAotCWlmICghSEFTX0RJU1BMQVkoZGV2X3By
aXYpKQorCWlmICghSEFTX0RJU1BMQVkoZGV2X3ByaXYpIHx8ICFJTlRFTF9ESVNQTEFZX0VOQUJM
RUQoZGV2X3ByaXYpKQogCQlyZXR1cm47CiAKIAlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAx
MikgewpAQCAtMTcyNjMsNyArMTcyNjMsNyBAQCBpbnRlbF9kaXNwbGF5X2NhcHR1cmVfZXJyb3Jf
c3RhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCiAJQlVJTERfQlVHX09O
KEFSUkFZX1NJWkUodHJhbnNjb2RlcnMpICE9IEFSUkFZX1NJWkUoZXJyb3ItPnRyYW5zY29kZXIp
KTsKIAotCWlmICghSEFTX0RJU1BMQVkoZGV2X3ByaXYpKQorCWlmICghSEFTX0RJU1BMQVkoZGV2
X3ByaXYpIHx8ICFJTlRFTF9ESVNQTEFZX0VOQUJMRUQoZGV2X3ByaXYpKQogCQlyZXR1cm4gTlVM
TDsKIAogCWVycm9yID0ga3phbGxvYyhzaXplb2YoKmVycm9yKSwgR0ZQX0FUT01JQyk7CmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiZGV2LmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiZGV2LmMKaW5kZXggZDU5ZWVlNWM1ZDlj
Li42ODMzODY2OWYwNTQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZmJkZXYuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Zi
ZGV2LmMKQEAgLTQ0NCw3ICs0NDQsNyBAQCBpbnQgaW50ZWxfZmJkZXZfaW5pdChzdHJ1Y3QgZHJt
X2RldmljZSAqZGV2KQogCXN0cnVjdCBpbnRlbF9mYmRldiAqaWZiZGV2OwogCWludCByZXQ7CiAK
LQlpZiAoV0FSTl9PTighSEFTX0RJU1BMQVkoZGV2X3ByaXYpKSkKKwlpZiAoV0FSTl9PTighSEFT
X0RJU1BMQVkoZGV2X3ByaXYpIHx8ICFJTlRFTF9ESVNQTEFZX0VOQUJMRUQoZGV2X3ByaXYpKSkK
IAkJcmV0dXJuIC1FTk9ERVY7CiAKIAlpZmJkZXYgPSBremFsbG9jKHNpemVvZihzdHJ1Y3QgaW50
ZWxfZmJkZXYpLCBHRlBfS0VSTkVMKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZ21idXMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZ21idXMuYwppbmRleCBkNjc3NWEwMDU3MjYuLjNkNGQxOWFjMWQxNCAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9nbWJ1cy5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZ21idXMuYwpAQCAtODM2LDcgKzgzNiw3IEBAIGlu
dCBpbnRlbF9nbWJ1c19zZXR1cChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJ
dW5zaWduZWQgaW50IHBpbjsKIAlpbnQgcmV0OwogCi0JaWYgKCFIQVNfRElTUExBWShkZXZfcHJp
dikpCisJaWYgKCFIQVNfRElTUExBWShkZXZfcHJpdikgfHwgIUlOVEVMX0RJU1BMQVlfRU5BQkxF
RChkZXZfcHJpdikpCiAJCXJldHVybiAwOwogCiAJaWYgKElTX1ZBTExFWVZJRVcoZGV2X3ByaXYp
IHx8IElTX0NIRVJSWVZJRVcoZGV2X3ByaXYpKQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kcnYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKaW5kZXgg
Y2FkNGQ2YmEyZDJjLi5mNzI2NmQ0MDU5NzggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZHJ2LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwpAQCAt
MzM4LDcgKzMzOCw3IEBAIHN0YXRpYyBpbnQgaTkxNV9kcml2ZXJfbW9kZXNldF9wcm9iZShzdHJ1
Y3QgZHJtX2RldmljZSAqZGV2KQogCWlmIChpOTE1X2luamVjdF9wcm9iZV9mYWlsdXJlKGRldl9w
cml2KSkKIAkJcmV0dXJuIC1FTk9ERVY7CiAKLQlpZiAoSEFTX0RJU1BMQVkoZGV2X3ByaXYpKSB7
CisJaWYgKEhBU19ESVNQTEFZKGRldl9wcml2KSAmJiBJTlRFTF9ESVNQTEFZX0VOQUJMRUQoZGV2
X3ByaXYpKSB7CiAJCXJldCA9IGRybV92YmxhbmtfaW5pdCgmZGV2X3ByaXYtPmRybSwKIAkJCQkg
ICAgICBJTlRFTF9OVU1fUElQRVMoZGV2X3ByaXYpKTsKIAkJaWYgKHJldCkKQEAgLTM4OSw3ICsz
ODksNyBAQCBzdGF0aWMgaW50IGk5MTVfZHJpdmVyX21vZGVzZXRfcHJvYmUoc3RydWN0IGRybV9k
ZXZpY2UgKmRldikKIAogCWludGVsX292ZXJsYXlfc2V0dXAoZGV2X3ByaXYpOwogCi0JaWYgKCFI
QVNfRElTUExBWShkZXZfcHJpdikpCisJaWYgKCFIQVNfRElTUExBWShkZXZfcHJpdikgfHwgIUlO
VEVMX0RJU1BMQVlfRU5BQkxFRChkZXZfcHJpdikpCiAJCXJldHVybiAwOwogCiAJcmV0ID0gaW50
ZWxfZmJkZXZfaW5pdChkZXYpOwpAQCAtMTM4MSw3ICsxMzgxLDcgQEAgc3RhdGljIHZvaWQgaTkx
NV9kcml2ZXJfcmVnaXN0ZXIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCX0g
ZWxzZQogCQlEUk1fRVJST1IoIkZhaWxlZCB0byByZWdpc3RlciBkcml2ZXIgZm9yIHVzZXJzcGFj
ZSBhY2Nlc3MhXG4iKTsKIAotCWlmIChIQVNfRElTUExBWShkZXZfcHJpdikpIHsKKwlpZiAoSEFT
X0RJU1BMQVkoZGV2X3ByaXYpICYmIElOVEVMX0RJU1BMQVlfRU5BQkxFRChkZXZfcHJpdikpIHsK
IAkJLyogTXVzdCBiZSBkb25lIGFmdGVyIHByb2Jpbmcgb3V0cHV0cyAqLwogCQlpbnRlbF9vcHJl
Z2lvbl9yZWdpc3RlcihkZXZfcHJpdik7CiAJCWFjcGlfdmlkZW9fcmVnaXN0ZXIoKTsKQEAgLTE0
MDUsNyArMTQwNSw3IEBAIHN0YXRpYyB2b2lkIGk5MTVfZHJpdmVyX3JlZ2lzdGVyKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAkgKiBXZSBuZWVkIHRvIGNvb3JkaW5hdGUgdGhl
IGhvdHBsdWdzIHdpdGggdGhlIGFzeW5jaHJvbm91cyBmYmRldgogCSAqIGNvbmZpZ3VyYXRpb24s
IGZvciB3aGljaCB3ZSB1c2UgdGhlIGZiZGV2LT5hc3luY19jb29raWUuCiAJICovCi0JaWYgKEhB
U19ESVNQTEFZKGRldl9wcml2KSkKKwlpZiAoSEFTX0RJU1BMQVkoZGV2X3ByaXYpICYmIElOVEVM
X0RJU1BMQVlfRU5BQkxFRChkZXZfcHJpdikpCiAJCWRybV9rbXNfaGVscGVyX3BvbGxfaW5pdChk
ZXYpOwogCiAJaW50ZWxfcG93ZXJfZG9tYWluc19lbmFibGUoZGV2X3ByaXYpOwpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZHJ2LmgKaW5kZXggNjU1N2NkOGRkZDdhLi5lZTg0MzcwZmY3YzMgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9kcnYuaApAQCAtMjE4Niw2ICsyMTg2LDkgQEAgSVNfU1VCUExBVEZPUk0oY29uc3Qg
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCiAKICNkZWZpbmUgSEFTX0RJU1BMQVkoZGV2
X3ByaXYpIChJTlRFTF9JTkZPKGRldl9wcml2KS0+cGlwZV9tYXNrICE9IDApCiAKKy8qIE9ubHkg
dmFsaWQgd2hlbiBIQVNfRElTUExBWSgpIGlzIHRydWUgKi8KKyNkZWZpbmUgSU5URUxfRElTUExB
WV9FTkFCTEVEKGRldl9wcml2KSAoV0FSTl9PTighSEFTX0RJU1BMQVkoZGV2X3ByaXYpKSwgIWk5
MTVfbW9kcGFyYW1zLmRpc2FibGVfZGlzcGxheSkKKwogc3RhdGljIGlubGluZSBib29sIGludGVs
X3Z0ZF9hY3RpdmUodm9pZCkKIHsKICNpZmRlZiBDT05GSUdfSU5URUxfSU9NTVUKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BjaC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfcGNoLmMKaW5kZXggZmE4NjRkOGYyYjczLi4xMTE4Njc1NjllZmQgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BjaC5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX3BjaC5jCkBAIC0xODgsNyArMTg4LDcgQEAgdm9pZCBpbnRlbF9kZXRlY3Rf
cGNoKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAkgKiBVc2UgUENIX05PUCAo
UENIIGJ1dCBubyBTb3V0aCBEaXNwbGF5KSBmb3IgUENIIHBsYXRmb3JtcyB3aXRob3V0CiAJICog
ZGlzcGxheS4KIAkgKi8KLQlpZiAocGNoICYmICFIQVNfRElTUExBWShkZXZfcHJpdikpIHsKKwlp
ZiAocGNoICYmICghSEFTX0RJU1BMQVkoZGV2X3ByaXYpIHx8ICFJTlRFTF9ESVNQTEFZX0VOQUJM
RUQoZGV2X3ByaXYpKSkgewogCQlEUk1fREVCVUdfS01TKCJEaXNwbGF5IGRpc2FibGVkLCByZXZl
cnRpbmcgdG8gTk9QIFBDSFxuIik7CiAJCWRldl9wcml2LT5wY2hfdHlwZSA9IFBDSF9OT1A7CiAJ
CWRldl9wcml2LT5wY2hfaWQgPSAwOwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
