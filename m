Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BB5119D86C
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 16:00:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15E0E6EBEE;
	Fri,  3 Apr 2020 13:59:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88D876EBEA
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Apr 2020 13:59:21 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id c195so2188102wme.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 03 Apr 2020 06:59:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5A+k4shKLAk+kqqUo7Y8HJznsDuW0cxoB/GKOh12bj0=;
 b=YWiIhBiKOvaPktwCTj/0x1o02aqPjV2TQeq9rwpaKwElROZUYvZIDj7ZtC6yXBq2Qb
 QsajXatPcuorDi8pAsCL8rYzc7eFO43NpgZ+7QDOVaHlIUrqlyk04PjQDol5gidz/iC1
 oHto3H2Hi6gOg2z65/WVYCyHpTEGUWSRdcMmE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5A+k4shKLAk+kqqUo7Y8HJznsDuW0cxoB/GKOh12bj0=;
 b=R2LhlvtaN8xE1yEVkGCtUQ0dFAewTBe/V5od3x8qNS/F0UCPO4DNNwt4T2PRwVvr3y
 U93eB6QnnE+64RbmusAusJAVJ+KTpqtyxtUCKwr/zonaNmoHSNTiNyrk0+VJDA0AmMyy
 APTVDw74uq2pLkSe9j+twRf2rlKEJHpNs1xx17dahB0vk8GpxNQ1n9vPI4nNqL7n2lmP
 3niQ1fQEnR9nVbQGqmV+4VQLFopsS/mEQtxDtIoxaSkD1f/5+pYLAqTxz1VfsVEL1JDQ
 TvubFTYEK+3lnLKWlYRXVozchx8IQxgo4loaeRMk8yofu8RqG6PS/kRJ2SSeCcuCom4R
 NqqA==
X-Gm-Message-State: AGi0PuYhns/6AQKKWotKfY8aUvTYPm36hYBaP3AhJkE+AryfZcNPJRf6
 TlJF/qNkjtBMZORoyaSl3irgAQ==
X-Google-Smtp-Source: APiQypIbdB3FwA94s3RYl6Ch3fYWfnoRTSB23vcfVNOW+d/gxiNpE3xJM902sNU32BPNDPsZ0yAFBA==
X-Received: by 2002:a1c:99d3:: with SMTP id b202mr9169424wme.170.1585922360198; 
 Fri, 03 Apr 2020 06:59:20 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f141sm11783919wmf.3.2020.04.03.06.59.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Apr 2020 06:59:19 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri,  3 Apr 2020 15:58:24 +0200
Message-Id: <20200403135828.2542770-41-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
References: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 40/44] drm/cirrus: Don't use
 drm_device->dev_private
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 virtualization@lists.linux-foundation.org, Eric Anholt <eric@anholt.net>,
 =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Gerd Hoffmann <kraxel@redhat.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>, Dave Airlie <airlied@redhat.com>,
 Sam Ravnborg <sam@ravnborg.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VXBjYXN0aW5nIHVzaW5nIGEgY29udGFpbmVyX29mIG1hY3JvIGlzIG1vcmUgdHlwZXNhZmUsIGZh
