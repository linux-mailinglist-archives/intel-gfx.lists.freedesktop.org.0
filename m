Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DE300A869A
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2019 18:27:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BAA189C2A;
	Wed,  4 Sep 2019 16:27:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAC1389C59
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Sep 2019 16:27:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Sep 2019 09:27:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,467,1559545200"; d="scan'208";a="187682006"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 04 Sep 2019 09:27:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 04 Sep 2019 19:27:06 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Sep 2019 19:26:24 +0300
Message-Id: <20190904162625.15048-15-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190904162625.15048-1-ville.syrjala@linux.intel.com>
References: <20190904162625.15048-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 14/15] drm/i915: Expose margin properties on
 ilk+ DP SST
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkFz
IHdpdGggSERNSSBsZXQncyBjYW4gZXhwb3NlIHRoZSBtYXJnaW4gcHJvcGVydGllcyBmb3IgRFAv
TFNQQ09OCm9uIGlsaysuIEkgZG9uJ3QgdGhpbmsgRFAgaGFzIGFueXRoaW5nIHJlc2VtYmxpbmcg
dGhlIEFWSSBpbmZvZnJhbWUKYmFyIGluZm9ybWF0aW9uIHNvIHdlIGRvbid0IGhhdmUgdG8gd29y
cnkgYWJvdXQgdGhhdCBwYXJ0IGV4Y2VwdAp3aXRoIExTUENPTi4KCkJ1Z3ppbGxhOiBodHRwczov
L2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0yOTcyMwpTaWduZWQtb2ZmLWJ5
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyAgICAgfCAyNyArKysrKysrKysr
KystLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHNwY29uLmMg
fCAgMiArKwogMiBmaWxlcyBjaGFuZ2VkLCAxOCBpbnNlcnRpb25zKCspLCAxMSBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKaW5kZXggMDU4YzM0MDEz
ZjU4Li5hMDBiMTBmMDcwZTAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHAuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
LmMKQEAgLTIxMjksNyArMjEyOSw3IEBAIGludGVsX2RwX3ljYmNyNDIwX2NvbmZpZyhzdHJ1Y3Qg
aW50ZWxfZHAgKmludGVsX2RwLAogCiAJY3J0Y19zdGF0ZS0+b3V0cHV0X2Zvcm1hdCA9IElOVEVM
X09VVFBVVF9GT1JNQVRfWUNCQ1I0MjA7CiAKLQlyZXR1cm4gaW50ZWxfcGNoX3BhbmVsX2ZpdHRp
bmcoY3J0Y19zdGF0ZSwgY29ubl9zdGF0ZSk7CisJcmV0dXJuIDA7CiB9CiAKIGJvb2wgaW50ZWxf
ZHBfbGltaXRlZF9jb2xvcl9yYW5nZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0
Y19zdGF0ZSwKQEAgLTIxOTIsMTggKzIxOTIsMTAgQEAgaW50ZWxfZHBfY29tcHV0ZV9jb25maWco
c3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJZWxzZQogCQlwaXBlX2NvbmZpZy0+aGFz
X2F1ZGlvID0gaW50ZWxfY29ubl9zdGF0ZS0+Zm9yY2VfYXVkaW8gPT0gSERNSV9BVURJT19PTjsK
IAotCWlmIChpbnRlbF9kcF9pc19lZHAoaW50ZWxfZHApICYmIGludGVsX2Nvbm5lY3Rvci0+cGFu
ZWwuZml4ZWRfbW9kZSkgeworCWlmIChpbnRlbF9kcF9pc19lZHAoaW50ZWxfZHApICYmIGludGVs
X2Nvbm5lY3Rvci0+cGFuZWwuZml4ZWRfbW9kZSkKIAkJaW50ZWxfZml4ZWRfcGFuZWxfbW9kZShp
bnRlbF9jb25uZWN0b3ItPnBhbmVsLmZpeGVkX21vZGUsCiAJCQkJICAgICAgIGFkanVzdGVkX21v
ZGUpOwogCi0JCWlmIChIQVNfR01DSChkZXZfcHJpdikpCi0JCQlyZXQgPSBpbnRlbF9nbWNoX3Bh
bmVsX2ZpdHRpbmcocGlwZV9jb25maWcsIGNvbm5fc3RhdGUpOwotCQllbHNlCi0JCQlyZXQgPSBp
bnRlbF9wY2hfcGFuZWxfZml0dGluZyhwaXBlX2NvbmZpZywgY29ubl9zdGF0ZSk7Ci0JCWlmIChy
ZXQpCi0JCQlyZXR1cm4gcmV0OwotCX0KLQogCWlmIChhZGp1c3RlZF9tb2RlLT5mbGFncyAmIERS
TV9NT0RFX0ZMQUdfREJMU0NBTikKIAkJcmV0dXJuIC1FSU5WQUw7CiAKQEAgLTIyMTQsNiArMjIw
NiwxMyBAQCBpbnRlbF9kcF9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5j
b2RlciwKIAlpZiAoYWRqdXN0ZWRfbW9kZS0+ZmxhZ3MgJiBEUk1fTU9ERV9GTEFHX0RCTENMSykK
IAkJcmV0dXJuIC1FSU5WQUw7CiAKKwlpZiAoSEFTX0dNQ0goZGV2X3ByaXYpICYmIGludGVsX2Rw
X2lzX2VkcChpbnRlbF9kcCkpCisJCXJldCA9IGludGVsX2dtY2hfcGFuZWxfZml0dGluZyhwaXBl
X2NvbmZpZywgY29ubl9zdGF0ZSk7CisJZWxzZSBpZiAoIUhBU19HTUNIKGRldl9wcml2KSkKKwkJ
cmV0ID0gaW50ZWxfcGNoX3BhbmVsX2ZpdHRpbmcocGlwZV9jb25maWcsIGNvbm5fc3RhdGUpOwor
CWlmIChyZXQpCisJCXJldHVybiByZXQ7CisKIAlyZXQgPSBpbnRlbF9kcF9jb21wdXRlX2xpbmtf
Y29uZmlnKGVuY29kZXIsIHBpcGVfY29uZmlnLCBjb25uX3N0YXRlKTsKIAlpZiAocmV0IDwgMCkK
IAkJcmV0dXJuIHJldDsKQEAgLTYzNTYsNiArNjM1NSwxMCBAQCBpbnRlbF9kcF9hZGRfcHJvcGVy
dGllcyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLCBzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29u
bmVjdAogCWVsc2UgaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gNSkKIAkJZHJtX2Nvbm5lY3Rv
cl9hdHRhY2hfbWF4X2JwY19wcm9wZXJ0eShjb25uZWN0b3IsIDYsIDEyKTsKIAorCS8qCisJICog
RklYTUU6IG1hcmdpbnMgYW5kIHNjYWxpbmdfbW9kZSBhcmUgaW1wbGVtZW50ZWQKKwkgKiBpbiBh
IG11dHVhbGx5IGV4Y2x1c2l2ZSB3YXkgZm9yIHRoZSB0aW1lIGJlaW5nLgorCSAqLwogCWlmIChp
bnRlbF9kcF9pc19lZHAoaW50ZWxfZHApKSB7CiAJCXUzMiBhbGxvd2VkX3NjYWxlcnM7CiAKQEAg
LTYzNjYsNyArNjM2OSw5IEBAIGludGVsX2RwX2FkZF9wcm9wZXJ0aWVzKHN0cnVjdCBpbnRlbF9k
cCAqaW50ZWxfZHAsIHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0CiAJCWRybV9jb25uZWN0
b3JfYXR0YWNoX3NjYWxpbmdfbW9kZV9wcm9wZXJ0eShjb25uZWN0b3IsIGFsbG93ZWRfc2NhbGVy
cyk7CiAKIAkJY29ubmVjdG9yLT5zdGF0ZS0+c2NhbGluZ19tb2RlID0gRFJNX01PREVfU0NBTEVf
QVNQRUNUOwotCisJfSBlbHNlIGlmICghSEFTX0dNQ0goZGV2X3ByaXYpKSB7CisJCWRybV9tb2Rl
X2NyZWF0ZV90dl9tYXJnaW5fcHJvcGVydGllcygmZGV2X3ByaXYtPmRybSk7CisJCWRybV9jb25u
ZWN0b3JfYXR0YWNoX3R2X21hcmdpbl9wcm9wZXJ0aWVzKGNvbm5lY3Rvcik7CiAJfQogfQogCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2xzcGNvbi5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9sc3Bjb24uYwppbmRleCBmOGYxMzA4
NjQzYTkuLjY2NDk3NzE1NzA4MSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9sc3Bjb24uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2xzcGNvbi5jCkBAIC01MDgsNiArNTA4LDggQEAgdm9pZCBsc3Bjb25fc2V0X2luZm9mcmFt
ZXMoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJCQkJCSAgIEhETUlfUVVBTlRJWkFU
SU9OX1JBTkdFX0xJTUlURUQgOgogCQkJCQkgICBIRE1JX1FVQU5USVpBVElPTl9SQU5HRV9GVUxM
KTsKIAorCWRybV9oZG1pX2F2aV9pbmZvZnJhbWVfYmFycygmZnJhbWUuYXZpLCBjb25uX3N0YXRl
KTsKKwogCXJldCA9IGhkbWlfaW5mb2ZyYW1lX3BhY2soJmZyYW1lLCBidWYsIHNpemVvZihidWYp
KTsKIAlpZiAocmV0IDwgMCkgewogCQlEUk1fRVJST1IoIkZhaWxlZCB0byBwYWNrIEFWSSBJRlxu
Iik7Ci0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
