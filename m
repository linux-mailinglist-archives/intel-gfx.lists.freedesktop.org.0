Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABD8FE3AE6
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 20:24:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 486276E5CF;
	Thu, 24 Oct 2019 18:24:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4C756E5D9
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 18:24:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Oct 2019 11:24:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,225,1569308400"; d="scan'208";a="373305033"
Received: from helsinki.fi.intel.com ([10.237.66.157])
 by orsmga005.jf.intel.com with ESMTP; 24 Oct 2019 11:24:37 -0700
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Oct 2019 21:24:21 +0300
Message-Id: <20191024182423.958952-4-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191024182423.958952-1-gwan-gyeong.mun@intel.com>
References: <20191024182423.958952-1-gwan-gyeong.mun@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/5] drm/i915/dp: Stop sending of VSC SDP when
 it is not needed
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

SXQgcHJldmVudHMgc2VuZGluZyBWU0MgU0RQIFBhY2tldCB0byBhIHJlY2VpdmVyIHdoZW4gVlND
IFNEUCBpcyBub3QKbmVlZGVkLiBCZWNhdXNlIFZTQyBTRFAgaXMgdXNlZCBmb3IgUFNSLCBZQ2JD
ciA0MjAsIEhEUiBCVC4yMDIwIGFuZCBldGMsCml0IGNoZWNrcyBQU1IgaXMgZW5hYmxlZCBvciBu
b3QuCgpTaWduZWQtb2ZmLWJ5OiBHd2FuLWd5ZW9uZyBNdW4gPGd3YW4tZ3llb25nLm11bkBpbnRl
bC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIHwgMTAg
KysrKysrKysrLQogMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwppbmRleCA1MjFjZTIzZjM4
YWMuLmVkNjg0NTQ4NWI0MSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAu
YwpAQCAtNDczNSw4ICs0NzM1LDE2IEBAIHZvaWQgaW50ZWxfZHBfdnNjX2VuYWJsZShzdHJ1Y3Qg
aW50ZWxfZHAgKmludGVsX2RwLAogCQkJIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpj
cnRjX3N0YXRlLAogCQkJIGNvbnN0IHN0cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlICpjb25uX3N0
YXRlKQogewotCWlmICghaW50ZWxfZHBfbmVlZHNfdnNjX3NkcChjcnRjX3N0YXRlLCBjb25uX3N0
YXRlKSkKKwlpZiAoIWludGVsX2RwX25lZWRzX3ZzY19zZHAoY3J0Y19zdGF0ZSwgY29ubl9zdGF0
ZSkpIHsKKwkJc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqaW50ZWxfZGlnX3BvcnQgPSBkcF90
b19kaWdfcG9ydChpbnRlbF9kcCk7CisJCXN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyID0g
JmludGVsX2RpZ19wb3J0LT5iYXNlOworCisJCWlmICghaW50ZWxfcHNyX2VuYWJsZWQoaW50ZWxf
ZHApICYmCisJCSAgICBpbnRlbF9pbmZvZnJhbWVfZW5hYmxlZChlbmNvZGVyLCBjcnRjX3N0YXRl
LCBEUF9TRFBfVlNDKSkKKwkJCWludGVsX2VuYWJsZV9pbmZvZnJhbWUoZW5jb2RlciwgZmFsc2Us
IGNydGNfc3RhdGUsIERQX1NEUF9WU0MpOworCiAJCXJldHVybjsKKwl9CiAKIAlpbnRlbF9kcF9z
ZXR1cF92c2Nfc2RwKGludGVsX2RwLCBjcnRjX3N0YXRlLCBjb25uX3N0YXRlKTsKIH0KLS0gCjIu
MjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
