Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BEF52212807
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jul 2020 17:37:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C0756EB0C;
	Thu,  2 Jul 2020 15:37:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 538EB6EB0C
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jul 2020 15:37:35 +0000 (UTC)
IronPort-SDR: k1WbI90ZZ/IcYb4BasgE1qEaagtl+s2TNcU4RZcVKmiBU1GN1Lj50SWu7knNNMBNcsoO2Iom2D
 /yKOBzb3CWzw==
X-IronPort-AV: E=McAfee;i="6000,8403,9670"; a="127021678"
X-IronPort-AV: E=Sophos;i="5.75,304,1589266800"; d="scan'208";a="127021678"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2020 08:37:34 -0700
IronPort-SDR: IfyG25NQZib+6wVVLcQPvl6HAM0J7nXByUtOQbfEXxR/D7I6oQhsLwcjVaW2KGRsWz96qf2qGL
 yCE60d8ekU8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,304,1589266800"; d="scan'208";a="356490244"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 02 Jul 2020 08:37:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 02 Jul 2020 18:37:31 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Jul 2020 18:37:22 +0300
Message-Id: <20200702153723.24327-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200702153723.24327-1-ville.syrjala@linux.intel.com>
References: <20200702153723.24327-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/4] drm/i915/fbc: Enable fbc on i865
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClVu
bGlrZSBhbGwgdGhlIG90aGVyIHByZS1zbmIgZGVza3RvcCBwbGF0Zm9ybXMgaTg2NSBhY3R1YWxs
eQpzdXBwb3J0cyBGQkMuIExldCdzIGVuYWJsZSBpdC4KClF1b3RlIGZyb20gdGhlIHNwZWM6CiJE
ZXZTREcgcHJvdmlkZXMgdGhlIHNhbWUgUnVuLUxlbmd0aCBFbmNvZGVkIEZyYW1lIEJ1ZmZlcgog
Q29tcHJlc3Npb24gKFJMRUZCQykgZnVuY3Rpb24gYXMgZXhpc3RzIGluIERldk1HTS4iCgpBcyBp
ODY1IG9ubHkgaGFzIHRoZSBvbmUgcGlwZSB3ZSB3YW50IHRvIHNraXAgbWFzc2FnaW5nIHRoZQpw
bGFuZTwtPnBpcGUgYXNzaWdubWVudCBhaW1lZCBhdCBnZXR0aW5nIEZCQytMVkRTIHdvcmtpbmcg
b24KdGhlIG1vYmlsZSBwbGF0Zm9ybXMuCgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6Qg
PHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMyArKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcGNpLmMgICAgICAgICAgICAgIHwgMSArCiAyIGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9u
cygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMKaW5kZXggODRlMmExN2I1ZWNiLi42NTNmNjYxN2Q1OWEgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC0xNjMzMiw3ICsxNjMz
Miw4IEBAIGludGVsX3ByaW1hcnlfcGxhbmVfY3JlYXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdiwgZW51bSBwaXBlIHBpcGUpCiAJICogT24gZ2VuMi8zIG9ubHkgcGxhbmUgQSBj
YW4gZG8gRkJDLCBidXQgdGhlIHBhbmVsIGZpdHRlciBhbmQgTFZEUwogCSAqIHBvcnQgaXMgaG9v
a2VkIHRvIHBpcGUgQi4gSGVuY2Ugd2Ugd2FudCBwbGFuZSBBIGZlZWRpbmcgcGlwZSBCLgogCSAq
LwotCWlmIChIQVNfRkJDKGRldl9wcml2KSAmJiBJTlRFTF9HRU4oZGV2X3ByaXYpIDwgNCkKKwlp
ZiAoSEFTX0ZCQyhkZXZfcHJpdikgJiYgSU5URUxfR0VOKGRldl9wcml2KSA8IDQgJiYKKwkgICAg
SU5URUxfTlVNX1BJUEVTKGRldl9wcml2KSA9PSAyKQogCQlwbGFuZS0+aTl4eF9wbGFuZSA9IChl
bnVtIGk5eHhfcGxhbmVfaWQpICFwaXBlOwogCWVsc2UKIAkJcGxhbmUtPmk5eHhfcGxhbmUgPSAo
ZW51bSBpOXh4X3BsYW5lX2lkKSBwaXBlOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9wY2kuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMKaW5kZXggZTVm
ZGYxN2NkOWNkLi4wYmUzYjY2Y2U2NjYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcGNpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYwpAQCAtMjE3
LDYgKzIxNyw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfZGV2aWNlX2luZm8gaTg1eF9p
bmZvID0gewogc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9kZXZpY2VfaW5mbyBpODY1Z19pbmZv
ID0gewogCUk4NDVfRkVBVFVSRVMsCiAJUExBVEZPUk0oSU5URUxfSTg2NUcpLAorCS5kaXNwbGF5
Lmhhc19mYmMgPSAxLAogfTsKIAogI2RlZmluZSBHRU4zX0ZFQVRVUkVTIFwKLS0gCjIuMjYuMgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
