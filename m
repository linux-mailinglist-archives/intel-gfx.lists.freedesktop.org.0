Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E2DB05ED34
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2019 22:08:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59D5C6E1D8;
	Wed,  3 Jul 2019 20:08:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8103C6E1D6
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jul 2019 20:08:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jul 2019 13:08:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,446,1557212400"; d="scan'208";a="247746239"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 03 Jul 2019 13:08:31 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 03 Jul 2019 23:08:30 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  3 Jul 2019 23:08:20 +0300
Message-Id: <20190703200824.5971-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190703200824.5971-1-ville.syrjala@linux.intel.com>
References: <20190703200824.5971-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/6] drm/i915: Disable sprite gamma on ivb-bdw
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCldl
IGRvbid0IGN1cnJlbnRseSBoYXZlIGFueSB1c2UgZm9yIHRoZSBzcHJpdGUgZ2FtbWEgb24gaXZi
LWJkdy4KTGV0J3MgZGlzYWJsZSBpdC4gV2UgYWxyZWFkeSBkbyB0aGF0IG9uIHNrbCsuCgpPbiBw
cmUtaXZiIHRoZXJlIGlzIG5vIHdheSB0byBkaXNhYmxlIHRoZSBzcHJpdGUgZ2FtbWEsIGFuZCBp
dApvbmx5IGFmZmVjdHMgWUNiQ3IgcGl4ZWwgZm9ybWF0cywgd2hlcmVhcyBvbiBpdmIrIGl0IGFs
c28KYWZmZWN0cyBSR0IgZm9ybWF0cy4KClJldmlld2VkLWJ5OiBNYWFydGVuIExhbmtob3JzdCA8
bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMgfCAyICsrCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgIHwgMiArLQogMiBmaWxlcyBjaGFuZ2VkLCAzIGlu
c2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9zcHJpdGUuYwppbmRleCAwMDRiNTIwMjdhZTguLmM3MzE0NjE3NDI0YSAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jCkBAIC0xMDEzLDYgKzEw
MTMsOCBAQCBzdGF0aWMgdTMyIGl2Yl9zcHJpdGVfY3RsKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlICpjcnRjX3N0YXRlLAogCQlyZXR1cm4gMDsKIAl9CiAKKwlzcHJjdGwgfD0gU1BSSVRF
X0lOVF9HQU1NQV9ESVNBQkxFOworCiAJaWYgKHBsYW5lX3N0YXRlLT5iYXNlLmNvbG9yX2VuY29k
aW5nID09IERSTV9DT0xPUl9ZQ0JDUl9CVDcwOSkKIAkJc3ByY3RsIHw9IFNQUklURV9ZVVZfVE9f
UkdCX0NTQ19GT1JNQVRfQlQ3MDk7CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCmluZGV4IGM4MTRj
YzFiM2FlNS4uOWFhNTVjMGQ3MzdiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3JlZy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKQEAgLTY0NjUs
NyArNjQ2NSw3IEBAIGVudW0gewogI2RlZmluZSAgIFNQUklURV9ZVVZfT1JERVJfVllVWQkJKDMg
PDwgMTYpCiAjZGVmaW5lICAgU1BSSVRFX1JPVEFURV8xODAJCSgxIDw8IDE1KQogI2RlZmluZSAg
IFNQUklURV9UUklDS0xFX0ZFRURfRElTQUJMRQkoMSA8PCAxNCkKLSNkZWZpbmUgICBTUFJJVEVf
SU5UX0dBTU1BX0VOQUJMRQkoMSA8PCAxMykKKyNkZWZpbmUgICBTUFJJVEVfSU5UX0dBTU1BX0RJ
U0FCTEUJKDEgPDwgMTMpCiAjZGVmaW5lICAgU1BSSVRFX1RJTEVECQkJKDEgPDwgMTApCiAjZGVm
aW5lICAgU1BSSVRFX0RFU1RfS0VZCQkoMSA8PCAyKQogI2RlZmluZSBfU1BSQV9MSU5PRkYJCTB4
NzAyODQKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
