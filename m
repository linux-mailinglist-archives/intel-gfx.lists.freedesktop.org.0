Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BFED35EF5B
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jul 2019 01:02:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3EC16E216;
	Wed,  3 Jul 2019 23:02:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com
 [IPv6:2607:f8b0:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9209A6E1CE
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jul 2019 23:02:16 +0000 (UTC)
Received: by mail-pf1-x443.google.com with SMTP id 19so1978742pfa.4
 for <intel-gfx@lists.freedesktop.org>; Wed, 03 Jul 2019 16:02:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=aN1fc/2k+rfSW/EC4oQs93BniUXT0kzrcpLPTc60YrA=;
 b=aVRKfNwr2RJJRV0Dr8BAu1m0uR/mhy1E2QV/+C6A6hwLoDWZJuXwkOvGiorIMxGVQa
 5YdIUMJ5Jf6bw+li6Gm0u/nU0F23Qd706xV9RCjSlxzkHG0xAOixyKwdTnQuoVHAqAIw
 sGK7rcAoH1Pin+7a/6QGB3fuAvGY5Qd5YrjaWH3FAcM2sNKhMkTGVMaIcZhGLYK+kdQp
 TPtt5VdR2GtbfLzoG3EH0nDPm3lj9qUuO2cSL0oyUL+GDeLmmSKDEmkCWEfb/v7MzEXt
 EgH7TewZsooT73LO+SaVu/3tDthkl1WFtmH6GX5eIisqWwVVcGU8/SsJdUwD2ls6PaRE
 6AqA==
X-Gm-Message-State: APjAAAWiLWROz8+yZW5X7LP6XMQGYWtn2CqAqI+gC4Tz0rY/56dJmQO2
 3c0KYRek7kQJ2p3npJ1+KQPVUw==
X-Google-Smtp-Source: APXvYqwGEvAR6zi5SrOPI4u7LIZvp0MZxpg+7T/OEbRruM5ijz441RyoI54cDcWadbGHrUXH5auLEw==
X-Received: by 2002:a63:34c3:: with SMTP id
 b186mr39455164pga.294.1562194936143; 
 Wed, 03 Jul 2019 16:02:16 -0700 (PDT)
Received: from exogeni.mtv.corp.google.com
 ([2620:15c:202:1:5be8:f2a6:fd7b:7459])
 by smtp.gmail.com with ESMTPSA id t8sm4245171pfq.31.2019.07.03.16.02.14
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 03 Jul 2019 16:02:15 -0700 (PDT)
From: Derek Basehore <dbasehore@chromium.org>
To: linux-kernel@vger.kernel.org
Date: Wed,  3 Jul 2019 16:02:07 -0700
Message-Id: <20190703230210.85342-2-dbasehore@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
In-Reply-To: <20190703230210.85342-1-dbasehore@chromium.org>
References: <20190703230210.85342-1-dbasehore@chromium.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=aN1fc/2k+rfSW/EC4oQs93BniUXT0kzrcpLPTc60YrA=;
 b=AvAPogXeMhAMyX6Qn73Z4Mb7gUtQ6GdM3hW2lA0fqx3qKFbiNPs0oqDDEcOvWLEgX4
 aStyjhVWEcNNkVbiS4n/Ij8W4hS+WWcIhDQKoq/CfAIywTOhiYopNzj8Mcfy6hwnvEd0
 tbxJjj4OUCR1uSSEZ8ews+4V3aSvZvUuGIHOQ=
Subject: [Intel-gfx] [PATCH v5 1/4] drm/panel: Add helper for reading DT
 rotation
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
Cc: Derek Basehore <dbasehore@chromium.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sam Ravnborg <sam@ravnborg.org>,
 intel-gfx@lists.freedesktop.org, David Airlie <airlied@linux.ie>,
 Matthias Brugger <matthias.bgg@gmail.com>, dri-devel@lists.freedesktop.org,
 CK Hu <ck.hu@mediatek.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBhZGRzIGEgaGVscGVyIGZ1bmN0aW9uIGZvciByZWFkaW5nIHRoZSByb3RhdGlvbiAocGFu
ZWwKb3JpZW50YXRpb24pIGZyb20gdGhlIGRldmljZSB0cmVlLgoKU2lnbmVkLW9mZi1ieTogRGVy
ZWsgQmFzZWhvcmUgPGRiYXNlaG9yZUBjaHJvbWl1bS5vcmc+Ci0tLQogZHJpdmVycy9ncHUvZHJt
L2RybV9wYW5lbC5jIHwgNDMgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwog
aW5jbHVkZS9kcm0vZHJtX3BhbmVsLmggICAgIHwgIDcgKysrKysrCiAyIGZpbGVzIGNoYW5nZWQs
IDUwIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX3BhbmVs
LmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX3BhbmVsLmMKaW5kZXggZGJkNWI4NzNlOGYyLi4xNjli
YWI1NGQ1MmQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fcGFuZWwuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vZHJtX3BhbmVsLmMKQEAgLTE3Miw2ICsxNzIsNDkgQEAgc3RydWN0IGRy
bV9wYW5lbCAqb2ZfZHJtX2ZpbmRfcGFuZWwoY29uc3Qgc3RydWN0IGRldmljZV9ub2RlICpucCkK
IAlyZXR1cm4gRVJSX1BUUigtRVBST0JFX0RFRkVSKTsKIH0KIEVYUE9SVF9TWU1CT0wob2ZfZHJt
X2ZpbmRfcGFuZWwpOworCisvKioKKyAqIG9mX2RybV9nZXRfcGFuZWxfb3JpZW50YXRpb24gLSBs
b29rIHVwIHRoZSBvcmllbnRhdGlvbiBvZiB0aGUgcGFuZWwgdGhyb3VnaAorICogdGhlICJyb3Rh
dGlvbiIgYmluZGluZyBmcm9tIGEgZGV2aWNlIHRyZWUgbm9kZQorICogQG5wOiBkZXZpY2UgdHJl
ZSBub2RlIG9mIHRoZSBwYW5lbAorICogQG9yaWVudGF0aW9uOiBvcmllbnRhdGlvbiBlbnVtIHRv
IGJlIGZpbGxlZCBpbgorICoKKyAqIExvb2tzIHVwIHRoZSByb3RhdGlvbiBvZiBhIHBhbmVsIGlu
IHRoZSBkZXZpY2UgdHJlZS4gVGhlIG9yaWVudGF0aW9uIG9mIHRoZQorICogcGFuZWwgaXMgZXhw
cmVzc2VkIGFzIGEgcHJvcGVydHkgbmFtZSAicm90YXRpb24iIGluIHRoZSBkZXZpY2UgdHJlZS4g
VGhlCisgKiByb3RhdGlvbiBpbiB0aGUgZGV2aWNlIHRyZWUgaXMgY291bnRlciBjbG9ja3dpc2Uu
CisgKgorICogUmV0dXJuOiAwIHdoZW4gYSB2YWxpZCByb3RhdGlvbiB2YWx1ZSAoMCwgOTAsIDE4
MCwgb3IgMjcwKSBpcyByZWFkIG9yIHRoZQorICogcm90YXRpb24gcHJvcGVydHkgZG9lc24ndCBl
eGlzdC4gLUVFUlJPUiBvdGhlcndpc2UuCisgKi8KK2ludCBvZl9kcm1fZ2V0X3BhbmVsX29yaWVu
dGF0aW9uKGNvbnN0IHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnAsCisJCQkJIGVudW0gZHJtX3BhbmVs
X29yaWVudGF0aW9uICpvcmllbnRhdGlvbikKK3sKKwlpbnQgcm90YXRpb24sIHJldDsKKworCXJl
dCA9IG9mX3Byb3BlcnR5X3JlYWRfdTMyKG5wLCAicm90YXRpb24iLCAmcm90YXRpb24pOworCWlm
IChyZXQgPT0gLUVJTlZBTCkgeworCQkvKiBEb24ndCByZXR1cm4gYW4gZXJyb3IgaWYgdGhlcmUn
cyBubyByb3RhdGlvbiBwcm9wZXJ0eS4gKi8KKwkJKm9yaWVudGF0aW9uID0gRFJNX01PREVfUEFO
RUxfT1JJRU5UQVRJT05fVU5LTk9XTjsKKwkJcmV0dXJuIDA7CisJfQorCisJaWYgKHJldCA8IDAp
CisJCXJldHVybiByZXQ7CisKKwlpZiAocm90YXRpb24gPT0gMCkKKwkJKm9yaWVudGF0aW9uID0g
RFJNX01PREVfUEFORUxfT1JJRU5UQVRJT05fTk9STUFMOworCWVsc2UgaWYgKHJvdGF0aW9uID09
IDkwKQorCQkqb3JpZW50YXRpb24gPSBEUk1fTU9ERV9QQU5FTF9PUklFTlRBVElPTl9SSUdIVF9V
UDsKKwllbHNlIGlmIChyb3RhdGlvbiA9PSAxODApCisJCSpvcmllbnRhdGlvbiA9IERSTV9NT0RF
X1BBTkVMX09SSUVOVEFUSU9OX0JPVFRPTV9VUDsKKwllbHNlIGlmIChyb3RhdGlvbiA9PSAyNzAp
CisJCSpvcmllbnRhdGlvbiA9IERSTV9NT0RFX1BBTkVMX09SSUVOVEFUSU9OX0xFRlRfVVA7CisJ
ZWxzZQorCQlyZXR1cm4gLUVJTlZBTDsKKworCXJldHVybiAwOworfQorRVhQT1JUX1NZTUJPTChv
Zl9kcm1fZ2V0X3BhbmVsX29yaWVudGF0aW9uKTsKICNlbmRpZgogCiBNT0RVTEVfQVVUSE9SKCJU
aGllcnJ5IFJlZGluZyA8dHJlZGluZ0BudmlkaWEuY29tPiIpOwpkaWZmIC0tZ2l0IGEvaW5jbHVk
ZS9kcm0vZHJtX3BhbmVsLmggYi9pbmNsdWRlL2RybS9kcm1fcGFuZWwuaAppbmRleCA4YzczOGMw
ZTZlOWYuLjM1NjQ5NTJmMWE0ZiAxMDA2NDQKLS0tIGEvaW5jbHVkZS9kcm0vZHJtX3BhbmVsLmgK
KysrIGIvaW5jbHVkZS9kcm0vZHJtX3BhbmVsLmgKQEAgLTE5NywxMSArMTk3LDE4IEBAIGludCBk
cm1fcGFuZWxfZGV0YWNoKHN0cnVjdCBkcm1fcGFuZWwgKnBhbmVsKTsKIAogI2lmIGRlZmluZWQo
Q09ORklHX09GKSAmJiBkZWZpbmVkKENPTkZJR19EUk1fUEFORUwpCiBzdHJ1Y3QgZHJtX3BhbmVs
ICpvZl9kcm1fZmluZF9wYW5lbChjb25zdCBzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wKTsKK2ludCBv
Zl9kcm1fZ2V0X3BhbmVsX29yaWVudGF0aW9uKGNvbnN0IHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnAs
CisJCQkJIGVudW0gZHJtX3BhbmVsX29yaWVudGF0aW9uICpvcmllbnRhdGlvbik7CiAjZWxzZQog
c3RhdGljIGlubGluZSBzdHJ1Y3QgZHJtX3BhbmVsICpvZl9kcm1fZmluZF9wYW5lbChjb25zdCBz
dHJ1Y3QgZGV2aWNlX25vZGUgKm5wKQogewogCXJldHVybiBFUlJfUFRSKC1FTk9ERVYpOwogfQor
aW50IG9mX2RybV9nZXRfcGFuZWxfb3JpZW50YXRpb24oY29uc3Qgc3RydWN0IGRldmljZV9ub2Rl
ICpucCwKKwkJCQkgZW51bSBkcm1fcGFuZWxfb3JpZW50YXRpb24gKm9yaWVudGF0aW9uKQorewor
CXJldHVybiAtRU5PREVWOworfQogI2VuZGlmCiAKICNlbmRpZgotLSAKMi4yMi4wLjQxMC5nZDhm
ZGJlMjFiNS1nb29nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