c3RlciBhbmQKZWFzaWVyIGZvciB0aGUgY29tcGlsZXIgdG8gb3B0aW1pemUuCgpTaWduZWQtb2Zm
LWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KQ2M6IERhdmUgQWly
bGllIDxhaXJsaWVkQHJlZGhhdC5jb20+CkNjOiBHZXJkIEhvZmZtYW5uIDxrcmF4ZWxAcmVkaGF0
LmNvbT4KQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+CkNjOiAiTm9y
YWxmIFRyw7hubmVzIiA8bm9yYWxmQHRyb25uZXMub3JnPgpDYzogU2FtIFJhdm5ib3JnIDxzYW1A
cmF2bmJvcmcub3JnPgpDYzogRXJpYyBBbmhvbHQgPGVyaWNAYW5ob2x0Lm5ldD4KQ2M6IFRob21h
cyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPgpDYzogdmlydHVhbGl6YXRpb25AbGlz
dHMubGludXgtZm91bmRhdGlvbi5vcmcKLS0tCiBkcml2ZXJzL2dwdS9kcm0vY2lycnVzL2NpcnJ1
cy5jIHwgOSArKysrKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDQgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2NpcnJ1cy9jaXJydXMuYyBi
L2RyaXZlcnMvZ3B1L2RybS9jaXJydXMvY2lycnVzLmMKaW5kZXggNGI2NTYzNzE0N2JhLi43NDRh
OGUzMzdlNDEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9jaXJydXMvY2lycnVzLmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2NpcnJ1cy9jaXJydXMuYwpAQCAtNTksNiArNTksOCBAQCBzdHJ1
Y3QgY2lycnVzX2RldmljZSB7CiAJdm9pZCBfX2lvbWVtCQkgICAgICAgKm1taW87CiB9OwogCisj
ZGVmaW5lIHRvX2NpcnJ1cyhfZGV2KSBjb250YWluZXJfb2YoX2Rldiwgc3RydWN0IGNpcnJ1c19k
ZXZpY2UsIGRldikKKwogLyogLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tICovCiAvKgogICogVGhlIG1lYXQgb2YgdGhpcyBk
cml2ZXIuIFRoZSBjb3JlIHBhc3NlcyB1cyBhIG1vZGUgYW5kIHdlIGhhdmUgdG8gcHJvZ3JhbQpA
QCAtMzExLDcgKzMxMyw3IEBAIHN0YXRpYyBpbnQgY2lycnVzX21vZGVfc2V0KHN0cnVjdCBjaXJy
dXNfZGV2aWNlICpjaXJydXMsCiBzdGF0aWMgaW50IGNpcnJ1c19mYl9ibGl0X3JlY3Qoc3RydWN0
IGRybV9mcmFtZWJ1ZmZlciAqZmIsCiAJCQkgICAgICAgc3RydWN0IGRybV9yZWN0ICpyZWN0KQog
ewotCXN0cnVjdCBjaXJydXNfZGV2aWNlICpjaXJydXMgPSBmYi0+ZGV2LT5kZXZfcHJpdmF0ZTsK
KwlzdHJ1Y3QgY2lycnVzX2RldmljZSAqY2lycnVzID0gdG9fY2lycnVzKGZiLT5kZXYpOwogCXZv
aWQgKnZtYXA7CiAJaW50IGlkeCwgcmV0OwogCkBAIC00MzYsNyArNDM4LDcgQEAgc3RhdGljIHZv
aWQgY2lycnVzX3BpcGVfZW5hYmxlKHN0cnVjdCBkcm1fc2ltcGxlX2Rpc3BsYXlfcGlwZSAqcGlw
ZSwKIAkJCSAgICAgICBzdHJ1Y3QgZHJtX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCiAJCQkgICAg
ICAgc3RydWN0IGRybV9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUpCiB7Ci0Jc3RydWN0IGNpcnJ1
c19kZXZpY2UgKmNpcnJ1cyA9IHBpcGUtPmNydGMuZGV2LT5kZXZfcHJpdmF0ZTsKKwlzdHJ1Y3Qg
Y2lycnVzX2RldmljZSAqY2lycnVzID0gdG9fY2lycnVzKHBpcGUtPmNydGMuZGV2KTsKIAogCWNp
cnJ1c19tb2RlX3NldChjaXJydXMsICZjcnRjX3N0YXRlLT5tb2RlLCBwbGFuZV9zdGF0ZS0+ZmIp
OwogCWNpcnJ1c19mYl9ibGl0X2Z1bGxzY3JlZW4ocGxhbmVfc3RhdGUtPmZiKTsKQEAgLTQ0NSw3
ICs0NDcsNyBAQCBzdGF0aWMgdm9pZCBjaXJydXNfcGlwZV9lbmFibGUoc3RydWN0IGRybV9zaW1w
bGVfZGlzcGxheV9waXBlICpwaXBlLAogc3RhdGljIHZvaWQgY2lycnVzX3BpcGVfdXBkYXRlKHN0
cnVjdCBkcm1fc2ltcGxlX2Rpc3BsYXlfcGlwZSAqcGlwZSwKIAkJCSAgICAgICBzdHJ1Y3QgZHJt
X3BsYW5lX3N0YXRlICpvbGRfc3RhdGUpCiB7Ci0Jc3RydWN0IGNpcnJ1c19kZXZpY2UgKmNpcnJ1
cyA9IHBpcGUtPmNydGMuZGV2LT5kZXZfcHJpdmF0ZTsKKwlzdHJ1Y3QgY2lycnVzX2RldmljZSAq
Y2lycnVzID0gdG9fY2lycnVzKHBpcGUtPmNydGMuZGV2KTsKIAlzdHJ1Y3QgZHJtX3BsYW5lX3N0
YXRlICpzdGF0ZSA9IHBpcGUtPnBsYW5lLnN0YXRlOwogCXN0cnVjdCBkcm1fY3J0YyAqY3J0YyA9
ICZwaXBlLT5jcnRjOwogCXN0cnVjdCBkcm1fcmVjdCByZWN0OwpAQCAtNTczLDcgKzU3NSw2IEBA
IHN0YXRpYyBpbnQgY2lycnVzX3BjaV9wcm9iZShzdHJ1Y3QgcGNpX2RldiAqcGRldiwKIAkJcmV0
dXJuIFBUUl9FUlIoY2lycnVzKTsKIAogCWRldiA9ICZjaXJydXMtPmRldjsKLQlkZXYtPmRldl9w
cml2YXRlID0gY2lycnVzOwogCiAJY2lycnVzLT52cmFtID0gZGV2bV9pb3JlbWFwKCZwZGV2LT5k
ZXYsIHBjaV9yZXNvdXJjZV9zdGFydChwZGV2LCAwKSwKIAkJCQkgICAgcGNpX3Jlc291cmNlX2xl
bihwZGV2LCAwKSk7Ci0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeAo=
