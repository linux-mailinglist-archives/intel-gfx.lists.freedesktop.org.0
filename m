Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA280631D6
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 09:23:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E8636E04A;
	Tue,  9 Jul 2019 07:23:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FD3C6E04A
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 07:23:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jul 2019 00:23:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,469,1557212400"; 
 d="scan'208,223";a="364500334"
Received: from ramaling-i9x.iind.intel.com ([10.99.66.154])
 by fmsmga006.fm.intel.com with ESMTP; 09 Jul 2019 00:23:03 -0700
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>, shashank.sharma@intel.com,
 Daniel Vetter <daniel@ffwll.ch>
Date: Tue,  9 Jul 2019 05:54:15 +0530
Message-Id: <20190709002415.6073-1-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4] drm/i915: Enable HDCP 1.4 and 2.2 on Gen12+
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

RnJvbSBHZW4xMiBvbndhcmRzLCBIRENQIEhXIGJsb2NrIGlzIGltcGxlbWVudGVkIHdpdGhpbiB0
cmFuc2NvZGVycy4KVGlsbCBHZW4xMSBIRENQIEhXIGJsb2NrIHdhcyBwYXJ0IG9mIERESS4KCkhl
bmNlIHJlcXVpcmVkIGNoYW5nZXMgaW4gSFcgcHJvZ3JhbW1pbmcgaXMgaGFuZGxlZCBoZXJlLgoK
djI6CiAgX01NSU9fVFJBTlMgaXMgdXNlZCBbTHVjYXMgYW5kIERhbmllbF0KICBwbGF0Zm9ybSBj
aGVjayBpcyBtb3ZlZCBpbnRvIHRoZSBjYWxsZXIgW0x1Y2FzXQp2MzoKICBwbGF0Zm9ybSBjaGVj
ayBpcyBtb3ZlZCBpbnRvIGEgbWFjcm8gW1NoYXNoYW5rXQp2NDoKICBGZXcgb3B0aW1pemF0aW9u
cyBpbiB0aGUgY29kaW5nIFtTaGFzaGFua10KClNpZ25lZC1vZmYtYnk6IFJhbWFsaW5nYW0gQyA8
cmFtYWxpbmdhbS5jQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2hkY3AuYyB8IDEyOSArKysrKysrKysrKysrKy0tLS0tLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYyB8ICAgOSArLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZWcuaCAgICAgICAgICAgfCAxMjAgKysrKysrKysrKysrKysrKysrLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rydi5oICAgICAgICAgIHwgICA4ICsrCiA0IGZpbGVzIGNo
YW5nZWQsIDIwNyBpbnNlcnRpb25zKCspLCA1OSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkY3AuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRjcC5jCmluZGV4IGJjM2E5NGQ0OTFjNC4uYTUzNzE5Yjcy
YmIyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkY3Au
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkY3AuYwpAQCAtMTcs
NiArMTcsNyBAQAogI2luY2x1ZGUgImludGVsX2Rydi5oIgogI2luY2x1ZGUgImludGVsX2hkY3Au
aCIKICNpbmNsdWRlICJpbnRlbF9zaWRlYmFuZC5oIgorI2luY2x1ZGUgImludGVsX2Nvbm5lY3Rv
ci5oIgogCiAjZGVmaW5lIEtFWV9MT0FEX1RSSUVTCTUKICNkZWZpbmUgRU5DUllQVF9TVEFUVVNf
Q0hBTkdFX1RJTUVPVVRfTVMJNTAKQEAgLTEwNCwyNCArMTA1LDIxIEBAIGJvb2wgaW50ZWxfaGRj
cDJfY2FwYWJsZShzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IpCiAJcmV0dXJuIGNh
cGFibGU7CiB9CiAKLXN0YXRpYyBpbmxpbmUgYm9vbCBpbnRlbF9oZGNwX2luX3VzZShzdHJ1Y3Qg
aW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IpCitzdGF0aWMgaW5saW5lIGJvb2wgaW50ZWxfaGRj
cF9pbl91c2Uoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAorCQkJCSAgICAgZW51
bSBwaXBlIHBpcGUsIGVudW0gcG9ydCBwb3J0KQogewotCXN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdiA9IHRvX2k5MTUoY29ubmVjdG9yLT5iYXNlLmRldik7Ci0JZW51bSBwb3J0IHBv
cnQgPSBjb25uZWN0b3ItPmVuY29kZXItPnBvcnQ7CiAJdTMyIHJlZzsKIAotCXJlZyA9IEk5MTVf
UkVBRChQT1JUX0hEQ1BfU1RBVFVTKHBvcnQpKTsKLQlyZXR1cm4gcmVnICYgSERDUF9TVEFUVVNf
RU5DOworCXJldHVybiBJOTE1X1JFQUQoSERDUF9TVEFUVVMoZGV2X3ByaXYsIHBpcGUsIHBvcnQp
KSAmIEhEQ1BfU1RBVFVTX0VOQzsKIH0KIAotc3RhdGljIGlubGluZSBib29sIGludGVsX2hkY3Ay
X2luX3VzZShzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IpCitzdGF0aWMgaW5saW5l
IGJvb2wgaW50ZWxfaGRjcDJfaW5fdXNlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
diwKKwkJCQkgICAgICBlbnVtIHBpcGUgcGlwZSwgZW51bSBwb3J0IHBvcnQpCiB7Ci0Jc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjb25uZWN0b3ItPmJhc2UuZGV2
KTsKLQllbnVtIHBvcnQgcG9ydCA9IGNvbm5lY3Rvci0+ZW5jb2Rlci0+cG9ydDsKIAl1MzIgcmVn
OwogCi0JcmVnID0gSTkxNV9SRUFEKEhEQ1AyX1NUQVRVU19EREkocG9ydCkpOwotCXJldHVybiBy
ZWcgJiBMSU5LX0VOQ1JZUFRJT05fU1RBVFVTOworCXJldHVybiBJOTE1X1JFQUQoSERDUDJfU1RB
VFVTKGRldl9wcml2LCBwaXBlLCBwb3J0KSkgJgorCSAgICAgICBMSU5LX0VOQ1JZUFRJT05fU1RB
VFVTOwogfQogCiBzdGF0aWMgaW50IGludGVsX2hkY3BfcG9sbF9rc3ZfZmlmbyhzdHJ1Y3QgaW50
ZWxfZGlnaXRhbF9wb3J0ICppbnRlbF9kaWdfcG9ydCwKQEAgLTI1Myw5ICsyNTEsMjggQEAgc3Rh
dGljIGludCBpbnRlbF93cml0ZV9zaGFfdGV4dChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYsIHUzMiBzaGFfdGV4dCkKIH0KIAogc3RhdGljCi11MzIgaW50ZWxfaGRjcF9nZXRfcmVw
ZWF0ZXJfY3RsKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmludGVsX2RpZ19wb3J0KQordTMy
IGludGVsX2hkY3BfZ2V0X3JlcGVhdGVyX2N0bChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYsCisJCQkJZW51bSBwaXBlIHBpcGUsIGVudW0gcG9ydCBwb3J0KQogewotCWVudW0gcG9y
dCBwb3J0ID0gaW50ZWxfZGlnX3BvcnQtPmJhc2UucG9ydDsKKwlpZiAoSU5URUxfR0VOKGRldl9w
cml2KSA+PSAxMikgeworCQlzd2l0Y2ggKHBpcGUpIHsKKwkJY2FzZSBQSVBFX0E6CisJCQlyZXR1
cm4gSERDUF9UUkFOU0FfUkVQX1BSRVNFTlQgfAorCQkJICAgICAgIEhEQ1BfVFJBTlNBX1NIQTFf
TTA7CisJCWNhc2UgUElQRV9COgorCQkJcmV0dXJuIEhEQ1BfVFJBTlNCX1JFUF9QUkVTRU5UIHwK
KwkJCSAgICAgICBIRENQX1RSQU5TQl9TSEExX00wOworCQljYXNlIFBJUEVfQzoKKwkJCXJldHVy
biBIRENQX1RSQU5TQ19SRVBfUFJFU0VOVCB8CisJCQkgICAgICAgSERDUF9UUkFOU0NfU0hBMV9N
MDsKKwkJLyogRklYTUU6IEFkZCBhIGNhc2UgZm9yIFBJUEVfRCAqLworCQlkZWZhdWx0OgorCQkJ
RFJNX0VSUk9SKCJVbmtub3duIHBpcGUgJWRcbiIsIHBpcGUpOworCQkJYnJlYWs7CisJCX0KKwkJ
cmV0dXJuIC1FSU5WQUw7CisJfQorCiAJc3dpdGNoIChwb3J0KSB7CiAJY2FzZSBQT1JUX0E6CiAJ
CXJldHVybiBIRENQX0RESUFfUkVQX1BSRVNFTlQgfCBIRENQX0RESUFfU0hBMV9NMDsKQEAgLTI2
OCwxOCArMjg1LDIxIEBAIHUzMiBpbnRlbF9oZGNwX2dldF9yZXBlYXRlcl9jdGwoc3RydWN0IGlu
dGVsX2RpZ2l0YWxfcG9ydCAqaW50ZWxfZGlnX3BvcnQpCiAJY2FzZSBQT1JUX0U6CiAJCXJldHVy
biBIRENQX0RESUVfUkVQX1BSRVNFTlQgfCBIRENQX0RESUVfU0hBMV9NMDsKIAlkZWZhdWx0Ogor
CQlEUk1fRVJST1IoIlVua25vd24gcG9ydCAlZFxuIiwgcG9ydCk7CiAJCWJyZWFrOwogCX0KLQlE
Uk1fRVJST1IoIlVua25vd24gcG9ydCAlZFxuIiwgcG9ydCk7CiAJcmV0dXJuIC1FSU5WQUw7CiB9
CiAKIHN0YXRpYwotaW50IGludGVsX2hkY3BfdmFsaWRhdGVfdl9wcmltZShzdHJ1Y3QgaW50ZWxf
ZGlnaXRhbF9wb3J0ICppbnRlbF9kaWdfcG9ydCwKK2ludCBpbnRlbF9oZGNwX3ZhbGlkYXRlX3Zf
cHJpbWUoc3RydWN0IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yLAogCQkJCWNvbnN0IHN0cnVj
dCBpbnRlbF9oZGNwX3NoaW0gKnNoaW0sCiAJCQkJdTggKmtzdl9maWZvLCB1OCBudW1fZG93bnN0
cmVhbSwgdTggKmJzdGF0dXMpCiB7CisJc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqaW50ZWxf
ZGlnX3BvcnQgPSBjb25uX3RvX2RpZ19wb3J0KGNvbm5lY3Rvcik7CiAJc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2OworCWVudW0gcGlwZSBwaXBlID0gY29ubmVjdG9yLT5oZGNwLnBp
cGU7CisJZW51bSBwb3J0IHBvcnQgPSBpbnRlbF9kaWdfcG9ydC0+YmFzZS5wb3J0OwogCXUzMiB2
cHJpbWUsIHNoYV90ZXh0LCBzaGFfbGVmdG92ZXJzLCByZXBfY3RsOwogCWludCByZXQsIGksIGos
IHNoYV9pZHg7CiAKQEAgLTMwNiw3ICszMjYsNyBAQCBpbnQgaW50ZWxfaGRjcF92YWxpZGF0ZV92
X3ByaW1lKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmludGVsX2RpZ19wb3J0LAogCXNoYV9p
ZHggPSAwOwogCXNoYV90ZXh0ID0gMDsKIAlzaGFfbGVmdG92ZXJzID0gMDsKLQlyZXBfY3RsID0g
aW50ZWxfaGRjcF9nZXRfcmVwZWF0ZXJfY3RsKGludGVsX2RpZ19wb3J0KTsKKwlyZXBfY3RsID0g
aW50ZWxfaGRjcF9nZXRfcmVwZWF0ZXJfY3RsKGRldl9wcml2LCBwaXBlLCBwb3J0KTsKIAlJOTE1
X1dSSVRFKEhEQ1BfUkVQX0NUTCwgcmVwX2N0bCB8IEhEQ1BfU0hBMV9URVhUXzMyKTsKIAlmb3Ig
KGkgPSAwOyBpIDwgbnVtX2Rvd25zdHJlYW07IGkrKykgewogCQl1bnNpZ25lZCBpbnQgc2hhX2Vt
cHR5OwpAQCAtNTQ0LDcgKzU2NCw3IEBAIGludCBpbnRlbF9oZGNwX2F1dGhfZG93bnN0cmVhbShz
dHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IpCiAJICogViBwcmltZSBhdGxlYXN0IHR3
aWNlLgogCSAqLwogCWZvciAoaSA9IDA7IGkgPCB0cmllczsgaSsrKSB7Ci0JCXJldCA9IGludGVs
X2hkY3BfdmFsaWRhdGVfdl9wcmltZShpbnRlbF9kaWdfcG9ydCwgc2hpbSwKKwkJcmV0ID0gaW50
ZWxfaGRjcF92YWxpZGF0ZV92X3ByaW1lKGNvbm5lY3Rvciwgc2hpbSwKIAkJCQkJCSAga3N2X2Zp
Zm8sIG51bV9kb3duc3RyZWFtLAogCQkJCQkJICBic3RhdHVzKTsKIAkJaWYgKCFyZXQpCkBAIC01
NzIsNiArNTkyLDcgQEAgc3RhdGljIGludCBpbnRlbF9oZGNwX2F1dGgoc3RydWN0IGludGVsX2Nv
bm5lY3RvciAqY29ubmVjdG9yKQogCXN0cnVjdCBkcm1fZGV2aWNlICpkZXYgPSBjb25uZWN0b3It
PmJhc2UuZGV2OwogCWNvbnN0IHN0cnVjdCBpbnRlbF9oZGNwX3NoaW0gKnNoaW0gPSBoZGNwLT5z
aGltOwogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdjsKKwllbnVtIHBpcGUgcGlw
ZSA9IGNvbm5lY3Rvci0+aGRjcC5waXBlOwogCWVudW0gcG9ydCBwb3J0OwogCXVuc2lnbmVkIGxv
bmcgcjBfcHJpbWVfZ2VuX3N0YXJ0OwogCWludCByZXQsIGksIHRyaWVzID0gMjsKQEAgLTYxMSwx
OSArNjMyLDIwIEBAIHN0YXRpYyBpbnQgaW50ZWxfaGRjcF9hdXRoKHN0cnVjdCBpbnRlbF9jb25u
ZWN0b3IgKmNvbm5lY3RvcikKIAogCS8qIEluaXRpYWxpemUgQW4gd2l0aCAyIHJhbmRvbSB2YWx1
ZXMgYW5kIGFjcXVpcmUgaXQgKi8KIAlmb3IgKGkgPSAwOyBpIDwgMjsgaSsrKQotCQlJOTE1X1dS
SVRFKFBPUlRfSERDUF9BTklOSVQocG9ydCksIGdldF9yYW5kb21fdTMyKCkpOwotCUk5MTVfV1JJ
VEUoUE9SVF9IRENQX0NPTkYocG9ydCksIEhEQ1BfQ09ORl9DQVBUVVJFX0FOKTsKKwkJSTkxNV9X
UklURShIRENQX0FOSU5JVChkZXZfcHJpdiwgcGlwZSwgcG9ydCksIGdldF9yYW5kb21fdTMyKCkp
OworCUk5MTVfV1JJVEUoSERDUF9DT05GKGRldl9wcml2LCBwaXBlLCBwb3J0KSwgSERDUF9DT05G
X0NBUFRVUkVfQU4pOwogCiAJLyogV2FpdCBmb3IgQW4gdG8gYmUgYWNxdWlyZWQgKi8KLQlpZiAo
aW50ZWxfd2FpdF9mb3JfcmVnaXN0ZXIoJmRldl9wcml2LT51bmNvcmUsIFBPUlRfSERDUF9TVEFU
VVMocG9ydCksCisJaWYgKGludGVsX3dhaXRfZm9yX3JlZ2lzdGVyKCZkZXZfcHJpdi0+dW5jb3Jl
LAorCQkJCSAgICBIRENQX1NUQVRVUyhkZXZfcHJpdiwgcGlwZSwgcG9ydCksCiAJCQkJICAgIEhE
Q1BfU1RBVFVTX0FOX1JFQURZLAogCQkJCSAgICBIRENQX1NUQVRVU19BTl9SRUFEWSwgMSkpIHsK
IAkJRFJNX0VSUk9SKCJUaW1lZCBvdXQgd2FpdGluZyBmb3IgQW5cbiIpOwogCQlyZXR1cm4gLUVU
SU1FRE9VVDsKIAl9CiAKLQlhbi5yZWdbMF0gPSBJOTE1X1JFQUQoUE9SVF9IRENQX0FOTE8ocG9y
dCkpOwotCWFuLnJlZ1sxXSA9IEk5MTVfUkVBRChQT1JUX0hEQ1BfQU5ISShwb3J0KSk7CisJYW4u
cmVnWzBdID0gSTkxNV9SRUFEKEhEQ1BfQU5MTyhkZXZfcHJpdiwgcGlwZSwgcG9ydCkpOworCWFu
LnJlZ1sxXSA9IEk5MTVfUkVBRChIRENQX0FOSEkoZGV2X3ByaXYsIHBpcGUsIHBvcnQpKTsKIAly
ZXQgPSBzaGltLT53cml0ZV9hbl9ha3N2KGludGVsX2RpZ19wb3J0LCBhbi5zaGltKTsKIAlpZiAo
cmV0KQogCQlyZXR1cm4gcmV0OwpAQCAtNjQxLDI0ICs2NjMsMjQgQEAgc3RhdGljIGludCBpbnRl
bF9oZGNwX2F1dGgoc3RydWN0IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yKQogCQlyZXR1cm4g
LUVQRVJNOwogCX0KIAotCUk5MTVfV1JJVEUoUE9SVF9IRENQX0JLU1ZMTyhwb3J0KSwgYmtzdi5y
ZWdbMF0pOwotCUk5MTVfV1JJVEUoUE9SVF9IRENQX0JLU1ZISShwb3J0KSwgYmtzdi5yZWdbMV0p
OworCUk5MTVfV1JJVEUoSERDUF9CS1NWTE8oZGV2X3ByaXYsIHBpcGUsIHBvcnQpLCBia3N2LnJl
Z1swXSk7CisJSTkxNV9XUklURShIRENQX0JLU1ZISShkZXZfcHJpdiwgcGlwZSwgcG9ydCksIGJr
c3YucmVnWzFdKTsKIAogCXJldCA9IHNoaW0tPnJlcGVhdGVyX3ByZXNlbnQoaW50ZWxfZGlnX3Bv
cnQsICZyZXBlYXRlcl9wcmVzZW50KTsKIAlpZiAocmV0KQogCQlyZXR1cm4gcmV0OwogCWlmIChy
ZXBlYXRlcl9wcmVzZW50KQogCQlJOTE1X1dSSVRFKEhEQ1BfUkVQX0NUTCwKLQkJCSAgIGludGVs
X2hkY3BfZ2V0X3JlcGVhdGVyX2N0bChpbnRlbF9kaWdfcG9ydCkpOworCQkJICAgaW50ZWxfaGRj
cF9nZXRfcmVwZWF0ZXJfY3RsKGRldl9wcml2LCBwaXBlLCBwb3J0KSk7CiAKIAlyZXQgPSBzaGlt
LT50b2dnbGVfc2lnbmFsbGluZyhpbnRlbF9kaWdfcG9ydCwgdHJ1ZSk7CiAJaWYgKHJldCkKIAkJ
cmV0dXJuIHJldDsKIAotCUk5MTVfV1JJVEUoUE9SVF9IRENQX0NPTkYocG9ydCksIEhEQ1BfQ09O
Rl9BVVRIX0FORF9FTkMpOworCUk5MTVfV1JJVEUoSERDUF9DT05GKGRldl9wcml2LCBwaXBlLCBw
b3J0KSwgSERDUF9DT05GX0FVVEhfQU5EX0VOQyk7CiAKIAkvKiBXYWl0IGZvciBSMCByZWFkeSAq
LwotCWlmICh3YWl0X2ZvcihJOTE1X1JFQUQoUE9SVF9IRENQX1NUQVRVUyhwb3J0KSkgJgorCWlm
ICh3YWl0X2ZvcihJOTE1X1JFQUQoSERDUF9TVEFUVVMoZGV2X3ByaXYsIHBpcGUsIHBvcnQpKSAm
CiAJCSAgICAgKEhEQ1BfU1RBVFVTX1IwX1JFQURZIHwgSERDUF9TVEFUVVNfRU5DKSwgMSkpIHsK
IAkJRFJNX0VSUk9SKCJUaW1lZCBvdXQgd2FpdGluZyBmb3IgUjAgcmVhZHlcbiIpOwogCQlyZXR1
cm4gLUVUSU1FRE9VVDsKQEAgLTY4NiwyMiArNzA4LDIzIEBAIHN0YXRpYyBpbnQgaW50ZWxfaGRj
cF9hdXRoKHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvcikKIAkJcmV0ID0gc2hpbS0+
cmVhZF9yaV9wcmltZShpbnRlbF9kaWdfcG9ydCwgcmkuc2hpbSk7CiAJCWlmIChyZXQpCiAJCQly
ZXR1cm4gcmV0OwotCQlJOTE1X1dSSVRFKFBPUlRfSERDUF9SUFJJTUUocG9ydCksIHJpLnJlZyk7
CisJCUk5MTVfV1JJVEUoSERDUF9SUFJJTUUoZGV2X3ByaXYsIHBpcGUsIHBvcnQpLCByaS5yZWcp
OwogCiAJCS8qIFdhaXQgZm9yIFJpIHByaW1lIG1hdGNoICovCi0JCWlmICghd2FpdF9mb3IoSTkx
NV9SRUFEKFBPUlRfSERDUF9TVEFUVVMocG9ydCkpICYKKwkJaWYgKCF3YWl0X2ZvcihJOTE1X1JF
QUQoSERDUF9TVEFUVVMoZGV2X3ByaXYsIHBpcGUsIHBvcnQpKSAmCiAJCSAgICAoSERDUF9TVEFU
VVNfUklfTUFUQ0ggfCBIRENQX1NUQVRVU19FTkMpLCAxKSkKIAkJCWJyZWFrOwogCX0KIAogCWlm
IChpID09IHRyaWVzKSB7CiAJCURSTV9ERUJVR19LTVMoIlRpbWVkIG91dCB3YWl0aW5nIGZvciBS
aSBwcmltZSBtYXRjaCAoJXgpXG4iLAotCQkJICAgICAgSTkxNV9SRUFEKFBPUlRfSERDUF9TVEFU
VVMocG9ydCkpKTsKKwkJCSAgICAgIEk5MTVfUkVBRChIRENQX1NUQVRVUyhkZXZfcHJpdiwgcGlw
ZSwgcG9ydCkpKTsKIAkJcmV0dXJuIC1FVElNRURPVVQ7CiAJfQogCiAJLyogV2FpdCBmb3IgZW5j
cnlwdGlvbiBjb25maXJtYXRpb24gKi8KLQlpZiAoaW50ZWxfd2FpdF9mb3JfcmVnaXN0ZXIoJmRl
dl9wcml2LT51bmNvcmUsIFBPUlRfSERDUF9TVEFUVVMocG9ydCksCisJaWYgKGludGVsX3dhaXRf
Zm9yX3JlZ2lzdGVyKCZkZXZfcHJpdi0+dW5jb3JlLAorCQkJCSAgICBIRENQX1NUQVRVUyhkZXZf
cHJpdiwgcGlwZSwgcG9ydCksCiAJCQkJICAgIEhEQ1BfU1RBVFVTX0VOQywgSERDUF9TVEFUVVNf
RU5DLAogCQkJCSAgICBFTkNSWVBUX1NUQVRVU19DSEFOR0VfVElNRU9VVF9NUykpIHsKIAkJRFJN
X0VSUk9SKCJUaW1lZCBvdXQgd2FpdGluZyBmb3IgZW5jcnlwdGlvblxuIik7CkBAIC03MjYsMTUg
Kzc0OSwxNiBAQCBzdGF0aWMgaW50IF9pbnRlbF9oZGNwX2Rpc2FibGUoc3RydWN0IGludGVsX2Nv
bm5lY3RvciAqY29ubmVjdG9yKQogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9
IGNvbm5lY3Rvci0+YmFzZS5kZXYtPmRldl9wcml2YXRlOwogCXN0cnVjdCBpbnRlbF9kaWdpdGFs
X3BvcnQgKmludGVsX2RpZ19wb3J0ID0gY29ubl90b19kaWdfcG9ydChjb25uZWN0b3IpOwogCWVu
dW0gcG9ydCBwb3J0ID0gaW50ZWxfZGlnX3BvcnQtPmJhc2UucG9ydDsKKwllbnVtIHBpcGUgcGlw
ZSA9IGhkY3AtPnBpcGU7CiAJaW50IHJldDsKIAogCURSTV9ERUJVR19LTVMoIlslczolZF0gSERD
UCBpcyBiZWluZyBkaXNhYmxlZC4uLlxuIiwKIAkJICAgICAgY29ubmVjdG9yLT5iYXNlLm5hbWUs
IGNvbm5lY3Rvci0+YmFzZS5iYXNlLmlkKTsKIAogCWhkY3AtPmhkY3BfZW5jcnlwdGVkID0gZmFs
c2U7Ci0JSTkxNV9XUklURShQT1JUX0hEQ1BfQ09ORihwb3J0KSwgMCk7CisJSTkxNV9XUklURShI
RENQX0NPTkYoZGV2X3ByaXYsIHBpcGUsIHBvcnQpLCAwKTsKIAlpZiAoaW50ZWxfd2FpdF9mb3Jf
cmVnaXN0ZXIoJmRldl9wcml2LT51bmNvcmUsCi0JCQkJICAgIFBPUlRfSERDUF9TVEFUVVMocG9y
dCksIH4wLCAwLAorCQkJCSAgICBIRENQX1NUQVRVUyhkZXZfcHJpdiwgcGlwZSwgcG9ydCksIH4w
LCAwLAogCQkJCSAgICBFTkNSWVBUX1NUQVRVU19DSEFOR0VfVElNRU9VVF9NUykpIHsKIAkJRFJN
X0VSUk9SKCJGYWlsZWQgdG8gZGlzYWJsZSBIRENQLCB0aW1lb3V0IGNsZWFyaW5nIHN0YXR1c1xu
Iik7CiAJCXJldHVybiAtRVRJTUVET1VUOwpAQCAtODA2LDkgKzgzMCwxMSBAQCBzdGF0aWMgaW50
IGludGVsX2hkY3BfY2hlY2tfbGluayhzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3Ip
CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gY29ubmVjdG9yLT5iYXNlLmRl
di0+ZGV2X3ByaXZhdGU7CiAJc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqaW50ZWxfZGlnX3Bv
cnQgPSBjb25uX3RvX2RpZ19wb3J0KGNvbm5lY3Rvcik7CiAJZW51bSBwb3J0IHBvcnQgPSBpbnRl
bF9kaWdfcG9ydC0+YmFzZS5wb3J0OworCWVudW0gcGlwZSBwaXBlOwogCWludCByZXQgPSAwOwog
CiAJbXV0ZXhfbG9jaygmaGRjcC0+bXV0ZXgpOworCXBpcGUgPSBoZGNwLT5waXBlOwogCiAJLyog
Q2hlY2tfbGluayB2YWxpZCBvbmx5IHdoZW4gSERDUDEuNCBpcyBlbmFibGVkICovCiAJaWYgKGhk
Y3AtPnZhbHVlICE9IERSTV9NT0RFX0NPTlRFTlRfUFJPVEVDVElPTl9FTkFCTEVEIHx8CkBAIC04
MTcsMTAgKzg0MywxMCBAQCBzdGF0aWMgaW50IGludGVsX2hkY3BfY2hlY2tfbGluayhzdHJ1Y3Qg
aW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IpCiAJCWdvdG8gb3V0OwogCX0KIAotCWlmIChXQVJO
X09OKCFpbnRlbF9oZGNwX2luX3VzZShjb25uZWN0b3IpKSkgeworCWlmIChXQVJOX09OKCFpbnRl
bF9oZGNwX2luX3VzZShkZXZfcHJpdiwgcGlwZSwgcG9ydCkpKSB7CiAJCURSTV9FUlJPUigiJXM6
JWQgSERDUCBsaW5rIHN0b3BwZWQgZW5jcnlwdGlvbiwleFxuIiwKIAkJCSAgY29ubmVjdG9yLT5i
YXNlLm5hbWUsIGNvbm5lY3Rvci0+YmFzZS5iYXNlLmlkLAotCQkJICBJOTE1X1JFQUQoUE9SVF9I
RENQX1NUQVRVUyhwb3J0KSkpOworCQkJICBJOTE1X1JFQUQoSERDUF9TVEFUVVMoZGV2X3ByaXYs
IHBpcGUsIHBvcnQpKSk7CiAJCXJldCA9IC1FTlhJTzsKIAkJaGRjcC0+dmFsdWUgPSBEUk1fTU9E
RV9DT05URU5UX1BST1RFQ1RJT05fREVTSVJFRDsKIAkJc2NoZWR1bGVfd29yaygmaGRjcC0+cHJv
cF93b3JrKTsKQEAgLTE0OTEsMTAgKzE1MTcsMTEgQEAgc3RhdGljIGludCBoZGNwMl9lbmFibGVf
ZW5jcnlwdGlvbihzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IpCiAJc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjb25uZWN0b3ItPmJhc2UuZGV2KTsK
IAlzdHJ1Y3QgaW50ZWxfaGRjcCAqaGRjcCA9ICZjb25uZWN0b3ItPmhkY3A7CiAJZW51bSBwb3J0
IHBvcnQgPSBjb25uZWN0b3ItPmVuY29kZXItPnBvcnQ7CisJZW51bSBwaXBlIHBpcGUgPSBoZGNw
LT5waXBlOwogCWludCByZXQ7CiAKLQlXQVJOX09OKEk5MTVfUkVBRChIRENQMl9TVEFUVVNfRERJ
KHBvcnQpKSAmIExJTktfRU5DUllQVElPTl9TVEFUVVMpOwotCisJV0FSTl9PTihJOTE1X1JFQUQo
SERDUDJfU1RBVFVTKGRldl9wcml2LCBwaXBlLCBwb3J0KSkgJgorCQlMSU5LX0VOQ1JZUFRJT05f
U1RBVFVTKTsKIAlpZiAoaGRjcC0+c2hpbS0+dG9nZ2xlX3NpZ25hbGxpbmcpIHsKIAkJcmV0ID0g
aGRjcC0+c2hpbS0+dG9nZ2xlX3NpZ25hbGxpbmcoaW50ZWxfZGlnX3BvcnQsIHRydWUpOwogCQlp
ZiAocmV0KSB7CkBAIC0xNTA0LDE0ICsxNTMxLDE1IEBAIHN0YXRpYyBpbnQgaGRjcDJfZW5hYmxl
X2VuY3J5cHRpb24oc3RydWN0IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yKQogCQl9CiAJfQog
Ci0JaWYgKEk5MTVfUkVBRChIRENQMl9TVEFUVVNfRERJKHBvcnQpKSAmIExJTktfQVVUSF9TVEFU
VVMpIHsKKwlpZiAoSTkxNV9SRUFEKEhEQ1AyX1NUQVRVUyhkZXZfcHJpdiwgcGlwZSwgcG9ydCkp
ICYgTElOS19BVVRIX1NUQVRVUykgewogCQkvKiBMaW5rIGlzIEF1dGhlbnRpY2F0ZWQuIE5vdyBz
ZXQgZm9yIEVuY3J5cHRpb24gKi8KLQkJSTkxNV9XUklURShIRENQMl9DVExfRERJKHBvcnQpLAot
CQkJICAgSTkxNV9SRUFEKEhEQ1AyX0NUTF9EREkocG9ydCkpIHwKKwkJSTkxNV9XUklURShIRENQ
Ml9DVEwoZGV2X3ByaXYsIHBpcGUsIHBvcnQpLAorCQkJICAgSTkxNV9SRUFEKEhEQ1AyX0NUTChk
ZXZfcHJpdiwgcGlwZSwgcG9ydCkpIHwKIAkJCSAgIENUTF9MSU5LX0VOQ1JZUFRJT05fUkVRKTsK
IAl9CiAKLQlyZXQgPSBpbnRlbF93YWl0X2Zvcl9yZWdpc3RlcigmZGV2X3ByaXYtPnVuY29yZSwg
SERDUDJfU1RBVFVTX0RESShwb3J0KSwKKwlyZXQgPSBpbnRlbF93YWl0X2Zvcl9yZWdpc3Rlcigm
ZGV2X3ByaXYtPnVuY29yZSwKKwkJCQkgICAgICBIRENQMl9TVEFUVVMoZGV2X3ByaXYsIHBpcGUs
IHBvcnQpLAogCQkJCSAgICAgIExJTktfRU5DUllQVElPTl9TVEFUVVMsCiAJCQkJICAgICAgTElO
S19FTkNSWVBUSU9OX1NUQVRVUywKIAkJCQkgICAgICBFTkNSWVBUX1NUQVRVU19DSEFOR0VfVElN
RU9VVF9NUyk7CkBAIC0xNTI1LDE0ICsxNTUzLDE3IEBAIHN0YXRpYyBpbnQgaGRjcDJfZGlzYWJs
ZV9lbmNyeXB0aW9uKHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvcikKIAlzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNvbm5lY3Rvci0+YmFzZS5kZXYp
OwogCXN0cnVjdCBpbnRlbF9oZGNwICpoZGNwID0gJmNvbm5lY3Rvci0+aGRjcDsKIAllbnVtIHBv
cnQgcG9ydCA9IGNvbm5lY3Rvci0+ZW5jb2Rlci0+cG9ydDsKKwllbnVtIHBpcGUgcGlwZSA9IGhk
Y3AtPnBpcGU7CiAJaW50IHJldDsKIAotCVdBUk5fT04oIShJOTE1X1JFQUQoSERDUDJfU1RBVFVT
X0RESShwb3J0KSkgJiBMSU5LX0VOQ1JZUFRJT05fU1RBVFVTKSk7CisJV0FSTl9PTighKEk5MTVf
UkVBRChIRENQMl9TVEFUVVMoZGV2X3ByaXYsIHBpcGUsIHBvcnQpKSAmCisJCUxJTktfRU5DUllQ
VElPTl9TVEFUVVMpKTsKKwlJOTE1X1dSSVRFKEhEQ1AyX0NUTChkZXZfcHJpdiwgcGlwZSwgcG9y
dCksCisJCSAgIEk5MTVfUkVBRChIRENQMl9DVEwoZGV2X3ByaXYsIHBpcGUsIHBvcnQpKSAmCisJ
CSAgIH5DVExfTElOS19FTkNSWVBUSU9OX1JFUSk7CiAKLQlJOTE1X1dSSVRFKEhEQ1AyX0NUTF9E
REkocG9ydCksCi0JCSAgIEk5MTVfUkVBRChIRENQMl9DVExfRERJKHBvcnQpKSAmIH5DVExfTElO
S19FTkNSWVBUSU9OX1JFUSk7Ci0KLQlyZXQgPSBpbnRlbF93YWl0X2Zvcl9yZWdpc3RlcigmZGV2
X3ByaXYtPnVuY29yZSwgSERDUDJfU1RBVFVTX0RESShwb3J0KSwKKwlyZXQgPSBpbnRlbF93YWl0
X2Zvcl9yZWdpc3RlcigmZGV2X3ByaXYtPnVuY29yZSwKKwkJCQkgICAgICBIRENQMl9TVEFUVVMo
ZGV2X3ByaXYsIHBpcGUsIHBvcnQpLAogCQkJCSAgICAgIExJTktfRU5DUllQVElPTl9TVEFUVVMs
IDB4MCwKIAkJCQkgICAgICBFTkNSWVBUX1NUQVRVU19DSEFOR0VfVElNRU9VVF9NUyk7CiAJaWYg
KHJldCA9PSAtRVRJTUVET1VUKQpAQCAtMTYzMSw5ICsxNjYyLDExIEBAIHN0YXRpYyBpbnQgaW50
ZWxfaGRjcDJfY2hlY2tfbGluayhzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IpCiAJ
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjb25uZWN0b3ItPmJh
c2UuZGV2KTsKIAlzdHJ1Y3QgaW50ZWxfaGRjcCAqaGRjcCA9ICZjb25uZWN0b3ItPmhkY3A7CiAJ
ZW51bSBwb3J0IHBvcnQgPSBjb25uZWN0b3ItPmVuY29kZXItPnBvcnQ7CisJZW51bSBwaXBlIHBp
cGU7CiAJaW50IHJldCA9IDA7CiAKIAltdXRleF9sb2NrKCZoZGNwLT5tdXRleCk7CisJcGlwZSA9
IGhkY3AtPnBpcGU7CiAKIAkvKiBoZGNwMl9jaGVja19saW5rIGlzIGV4cGVjdGVkIG9ubHkgd2hl
biBIRENQMi4yIGlzIEVuYWJsZWQgKi8KIAlpZiAoaGRjcC0+dmFsdWUgIT0gRFJNX01PREVfQ09O
VEVOVF9QUk9URUNUSU9OX0VOQUJMRUQgfHwKQEAgLTE2NDIsOSArMTY3NSw5IEBAIHN0YXRpYyBp
bnQgaW50ZWxfaGRjcDJfY2hlY2tfbGluayhzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0
b3IpCiAJCWdvdG8gb3V0OwogCX0KIAotCWlmIChXQVJOX09OKCFpbnRlbF9oZGNwMl9pbl91c2Uo
Y29ubmVjdG9yKSkpIHsKKwlpZiAoV0FSTl9PTighaW50ZWxfaGRjcDJfaW5fdXNlKGRldl9wcml2
LCBwaXBlLCBwb3J0KSkpIHsKIAkJRFJNX0VSUk9SKCJIRENQMi4yIGxpbmsgc3RvcHBlZCB0aGUg
ZW5jcnlwdGlvbiwgJXhcbiIsCi0JCQkgIEk5MTVfUkVBRChIRENQMl9TVEFUVVNfRERJKHBvcnQp
KSk7CisJCQkgIEk5MTVfUkVBRChIRENQMl9TVEFUVVMoZGV2X3ByaXYsIHBpcGUsIHBvcnQpKSk7
CiAJCXJldCA9IC1FTlhJTzsKIAkJaGRjcC0+dmFsdWUgPSBEUk1fTU9ERV9DT05URU5UX1BST1RF
Q1RJT05fREVTSVJFRDsKIAkJc2NoZWR1bGVfd29yaygmaGRjcC0+cHJvcF93b3JrKTsKQEAgLTE4
NTcsNiArMTg5MCw4IEBAIGludCBpbnRlbF9oZGNwX2VuYWJsZShzdHJ1Y3QgaW50ZWxfY29ubmVj
dG9yICpjb25uZWN0b3IpCiAJbXV0ZXhfbG9jaygmaGRjcC0+bXV0ZXgpOwogCVdBUk5fT04oaGRj
cC0+dmFsdWUgPT0gRFJNX01PREVfQ09OVEVOVF9QUk9URUNUSU9OX0VOQUJMRUQpOwogCisJaGRj
cC0+cGlwZSA9IGludGVsX2Nvbm5lY3Rvcl9nZXRfcGlwZShjb25uZWN0b3IpOworCiAJLyoKIAkg
KiBDb25zaWRlcmluZyB0aGF0IEhEQ1AyLjIgaXMgbW9yZSBzZWN1cmUgdGhhbiBIRENQMS40LCBJ
ZiB0aGUgc2V0dXAKIAkgKiBpcyBjYXBhYmxlIG9mIEhEQ1AyLjIsIGl0IGlzIHByZWZlcnJlZCB0
byB1c2UgSERDUDIuMi4KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfaGRtaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMK
aW5kZXggMGViZWM2OWJiYmZjLi4yMDk2YWVlMTc0YjIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfaGRtaS5jCkBAIC0xNDkxLDcgKzE0OTEsMTAgQEAgYm9vbCBpbnRlbF9o
ZG1pX2hkY3BfY2hlY2tfbGluayhzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICppbnRlbF9kaWdf
cG9ydCkKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPQogCQlpbnRlbF9k
aWdfcG9ydC0+YmFzZS5iYXNlLmRldi0+ZGV2X3ByaXZhdGU7CisJc3RydWN0IGludGVsX2Nvbm5l
Y3RvciAqY29ubmVjdG9yID0KKwkJCQlpbnRlbF9kaWdfcG9ydC0+aGRtaS5hdHRhY2hlZF9jb25u
ZWN0b3I7CiAJZW51bSBwb3J0IHBvcnQgPSBpbnRlbF9kaWdfcG9ydC0+YmFzZS5wb3J0OworCWVu
dW0gcGlwZSBwaXBlID0gY29ubmVjdG9yLT5oZGNwLnBpcGU7CiAJaW50IHJldDsKIAl1bmlvbiB7
CiAJCXUzMiByZWc7CkBAIC0xNTAyLDEzICsxNTA1LDEzIEBAIGJvb2wgaW50ZWxfaGRtaV9oZGNw
X2NoZWNrX2xpbmsoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqaW50ZWxfZGlnX3BvcnQpCiAJ
aWYgKHJldCkKIAkJcmV0dXJuIGZhbHNlOwogCi0JSTkxNV9XUklURShQT1JUX0hEQ1BfUlBSSU1F
KHBvcnQpLCByaS5yZWcpOworCUk5MTVfV1JJVEUoSERDUF9SUFJJTUUoZGV2X3ByaXYsIHBpcGUs
IHBvcnQpLCByaS5yZWcpOwogCiAJLyogV2FpdCBmb3IgUmkgcHJpbWUgbWF0Y2ggKi8KLQlpZiAo
d2FpdF9mb3IoSTkxNV9SRUFEKFBPUlRfSERDUF9TVEFUVVMocG9ydCkpICYKKwlpZiAod2FpdF9m
b3IoSTkxNV9SRUFEKEhEQ1BfU1RBVFVTKGRldl9wcml2LCBwaXBlLCBwb3J0KSkgJgogCQkgICAg
IChIRENQX1NUQVRVU19SSV9NQVRDSCB8IEhEQ1BfU1RBVFVTX0VOQyksIDEpKSB7CiAJCURSTV9F
UlJPUigiUmknIG1pc21hdGNoIGRldGVjdGVkLCBsaW5rIGNoZWNrIGZhaWxlZCAoJXgpXG4iLAot
CQkJICBJOTE1X1JFQUQoUE9SVF9IRENQX1NUQVRVUyhwb3J0KSkpOworCQkJICBJOTE1X1JFQUQo
SERDUF9TVEFUVVMoZGV2X3ByaXYsIHBpcGUsIHBvcnQpKSk7CiAJCXJldHVybiBmYWxzZTsKIAl9
CiAJcmV0dXJuIHRydWU7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Jl
Zy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRleCA1ODk4ZjU5ZTNkZDcu
LjVkZGViNTFjNWQ3OSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcu
aAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCkBAIC05MjQ0LDEyICs5MjQ0
LDIwIEBAIGVudW0gc2tsX3Bvd2VyX2dhdGUgewogCiAvKiBIRENQIFJlcGVhdGVyIFJlZ2lzdGVy
cyAqLwogI2RlZmluZSBIRENQX1JFUF9DVEwJCQlfTU1JTygweDY2ZDAwKQorI2RlZmluZSAgSERD
UF9UUkFOU0FfUkVQX1BSRVNFTlQJQklUKDMxKQorI2RlZmluZSAgSERDUF9UUkFOU0JfUkVQX1BS
RVNFTlQJQklUKDMwKQorI2RlZmluZSAgSERDUF9UUkFOU0NfUkVQX1BSRVNFTlQJQklUKDI5KQor
I2RlZmluZSAgSERDUF9UUkFOU0RfUkVQX1BSRVNFTlQJQklUKDI4KQogI2RlZmluZSAgSERDUF9E
RElCX1JFUF9QUkVTRU5UCQlCSVQoMzApCiAjZGVmaW5lICBIRENQX0RESUFfUkVQX1BSRVNFTlQJ
CUJJVCgyOSkKICNkZWZpbmUgIEhEQ1BfRERJQ19SRVBfUFJFU0VOVAkJQklUKDI4KQogI2RlZmlu
ZSAgSERDUF9ERElEX1JFUF9QUkVTRU5UCQlCSVQoMjcpCiAjZGVmaW5lICBIRENQX0RESUZfUkVQ
X1BSRVNFTlQJCUJJVCgyNikKICNkZWZpbmUgIEhEQ1BfRERJRV9SRVBfUFJFU0VOVAkJQklUKDI1
KQorI2RlZmluZSAgSERDUF9UUkFOU0FfU0hBMV9NMAkJKDEgPDwgMjApCisjZGVmaW5lICBIRENQ
X1RSQU5TQl9TSEExX00wCQkoMiA8PCAyMCkKKyNkZWZpbmUgIEhEQ1BfVFJBTlNDX1NIQTFfTTAJ
CSgzIDw8IDIwKQorI2RlZmluZSAgSERDUF9UUkFOU0RfU0hBMV9NMAkJKDQgPDwgMjApCiAjZGVm
aW5lICBIRENQX0RESUJfU0hBMV9NMAkJKDEgPDwgMjApCiAjZGVmaW5lICBIRENQX0RESUFfU0hB
MV9NMAkJKDIgPDwgMjApCiAjZGVmaW5lICBIRENQX0RESUNfU0hBMV9NMAkJKDMgPDwgMjApCkBA
IC05Mjg5LDE1ICs5Mjk3LDg5IEBAIGVudW0gc2tsX3Bvd2VyX2dhdGUgewogCQkJCQkgIF9QT1JU
RV9IRENQX0FVVEhFTkMsIFwKIAkJCQkJICBfUE9SVEZfSERDUF9BVVRIRU5DKSArICh4KSkKICNk
ZWZpbmUgUE9SVF9IRENQX0NPTkYocG9ydCkJCV9QT1JUX0hEQ1BfQVVUSEVOQyhwb3J0LCAweDAp
CisjZGVmaW5lIF9UUkFOU0FfSERDUF9DT05GCQkweDY2NDAwCisjZGVmaW5lIF9UUkFOU0JfSERD
UF9DT05GCQkweDY2NTAwCisjZGVmaW5lIFRSQU5TX0hEQ1BfQ09ORih0cmFucykJCV9NTUlPX1RS
QU5TKHRyYW5zLCBfVFJBTlNBX0hEQ1BfQ09ORiwgXAorCQkJCQkJICAgIF9UUkFOU0JfSERDUF9D
T05GKQorI2RlZmluZSBIRENQX0NPTkYoZGV2X3ByaXYsIHBpcGUsIHBvcnQpCShJTlRFTF9HRU4o
ZGV2X3ByaXYpID49IDEyID8gXAorCQkJCQlUUkFOU19IRENQX0NPTkYocGlwZSkgOiBcCisJCQkJ
CVBPUlRfSERDUF9DT05GKHBvcnQpKQorCiAjZGVmaW5lICBIRENQX0NPTkZfQ0FQVFVSRV9BTgkJ
QklUKDApCiAjZGVmaW5lICBIRENQX0NPTkZfQVVUSF9BTkRfRU5DCQkoQklUKDEpIHwgQklUKDAp
KQogI2RlZmluZSBQT1JUX0hEQ1BfQU5JTklUKHBvcnQpCQlfUE9SVF9IRENQX0FVVEhFTkMocG9y
dCwgMHg0KQorI2RlZmluZSBfVFJBTlNBX0hEQ1BfQU5JTklUCQkweDY2NDA0CisjZGVmaW5lIF9U
UkFOU0JfSERDUF9BTklOSVQJCTB4NjY1MDQKKyNkZWZpbmUgVFJBTlNfSERDUF9BTklOSVQodHJh
bnMpCV9NTUlPX1RSQU5TKHRyYW5zLCBcCisJCQkJCQkgICAgX1RSQU5TQV9IRENQX0FOSU5JVCwg
XAorCQkJCQkJICAgIF9UUkFOU0JfSERDUF9BTklOSVQpCisjZGVmaW5lIEhEQ1BfQU5JTklUKGRl
dl9wcml2LCBwaXBlLCBwb3J0KSBcCisJCQkJCShJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyID8g
XAorCQkJCQlUUkFOU19IRENQX0FOSU5JVChwaXBlKSA6IFwKKwkJCQkJUE9SVF9IRENQX0FOSU5J
VChwb3J0KSkKKwogI2RlZmluZSBQT1JUX0hEQ1BfQU5MTyhwb3J0KQkJX1BPUlRfSERDUF9BVVRI
RU5DKHBvcnQsIDB4OCkKKyNkZWZpbmUgX1RSQU5TQV9IRENQX0FOTE8JCTB4NjY0MDgKKyNkZWZp
bmUgX1RSQU5TQl9IRENQX0FOTE8JCTB4NjY1MDgKKyNkZWZpbmUgVFJBTlNfSERDUF9BTkxPKHRy
YW5zKQkJX01NSU9fVFJBTlModHJhbnMsIF9UUkFOU0FfSERDUF9BTkxPLCBcCisJCQkJCQkgICAg
X1RSQU5TQl9IRENQX0FOTE8pCisjZGVmaW5lIEhEQ1BfQU5MTyhkZXZfcHJpdiwgcGlwZSwgcG9y
dCkJKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIgPyBcCisJCQkJCVRSQU5TX0hEQ1BfQU5MTyhw
aXBlKSA6IFwKKwkJCQkJUE9SVF9IRENQX0FOTE8ocG9ydCkpCisKICNkZWZpbmUgUE9SVF9IRENQ
X0FOSEkocG9ydCkJCV9QT1JUX0hEQ1BfQVVUSEVOQyhwb3J0LCAweEMpCisjZGVmaW5lIF9UUkFO
U0FfSERDUF9BTkhJCQkweDY2NDBDCisjZGVmaW5lIF9UUkFOU0JfSERDUF9BTkhJCQkweDY2NTBD
CisjZGVmaW5lIFRSQU5TX0hEQ1BfQU5ISSh0cmFucykJCV9NTUlPX1RSQU5TKHRyYW5zLCBfVFJB
TlNBX0hEQ1BfQU5ISSwgXAorCQkJCQkJICAgIF9UUkFOU0JfSERDUF9BTkhJKQorI2RlZmluZSBI
RENQX0FOSEkoZGV2X3ByaXYsIHBpcGUsIHBvcnQpCShJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEy
ID8gXAorCQkJCQlUUkFOU19IRENQX0FOSEkocGlwZSkgOiBcCisJCQkJCVBPUlRfSERDUF9BTkhJ
KHBvcnQpKQorCiAjZGVmaW5lIFBPUlRfSERDUF9CS1NWTE8ocG9ydCkJCV9QT1JUX0hEQ1BfQVVU
SEVOQyhwb3J0LCAweDEwKQorI2RlZmluZSBfVFJBTlNBX0hEQ1BfQktTVkxPCQkweDY2NDEwCisj
ZGVmaW5lIF9UUkFOU0JfSERDUF9CS1NWTE8JCTB4NjY1MTAKKyNkZWZpbmUgVFJBTlNfSERDUF9C
S1NWTE8odHJhbnMpCV9NTUlPX1RSQU5TKHRyYW5zLCBcCisJCQkJCQkgICAgX1RSQU5TQV9IRENQ
X0JLU1ZMTywgXAorCQkJCQkJICAgIF9UUkFOU0JfSERDUF9CS1NWTE8pCisjZGVmaW5lIEhEQ1Bf
QktTVkxPKGRldl9wcml2LCBwaXBlLCBwb3J0KSBcCisJCQkJCShJTlRFTF9HRU4oZGV2X3ByaXYp
ID49IDEyID8gXAorCQkJCQlUUkFOU19IRENQX0JLU1ZMTyhwaXBlKSA6IFwKKwkJCQkJUE9SVF9I
RENQX0JLU1ZMTyhwb3J0KSkKKwogI2RlZmluZSBQT1JUX0hEQ1BfQktTVkhJKHBvcnQpCQlfUE9S
VF9IRENQX0FVVEhFTkMocG9ydCwgMHgxNCkKKyNkZWZpbmUgX1RSQU5TQV9IRENQX0JLU1ZISQkJ
MHg2NjQxNAorI2RlZmluZSBfVFJBTlNCX0hEQ1BfQktTVkhJCQkweDY2NTE0CisjZGVmaW5lIFRS
QU5TX0hEQ1BfQktTVkhJKHRyYW5zKQlfTU1JT19UUkFOUyh0cmFucywgXAorCQkJCQkJICAgIF9U
UkFOU0FfSERDUF9CS1NWSEksIFwKKwkJCQkJCSAgICBfVFJBTlNCX0hEQ1BfQktTVkhJKQorI2Rl
ZmluZSBIRENQX0JLU1ZISShkZXZfcHJpdiwgcGlwZSwgcG9ydCkgXAorCQkJCQkoSU5URUxfR0VO
KGRldl9wcml2KSA+PSAxMiA/IFwKKwkJCQkJVFJBTlNfSERDUF9CS1NWSEkocGlwZSkgOiBcCisJ
CQkJCVBPUlRfSERDUF9CS1NWSEkocG9ydCkpCisKICNkZWZpbmUgUE9SVF9IRENQX1JQUklNRShw
b3J0KQkJX1BPUlRfSERDUF9BVVRIRU5DKHBvcnQsIDB4MTgpCisjZGVmaW5lIF9UUkFOU0FfSERD
UF9SUFJJTUUJCTB4NjY0MTgKKyNkZWZpbmUgX1RSQU5TQl9IRENQX1JQUklNRQkJMHg2NjUxOAor
I2RlZmluZSBUUkFOU19IRENQX1JQUklNRSh0cmFucykJX01NSU9fVFJBTlModHJhbnMsIFwKKwkJ
CQkJCSAgICBfVFJBTlNBX0hEQ1BfUlBSSU1FLCBcCisJCQkJCQkgICAgX1RSQU5TQl9IRENQX1JQ
UklNRSkKKyNkZWZpbmUgSERDUF9SUFJJTUUoZGV2X3ByaXYsIHBpcGUsIHBvcnQpIFwKKwkJCQkJ
KElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIgPyBcCisJCQkJCVRSQU5TX0hEQ1BfUlBSSU1FKHBp
cGUpIDogXAorCQkJCQlQT1JUX0hEQ1BfUlBSSU1FKHBvcnQpKQorCiAjZGVmaW5lIFBPUlRfSERD
UF9TVEFUVVMocG9ydCkJCV9QT1JUX0hEQ1BfQVVUSEVOQyhwb3J0LCAweDFDKQorI2RlZmluZSBf
VFJBTlNBX0hEQ1BfU1RBVFVTCQkweDY2NDFDCisjZGVmaW5lIF9UUkFOU0JfSERDUF9TVEFUVVMJ
CTB4NjY1MUMKKyNkZWZpbmUgVFJBTlNfSERDUF9TVEFUVVModHJhbnMpCV9NTUlPX1RSQU5TKHRy
YW5zLCBcCisJCQkJCQkgICAgX1RSQU5TQV9IRENQX1NUQVRVUywgXAorCQkJCQkJICAgIF9UUkFO
U0JfSERDUF9TVEFUVVMpCisjZGVmaW5lIEhEQ1BfU1RBVFVTKGRldl9wcml2LCBwaXBlLCBwb3J0
KSBcCisJCQkJCShJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyID8gXAorCQkJCQlUUkFOU19IRENQ
X1NUQVRVUyhwaXBlKSA6IFwKKwkJCQkJUE9SVF9IRENQX1NUQVRVUyhwb3J0KSkKKwogI2RlZmlu
ZSAgSERDUF9TVEFUVVNfU1RSRUFNX0FfRU5DCUJJVCgzMSkKICNkZWZpbmUgIEhEQ1BfU1RBVFVT
X1NUUkVBTV9CX0VOQwlCSVQoMzApCiAjZGVmaW5lICBIRENQX1NUQVRVU19TVFJFQU1fQ19FTkMJ
QklUKDI5KQpAQCAtOTMyNCwyMyArOTQwNiw0MyBAQCBlbnVtIHNrbF9wb3dlcl9nYXRlIHsKIAkJ
CQkJICBfUE9SVERfSERDUDJfQkFTRSwgXAogCQkJCQkgIF9QT1JURV9IRENQMl9CQVNFLCBcCiAJ
CQkJCSAgX1BPUlRGX0hEQ1AyX0JBU0UpICsgKHgpKQotCi0jZGVmaW5lIEhEQ1AyX0FVVEhfRERJ
KHBvcnQpCQlfUE9SVF9IRENQMl9CQVNFKHBvcnQsIDB4OTgpCisjZGVmaW5lIFBPUlRfSERDUDJf
QVVUSChwb3J0KQkJX1BPUlRfSERDUDJfQkFTRShwb3J0LCAweDk4KQorI2RlZmluZSBfVFJBTlNB
X0hEQ1AyX0FVVEgJCTB4NjY0OTgKKyNkZWZpbmUgX1RSQU5TQl9IRENQMl9BVVRICQkweDY2NTk4
CisjZGVmaW5lIFRSQU5TX0hEQ1AyX0FVVEgodHJhbnMpCQlfTU1JT19UUkFOUyh0cmFucywgX1RS
QU5TQV9IRENQMl9BVVRILCBcCisJCQkJCQkgICAgX1RSQU5TQl9IRENQMl9BVVRIKQogI2RlZmlu
ZSAgIEFVVEhfTElOS19BVVRIRU5USUNBVEVECUJJVCgzMSkKICNkZWZpbmUgICBBVVRIX0xJTktf
VFlQRQkJQklUKDMwKQogI2RlZmluZSAgIEFVVEhfRk9SQ0VfQ0xSX0lOUFVUQ1RSCUJJVCgxOSkK
ICNkZWZpbmUgICBBVVRIX0NMUl9LRVlTCQkJQklUKDE4KQotCi0jZGVmaW5lIEhEQ1AyX0NUTF9E
REkocG9ydCkJCV9QT1JUX0hEQ1AyX0JBU0UocG9ydCwgMHhCMCkKKyNkZWZpbmUgSERDUDJfQVVU
SChkZXZfcHJpdiwgcGlwZSwgcG9ydCkgXAorCQkJCQkoSU5URUxfR0VOKGRldl9wcml2KSA+PSAx
MiA/IFwKKwkJCQkJIFRSQU5TX0hEQ1AyX0FVVEgocGlwZSkgOiBcCisJCQkJCSBQT1JUX0hEQ1Ay
X0FVVEgocG9ydCkpCisKKyNkZWZpbmUgUE9SVF9IRENQMl9DVEwocG9ydCkJCV9QT1JUX0hEQ1Ay
X0JBU0UocG9ydCwgMHhCMCkKKyNkZWZpbmUgX1RSQU5TQV9IRENQMl9DVEwJCTB4NjY0QjAKKyNk
ZWZpbmUgX1RSQU5TQl9IRENQMl9DVEwJCTB4NjY1QjAKKyNkZWZpbmUgVFJBTlNfSERDUDJfQ1RM
KHRyYW5zKQkJX01NSU9fVFJBTlModHJhbnMsIF9UUkFOU0FfSERDUDJfQ1RMLCBcCisJCQkJCQkg
ICAgX1RSQU5TQl9IRENQMl9DVEwpCiAjZGVmaW5lICAgQ1RMX0xJTktfRU5DUllQVElPTl9SRVEJ
QklUKDMxKQotCi0jZGVmaW5lIEhEQ1AyX1NUQVRVU19EREkocG9ydCkJCV9QT1JUX0hEQ1AyX0JB
U0UocG9ydCwgMHhCNCkKLSNkZWZpbmUgICBTVFJFQU1fRU5DUllQVElPTl9TVEFUVVNfQQlCSVQo
MzEpCi0jZGVmaW5lICAgU1RSRUFNX0VOQ1JZUFRJT05fU1RBVFVTX0IJQklUKDMwKQotI2RlZmlu
ZSAgIFNUUkVBTV9FTkNSWVBUSU9OX1NUQVRVU19DCUJJVCgyOSkKKyNkZWZpbmUgSERDUDJfQ1RM
KGRldl9wcml2LCBwaXBlLCBwb3J0KQkoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMiA/IFwKKwkJ
CQkJVFJBTlNfSERDUDJfQ1RMKHBpcGUpIDogXAorCQkJCQlQT1JUX0hEQ1AyX0NUTChwb3J0KSkK
KworI2RlZmluZSBQT1JUX0hEQ1AyX1NUQVRVUyhwb3J0KQkJX1BPUlRfSERDUDJfQkFTRShwb3J0
LCAweEI0KQorI2RlZmluZSBfVFJBTlNBX0hEQ1AyX1NUQVRVUwkJMHg2NjRCNAorI2RlZmluZSBf
VFJBTlNCX0hEQ1AyX1NUQVRVUwkJMHg2NjVCNAorI2RlZmluZSBUUkFOU19IRENQMl9TVEFUVVMo
dHJhbnMpCV9NTUlPX1RSQU5TKHRyYW5zLCBcCisJCQkJCQkgICAgX1RSQU5TQV9IRENQMl9TVEFU
VVMsIFwKKwkJCQkJCSAgICBfVFJBTlNCX0hEQ1AyX1NUQVRVUykKICNkZWZpbmUgICBMSU5LX1RZ
UEVfU1RBVFVTCQlCSVQoMjIpCiAjZGVmaW5lICAgTElOS19BVVRIX1NUQVRVUwkJQklUKDIxKQog
I2RlZmluZSAgIExJTktfRU5DUllQVElPTl9TVEFUVVMJQklUKDIwKQorI2RlZmluZSBIRENQMl9T
VEFUVVMoZGV2X3ByaXYsIHBpcGUsIHBvcnQpIFwKKwkJCQkJKElOVEVMX0dFTihkZXZfcHJpdikg
Pj0gMTIgPyBcCisJCQkJCSBUUkFOU19IRENQMl9TVEFUVVMocGlwZSkgOiBcCisJCQkJCSBQT1JU
X0hEQ1AyX1NUQVRVUyhwb3J0KSkKIAogLyogUGVyLXBpcGUgRERJIEZ1bmN0aW9uIENvbnRyb2wg
Ki8KICNkZWZpbmUgX1RSQU5TX0RESV9GVU5DX0NUTF9BCQkweDYwNDAwCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2Rydi5oCmluZGV4IDI0YzYzZWQ0NWM2Zi4uNzQxZmEyMWMzZTU3IDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcnYuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9kcnYuaApAQCAtMzY1LDYgKzM2NSwxNCBAQCBzdHJ1Y3QgaW50ZWxfaGRjcCB7CiAJ
d2FpdF9xdWV1ZV9oZWFkX3QgY3BfaXJxX3F1ZXVlOwogCWF0b21pY190IGNwX2lycV9jb3VudDsK
IAlpbnQgY3BfaXJxX2NvdW50X2NhY2hlZDsKKworCS8qCisJICogR2VuIDEyIG9ud2FyZHMsIEhE
Q1AgaXMgcGFydCBvZiB0cmFuc2NvZGVyKHByZXZpb3VzbHkgRERJKS4KKwkgKiBTbyBjaGFjaGVp
bmcgdGhlIHBpcGUgYXNzb2NpYXRlZCB0byBjb25uZWN0b3IgYXQgaGRjcF9lbmFibGUKKwkgKiB3
b3VsZCBoZWxwIGluIHN1YnNlcXVlbnQgZnVuY3Rpb25zIHRvIGRlcml2ZSB0aGUgcmlnaHQgb2Zm
c2V0cworCSAqIGZvciBIRENQIHJlZ2lzdGVycy4KKwkgKi8KKwllbnVtIHBpcGUgcGlwZTsKIH07
CiAKIHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgewotLSAKMi4xOS4xCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
