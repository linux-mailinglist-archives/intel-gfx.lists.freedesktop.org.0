Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FAFC304F5E
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 04:06:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C377C6E4FF;
	Wed, 27 Jan 2021 03:06:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [207.211.30.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD7E56E4F8
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 03:06:14 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-527-rh29ZrrDMC2dLEHKLndNuQ-1; Tue, 26 Jan 2021 22:06:09 -0500
X-MC-Unique: rh29ZrrDMC2dLEHKLndNuQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A2D241005513;
 Wed, 27 Jan 2021 03:06:08 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.32.209])
 by smtp.corp.redhat.com (Postfix) with ESMTP id ACD7060C05;
 Wed, 27 Jan 2021 03:06:07 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Jan 2021 13:05:46 +1000
Message-Id: <20210127030548.29296-9-airlied@gmail.com>
In-Reply-To: <20210127030548.29296-1-airlied@gmail.com>
References: <20210127030548.29296-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=airlied@gmail.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Subject: [Intel-gfx] [PATCH 08/10] drm/i915: migrate i9xx plane get config
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
Cc: Dave Airlie <airlied@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogRGF2ZSBBaXJsaWUgPGFpcmxpZWRAcmVkaGF0LmNvbT4KCk1pZ3JhdGUgdGhpcyBjb2Rl
IG91dCBsaWtlIHRoZSBza3lsYWtlIGNvZGUuCgpTaWduZWQtb2ZmLWJ5OiBEYXZlIEFpcmxpZSA8
YWlybGllZEByZWRoYXQuY29tPgpSZXZpZXdlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2k5eHhfcGxhbmUuYyAgICB8IDExOSArKysrKysrKysrKysrKysrKysrCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2k5eHhfcGxhbmUuaCAgICB8ICAgNCArCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDExOSAtLS0tLS0tLS0tLS0tLS0tLS0tCiAz
IGZpbGVzIGNoYW5nZWQsIDEyMyBpbnNlcnRpb25zKCspLCAxMTkgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pOXh4X3BsYW5lLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2k5eHhfcGxhbmUuYwppbmRleCA2YzU2ODA3OWY0OTIu
LmEwNjNhOTJmMDRkYyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
OXh4X3BsYW5lLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pOXh4X3BsYW5l
LmMKQEAgLTY5OCwzICs2OTgsMTIyIEBAIGludGVsX3ByaW1hcnlfcGxhbmVfY3JlYXRlKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgZW51bSBwaXBlIHBpcGUpCiAJcmV0dXJuIEVS
Ul9QVFIocmV0KTsKIH0KIAorc3RhdGljIGludCBpOXh4X2Zvcm1hdF90b19mb3VyY2MoaW50IGZv
cm1hdCkKK3sKKwlzd2l0Y2ggKGZvcm1hdCkgeworCWNhc2UgRElTUFBMQU5FXzhCUFA6CisJCXJl
dHVybiBEUk1fRk9STUFUX0M4OworCWNhc2UgRElTUFBMQU5FX0JHUkE1NTU6CisJCXJldHVybiBE
Uk1fRk9STUFUX0FSR0IxNTU1OworCWNhc2UgRElTUFBMQU5FX0JHUlg1NTU6CisJCXJldHVybiBE
Uk1fRk9STUFUX1hSR0IxNTU1OworCWNhc2UgRElTUFBMQU5FX0JHUlg1NjU6CisJCXJldHVybiBE
Uk1fRk9STUFUX1JHQjU2NTsKKwlkZWZhdWx0OgorCWNhc2UgRElTUFBMQU5FX0JHUlg4ODg6CisJ
CXJldHVybiBEUk1fRk9STUFUX1hSR0I4ODg4OworCWNhc2UgRElTUFBMQU5FX1JHQlg4ODg6CisJ
CXJldHVybiBEUk1fRk9STUFUX1hCR1I4ODg4OworCWNhc2UgRElTUFBMQU5FX0JHUkE4ODg6CisJ
CXJldHVybiBEUk1fRk9STUFUX0FSR0I4ODg4OworCWNhc2UgRElTUFBMQU5FX1JHQkE4ODg6CisJ
CXJldHVybiBEUk1fRk9STUFUX0FCR1I4ODg4OworCWNhc2UgRElTUFBMQU5FX0JHUlgxMDEwMTA6
CisJCXJldHVybiBEUk1fRk9STUFUX1hSR0IyMTAxMDEwOworCWNhc2UgRElTUFBMQU5FX1JHQlgx
MDEwMTA6CisJCXJldHVybiBEUk1fRk9STUFUX1hCR1IyMTAxMDEwOworCWNhc2UgRElTUFBMQU5F
X0JHUkExMDEwMTA6CisJCXJldHVybiBEUk1fRk9STUFUX0FSR0IyMTAxMDEwOworCWNhc2UgRElT
UFBMQU5FX1JHQkExMDEwMTA6CisJCXJldHVybiBEUk1fRk9STUFUX0FCR1IyMTAxMDEwOworCWNh
c2UgRElTUFBMQU5FX1JHQlgxNjE2MTY6CisJCXJldHVybiBEUk1fRk9STUFUX1hCR1IxNjE2MTYx
NkY7CisJfQorfQorCit2b2lkCitpOXh4X2dldF9pbml0aWFsX3BsYW5lX2NvbmZpZyhzdHJ1Y3Qg
aW50ZWxfY3J0YyAqY3J0YywKKwkJCSAgICAgIHN0cnVjdCBpbnRlbF9pbml0aWFsX3BsYW5lX2Nv
bmZpZyAqcGxhbmVfY29uZmlnKQoreworCXN0cnVjdCBkcm1fZGV2aWNlICpkZXYgPSBjcnRjLT5i
YXNlLmRldjsKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGRl
dik7CisJc3RydWN0IGludGVsX3BsYW5lICpwbGFuZSA9IHRvX2ludGVsX3BsYW5lKGNydGMtPmJh
c2UucHJpbWFyeSk7CisJZW51bSBpOXh4X3BsYW5lX2lkIGk5eHhfcGxhbmUgPSBwbGFuZS0+aTl4
eF9wbGFuZTsKKwllbnVtIHBpcGUgcGlwZTsKKwl1MzIgdmFsLCBiYXNlLCBvZmZzZXQ7CisJaW50
IGZvdXJjYywgcGl4ZWxfZm9ybWF0OworCXVuc2lnbmVkIGludCBhbGlnbmVkX2hlaWdodDsKKwlz
dHJ1Y3QgZHJtX2ZyYW1lYnVmZmVyICpmYjsKKwlzdHJ1Y3QgaW50ZWxfZnJhbWVidWZmZXIgKmlu
dGVsX2ZiOworCisJaWYgKCFwbGFuZS0+Z2V0X2h3X3N0YXRlKHBsYW5lLCAmcGlwZSkpCisJCXJl
dHVybjsKKworCWRybV9XQVJOX09OKGRldiwgcGlwZSAhPSBjcnRjLT5waXBlKTsKKworCWludGVs
X2ZiID0ga3phbGxvYyhzaXplb2YoKmludGVsX2ZiKSwgR0ZQX0tFUk5FTCk7CisJaWYgKCFpbnRl
bF9mYikgeworCQlkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwgImZhaWxlZCB0byBhbGxvYyBm
YlxuIik7CisJCXJldHVybjsKKwl9CisKKwlmYiA9ICZpbnRlbF9mYi0+YmFzZTsKKworCWZiLT5k
ZXYgPSBkZXY7CisKKwl2YWwgPSBpbnRlbF9kZV9yZWFkKGRldl9wcml2LCBEU1BDTlRSKGk5eHhf
cGxhbmUpKTsKKworCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDQpIHsKKwkJaWYgKHZhbCAm
IERJU1BQTEFORV9USUxFRCkgeworCQkJcGxhbmVfY29uZmlnLT50aWxpbmcgPSBJOTE1X1RJTElO
R19YOworCQkJZmItPm1vZGlmaWVyID0gSTkxNV9GT1JNQVRfTU9EX1hfVElMRUQ7CisJCX0KKwor
CQlpZiAodmFsICYgRElTUFBMQU5FX1JPVEFURV8xODApCisJCQlwbGFuZV9jb25maWctPnJvdGF0
aW9uID0gRFJNX01PREVfUk9UQVRFXzE4MDsKKwl9CisKKwlpZiAoSVNfQ0hFUlJZVklFVyhkZXZf
cHJpdikgJiYgcGlwZSA9PSBQSVBFX0IgJiYKKwkgICAgdmFsICYgRElTUFBMQU5FX01JUlJPUikK
KwkJcGxhbmVfY29uZmlnLT5yb3RhdGlvbiB8PSBEUk1fTU9ERV9SRUZMRUNUX1g7CisKKwlwaXhl
bF9mb3JtYXQgPSB2YWwgJiBESVNQUExBTkVfUElYRk9STUFUX01BU0s7CisJZm91cmNjID0gaTl4
eF9mb3JtYXRfdG9fZm91cmNjKHBpeGVsX2Zvcm1hdCk7CisJZmItPmZvcm1hdCA9IGRybV9mb3Jt
YXRfaW5mbyhmb3VyY2MpOworCisJaWYgKElTX0hBU1dFTEwoZGV2X3ByaXYpIHx8IElTX0JST0FE
V0VMTChkZXZfcHJpdikpIHsKKwkJb2Zmc2V0ID0gaW50ZWxfZGVfcmVhZChkZXZfcHJpdiwgRFNQ
T0ZGU0VUKGk5eHhfcGxhbmUpKTsKKwkJYmFzZSA9IGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIERT
UFNVUkYoaTl4eF9wbGFuZSkpICYgMHhmZmZmZjAwMDsKKwl9IGVsc2UgaWYgKElOVEVMX0dFTihk
ZXZfcHJpdikgPj0gNCkgeworCQlpZiAocGxhbmVfY29uZmlnLT50aWxpbmcpCisJCQlvZmZzZXQg
PSBpbnRlbF9kZV9yZWFkKGRldl9wcml2LAorCQkJCQkgICAgICAgRFNQVElMRU9GRihpOXh4X3Bs
YW5lKSk7CisJCWVsc2UKKwkJCW9mZnNldCA9IGludGVsX2RlX3JlYWQoZGV2X3ByaXYsCisJCQkJ
CSAgICAgICBEU1BMSU5PRkYoaTl4eF9wbGFuZSkpOworCQliYXNlID0gaW50ZWxfZGVfcmVhZChk
ZXZfcHJpdiwgRFNQU1VSRihpOXh4X3BsYW5lKSkgJiAweGZmZmZmMDAwOworCX0gZWxzZSB7CisJ
CWJhc2UgPSBpbnRlbF9kZV9yZWFkKGRldl9wcml2LCBEU1BBRERSKGk5eHhfcGxhbmUpKTsKKwl9
CisJcGxhbmVfY29uZmlnLT5iYXNlID0gYmFzZTsKKworCXZhbCA9IGludGVsX2RlX3JlYWQoZGV2
X3ByaXYsIFBJUEVTUkMocGlwZSkpOworCWZiLT53aWR0aCA9ICgodmFsID4+IDE2KSAmIDB4ZmZm
KSArIDE7CisJZmItPmhlaWdodCA9ICgodmFsID4+IDApICYgMHhmZmYpICsgMTsKKworCXZhbCA9
IGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIERTUFNUUklERShpOXh4X3BsYW5lKSk7CisJZmItPnBp
dGNoZXNbMF0gPSB2YWwgJiAweGZmZmZmZmMwOworCisJYWxpZ25lZF9oZWlnaHQgPSBpbnRlbF9m
Yl9hbGlnbl9oZWlnaHQoZmIsIDAsIGZiLT5oZWlnaHQpOworCisJcGxhbmVfY29uZmlnLT5zaXpl
ID0gZmItPnBpdGNoZXNbMF0gKiBhbGlnbmVkX2hlaWdodDsKKworCWRybV9kYmdfa21zKCZkZXZf
cHJpdi0+ZHJtLAorCQkgICAgIiVzLyVzIHdpdGggZmI6IHNpemU9JWR4JWRAJWQsIG9mZnNldD0l
eCwgcGl0Y2ggJWQsIHNpemUgMHgleFxuIiwKKwkJICAgIGNydGMtPmJhc2UubmFtZSwgcGxhbmUt
PmJhc2UubmFtZSwgZmItPndpZHRoLCBmYi0+aGVpZ2h0LAorCQkgICAgZmItPmZvcm1hdC0+Y3Bw
WzBdICogOCwgYmFzZSwgZmItPnBpdGNoZXNbMF0sCisJCSAgICBwbGFuZV9jb25maWctPnNpemUp
OworCisJcGxhbmVfY29uZmlnLT5mYiA9IGludGVsX2ZiOworfQorCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2k5eHhfcGxhbmUuaCBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaTl4eF9wbGFuZS5oCmluZGV4IGJjMjgzNGE2MjczNS4uMTkxYzMxMmE3ZTk3
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2k5eHhfcGxhbmUuaAor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2k5eHhfcGxhbmUuaApAQCAtMTAsNiAr
MTAsOCBAQAogCiBlbnVtIHBpcGU7CiBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZTsKK3N0cnVjdCBp
bnRlbF9jcnRjOworc3RydWN0IGludGVsX2luaXRpYWxfcGxhbmVfY29uZmlnOwogc3RydWN0IGlu
dGVsX3BsYW5lOwogc3RydWN0IGludGVsX3BsYW5lX3N0YXRlOwogCkBAIC0yMSw0ICsyMyw2IEBA
IGludCBpOXh4X2NoZWNrX3BsYW5lX3N1cmZhY2Uoc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpw
bGFuZV9zdGF0ZSk7CiBzdHJ1Y3QgaW50ZWxfcGxhbmUgKgogaW50ZWxfcHJpbWFyeV9wbGFuZV9j
cmVhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBlbnVtIHBpcGUgcGlwZSk7
CiAKK3ZvaWQgaTl4eF9nZXRfaW5pdGlhbF9wbGFuZV9jb25maWcoc3RydWN0IGludGVsX2NydGMg
KmNydGMsCisJCQkJICAgc3RydWN0IGludGVsX2luaXRpYWxfcGxhbmVfY29uZmlnICpwbGFuZV9j
b25maWcpOwogI2VuZGlmCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jCmluZGV4IDQ0YjA1NGQ1YTlhZC4uYzEwMDNiMGM1OWU4IDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtMjIwNCwzOSArMjIwNCw2IEBA
IGludGVsX3BsYW5lX2NvbXB1dGVfZ3R0KHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVf
c3RhdGUpCiAJcmV0dXJuIGludGVsX3BsYW5lX2NoZWNrX3N0cmlkZShwbGFuZV9zdGF0ZSk7CiB9
CiAKLXN0YXRpYyBpbnQgaTl4eF9mb3JtYXRfdG9fZm91cmNjKGludCBmb3JtYXQpCi17Ci0Jc3dp
dGNoIChmb3JtYXQpIHsKLQljYXNlIERJU1BQTEFORV84QlBQOgotCQlyZXR1cm4gRFJNX0ZPUk1B
VF9DODsKLQljYXNlIERJU1BQTEFORV9CR1JBNTU1OgotCQlyZXR1cm4gRFJNX0ZPUk1BVF9BUkdC
MTU1NTsKLQljYXNlIERJU1BQTEFORV9CR1JYNTU1OgotCQlyZXR1cm4gRFJNX0ZPUk1BVF9YUkdC
MTU1NTsKLQljYXNlIERJU1BQTEFORV9CR1JYNTY1OgotCQlyZXR1cm4gRFJNX0ZPUk1BVF9SR0I1
NjU7Ci0JZGVmYXVsdDoKLQljYXNlIERJU1BQTEFORV9CR1JYODg4OgotCQlyZXR1cm4gRFJNX0ZP
Uk1BVF9YUkdCODg4ODsKLQljYXNlIERJU1BQTEFORV9SR0JYODg4OgotCQlyZXR1cm4gRFJNX0ZP
Uk1BVF9YQkdSODg4ODsKLQljYXNlIERJU1BQTEFORV9CR1JBODg4OgotCQlyZXR1cm4gRFJNX0ZP
Uk1BVF9BUkdCODg4ODsKLQljYXNlIERJU1BQTEFORV9SR0JBODg4OgotCQlyZXR1cm4gRFJNX0ZP
Uk1BVF9BQkdSODg4ODsKLQljYXNlIERJU1BQTEFORV9CR1JYMTAxMDEwOgotCQlyZXR1cm4gRFJN
X0ZPUk1BVF9YUkdCMjEwMTAxMDsKLQljYXNlIERJU1BQTEFORV9SR0JYMTAxMDEwOgotCQlyZXR1
cm4gRFJNX0ZPUk1BVF9YQkdSMjEwMTAxMDsKLQljYXNlIERJU1BQTEFORV9CR1JBMTAxMDEwOgot
CQlyZXR1cm4gRFJNX0ZPUk1BVF9BUkdCMjEwMTAxMDsKLQljYXNlIERJU1BQTEFORV9SR0JBMTAx
MDEwOgotCQlyZXR1cm4gRFJNX0ZPUk1BVF9BQkdSMjEwMTAxMDsKLQljYXNlIERJU1BQTEFORV9S
R0JYMTYxNjE2OgotCQlyZXR1cm4gRFJNX0ZPUk1BVF9YQkdSMTYxNjE2MTZGOwotCX0KLX0KLQog
c3RhdGljIHN0cnVjdCBpOTE1X3ZtYSAqCiBpbml0aWFsX3BsYW5lX3ZtYShzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSwKIAkJICBzdHJ1Y3QgaW50ZWxfaW5pdGlhbF9wbGFuZV9jb25maWcg
KnBsYW5lX2NvbmZpZykKQEAgLTU5MDcsOTIgKzU4NzQsNiBAQCBzdGF0aWMgdm9pZCB2bHZfY3J0
Y19jbG9ja19nZXQoc3RydWN0IGludGVsX2NydGMgKmNydGMsCiAJcGlwZV9jb25maWctPnBvcnRf
Y2xvY2sgPSB2bHZfY2FsY19kcGxsX3BhcmFtcyhyZWZjbGssICZjbG9jayk7CiB9CiAKLXN0YXRp
YyB2b2lkCi1pOXh4X2dldF9pbml0aWFsX3BsYW5lX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfY3J0YyAq
Y3J0YywKLQkJCSAgICAgIHN0cnVjdCBpbnRlbF9pbml0aWFsX3BsYW5lX2NvbmZpZyAqcGxhbmVf
Y29uZmlnKQotewotCXN0cnVjdCBkcm1fZGV2aWNlICpkZXYgPSBjcnRjLT5iYXNlLmRldjsKLQlz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGRldik7Ci0Jc3RydWN0
IGludGVsX3BsYW5lICpwbGFuZSA9IHRvX2ludGVsX3BsYW5lKGNydGMtPmJhc2UucHJpbWFyeSk7
Ci0JZW51bSBpOXh4X3BsYW5lX2lkIGk5eHhfcGxhbmUgPSBwbGFuZS0+aTl4eF9wbGFuZTsKLQll
bnVtIHBpcGUgcGlwZTsKLQl1MzIgdmFsLCBiYXNlLCBvZmZzZXQ7Ci0JaW50IGZvdXJjYywgcGl4
ZWxfZm9ybWF0OwotCXVuc2lnbmVkIGludCBhbGlnbmVkX2hlaWdodDsKLQlzdHJ1Y3QgZHJtX2Zy
YW1lYnVmZmVyICpmYjsKLQlzdHJ1Y3QgaW50ZWxfZnJhbWVidWZmZXIgKmludGVsX2ZiOwotCi0J
aWYgKCFwbGFuZS0+Z2V0X2h3X3N0YXRlKHBsYW5lLCAmcGlwZSkpCi0JCXJldHVybjsKLQotCWRy
bV9XQVJOX09OKGRldiwgcGlwZSAhPSBjcnRjLT5waXBlKTsKLQotCWludGVsX2ZiID0ga3phbGxv
YyhzaXplb2YoKmludGVsX2ZiKSwgR0ZQX0tFUk5FTCk7Ci0JaWYgKCFpbnRlbF9mYikgewotCQlk
cm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwgImZhaWxlZCB0byBhbGxvYyBmYlxuIik7Ci0JCXJl
dHVybjsKLQl9Ci0KLQlmYiA9ICZpbnRlbF9mYi0+YmFzZTsKLQotCWZiLT5kZXYgPSBkZXY7Ci0K
LQl2YWwgPSBpbnRlbF9kZV9yZWFkKGRldl9wcml2LCBEU1BDTlRSKGk5eHhfcGxhbmUpKTsKLQot
CWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDQpIHsKLQkJaWYgKHZhbCAmIERJU1BQTEFORV9U
SUxFRCkgewotCQkJcGxhbmVfY29uZmlnLT50aWxpbmcgPSBJOTE1X1RJTElOR19YOwotCQkJZmIt
Pm1vZGlmaWVyID0gSTkxNV9GT1JNQVRfTU9EX1hfVElMRUQ7Ci0JCX0KLQotCQlpZiAodmFsICYg
RElTUFBMQU5FX1JPVEFURV8xODApCi0JCQlwbGFuZV9jb25maWctPnJvdGF0aW9uID0gRFJNX01P
REVfUk9UQVRFXzE4MDsKLQl9Ci0KLQlpZiAoSVNfQ0hFUlJZVklFVyhkZXZfcHJpdikgJiYgcGlw
ZSA9PSBQSVBFX0IgJiYKLQkgICAgdmFsICYgRElTUFBMQU5FX01JUlJPUikKLQkJcGxhbmVfY29u
ZmlnLT5yb3RhdGlvbiB8PSBEUk1fTU9ERV9SRUZMRUNUX1g7Ci0KLQlwaXhlbF9mb3JtYXQgPSB2
YWwgJiBESVNQUExBTkVfUElYRk9STUFUX01BU0s7Ci0JZm91cmNjID0gaTl4eF9mb3JtYXRfdG9f
Zm91cmNjKHBpeGVsX2Zvcm1hdCk7Ci0JZmItPmZvcm1hdCA9IGRybV9mb3JtYXRfaW5mbyhmb3Vy
Y2MpOwotCi0JaWYgKElTX0hBU1dFTEwoZGV2X3ByaXYpIHx8IElTX0JST0FEV0VMTChkZXZfcHJp
dikpIHsKLQkJb2Zmc2V0ID0gaW50ZWxfZGVfcmVhZChkZXZfcHJpdiwgRFNQT0ZGU0VUKGk5eHhf
cGxhbmUpKTsKLQkJYmFzZSA9IGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIERTUFNVUkYoaTl4eF9w
bGFuZSkpICYgMHhmZmZmZjAwMDsKLQl9IGVsc2UgaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0g
NCkgewotCQlpZiAocGxhbmVfY29uZmlnLT50aWxpbmcpCi0JCQlvZmZzZXQgPSBpbnRlbF9kZV9y
ZWFkKGRldl9wcml2LAotCQkJCQkgICAgICAgRFNQVElMRU9GRihpOXh4X3BsYW5lKSk7Ci0JCWVs
c2UKLQkJCW9mZnNldCA9IGludGVsX2RlX3JlYWQoZGV2X3ByaXYsCi0JCQkJCSAgICAgICBEU1BM
SU5PRkYoaTl4eF9wbGFuZSkpOwotCQliYXNlID0gaW50ZWxfZGVfcmVhZChkZXZfcHJpdiwgRFNQ
U1VSRihpOXh4X3BsYW5lKSkgJiAweGZmZmZmMDAwOwotCX0gZWxzZSB7Ci0JCWJhc2UgPSBpbnRl
bF9kZV9yZWFkKGRldl9wcml2LCBEU1BBRERSKGk5eHhfcGxhbmUpKTsKLQl9Ci0JcGxhbmVfY29u
ZmlnLT5iYXNlID0gYmFzZTsKLQotCXZhbCA9IGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIFBJUEVT
UkMocGlwZSkpOwotCWZiLT53aWR0aCA9ICgodmFsID4+IDE2KSAmIDB4ZmZmKSArIDE7Ci0JZmIt
PmhlaWdodCA9ICgodmFsID4+IDApICYgMHhmZmYpICsgMTsKLQotCXZhbCA9IGludGVsX2RlX3Jl
YWQoZGV2X3ByaXYsIERTUFNUUklERShpOXh4X3BsYW5lKSk7Ci0JZmItPnBpdGNoZXNbMF0gPSB2
YWwgJiAweGZmZmZmZmMwOwotCi0JYWxpZ25lZF9oZWlnaHQgPSBpbnRlbF9mYl9hbGlnbl9oZWln
aHQoZmIsIDAsIGZiLT5oZWlnaHQpOwotCi0JcGxhbmVfY29uZmlnLT5zaXplID0gZmItPnBpdGNo
ZXNbMF0gKiBhbGlnbmVkX2hlaWdodDsKLQotCWRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLAot
CQkgICAgIiVzLyVzIHdpdGggZmI6IHNpemU9JWR4JWRAJWQsIG9mZnNldD0leCwgcGl0Y2ggJWQs
IHNpemUgMHgleFxuIiwKLQkJICAgIGNydGMtPmJhc2UubmFtZSwgcGxhbmUtPmJhc2UubmFtZSwg
ZmItPndpZHRoLCBmYi0+aGVpZ2h0LAotCQkgICAgZmItPmZvcm1hdC0+Y3BwWzBdICogOCwgYmFz
ZSwgZmItPnBpdGNoZXNbMF0sCi0JCSAgICBwbGFuZV9jb25maWctPnNpemUpOwotCi0JcGxhbmVf
Y29uZmlnLT5mYiA9IGludGVsX2ZiOwotfQotCiBzdGF0aWMgdm9pZCBjaHZfY3J0Y19jbG9ja19n
ZXQoc3RydWN0IGludGVsX2NydGMgKmNydGMsCiAJCQkgICAgICAgc3RydWN0IGludGVsX2NydGNf
c3RhdGUgKnBpcGVfY29uZmlnKQogewotLSAKMi4yNy4wCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngK
