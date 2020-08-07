Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC51023EA3C
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Aug 2020 11:22:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F5F16E9A3;
	Fri,  7 Aug 2020 09:22:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44D836E99A;
 Fri,  7 Aug 2020 09:22:09 +0000 (UTC)
IronPort-SDR: kGoAeNKiDfJXoFAfCGWDQp2YOpKX5otp7X1AuZQdYD4D9Ddc4zoybGvpes+43rcOzyIoRaowzM
 DK5KKHIk1kmg==
X-IronPort-AV: E=McAfee;i="6000,8403,9705"; a="171106961"
X-IronPort-AV: E=Sophos;i="5.75,445,1589266800"; d="scan'208";a="171106961"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2020 02:22:08 -0700
IronPort-SDR: j2uMm60s8w7oWtoTl1wAmGg3cX+ekNOmj4ae1IXcY6uyU2mjVazQjkWadAq57m9Yg9MFGMZiHp
 B/9TLCvbw8rg==
X-IronPort-AV: E=Sophos;i="5.75,445,1589266800"; d="scan'208";a="333492197"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2020 02:22:07 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri,  7 Aug 2020 11:20:01 +0200
Message-Id: <20200807092002.32350-16-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200807092002.32350-1-janusz.krzysztofik@linux.intel.com>
References: <20200807092002.32350-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v2 15/16] tests/core_hotunplug: Explicitly
 ignore unused return values
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
Cc: intel-gfx@lists.freedesktop.org,
 =?UTF-8?q?Micha=C5=82=20Winiarski?= <michal.winiarski@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U29tZSByZXR1cm4gdmFsdWVzIGFyZSBub3QgdXNlZnVsIGFuZCBjYW4gYmUgaWdub3JlZC4gIFdy
YXAgdGhvc2UgY2FzZXMKaW5zaWRlIGlndF9pZ25vcmVfd2FybigpLCBub3Qgb25seSB0byBtYWtl
IHN1cmUgY29tcGlsZXJzIGFyZSBoYXBweSBidXQKYWxzbyB0byBjbGVhcmx5IGRvY3VtZW50IG91
ciBkZWNpc2lvbnMuCgp2MjogUmViYXNlIG9uIGN1cnJlbnQgdXBzdHJlYW0gbWFzdGVyLgoKU2ln
bmVkLW9mZi1ieTogSmFudXN6IEtyenlzenRvZmlrIDxqYW51c3oua3J6eXN6dG9maWtAbGludXgu
aW50ZWwuY29tPgpSZXZpZXdlZC1ieTogTWljaGHFgiBXaW5pYXJza2kgPG1pY2hhbC53aW5pYXJz
a2lAaW50ZWwuY29tPgotLS0KIHRlc3RzL2NvcmVfaG90dW5wbHVnLmMgfCA2ICsrKy0tLQogMSBm
aWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS90ZXN0cy9jb3JlX2hvdHVucGx1Zy5jIGIvdGVzdHMvY29yZV9ob3R1bnBsdWcuYwppbmRleCBl
OGQwNGY4YTcuLjc1OWNiODA3OSAxMDA2NDQKLS0tIGEvdGVzdHMvY29yZV9ob3R1bnBsdWcuYwor
KysgYi90ZXN0cy9jb3JlX2hvdHVucGx1Zy5jCkBAIC0yMjgsNyArMjI4LDcgQEAgc3RhdGljIHZv
aWQgc2V0X2ZpbHRlcl9mcm9tX2RldmljZShpbnQgZmQpCiAJY2hhciBwYXRoW1BBVEhfTUFYICsg
MV07CiAKIAlpZ3RfYXNzZXJ0KGlndF9zeXNmc19wYXRoKGZkLCBwYXRoLCBQQVRIX01BWCkpOwot
CXN0cm5jYXQocGF0aCwgIi9kZXZpY2UiLCBQQVRIX01BWCAtIHN0cmxlbihwYXRoKSk7CisJaWd0
X2lnbm9yZV93YXJuKHN0cm5jYXQocGF0aCwgIi9kZXZpY2UiLCBQQVRIX01BWCAtIHN0cmxlbihw
YXRoKSkpOwogCWlndF9hc3NlcnQocmVhbHBhdGgocGF0aCwgZHN0KSk7CiAKIAlpZ3RfZGV2aWNl
X2ZpbHRlcl9mcmVlX2FsbCgpOwpAQCAtMzY4LDcgKzM2OCw3IEBAIGlndF9tYWluCiAJaWd0X2Zp
eHR1cmUgewogCQlwb3N0X2hlYWx0aGNoZWNrKCZwcml2KTsKIAotCQljbG9zZShwcml2LmZkLnN5
c2ZzX2J1cyk7Ci0JCWNsb3NlKHByaXYuZmQuc3lzZnNfZHJ2KTsKKwkJaWd0X2lnbm9yZV93YXJu
KGNsb3NlKHByaXYuZmQuc3lzZnNfYnVzKSk7CisJCWlndF9pZ25vcmVfd2FybihjbG9zZShwcml2
LmZkLnN5c2ZzX2RydikpOwogCX0KIH0KLS0gCjIuMjEuMQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
