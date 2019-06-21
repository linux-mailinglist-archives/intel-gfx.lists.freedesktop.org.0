Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B0714DE27
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jun 2019 02:46:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40A116E7EC;
	Fri, 21 Jun 2019 00:46:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C80D6E7EF
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jun 2019 00:46:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jun 2019 17:46:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,398,1557212400"; d="scan'208";a="181980478"
Received: from josouza-mobl.jf.intel.com ([10.24.8.250])
 by fmsmga001.fm.intel.com with ESMTP; 20 Jun 2019 17:45:59 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Jun 2019 17:45:55 -0700
Message-Id: <20190621004556.9614-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190621004556.9614-1-jose.souza@intel.com>
References: <20190621004556.9614-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 2/3] drm/i915/ehl: Remove unsupported cd
 clocks
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

RUhMIGRvIG5vdCBzdXBwb3J0IDY0OCBhbmQgNjUyLjggTUh6LgoKdjI6Ci0gTGltaXRpbmcgbWF4
aW11bSBDRCBjbG9jayBieSBtYXhfY2RjbGtfZnJlcSBpbnN0ZWFkIG9mIHJlbW92ZSBpdApmcm9t
IGljbF9jYWxjX2NkY2xrKCkoVmlsbGUgYW5kIEphbmkpCgpCU3BlYzogMjA1OTgKQ2M6IENsaW50
IFRheWxvciA8Q2xpbnRvbi5BLlRheWxvckBpbnRlbC5jb20+CkNjOiBNYXR0IFJvcGVyIDxtYXR0
aGV3LmQucm9wZXJAaW50ZWwuY29tPgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxh
QGxpbnV4LmludGVsLmNvbT4KQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+
ClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwu
Y29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYyB8IDcg
KysrKysrLQogMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYwppbmRleCA4ZWVmMTc3
YjJiYmQuLmRhYWI0ZTlhNjM1OSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9jZGNsay5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfY2RjbGsuYwpAQCAtMjYwNiw3ICsyNjA2LDEyIEBAIHN0YXRpYyBpbnQgaW50ZWxfY29tcHV0
ZV9tYXhfZG90Y2xrKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKICAqLwogdm9p
ZCBpbnRlbF91cGRhdGVfbWF4X2NkY2xrKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
dikKIHsKLQlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSkgeworCWlmIChJU19FTEtIQVJU
TEFLRShkZXZfcHJpdikpIHsKKwkJaWYgKGRldl9wcml2LT5jZGNsay5ody5yZWYgPT0gMjQwMDAp
CisJCQlkZXZfcHJpdi0+bWF4X2NkY2xrX2ZyZXEgPSA1NTIwMDA7CisJCWVsc2UKKwkJCWRldl9w
cml2LT5tYXhfY2RjbGtfZnJlcSA9IDU1NjgwMDsKKwl9IGVsc2UgaWYgKElOVEVMX0dFTihkZXZf
cHJpdikgPj0gMTEpIHsKIAkJaWYgKGRldl9wcml2LT5jZGNsay5ody5yZWYgPT0gMjQwMDApCiAJ
CQlkZXZfcHJpdi0+bWF4X2NkY2xrX2ZyZXEgPSA2NDgwMDA7CiAJCWVsc2UKLS0gCjIuMjIuMAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
