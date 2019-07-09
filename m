Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1882963E18
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 00:58:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD05A89930;
	Tue,  9 Jul 2019 22:58:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com
 [IPv6:2607:f8b0:4864:20::543])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0F6889930
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 22:58:45 +0000 (UTC)
Received: by mail-pg1-x543.google.com with SMTP id i8so170890pgm.13
 for <intel-gfx@lists.freedesktop.org>; Tue, 09 Jul 2019 15:58:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VfBNRjMW96lNOTO1+wc8G+mqG3/RxD26VY8ohNb7l7s=;
 b=dQtYeXfD69PRwLue6lgvHytoqxaCVaYUNg1j3baz/gUOriQpekBpwwX2zF6i/T/LRx
 IVM4zHpMegjBATVIwOoB7207Y/WAhwygITRgEDClfOmQ3tO+UADnAudquhtbd0jd3aBZ
 zj+NV77/G6kkIIZjF93MoxLc2HREBGLKG4Ujv3S9eIF8+rG4JWMhM0Tbel8s49INIWhf
 eVcln1Ae7Y5cQFiY6hsme/OsdEwynn1nbsjX5zj3VWFiilUCcgTP3nu1pqSbYdOJfaEG
 SDArwwU7+hlF72qOxD1qw6McnlUePZThBruv9LfTA+0TQb80CIx1+V0x6M2alAByy5o4
 REpQ==
X-Gm-Message-State: APjAAAVOxdBDi3JQCzLMr4tPx7RGPe5fpNFmPpHGUL8okdn/evLzXvRN
 ux7LIPwbNcN7lZXGAeYGvTe5WA==
X-Google-Smtp-Source: APXvYqzHCjdRgs8T2Gzw/2FP8RssoOjRLpdQrKxiGCNwSt8p03lTof0IAKIZqNN5ejjfFbu9SwHkpQ==
X-Received: by 2002:a17:90a:20c6:: with SMTP id
 f64mr2812506pjg.57.1562713125358; 
 Tue, 09 Jul 2019 15:58:45 -0700 (PDT)
Received: from exogeni.mtv.corp.google.com
 ([2620:15c:202:1:5be8:f2a6:fd7b:7459])
 by smtp.gmail.com with ESMTPSA id 201sm152939pfz.24.2019.07.09.15.58.43
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 09 Jul 2019 15:58:44 -0700 (PDT)
From: Derek Basehore <dbasehore@chromium.org>
To: linux-kernel@vger.kernel.org
Date: Tue,  9 Jul 2019 15:58:36 -0700
Message-Id: <20190709225840.144038-1-dbasehore@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VfBNRjMW96lNOTO1+wc8G+mqG3/RxD26VY8ohNb7l7s=;
 b=g+2aDXwaj0DzsFicoZrXvoungL+MWOPC0VtEH2gPXuj8zlNnwwgyIhkxF0bkqpoWcm
 8TboO6bKfQEBXG8g8wp2IMRGW/TvAviOydq287DyBpvxHMXEz6+WOc0/hqAIcJYCcTju
 BoRstaqm8JPuzjtT4y8KqxFrOGp53xRR93cJ8=
Subject: [Intel-gfx] [PATCH v6 0/4] Panel rotation patches
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
c2VudC4KCnY2IGNoYW5nZXM6Ci1hZGRlZCBlbnVtIGRlY2xhcmF0aW9uIHRvIGRybV9wYW5lbC5o
IGhlYWRlcgoKdjUgY2hhbmdlczoKLXJlYmFzZWQKCnY0IGNoYW5nZXM6Ci1maXhlZCBzb21lIGNo
YW5nZXMgbWFkZSB0byB0aGUgaTkxNSBkcml2ZXIKLWNsYXJpZmllZCBjb21tZW50cyBvbiBvZiBv
cmllbnRhdGlvbiBoZWxwZXIKCnYzIGNoYW5nZXM6Ci1jaGFuZ2VkIGZyb20gYXR0YWNoL2RldGFj
aCBjYWxsYmFja3MgdG8gZGlyZWN0bHkgc2V0dGluZyBmaXhlZCBwYW5lbAogdmFsdWVzIGluIGRy
bV9wYW5lbF9hdHRhY2gKLXJlbW92ZWQgdXBkYXRlIHRvIERvY3VtZW50YXRpb24KLWFkZGVkIHNl
cGFyYXRlIGZ1bmN0aW9uIGZvciBxdWlya2VkIHBhbmVsIG9yaWVudGF0aW9uIHByb3BlcnR5IGlu
aXQKCnYyIGNoYW5nZXM6CmZpeGVkIGJ1aWxkIGVycm9ycyBpbiBpOTE1CgpEZXJlayBCYXNlaG9y
ZSAoNCk6CiAgZHJtL3BhbmVsOiBBZGQgaGVscGVyIGZvciByZWFkaW5nIERUIHJvdGF0aW9uCiAg
ZHJtL3BhbmVsOiBzZXQgZGlzcGxheSBpbmZvIGluIHBhbmVsIGF0dGFjaAogIGRybS9jb25uZWN0
b3I6IFNwbGl0IG91dCBvcmllbnRhdGlvbiBxdWlyayBkZXRlY3Rpb24KICBkcm0vbXRrOiBhZGQg
cGFuZWwgb3JpZW50YXRpb24gcHJvcGVydHkKCiBkcml2ZXJzL2dwdS9kcm0vZHJtX2Nvbm5lY3Rv
ci5jICAgIHwgNDUgKysrKysrKysrKysrKystLS0tLQogZHJpdmVycy9ncHUvZHJtL2RybV9wYW5l
bC5jICAgICAgICB8IDcwICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwogZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfZHAuYyAgICB8ICA0ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS92
bHZfZHNpLmMgICAgIHwgIDUgKy0tCiBkcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RzaS5j
IHwgIDggKysrKwogaW5jbHVkZS9kcm0vZHJtX2Nvbm5lY3Rvci5oICAgICAgICB8ICAyICsKIGlu
Y2x1ZGUvZHJtL2RybV9wYW5lbC5oICAgICAgICAgICAgfCAyMSArKysrKysrKysKIDcgZmlsZXMg
Y2hhbmdlZCwgMTM4IGluc2VydGlvbnMoKyksIDE3IGRlbGV0aW9ucygtKQoKLS0gCjIuMjIuMC40
MTAuZ2Q4ZmRiZTIxYjUtZ29vZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
