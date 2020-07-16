Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 03343222B70
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jul 2020 21:04:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F9B76ECC6;
	Thu, 16 Jul 2020 19:04:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B384F6ECC6
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jul 2020 19:04:30 +0000 (UTC)
IronPort-SDR: R4ExuVguwNJxF5WKX65m6fMzNE5qSbmXI/KAQ29H6CYJCd1B8H44Jsogf6mxFU2aWOadbJWiWv
 8XcLrJ8iFKsw==
X-IronPort-AV: E=McAfee;i="6000,8403,9684"; a="136930424"
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="136930424"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2020 12:04:29 -0700
IronPort-SDR: FHNsdR47aConPoa9nF2DOn+k8sPWuSf8EGJdGj6tVUBlArYnZVmwj4WUT1ROOULzjZMYaUxA9y
 E+zEsv/Q0XwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="286579573"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 16 Jul 2020 12:04:27 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 16 Jul 2020 22:04:26 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Jul 2020 22:04:25 +0300
Message-Id: <20200716190426.17047-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Move WaDisableDopClockGating:skl
 to skl_init_clock_gating()
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkl0
J3Mgc2lsbHkgdG8gaGF2ZSBpZihTS0wpIGNoZWNrcyBpbiBnZW45X2luaXRfY2xvY2tfZ2F0aW5n
KCkgd2hlbgp3ZSBjYW4ganVzdCBtb3ZlIHRob3NlIGJpdHMgaW50byBza2xfaW5pdF9jbG9ja19n
YXRpbmcoKS4KCkknbSBub3QgZW50aXJlbHkgY29udmluY2VkIHdlIGV2ZW4gbmVlZCB0aGlzIHcv
YSwgb3IgaWYgd2UgZG8KdGhlbiBtYXliZSB3ZSB3YW50IGl0IGZvciBrYmwvY2ZsIGFzIHdlbGwu
IElJUkMgaXQgd2FzIG9ubHkKbGlzdGVkIGluIHRoZSB3YWRiLCBidXQgdGhhdCBpcyBub3cgZGVh
ZCBzbyBjYW4ndCBkb3VibGUgY2hlY2sKYW55bW9yZS4gQnNwZWMgZG9lc24ndCBzZWVtIHRvIGhh
dmUgYW55IHB1cmVseSBza2wgc3BlY2lmaWMKRE9QIGNsb2NrIGdhdGluZyB3b3JrYXJvdW5kcyBs
aXN0ZWQuCgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGlu
dXguaW50ZWwuY29tPgotLS0KUHJvYmFibHkgc2hvdWxkIG1vdmUgdGhpcyB0byB0aGUgZ3Qgdy9h
IGNvZGUgYWN0dWFsbHkuIEJ1dCAKdGhlcmUncyBhIGxvdCBtb3JlIGd0IHJlbGF0ZWQgc3R1ZmYg
c3RpbGwgaW4gLmluaXRfY2xvY2tfZ2F0aW5nKCkKc28gc2hvdWxkIGdyYWIgYSBiaWdnZXIgc2hv
dmVsIHRvIG1vdmUgaXQgYWxsIGluIG9uZSBnby4KCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9wbS5jIHwgMTAgKysrKy0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwg
NiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9w
bS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYwppbmRleCBjZmFiYmUwNDgxYWIu
LjBhMWE5NTA2MGYzOCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0u
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCkBAIC0xMDAsMTIgKzEwMCw2
IEBAIHN0YXRpYyB2b2lkIGdlbjlfaW5pdF9jbG9ja19nYXRpbmcoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2KQogCSAqLwogCUk5MTVfV1JJVEUoRElTUF9BUkJfQ1RMLCBJOTE1X1JF
QUQoRElTUF9BUkJfQ1RMKSB8CiAJCSAgIERJU1BfRkJDX01FTU9SWV9XQUtFKTsKLQotCWlmIChJ
U19TS1lMQUtFKGRldl9wcml2KSkgewotCQkvKiBXYURpc2FibGVEb3BDbG9ja0dhdGluZyAqLwot
CQlJOTE1X1dSSVRFKEdFTjdfTUlTQ0NQQ1RMLCBJOTE1X1JFQUQoR0VON19NSVNDQ1BDVEwpCi0J
CQkgICAmIH5HRU43X0RPUF9DTE9DS19HQVRFX0VOQUJMRSk7Ci0JfQogfQogCiBzdGF0aWMgdm9p
ZCBieHRfaW5pdF9jbG9ja19nYXRpbmcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
KQpAQCAtNzI1MSw2ICs3MjQ1LDEwIEBAIHN0YXRpYyB2b2lkIHNrbF9pbml0X2Nsb2NrX2dhdGlu
ZyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiB7CiAJZ2VuOV9pbml0X2Nsb2Nr
X2dhdGluZyhkZXZfcHJpdik7CiAKKwkvKiBXYURpc2FibGVEb3BDbG9ja0dhdGluZzpza2wgKi8K
KwlJOTE1X1dSSVRFKEdFTjdfTUlTQ0NQQ1RMLCBJOTE1X1JFQUQoR0VON19NSVNDQ1BDVEwpICYK
KwkJICAgfkdFTjdfRE9QX0NMT0NLX0dBVEVfRU5BQkxFKTsKKwogCS8qIFdBQzZlbnRyeWxhdGVu
Y3k6c2tsICovCiAJSTkxNV9XUklURShGQkNfTExDX1JFQURfQ1RSTCwgSTkxNV9SRUFEKEZCQ19M
TENfUkVBRF9DVFJMKSB8CiAJCSAgIEZCQ19MTENfRlVMTFlfT1BFTik7Ci0tIAoyLjI2LjIKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
