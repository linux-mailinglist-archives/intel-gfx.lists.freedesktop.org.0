Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E8CB1A1772
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 23:38:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BDF76E905;
	Tue,  7 Apr 2020 21:38:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53FF86E904
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 21:38:29 +0000 (UTC)
IronPort-SDR: 5cx7ADgMnjhjoGGySjztZrc/Jj+CcwKsTkd/MQpxGZGAJ79kEbBZDI4+OtpBQNDbHYT0DlsqBZ
 wNFE6cwxSpQQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 14:38:27 -0700
IronPort-SDR: mOopnjztGrd4bl0R+ZLOkgBLI4ZndEiY/vMHp0qA2VTFbM6AmfGtIU1UfBt6Gw3HIKGdf6mIpt
 YCKr3HvfSFfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,356,1580803200"; d="scan'208";a="240081658"
Received: from mtadigot-mobl2.amr.corp.intel.com (HELO
 josouza-MOBL2.amr.corp.intel.com) ([10.135.56.68])
 by orsmga007.jf.intel.com with ESMTP; 07 Apr 2020 14:38:26 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Apr 2020 14:39:59 -0700
Message-Id: <20200407214000.342933-7-jose.souza@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200407214000.342933-1-jose.souza@intel.com>
References: <20200407214000.342933-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 7/8] drm/i915/tc: Catch TC users accessing
 FIA registers without enable aux
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
Cc: You-Sheng Yang <vicamo.yang@canonical.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QXMgZGVzY3JpYmVkIGluICJkcm0vaTkxNS90Yy9pY2w6IEltcGxlbWVudCBUQyBjb2xkIHNlcXVl
bmNlcyIgdXNlcnMKb2YgVEMgZnVuY3Rpb25zIHNob3VsZCBoZWxkIGF1eCBwb3dlciB3ZWxsIGR1
cmluZyBhY2Nlc3MgdG8gYXZvaWQKcmVhZCBnYXJiYWdlIGR1ZSBIVyBpbiBUQyBjb2xkIHN0YXRl
LgoKdjM6Ci0gcmVuYW1lZCBpc190Y19jb2xkX2Jsb2NrZWQoKSB0byBhc3NlcnRfdGNfY29sZF9i
bG9ja2VkKCkKLSByZXN0b3JlZCB0aGUgcmVtb3ZlZCAweGZmZmZmZmZmIGNoZWNrcwoKUmV2aWV3
ZWQtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4KVGVzdGVkLWJ5OiBZb3UtU2hl
bmcgWWFuZyA8dmljYW1vLnlhbmdAY2Fub25pY2FsLmNvbT4KU2lnbmVkLW9mZi1ieTogSm9zw6kg
Um9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jIHwgMjAgKysrKysrKysrKysrKysrKysrKysKIDEg
ZmlsZSBjaGFuZ2VkLCAyMCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF90Yy5jCmluZGV4IGFiODcxODZiN2U0Yi4uYTcxZGU0OGIwNTNmIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jCkBAIC05NSw2ICs5NSwyMCBAQCB0Y19jb2xk
X3VuYmxvY2soc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQsIGludGVsX3dha2Vy
ZWZfdCB3YWtlcmVmKQogCWludGVsX2Rpc3BsYXlfcG93ZXJfcHV0X2FzeW5jKGk5MTUsIGRvbWFp
biwgd2FrZXJlZik7CiB9CiAKK3N0YXRpYyB2b2lkCithc3NlcnRfdGNfY29sZF9ibG9ja2VkKHN0
cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KQoreworCXN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICppOTE1ID0gdG9faTkxNShkaWdfcG9ydC0+YmFzZS5iYXNlLmRldik7CisJYm9vbCBl
bmFibGVkOworCisJaWYgKElOVEVMX0dFTihpOTE1KSA9PSAxMSAmJiAhZGlnX3BvcnQtPnRjX2xl
Z2FjeV9wb3J0KQorCQlyZXR1cm47CisKKwllbmFibGVkID0gaW50ZWxfZGlzcGxheV9wb3dlcl9p
c19lbmFibGVkKGk5MTUsCisJCQkJCQkgdGNfY29sZF9nZXRfcG93ZXJfZG9tYWluKGRpZ19wb3J0
KSk7CisJZHJtX1dBUk5fT04oJmk5MTUtPmRybSwgIWVuYWJsZWQpOworfQorCiB1MzIgaW50ZWxf
dGNfcG9ydF9nZXRfbGFuZV9tYXNrKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0
KQogewogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShkaWdfcG9ydC0+
YmFzZS5iYXNlLmRldik7CkBAIC0xMDUsNiArMTE5LDcgQEAgdTMyIGludGVsX3RjX3BvcnRfZ2V0
X2xhbmVfbWFzayhzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCkKIAkJCQkgICAg
ICBQT1JUX1RYX0RGTEVYRFBTUChkaWdfcG9ydC0+dGNfcGh5X2ZpYSkpOwogCiAJZHJtX1dBUk5f
T04oJmk5MTUtPmRybSwgbGFuZV9tYXNrID09IDB4ZmZmZmZmZmYpOworCWFzc2VydF90Y19jb2xk
X2Jsb2NrZWQoZGlnX3BvcnQpOwogCiAJbGFuZV9tYXNrICY9IERQX0xBTkVfQVNTSUdOTUVOVF9N
QVNLKGRpZ19wb3J0LT50Y19waHlfZmlhX2lkeCk7CiAJcmV0dXJuIGxhbmVfbWFzayA+PiBEUF9M
QU5FX0FTU0lHTk1FTlRfU0hJRlQoZGlnX3BvcnQtPnRjX3BoeV9maWFfaWR4KTsKQEAgLTEyMCw2
ICsxMzUsNyBAQCB1MzIgaW50ZWxfdGNfcG9ydF9nZXRfcGluX2Fzc2lnbm1lbnRfbWFzayhzdHJ1
Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCkKIAkJCQkgICAgIFBPUlRfVFhfREZMRVhQ
QTEoZGlnX3BvcnQtPnRjX3BoeV9maWEpKTsKIAogCWRybV9XQVJOX09OKCZpOTE1LT5kcm0sIHBp
bl9tYXNrID09IDB4ZmZmZmZmZmYpOworCWFzc2VydF90Y19jb2xkX2Jsb2NrZWQoZGlnX3BvcnQp
OwogCiAJcmV0dXJuIChwaW5fbWFzayAmIERQX1BJTl9BU1NJR05NRU5UX01BU0soZGlnX3BvcnQt
PnRjX3BoeV9maWFfaWR4KSkgPj4KIAkgICAgICAgRFBfUElOX0FTU0lHTk1FTlRfU0hJRlQoZGln
X3BvcnQtPnRjX3BoeV9maWFfaWR4KTsKQEAgLTEzNCw2ICsxNTAsOCBAQCBpbnQgaW50ZWxfdGNf
cG9ydF9maWFfbWF4X2xhbmVfY291bnQoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3Bv
cnQpCiAJaWYgKGRpZ19wb3J0LT50Y19tb2RlICE9IFRDX1BPUlRfRFBfQUxUKQogCQlyZXR1cm4g
NDsKIAorCWFzc2VydF90Y19jb2xkX2Jsb2NrZWQoZGlnX3BvcnQpOworCiAJbGFuZV9tYXNrID0g
MDsKIAl3aXRoX2ludGVsX2Rpc3BsYXlfcG93ZXIoaTkxNSwgUE9XRVJfRE9NQUlOX0RJU1BMQVlf
Q09SRSwgd2FrZXJlZikKIAkJbGFuZV9tYXNrID0gaW50ZWxfdGNfcG9ydF9nZXRfbGFuZV9tYXNr
KGRpZ19wb3J0KTsKQEAgLTE2Niw2ICsxODQsOCBAQCB2b2lkIGludGVsX3RjX3BvcnRfc2V0X2Zp
YV9sYW5lX2NvdW50KHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0LAogCWRybV9X
QVJOX09OKCZpOTE1LT5kcm0sCiAJCSAgICBsYW5lX3JldmVyc2FsICYmIGRpZ19wb3J0LT50Y19t
b2RlICE9IFRDX1BPUlRfTEVHQUNZKTsKIAorCWFzc2VydF90Y19jb2xkX2Jsb2NrZWQoZGlnX3Bv
cnQpOworCiAJdmFsID0gaW50ZWxfdW5jb3JlX3JlYWQodW5jb3JlLAogCQkJCVBPUlRfVFhfREZM
RVhEUE1MRTEoZGlnX3BvcnQtPnRjX3BoeV9maWEpKTsKIAl2YWwgJj0gfkRGTEVYRFBNTEUxX0RQ
TUxFVENfTUFTSyhkaWdfcG9ydC0+dGNfcGh5X2ZpYV9pZHgpOwotLSAKMi4yNi4wCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
