Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F7F913C055
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 13:18:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44C356E982;
	Wed, 15 Jan 2020 12:17:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B81E96E977;
 Wed, 15 Jan 2020 12:17:10 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 57908AFC4;
 Wed, 15 Jan 2020 12:17:09 +0000 (UTC)
From: Thomas Zimmermann <tzimmermann@suse.de>
To: airlied@linux.ie, daniel@ffwll.ch, alexander.deucher@amd.com,
 christian.koenig@amd.com, David1.Zhou@amd.com,
 maarten.lankhorst@linux.intel.com, patrik.r.jakobsson@gmail.com,
 robdclark@gmail.com, sean@poorly.run, benjamin.gaignard@linaro.org,
 vincent.abriou@st.com, yannick.fertre@st.com, philippe.cornu@st.com,
 mcoquelin.stm32@gmail.com, alexandre.torgue@st.com, eric@anholt.net,
 rodrigosiqueiramelo@gmail.com, hamohammed.sa@gmail.com,
 linux-graphics-maintainer@vmware.com, thellstrom@vmware.com,
 bskeggs@redhat.com, harry.wentland@amd.com, sunpeng.li@amd.com,
 jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com
Date: Wed, 15 Jan 2020 13:16:44 +0100
Message-Id: <20200115121652.7050-14-tzimmermann@suse.de>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200115121652.7050-1-tzimmermann@suse.de>
References: <20200115121652.7050-1-tzimmermann@suse.de>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 13/21] drm/msm: Convert to CRTC VBLANK
 callbacks
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
Cc: linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Thomas Zimmermann <tzimmermann@suse.de>, nouveau@lists.freedesktop.org,
 freedreno@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VkJMQU5LIGNhbGxiYWNrcyBpbiBzdHJ1Y3QgZHJtX2RyaXZlciBhcmUgZGVwcmVjYXRlZCBpbiBm
