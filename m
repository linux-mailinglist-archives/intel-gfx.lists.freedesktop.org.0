Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E5C22C636C
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Nov 2020 11:52:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E4086EB78;
	Fri, 27 Nov 2020 10:52:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DDC96EB78
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Nov 2020 10:52:00 +0000 (UTC)
IronPort-SDR: VOzV9lANpMgerf5C728X00AU4+gEEUSMKLP44OpHIW1ggWCCYP8dsB14DCANuEwDLe3Ijwj2uI
 Q9MJTqbi6UYw==
X-IronPort-AV: E=McAfee;i="6000,8403,9817"; a="151634273"
X-IronPort-AV: E=Sophos;i="5.78,374,1599548400"; d="scan'208";a="151634273"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2020 02:51:08 -0800
IronPort-SDR: dv97j6GtMhZajtryOOtNk3ocghoGjKx7kVeRQs7VS+IMDwuWhkEOhIyfoc1Ttd/pXBQZWo82Ac
 cpxbHBjiT3gA==
X-IronPort-AV: E=Sophos;i="5.78,374,1599548400"; d="scan'208";a="537605094"
Received: from helsinki.fi.intel.com ([10.237.66.162])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2020 02:51:07 -0800
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Nov 2020 12:50:37 +0200
Message-Id: <20201127105041.2793779-1-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 1/5] drm/i915/display/psr: Calculate
 selective fetch plane registers
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

RnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgpBZGQg
dGhlIGNhbGN1bGF0aW9ucyB0byBzZXQgcGxhbmUgc2VsZWN0aXZlIGZldGNoIHJlZ2lzdGVycyBk
ZXBlbmRpbmcKaW4gdGhlIHZhbHVlIG9mIHRoZSBhcmVhIGRhbWFnZWQuCkl0IGlzIHN0aWxsIHVz
aW5nIHRoZSB3aG9sZSBwbGFuZSBhcmVhIGFzIGRhbWFnZWQgYnV0IHRoYXQgd2lsbCBjaGFuZ2UK
aW4gbmV4dCBwYXRjaGVzLgoKdjI6Ci0gZml4ZWQgbmV3X3BsYW5lX3N0YXRlLT51YXBpLmRzdC55
MiB0eXBvIGluCmludGVsX3BzcjJfc2VsX2ZldGNoX3VwZGF0ZSgpCi0gZG8gbm90IHNoaWZ0aGlu
ZyBuZXdfcGxhbmVfc3RhdGUtPnVhcGkuZHN0IG9ubHkgc3JjIGlzIGluIDE2LjE2IGZvcm1hdAoK
QlNwZWM6IDU1MjI5CkNjOiBHd2FuLWd5ZW9uZyBNdW4gPGd3YW4tZ3llb25nLm11bkBpbnRlbC5j
b20+CkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpT
aWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNv
bT4KUmV2aWV3ZWQtYnk6IEd3YW4tZ3llb25nIE11biA8Z3dhbi1neWVvbmcubXVuQGludGVsLmNv
bT4KVGVzdGVkLWJ5OiBHd2FuLWd5ZW9uZyBNdW4gPGd3YW4tZ3llb25nLm11bkBpbnRlbC5jb20+
Ci0tLQogLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oICAgIHwgIDIg
KysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgICAgICB8IDIyICsr
KysrKysrKysrKysrLS0tLS0KIDIgZmlsZXMgY2hhbmdlZCwgMTggaW5zZXJ0aW9ucygrKSwgNiBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfdHlwZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV90eXBlcy5oCmluZGV4IGNlODJkNjU0ZDBmMi4uM2ExOGFhZjkwN2NjIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaApA
QCAtNjA0LDYgKzYwNCw4IEBAIHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSB7CiAJdTMyIHBsYW5h
cl9zbGF2ZTsKIAogCXN0cnVjdCBkcm1faW50ZWxfc3ByaXRlX2NvbG9ya2V5IGNrZXk7CisKKwlz
dHJ1Y3QgZHJtX3JlY3QgcHNyMl9zZWxfZmV0Y2hfYXJlYTsKIH07CiAKIHN0cnVjdCBpbnRlbF9p
bml0aWFsX3BsYW5lX2NvbmZpZyB7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bzci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYwppbmRleCBiMzYzMWI3MjJkZTMuLmQ5YTM5NWM0ODZkMyAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCkBAIC0xMTg1LDYgKzExODUsNyBAQCB2b2lkIGludGVs
X3BzcjJfcHJvZ3JhbV9wbGFuZV9zZWxfZmV0Y2goc3RydWN0IGludGVsX3BsYW5lICpwbGFuZSwK
IHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KHBsYW5lLT5i
YXNlLmRldik7CiAJZW51bSBwaXBlIHBpcGUgPSBwbGFuZS0+cGlwZTsKKwljb25zdCBzdHJ1Y3Qg
ZHJtX3JlY3QgKmNsaXA7CiAJdTMyIHZhbDsKIAogCWlmICghY3J0Y19zdGF0ZS0+ZW5hYmxlX3Bz
cjJfc2VsX2ZldGNoKQpAQCAtMTE5NiwxNiArMTE5NywyMCBAQCB2b2lkIGludGVsX3BzcjJfcHJv
Z3JhbV9wbGFuZV9zZWxfZmV0Y2goc3RydWN0IGludGVsX3BsYW5lICpwbGFuZSwKIAlpZiAoIXZh
bCB8fCBwbGFuZS0+aWQgPT0gUExBTkVfQ1VSU09SKQogCQlyZXR1cm47CiAKLQl2YWwgPSBwbGFu
ZV9zdGF0ZS0+dWFwaS5kc3QueTEgPDwgMTYgfCBwbGFuZV9zdGF0ZS0+dWFwaS5kc3QueDE7CisJ
Y2xpcCA9ICZwbGFuZV9zdGF0ZS0+cHNyMl9zZWxfZmV0Y2hfYXJlYTsKKworCXZhbCA9IChjbGlw
LT55MSArIHBsYW5lX3N0YXRlLT51YXBpLmRzdC55MSkgPDwgMTY7CisJdmFsIHw9IHBsYW5lX3N0
YXRlLT51YXBpLmRzdC54MTsKIAlpbnRlbF9kZV93cml0ZV9mdyhkZXZfcHJpdiwgUExBTkVfU0VM
X0ZFVENIX1BPUyhwaXBlLCBwbGFuZS0+aWQpLCB2YWwpOwogCi0JdmFsID0gcGxhbmVfc3RhdGUt
PmNvbG9yX3BsYW5lW2NvbG9yX3BsYW5lXS55IDw8IDE2OworCS8qIFRPRE86IGNvbnNpZGVyIHRp
bGluZyBhbmQgYXV4aWxpYXJ5IHN1cmZhY2VzICovCisJdmFsID0gKGNsaXAtPnkxICsgcGxhbmVf
c3RhdGUtPmNvbG9yX3BsYW5lW2NvbG9yX3BsYW5lXS55KSA8PCAxNjsKIAl2YWwgfD0gcGxhbmVf
c3RhdGUtPmNvbG9yX3BsYW5lW2NvbG9yX3BsYW5lXS54OwogCWludGVsX2RlX3dyaXRlX2Z3KGRl
dl9wcml2LCBQTEFORV9TRUxfRkVUQ0hfT0ZGU0VUKHBpcGUsIHBsYW5lLT5pZCksCiAJCQkgIHZh
bCk7CiAKIAkvKiBTaXplcyBhcmUgMCBiYXNlZCAqLwotCXZhbCA9ICgoZHJtX3JlY3RfaGVpZ2h0
KCZwbGFuZV9zdGF0ZS0+dWFwaS5zcmMpID4+IDE2KSAtIDEpIDw8IDE2OworCXZhbCA9IChkcm1f
cmVjdF9oZWlnaHQoY2xpcCkgLSAxKSA8PCAxNjsKIAl2YWwgfD0gKGRybV9yZWN0X3dpZHRoKCZw
bGFuZV9zdGF0ZS0+dWFwaS5zcmMpID4+IDE2KSAtIDE7CiAJaW50ZWxfZGVfd3JpdGVfZncoZGV2
X3ByaXYsIFBMQU5FX1NFTF9GRVRDSF9TSVpFKHBpcGUsIHBsYW5lLT5pZCksIHZhbCk7CiB9CkBA
IC0xMjc5LDcgKzEyODQsNyBAQCBpbnQgaW50ZWxfcHNyMl9zZWxfZmV0Y2hfdXBkYXRlKHN0cnVj
dCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAogCiAJZm9yX2VhY2hfb2xkbmV3X2ludGVsX3Bs
YW5lX2luX3N0YXRlKHN0YXRlLCBwbGFuZSwgb2xkX3BsYW5lX3N0YXRlLAogCQkJCQkgICAgIG5l
d19wbGFuZV9zdGF0ZSwgaSkgewotCQlzdHJ1Y3QgZHJtX3JlY3QgdGVtcDsKKwkJc3RydWN0IGRy
bV9yZWN0ICpzZWxfZmV0Y2hfYXJlYSwgdGVtcDsKIAogCQlpZiAobmV3X3BsYW5lX3N0YXRlLT51
YXBpLmNydGMgIT0gY3J0Y19zdGF0ZS0+dWFwaS5jcnRjKQogCQkJY29udGludWU7CkBAIC0xMzAy
LDggKzEzMDcsMTMgQEAgaW50IGludGVsX3BzcjJfc2VsX2ZldGNoX3VwZGF0ZShzdHJ1Y3QgaW50
ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKIAkJICogRm9yIG5vdyBkb2luZyBhIHNlbGVjdGl2ZSBm
ZXRjaCBpbiB0aGUgd2hvbGUgcGxhbmUgYXJlYSwKIAkJICogb3B0aW1pemF0aW9ucyB3aWxsIGNv
bWUgaW4gdGhlIGZ1dHVyZS4KIAkJICovCi0JCXRlbXAueTEgPSBuZXdfcGxhbmVfc3RhdGUtPnVh
cGkuZHN0LnkxOwotCQl0ZW1wLnkyID0gbmV3X3BsYW5lX3N0YXRlLT51YXBpLmRzdC55MjsKKwkJ
c2VsX2ZldGNoX2FyZWEgPSAmbmV3X3BsYW5lX3N0YXRlLT5wc3IyX3NlbF9mZXRjaF9hcmVhOwor
CQlzZWxfZmV0Y2hfYXJlYS0+eTEgPSBuZXdfcGxhbmVfc3RhdGUtPnVhcGkuc3JjLnkxID4+IDE2
OworCQlzZWxfZmV0Y2hfYXJlYS0+eTIgPSBuZXdfcGxhbmVfc3RhdGUtPnVhcGkuc3JjLnkyID4+
IDE2OworCisJCXRlbXAgPSAqc2VsX2ZldGNoX2FyZWE7CisJCXRlbXAueTEgKz0gbmV3X3BsYW5l
X3N0YXRlLT51YXBpLmRzdC55MTsKKwkJdGVtcC55MiArPSBuZXdfcGxhbmVfc3RhdGUtPnVhcGku
ZHN0LnkyOwogCQljbGlwX2FyZWFfdXBkYXRlKCZwaXBlX2NsaXAsICZ0ZW1wKTsKIAl9CiAKLS0g
CjIuMjUuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
