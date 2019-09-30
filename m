Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 01E72C25FC
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2019 20:30:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5610D89D02;
	Mon, 30 Sep 2019 18:30:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FB7D89D02
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Sep 2019 18:30:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Sep 2019 11:30:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,568,1559545200"; d="scan'208";a="202977800"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 30 Sep 2019 11:30:46 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 30 Sep 2019 21:30:45 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Sep 2019 21:30:45 +0300
Message-Id: <20190930183045.662-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Fix g4x sprite scaling stride check
 with GTT remapping
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkkg
Zm9yZ290IHRvIHVwZGF0ZSB0aGUgZzR4IHNwcml0ZSBzY2FsaW5nIHN0cmlkZSBjaGVjayB3aGVu
IEdUVApyZW1hcHBpbmcgd2FzIGludHJvZHVjZWQuIFRoZSBzdHJpZGUgb2YgdGhlIG9yaWdpbmFs
IGZyYW1lYnVmZmVyCmlzIGlycmVsZXZhbnQgd2hlbiByZW1hcHBpbmcgaXMgdXNlZCBhbmQgaW5z
dGVhZCB3ZSB3YW50IHRvIGNoZWNrCnRoZSBzdHJpZGUgb2YgdGhlIHJlbWFwcGVkIHZpZXcuCgpB
bHNvIGRyb3AgdGhlIGR1cGxpY2F0ZSB3aWR0aF9ieXRlcyBjaGVjay4gV2UgYWxyZWFkeSBjaGVj
ayB0aGF0CmEgZmV3IGxpbmVzIGVhcmxpZXIuCgpGaXhlczogZGY3OWNmNDQxOTEwICgiZHJtL2k5
MTU6IFN0b3JlIHRoZSBmaW5hbCBwbGFuZSBzdHJpZGUgaW4gcGxhbmVfc3RhdGUiKQpTaWduZWQt
b2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgot
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMgfCA1ICsrKy0t
CiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jCmluZGV4IDNkNTZkYjMyMjkx
Yi4uNjMzZmE4MDY5MzQ4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Nwcml0ZS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
c3ByaXRlLmMKQEAgLTE1MTMsMTIgKzE1MTMsMTMgQEAgZzR4X3Nwcml0ZV9jaGVja19zY2FsaW5n
KHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAogCWNvbnN0IHN0cnVjdCBkcm1f
ZnJhbWVidWZmZXIgKmZiID0gcGxhbmVfc3RhdGUtPmJhc2UuZmI7CiAJY29uc3Qgc3RydWN0IGRy
bV9yZWN0ICpzcmMgPSAmcGxhbmVfc3RhdGUtPmJhc2Uuc3JjOwogCWNvbnN0IHN0cnVjdCBkcm1f
cmVjdCAqZHN0ID0gJnBsYW5lX3N0YXRlLT5iYXNlLmRzdDsKIAlpbnQgc3JjX3gsIHNyY193LCBz
cmNfaCwgY3J0Y193LCBjcnRjX2g7CiAJY29uc3Qgc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKmFk
anVzdGVkX21vZGUgPQogCQkmY3J0Y19zdGF0ZS0+YmFzZS5hZGp1c3RlZF9tb2RlOworCXVuc2ln
bmVkIGludCBzdHJpZGUgPSBwbGFuZV9zdGF0ZS0+Y29sb3JfcGxhbmVbMF0uc3RyaWRlOwogCXVu
c2lnbmVkIGludCBjcHAgPSBmYi0+Zm9ybWF0LT5jcHBbMF07CiAJdW5zaWduZWQgaW50IHdpZHRo
X2J5dGVzOwogCWludCBtaW5fd2lkdGgsIG1pbl9oZWlnaHQ7CiAKIAljcnRjX3cgPSBkcm1fcmVj
dF93aWR0aChkc3QpOwogCWNydGNfaCA9IGRybV9yZWN0X2hlaWdodChkc3QpOwpAQCAtMTU1NCwx
NSArMTU1NSwxNSBAQCBnNHhfc3ByaXRlX2NoZWNrX3NjYWxpbmcoc3RydWN0IGludGVsX2NydGNf
c3RhdGUgKmNydGNfc3RhdGUsCiAJaWYgKHdpZHRoX2J5dGVzID4gNDA5NikgewogCQlEUk1fREVC
VUdfS01TKCJGZXRjaCB3aWR0aCAoJWQpIGV4Y2VlZHMgaGFyZHdhcmUgbWF4IHdpdGggc2NhbGlu
ZyAoJXUpXG4iLAogCQkJICAgICAgd2lkdGhfYnl0ZXMsIDQwOTYpOwogCQlyZXR1cm4gLUVJTlZB
TDsKIAl9CiAKLQlpZiAod2lkdGhfYnl0ZXMgPiA0MDk2IHx8IGZiLT5waXRjaGVzWzBdID4gNDA5
NikgeworCWlmIChzdHJpZGUgPiA0MDk2KSB7CiAJCURSTV9ERUJVR19LTVMoIlN0cmlkZSAoJXUp
IGV4Y2VlZHMgaGFyZHdhcmUgbWF4IHdpdGggc2NhbGluZyAoJXUpXG4iLAotCQkJICAgICAgZmIt
PnBpdGNoZXNbMF0sIDQwOTYpOworCQkJICAgICAgc3RyaWRlLCA0MDk2KTsKIAkJcmV0dXJuIC1F
SU5WQUw7CiAJfQogCiAJcmV0dXJuIDA7CiB9CiAKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
