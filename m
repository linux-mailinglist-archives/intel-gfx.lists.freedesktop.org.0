Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3C41BE893
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2019 00:58:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BB916EE20;
	Wed, 25 Sep 2019 22:58:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com
 [IPv6:2607:f8b0:4864:20::544])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C2426EDF0
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2019 22:58:42 +0000 (UTC)
Received: by mail-pg1-x544.google.com with SMTP id o10so200717pgs.6
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2019 15:58:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=e54uTjhrMjS+i3uZjyZOFqJvo1DiLqu+QVKk06QE/rE=;
 b=JIBomxac13HvtXHZcNr6JQWOgsF7ZOTYwBGLVoU7tvILHpTWOuyocpZr2mb4ikyj7n
 7oFBvxxF+zWBgKqglvfympEN8b1JWHQeqGjetrJso1ksxRmzRmmlDNk+MVzJ0n+KB/PZ
 yGC9dk68zWh0eA73amMjxiN5TQgqbVMfE69h3Jbb9vmkJtMlz66XBuOPhbXhBWCu4zhr
 KfPaN/EuXZSCveFHO3ynWkMopBXpMnwSgGQImf5Hh+3F5vgDbAfKOWB0wM06jgSy3zMt
 9pwh/xWr7cDLWNwPPVXjaHx3husir40v3j3BprcFEXJvRNP0umCp7sc2Rn8kZfFk5GuY
 8FFg==
X-Gm-Message-State: APjAAAWes1+TQZ+2QdjpxdqnVdQoYmRJQcclcwv3PTgQ7C84wNfeSsiq
 Xw8olcqo7JUo5Pr6s7h2jwKAHA==
X-Google-Smtp-Source: APXvYqzK4P5iXr9jOF6+1L25eEXxPfuNyjSJPKhfdFr3rhdXJaKzGU5D+7A3nxPWuxjmqSRQYiqNoA==
X-Received: by 2002:a63:c203:: with SMTP id b3mr283133pgd.450.1569452321998;
 Wed, 25 Sep 2019 15:58:41 -0700 (PDT)
Received: from exogeni.mtv.corp.google.com
 ([2620:15c:202:1:5be8:f2a6:fd7b:7459])
 by smtp.gmail.com with ESMTPSA id j24sm76185pff.71.2019.09.25.15.58.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Sep 2019 15:58:41 -0700 (PDT)
From: Derek Basehore <dbasehore@chromium.org>
To: linux-kernel@vger.kernel.org
Date: Wed, 25 Sep 2019 15:58:31 -0700
Message-Id: <20190925225833.7310-3-dbasehore@chromium.org>
X-Mailer: git-send-email 2.23.0.351.gc4317032e6-goog
In-Reply-To: <20190925225833.7310-1-dbasehore@chromium.org>
References: <20190925225833.7310-1-dbasehore@chromium.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=e54uTjhrMjS+i3uZjyZOFqJvo1DiLqu+QVKk06QE/rE=;
 b=nTzCAE+GktkwHSreEF1W8BpnrqcEc/f/Sl9mRlJjDNjgJF8kMD+xID7r4VV4G3yX9w
 GZ1hgcf0hxBU7Opu+Kn3+gQYzHMijRDwGJP1xFu3Ki5JQhoF5qFt/RieM3KgHQxrdnk3
 Fkny4XUwI2dYgIVZ5jYPO407R700wwxt6I91Y=
