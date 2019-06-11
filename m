Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60A223C061
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2019 02:23:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7996E89137;
	Tue, 11 Jun 2019 00:23:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com
 [IPv6:2607:f8b0:4864:20::541])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A515C89135
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2019 00:23:07 +0000 (UTC)
Received: by mail-pg1-x541.google.com with SMTP id w34so5875276pga.12
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2019 17:23:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ys0DSil+WvCMaDGevz2dSiLwFPZR4jwAs4InRe1vZNA=;
 b=HRZPG1fS0/b0UZAcMLgQsUJQ9p9tH2/q1QyaJFu7GPP5JD/dXXSnaCniNm0YgmxiFL
 VrgIxx8x0YbfxdxQoWSZ5xce5W50lPQ60tLcuMbJfaqVH6VVhfr4k8Kge14Teoh6Mv2n
 a5xWo+D2zKQnCYRb8OW2R4WtdO928FmdUkDPFUHFSKuVrCCPYcX0VneVwTCg4O2kmc8E
 dMDw2YW+o/cayh8B95R6iA2k66rf+gKqC12eAeAPm1SUvKuMryYO4FvLc1NTpHaufvdU
 j++zLTeR9ItTvP+8uCJdIT56xbwstQcP6l5zqyLlZcOnfebjIwurcopvzK81ZjRxNHk7
 YPPw==
X-Gm-Message-State: APjAAAWQWrUAHHPOI3vSJIZP+6BtYsRtTN1BFqz20Knp8aurm53tEb90
 Ffe99x7Cf1CSByQ3BOwQCS6c4A==
X-Google-Smtp-Source: APXvYqxAc42hyNbAAjVSUHVWNoM3DB7fjZVsqMVi9qbCUz/7kQyXOOCdI5Fe02ZPTYUapCArvj8xLA==
X-Received: by 2002:a62:7552:: with SMTP id q79mr57521992pfc.71.1560212587343; 
 Mon, 10 Jun 2019 17:23:07 -0700 (PDT)
Received: from exogeni.mtv.corp.google.com
 ([2620:15c:202:1:5be8:f2a6:fd7b:7459])
 by smtp.gmail.com with ESMTPSA id t4sm540317pjq.19.2019.06.10.17.23.06
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 10 Jun 2019 17:23:06 -0700 (PDT)
From: Derek Basehore <dbasehore@chromium.org>
To: linux-kernel@vger.kernel.org
Date: Mon, 10 Jun 2019 17:22:53 -0700
Message-Id: <20190611002256.186969-3-dbasehore@chromium.org>
X-Mailer: git-send-email 2.22.0.rc2.383.gf4fbbf30c2-goog
In-Reply-To: <20190611002256.186969-1-dbasehore@chromium.org>
References: <20190611002256.186969-1-dbasehore@chromium.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ys0DSil+WvCMaDGevz2dSiLwFPZR4jwAs4InRe1vZNA=;
 b=X12Jn3AUd//JNQCTWSBR6eh9r650AWw9Xjg7KpO0V+0SA2HdJEsEae1jQkqDPHyQKe
 F9jkL7x/7/FbANfIR4mwRASAg6AXFvQesI26VoF7tgXODbVqSvH4TDWixSqzy/8t/2Oe
 o6kb4qUN0UwhrIOg/a3lFqtIXvRAqNQYOcNrA=
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
Cc: Derek Basehore <dbasehore@chromium.org>, p.zabel@pengutronix.de,
 maxime.ripard@bootlin.com, sam@ravnborg.org, intel-gfx@lists.freedesktop.org,
 airlied@linux.ie, matthias.bgg@gmail.com, dri-devel@lists.freedesktop.org,
 ck.hu@mediatek.com, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
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
