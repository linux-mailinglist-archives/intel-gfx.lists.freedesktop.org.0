Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 46D4E39BC38
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Jun 2021 17:49:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C1D06E108;
	Fri,  4 Jun 2021 15:49:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com
 [IPv6:2a00:1450:4864:20::331])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F025A6E108;
 Fri,  4 Jun 2021 15:49:15 +0000 (UTC)
Received: by mail-wm1-x331.google.com with SMTP id
 u5-20020a7bc0450000b02901480e40338bso4489330wmc.1; 
 Fri, 04 Jun 2021 08:49:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8Lds9gCzJwmMKr7vdvMacl9HXd9kFnM3fe++EpLc6XI=;
 b=Hb80MpfOc48FLtbkirFjbEeHKIL92v34ZABsiS1LKXskELp+cbV4SnZctXC1pYQFMv
 PPahz53BgO3B8SOX95O2xCs2EsnxxkmG77fM83vPaf3hISzo2jVh3jHNYCdskCRlQLBx
 YFho2iwtTwqrSmQGBofgEEC85Oylz7FvUzL2gy8aHm/1RqLJ6yZuL6Inas3lmNu9+51S
 vmkf7mzXutogHdltk/zkNlqMR1+pEVr6YXqllmzqdddtAAIQFqAPp4ESQzTiAkTkrytW
 B1rVndOCiWAbQbeL+5fsFdfumhgcRvXvtv25o3/eclON6TAC327dH7fTKtizmh9QMA8v
 ETfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8Lds9gCzJwmMKr7vdvMacl9HXd9kFnM3fe++EpLc6XI=;
 b=TTlLvojWAFUgMUmgNU7GGriMPxjFk14a44GEj3dL8BSYRK8dBHbf9n7Jz3L1LwV1k6
 vlEeMo7qknQTjB437UAXHRRJnsL6FGI+aksWVtPDCIc7IRhecroExE+305HAEeXjpeoM
 fse0ts7iVCT/+HrokTHrq5wTVI9tedRGM//+DYqgzhR7rev6cw96Y3h+mG/AgFb2poZ/
 7BNmWFS2FisxeeStnXfLcVWkatopBV6E+T6vNk0pTIQ2NTyXrry4ej9SmhF00HR0upGP
 NAmoRJJqKJmqlBQSNeYcGhkXsas8c2gsstG8TViJPEDC7xM/3gOd9ksmBHjlY3CDl3ox
 P8ZA==
X-Gm-Message-State: AOAM532ByFi3oCUrcFQtWjBy25srk1EjSgY0IaHGibsEkoaWAiwJ75xU
 TVW06+vRvCkrQCfjykYH5iE=
X-Google-Smtp-Source: ABdhPJzaOYoCYA6fUg6Ei9tUTrEb0T4E+kCm+gsuurm0f2hxSqdutq+dX9WdDmPOKBTIyAj2E4Ktyw==
X-Received: by 2002:a1c:b387:: with SMTP id c129mr4314530wmf.121.1622821754549; 
 Fri, 04 Jun 2021 08:49:14 -0700 (PDT)
Received: from arch-x1c3.. (cpc92308-cmbg19-2-0-cust99.5-4.cable.virginm.net.
 [82.24.248.100])
 by smtp.gmail.com with ESMTPSA id n6sm5797743wmq.34.2021.06.04.08.49.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Jun 2021 08:49:13 -0700 (PDT)
