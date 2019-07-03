Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E7275EF5A
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jul 2019 01:02:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 988616E20D;
	Wed,  3 Jul 2019 23:02:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com
 [IPv6:2607:f8b0:4864:20::641])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D7866E207
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jul 2019 23:02:15 +0000 (UTC)
Received: by mail-pl1-x641.google.com with SMTP id ay6so1990103plb.9
 for <intel-gfx@lists.freedesktop.org>; Wed, 03 Jul 2019 16:02:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1ZrZzCDWL8uR9GukOyNtVnJ0nmZVvvWXcGkMP18atyY=;
 b=h1JCveB1+EDhjxzl1ROrX4eUI9miJAfAYKtvYZ81xrc7kHrNvTy8oRpiaY4b+I2mic
 1RMBxvL4FZe70A4kJaNDfbqBO8A0x14owrlxbssZaLxctsFziz90zQVkqn6K9O4P+wkx
 XBO5uU9RkQLCp4D3EstVM36GZ5DQdos9Ykb2wx4ZVuUJsQM4cRpLCD/YuF0WrP3axYWE
 9e6tu+wkfDmry8D9puHTpjm3jNdFDrz3k9htCQToSmAYx5M0CH7Y2/ZV/V+bOOhdIvyX
 XGpeF5NN4IdeYSu91QfH3ggBrk41eginfR5vBTwVTlHfcJj7f7nUVLVFtUqqppEeduIp
 pcEg==
X-Gm-Message-State: APjAAAU9n1KXxos3IQjNmR9ot7e2KtKA3z5lhrdOJdaGPQwfziCjK77A
 ng3R/LphxPNWFD5IJX9HwaQTKA==
X-Google-Smtp-Source: APXvYqwM3KsV4pYEtclP2v6OFHEPEkTQxv4xInN46kPm5Ul21is2Kyu5NnJ0VVIbZBrV9EgR7m7IMw==
X-Received: by 2002:a17:902:16f:: with SMTP id
 102mr43528588plb.94.1562194934905; 
 Wed, 03 Jul 2019 16:02:14 -0700 (PDT)
Received: from exogeni.mtv.corp.google.com
 ([2620:15c:202:1:5be8:f2a6:fd7b:7459])
 by smtp.gmail.com with ESMTPSA id t8sm4245171pfq.31.2019.07.03.16.02.13
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 03 Jul 2019 16:02:13 -0700 (PDT)
From: Derek Basehore <dbasehore@chromium.org>
To: linux-kernel@vger.kernel.org
Date: Wed,  3 Jul 2019 16:02:06 -0700
Message-Id: <20190703230210.85342-1-dbasehore@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1ZrZzCDWL8uR9GukOyNtVnJ0nmZVvvWXcGkMP18atyY=;
 b=mtOVyYmG2IzpmlsHOH/bFwJl21qcA8lVJRKpae+DMHwii9l1x+40yEervyi7qpqpr4
 hB3hlY3oPRMK55uHK1HYswgIkYyVHxU6REHY5Rgc5rlePiDU4gDvgc2YkR5l77Prg3Cc
 W/Ejps3fU5hazueodIieCVdr1ZyHbm6gx14qQ=
Subject: [Intel-gfx] [PATCH v5 0/4] Panel rotation patches
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

VGhpcyBhZGRzIHRoZSBwbHVtYmluZyBmb3IgcmVhZGluZyBwYW5lbCByb3RhdGlvbiBmcm9tIHRo
ZSBkZXZpY2V0cmVlCmFuZCBzZXRzIHVwIGFkZGluZyBhIHBhbmVsIHByb3BlcnR5IGZvciB0aGUg
cGFuZWwgb3JpZW50YXRpb24gb24KTWVkaWF0ZWsgU29DcyB3aGVuIGEgcm90YXRpb24gaXMgcHJl
c2VudC4KCnY1IGNoYW5nZXM6Ci1yZWJhc2VkCgp2NCBjaGFuZ2VzOgotZml4ZWQgc29tZSBjaGFu
Z2VzIG1hZGUgdG8gdGhlIGk5MTUgZHJpdmVyCi1jbGFyaWZpZWQgY29tbWVudHMgb24gb2Ygb3Jp
ZW50YXRpb24gaGVscGVyCgp2MyBjaGFuZ2VzOgotY2hhbmdlZCBmcm9tIGF0dGFjaC9kZXRhY2gg
Y2FsbGJhY2tzIHRvIGRpcmVjdGx5IHNldHRpbmcgZml4ZWQgcGFuZWwKIHZhbHVlcyBpbiBkcm1f
cGFuZWxfYXR0YWNoCi1yZW1vdmVkIHVwZGF0ZSB0byBEb2N1bWVudGF0aW9uCi1hZGRlZCBzZXBh
cmF0ZSBmdW5jdGlvbiBmb3IgcXVpcmtlZCBwYW5lbCBvcmllbnRhdGlvbiBwcm9wZXJ0eSBpbml0
Cgp2MiBjaGFuZ2VzOgpmaXhlZCBidWlsZCBlcnJvcnMgaW4gaTkxNQoKRGVyZWsgQmFzZWhvcmUg
KDQpOgogIGRybS9wYW5lbDogQWRkIGhlbHBlciBmb3IgcmVhZGluZyBEVCByb3RhdGlvbgogIGRy
bS9wYW5lbDogc2V0IGRpc3BsYXkgaW5mbyBpbiBwYW5lbCBhdHRhY2gKICBkcm0vY29ubmVjdG9y
OiBTcGxpdCBvdXQgb3JpZW50YXRpb24gcXVpcmsgZGV0ZWN0aW9uCiAgZHJtL210azogYWRkIHBh
bmVsIG9yaWVudGF0aW9uIHByb3BlcnR5CgogZHJpdmVycy9ncHUvZHJtL2RybV9jb25uZWN0b3Iu
YyAgICB8IDQ1ICsrKysrKysrKysrKysrLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9kcm1fcGFuZWwu
YyAgICAgICAgfCA3MCArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX2RwLmMgICAgfCAgNCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvdmx2
X2RzaS5jICAgICB8ICA1ICstLQogZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19kc2kuYyB8
ICA4ICsrKysKIGluY2x1ZGUvZHJtL2RybV9jb25uZWN0b3IuaCAgICAgICAgfCAgMiArCiBpbmNs
dWRlL2RybS9kcm1fcGFuZWwuaCAgICAgICAgICAgIHwgMjEgKysrKysrKysrCiA3IGZpbGVzIGNo
YW5nZWQsIDEzOCBpbnNlcnRpb25zKCspLCAxNyBkZWxldGlvbnMoLSkKCi0tIAoyLjIyLjAuNDEw
LmdkOGZkYmUyMWI1LWdvb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
