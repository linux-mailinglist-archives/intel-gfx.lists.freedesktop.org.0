Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 742874F361
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Jun 2019 05:41:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 359A56E958;
	Sat, 22 Jun 2019 03:41:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com
 [IPv6:2607:f8b0:4864:20::541])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF0186E954
 for <intel-gfx@lists.freedesktop.org>; Sat, 22 Jun 2019 03:41:13 +0000 (UTC)
Received: by mail-pg1-x541.google.com with SMTP id p10so4273269pgn.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jun 2019 20:41:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fFX9zU9cvHHYWyBJrumOSQOw8f8w9KPwvR2c+phKtRQ=;
 b=MeGdESjKh9KqiPjFBYZ6mNPsFWtDlsAIPkA6EdoveOVD42q+CPtJ0EWidm+3KVO2RC
 4qZA/jGVg6i+L5+8dn7//7KymTj2WQsaLPQInae4fQTvv7UJSSkpSsSl0YD19Dq79npD
 ysU4VXfRPwMBhKaRul7ZXzzKCjfC1sf6ljiscrzx/dibVvliqlrFgYvN+OBHV3D6cCU9
 DlySKJ6JjTwVgFGobRybKC7X4ybuxXJLCahHMpD4+tm+f7RTUDKamAZDiWloOcsgrbAR
 FDib9tdycVVoBEmylhIcf6nPpW7OUdfQ40jqBy/94p5JqDq41TtqB7NU3rMl2rNyrymP
 cVTA==
X-Gm-Message-State: APjAAAWQsxerczOijZj8fnVLjriCSXydgvL/UKrT+fjzhbcBekvPULu+
 UlsrntxgCHAaUnA+00zPU1hLcg==
X-Google-Smtp-Source: APXvYqwSDNQzNs53Gsghnfp1ASH53KKgDd72JJ5prFnEOErODUIjlPIU2WbLczECLr/v+Jj8FXjE0g==
X-Received: by 2002:a65:620a:: with SMTP id d10mr21751149pgv.42.1561174873308; 
 Fri, 21 Jun 2019 20:41:13 -0700 (PDT)
Received: from exogeni.mtv.corp.google.com
 ([2620:15c:202:1:5be8:f2a6:fd7b:7459])
 by smtp.gmail.com with ESMTPSA id u128sm4756688pfu.26.2019.06.21.20.41.12
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 21 Jun 2019 20:41:12 -0700 (PDT)
From: Derek Basehore <dbasehore@chromium.org>
To: linux-kernel@vger.kernel.org
Date: Fri, 21 Jun 2019 20:41:03 -0700
Message-Id: <20190622034105.188454-3-dbasehore@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
In-Reply-To: <20190622034105.188454-1-dbasehore@chromium.org>
References: <20190622034105.188454-1-dbasehore@chromium.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fFX9zU9cvHHYWyBJrumOSQOw8f8w9KPwvR2c+phKtRQ=;
 b=nGznlI0F66L8RL06I6cenPynTwrwFqOG2ddbEAXYoV9pMLE/pKzGj4kkCDvFyLCxFZ
 hlYhUadnJqRHVyTTIWYjzsxmoYVDQamNaw4IpvOA+lTOnxlDisXodVaAVfNNvGzcoz8C
 u0XZFnPhkSXHGvNgx60MUMWaQjFqC2lutIHEo=
Subject: [Intel-gfx] [PATCH v3 2/4] drm/panel: set display info in panel
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
cm1fcGFuZWwuYwppbmRleCA1MDcwOTlhZjRiNTcuLjU2OTBmY2EzMDIzNiAxMDA2NDQKLS0tIGEv
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
bC5oCmluZGV4IDM1NjQ5NTJmMWE0Zi4uNzYwY2E1ODY1OTYyIDEwMDY0NAotLS0gYS9pbmNsdWRl
L2RybS9kcm1fcGFuZWwuaAorKysgYi9pbmNsdWRlL2RybS9kcm1fcGFuZWwuaApAQCAtMzcsNiAr
MzcsOCBAQCBzdHJ1Y3QgZGlzcGxheV90aW1pbmc7CiAgKiBzdHJ1Y3QgZHJtX3BhbmVsX2Z1bmNz
IC0gcGVyZm9ybSBvcGVyYXRpb25zIG9uIGEgZ2l2ZW4gcGFuZWwKICAqIEBkaXNhYmxlOiBkaXNh
YmxlIHBhbmVsICh0dXJuIG9mZiBiYWNrIGxpZ2h0LCBldGMuKQogICogQHVucHJlcGFyZTogdHVy
biBvZmYgcGFuZWwKKyAqIEBkZXRhY2g6IGRldGFjaCBwYW5lbC0+Y29ubmVjdG9yIChjbGVhciBp
bnRlcm5hbCBzdGF0ZSwgZXRjLikKKyAqIEBhdHRhY2g6IGF0dGFjaCBwYW5lbC0+Y29ubmVjdG9y
ICh1cGRhdGUgaW50ZXJuYWwgc3RhdGUsIGV0Yy4pCiAgKiBAcHJlcGFyZTogdHVybiBvbiBwYW5l
bCBhbmQgcGVyZm9ybSBzZXQgdXAKICAqIEBlbmFibGU6IGVuYWJsZSBwYW5lbCAodHVybiBvbiBi
YWNrIGxpZ2h0LCBldGMuKQogICogQGdldF9tb2RlczogYWRkIG1vZGVzIHRvIHRoZSBjb25uZWN0
b3IgdGhhdCB0aGUgcGFuZWwgaXMgYXR0YWNoZWQgdG8gYW5kCkBAIC05Myw2ICs5NSwxOCBAQCBz
dHJ1Y3QgZHJtX3BhbmVsIHsKIAogCWNvbnN0IHN0cnVjdCBkcm1fcGFuZWxfZnVuY3MgKmZ1bmNz
OwogCisJLyoKKwkgKiBwYW5lbCBpbmZvcm1hdGlvbiB0byBiZSBzZXQgaW4gdGhlIGNvbm5lY3Rv
ciB3aGVuIHRoZSBwYW5lbCBpcworCSAqIGF0dGFjaGVkLgorCSAqLworCXVuc2lnbmVkIGludCB3
aWR0aF9tbTsKKwl1bnNpZ25lZCBpbnQgaGVpZ2h0X21tOworCXVuc2lnbmVkIGludCBicGM7CisJ
aW50IG9yaWVudGF0aW9uOworCWNvbnN0IHUzMiAqYnVzX2Zvcm1hdHM7CisJdW5zaWduZWQgaW50
IG51bV9idXNfZm9ybWF0czsKKwl1MzIgYnVzX2ZsYWdzOworCiAJc3RydWN0IGxpc3RfaGVhZCBs
aXN0OwogfTsKIAotLSAKMi4yMi4wLjQxMC5nZDhmZGJlMjFiNS1nb29nCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
