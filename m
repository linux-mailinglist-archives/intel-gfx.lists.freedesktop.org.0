Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 75F0D5D869
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2019 01:43:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A2C46E0A0;
	Tue,  2 Jul 2019 23:43:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com
 [IPv6:2607:f8b0:4864:20::543])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C3E76E0A2
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jul 2019 23:43:03 +0000 (UTC)
Received: by mail-pg1-x543.google.com with SMTP id 196so175486pgc.6
 for <intel-gfx@lists.freedesktop.org>; Tue, 02 Jul 2019 16:43:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BbKEAFwQNgdJMuzfiYPMlyXAsoNdsnEp4Uok88ypekU=;
 b=sNBVq3PtgwoPKOteXsqgkCFRGZbz4E0VmdUmzAPR/oRnwXeqVImyBpa0NjGEP75OL6
 eYU7WriEobxrVDgBZ0mGjj74SYW20f2+TeB2ZuqyhH+pSwHOax0v2coe6Xdl9z+piUa2
 PlHQAeFcgeqYHT9FVglo9s/6F1XUUr8rVpLfieXM1aOQ9G7kOalzg0tYxL2hNBUYa9xG
 15QPoC7TwlCx4DGOPfnbtOi7J8isA7OXYTV82p7g0ohlsAU4cNPZenTl9Fi6yLLuEqw1
 R+Yiv+PWr/NYIDDN3Jo/63E3JvU3m926psZwrknktqCZXjUK2nio6OEeUb3/vikAMcs2
 N1tg==
X-Gm-Message-State: APjAAAXEqIEjHjo5+UOxSQSYPQUyS+LahhWNsiZeXZorWXlpbzbOh6+e
 Dx344ktHdoK+NIcIua7q/fs7Qg==
X-Google-Smtp-Source: APXvYqzlQqAaaA9TlBYcDIIcItk2Sbug9JeUuEIc7DDU9bCUWN1kFgrxSAljeRrXbuNEk+5pPKxVXA==
X-Received: by 2002:a17:90a:32c7:: with SMTP id
 l65mr8573547pjb.1.1562110982720; 
 Tue, 02 Jul 2019 16:43:02 -0700 (PDT)
Received: from exogeni.mtv.corp.google.com
 ([2620:15c:202:1:5be8:f2a6:fd7b:7459])
 by smtp.gmail.com with ESMTPSA id c26sm167611pfr.172.2019.07.02.16.43.00
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 02 Jul 2019 16:43:01 -0700 (PDT)
From: Derek Basehore <dbasehore@chromium.org>
To: linux-kernel@vger.kernel.org
Date: Tue,  2 Jul 2019 16:42:54 -0700
Message-Id: <20190702234258.136349-1-dbasehore@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BbKEAFwQNgdJMuzfiYPMlyXAsoNdsnEp4Uok88ypekU=;
 b=dzRWt1d0cH9OT8aIY2cfNcZP1PY8roOuwd7uTGeLkG0cZl8zRBQFiUDispqLSA/UuQ
 7qtogcL/XgZ4GiHoPPdi2jdl9O8tG/VgyjT9Dvw6mhdOaxNhTFFazxDQ55AxHlhv/wMv
 Zs28goiGB3utYWKBKTNH2WzG18bLyrlTHqcBQ=
Subject: [Intel-gfx] [PATCH v4 0/4] Panel rotation patches
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
c2VudC4KCnY0IGNoYW5nZXM6Ci1maXhlZCBzb21lIGNoYW5nZXMgbWFkZSB0byB0aGUgaTkxNSBk
cml2ZXIKLWNsYXJpZmllZCBjb21tZW50cyBvbiBvZiBvcmllbnRhdGlvbiBoZWxwZXIKCnYzIGNo
YW5nZXM6Ci1jaGFuZ2VkIGZyb20gYXR0YWNoL2RldGFjaCBjYWxsYmFja3MgdG8gZGlyZWN0bHkg
c2V0dGluZyBmaXhlZCBwYW5lbAogdmFsdWVzIGluIGRybV9wYW5lbF9hdHRhY2gKLXJlbW92ZWQg
dXBkYXRlIHRvIERvY3VtZW50YXRpb24KLWFkZGVkIHNlcGFyYXRlIGZ1bmN0aW9uIGZvciBxdWly
a2VkIHBhbmVsIG9yaWVudGF0aW9uIHByb3BlcnR5IGluaXQKCnYyIGNoYW5nZXM6CmZpeGVkIGJ1
aWxkIGVycm9ycyBpbiBpOTE1CgpEZXJlayBCYXNlaG9yZSAoNCk6CiAgZHJtL3BhbmVsOiBBZGQg
aGVscGVyIGZvciByZWFkaW5nIERUIHJvdGF0aW9uCiAgZHJtL3BhbmVsOiBzZXQgZGlzcGxheSBp
bmZvIGluIHBhbmVsIGF0dGFjaAogIGRybS9jb25uZWN0b3I6IFNwbGl0IG91dCBvcmllbnRhdGlv
biBxdWlyayBkZXRlY3Rpb24KICBkcm0vbXRrOiBhZGQgcGFuZWwgb3JpZW50YXRpb24gcHJvcGVy
dHkKCiBkcml2ZXJzL2dwdS9kcm0vZHJtX2Nvbm5lY3Rvci5jICAgIHwgNDUgKysrKysrKysrKysr
KystLS0tLQogZHJpdmVycy9ncHUvZHJtL2RybV9wYW5lbC5jICAgICAgICB8IDcwICsrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHAuYyAg
ICB8ICA0ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS92bHZfZHNpLmMgICAgIHwgIDUgKy0tCiBk
cml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RzaS5jIHwgIDggKysrKwogaW5jbHVkZS9kcm0v
ZHJtX2Nvbm5lY3Rvci5oICAgICAgICB8ICAyICsKIGluY2x1ZGUvZHJtL2RybV9wYW5lbC5oICAg
ICAgICAgICAgfCAyMSArKysrKysrKysKIDcgZmlsZXMgY2hhbmdlZCwgMTM4IGluc2VydGlvbnMo
KyksIDE3IGRlbGV0aW9ucygtKQoKLS0gCjIuMjIuMC40MTAuZ2Q4ZmRiZTIxYjUtZ29vZwoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
