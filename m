Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ECE0BE890
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2019 00:58:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07A706EE07;
	Wed, 25 Sep 2019 22:58:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com
 [IPv6:2607:f8b0:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 512EE6EDF0
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2019 22:58:39 +0000 (UTC)
Received: by mail-pf1-x444.google.com with SMTP id y72so408438pfb.12
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2019 15:58:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=OBfAYVzrUaZx8A81lQKWZtaimNSs6Q4Prkr1zyCu8Sk=;
 b=qdm3S044VnzvSQxofPoWxi15+WWvjpPzlfGBDVAgttHSTU3UufaxZyynjGhvJQGFAO
 48W7O+7T1IexkkIMUJya/61pqtULmYg1MtLgXEEfqUm9BocmJDuaS7USeE5bWM8nnaRX
 HwZTwf/vf/wONmjXjQ49jJiMlOBWDo1IaxiGrxYXMujZrFrzi8Y7n9qEMh6OXSJJAqwH
 fSTaAUyyvzmMV2I3zQ/FqYK0PBtCDkeX3lLPemmy4oAp7AZyrz+x51yclCS58X5C++S0
 rtJhB9HOGdbdwjccCw6XjEhtL3OznSFN/LNx+PzW8beEtmQK1ALO+ZZzuibTJzVk1ysR
 f8QQ==
X-Gm-Message-State: APjAAAXACrp6hOx4Gw5lfolDNEJAZTjOmFGO1/MmsOz8Lxo4Y1RmXyDP
 6nAgDQQVcHyAl1wREyg7pJkGMA==
X-Google-Smtp-Source: APXvYqyBkPb/ka6PSD+JEb9aEIXdZQPZKoux3UfNWddn261c/1mhYqrBDYlaAvmnqxOn2W4DIIYmEQ==
X-Received: by 2002:a65:420d:: with SMTP id c13mr260391pgq.293.1569452318669; 
 Wed, 25 Sep 2019 15:58:38 -0700 (PDT)
Received: from exogeni.mtv.corp.google.com
 ([2620:15c:202:1:5be8:f2a6:fd7b:7459])
 by smtp.gmail.com with ESMTPSA id j24sm76185pff.71.2019.09.25.15.58.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Sep 2019 15:58:37 -0700 (PDT)
From: Derek Basehore <dbasehore@chromium.org>
To: linux-kernel@vger.kernel.org
Date: Wed, 25 Sep 2019 15:58:29 -0700
Message-Id: <20190925225833.7310-1-dbasehore@chromium.org>
X-Mailer: git-send-email 2.23.0.351.gc4317032e6-goog
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=OBfAYVzrUaZx8A81lQKWZtaimNSs6Q4Prkr1zyCu8Sk=;
 b=lnwzlxaOGXON5kJ+mJtUQcGIZKlxrNequk5F3hmYazLKV6g7hVjA4zue24ICSCflnJ
 TKbxKfS27WL3LmgHu6tGZzEsOKLplx7ahSTC12La2RWxtT71Bg5QSABWFvbHMg+cKhUb
 Z23L/NT/IQHnf3aCqP6reQvCq6mvnOL9t8NLk=
Subject: [Intel-gfx] [PATCH v8 0/4] Panel rotation patches
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
c2VudC4KCnY4IGNoYW5nZXM6Ci1hZGRlZCByZXZpZXdlZC1ieSB0YWdzCi1maXhlZCBjb25mbGlj
dCB3aXRoIGk5MTUgcGF0Y2ggdGhhdCByZWNlbnRseSBsYW5kZWQKLUFkZGVkIGFkZGl0aW9uYWwg
ZG9jdW1lbnRhdGlvbgoKdjcgY2hhbmdlczoKLWZvcmdvdCB0byBhZGQgc3RhdGljIGlubGluZQoK
djYgY2hhbmdlczoKLWFkZGVkIGVudW0gZGVjbGFyYXRpb24gdG8gZHJtX3BhbmVsLmggaGVhZGVy
Cgp2NSBjaGFuZ2VzOgotcmViYXNlZAoKdjQgY2hhbmdlczoKLWZpeGVkIHNvbWUgY2hhbmdlcyBt
YWRlIHRvIHRoZSBpOTE1IGRyaXZlcgotY2xhcmlmaWVkIGNvbW1lbnRzIG9uIG9mIG9yaWVudGF0
aW9uIGhlbHBlcgoKdjMgY2hhbmdlczoKLWNoYW5nZWQgZnJvbSBhdHRhY2gvZGV0YWNoIGNhbGxi
YWNrcyB0byBkaXJlY3RseSBzZXR0aW5nIGZpeGVkIHBhbmVsCiB2YWx1ZXMgaW4gZHJtX3BhbmVs
X2F0dGFjaAotcmVtb3ZlZCB1cGRhdGUgdG8gRG9jdW1lbnRhdGlvbgotYWRkZWQgc2VwYXJhdGUg
ZnVuY3Rpb24gZm9yIHF1aXJrZWQgcGFuZWwgb3JpZW50YXRpb24gcHJvcGVydHkgaW5pdAoKdjIg
Y2hhbmdlczoKZml4ZWQgYnVpbGQgZXJyb3JzIGluIGk5MTUKCkRlcmVrIEJhc2Vob3JlICg0KToK
ICBkcm0vcGFuZWw6IEFkZCBoZWxwZXIgZm9yIHJlYWRpbmcgRFQgcm90YXRpb24KICBkcm0vcGFu
ZWw6IHNldCBkaXNwbGF5IGluZm8gaW4gcGFuZWwgYXR0YWNoCiAgZHJtL2Nvbm5lY3RvcjogU3Bs
aXQgb3V0IG9yaWVudGF0aW9uIHF1aXJrIGRldGVjdGlvbgogIGRybS9tdGs6IGFkZCBwYW5lbCBv
cmllbnRhdGlvbiBwcm9wZXJ0eQoKIGRyaXZlcnMvZ3B1L2RybS9kcm1fY29ubmVjdG9yLmMgICAg
fCA0NSArKysrKysrKysrKysrKy0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vZHJtX3BhbmVsLmMgICAg
ICAgIHwgNzAgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9kcC5jICAgIHwgIDQgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L3Zsdl9kc2ku
YyAgICAgfCAgNSArLS0KIGRyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHNpLmMgfCAgOCAr
KysrCiBpbmNsdWRlL2RybS9kcm1fY29ubmVjdG9yLmggICAgICAgIHwgIDIgKwogaW5jbHVkZS9k
cm0vZHJtX3BhbmVsLmggICAgICAgICAgICB8IDIxICsrKysrKysrKwogNyBmaWxlcyBjaGFuZ2Vk
LCAxMzggaW5zZXJ0aW9ucygrKSwgMTcgZGVsZXRpb25zKC0pCgotLSAKMi4yMi4wLjQxMC5nZDhm
ZGJlMjFiNS1nb29nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