YXZvciBvZgp0aGVpciBlcXVpdmFsZW50cyBpbiBzdHJ1Y3QgZHJtX2NydGNfZnVuY3MuIENvbnZl
cnQgbXNtIG92ZXIuCgpTaWduZWQtb2ZmLWJ5OiBUaG9tYXMgWmltbWVybWFubiA8dHppbW1lcm1h
bm5Ac3VzZS5kZT4KVGVzdGVkLWJ5OiBZYW5uaWNrIEZlcnRyw6kgPHlhbm5pY2suZmVydHJlQHN0
LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vbXNtL2Rpc3AvZHB1MS9kcHVfY3J0Yy5jICB8ICAy
ICsrCiBkcml2ZXJzL2dwdS9kcm0vbXNtL2Rpc3AvbWRwNC9tZHA0X2NydGMuYyB8ICAyICsrCiBk
cml2ZXJzL2dwdS9kcm0vbXNtL2Rpc3AvbWRwNS9tZHA1X2NydGMuYyB8IDE1ICsrKysrKysrKysK
IGRyaXZlcnMvZ3B1L2RybS9tc20vZGlzcC9tZHA1L21kcDVfa21zLmMgIHwgMzQgLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2Rydi5jICAgICAgICAgICAg
IHwgMTAgKysrKy0tLQogZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZHJ2LmggICAgICAgICAgICAg
fCAgMyArKwogNiBmaWxlcyBjaGFuZ2VkLCAyOCBpbnNlcnRpb25zKCspLCAzOCBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vbXNtL2Rpc3AvZHB1MS9kcHVfY3J0Yy5j
IGIvZHJpdmVycy9ncHUvZHJtL21zbS9kaXNwL2RwdTEvZHB1X2NydGMuYwppbmRleCBmMTk3ZGNl
NTQ1NzYuLmIxNzdkNTA1MmM1ZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL21zbS9kaXNw
L2RwdTEvZHB1X2NydGMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vbXNtL2Rpc3AvZHB1MS9kcHVf
Y3J0Yy5jCkBAIC0xMjgxLDYgKzEyODEsOCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9jcnRj
X2Z1bmNzIGRwdV9jcnRjX2Z1bmNzID0gewogCS5hdG9taWNfZGVzdHJveV9zdGF0ZSA9IGRwdV9j
cnRjX2Rlc3Ryb3lfc3RhdGUsCiAJLmxhdGVfcmVnaXN0ZXIgPSBkcHVfY3J0Y19sYXRlX3JlZ2lz
dGVyLAogCS5lYXJseV91bnJlZ2lzdGVyID0gZHB1X2NydGNfZWFybHlfdW5yZWdpc3RlciwKKwku
ZW5hYmxlX3ZibGFuayAgPSBtc21fY3J0Y19lbmFibGVfdmJsYW5rLAorCS5kaXNhYmxlX3ZibGFu
ayA9IG1zbV9jcnRjX2Rpc2FibGVfdmJsYW5rLAogfTsKIAogc3RhdGljIGNvbnN0IHN0cnVjdCBk
cm1fY3J0Y19oZWxwZXJfZnVuY3MgZHB1X2NydGNfaGVscGVyX2Z1bmNzID0gewpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL21zbS9kaXNwL21kcDQvbWRwNF9jcnRjLmMgYi9kcml2ZXJzL2dw
dS9kcm0vbXNtL2Rpc3AvbWRwNC9tZHA0X2NydGMuYwppbmRleCBmMzRkY2E1ZDQ1MzIuLmM5MjM5
YjA3ZmU0ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL21zbS9kaXNwL21kcDQvbWRwNF9j
cnRjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL21zbS9kaXNwL21kcDQvbWRwNF9jcnRjLmMKQEAg
LTQ4MSw2ICs0ODEsOCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9jcnRjX2Z1bmNzIG1kcDRf
Y3J0Y19mdW5jcyA9IHsKIAkucmVzZXQgPSBkcm1fYXRvbWljX2hlbHBlcl9jcnRjX3Jlc2V0LAog
CS5hdG9taWNfZHVwbGljYXRlX3N0YXRlID0gZHJtX2F0b21pY19oZWxwZXJfY3J0Y19kdXBsaWNh
dGVfc3RhdGUsCiAJLmF0b21pY19kZXN0cm95X3N0YXRlID0gZHJtX2F0b21pY19oZWxwZXJfY3J0
Y19kZXN0cm95X3N0YXRlLAorCS5lbmFibGVfdmJsYW5rICA9IG1zbV9jcnRjX2VuYWJsZV92Ymxh
bmssCisJLmRpc2FibGVfdmJsYW5rID0gbXNtX2NydGNfZGlzYWJsZV92YmxhbmssCiB9OwogCiBz
dGF0aWMgY29uc3Qgc3RydWN0IGRybV9jcnRjX2hlbHBlcl9mdW5jcyBtZHA0X2NydGNfaGVscGVy
X2Z1bmNzID0gewpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL21zbS9kaXNwL21kcDUvbWRw
NV9jcnRjLmMgYi9kcml2ZXJzL2dwdS9kcm0vbXNtL2Rpc3AvbWRwNS9tZHA1X2NydGMuYwppbmRl
eCA0ZGVjZjE5ODQ3YTguLmIzZDBhMGZlNzZiOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L21zbS9kaXNwL21kcDUvbWRwNV9jcnRjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL21zbS9kaXNw
L21kcDUvbWRwNV9jcnRjLmMKQEAgLTQ3MSw2ICs0NzEsMTcgQEAgc3RhdGljIGJvb2wgbWRwNV9j
cnRjX2dldF9zY2Fub3V0X3Bvc2l0aW9uKHN0cnVjdCBkcm1fY3J0YyAqY3J0YywKIAlyZXR1cm4g
dHJ1ZTsKIH0KIAorc3RhdGljIHUzMiBtZHA1X2NydGNfZ2V0X3ZibGFua19jb3VudGVyKHN0cnVj
dCBkcm1fY3J0YyAqY3J0YykKK3sKKwlzdHJ1Y3QgZHJtX2VuY29kZXIgKmVuY29kZXI7CisKKwll
bmNvZGVyID0gZ2V0X2VuY29kZXJfZnJvbV9jcnRjKGNydGMpOworCWlmICghZW5jb2RlcikKKwkJ
cmV0dXJuIDA7CisKKwlyZXR1cm4gbWRwNV9lbmNvZGVyX2dldF9mcmFtZWNvdW50KGVuY29kZXIp
OworfQorCiBzdGF0aWMgdm9pZCBtZHA1X2NydGNfYXRvbWljX2Rpc2FibGUoc3RydWN0IGRybV9j
cnRjICpjcnRjLAogCQkJCSAgICAgc3RydWN0IGRybV9jcnRjX3N0YXRlICpvbGRfc3RhdGUpCiB7
CkBAIC0xMTIwLDYgKzExMzEsMTAgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1fY3J0Y19mdW5j
cyBtZHA1X2NydGNfZnVuY3MgPSB7CiAJLmN1cnNvcl9zZXQgPSBtZHA1X2NydGNfY3Vyc29yX3Nl
dCwKIAkuY3Vyc29yX21vdmUgPSBtZHA1X2NydGNfY3Vyc29yX21vdmUsCiAJLmF0b21pY19wcmlu
dF9zdGF0ZSA9IG1kcDVfY3J0Y19hdG9taWNfcHJpbnRfc3RhdGUsCisJLmdldF92YmxhbmtfY291
bnRlciA9IG1kcDVfY3J0Y19nZXRfdmJsYW5rX2NvdW50ZXIsCisJLmVuYWJsZV92YmxhbmsgID0g
bXNtX2NydGNfZW5hYmxlX3ZibGFuaywKKwkuZGlzYWJsZV92YmxhbmsgPSBtc21fY3J0Y19kaXNh
YmxlX3ZibGFuaywKKwkuZ2V0X3ZibGFua190aW1lc3RhbXAgPSBkcm1fY3J0Y192YmxhbmtfaGVs
cGVyX2dldF92YmxhbmtfdGltZXN0YW1wLAogfTsKIAogc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1f
Y3J0Y19oZWxwZXJfZnVuY3MgbWRwNV9jcnRjX2hlbHBlcl9mdW5jcyA9IHsKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9tc20vZGlzcC9tZHA1L21kcDVfa21zLmMgYi9kcml2ZXJzL2dwdS9k
cm0vbXNtL2Rpc3AvbWRwNS9tZHA1X2ttcy5jCmluZGV4IDhiNzJhYzQ0Y2U1NS4uNjY1MGY0Nzhi
MjI2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vbXNtL2Rpc3AvbWRwNS9tZHA1X2ttcy5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9tc20vZGlzcC9tZHA1L21kcDVfa21zLmMKQEAgLTU4Mywz
OCArNTgzLDYgQEAgc3RhdGljIGludCBnZXRfY2xrKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBk
ZXYsIHN0cnVjdCBjbGsgKipjbGtwLAogCXJldHVybiAwOwogfQogCi1zdGF0aWMgc3RydWN0IGRy
bV9lbmNvZGVyICpnZXRfZW5jb2Rlcl9mcm9tX2NydGMoc3RydWN0IGRybV9jcnRjICpjcnRjKQot
ewotCXN0cnVjdCBkcm1fZGV2aWNlICpkZXYgPSBjcnRjLT5kZXY7Ci0Jc3RydWN0IGRybV9lbmNv
ZGVyICplbmNvZGVyOwotCi0JZHJtX2Zvcl9lYWNoX2VuY29kZXIoZW5jb2RlciwgZGV2KQotCQlp
ZiAoZW5jb2Rlci0+Y3J0YyA9PSBjcnRjKQotCQkJcmV0dXJuIGVuY29kZXI7Ci0KLQlyZXR1cm4g
TlVMTDsKLX0KLQotc3RhdGljIHUzMiBtZHA1X2dldF92YmxhbmtfY291bnRlcihzdHJ1Y3QgZHJt
X2RldmljZSAqZGV2LCB1bnNpZ25lZCBpbnQgcGlwZSkKLXsKLQlzdHJ1Y3QgbXNtX2RybV9wcml2
YXRlICpwcml2ID0gZGV2LT5kZXZfcHJpdmF0ZTsKLQlzdHJ1Y3QgZHJtX2NydGMgKmNydGM7Ci0J
c3RydWN0IGRybV9lbmNvZGVyICplbmNvZGVyOwotCi0JaWYgKHBpcGUgPj0gcHJpdi0+bnVtX2Ny
dGNzKQotCQlyZXR1cm4gMDsKLQotCWNydGMgPSBwcml2LT5jcnRjc1twaXBlXTsKLQlpZiAoIWNy
dGMpCi0JCXJldHVybiAwOwotCi0JZW5jb2RlciA9IGdldF9lbmNvZGVyX2Zyb21fY3J0YyhjcnRj
KTsKLQlpZiAoIWVuY29kZXIpCi0JCXJldHVybiAwOwotCi0JcmV0dXJuIG1kcDVfZW5jb2Rlcl9n
ZXRfZnJhbWVjb3VudChlbmNvZGVyKTsKLX0KLQogc3RydWN0IG1zbV9rbXMgKm1kcDVfa21zX2lu
aXQoc3RydWN0IGRybV9kZXZpY2UgKmRldikKIHsKIAlzdHJ1Y3QgbXNtX2RybV9wcml2YXRlICpw
cml2ID0gZGV2LT5kZXZfcHJpdmF0ZTsKQEAgLTcwMiw4ICs2NzAsNiBAQCBzdHJ1Y3QgbXNtX2tt
cyAqbWRwNV9rbXNfaW5pdChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KQogCWRldi0+bW9kZV9jb25m
aWcubWF4X3dpZHRoID0gMHhmZmZmOwogCWRldi0+bW9kZV9jb25maWcubWF4X2hlaWdodCA9IDB4
ZmZmZjsKIAotCWRldi0+ZHJpdmVyLT5nZXRfdmJsYW5rX3RpbWVzdGFtcCA9IGRybV9jYWxjX3Zi
bHRpbWVzdGFtcF9mcm9tX3NjYW5vdXRwb3M7Ci0JZGV2LT5kcml2ZXItPmdldF92YmxhbmtfY291
bnRlciA9IG1kcDVfZ2V0X3ZibGFua19jb3VudGVyOwogCWRldi0+bWF4X3ZibGFua19jb3VudCA9
IDA7IC8qIG1heF92YmxhbmtfY291bnQgaXMgc2V0IG9uIGVhY2ggQ1JUQyAqLwogCWRldi0+dmJs
YW5rX2Rpc2FibGVfaW1tZWRpYXRlID0gdHJ1ZTsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL21zbS9tc21fZHJ2LmMgYi9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9kcnYuYwppbmRleCBj
ODRmMGE4YjNmMmMuLmM1ZTA0NDEzNmZlNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL21z
bS9tc21fZHJ2LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZHJ2LmMKQEAgLTY2MCw4
ICs2NjAsMTAgQEAgc3RhdGljIHZvaWQgbXNtX2lycV91bmluc3RhbGwoc3RydWN0IGRybV9kZXZp
Y2UgKmRldikKIAlrbXMtPmZ1bmNzLT5pcnFfdW5pbnN0YWxsKGttcyk7CiB9CiAKLXN0YXRpYyBp
bnQgbXNtX2VuYWJsZV92Ymxhbmsoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdW5zaWduZWQgaW50
IHBpcGUpCitpbnQgbXNtX2NydGNfZW5hYmxlX3ZibGFuayhzdHJ1Y3QgZHJtX2NydGMgKmNydGMp
CiB7CisJc3RydWN0IGRybV9kZXZpY2UgKmRldiA9IGNydGMtPmRldjsKKwl1bnNpZ25lZCBpbnQg
cGlwZSA9IGNydGMtPmluZGV4OwogCXN0cnVjdCBtc21fZHJtX3ByaXZhdGUgKnByaXYgPSBkZXYt
PmRldl9wcml2YXRlOwogCXN0cnVjdCBtc21fa21zICprbXMgPSBwcml2LT5rbXM7CiAJaWYgKCFr
bXMpCkBAIC02NzAsOCArNjcyLDEwIEBAIHN0YXRpYyBpbnQgbXNtX2VuYWJsZV92Ymxhbmsoc3Ry
dWN0IGRybV9kZXZpY2UgKmRldiwgdW5zaWduZWQgaW50IHBpcGUpCiAJcmV0dXJuIHZibGFua19j
dHJsX3F1ZXVlX3dvcmsocHJpdiwgcGlwZSwgdHJ1ZSk7CiB9CiAKLXN0YXRpYyB2b2lkIG1zbV9k
aXNhYmxlX3ZibGFuayhzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB1bnNpZ25lZCBpbnQgcGlwZSkK
K3ZvaWQgbXNtX2NydGNfZGlzYWJsZV92Ymxhbmsoc3RydWN0IGRybV9jcnRjICpjcnRjKQogewor
CXN0cnVjdCBkcm1fZGV2aWNlICpkZXYgPSBjcnRjLT5kZXY7CisJdW5zaWduZWQgaW50IHBpcGUg
PSBjcnRjLT5pbmRleDsKIAlzdHJ1Y3QgbXNtX2RybV9wcml2YXRlICpwcml2ID0gZGV2LT5kZXZf
cHJpdmF0ZTsKIAlzdHJ1Y3QgbXNtX2ttcyAqa21zID0gcHJpdi0+a21zOwogCWlmICgha21zKQpA
QCAtOTk2LDggKzEwMDAsNiBAQCBzdGF0aWMgc3RydWN0IGRybV9kcml2ZXIgbXNtX2RyaXZlciA9
IHsKIAkuaXJxX3ByZWluc3RhbGwgICAgID0gbXNtX2lycV9wcmVpbnN0YWxsLAogCS5pcnFfcG9z
dGluc3RhbGwgICAgPSBtc21faXJxX3Bvc3RpbnN0YWxsLAogCS5pcnFfdW5pbnN0YWxsICAgICAg
PSBtc21faXJxX3VuaW5zdGFsbCwKLQkuZW5hYmxlX3ZibGFuayAgICAgID0gbXNtX2VuYWJsZV92
YmxhbmssCi0JLmRpc2FibGVfdmJsYW5rICAgICA9IG1zbV9kaXNhYmxlX3ZibGFuaywKIAkuZ2Vt
X2ZyZWVfb2JqZWN0X3VubG9ja2VkID0gbXNtX2dlbV9mcmVlX29iamVjdCwKIAkuZ2VtX3ZtX29w
cyAgICAgICAgID0gJnZtX29wcywKIAkuZHVtYl9jcmVhdGUgICAgICAgID0gbXNtX2dlbV9kdW1i
X2NyZWF0ZSwKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2Rydi5oIGIvZHJp
dmVycy9ncHUvZHJtL21zbS9tc21fZHJ2LmgKaW5kZXggNzE1NDdlNzU2ZTI5Li4xMDg2MjVjZDU1
M2QgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2Rydi5oCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9tc20vbXNtX2Rydi5oCkBAIC0yMzIsNiArMjMyLDkgQEAgc3RydWN0IGRybV9h
dG9taWNfc3RhdGUgKm1zbV9hdG9taWNfc3RhdGVfYWxsb2Moc3RydWN0IGRybV9kZXZpY2UgKmRl
dik7CiB2b2lkIG1zbV9hdG9taWNfc3RhdGVfY2xlYXIoc3RydWN0IGRybV9hdG9taWNfc3RhdGUg
KnN0YXRlKTsKIHZvaWQgbXNtX2F0b21pY19zdGF0ZV9mcmVlKHN0cnVjdCBkcm1fYXRvbWljX3N0
YXRlICpzdGF0ZSk7CiAKK2ludCBtc21fY3J0Y19lbmFibGVfdmJsYW5rKHN0cnVjdCBkcm1fY3J0
YyAqY3J0Yyk7Cit2b2lkIG1zbV9jcnRjX2Rpc2FibGVfdmJsYW5rKHN0cnVjdCBkcm1fY3J0YyAq
Y3J0Yyk7CisKIGludCBtc21fZ2VtX2luaXRfdm1hKHN0cnVjdCBtc21fZ2VtX2FkZHJlc3Nfc3Bh
Y2UgKmFzcGFjZSwKIAkJc3RydWN0IG1zbV9nZW1fdm1hICp2bWEsIGludCBucGFnZXMpOwogdm9p
ZCBtc21fZ2VtX3B1cmdlX3ZtYShzdHJ1Y3QgbXNtX2dlbV9hZGRyZXNzX3NwYWNlICphc3BhY2Us
Ci0tIAoyLjI0LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eAo=
