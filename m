Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C90BB63E1A
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 00:58:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE9FF8994A;
	Tue,  9 Jul 2019 22:58:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com
 [IPv6:2607:f8b0:4864:20::543])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57BFB8999C
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 22:58:48 +0000 (UTC)
Received: by mail-pg1-x543.google.com with SMTP id z75so191544pgz.5
 for <intel-gfx@lists.freedesktop.org>; Tue, 09 Jul 2019 15:58:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DTWbdIH1xIGMeiDdeqvD41NL2rC10ktoE5c97o9QvDA=;
 b=XiSy4HvDjdDtlzwTrrE8PjUpUQCyaMxbaPT2e1qcxoM1xMTwWnHAD19saN2+CYS2hn
 Ge4R2Yaozhex1ik3CwErp/oobUONnu/22UL5hlTJ7E7R/3y9gDbam3H3W+7XWebBHHEu
 xNO7ckth+Rgwu8wMWs0uZ5R+3DrUcQC29pDhveW4f7H38Y/yZZoWobcmRpNEIZCRmk9O
 RwZeVeAD0JUoIV7ZH6nr/r9V9v+ukGgRgWlpzmcvCgHbsoD5x3iXSIgUG23laYxBzAK0
 p3MpwWkVo8dA/DsohCnryQ5TaNatzuee3CmEzT+AaZSLqoQ7rDiw5QEe0yF2t6i2jnkq
 It5A==
X-Gm-Message-State: APjAAAVY0KGvUo7s+AVDcOZNOUAkUZxBfW5ZIYcXanjR5RvpULmX6PV9
 c/vUmUph/4JcItFfyxJ/RNiT4AcSPgY=
X-Google-Smtp-Source: APXvYqzxzznd/U0YAJeubVNXoB5ibDXqhOZ0PV8CjYMASvlV76qRLw4RKC623TAMnfEgp4Ktl1ZVkg==
X-Received: by 2002:a17:90a:9a83:: with SMTP id
 e3mr2696080pjp.105.1562713127973; 
 Tue, 09 Jul 2019 15:58:47 -0700 (PDT)
Received: from exogeni.mtv.corp.google.com
 ([2620:15c:202:1:5be8:f2a6:fd7b:7459])
 by smtp.gmail.com with ESMTPSA id 201sm152939pfz.24.2019.07.09.15.58.46
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 09 Jul 2019 15:58:47 -0700 (PDT)
From: Derek Basehore <dbasehore@chromium.org>
To: linux-kernel@vger.kernel.org
Date: Tue,  9 Jul 2019 15:58:38 -0700
Message-Id: <20190709225840.144038-3-dbasehore@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
In-Reply-To: <20190709225840.144038-1-dbasehore@chromium.org>
References: <20190709225840.144038-1-dbasehore@chromium.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DTWbdIH1xIGMeiDdeqvD41NL2rC10ktoE5c97o9QvDA=;
 b=Y6yUSxDYP8v+91TH45aM6JOG0uGbJeR8tYmTyXtQxzLw3SQ9aa3K4GSiF3cvwcT5Sv
 +xLBmu2MllW9JMDuUiZoC4vO7zAspzvIsqrVfZz9bE+lf9Xx00W70CspxT3zp3lFN0Iu
 nKdeyWnWQMAW/afSkRqVzqBLPO6T3XQE46zj8=
Subject: [Intel-gfx] [PATCH v6 2/4] drm/panel: set display info in panel
 attach
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

