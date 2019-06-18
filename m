Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CB364A343
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 16:02:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D79296E1B6;
	Tue, 18 Jun 2019 14:02:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com
 [IPv6:2a00:1450:4864:20::542])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DC1F6E1B6
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2019 14:02:49 +0000 (UTC)
Received: by mail-ed1-x542.google.com with SMTP id a14so21868912edv.12
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2019 07:02:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=msqCONNV1H08SzrVEOsCbMPoul6NP4oR7dk8Qo7oJqU=;
 b=h8RKdzYgQEzLTdLvlRnQchFSLgqhmcj+/bCrdfDvIzX4yjAUi+lI8CATGXLvzee+BL
 QI1KFdLp1qmSvoVnLm7veArLeuM/YkY9q2vVyjFg9j1SVB5AG3odHSMSSnPoboobedVh
 st7O8Srs9ulg3LxidiPjkwiMrXbxqkMmduV/c25+G/oI7H9r5EWxJkmiVYggcKDbFTKz
 OaJzDNW3X19nvIy9P7LYHE8ybfYk4l1ZZhWyt0wif9osglaLUqscPafioIqSEizducPq
 KWHd39OGQLc2BTEF6kRGQq3deA/qxyE0XyAzZDHnbynJmrtvwzQ+EUbQTP7LhGyPpihB
 qApg==
X-Gm-Message-State: APjAAAVT+iGvbySYIawkLe52JW7fEdi48CcAOVMfjA6mZOfJz2WRB2g1
 ID0INv5FdRvB+i8hKZ5pOfFSjMMpGb0=
X-Google-Smtp-Source: APXvYqx28PSLe0JmJswHjHtdURCJc9m9CQMxBbNGmo/Dphhd1Pkgm6ONKApQIst4FdOBXZJa631WYA==
X-Received: by 2002:a50:8ba6:: with SMTP id m35mr66691549edm.199.1560866567893; 
 Tue, 18 Jun 2019 07:02:47 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id 30sm435738eji.5.2019.06.18.07.02.46
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 18 Jun 2019 07:02:47 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Tue, 18 Jun 2019 16:02:41 +0200
Message-Id: <20190618140241.19856-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614203615.12639-2-daniel.vetter@ffwll.ch>
References: <20190614203615.12639-2-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=msqCONNV1H08SzrVEOsCbMPoul6NP4oR7dk8Qo7oJqU=;
 b=lAHldTeCLKjylpzvno55ytHkH6yySrYHfW2AGDJh2XJfCGPZ39jLx0f3lJdyjJpSdd
 BUf4L3POMsBfkcyGOhIkZo1lQdnAvnzx68lp8YsD6aZgoFlk72+uBhGAbbVURsc2jJ7I
 P9aPOUhMqnBfO5mZsVfTTDpAqpuW6u5A43cvU=
