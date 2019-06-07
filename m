Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7944F389D4
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2019 14:08:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8244289DB0;
	Fri,  7 Jun 2019 12:08:53 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0F8989D83
 for <Intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2019 12:08:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Jun 2019 05:08:48 -0700
X-ExtLoop1: 1
Received: from ssirotki-mobl3.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.93.246])
 by fmsmga007.fm.intel.com with ESMTP; 07 Jun 2019 05:08:47 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Fri,  7 Jun 2019 13:08:32 +0100
Message-Id: <20190607120838.20514-7-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190607120838.20514-1-tvrtko.ursulin@linux.intel.com>
References: <20190607120838.20514-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 06/12] drm/i915: Remove I915_READ64 and
 I915_READ64_32x2
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCk5vdyB0aGF0
IGFsbCB0aGVpciB1c2VycyBhcmUgZ29uZSB3ZSBjYW4gcmVtb3ZlIHRoZSBtYWNyb3MgYW5kCmFj
Y29tcGFueWluZyBkdXBsaWNhdGVkIGNvbW1lbnQuCgpTaWduZWQtb2ZmLWJ5OiBUdnJ0a28gVXJz
dWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgpTdWdnZXN0ZWQtYnk6IEphbmkgTmlrdWxh
IDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
cnYuaCB8IDE4IC0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDE4IGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCmluZGV4IDhkYTE1NDE1NDZlZS4uYjI3NjM3MjFi
NzZkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKQEAgLTI4NjIsMjQgKzI4NjIsNiBAQCBleHRl
cm4gdm9pZCBpbnRlbF9kaXNwbGF5X3ByaW50X2Vycm9yX3N0YXRlKHN0cnVjdCBkcm1faTkxNV9l
cnJvcl9zdGF0ZV9idWYgKmUsCiAjZGVmaW5lIEk5MTVfUkVBRF9OT1RSQUNFKHJlZ19fKQkgX19J
OTE1X1JFR19PUChyZWFkX25vdHJhY2UsIGRldl9wcml2LCAocmVnX18pKQogI2RlZmluZSBJOTE1
X1dSSVRFX05PVFJBQ0UocmVnX18sIHZhbF9fKSBfX0k5MTVfUkVHX09QKHdyaXRlX25vdHJhY2Us
IGRldl9wcml2LCAocmVnX18pLCAodmFsX18pKQogCi0vKiBCZSB2ZXJ5IGNhcmVmdWwgd2l0aCBy
ZWFkL3dyaXRlIDY0LWJpdCB2YWx1ZXMuIE9uIDMyLWJpdCBtYWNoaW5lcywgdGhleQotICogd2ls
bCBiZSBpbXBsZW1lbnRlZCB1c2luZyAyIDMyLWJpdCB3cml0ZXMgaW4gYW4gYXJiaXRyYXJ5IG9y
ZGVyIHdpdGgKLSAqIGFuIGFyYml0cmFyeSBkZWxheSBiZXR3ZWVuIHRoZW0uIFRoaXMgY2FuIGNh
dXNlIHRoZSBoYXJkd2FyZSB0bwotICogYWN0IHVwb24gdGhlIGludGVybWVkaWF0ZSB2YWx1ZSwg
cG9zc2libHkgbGVhZGluZyB0byBjb3JydXB0aW9uIGFuZAotICogbWFjaGluZSBkZWF0aC4gRm9y
IHRoaXMgcmVhc29uIHdlIGRvIG5vdCBzdXBwb3J0IEk5MTVfV1JJVEU2NCwgb3IKLSAqIGRldl9w
cml2LT51bmNvcmUuZnVuY3MubW1pb193cml0ZXEuCi0gKgotICogV2hlbiByZWFkaW5nIGEgNjQt
Yml0IHZhbHVlIGFzIHR3byAzMi1iaXQgdmFsdWVzLCB0aGUgZGVsYXkgbWF5IGNhdXNlCi0gKiB0
aGUgdHdvIHJlYWRzIHRvIG1pc21hdGNoLCBlLmcuIGEgdGltZXN0YW1wIG92ZXJmbG93aW5nLiBB
bHNvIG5vdGUgdGhhdAotICogb2NjYXNpb25hbGx5IGEgNjQtYml0IHJlZ2lzdGVyIGRvZXMgbm90
IGFjdHVhbHkgc3VwcG9ydCBhIGZ1bGwgcmVhZHEKLSAqIGFuZCBtdXN0IGJlIHJlYWQgdXNpbmcg
dHdvIDMyLWJpdCByZWFkcy4KLSAqCi0gKiBZb3UgaGF2ZSBiZWVuIHdhcm5lZC4KLSAqLwotI2Rl
ZmluZSBJOTE1X1JFQUQ2NChyZWdfXykJX19JOTE1X1JFR19PUChyZWFkNjQsIGRldl9wcml2LCAo
cmVnX18pKQotI2RlZmluZSBJOTE1X1JFQUQ2NF8yeDMyKGxvd2VyX3JlZ19fLCB1cHBlcl9yZWdf
XykgXAotCV9fSTkxNV9SRUdfT1AocmVhZDY0XzJ4MzIsIGRldl9wcml2LCAobG93ZXJfcmVnX18p
LCAodXBwZXJfcmVnX18pKQotCiAjZGVmaW5lIFBPU1RJTkdfUkVBRChyZWdfXykJX19JOTE1X1JF
R19PUChwb3N0aW5nX3JlYWQsIGRldl9wcml2LCAocmVnX18pKQogI2RlZmluZSBQT1NUSU5HX1JF
QUQxNihyZWdfXykJX19JOTE1X1JFR19PUChwb3N0aW5nX3JlYWQxNiwgZGV2X3ByaXYsIChyZWdf
XykpCiAKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