Subject: [Intel-gfx] [PATCH v8 2/4] drm/panel: set display info in panel
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
ZUBjaHJvbWl1bS5vcmc+ClJldmlld2VkLWJ5OiBTYW0gUmF2bmJvcmcgPHNhbUByYXZuYm9yZy5v
cmc+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2RybV9wYW5lbC5jIHwgMjggKysrKysrKysrKysrKysr
KysrKysrCiBpbmNsdWRlL2RybS9kcm1fcGFuZWwuaCAgICAgfCA1MCArKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrCiAyIGZpbGVzIGNoYW5nZWQsIDc4IGluc2VydGlvbnMoKykK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX3BhbmVsLmMgYi9kcml2ZXJzL2dwdS9k
cm0vZHJtX3BhbmVsLmMKaW5kZXggMDkwOWI1M2I3NGU2Li4xY2QyYjU2YzlmZTYgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fcGFuZWwuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJt
X3BhbmVsLmMKQEAgLTEwNCwxMSArMTA0LDIzIEBAIEVYUE9SVF9TWU1CT0woZHJtX3BhbmVsX3Jl
bW92ZSk7CiAgKi8KIGludCBkcm1fcGFuZWxfYXR0YWNoKHN0cnVjdCBkcm1fcGFuZWwgKnBhbmVs
LCBzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yKQogeworCXN0cnVjdCBkcm1fZGlzcGxh
eV9pbmZvICppbmZvOworCiAJaWYgKHBhbmVsLT5jb25uZWN0b3IpCiAJCXJldHVybiAtRUJVU1k7
CiAKIAlwYW5lbC0+Y29ubmVjdG9yID0gY29ubmVjdG9yOwogCXBhbmVsLT5kcm0gPSBjb25uZWN0
b3ItPmRldjsKKwlpbmZvID0gJmNvbm5lY3Rvci0+ZGlzcGxheV9pbmZvOworCWluZm8tPndpZHRo
X21tID0gcGFuZWwtPndpZHRoX21tOworCWluZm8tPmhlaWdodF9tbSA9IHBhbmVsLT5oZWlnaHRf
bW07CisJaW5mby0+YnBjID0gcGFuZWwtPmJwYzsKKwlpbmZvLT5wYW5lbF9vcmllbnRhdGlvbiA9
IHBhbmVsLT5vcmllbnRhdGlvbjsKKwlpbmZvLT5idXNfZmxhZ3MgPSBwYW5lbC0+YnVzX2ZsYWdz
OworCWlmIChwYW5lbC0+YnVzX2Zvcm1hdHMpCisJCWRybV9kaXNwbGF5X2luZm9fc2V0X2J1c19m
b3JtYXRzKCZjb25uZWN0b3ItPmRpc3BsYXlfaW5mbywKKwkJCQkJCSBwYW5lbC0+YnVzX2Zvcm1h
dHMsCisJCQkJCQkgcGFuZWwtPm51bV9idXNfZm9ybWF0cyk7CiAKIAlyZXR1cm4gMDsKIH0KQEAg
LTEyNiw2ICsxMzgsMjIgQEAgRVhQT1JUX1NZTUJPTChkcm1fcGFuZWxfYXR0YWNoKTsKICAqLwog
dm9pZCBkcm1fcGFuZWxfZGV0YWNoKHN0cnVjdCBkcm1fcGFuZWwgKnBhbmVsKQogeworCXN0cnVj
dCBkcm1fZGlzcGxheV9pbmZvICppbmZvOworCisJaWYgKCFwYW5lbC0+Y29ubmVjdG9yKQorCQln
b3RvIG91dDsKKworCWluZm8gPSAmcGFuZWwtPmNvbm5lY3Rvci0+ZGlzcGxheV9pbmZvOworCWlu
Zm8tPndpZHRoX21tID0gMDsKKwlpbmZvLT5oZWlnaHRfbW0gPSAwOworCWluZm8tPmJwYyA9IDA7
CisJaW5mby0+cGFuZWxfb3JpZW50YXRpb24gPSBEUk1fTU9ERV9QQU5FTF9PUklFTlRBVElPTl9V
TktOT1dOOworCWluZm8tPmJ1c19mbGFncyA9IDA7CisJa2ZyZWUoaW5mby0+YnVzX2Zvcm1hdHMp
OworCWluZm8tPmJ1c19mb3JtYXRzID0gTlVMTDsKKwlpbmZvLT5udW1fYnVzX2Zvcm1hdHMgPSAw
OworCitvdXQ6CiAJcGFuZWwtPmNvbm5lY3RvciA9IE5VTEw7CiAJcGFuZWwtPmRybSA9IE5VTEw7
CiB9CmRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9kcm1fcGFuZWwuaCBiL2luY2x1ZGUvZHJtL2Ry
bV9wYW5lbC5oCmluZGV4IGQxNjE1OGRlYWNkYy4uZjM1ODdhNTRiOGFjIDEwMDY0NAotLS0gYS9p
bmNsdWRlL2RybS9kcm1fcGFuZWwuaAorKysgYi9pbmNsdWRlL2RybS9kcm1fcGFuZWwuaApAQCAt
MTQxLDYgKzE0MSw1NiBAQCBzdHJ1Y3QgZHJtX3BhbmVsIHsKIAkgKi8KIAljb25zdCBzdHJ1Y3Qg
ZHJtX3BhbmVsX2Z1bmNzICpmdW5jczsKIAorCS8qKgorCSAqIEB3aWR0aF9tbToKKwkgKgorCSAq
IFBoeXNpY2FsIHdpZHRoIGluIG1tLgorCSAqLworCXVuc2lnbmVkIGludCB3aWR0aF9tbTsKKwor
CS8qKgorCSAqIEBoZWlnaHRfbW06CisJICoKKwkgKiBQaHlzaWNhbCBoZWlnaHQgaW4gbW0uCisJ
ICovCisJdW5zaWduZWQgaW50IGhlaWdodF9tbTsKKworCS8qKgorCSAqIEBicGM6CisJICoKKwkg
KiBNYXhpbXVtIGJpdHMgcGVyIGNvbG9yIGNoYW5uZWwuIFVzZWQgYnkgSERNSSBhbmQgRFAgb3V0
cHV0cy4KKwkgKi8KKwl1bnNpZ25lZCBpbnQgYnBjOworCisJLyoqCisJICogQG9yaWVudGF0aW9u
CisJICoKKwkgKiBJbnN0YWxsYXRpb24gb3JpZW50YXRpb24gb2YgdGhlIHBhbmVsIHdpdGggcmVz
cGVjdCB0byB0aGUgY2hhc3Npcy4KKwkgKi8KKwlpbnQgb3JpZW50YXRpb247CisKKwkvKioKKwkg
KiBAYnVzX2Zvcm1hdHMKKwkgKgorCSAqIFBpeGVsIGRhdGEgZm9ybWF0IG9uIHRoZSB3aXJlLgor
CSAqLworCWNvbnN0IHUzMiAqYnVzX2Zvcm1hdHM7CisKKwkvKioKKwkgKiBAbnVtX2J1c19mb3Jt
YXRzOgorCSAqCisJICogTnVtYmVyIG9mIGVsZW1lbnRzIHBvaW50ZWQgdG8gYnkgQGJ1c19mb3Jt
YXRzCisJICovCisJdW5zaWduZWQgaW50IG51bV9idXNfZm9ybWF0czsKKworCS8qKgorCSAqIEBi
dXNfZmxhZ3M6CisJICoKKwkgKiBBZGRpdGlvbmFsIGluZm9ybWF0aW9uIChsaWtlIHBpeGVsIHNp
Z25hbCBwb2xhcml0eSkgZm9yIHRoZSBwaXhlbAorCSAqIGRhdGEgb24gdGhlIGJ1cy4KKwkgKi8K
Kwl1MzIgYnVzX2ZsYWdzOworCiAJLyoqCiAJICogQGxpc3Q6CiAJICoKLS0gCjIuMjMuMC4zNTEu
Z2M0MzE3MDMyZTYtZ29vZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
