Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BE10266098
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Sep 2020 15:48:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F8546EA54;
	Fri, 11 Sep 2020 13:48:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E4D56EA54
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Sep 2020 13:48:43 +0000 (UTC)
IronPort-SDR: aw5tt4PqZuhxCk6e6PBFrL5rX+GPgJxWZpZa604uflGmZlWn7SefTdhVk2J5agtwowrc+7/FqN
 Kiqw8195nlLQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9740"; a="156209150"
X-IronPort-AV: E=Sophos;i="5.76,415,1592895600"; d="scan'208";a="156209150"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 06:48:41 -0700
IronPort-SDR: Kg7UcH83KObDeBQ02A6vF8OBVcrnP+reFvJ/eG7juPWIp8B8yTGzMxL+x+vYbrmtA6KGiS1/7f
 Nc5wSytS/FaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,415,1592895600"; d="scan'208";a="449990953"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.9])
 by orsmga004.jf.intel.com with ESMTP; 11 Sep 2020 06:48:37 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Sep 2020 21:48:27 +0800
Message-Id: <20200911134827.5542-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200827055129.26566-1-shawn.c.lee@intel.com>
References: <20200827055129.26566-1-shawn.c.lee@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/fbc: disable FBC on Nightfury board
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
Cc: Cooper Chiou <cooper.chiou@intel.com>,
 William Tseng <william.tseng@intel.com>, Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q3VzdG9tZXIgcmVwb3J0IHJhbmRvbSBkaXNwbGF5IGZsaWNrZXIgaXNzdWUgb24gTmlnaHRmdXJ5
IGJvYXJkLgpBbmQgd2UgZm91bmQgdGhpcyBwcm9ibGVtIG1pZ2h0IGJlIGNhdXNlZCBieSBWVC1k
IGFuZCBGQkMgYXJlCmJvdGggZW5hYmxlZC4gQWNjb3JkaW5nIHRvIHNpZ2h0aW5nIHJlcG9ydCwg
aXQgcmVjb21tZW5kIHRvIHR1cm4KRkJDIG9mZiB0byB3b3JrYXJvdW5kIHRoaXMga2luZCBvZiBp
c3N1ZS4KClRoaXMgY2hhbmdlIHJlZmVyIHRvIERNSSBCT0FSRF9WRU5ET1IgYW5kIEJPQVJEX05B
TUUgaW5mb3JtYXRpb24KdG8gZGlzYWJsZSBGQkMuCgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZp
QGludGVsLmNvbT4KQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwu
Y29tPgpDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KQ2M6IFdpbGxpYW0g
VHNlbmcgPHdpbGxpYW0udHNlbmdAaW50ZWwuY29tPgpDYzogQ29vcGVyIENoaW91IDxjb29wZXIu
Y2hpb3VAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBMZWUgU2hhd24gQyA8c2hhd24uYy5sZWVA
aW50ZWwuY29tPgoKdjI6IGZpeCB0eXBvLgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZmJjLmMgfCAyMiArKysrKysrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdl
ZCwgMjIgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZmJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Zi
Yy5jCmluZGV4IDMyN2FmNDI4ZDczZi4uMjA2NjBmZGJhYjM2IDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMKQEAgLTM5LDYgKzM5LDcgQEAKICAqLwogCiAjaW5jbHVk
ZSA8ZHJtL2RybV9mb3VyY2MuaD4KKyNpbmNsdWRlIDxsaW51eC9kbWkuaD4KIAogI2luY2x1ZGUg
Imk5MTVfZHJ2LmgiCiAjaW5jbHVkZSAiaTkxNV90cmFjZS5oIgpAQCAtMTQzOSw2ICsxNDQwLDI0
IEBAIHN0YXRpYyBpbnQgaW50ZWxfc2FuaXRpemVfZmJjX29wdGlvbihzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYpCiAJcmV0dXJuIDA7CiB9CiAKK3N0YXRpYyBpbnQgaW50ZWxfZmJj
X3Z0ZF9jYWxsYmFjayhjb25zdCBzdHJ1Y3QgZG1pX3N5c3RlbV9pZCAqaWQpCit7CisJRFJNX0RF
QlVHX0tNUygiRGlzYWJsaW5nIEZCQyB0byBwcmV2ZW50IHNjcmVlbiBmbGlja2VyIG9uICVzIGRl
dmljZVxuIiwgaWQtPmlkZW50KTsKKwlyZXR1cm4gMTsKK30KKworc3RhdGljIGNvbnN0IHN0cnVj
dCBkbWlfc3lzdGVtX2lkIGludGVsX2ZiY192dGRfZGV0ZWN0W10gPSB7CisJeworCQkuY2FsbGJh
Y2sgPSBpbnRlbF9mYmNfdnRkX2NhbGxiYWNrLAorCQkuaWRlbnQgPSAiR29vZ2xlIE5pZ2h0ZnVy
eSIsCisJCS5tYXRjaGVzID0geworCQkJRE1JX01BVENIKERNSV9CT0FSRF9WRU5ET1IsICJHb29n
bGUiKSwKKwkJCURNSV9NQVRDSChETUlfQk9BUkRfTkFNRSwgIk5pZ2h0ZnVyeSIpLAorCQl9LAor
CX0sCisJeyB9Cit9OworCiBzdGF0aWMgYm9vbCBuZWVkX2ZiY192dGRfd2Eoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2KQogewogCS8qIFdhRmJjVHVybk9mZkZiY1doZW5IeXBlclZp
c29ySXNVc2VkOnNrbCxieHQgKi8KQEAgLTE0NTAsNiArMTQ2OSw5IEBAIHN0YXRpYyBib29sIG5l
ZWRfZmJjX3Z0ZF93YShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJCXJldHVy
biB0cnVlOwogCX0KIAorCWlmIChkbWlfY2hlY2tfc3lzdGVtKGludGVsX2ZiY192dGRfZGV0ZWN0
KSkKKwkJcmV0dXJuIHRydWU7CisKIAlyZXR1cm4gZmFsc2U7CiB9CiAKLS0gCjIuMTcuMQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