RGV2aWNldHJlZSBzeXN0ZW1zIGNhbiBzZXQgcGFuZWwgb3JpZW50YXRpb24gdmlhIGEgcGFuZWwg
YmluZGluZywgYnV0CnRoZXJlJ3Mgbm8gd2F5LCBhcyBpcywgdG8gcHJvcGFnYXRlIHRoaXMgc2V0
dGluZyB0byB0aGUgY29ubmVjdG9yLAp3aGVyZSB0aGUgcHJvcGVydHkgbmVlZCB0byBiZSBhZGRl
ZC4KVG8gYWRkcmVzcyB0aGlzLCB0aGlzIHBhdGNoIHNldHMgb3JpZW50YXRpb24sIGFzIHdlbGwg
YXMgb3RoZXIgZml4ZWQKdmFsdWVzIGZvciB0aGUgcGFuZWwsIGluIHRoZSBkcm1fcGFuZWxfYXR0
YWNoIGZ1bmN0aW9uLiBUaGVzZSB2YWx1ZXMKYXJlIHN0b3JlZCBmcm9tIHByb2JlIGluIHRoZSBk
cm1fcGFuZWwgc3RydWN0LgoKU2lnbmVkLW9mZi1ieTogRGVyZWsgQmFzZWhvcmUgPGRiYXNlaG9y
ZUBjaHJvbWl1bS5vcmc+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2RybV9wYW5lbC5jIHwgMjggKysr
KysrKysrKysrKysrKysrKysrKysrKysrKwogaW5jbHVkZS9kcm0vZHJtX3BhbmVsLmggICAgIHwg
MTQgKysrKysrKysrKysrKysKIDIgZmlsZXMgY2hhbmdlZCwgNDIgaW5zZXJ0aW9ucygrKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fcGFuZWwuYyBiL2RyaXZlcnMvZ3B1L2RybS9k
cm1fcGFuZWwuYwppbmRleCAxNjliYWI1NGQ1MmQuLmNhMDEwOTU0NzBhOSAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2RybV9wYW5lbC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fcGFu
ZWwuYwpAQCAtMTA0LDExICsxMDQsMjMgQEAgRVhQT1JUX1NZTUJPTChkcm1fcGFuZWxfcmVtb3Zl
KTsKICAqLwogaW50IGRybV9wYW5lbF9hdHRhY2goc3RydWN0IGRybV9wYW5lbCAqcGFuZWwsIHN0
cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IpCiB7CisJc3RydWN0IGRybV9kaXNwbGF5X2lu
Zm8gKmluZm87CisKIAlpZiAocGFuZWwtPmNvbm5lY3RvcikKIAkJcmV0dXJuIC1FQlVTWTsKIAog
CXBhbmVsLT5jb25uZWN0b3IgPSBjb25uZWN0b3I7CiAJcGFuZWwtPmRybSA9IGNvbm5lY3Rvci0+
ZGV2OworCWluZm8gPSAmY29ubmVjdG9yLT5kaXNwbGF5X2luZm87CisJaW5mby0+d2lkdGhfbW0g
PSBwYW5lbC0+d2lkdGhfbW07CisJaW5mby0+aGVpZ2h0X21tID0gcGFuZWwtPmhlaWdodF9tbTsK
KwlpbmZvLT5icGMgPSBwYW5lbC0+YnBjOworCWluZm8tPnBhbmVsX29yaWVudGF0aW9uID0gcGFu
ZWwtPm9yaWVudGF0aW9uOworCWluZm8tPmJ1c19mbGFncyA9IHBhbmVsLT5idXNfZmxhZ3M7CisJ
aWYgKHBhbmVsLT5idXNfZm9ybWF0cykKKwkJZHJtX2Rpc3BsYXlfaW5mb19zZXRfYnVzX2Zvcm1h
dHMoJmNvbm5lY3Rvci0+ZGlzcGxheV9pbmZvLAorCQkJCQkJIHBhbmVsLT5idXNfZm9ybWF0cywK
KwkJCQkJCSBwYW5lbC0+bnVtX2J1c19mb3JtYXRzKTsKIAogCXJldHVybiAwOwogfQpAQCAtMTI4
LDYgKzE0MCwyMiBAQCBFWFBPUlRfU1lNQk9MKGRybV9wYW5lbF9hdHRhY2gpOwogICovCiBpbnQg
ZHJtX3BhbmVsX2RldGFjaChzdHJ1Y3QgZHJtX3BhbmVsICpwYW5lbCkKIHsKKwlzdHJ1Y3QgZHJt
X2Rpc3BsYXlfaW5mbyAqaW5mbzsKKworCWlmICghcGFuZWwtPmNvbm5lY3RvcikKKwkJZ290byBv
dXQ7CisKKwlpbmZvID0gJnBhbmVsLT5jb25uZWN0b3ItPmRpc3BsYXlfaW5mbzsKKwlpbmZvLT53
aWR0aF9tbSA9IDA7CisJaW5mby0+aGVpZ2h0X21tID0gMDsKKwlpbmZvLT5icGMgPSAwOworCWlu
Zm8tPnBhbmVsX29yaWVudGF0aW9uID0gRFJNX01PREVfUEFORUxfT1JJRU5UQVRJT05fVU5LTk9X
TjsKKwlpbmZvLT5idXNfZmxhZ3MgPSAwOworCWtmcmVlKGluZm8tPmJ1c19mb3JtYXRzKTsKKwlp
bmZvLT5idXNfZm9ybWF0cyA9IE5VTEw7CisJaW5mby0+bnVtX2J1c19mb3JtYXRzID0gMDsKKwor
b3V0OgogCXBhbmVsLT5jb25uZWN0b3IgPSBOVUxMOwogCXBhbmVsLT5kcm0gPSBOVUxMOwogCmRp
ZmYgLS1naXQgYS9pbmNsdWRlL2RybS9kcm1fcGFuZWwuaCBiL2luY2x1ZGUvZHJtL2RybV9wYW5l
bC5oCmluZGV4IGExOGM1OWYxMzZhYi4uMTc2MGMxMWUwMjk4IDEwMDY0NAotLS0gYS9pbmNsdWRl
L2RybS9kcm1fcGFuZWwuaAorKysgYi9pbmNsdWRlL2RybS9kcm1fcGFuZWwuaApAQCAtMzksNiAr
MzksOCBAQCBlbnVtIGRybV9wYW5lbF9vcmllbnRhdGlvbjsKICAqIHN0cnVjdCBkcm1fcGFuZWxf
ZnVuY3MgLSBwZXJmb3JtIG9wZXJhdGlvbnMgb24gYSBnaXZlbiBwYW5lbAogICogQGRpc2FibGU6
IGRpc2FibGUgcGFuZWwgKHR1cm4gb2ZmIGJhY2sgbGlnaHQsIGV0Yy4pCiAgKiBAdW5wcmVwYXJl
OiB0dXJuIG9mZiBwYW5lbAorICogQGRldGFjaDogZGV0YWNoIHBhbmVsLT5jb25uZWN0b3IgKGNs
ZWFyIGludGVybmFsIHN0YXRlLCBldGMuKQorICogQGF0dGFjaDogYXR0YWNoIHBhbmVsLT5jb25u
ZWN0b3IgKHVwZGF0ZSBpbnRlcm5hbCBzdGF0ZSwgZXRjLikKICAqIEBwcmVwYXJlOiB0dXJuIG9u
IHBhbmVsIGFuZCBwZXJmb3JtIHNldCB1cAogICogQGVuYWJsZTogZW5hYmxlIHBhbmVsICh0dXJu
IG9uIGJhY2sgbGlnaHQsIGV0Yy4pCiAgKiBAZ2V0X21vZGVzOiBhZGQgbW9kZXMgdG8gdGhlIGNv
bm5lY3RvciB0aGF0IHRoZSBwYW5lbCBpcyBhdHRhY2hlZCB0byBhbmQKQEAgLTk1LDYgKzk3LDE4
IEBAIHN0cnVjdCBkcm1fcGFuZWwgewogCiAJY29uc3Qgc3RydWN0IGRybV9wYW5lbF9mdW5jcyAq
ZnVuY3M7CiAKKwkvKgorCSAqIHBhbmVsIGluZm9ybWF0aW9uIHRvIGJlIHNldCBpbiB0aGUgY29u
bmVjdG9yIHdoZW4gdGhlIHBhbmVsIGlzCisJICogYXR0YWNoZWQuCisJICovCisJdW5zaWduZWQg
aW50IHdpZHRoX21tOworCXVuc2lnbmVkIGludCBoZWlnaHRfbW07CisJdW5zaWduZWQgaW50IGJw
YzsKKwlpbnQgb3JpZW50YXRpb247CisJY29uc3QgdTMyICpidXNfZm9ybWF0czsKKwl1bnNpZ25l
ZCBpbnQgbnVtX2J1c19mb3JtYXRzOworCXUzMiBidXNfZmxhZ3M7CisKIAlzdHJ1Y3QgbGlzdF9o
ZWFkIGxpc3Q7CiB9OwogCi0tIAoyLjIyLjAuNDEwLmdkOGZkYmUyMWI1LWdvb2cKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
