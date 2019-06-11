Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CE6603C05F
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2019 02:23:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2EE488E7E;
	Tue, 11 Jun 2019 00:23:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com
 [IPv6:2607:f8b0:4864:20::541])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E664388E7E
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2019 00:23:02 +0000 (UTC)
Received: by mail-pg1-x541.google.com with SMTP id 196so5892399pgc.6
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2019 17:23:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Ys/QIuTzESKgIhK+4lqN2GBOgNe/RQ4XjHnrFVNq/bg=;
 b=hnyNsFzbxfj3TuJyZEtHVQByqUAWKXPsuhVVR+rBuFBb531K8HGe+rzYZQojLax4Cd
 MPou+y7wva4qroco17cm3U2JvXeo7CJ6RFnSg9UTI4rbeo1BzlgEmTTh1Lx4ABWhAtNH
 E0M6vv/iLO3O080dE9I2ThkvqfBF/xP2zSDLGGFPVNvVtMRdeoxnqLDuHiuwNHnshA7V
 X/Pqp5+tNT6kyNXtfgEvpBLyfUogpPCYc3M24utI/0qYFGg+yyej62YBKB3DAbipSn0N
 QJVVxo1tVcobG+RjdmWXba+iC1L2aMrIOlPECBOpSabGmmTjf31pHBNCFZ7wg4NtNIQb
 f3GQ==
X-Gm-Message-State: APjAAAV6Y8E1V7ey3F+FpCcSjmI1dRsEIY4Vk81tb7rgU2ulcnmAwEiY
 RaK3mEDPEqbbvUnhTrt/+hmOdA==
X-Google-Smtp-Source: APXvYqyFDNopqPX7XaEAu7EG9CwttGgKSVT073ogwDm3kj5G1I2Zurlp7yaWcrSslQANYBeJiel1uQ==
X-Received: by 2002:a17:90a:25c8:: with SMTP id
 k66mr2852849pje.129.1560212582590; 
 Mon, 10 Jun 2019 17:23:02 -0700 (PDT)
Received: from exogeni.mtv.corp.google.com
 ([2620:15c:202:1:5be8:f2a6:fd7b:7459])
 by smtp.gmail.com with ESMTPSA id t4sm540317pjq.19.2019.06.10.17.23.00
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 10 Jun 2019 17:23:01 -0700 (PDT)
From: Derek Basehore <dbasehore@chromium.org>
To: linux-kernel@vger.kernel.org
Date: Mon, 10 Jun 2019 17:22:51 -0700
Message-Id: <20190611002256.186969-1-dbasehore@chromium.org>
X-Mailer: git-send-email 2.22.0.rc2.383.gf4fbbf30c2-goog
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Ys/QIuTzESKgIhK+4lqN2GBOgNe/RQ4XjHnrFVNq/bg=;
 b=f5ipcdNBMgeYN6xIkspolGbToPlj9rnUy85L/384p3yAVGYdbKT3rIYX2R9DTVe5DZ
 BYJNhX2Lc4MpUKIIZ8Uvygx+l7dI/iqp1tjbx6cPL9JzfUDgJZKWqECoYuYfsfw24UwA
 BoOUkWOPjP/ynt3LEWf2YKuM3gT243RbvpPTQ=
Subject: [Intel-gfx] [PATCH 0/5] Panel rotation patches
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

VGhpcyBhZGRzIHRoZSBwbHVtYmluZyBmb3IgcmVhZGluZyBwYW5lbCByb3RhdGlvbiBmcm9tIHRo
ZSBkZXZpY2V0cmVlCmFuZCBzZXRzIHVwIGFkZGluZyBhIHBhbmVsIHByb3BlcnR5IGZvciB0aGUg
cGFuZWwgb3JpZW50YXRpb24gb24KTWVkaWF0ZWsgU29DcyB3aGVuIGEgcm90YXRpb24gaXMgcHJl
c2VudC4KCkRlcmVrIEJhc2Vob3JlICg1KToKICBkcm0vcGFuZWw6IEFkZCBoZWxwZXIgZm9yIHJl
YWRpbmcgRFQgcm90YXRpb24KICBkdC1iaW5kaW5nczogZGlzcGxheS9wYW5lbDogRXhwYW5kIHJv
dGF0aW9uIGRvY3VtZW50YXRpb24KICBkcm0vcGFuZWw6IEFkZCBhdHRhY2gvZGV0YWNoIGNhbGxi
YWNrcwogIGRybS9jb25uZWN0b3I6IFNwbGl0IG91dCBvcmllbnRhdGlvbiBxdWlyayBkZXRlY3Rp
b24KICBkcm0vbXRrOiBhZGQgcGFuZWwgb3JpZW50YXRpb24gcHJvcGVydHkKCiAuLi4vYmluZGlu
Z3MvZGlzcGxheS9wYW5lbC9wYW5lbC50eHQgICAgICAgICAgfCAzMiArKysrKysrKysrKwogZHJp
dmVycy9ncHUvZHJtL2RybV9jb25uZWN0b3IuYyAgICAgICAgICAgICAgIHwgMTYgKystLS0tCiBk
cml2ZXJzL2dwdS9kcm0vZHJtX3BhbmVsLmMgICAgICAgICAgICAgICAgICAgfCA1NSArKysrKysr
KysrKysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS92bHZfZHNpLmMgICAgICAgICAgICAg
ICAgfCAxMyArKystLQogZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19kc2kuYyAgICAgICAg
ICAgIHwgIDggKysrCiBpbmNsdWRlL2RybS9kcm1fY29ubmVjdG9yLmggICAgICAgICAgICAgICAg
ICAgfCAgMiArLQogaW5jbHVkZS9kcm0vZHJtX3BhbmVsLmggICAgICAgICAgICAgICAgICAgICAg
IHwgMTEgKysrKwogNyBmaWxlcyBjaGFuZ2VkLCAxMjAgaW5zZXJ0aW9ucygrKSwgMTcgZGVsZXRp
b25zKC0pCgotLSAKMi4yMi4wLnJjMi4zODMuZ2Y0ZmJiZjMwYzItZ29vZwoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
