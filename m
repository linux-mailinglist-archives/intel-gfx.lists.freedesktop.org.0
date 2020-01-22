Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54518145B8A
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2020 19:26:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 224CC6F638;
	Wed, 22 Jan 2020 18:26:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E8556F637
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jan 2020 18:26:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jan 2020 10:26:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,350,1574150400"; d="scan'208";a="427496606"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.12.154])
 by fmsmga006.fm.intel.com with ESMTP; 22 Jan 2020 10:26:50 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Jan 2020 10:26:17 -0800
Message-Id: <20200122182617.18597-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200122182617.18597-1-jose.souza@intel.com>
References: <20200122182617.18597-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH CI 2/2] drm/i915/dc3co: Avoid full modeset when
 EXITLINE needs to be changed
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
biBsaW5rLgoKdjI6IG9ubHkgcHJvZ3JhbW1pbmcgRVhUTElORSB3aGVuIERDM0NPIGlzIGVuYWJs
ZWQKCkJTcGVjOiA0OTE5NgpDYzogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPgpDYzog
QW5zaHVtYW4gR3VwdGEgPGFuc2h1bWFuLmd1cHRhQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IEFu
c2h1bWFuIEd1cHRhIDxhbnNodW1hbi5ndXB0YUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEpv
c8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgICAgIHwgODYgLS0tLS0tLS0tLS0tLS0t
LS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgIDEg
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyAgICAgfCA0NiArKysr
KysrKysrKwogMyBmaWxlcyBjaGFuZ2VkLCA0NiBpbnNlcnRpb25zKCspLCA4NyBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwppbmRleCBkZjFjNDFi
YmE1NWYuLmIxMTAwOTUwZGQwZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kZGkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RkaS5jCkBAIC0zMzQ1LDg2ICszMzQ1LDYgQEAgc3RhdGljIHZvaWQgaW50ZWxfZGRpX2Rpc2Fi
bGVfZmVjX3N0YXRlKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAogCVBPU1RJTkdfUkVB
RChpbnRlbF9kcC0+cmVncy5kcF90cF9jdGwpOwogfQogCi1zdGF0aWMgdm9pZAotdGdsX2NsZWFy
X3BzcjJfdHJhbnNjb2Rlcl9leGl0bGluZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAq
Y3N0YXRlKQotewotCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUo
Y3N0YXRlLT51YXBpLmNydGMtPmRldik7Ci0JdTMyIHZhbDsKLQotCWlmICghY3N0YXRlLT5kYzNj
b19leGl0bGluZSkKLQkJcmV0dXJuOwotCi0JdmFsID0gSTkxNV9SRUFEKEVYSVRMSU5FKGNzdGF0
ZS0+Y3B1X3RyYW5zY29kZXIpKTsKLQl2YWwgJj0gfihFWElUTElORV9NQVNLIHwgRVhJVExJTkVf
RU5BQkxFKTsKLQlJOTE1X1dSSVRFKEVYSVRMSU5FKGNzdGF0ZS0+Y3B1X3RyYW5zY29kZXIpLCB2
YWwpOwotfQotCi1zdGF0aWMgdm9pZAotdGdsX3NldF9wc3IyX3RyYW5zY29kZXJfZXhpdGxpbmUo
Y29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNzdGF0ZSkKLXsKLQl1MzIgdmFsLCBleGl0
X3NjYW5saW5lczsKLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1
KGNzdGF0ZS0+dWFwaS5jcnRjLT5kZXYpOwotCi0JaWYgKCFjc3RhdGUtPmRjM2NvX2V4aXRsaW5l
KQotCQlyZXR1cm47Ci0KLQlleGl0X3NjYW5saW5lcyA9IGNzdGF0ZS0+ZGMzY29fZXhpdGxpbmU7
Ci0JZXhpdF9zY2FubGluZXMgPDw9IEVYSVRMSU5FX1NISUZUOwotCXZhbCA9IEk5MTVfUkVBRChF
WElUTElORShjc3RhdGUtPmNwdV90cmFuc2NvZGVyKSk7Ci0JdmFsICY9IH4oRVhJVExJTkVfTUFT
SyB8IEVYSVRMSU5FX0VOQUJMRSk7Ci0JdmFsIHw9IGV4aXRfc2NhbmxpbmVzOwotCXZhbCB8PSBF
WElUTElORV9FTkFCTEU7Ci0JSTkxNV9XUklURShFWElUTElORShjc3RhdGUtPmNwdV90cmFuc2Nv
ZGVyKSwgdmFsKTsKLX0KLQotc3RhdGljIHZvaWQgdGdsX2RjM2NvX2V4aXRsaW5lX2NvbXB1dGVf
Y29uZmlnKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAotCQkJCQkgICAgICBzdHJ1Y3Qg
aW50ZWxfY3J0Y19zdGF0ZSAqY3N0YXRlKQotewotCXUzMiBleGl0X3NjYW5saW5lczsKLQlzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNzdGF0ZS0+dWFwaS5jcnRj
LT5kZXYpOwotCXUzMiBjcnRjX3ZkaXNwbGF5ID0gY3N0YXRlLT5ody5hZGp1c3RlZF9tb2RlLmNy
dGNfdmRpc3BsYXk7Ci0KLQljc3RhdGUtPmRjM2NvX2V4aXRsaW5lID0gMDsKLQotCWlmICghKGRl
dl9wcml2LT5jc3IuYWxsb3dlZF9kY19tYXNrICYgRENfU1RBVEVfRU5fREMzQ08pKQotCQlyZXR1
cm47Ci0KLQkvKiBCLlNwZWNzOjQ5MTk2IERDM0NPIG9ubHkgd29ya3Mgd2l0aCBwaXBlQSBhbmQg
RERJQS4qLwotCWlmICh0b19pbnRlbF9jcnRjKGNzdGF0ZS0+dWFwaS5jcnRjKS0+cGlwZSAhPSBQ
SVBFX0EgfHwKLQkgICAgZW5jb2Rlci0+cG9ydCAhPSBQT1JUX0EpCi0JCXJldHVybjsKLQotCWlm
ICghY3N0YXRlLT5oYXNfcHNyMiB8fCAhY3N0YXRlLT5ody5hY3RpdmUpCi0JCXJldHVybjsKLQot
CS8qCi0JICogREMzQ08gRXhpdCB0aW1lIDIwMHVzIEIuU3BlYyA0OTE5NgotCSAqIFBTUjIgdHJh
bnNjb2RlciBFYXJseSBFeGl0IHNjYW5saW5lcyA9IFJPVU5EVVAoMjAwIC8gbGluZSB0aW1lKSAr
IDEKLQkgKi8KLQlleGl0X3NjYW5saW5lcyA9Ci0JCWludGVsX3VzZWNzX3RvX3NjYW5saW5lcygm
Y3N0YXRlLT5ody5hZGp1c3RlZF9tb2RlLCAyMDApICsgMTsKLQotCWlmIChXQVJOX09OKGV4aXRf
c2NhbmxpbmVzID4gY3J0Y192ZGlzcGxheSkpCi0JCXJldHVybjsKLQotCWNzdGF0ZS0+ZGMzY29f
ZXhpdGxpbmUgPSBjcnRjX3ZkaXNwbGF5IC0gZXhpdF9zY2FubGluZXM7Ci0JRFJNX0RFQlVHX0tN
UygiREMzQ08gZXhpdCBzY2FubGluZXMgJWRcbiIsIGNzdGF0ZS0+ZGMzY29fZXhpdGxpbmUpOwot
fQotCi1zdGF0aWMgdm9pZCB0Z2xfZGMzY29fZXhpdGxpbmVfZ2V0X2NvbmZpZyhzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKLXsKLQl1MzIgdmFsOwotCXN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Y19zdGF0ZS0+dWFwaS5jcnRjLT5kZXYp
OwotCi0JaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPCAxMikKLQkJcmV0dXJuOwotCi0JdmFsID0g
STkxNV9SRUFEKEVYSVRMSU5FKGNydGNfc3RhdGUtPmNwdV90cmFuc2NvZGVyKSk7Ci0KLQlpZiAo
dmFsICYgRVhJVExJTkVfRU5BQkxFKQotCQljcnRjX3N0YXRlLT5kYzNjb19leGl0bGluZSA9IHZh
bCAmIEVYSVRMSU5FX01BU0s7Ci19Ci0KIHN0YXRpYyB2b2lkIHRnbF9kZGlfcHJlX2VuYWJsZV9k
cChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIAkJCQkgIGNvbnN0IHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAogCQkJCSAgY29uc3Qgc3RydWN0IGRybV9jb25uZWN0
b3Jfc3RhdGUgKmNvbm5fc3RhdGUpCkBAIC0zNDM3LDcgKzMzNTcsNiBAQCBzdGF0aWMgdm9pZCB0
Z2xfZGRpX3ByZV9lbmFibGVfZHAoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJaW50
IGxldmVsID0gaW50ZWxfZGRpX2RwX2xldmVsKGludGVsX2RwKTsKIAllbnVtIHRyYW5zY29kZXIg
dHJhbnNjb2RlciA9IGNydGNfc3RhdGUtPmNwdV90cmFuc2NvZGVyOwogCi0JdGdsX3NldF9wc3Iy
X3RyYW5zY29kZXJfZXhpdGxpbmUoY3J0Y19zdGF0ZSk7CiAJaW50ZWxfZHBfc2V0X2xpbmtfcGFy
YW1zKGludGVsX2RwLCBjcnRjX3N0YXRlLT5wb3J0X2Nsb2NrLAogCQkJCSBjcnRjX3N0YXRlLT5s
YW5lX2NvdW50LCBpc19tc3QpOwogCkBAIC0zODIzLDcgKzM3NDIsNiBAQCBzdGF0aWMgdm9pZCBp
bnRlbF9kZGlfcG9zdF9kaXNhYmxlX2RwKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAog
CQkJCQkJICBkaWdfcG9ydC0+ZGRpX2lvX3Bvd2VyX2RvbWFpbik7CiAKIAlpbnRlbF9kZGlfY2xr
X2Rpc2FibGUoZW5jb2Rlcik7Ci0JdGdsX2NsZWFyX3BzcjJfdHJhbnNjb2Rlcl9leGl0bGluZShv
bGRfY3J0Y19zdGF0ZSk7CiB9CiAKIHN0YXRpYyB2b2lkIGludGVsX2RkaV9wb3N0X2Rpc2FibGVf
aGRtaShzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKQEAgLTQ0MDcsOSArNDMyNSw2IEBA
IHZvaWQgaW50ZWxfZGRpX2dldF9jb25maWcoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIs
CiAJCWJyZWFrOwogCX0KIAotCWlmIChlbmNvZGVyLT50eXBlID09IElOVEVMX09VVFBVVF9FRFAp
Ci0JCXRnbF9kYzNjb19leGl0bGluZV9nZXRfY29uZmlnKHBpcGVfY29uZmlnKTsKLQogCXBpcGVf
Y29uZmlnLT5oYXNfYXVkaW8gPQogCQlpbnRlbF9kZGlfaXNfYXVkaW9fZW5hYmxlZChkZXZfcHJp
diwgY3B1X3RyYW5zY29kZXIpOwogCkBAIC00NDkxLDcgKzQ0MDYsNiBAQCBzdGF0aWMgaW50IGlu
dGVsX2RkaV9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIAkJ
cmV0ID0gaW50ZWxfaGRtaV9jb21wdXRlX2NvbmZpZyhlbmNvZGVyLCBwaXBlX2NvbmZpZywgY29u
bl9zdGF0ZSk7CiAJfSBlbHNlIHsKIAkJcmV0ID0gaW50ZWxfZHBfY29tcHV0ZV9jb25maWcoZW5j
b2RlciwgcGlwZV9jb25maWcsIGNvbm5fc3RhdGUpOwotCQl0Z2xfZGMzY29fZXhpdGxpbmVfY29t
cHV0ZV9jb25maWcoZW5jb2RlciwgcGlwZV9jb25maWcpOwogCX0KIAogCWlmIChyZXQpCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IDkzMzc2Nzkw
ZmQxNi4uYjlmOTZhYjk3OTY1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYwpAQCAtMTM1NzksNyArMTM1NzksNiBAQCBpbnRlbF9waXBlX2NvbmZpZ19j
b21wYXJlKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjdXJyZW50X2NvbmZpZywKIAog
CVBJUEVfQ09ORl9DSEVDS19JKHBpeGVsX211bHRpcGxpZXIpOwogCVBJUEVfQ09ORl9DSEVDS19J
KG91dHB1dF9mb3JtYXQpOwotCVBJUEVfQ09ORl9DSEVDS19JKGRjM2NvX2V4aXRsaW5lKTsKIAlQ
SVBFX0NPTkZfQ0hFQ0tfQk9PTChoYXNfaGRtaV9zaW5rKTsKIAlpZiAoKElOVEVMX0dFTihkZXZf
cHJpdikgPCA4ICYmICFJU19IQVNXRUxMKGRldl9wcml2KSkgfHwKIAkgICAgSVNfVkFMTEVZVklF
VyhkZXZfcHJpdikgfHwgSVNfQ0hFUlJZVklFVyhkZXZfcHJpdikpCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuYwppbmRleCBmZGQ3ZjkzOTUzYjEuLmViM2QxMDAzNmJlZiAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCkBAIC02MDAsNiArNjAw
LDM3IEBAIHN0YXRpYyB2b2lkIHRnbF9kaXNhbGxvd19kYzNjb19vbl9wc3IyX2V4aXQoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCXRnbF9wc3IyX2Rpc2FibGVfZGMzY28oZGV2
X3ByaXYpOwogfQogCitzdGF0aWMgdm9pZAordGdsX2RjM2NvX2V4aXRsaW5lX2NvbXB1dGVfY29u
ZmlnKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCisJCQkJICBzdHJ1Y3QgaW50ZWxfY3J0Y19z
dGF0ZSAqY3J0Y19zdGF0ZSkKK3sKKwljb25zdCB1MzIgY3J0Y192ZGlzcGxheSA9IGNydGNfc3Rh
dGUtPnVhcGkuYWRqdXN0ZWRfbW9kZS5jcnRjX3ZkaXNwbGF5OworCXN0cnVjdCBpbnRlbF9kaWdp
dGFsX3BvcnQgKmRpZ19wb3J0ID0gZHBfdG9fZGlnX3BvcnQoaW50ZWxfZHApOworCXN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IGRwX3RvX2k5MTUoaW50ZWxfZHApOworCXUzMiBl
eGl0X3NjYW5saW5lczsKKworCWlmICghKGRldl9wcml2LT5jc3IuYWxsb3dlZF9kY19tYXNrICYg
RENfU1RBVEVfRU5fREMzQ08pKQorCQlyZXR1cm47CisKKwkvKiBCLlNwZWNzOjQ5MTk2IERDM0NP
IG9ubHkgd29ya3Mgd2l0aCBwaXBlQSBhbmQgRERJQS4qLworCWlmICh0b19pbnRlbF9jcnRjKGNy
dGNfc3RhdGUtPnVhcGkuY3J0YyktPnBpcGUgIT0gUElQRV9BIHx8CisJICAgIGRpZ19wb3J0LT5i
YXNlLnBvcnQgIT0gUE9SVF9BKQorCQlyZXR1cm47CisKKwkvKgorCSAqIERDM0NPIEV4aXQgdGlt
ZSAyMDB1cyBCLlNwZWMgNDkxOTYKKwkgKiBQU1IyIHRyYW5zY29kZXIgRWFybHkgRXhpdCBzY2Fu
bGluZXMgPSBST1VORFVQKDIwMCAvIGxpbmUgdGltZSkgKyAxCisJICovCisJZXhpdF9zY2FubGlu
ZXMgPQorCQlpbnRlbF91c2Vjc190b19zY2FubGluZXMoJmNydGNfc3RhdGUtPnVhcGkuYWRqdXN0
ZWRfbW9kZSwgMjAwKSArIDE7CisKKwlpZiAoV0FSTl9PTihleGl0X3NjYW5saW5lcyA+IGNydGNf
dmRpc3BsYXkpKQorCQlyZXR1cm47CisKKwljcnRjX3N0YXRlLT5kYzNjb19leGl0bGluZSA9IGNy
dGNfdmRpc3BsYXkgLSBleGl0X3NjYW5saW5lczsKKwlEUk1fREVCVUdfS01TKCJEQzNDTyBleGl0
IHNjYW5saW5lcyAlZFxuIiwgY3J0Y19zdGF0ZS0+ZGMzY29fZXhpdGxpbmUpOworfQorCiBzdGF0
aWMgYm9vbCBpbnRlbF9wc3IyX2NvbmZpZ192YWxpZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2Rw
LAogCQkJCSAgICBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIHsKQEAgLTY3
MSw2ICs3MDIsNyBAQCBzdGF0aWMgYm9vbCBpbnRlbF9wc3IyX2NvbmZpZ192YWxpZChzdHJ1Y3Qg
aW50ZWxfZHAgKmludGVsX2RwLAogCQlyZXR1cm4gZmFsc2U7CiAJfQogCisJdGdsX2RjM2NvX2V4
aXRsaW5lX2NvbXB1dGVfY29uZmlnKGludGVsX2RwLCBjcnRjX3N0YXRlKTsKIAlyZXR1cm4gdHJ1
ZTsKIH0KIApAQCAtNzg4LDYgKzgyMCwyMCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9wc3JfZW5hYmxl
X3NvdXJjZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAogCUk5MTVfV1JJVEUoRURQX1BTUl9E
RUJVRyhkZXZfcHJpdi0+cHNyLnRyYW5zY29kZXIpLCBtYXNrKTsKIAogCXBzcl9pcnFfY29udHJv
bChkZXZfcHJpdik7CisKKwlpZiAoY3J0Y19zdGF0ZS0+ZGMzY29fZXhpdGxpbmUpIHsKKwkJdTMy
IHZhbDsKKworCQkvKgorCQkgKiBUT0RPOiBpZiBmdXR1cmUgcGxhdGZvcm1zIHN1cHBvcnRzIERD
M0NPIGluIG1vcmUgdGhhbiBvbmUKKwkJICogdHJhbnNjb2RlciwgRVhJVExJTkUgd2lsbCBuZWVk
IHRvIGJlIHVuc2V0IHdoZW4gZGlzYWJsaW5nIFBTUgorCQkgKi8KKwkJdmFsID0gSTkxNV9SRUFE
KEVYSVRMSU5FKGNwdV90cmFuc2NvZGVyKSk7CisJCXZhbCAmPSB+RVhJVExJTkVfTUFTSzsKKwkJ
dmFsIHw9IGNydGNfc3RhdGUtPmRjM2NvX2V4aXRsaW5lIDw8IEVYSVRMSU5FX1NISUZUOworCQl2
YWwgfD0gRVhJVExJTkVfRU5BQkxFOworCQlJOTE1X1dSSVRFKEVYSVRMSU5FKGNwdV90cmFuc2Nv
ZGVyKSwgdmFsKTsKKwl9CiB9CiAKIHN0YXRpYyB2b2lkIGludGVsX3Bzcl9lbmFibGVfbG9ja2Vk
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKLS0gCjIuMjUuMAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
