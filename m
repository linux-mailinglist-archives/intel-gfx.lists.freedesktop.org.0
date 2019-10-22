Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5891AE0112
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 11:48:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B83A36E4F8;
	Tue, 22 Oct 2019 09:47:58 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73EA86E4E6
 for <Intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2019 09:47:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Oct 2019 02:47:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,326,1566889200"; d="scan'208";a="281235434"
Received: from mdlugoke-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.81.75])
 by orsmga001.jf.intel.com with ESMTP; 22 Oct 2019 02:47:43 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Tue, 22 Oct 2019 10:47:26 +0100
Message-Id: <20191022094726.3001-13-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191022094726.3001-1-tvrtko.ursulin@linux.intel.com>
References: <20191022094726.3001-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 12/12] drm/i915/selftests: Use
 for_each_uabi_engine in contex selftests
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkNvbnRleHRz
IGFyZSBub3QgdGVzdGluZyBwaHlzaWNhbCBlbmdpbmVzIHNvIGl0IG1ha2VzIHNlbnNlIHRvIHVz
ZSB0aGUKdWFiaSBpdGVyYXRvci4KClNpZ25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0
a28udXJzdWxpbkBpbnRlbC5jb20+Ci0tLQogLi4uL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3Rz
L2k5MTVfZ2VtX2NvbnRleHQuYyAgICB8IDEyICsrKystLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQs
IDQgaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2NvbnRleHQuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fY29udGV4dC5jCmluZGV4IGU1YzIzNTA1
MWFlNS4uOGY3MmYxNzNkYjAzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
c2VsZnRlc3RzL2k5MTVfZ2VtX2NvbnRleHQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2NvbnRleHQuYwpAQCAtMzIsNyArMzIsNiBAQCBzdGF0aWMg
aW50IGxpdmVfbm9wX3N3aXRjaCh2b2lkICphcmcpCiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUgPSBhcmc7CiAJc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lOwogCXN0cnVjdCBp
OTE1X2dlbV9jb250ZXh0ICoqY3R4OwotCWVudW0gaW50ZWxfZW5naW5lX2lkIGlkOwogCXN0cnVj
dCBpZ3RfbGl2ZV90ZXN0IHQ7CiAJc3RydWN0IGRybV9maWxlICpmaWxlOwogCXVuc2lnbmVkIGxv
bmcgbjsKQEAgLTY3LDcgKzY2LDcgQEAgc3RhdGljIGludCBsaXZlX25vcF9zd2l0Y2godm9pZCAq
YXJnKQogCQl9CiAJfQogCi0JZm9yX2VhY2hfZW5naW5lKGVuZ2luZSwgaTkxNSwgaWQpIHsKKwlm
b3JfZWFjaF91YWJpX2VuZ2luZShlbmdpbmUsIGk5MTUpIHsKIAkJc3RydWN0IGk5MTVfcmVxdWVz
dCAqcnE7CiAJCXVuc2lnbmVkIGxvbmcgZW5kX3RpbWUsIHByaW1lOwogCQlrdGltZV90IHRpbWVz
WzJdID0ge307CkBAIC01ODMsNyArNTgyLDYgQEAgc3RhdGljIGludCBpZ3RfY3R4X2V4ZWModm9p
ZCAqYXJnKQogewogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gYXJnOwogCXN0cnVj
dCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZTsKLQllbnVtIGludGVsX2VuZ2luZV9pZCBpZDsKIAlp
bnQgZXJyID0gLUVOT0RFVjsKIAogCS8qCkBAIC01OTUsNyArNTkzLDcgQEAgc3RhdGljIGludCBp
Z3RfY3R4X2V4ZWModm9pZCAqYXJnKQogCWlmICghRFJJVkVSX0NBUFMoaTkxNSktPmhhc19sb2dp
Y2FsX2NvbnRleHRzKQogCQlyZXR1cm4gMDsKIAotCWZvcl9lYWNoX2VuZ2luZShlbmdpbmUsIGk5
MTUsIGlkKSB7CisJZm9yX2VhY2hfdWFiaV9lbmdpbmUoZW5naW5lLCBpOTE1KSB7CiAJCXN0cnVj
dCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmogPSBOVUxMOwogCQl1bnNpZ25lZCBsb25nIG5jb250
ZXh0cywgbmR3b3JkcywgZHc7CiAJCXN0cnVjdCBpOTE1X3JlcXVlc3QgKnRxWzVdID0ge307CkBA
IC03MTEsNyArNzA5LDYgQEAgc3RhdGljIGludCBpZ3Rfc2hhcmVkX2N0eF9leGVjKHZvaWQgKmFy
ZykKIAlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICp0cVs1XSA9IHt9OwogCXN0cnVjdCBpOTE1X2dlbV9j
b250ZXh0ICpwYXJlbnQ7CiAJc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lOwotCWVudW0g
aW50ZWxfZW5naW5lX2lkIGlkOwogCXN0cnVjdCBpZ3RfbGl2ZV90ZXN0IHQ7CiAJc3RydWN0IGRy
bV9maWxlICpmaWxlOwogCWludCBlcnIgPSAwOwpAQCAtNzQzLDcgKzc0MCw3IEBAIHN0YXRpYyBp
bnQgaWd0X3NoYXJlZF9jdHhfZXhlYyh2b2lkICphcmcpCiAJaWYgKGVycikKIAkJZ290byBvdXRf
ZmlsZTsKIAotCWZvcl9lYWNoX2VuZ2luZShlbmdpbmUsIGk5MTUsIGlkKSB7CisJZm9yX2VhY2hf
dWFiaV9lbmdpbmUoZW5naW5lLCBpOTE1KSB7CiAJCXVuc2lnbmVkIGxvbmcgbmNvbnRleHRzLCBu
ZHdvcmRzLCBkdzsKIAkJc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiA9IE5VTEw7CiAJ
CUlHVF9USU1FT1VUKGVuZF90aW1lKTsKQEAgLTE2NTEsNyArMTY0OCw2IEBAIHN0YXRpYyBpbnQg
aWd0X3ZtX2lzb2xhdGlvbih2b2lkICphcmcpCiAJc3RydWN0IGRybV9maWxlICpmaWxlOwogCUk5
MTVfUk5EX1NUQVRFKHBybmcpOwogCXVuc2lnbmVkIGxvbmcgY291bnQ7Ci0JdW5zaWduZWQgaW50
IGlkOwogCXU2NCB2bV90b3RhbDsKIAlpbnQgZXJyOwogCkBAIC0xNjkyLDcgKzE2ODgsNyBAQCBz
dGF0aWMgaW50IGlndF92bV9pc29sYXRpb24odm9pZCAqYXJnKQogCXZtX3RvdGFsIC09IEk5MTVf
R1RUX1BBR0VfU0laRTsKIAogCWNvdW50ID0gMDsKLQlmb3JfZWFjaF9lbmdpbmUoZW5naW5lLCBp
OTE1LCBpZCkgeworCWZvcl9lYWNoX3VhYmlfZW5naW5lKGVuZ2luZSwgaTkxNSkgewogCQlJR1Rf
VElNRU9VVChlbmRfdGltZSk7CiAJCXVuc2lnbmVkIGxvbmcgdGhpcyA9IDA7CiAKLS0gCjIuMjAu
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
