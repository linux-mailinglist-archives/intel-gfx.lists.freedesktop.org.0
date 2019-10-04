Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 09A38CB92A
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2019 13:35:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D31826EB30;
	Fri,  4 Oct 2019 11:35:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97AD66EB30
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Oct 2019 11:35:20 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Oct 2019 13:34:51 +0200
Message-Id: <20191004113514.17064-2-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191004113514.17064-1-maarten.lankhorst@linux.intel.com>
References: <20191004113514.17064-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 01/24] HAX to make DSC work on the icelake test
 system
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

RFNDIGlzIGF2YWlsYWJsZSBvbiB0aGUgZGlzcGxheSBlbXVsYXRvciwgYnV0IG5vdCBzZXQgaW4g
RFBDRC4KT3ZlcnJpZGUgdGhlIGVudHJpZXMgdG8gYWxsb3cgYmlnam9pbmVyIHRlc3RpbmcuCgpT
aWduZWQtb2ZmLWJ5OiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXgu
aW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9kcm1fZHBfaGVscGVyLmMgfCA0ICsrLS0K
IGluY2x1ZGUvZHJtL2RybV9kcF9oZWxwZXIuaCAgICAgfCAxICsKIDIgZmlsZXMgY2hhbmdlZCwg
MyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9kcm1fZHBfaGVscGVyLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2RwX2hlbHBlci5jCmlu
ZGV4IGYzNzM3OThkODJmNi4uYTk5MDA3M2M3YWRmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vZHJtX2RwX2hlbHBlci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZHBfaGVscGVyLmMK
QEAgLTEzNzQsNyArMTM3NCw3IEBAIHU4IGRybV9kcF9kc2Nfc2lua19tYXhfc2xpY2VfY291bnQo
Y29uc3QgdTggZHNjX2RwY2RbRFBfRFNDX1JFQ0VJVkVSX0NBUF9TSVpFXSwKIAkJaWYgKHNsaWNl
X2NhcDEgJiBEUF9EU0NfNF9QRVJfRFBfRFNDX1NJTkspCiAJCQlyZXR1cm4gNDsKIAkJaWYgKHNs
aWNlX2NhcDEgJiBEUF9EU0NfMl9QRVJfRFBfRFNDX1NJTkspCi0JCQlyZXR1cm4gMjsKKwkJCXJl
dHVybiA0OwogCQlpZiAoc2xpY2VfY2FwMSAmIERQX0RTQ18xX1BFUl9EUF9EU0NfU0lOSykKIAkJ
CXJldHVybiAxOwogCX0gZWxzZSB7CkBAIC0xMzk4LDcgKzEzOTgsNyBAQCB1OCBkcm1fZHBfZHNj
X3NpbmtfbWF4X3NsaWNlX2NvdW50KGNvbnN0IHU4IGRzY19kcGNkW0RQX0RTQ19SRUNFSVZFUl9D
QVBfU0laRV0sCiAJCWlmIChzbGljZV9jYXAxICYgRFBfRFNDXzRfUEVSX0RQX0RTQ19TSU5LKQog
CQkJcmV0dXJuIDQ7CiAJCWlmIChzbGljZV9jYXAxICYgRFBfRFNDXzJfUEVSX0RQX0RTQ19TSU5L
KQotCQkJcmV0dXJuIDI7CisJCQlyZXR1cm4gNDsKIAkJaWYgKHNsaWNlX2NhcDEgJiBEUF9EU0Nf
MV9QRVJfRFBfRFNDX1NJTkspCiAJCQlyZXR1cm4gMTsKIAl9CmRpZmYgLS1naXQgYS9pbmNsdWRl
L2RybS9kcm1fZHBfaGVscGVyLmggYi9pbmNsdWRlL2RybS9kcm1fZHBfaGVscGVyLmgKaW5kZXgg
ZWQxYTk4NTc0NWJhLi4wNjViNjUzNTBmY2UgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvZHJtL2RybV9k
cF9oZWxwZXIuaAorKysgYi9pbmNsdWRlL2RybS9kcm1fZHBfaGVscGVyLmgKQEAgLTEyMjIsNiAr
MTIyMiw3IEBAIGludCBkcm1fZHBfZHNjX3Npbmtfc3VwcG9ydGVkX2lucHV0X2JwY3MoY29uc3Qg
dTggZHNjX2RwY1tEUF9EU0NfUkVDRUlWRVJfQ0FQX1NJCiBzdGF0aWMgaW5saW5lIGJvb2wKIGRy
bV9kcF9zaW5rX3N1cHBvcnRzX2RzYyhjb25zdCB1OCBkc2NfZHBjZFtEUF9EU0NfUkVDRUlWRVJf
Q0FQX1NJWkVdKQogeworCXJldHVybiBkc2NfZHBjZFtEUF9EU0NfUkVWIC0gRFBfRFNDX1NVUFBP
UlRdOwogCXJldHVybiBkc2NfZHBjZFtEUF9EU0NfU1VQUE9SVCAtIERQX0RTQ19TVVBQT1JUXSAm
CiAJCURQX0RTQ19ERUNPTVBSRVNTSU9OX0lTX1NVUFBPUlRFRDsKIH0KLS0gCjIuMjMuMAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
