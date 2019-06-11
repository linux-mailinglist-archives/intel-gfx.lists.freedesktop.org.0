Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82F1E3C1D9
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2019 06:04:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D67A890F0;
	Tue, 11 Jun 2019 04:03:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com
 [IPv6:2607:f8b0:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 113B189129
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2019 04:03:58 +0000 (UTC)
Received: by mail-pf1-x444.google.com with SMTP id s11so6515360pfm.12
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2019 21:03:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ys0DSil+WvCMaDGevz2dSiLwFPZR4jwAs4InRe1vZNA=;
 b=WFcbc3nvqBrJ4eusEeo4jxbwVW2a+Bs+sBEU4bEFD7Ah7EWZoklvDGomj6gw7C3Mvq
 zZfkfvBmqsAE9xiHZwQWdu+3bSkWSM8VKqK8+JUajW5MtrkDTv/Sv6t5Ds7hQBnYPqUr
 oebAlW4+aIZomofYsFqgw5SJgzAHg/i0k48NK7JpGhRkLXEQ9EmaFo4znsAYtKs0P++N
 VHMv8bZ9ahaVbKti254NDViWqOjnFhTNyy+nTZI/1ID7bpO5WHnoXtzBdoWMjmrkuWSx
 aL6SyH852VL2Gh08JiFkYr4wQ3q4/Y2Q68BCvHM05MLHfKkwuu3/iAOTP+IGJgYrKk3K
 pMEA==
X-Gm-Message-State: APjAAAV4Qcu9nDEQRZ6YWi1iaKwETrKpfcolajtreaPWK64aybTVkj39
 f5c2R3/MPJLFhjqMOL81Ob+zgQ==
X-Google-Smtp-Source: APXvYqztkWgDwmpShVmNY3JX/yoLvhlQG+pv1dg44RWOiGpLZ5kd7o3wLJ474CqYq7S74tPbVuKsCw==
X-Received: by 2002:aa7:825a:: with SMTP id e26mr79303252pfn.255.1560225837698; 
 Mon, 10 Jun 2019 21:03:57 -0700 (PDT)
Received: from exogeni.mtv.corp.google.com
 ([2620:15c:202:1:5be8:f2a6:fd7b:7459])
 by smtp.gmail.com with ESMTPSA id y133sm13301185pfb.28.2019.06.10.21.03.56
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 10 Jun 2019 21:03:57 -0700 (PDT)
From: Derek Basehore <dbasehore@chromium.org>
To: linux-kernel@vger.kernel.org
Date: Mon, 10 Jun 2019 21:03:47 -0700
Message-Id: <20190611040350.90064-3-dbasehore@chromium.org>
X-Mailer: git-send-email 2.22.0.rc2.383.gf4fbbf30c2-goog
In-Reply-To: <20190611040350.90064-1-dbasehore@chromium.org>
References: <20190611040350.90064-1-dbasehore@chromium.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ys0DSil+WvCMaDGevz2dSiLwFPZR4jwAs4InRe1vZNA=;
 b=NpIiYZAZ293e5siqen5Oz27pVJuQEiqx/skxzzgF9MmBRxj1DCy5igwLq3xQY5fLt4
 6ijSQMHl5nqD2CEkVoKO7bNwFt2FMABbPicsIoQ+6XGy1CrK43ONHRMIiygoP/GBi1Tx
 mpT3cNIEtjV+ei2btpQJ+tOS5TF+m8OjwvjZ4=
Subject: [Intel-gfx] [PATCH 2/5] dt-bindings: display/panel: Expand rotation
 documentation
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Derek Basehore <dbasehore@chromium.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 intel-gfx@lists.freedesktop.org, Maxime Ripard <maxime.ripard@bootlin.com>,
 Rob Herring <robh+dt@kernel.org>, dri-devel@lists.freedesktop.org,
 CK Hu <ck.hu@mediatek.com>, linux-mediatek@lists.infradead.org,
 Sam Ravnborg <sam@ravnborg.org>, linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBhZGRzIHRvIHRoZSByb3RhdGlvbiBkb2N1bWVudGF0aW9uIHRvIGV4cGxhaW4gaG93IGRy
aXZlcnMgc2hvdWxkCnVzZSB0aGUgcHJvcGVydHkgYW5kIGdpdmVzIGFuIGV4YW1wbGUgb2YgdGhl
IHByb3BlcnR5IGluIGEgZGV2aWNldHJlZQpub2RlLgoKU2lnbmVkLW9mZi1ieTogRGVyZWsgQmFz
ZWhvcmUgPGRiYXNlaG9yZUBjaHJvbWl1bS5vcmc+Ci0tLQogLi4uL2JpbmRpbmdzL2Rpc3BsYXkv
cGFuZWwvcGFuZWwudHh0ICAgICAgICAgIHwgMzIgKysrKysrKysrKysrKysrKysrKwogMSBmaWxl
IGNoYW5nZWQsIDMyIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9wYW5lbC9wYW5lbC50eHQgYi9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9wYW5lbC9wYW5lbC50eHQKaW5kZXggZTJlNjg2
Nzg1MmI4Li5mMzVkNjJkOTMzZmMgMTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9kaXNwbGF5L3BhbmVsL3BhbmVsLnR4dAorKysgYi9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9wYW5lbC9wYW5lbC50eHQKQEAgLTIsMyArMiwzNSBA
QCBDb21tb24gZGlzcGxheSBwcm9wZXJ0aWVzCiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiAK
IC0gcm90YXRpb246CURpc3BsYXkgcm90YXRpb24gaW4gZGVncmVlcyBjb3VudGVyIGNsb2Nrd2lz
ZSAoMCw5MCwxODAsMjcwKQorCitQcm9wZXJ0eSByZWFkIGZyb20gdGhlIGRldmljZSB0cmVlIHVz
aW5nIG9mIG9mX2RybV9nZXRfcGFuZWxfb3JpZW50YXRpb24KKworVGhlIHBhbmVsIGRyaXZlciBt
YXkgYXBwbHkgdGhlIHJvdGF0aW9uIGF0IHRoZSBUQ09OIGxldmVsLCB3aGljaCB3aWxsCittYWtl
IHRoZSBwYW5lbCBsb29rIGxpa2UgaXQgaXNuJ3Qgcm90YXRlZCB0byB0aGUga2VybmVsIGFuZCBh
bnkgb3RoZXIKK3NvZnR3YXJlLgorCitJZiBub3QsIGEgcGFuZWwgb3JpZW50YXRpb24gcHJvcGVy
dHkgc2hvdWxkIGJlIGFkZGVkIHRocm91Z2ggdGhlIFNvQwordmVuZG9yIERSTSBjb2RlIHVzaW5n
IHRoZSBkcm1fY29ubmVjdG9yX2luaXRfcGFuZWxfb3JpZW50YXRpb25fcHJvcGVydHkKK2Z1bmN0
aW9uLgorCitFeGFtcGxlOgorCXBhbmVsOiBwYW5lbEAwIHsKKwkJY29tcGF0aWJsZSA9ICJib2Us
aGltYXg4Mjc5ZDhwIjsKKwkJcmVnID0gPDA+OworCQllbmFibGUtZ3Bpb3MgPSA8JnBpbyA0NSAw
PjsKKwkJcHAzMy1ncGlvcyA9IDwmcGlvIDM1IDA+OworCQlwcDE4LWdwaW9zID0gPCZwaW8gMzYg
MD47CisJCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCIsICJzdGF0ZV8zMzAwbXYiLCAic3RhdGVf
MTgwMG12IjsKKwkJcGluY3RybC0wID0gPCZwYW5lbF9waW5zX2RlZmF1bHQ+OworCQlwaW5jdHJs
LTEgPSA8JnBhbmVsX3BpbnNfMzMwMG12PjsKKwkJcGluY3RybC0yID0gPCZwYW5lbF9waW5zXzE4
MDBtdj47CisJCWJhY2tsaWdodCA9IDwmYmFja2xpZ2h0X2xjZDA+OworCQlyb3RhdGlvbiA9IDwx
ODA+OworCQlzdGF0dXMgPSAib2theSI7CisKKwkJcG9ydCB7CisJCQlwYW5lbF9pbjogZW5kcG9p
bnQgeworCQkJCXJlbW90ZS1lbmRwb2ludCA9IDwmZHNpX291dD47CisJCQl9OworCQl9OworCX07
Ci0tIAoyLjIyLjAucmMyLjM4My5nZjRmYmJmMzBjMi1nb29nCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