From: Emil Velikov <emil.l.velikov@gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Date: Fri,  4 Jun 2021 16:49:05 +0100
Message-Id: <20210604154905.660142-1-emil.l.velikov@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: apply WaEnableVGAAccessThroughIOPort
 as needed
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
Cc: intel-gfx@lists.freedesktop.org, kernel@collabora.com,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogRW1pbCBWZWxpa292IDxlbWlsLnZlbGlrb3ZAY29sbGFib3JhLmNvbT4KCkN1cnJlbnRs
eSBhcyB0aGUgd29ya2Fyb3VuZCBpcyBhcHBsaWVkIHRoZSBzY3JlZW4gZmxpY2tlcnMuIEFzIGEg
cmVzdWx0CndlIGRvIG5vdCBhY2hpZXZlIHNlYW1sZXNzIGJvb3QgZXhwZXJpZW5jZS4KCkF2b2lk
aW5nIHRoZSBpc3N1ZSBpbiB0aGUgY29tbW9uIHVzZS1jYXNlIG1pZ2h0IGJlIGhhcmQsIGFsdGhv
dWdoIHdlIGNhbgpyZXNvbHZlIGl0IGZvciBkdWFsIEdQVSBzZXR1cHMgLSB3aGVuIHRoZSAib3Ro
ZXIiIEdQVSBpcyBwcmltYXJ5IGFuZC9vcgpvdXRwdXRzIGFyZSBjb25uZWN0ZWQgdG8gaXQuCgpX
aXRoIHRoaXMgSSB3YXMgYWJsZSB0byBnZXQgc2VhbWxlc3MgZXhwZXJpZW5jZSBvbiBteSBJbnRl
bC9OdmlkaWEgYm94LApydW5uaW5nIHN5c3RlbWQtYm9vdCBhbmQgc2RkbS9Yb3JnLiBOb3RlIHRo
YXQgdGhlIGk5MTUgZHJpdmVyIGlzIHdpdGhpbgppbml0cmQgd2hpbGUgdGhlIE52aWRpYSBvbmUg
aXMgbm90LgoKV2l0aG91dCB0aGlzIHBhdGNoLCB0aGUgc3BsYXNoIHByZXNlbnRlZCBieSBzeXN0
ZW1kLWJvb3QgKFVFRkkgQkdSVCkgaXMKdG9ybiBkb3duIGFzIHRoZSBjb2RlLXBhdGgga2lja3Mg
aW4sIGxlYXZpbmcgdGhlIG1vbml0b3IgYmxhbmsgdW50aWwgdGhlCmxvZ2luIG1hbmFnZXIgc3Rh
cnRzLgoKU2FtZSBpc3N1ZSB3ZXJlIHJlcG9ydGVkIHdpdGggcGx5bW91dGgvZ3J1YiwgYWx0aG91
Z2ggcGVyc29uYWxseSBJCndhc24ndCBhYmxlIHRvIGdldCB0aGVtIHRvIGJlaGF2ZSBvbiBteSBz
ZXR1cC4KClN1Z2dlc3RlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogRW1pbCBWZWxpa292IDxlbWlsLnZlbGlrb3ZAY29s
bGFib3JhLmNvbT4KLS0tCgpTdXBlcnNlZGVzCmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2RyaS1k
ZXZlbC8yMDIxMDUxNjE3MTQzMi4xNzM0MjY4LTEtZW1pbC5sLnZlbGlrb3ZAZ21haWwuY29tLwoK
VmlsbGUsIG90aGVycywKClBhdGNoIGlzIGJhc2VkIGFnYWluc3QgZHJtLWludGVsL2RybS1pbnRl
bC1uZXh0IGFuZCB3aWxsIGFwcGx5IGNsZWFubHkKYWdhaW5zdCBkcm0taW50ZWwvZHJtLWludGVs
LWZpeGVzLgoKSWYgcG9zc2libGUsIGNhbiBvbmUgb2YgdGhlIGk5MTUgbWFpbnRhaW5lcnMgYXBw
bHkgaXQgdG8gdGhlIGxhdHRlcj8KClRoYW5rcwpFbWlsCi0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF92Z2EuYyB8IDMgKysrCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRp
b25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92
Z2EuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmdhLmMKaW5kZXggYmUz
MzM2OTljNTE1Li43YmVlZjEyMDYwOTcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfdmdhLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF92Z2EuYwpAQCAtMjksNiArMjksOSBAQCB2b2lkIGludGVsX3ZnYV9kaXNhYmxlKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAlpOTE1X3JlZ190IHZnYV9yZWcgPSBpbnRl
bF92Z2FfY250cmxfcmVnKGRldl9wcml2KTsKIAl1OCBzcjE7CiAKKwlpZiAoaW50ZWxfZGVfcmVh
ZChkZXZfcHJpdiwgdmdhX3JlZykgJiBWR0FfRElTUF9ESVNBQkxFKQorCQlyZXR1cm47CisKIAkv
KiBXYUVuYWJsZVZHQUFjY2Vzc1Rocm91Z2hJT1BvcnQ6Y3RnLGVsayxpbGssc25iLGl2Yix2bHYs
aHN3ICovCiAJdmdhX2dldF91bmludGVycnVwdGlibGUocGRldiwgVkdBX1JTUkNfTEVHQUNZX0lP
KTsKIAlvdXRiKFNSMDEsIFZHQV9TUl9JTkRFWCk7Ci0tIAoyLjMxLjEKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
