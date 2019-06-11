Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B46B83C1D7
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2019 06:03:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6835B88E95;
	Tue, 11 Jun 2019 04:03:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com
 [IPv6:2607:f8b0:4864:20::543])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96B8D890F0
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2019 04:03:55 +0000 (UTC)
Received: by mail-pg1-x543.google.com with SMTP id k187so5661392pga.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2019 21:03:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ep5PT5nJYpz/Bj3Iz+6dAuGsY6URZpg14AnULVjTGA0=;
 b=bpFfon4vYGlIchwuQrRXjEjvq4/Se3d3ibjYwfYx8Bt1fDcJblh1z/0lHbyeaTginQ
 NNinGSOL1T4zvsFKhHpMtrsSg49Y1AxmfwfBi3xoRpnIFMRhera+Oxdu7TbDat5YiNMk
 ZeuJdRCabkxlgSlXXMahejo/hFQFZzWPIJe2CHMklWH+ljbm0arY3LffgC9RD11swTbK
 EsFvsTWy7QvI6BPptz/aeWBFswk8kcXA92ob52b3IjBQ5BveNbQ9FWpv2/E3g4LQF56n
 vroL9owjHkkAU/3DgMZ3eFgfmKy/oQN367DvtmK693XbawIMRvXqeCcfaULvjAO0+yKc
 YxMw==
X-Gm-Message-State: APjAAAXAGYIg/CJz2lcmiINr7pBoXIC6NyHDO8n4//anNStTMyhTtcGZ
 lBBx7zlR6POl1YbbHgJ0VQZG0w==
X-Google-Smtp-Source: APXvYqwomU3EkmGbmD6lmNUwogikv7z13A3K3b0++X/UrjCKXAXsfZu9Zj3Dxfvxg4ZWCL337q4OtA==
X-Received: by 2002:a62:e0c2:: with SMTP id d63mr21262331pfm.60.1560225835215; 
 Mon, 10 Jun 2019 21:03:55 -0700 (PDT)
Received: from exogeni.mtv.corp.google.com
 ([2620:15c:202:1:5be8:f2a6:fd7b:7459])
 by smtp.gmail.com with ESMTPSA id y133sm13301185pfb.28.2019.06.10.21.03.53
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 10 Jun 2019 21:03:54 -0700 (PDT)
From: Derek Basehore <dbasehore@chromium.org>
To: linux-kernel@vger.kernel.org
Date: Mon, 10 Jun 2019 21:03:45 -0700
Message-Id: <20190611040350.90064-1-dbasehore@chromium.org>
X-Mailer: git-send-email 2.22.0.rc2.383.gf4fbbf30c2-goog
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ep5PT5nJYpz/Bj3Iz+6dAuGsY6URZpg14AnULVjTGA0=;
 b=BPeWijeb5HdxjyxppQb40ApVn/nxLgHSyp0AL/ASYmRCiKlPLM1ddJO4q+5DVFlKJo
 M/6tW2VGGMmJt5p6uRnJYncIATIm7J5usdTrrpfDSsoiEwZOhO6s75rGbFLm+gF0M/Zu
 OXBZxzrusRa5BRO0jGY04Rtc4em07eeQ66PnQ=
Subject: [Intel-gfx] [PATCH v2 0/5] Panel rotation patches
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

VGhpcyBhZGRzIHRoZSBwbHVtYmluZyBmb3IgcmVhZGluZyBwYW5lbCByb3RhdGlvbiBmcm9tIHRo
ZSBkZXZpY2V0cmVlCmFuZCBzZXRzIHVwIGFkZGluZyBhIHBhbmVsIHByb3BlcnR5IGZvciB0aGUg
cGFuZWwgb3JpZW50YXRpb24gb24KTWVkaWF0ZWsgU29DcyB3aGVuIGEgcm90YXRpb24gaXMgcHJl
c2VudC4KCnYyIGNoYW5nZXM6CmZpeGVkIGJ1aWxkIGVycm9ycyBpbiBpOTE1CgpEZXJlayBCYXNl
aG9yZSAoNSk6CiAgZHJtL3BhbmVsOiBBZGQgaGVscGVyIGZvciByZWFkaW5nIERUIHJvdGF0aW9u
CiAgZHQtYmluZGluZ3M6IGRpc3BsYXkvcGFuZWw6IEV4cGFuZCByb3RhdGlvbiBkb2N1bWVudGF0
aW9uCiAgZHJtL3BhbmVsOiBBZGQgYXR0YWNoL2RldGFjaCBjYWxsYmFja3MKICBkcm0vY29ubmVj
dG9yOiBTcGxpdCBvdXQgb3JpZW50YXRpb24gcXVpcmsgZGV0ZWN0aW9uCiAgZHJtL210azogYWRk
IHBhbmVsIG9yaWVudGF0aW9uIHByb3BlcnR5CgogLi4uL2JpbmRpbmdzL2Rpc3BsYXkvcGFuZWwv
cGFuZWwudHh0ICAgICAgICAgIHwgMzIgKysrKysrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9kcm1f
Y29ubmVjdG9yLmMgICAgICAgICAgICAgICB8IDE2ICsrLS0tLQogZHJpdmVycy9ncHUvZHJtL2Ry
bV9wYW5lbC5jICAgICAgICAgICAgICAgICAgIHwgNTUgKysrKysrKysrKysrKysrKysrKwogZHJp
dmVycy9ncHUvZHJtL2k5MTUvdmx2X2RzaS5jICAgICAgICAgICAgICAgIHwgMTMgKysrLS0KIGRy
aXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHNpLmMgICAgICAgICAgICB8ICA4ICsrKwogaW5j
bHVkZS9kcm0vZHJtX2Nvbm5lY3Rvci5oICAgICAgICAgICAgICAgICAgIHwgIDIgKy0KIGluY2x1
ZGUvZHJtL2RybV9wYW5lbC5oICAgICAgICAgICAgICAgICAgICAgICB8IDExICsrKysKIDcgZmls
ZXMgY2hhbmdlZCwgMTIwIGluc2VydGlvbnMoKyksIDE3IGRlbGV0aW9ucygtKQoKLS0gCjIuMjIu
MC5yYzIuMzgzLmdmNGZiYmYzMGMyLWdvb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
