Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 230B5ADD45
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2019 18:31:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A34C48920C;
	Mon,  9 Sep 2019 16:31:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7730489206;
 Mon,  9 Sep 2019 16:31:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Sep 2019 09:31:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,486,1559545200"; d="scan'208";a="209019598"
Received: from mdroper-desk.fm.intel.com ([10.105.128.12])
 by fmsmga004.fm.intel.com with ESMTP; 09 Sep 2019 09:31:43 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Date: Mon,  9 Sep 2019 09:31:38 -0700
Message-Id: <20190909163138.9701-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] tests/kms_rotation_crc: Switch to
 one-shot CRC collection
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

a21zX3JvdGF0aW9uX2NyYyBtYW51YWxseSBzdGFydHMgYW5kIHN0b3BzIENSQyBjb2xsZWN0aW9u
IGFuZCByZWFkcwpzaW5nbGUgQ1JDIHZhbHVlcyB3aGVuIGl0IG5lZWRzIHRoZW0uICBEZXBlbmRp
bmcgb24gaG93IGxvbmcgdGhlIG90aGVyCnRlc3Qgc2V0dXAgYW5kIGV4ZWN1dGlvbiBvcGVyYXRp
b25zIHRha2UsIHRoZSBDUkMgYnVmZmVyICgxMjggZW50cmllcykKY2FuIGZpbGwgdXAgQ1JDIHZh
bHVlcyB0aGF0IHRoZSB0ZXN0IG5ldmVyIHJlYWRzIG9yIHVzZXMuICBPdXIgQ0kgc3lzdGVtCmhh
cyBzdHVtYmxlZCBvdmVyIHNldmVyYWwgY2FzZXMgd2hlcmUgdGhlIGJ1ZmZlciBmaWxscyB1cCBh
bmQgb3ZlcmZsb3dzCmR1ZSB0byB0aGlzLiAgTGV0J3Mgc3dpdGNoIHRoaXMgdGVzdCBvdmVyIHRv
IHRoZQppZ3RfcGlwZV9jcmNfY29sbGVjdF9jcmMgQVBJIHdoaWNoIHdpbGwgaGFuZGxlIHRoZSBz
dGFydCtzdG9wIG9mIENSQwpjb2xsZWN0aW9uIHdoZW4gYSBzaW5nbGUgQ1JDIGlzIG5lZWRlZCBz
byB0aGF0IHdlIHdvbid0IGNvbGxlY3QgYSBidW5jaApvZiB1bndhbnRlZCBDUkMgdmFsdWVzIGFu
ZCBydW4gdGhlIHJpc2sgb2Ygb3ZlcmZsb3cuCgpCdWd6aWxsYTogaHR0cHM6Ly9idWdzLmZyZWVk
ZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA1MTI3ClNpZ25lZC1vZmYtYnk6IE1hdHQgUm9w
ZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+Ci0tLQogdGVzdHMva21zX3JvdGF0aW9uX2Ny
Yy5jIHwgMjIgKysrKysrKystLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0
aW9ucygrKSwgMTQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvdGVzdHMva21zX3JvdGF0aW9u
X2NyYy5jIGIvdGVzdHMva21zX3JvdGF0aW9uX2NyYy5jCmluZGV4IDY2OGMxNzMyLi44ZjM2ZmQy
ZiAxMDA2NDQKLS0tIGEvdGVzdHMva21zX3JvdGF0aW9uX2NyYy5jCisrKyBiL3Rlc3RzL2ttc19y
b3RhdGlvbl9jcmMuYwpAQCAtMTY3LDcgKzE2Nyw3IEBAIHN0YXRpYyB2b2lkIGNsZWFudXBfY3J0
YyhkYXRhX3QgKmRhdGEpCiB9CiAKIHN0YXRpYyB2b2lkIHByZXBhcmVfY3J0YyhkYXRhX3QgKmRh
dGEsIGlndF9vdXRwdXRfdCAqb3V0cHV0LCBlbnVtIHBpcGUgcGlwZSwKLQkJCSBpZ3RfcGxhbmVf
dCAqcGxhbmUsIGJvb2wgc3RhcnRfY3JjKQorCQkJIGlndF9wbGFuZV90ICpwbGFuZSkKIHsKIAlp
Z3RfZGlzcGxheV90ICpkaXNwbGF5ID0gJmRhdGEtPmRpc3BsYXk7CiAKQEAgLTE4MSw5ICsxODEs
NiBAQCBzdGF0aWMgdm9pZCBwcmVwYXJlX2NydGMoZGF0YV90ICpkYXRhLCBpZ3Rfb3V0cHV0X3Qg
Km91dHB1dCwgZW51bSBwaXBlIHBpcGUsCiAKIAlpZ3RfZGlzcGxheV9jb21taXQyKGRpc3BsYXks
IENPTU1JVF9BVE9NSUMpOwogCWRhdGEtPnBpcGVfY3JjID0gaWd0X3BpcGVfY3JjX25ldyhkYXRh
LT5nZnhfZmQsIHBpcGUsIElOVEVMX1BJUEVfQ1JDX1NPVVJDRV9BVVRPKTsKLQotCWlmIChzdGFy
dF9jcmMpCi0JCWlndF9waXBlX2NyY19zdGFydChkYXRhLT5waXBlX2NyYyk7CiB9CiAKIGVudW0g
cmVjdGFuZ2xlX3R5cGUgewpAQCAtMjYzLDcgKzI2MCw3IEBAIHN0YXRpYyB2b2lkIHByZXBhcmVf
ZmJzKGRhdGFfdCAqZGF0YSwgaWd0X291dHB1dF90ICpvdXRwdXQsCiAJCWlndF9wbGFuZV9zZXRf
cG9zaXRpb24ocGxhbmUsIGRhdGEtPnBvc194LCBkYXRhLT5wb3NfeSk7CiAJaWd0X2Rpc3BsYXlf
Y29tbWl0MihkaXNwbGF5LCBDT01NSVRfQVRPTUlDKTsKIAotCWlndF9waXBlX2NyY19nZXRfY3Vy
cmVudChkaXNwbGF5LT5kcm1fZmQsIGRhdGEtPnBpcGVfY3JjLCAmZGF0YS0+ZmxpcF9jcmMpOwor
CWlndF9waXBlX2NyY19jb2xsZWN0X2NyYyhkYXRhLT5waXBlX2NyYywgJmRhdGEtPmZsaXBfY3Jj
KTsKIAogCS8qCiAJICAqIFByZXBhcmUgdGhlIG5vbi1yb3RhdGVkIGZsaXAgZmIuCkBAIC0yODYs
NyArMjgzLDcgQEAgc3RhdGljIHZvaWQgcHJlcGFyZV9mYnMoZGF0YV90ICpkYXRhLCBpZ3Rfb3V0
cHV0X3QgKm91dHB1dCwKIAkJaWd0X3BsYW5lX3NldF9wb3NpdGlvbihwbGFuZSwgZGF0YS0+cG9z
X3gsIGRhdGEtPnBvc195KTsKIAlpZ3RfZGlzcGxheV9jb21taXQyKGRpc3BsYXksIENPTU1JVF9B
VE9NSUMpOwogCi0JaWd0X3BpcGVfY3JjX2dldF9jdXJyZW50KGRpc3BsYXktPmRybV9mZCwgZGF0
YS0+cGlwZV9jcmMsICZkYXRhLT5yZWZfY3JjKTsKKwlpZ3RfcGlwZV9jcmNfY29sbGVjdF9jcmMo
ZGF0YS0+cGlwZV9jcmMsICZkYXRhLT5yZWZfY3JjKTsKIAogCS8qCiAJICogUHJlcGFyZSB0aGUg
bm9uLXJvdGF0ZWQgcmVmZXJlbmNlIGZiLgpAQCAtMzM2LDcgKzMzMyw3IEBAIHN0YXRpYyB2b2lk
IHRlc3Rfc2luZ2xlX2Nhc2UoZGF0YV90ICpkYXRhLCBlbnVtIHBpcGUgcGlwZSwKIAlpZ3RfYXNz
ZXJ0X2VxKHJldCwgMCk7CiAKIAkvKiBDaGVjayBDUkMgKi8KLQlpZ3RfcGlwZV9jcmNfZ2V0X2N1
cnJlbnQoZGlzcGxheS0+ZHJtX2ZkLCBkYXRhLT5waXBlX2NyYywgJmNyY19vdXRwdXQpOworCWln
dF9waXBlX2NyY19jb2xsZWN0X2NyYyhkYXRhLT5waXBlX2NyYywgJmNyY19vdXRwdXQpOwogCWln
dF9hc3NlcnRfY3JjX2VxdWFsKCZkYXRhLT5yZWZfY3JjLCAmY3JjX291dHB1dCk7CiAKIAkvKgpA
QCAtMzU5LDcgKzM1Niw3IEBAIHN0YXRpYyB2b2lkIHRlc3Rfc2luZ2xlX2Nhc2UoZGF0YV90ICpk
YXRhLCBlbnVtIHBpcGUgcGlwZSwKIAkJCWlndF9hc3NlcnRfZXEocmV0LCAwKTsKIAkJfQogCQlr
bXN0ZXN0X3dhaXRfZm9yX3BhZ2VmbGlwKGRhdGEtPmdmeF9mZCk7Ci0JCWlndF9waXBlX2NyY19n
ZXRfY3VycmVudChkaXNwbGF5LT5kcm1fZmQsIGRhdGEtPnBpcGVfY3JjLCAmY3JjX291dHB1dCk7
CisJCWlndF9waXBlX2NyY19jb2xsZWN0X2NyYyhkYXRhLT5waXBlX2NyYywgJmNyY19vdXRwdXQp
OwogCQlpZ3RfYXNzZXJ0X2NyY19lcXVhbCgmZGF0YS0+ZmxpcF9jcmMsCiAJCQkJICAgICAmY3Jj
X291dHB1dCk7CiAJfQpAQCAtMzg4LDcgKzM4NSw3IEBAIHN0YXRpYyB2b2lkIHRlc3RfcGxhbmVf
cm90YXRpb24oZGF0YV90ICpkYXRhLCBpbnQgcGxhbmVfdHlwZSwgYm9vbCB0ZXN0X2JhZF9mb3Jt
CiAJCXBsYW5lID0gaWd0X291dHB1dF9nZXRfcGxhbmVfdHlwZShvdXRwdXQsIHBsYW5lX3R5cGUp
OwogCQlpZ3RfcmVxdWlyZShpZ3RfcGxhbmVfaGFzX3Byb3AocGxhbmUsIElHVF9QTEFORV9ST1RB
VElPTikpOwogCi0JCXByZXBhcmVfY3J0YyhkYXRhLCBvdXRwdXQsIHBpcGUsIHBsYW5lLCB0cnVl
KTsKKwkJcHJlcGFyZV9jcnRjKGRhdGEsIG91dHB1dCwgcGlwZSwgcGxhbmUpOwogCiAJCWZvciAo
aSA9IDA7IGkgPCBudW1fcmVjdGFuZ2xlX3R5cGVzOyBpKyspIHsKIAkJCS8qIFVuc3VwcG9ydGVk
IG9uIGk5MTUgKi8KQEAgLTQxNiw3ICs0MTMsNiBAQCBzdGF0aWMgdm9pZCB0ZXN0X3BsYW5lX3Jv
dGF0aW9uKGRhdGFfdCAqZGF0YSwgaW50IHBsYW5lX3R5cGUsIGJvb2wgdGVzdF9iYWRfZm9ybQog
CQkJCQkJIGRhdGEtPm92ZXJyaWRlX2ZtdCwgdGVzdF9iYWRfZm9ybWF0KTsKIAkJCX0KIAkJfQot
CQlpZ3RfcGlwZV9jcmNfc3RvcChkYXRhLT5waXBlX2NyYyk7CiAJfQogfQogCkBAIC00NzMsNyAr
NDY5LDcgQEAgc3RhdGljIGJvb2wgZ2V0X211bHRpcGxhbmVfY3JjKGRhdGFfdCAqZGF0YSwgaWd0
X291dHB1dF90ICpvdXRwdXQsCiAJcmV0ID0gaWd0X2Rpc3BsYXlfdHJ5X2NvbW1pdDIoZGlzcGxh
eSwgQ09NTUlUX0FUT01JQyk7CiAJaWd0X2Fzc2VydF9lcShyZXQsIDApOwogCi0JaWd0X3BpcGVf
Y3JjX2dldF9jdXJyZW50KGRhdGEtPmdmeF9mZCwgZGF0YS0+cGlwZV9jcmMsIGNyY19vdXRwdXQp
OworCWlndF9waXBlX2NyY19jb2xsZWN0X2NyYyhkYXRhLT5waXBlX2NyYywgY3JjX291dHB1dCk7
CiAKIAlmb3IgKGMgPSAwOyBjIDwgbnVtcGxhbmVzICYmIG9sZHBsYW5lczsgYysrKQogCQlpZ3Rf
cmVtb3ZlX2ZiKGRhdGEtPmdmeF9mZCwgJm9sZHBsYW5lc1tjXS5mYik7CkBAIC01NjQsNyArNTYw
LDYgQEAgc3RhdGljIHZvaWQgdGVzdF9tdWx0aV9wbGFuZV9yb3RhdGlvbihkYXRhX3QgKmRhdGEs
IGVudW0gcGlwZSBwaXBlKQogCiAJCWRhdGEtPnBpcGVfY3JjID0gaWd0X3BpcGVfY3JjX25ldyhk
YXRhLT5nZnhfZmQsIHBpcGUsCiAJCQkJCQkgIElOVEVMX1BJUEVfQ1JDX1NPVVJDRV9BVVRPKTsK
LQkJaWd0X3BpcGVfY3JjX3N0YXJ0KGRhdGEtPnBpcGVfY3JjKTsKIAogCQlmb3IgKGkgPSAwOyBp
IDwgQVJSQVlfU0laRShwbGFuZWNvbmZpZ3MpOyBpKyspIHsKIAkJCXBbMF0ucGxhbmV0eXBlID0g
RFJNX1BMQU5FX1RZUEVfUFJJTUFSWTsKQEAgLTYyMCw3ICs2MTUsNiBAQCBzdGF0aWMgdm9pZCB0
ZXN0X211bHRpX3BsYW5lX3JvdGF0aW9uKGRhdGFfdCAqZGF0YSwgZW51bSBwaXBlIHBpcGUpCiAJ
CQkJfQogCQkJfQogCQl9Ci0JCWlndF9waXBlX2NyY19zdG9wKGRhdGEtPnBpcGVfY3JjKTsKIAkJ
aWd0X3BpcGVfY3JjX2ZyZWUoZGF0YS0+cGlwZV9jcmMpOwogCQlpZ3Rfb3V0cHV0X3NldF9waXBl
KG91dHB1dCwgUElQRV9BTlkpOwogCX0KQEAgLTY1Niw3ICs2NTAsNyBAQCBzdGF0aWMgdm9pZCB0
ZXN0X3BsYW5lX3JvdGF0aW9uX2V4aGF1c3RfZmVuY2VzKGRhdGFfdCAqZGF0YSwKIAogCWlndF9y
ZXF1aXJlKGlndF9wbGFuZV9oYXNfcHJvcChwbGFuZSwgSUdUX1BMQU5FX1JPVEFUSU9OKSk7CiAK
LQlwcmVwYXJlX2NydGMoZGF0YSwgb3V0cHV0LCBwaXBlLCBwbGFuZSwgZmFsc2UpOworCXByZXBh
cmVfY3J0YyhkYXRhLCBvdXRwdXQsIHBpcGUsIHBsYW5lKTsKIAogCW1vZGUgPSBpZ3Rfb3V0cHV0
X2dldF9tb2RlKG91dHB1dCk7CiAJdyA9IG1vZGUtPmhkaXNwbGF5OwotLSAKMi4yMC4xCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