Subject: [Intel-gfx] [PATCH] drm/todo: Update drm_gem_object_funcs todo even
 more
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
Cc: Rob Herring <robh@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Gerd Hoffmann <kraxel@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SSBydXNoZWQgbWVyZ2luZyB0aGlzIGEgYml0IHRvbyBtdWNoLCBhbmQgTm9yYWxmIHBvaW50ZWQg
b3V0IHRoYXQKd2UncmUgYSBsb3QgYmV0dGVyIGFscmVhZHkgYW5kIGhhdmUgbWFkZSBncmVhdCBw
cm9ncmVzcy4KCkxldCdzIHRyeSBhZ2Fpbi4KCkZpeGVzOiA0MmRiYmI0YjU0YTMgKCJkcm0vdG9k
bzogQWRkIG5ldyBkZWJ1Z2ZzIHRvZG8iKQpDYzogR3JlZyBLcm9haC1IYXJ0bWFuIDxncmVna2hA
bGludXhmb3VuZGF0aW9uLm9yZz4KQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50
ZWwuY29tPgpDYzogRGF2aWQgQWlybGllIDxhaXJsaWVkQGxpbnV4LmllPgpDYzogRGFuaWVsIFZl
dHRlciA8ZGFuaWVsQGZmd2xsLmNoPgpDYzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFu
a2hvcnN0QGxpbnV4LmludGVsLmNvbT4KQ2M6IE1heGltZSBSaXBhcmQgPG1heGltZS5yaXBhcmRA
Ym9vdGxpbi5jb20+CkNjOiBTZWFuIFBhdWwgPHNlYW5AcG9vcmx5LnJ1bj4KQ2M6IFRob21hcyBa
aW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPgpDYzogR2VyZCBIb2ZmbWFubiA8a3JheGVs
QHJlZGhhdC5jb20+CkNjOiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3JnPgpDYzogTm9yYWxm
IFRyw7hubmVzIDxub3JhbGZAdHJvbm5lcy5vcmc+CkNjOiBFcmljIEFuaG9sdCA8ZXJpY0Bhbmhv
bHQubmV0PgpDYzogR2VyZCBIb2ZmbWFubiA8a3JheGVsQHJlZGhhdC5jb20+ClNpZ25lZC1vZmYt
Ynk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgotLS0KIERvY3VtZW50
YXRpb24vZ3B1L3RvZG8ucnN0IHwgOCArKysrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0
aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2dwdS90
b2RvLnJzdCBiL0RvY3VtZW50YXRpb24vZ3B1L3RvZG8ucnN0CmluZGV4IDI1ODc4ZGQwNDhmZC4u
NjZjMTIzNzM3YzNkIDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0aW9uL2dwdS90b2RvLnJzdAorKysg
Yi9Eb2N1bWVudGF0aW9uL2dwdS90b2RvLnJzdApAQCAtMjEyLDkgKzIxMiwxMSBAQCBzdHJ1Y3Qg
ZHJtX2dlbV9vYmplY3RfZnVuY3MKIEdFTSBvYmplY3RzIGNhbiBub3cgaGF2ZSBhIGZ1bmN0aW9u
IHRhYmxlIGluc3RlYWQgb2YgaGF2aW5nIHRoZSBjYWxsYmFja3Mgb24gdGhlCiBEUk0gZHJpdmVy
IHN0cnVjdC4gVGhpcyBpcyBub3cgdGhlIHByZWZlcnJlZCB3YXkgYW5kIGRyaXZlcnMgY2FuIGJl
IG1vdmVkIG92ZXIuCiAKLVVuZm9ydHVuYXRlbHkgc29tZSBvZiB0aGUgcmVjZW50bHkgYWRkZWQg
R0VNIGhlbHBlcnMgYXJlIGdvaW5nIGluIHRoZSB3cm9uZwotZGlyZWN0aW9uIGJ5IGFkZGluZyBP
UFMgbWFjcm9zIHRoYXQgdXNlIHRoZSBvbGQsIGRlcHJlY2F0ZWQgaG9va3MuIFNlZQotRFJNX0dF
TV9DTUFfVk1BUF9EUklWRVJfT1BTLCBEUk1fR0VNX1NITUVNX0RSSVZFUl9PUFMsIGFuZCBEUk1f
R0VNX1ZSQU1fRFJJVkVSX1BSSU1FLgorRFJNX0dFTV9DTUFfVk1BUF9EUklWRVJfT1BTLCBEUk1f
R0VNX1NITUVNX0RSSVZFUl9PUFMgYWxyZWFkeSBzdXBwb3J0IHRoaXMsIGJ1dAorRFJNX0dFTV9W
UkFNX0RSSVZFUl9QUklNRSBkb2VzIG5vdCB5ZXQgYW5kIG5lZWRzIHRvIGJlIGFsaWdlbmQgd2l0
aCB0aGUgcHJldmlvdXMKK3R3by4gV2UgYWxzbyBuZWVkIGEgMm5kIHZlcnNpb24gb2YgdGhlIENN
QSBkZWZpbmUgdGhhdCBkb2Vzbid0IHJlcXVpcmUgdGhlCit2bWFwcGluZyB0byBiZSBwcmVzZW50
IChkaWZmZXJlbnQgaG9vayBmb3IgcHJpbWUgaW1wb3J0aW5nKS4gUGx1cyB0aGlzIG5lZWRzIHRv
CitiZSByb2xsZWQgb3V0IHRvIGFsbCBkcml2ZXJzIHVzaW5nIHRoZWlyIG93biBpbXBsZW1lbnRh
dGlvbnMsIHRvby4KIAogVXNlIERSTV9NT0RFU0VUX0xPQ0tfQUxMXyogaGVscGVycyBpbnN0ZWFk
IG9mIGJvaWxlcnBsYXRlCiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0KLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
