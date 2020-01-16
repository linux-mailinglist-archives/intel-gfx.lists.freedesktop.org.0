Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 265F413F522
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2020 19:54:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 494BA6EE93;
	Thu, 16 Jan 2020 18:54:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 284356EE90
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jan 2020 18:54:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Jan 2020 10:54:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,327,1574150400"; d="scan'208";a="259590318"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.12.138])
 by fmsmga001.fm.intel.com with ESMTP; 16 Jan 2020 10:54:24 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Jan 2020 10:54:21 -0800
Message-Id: <20200116185421.66585-3-jose.souza@intel.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200116185421.66585-1-jose.souza@intel.com>
References: <20200116185421.66585-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH rebased 3/3] drm/i915/dc3co: Avoid full modeset
 when EXITLINE needs to be changed
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

QSByZWNlbnQgY2hhbmdlIGluIEJTcGVjIGFsbG93IHVzIHRvIGNoYW5nZSBFWFRMSU5FIHdoaWxl
IHRyYW5zY29kZXIKaXMgZW5hYmxlZCBzbyB0aGlzIGFsbG93IHVzIHRvIGNoYW5nZSBpdCBldmVu
IHdoZW4gZG9pbmcgdGhlIGZpcnN0CmZhc3RzZXQgYWZ0ZXIgdGFraW5nIG92ZXIgcHJldmlvdXMg
aGFyZHdhcmUgc3RhdGUgc2V0IGJ5IEJJT1MuCkJJT1MgZG9uJ3QgZW5hYmxlIFBTUiwgc28gaWYg
c2luayBzdXBwb3J0cyBQU1IgaXQgd2lsbCBiZSBlbmFibGVkIG9uCnRoZSBmaXJzdCBmYXN0c2V0
LCBzbyBtb3ZpbmcgdGhlIEVYVExJTkUgY29tcHV0ZSBhbmQgc2V0IHRvIFBTUiBmbG93cwphbGxv
dyB1cyB0byBzaW1wbGZ5IGEgYnVuY2ggb2YgY29kZS4KClRoaXMgd2lsbCBzYXZlIGEgbG90IG9m
IHRpbWUgaW4gYWxsIHRoZSBJR1QgdGVzdHMgdGhhdCB1c2VzIENSQywgYXMKd2hlbiBQU1IyIGlz
IGVuYWJsZWQgQ1JDcyBhcmUgbm90IGdlbmVyYXRlZCwgc28gd2Ugc3dpdGNoIHRvIFBTUjEsIHNv
CnRoZSBwcmV2aW91cyBjb2RlIHdvdWxkIGNvbXB1dGUgZGMzY29fZXhpdGxpbmU9MCBjYXVzaW5n
IGEgZnVsbAptb2Rlc2V0IHRoYXQgd291bGQgc2h1dGRvd24gcGlwZSwgZW5hYmxlIGFuZCB0cmFp
biBsaW5rLgoKQlNwZWM6IDQ5MTk2CkNjOiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+
CkNjOiBBbnNodW1hbiBHdXB0YSA8YW5zaHVtYW4uZ3VwdGFAaW50ZWwuY29tPgpTaWduZWQtb2Zm
LWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KLS0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jICAgICB8IDg2IC0tLS0tLS0t
LS0tLS0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
YyB8ICAxIC0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgICAgIHwg
NDcgKysrKysrKysrKysKIDMgZmlsZXMgY2hhbmdlZCwgNDcgaW5zZXJ0aW9ucygrKSwgODcgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kZGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKaW5kZXgg
MzJlYTNjN2U4YjYyLi5hMzEzNzVmNDNmMmUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kZGkuYwpAQCAtMzM0Nyw4NiArMzM0Nyw2IEBAIHN0YXRpYyB2b2lkIGludGVsX2Rk
aV9kaXNhYmxlX2ZlY19zdGF0ZShzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIAlQT1NU
SU5HX1JFQUQoaW50ZWxfZHAtPnJlZ3MuZHBfdHBfY3RsKTsKIH0KIAotc3RhdGljIHZvaWQKLXRn
bF9jbGVhcl9wc3IyX3RyYW5zY29kZXJfZXhpdGxpbmUoY29uc3Qgc3RydWN0IGludGVsX2NydGNf
c3RhdGUgKmNzdGF0ZSkKLXsKLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0
b19pOTE1KGNzdGF0ZS0+dWFwaS5jcnRjLT5kZXYpOwotCXUzMiB2YWw7Ci0KLQlpZiAoIWNzdGF0
ZS0+ZGMzY29fZXhpdGxpbmUpCi0JCXJldHVybjsKLQotCXZhbCA9IEk5MTVfUkVBRChFWElUTElO
RShjc3RhdGUtPmNwdV90cmFuc2NvZGVyKSk7Ci0JdmFsICY9IH4oRVhJVExJTkVfTUFTSyB8IEVY
SVRMSU5FX0VOQUJMRSk7Ci0JSTkxNV9XUklURShFWElUTElORShjc3RhdGUtPmNwdV90cmFuc2Nv
ZGVyKSwgdmFsKTsKLX0KLQotc3RhdGljIHZvaWQKLXRnbF9zZXRfcHNyMl90cmFuc2NvZGVyX2V4
aXRsaW5lKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjc3RhdGUpCi17Ci0JdTMyIHZh
bCwgZXhpdF9zY2FubGluZXM7Ci0Jc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0g
dG9faTkxNShjc3RhdGUtPnVhcGkuY3J0Yy0+ZGV2KTsKLQotCWlmICghY3N0YXRlLT5kYzNjb19l
eGl0bGluZSkKLQkJcmV0dXJuOwotCi0JZXhpdF9zY2FubGluZXMgPSBjc3RhdGUtPmRjM2NvX2V4
aXRsaW5lOwotCWV4aXRfc2NhbmxpbmVzIDw8PSBFWElUTElORV9TSElGVDsKLQl2YWwgPSBJOTE1
X1JFQUQoRVhJVExJTkUoY3N0YXRlLT5jcHVfdHJhbnNjb2RlcikpOwotCXZhbCAmPSB+KEVYSVRM
SU5FX01BU0sgfCBFWElUTElORV9FTkFCTEUpOwotCXZhbCB8PSBleGl0X3NjYW5saW5lczsKLQl2
YWwgfD0gRVhJVExJTkVfRU5BQkxFOwotCUk5MTVfV1JJVEUoRVhJVExJTkUoY3N0YXRlLT5jcHVf
dHJhbnNjb2RlciksIHZhbCk7Ci19Ci0KLXN0YXRpYyB2b2lkIHRnbF9kYzNjb19leGl0bGluZV9j
b21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKLQkJCQkJICAgICAg
c3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNzdGF0ZSkKLXsKLQl1MzIgZXhpdF9zY2FubGluZXM7
Ci0Jc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjc3RhdGUtPnVh
cGkuY3J0Yy0+ZGV2KTsKLQl1MzIgY3J0Y192ZGlzcGxheSA9IGNzdGF0ZS0+aHcuYWRqdXN0ZWRf
bW9kZS5jcnRjX3ZkaXNwbGF5OwotCi0JY3N0YXRlLT5kYzNjb19leGl0bGluZSA9IDA7Ci0KLQlp
ZiAoIShkZXZfcHJpdi0+Y3NyLmFsbG93ZWRfZGNfbWFzayAmIERDX1NUQVRFX0VOX0RDM0NPKSkK
LQkJcmV0dXJuOwotCi0JLyogQi5TcGVjczo0OTE5NiBEQzNDTyBvbmx5IHdvcmtzIHdpdGggcGlw
ZUEgYW5kIERESUEuKi8KLQlpZiAodG9faW50ZWxfY3J0Yyhjc3RhdGUtPnVhcGkuY3J0YyktPnBp
cGUgIT0gUElQRV9BIHx8Ci0JICAgIGVuY29kZXItPnBvcnQgIT0gUE9SVF9BKQotCQlyZXR1cm47
Ci0KLQlpZiAoIWNzdGF0ZS0+aGFzX3BzcjIgfHwgIWNzdGF0ZS0+aHcuYWN0aXZlKQotCQlyZXR1
cm47Ci0KLQkvKgotCSAqIERDM0NPIEV4aXQgdGltZSAyMDB1cyBCLlNwZWMgNDkxOTYKLQkgKiBQ
U1IyIHRyYW5zY29kZXIgRWFybHkgRXhpdCBzY2FubGluZXMgPSBST1VORFVQKDIwMCAvIGxpbmUg
dGltZSkgKyAxCi0JICovCi0JZXhpdF9zY2FubGluZXMgPQotCQlpbnRlbF91c2Vjc190b19zY2Fu
bGluZXMoJmNzdGF0ZS0+aHcuYWRqdXN0ZWRfbW9kZSwgMjAwKSArIDE7Ci0KLQlpZiAoV0FSTl9P
TihleGl0X3NjYW5saW5lcyA+IGNydGNfdmRpc3BsYXkpKQotCQlyZXR1cm47Ci0KLQljc3RhdGUt
PmRjM2NvX2V4aXRsaW5lID0gY3J0Y192ZGlzcGxheSAtIGV4aXRfc2NhbmxpbmVzOwotCURSTV9E
RUJVR19LTVMoIkRDM0NPIGV4aXQgc2NhbmxpbmVzICVkXG4iLCBjc3RhdGUtPmRjM2NvX2V4aXRs
aW5lKTsKLX0KLQotc3RhdGljIHZvaWQgdGdsX2RjM2NvX2V4aXRsaW5lX2dldF9jb25maWcoc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCi17Ci0JdTMyIHZhbDsKLQlzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGNfc3RhdGUtPnVhcGkuY3J0
Yy0+ZGV2KTsKLQotCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpIDwgMTIpCi0JCXJldHVybjsKLQot
CXZhbCA9IEk5MTVfUkVBRChFWElUTElORShjcnRjX3N0YXRlLT5jcHVfdHJhbnNjb2RlcikpOwot
Ci0JaWYgKHZhbCAmIEVYSVRMSU5FX0VOQUJMRSkKLQkJY3J0Y19zdGF0ZS0+ZGMzY29fZXhpdGxp
bmUgPSB2YWwgJiBFWElUTElORV9NQVNLOwotfQotCiBzdGF0aWMgdm9pZCB0Z2xfZGRpX3ByZV9l
bmFibGVfZHAoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJCQkJICBjb25zdCBzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKIAkJCQkgIGNvbnN0IHN0cnVjdCBkcm1f
Y29ubmVjdG9yX3N0YXRlICpjb25uX3N0YXRlKQpAQCAtMzQzOSw3ICszMzU5LDYgQEAgc3RhdGlj
IHZvaWQgdGdsX2RkaV9wcmVfZW5hYmxlX2RwKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVy
LAogCWludCBsZXZlbCA9IGludGVsX2RkaV9kcF9sZXZlbChpbnRlbF9kcCk7CiAJZW51bSB0cmFu
c2NvZGVyIHRyYW5zY29kZXIgPSBjcnRjX3N0YXRlLT5jcHVfdHJhbnNjb2RlcjsKIAotCXRnbF9z
ZXRfcHNyMl90cmFuc2NvZGVyX2V4aXRsaW5lKGNydGNfc3RhdGUpOwogCWludGVsX2RwX3NldF9s
aW5rX3BhcmFtcyhpbnRlbF9kcCwgY3J0Y19zdGF0ZS0+cG9ydF9jbG9jaywKIAkJCQkgY3J0Y19z
dGF0ZS0+bGFuZV9jb3VudCwgaXNfbXN0KTsKIApAQCAtMzgyNiw3ICszNzQ1LDYgQEAgc3RhdGlj
IHZvaWQgaW50ZWxfZGRpX3Bvc3RfZGlzYWJsZV9kcChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5j
b2RlciwKIAkJCQkJCSAgZGlnX3BvcnQtPmRkaV9pb19wb3dlcl9kb21haW4pOwogCiAJaW50ZWxf
ZGRpX2Nsa19kaXNhYmxlKGVuY29kZXIpOwotCXRnbF9jbGVhcl9wc3IyX3RyYW5zY29kZXJfZXhp
dGxpbmUob2xkX2NydGNfc3RhdGUpOwogfQogCiBzdGF0aWMgdm9pZCBpbnRlbF9kZGlfcG9zdF9k
aXNhYmxlX2hkbWkoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCkBAIC00NDEwLDkgKzQz
MjgsNiBAQCB2b2lkIGludGVsX2RkaV9nZXRfY29uZmlnKHN0cnVjdCBpbnRlbF9lbmNvZGVyICpl
bmNvZGVyLAogCQlicmVhazsKIAl9CiAKLQlpZiAoZW5jb2Rlci0+dHlwZSA9PSBJTlRFTF9PVVRQ
VVRfRURQKQotCQl0Z2xfZGMzY29fZXhpdGxpbmVfZ2V0X2NvbmZpZyhwaXBlX2NvbmZpZyk7Ci0K
IAlwaXBlX2NvbmZpZy0+aGFzX2F1ZGlvID0KIAkJaW50ZWxfZGRpX2lzX2F1ZGlvX2VuYWJsZWQo
ZGV2X3ByaXYsIGNwdV90cmFuc2NvZGVyKTsKIApAQCAtNDQ5NCw3ICs0NDA5LDYgQEAgc3RhdGlj
IGludCBpbnRlbF9kZGlfY29tcHV0ZV9jb25maWcoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29k
ZXIsCiAJCXJldCA9IGludGVsX2hkbWlfY29tcHV0ZV9jb25maWcoZW5jb2RlciwgcGlwZV9jb25m
aWcsIGNvbm5fc3RhdGUpOwogCX0gZWxzZSB7CiAJCXJldCA9IGludGVsX2RwX2NvbXB1dGVfY29u
ZmlnKGVuY29kZXIsIHBpcGVfY29uZmlnLCBjb25uX3N0YXRlKTsKLQkJdGdsX2RjM2NvX2V4aXRs
aW5lX2NvbXB1dGVfY29uZmlnKGVuY29kZXIsIHBpcGVfY29uZmlnKTsKIAl9CiAKIAlpZiAocmV0
KQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCBk
ZDAzOTg3Y2MyNGYuLjE2NWI1NGZiMmQ1OSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMKQEAgLTEzNTc2LDcgKzEzNTc2LDYgQEAgaW50ZWxfcGlwZV9j
b25maWdfY29tcGFyZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3VycmVudF9jb25m
aWcsCiAKIAlQSVBFX0NPTkZfQ0hFQ0tfSShwaXhlbF9tdWx0aXBsaWVyKTsKIAlQSVBFX0NPTkZf
Q0hFQ0tfSShvdXRwdXRfZm9ybWF0KTsKLQlQSVBFX0NPTkZfQ0hFQ0tfSShkYzNjb19leGl0bGlu
ZSk7CiAJUElQRV9DT05GX0NIRUNLX0JPT0woaGFzX2hkbWlfc2luayk7CiAJaWYgKChJTlRFTF9H
RU4oZGV2X3ByaXYpIDwgOCAmJiAhSVNfSEFTV0VMTChkZXZfcHJpdikpIHx8CiAJICAgIElTX1ZB
TExFWVZJRVcoZGV2X3ByaXYpIHx8IElTX0NIRVJSWVZJRVcoZGV2X3ByaXYpKQpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKaW5kZXggZTY0ZTBjNGM4MGRjLi5jNTZjZGIx
YzhmYjYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNy
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwpAQCAtNjAw
LDYgKzYwMCwzNyBAQCBzdGF0aWMgdm9pZCB0Z2xfZGlzYWxsb3dfZGMzY29fb25fcHNyMl9leGl0
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAl0Z2xfcHNyMl9kaXNhYmxlX2Rj
M2NvKGRldl9wcml2KTsKIH0KIAorc3RhdGljIHZvaWQKK3RnbF9kYzNjb19leGl0bGluZV9jb21w
dXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAorCQkJCSAgc3RydWN0IGludGVs
X2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCit7CisJY29uc3QgdTMyIGNydGNfdmRpc3BsYXkgPSBj
cnRjX3N0YXRlLT51YXBpLmFkanVzdGVkX21vZGUuY3J0Y192ZGlzcGxheTsKKwlzdHJ1Y3QgaW50
ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCA9IGRwX3RvX2RpZ19wb3J0KGludGVsX2RwKTsKKwlz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBkcF90b19pOTE1KGludGVsX2RwKTsK
Kwl1MzIgZXhpdF9zY2FubGluZXM7CisKKwlpZiAoIShkZXZfcHJpdi0+Y3NyLmFsbG93ZWRfZGNf
bWFzayAmIERDX1NUQVRFX0VOX0RDM0NPKSkKKwkJcmV0dXJuOworCisJLyogQi5TcGVjczo0OTE5
NiBEQzNDTyBvbmx5IHdvcmtzIHdpdGggcGlwZUEgYW5kIERESUEuKi8KKwlpZiAodG9faW50ZWxf
Y3J0YyhjcnRjX3N0YXRlLT51YXBpLmNydGMpLT5waXBlICE9IFBJUEVfQSB8fAorCSAgICBkaWdf
cG9ydC0+YmFzZS5wb3J0ICE9IFBPUlRfQSkKKwkJcmV0dXJuOworCisJLyoKKwkgKiBEQzNDTyBF
eGl0IHRpbWUgMjAwdXMgQi5TcGVjIDQ5MTk2CisJICogUFNSMiB0cmFuc2NvZGVyIEVhcmx5IEV4
aXQgc2NhbmxpbmVzID0gUk9VTkRVUCgyMDAgLyBsaW5lIHRpbWUpICsgMQorCSAqLworCWV4aXRf
c2NhbmxpbmVzID0KKwkJaW50ZWxfdXNlY3NfdG9fc2NhbmxpbmVzKCZjcnRjX3N0YXRlLT51YXBp
LmFkanVzdGVkX21vZGUsIDIwMCkgKyAxOworCisJaWYgKFdBUk5fT04oZXhpdF9zY2FubGluZXMg
PiBjcnRjX3ZkaXNwbGF5KSkKKwkJcmV0dXJuOworCisJY3J0Y19zdGF0ZS0+ZGMzY29fZXhpdGxp
bmUgPSBjcnRjX3ZkaXNwbGF5IC0gZXhpdF9zY2FubGluZXM7CisJRFJNX0RFQlVHX0tNUygiREMz
Q08gZXhpdCBzY2FubGluZXMgJWRcbiIsIGNydGNfc3RhdGUtPmRjM2NvX2V4aXRsaW5lKTsKK30K
Kwogc3RhdGljIGJvb2wgaW50ZWxfcHNyMl9jb25maWdfdmFsaWQoc3RydWN0IGludGVsX2RwICpp
bnRlbF9kcCwKIAkJCQkgICAgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCiB7
CkBAIC02NzEsNiArNzAyLDcgQEAgc3RhdGljIGJvb2wgaW50ZWxfcHNyMl9jb25maWdfdmFsaWQo
c3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKIAkJcmV0dXJuIGZhbHNlOwogCX0KIAorCXRnbF9k
YzNjb19leGl0bGluZV9jb21wdXRlX2NvbmZpZyhpbnRlbF9kcCwgY3J0Y19zdGF0ZSk7CiAJcmV0
dXJuIHRydWU7CiB9CiAKQEAgLTc4OCw2ICs4MjAsMjEgQEAgc3RhdGljIHZvaWQgaW50ZWxfcHNy
X2VuYWJsZV9zb3VyY2Uoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKIAlJOTE1X1dSSVRFKEVE
UF9QU1JfREVCVUcoZGV2X3ByaXYtPnBzci50cmFuc2NvZGVyKSwgbWFzayk7CiAKIAlwc3JfaXJx
X2NvbnRyb2woZGV2X3ByaXYpOworCisJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIgJiYg
ZGV2X3ByaXYtPnBzci5wc3IyX2VuYWJsZWQpIHsKKwkJdTMyIHZhbDsKKworCQkvKgorCQkgKiBU
T0RPOiBpZiBmdXR1cmUgcGxhdGZvcm1zIHN1cHBvcnRzIERDM0NPIGluIG1vcmUgdGhhbiBvbmUK
KwkJICogdHJhbnNjb2RlciwgRVhJVExJTkUgd2lsbCBuZWVkIHRvIGJlIHVuc2V0IHdoZW4gZGlz
YWJsaW5nIFBTUgorCQkgKi8KKwkJdmFsID0gSTkxNV9SRUFEKEVYSVRMSU5FKGNwdV90cmFuc2Nv
ZGVyKSk7CisJCXZhbCAmPSB+KEVYSVRMSU5FX01BU0sgfCBFWElUTElORV9FTkFCTEUpOworCQl2
YWwgfD0gY3J0Y19zdGF0ZS0+ZGMzY29fZXhpdGxpbmUgPDwgRVhJVExJTkVfU0hJRlQ7CisJCWlm
IChjcnRjX3N0YXRlLT5kYzNjb19leGl0bGluZSkKKwkJCXZhbCB8PSBFWElUTElORV9FTkFCTEU7
CisJCUk5MTVfV1JJVEUoRVhJVExJTkUoY3B1X3RyYW5zY29kZXIpLCB2YWwpOworCX0KIH0KIAog
c3RhdGljIHZvaWQgaW50ZWxfcHNyX2VuYWJsZV9sb2NrZWQoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2LAotLSAKMi4yNS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngK
