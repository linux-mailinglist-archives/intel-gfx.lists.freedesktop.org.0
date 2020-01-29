Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 889BD14C765
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2020 09:24:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D5FB6F493;
	Wed, 29 Jan 2020 08:24:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64B116F48C
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jan 2020 08:24:19 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id g17so19067988wro.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jan 2020 00:24:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=e9RykBY7CT/sd2nPUs0+4zQdEEH/jpXwer/6pk7GTG4=;
 b=WIiuK4E98R2xaX/rr9Zy1W9syU9RnQNW/Gvn7b9CPZmf8rseKsVXmorY7fD/TGkXoU
 DQt3uEDsI91XOEcMjKoQ5F3oHNI/8XSEdzt06M5ZsOtqVCoohfeiZRGvrvlC1bCJiBkx
 8Cuc0X/8PJxvr5BvEd9Ey9yYV2JFhDtLFS7T8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=e9RykBY7CT/sd2nPUs0+4zQdEEH/jpXwer/6pk7GTG4=;
 b=pYx+lf2qxCf2o3dDiT/fclLJfJG46ENPO8J2gIdLFWkOq70rJP1UQt2cCjM+Kg/Bbk
 AVRkuLlldttiNkejYL3sP1M3j+CrrTTZlUIK8Q+cPMG6vIgBpSMeBz8pCIlW52HT1cp1
 pJKzLVYdNdZT2DHViUInp0qcSXH+SmkYcg7t4dEK143og2qKLeRTaPgDLVpIJl9VL8w7
 uccfdi9l87qA5VzIBaaS/Z03E16vUHicgBFbtUatfq72bsgsQTVeMulwQqQUG1tLjI8V
 Z6vob9WHygkulsU6gT2nx7GZqg+UU3sQ+hDwrHFA+sNpacR1wYnUNO6+0BNW3ZC/h2he
 wLRw==
X-Gm-Message-State: APjAAAX1jMSasaD19mhQjXa4zl0cMFt3vovIQy5AC03Qx8V8QkbnDN0S
 nvpBD3bPdeaS6GGSsW4ntN+mgg==
X-Google-Smtp-Source: APXvYqwPQdCtREi5yfUJfbB3vKnvYE+SipiV67Al3l9Lil6utvRB/MbtlPjZOYo0oJSVvlfmfc34Jg==
X-Received: by 2002:a5d:43c7:: with SMTP id v7mr32530737wrr.32.1580286257965; 
 Wed, 29 Jan 2020 00:24:17 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id n14sm1351931wmi.26.2020.01.29.00.24.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Jan 2020 00:24:17 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Wed, 29 Jan 2020 09:24:07 +0100
Message-Id: <20200129082410.1691996-3-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200129082410.1691996-1-daniel.vetter@ffwll.ch>
References: <20200129082410.1691996-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/5] drm/fbdev-helper: don't force restores
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
 =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SW5zdGVhZCBjaGVjayBmb3IgbWFzdGVyIHN0YXR1cywgaW4gY2FzZSB3ZSd2ZSByYWNlZC4KClRo
aXMgaXMgdGhlIGxhc3QgZXhjZXB0aW9uIHRvIHRoZSBnZW5lcmFsIHJ1bGUgdGhhdCB3ZSByZXN0
b3JlIGZiY29uCm9ubHkgd2hlbiB0aGVyZSdzIG5vIG1hc3RlciBhY3RpdmUuIENvbXBvc2l0b3Jz
IGFyZSBzdXBwb3NlZCB0byBkcm9wCnRoZWlyIG1hc3RlciBzdGF0dXMgYmVmb3JlIHRoZXkgc3dp
dGNoIHRvIGEgZGlmZmVyZW50IGNvbnNvbGUgYmFjayB0bwp0ZXh0IG1vZGUgKG9yIGp1c3Qgc3dp
dGNoIHRvIHRleHQgbW9kZSBkaXJlY3RseSwgd2l0aG91dCBhIHZ0IHN3aXRjaCkuCgpUaGlzIGlz
IGtub3duIHRvIGJyZWFrIHNvbWUgc3VidGVzdHMgb2Yga21zX2ZiY29uX2ZidCBpbiBpZ3QsIGJ1
dCB0aGV5J3JlCmp1c3Qgd3JvbmcgLSBpdCBkb2VzIGEgZ3JhcGhpY3MvdGV4dCBtb2RlIHN3aXRj
aCBmb3IgdGhlIHZ0IHdpdGhvdXQKdXBkYXRpbmcgdGhlIG1hc3RlciBzdGF0dXMuCgpBbHNvIGFk
ZCBhIGNvbW1lbnQgdG8gdGhlIGRybV9jbGllbnQtPnJlc3RvcmUgaG9vayB0aGF0IHRoaXMgaXMg
ZXhwZWN0ZWQKZ29pbmcgZm9yd2FyZCBmcm9tIGFsbCBjbGllbnRzICh0aGVyZSdzIGN1cnJlbnRs
eSBqdXN0IG9uZSkuCgp2MjogQWxzbyBkcm9wIHRoZSBmb3JjZSBpbiBwYW5fZGlzcGxheQoKdjM6
IFJlc3RvcmUgdGhlIF9mb3JjZSB0byBwYW5fZGlzcGxheSwgdGhpcyBhY3R1YWxseSBtZWFucyBf
bG9ja2VkIGluIHRoYXQKcGF0aC4gU3BvdHRlZCBieSBOb3JhbGYuCgpDYzogTm9yYWxmIFRyw7hu
bmVzIDxub3JhbGZAdHJvbm5lcy5vcmc+ClJldmlld2VkLWJ5OiBOb3JhbGYgVHLDuG5uZXMgPG5v
cmFsZkB0cm9ubmVzLm9yZz4KU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZl
dHRlckBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2RybV9mYl9oZWxwZXIuYyB8IDEy
ICstLS0tLS0tLS0tLQogaW5jbHVkZS9kcm0vZHJtX2NsaWVudC5oICAgICAgICB8ICA1ICsrKysr
CiAyIGZpbGVzIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9mYl9oZWxwZXIuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9kcm1fZmJfaGVscGVyLmMKaW5kZXggNGM3Y2JjZTdiYWU3Li42NzI5MzRlMGVlZWQgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZmJfaGVscGVyLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2RybV9mYl9oZWxwZXIuYwpAQCAtMjUwLDE3ICsyNTAsNyBAQCBpbnQgZHJtX2ZiX2hlbHBl
cl9yZXN0b3JlX2ZiZGV2X21vZGVfdW5sb2NrZWQoc3RydWN0IGRybV9mYl9oZWxwZXIgKmZiX2hl
bHBlcikKIAkJcmV0dXJuIDA7CiAKIAltdXRleF9sb2NrKCZmYl9oZWxwZXItPmxvY2spOwotCS8q
Ci0JICogVE9ETzoKLQkgKiBXZSBzaG91bGQgYmFpbCBvdXQgaGVyZSBpZiB0aGVyZSBpcyBhIG1h
c3RlciBieSBkcm9wcGluZyBfZm9yY2UuCi0JICogQ3VycmVudGx5IHRoZXNlIGlndCB0ZXN0cyBm
YWlsIGlmIHdlIGRvIHRoYXQ6Ci0JICogLSBrbXNfZmJjb25fZmJ0QHBzcgotCSAqIC0ga21zX2Zi
Y29uX2ZidEBwc3Itc3VzcGVuZAotCSAqCi0JICogU28gZmlyc3QgdGhlc2UgdGVzdHMgbmVlZCB0
byBiZSBmaXhlZCBzbyB0aGV5IGRyb3AgbWFzdGVyIG9yIGRvbid0Ci0JICogaGF2ZSBhbiBmZCBv
cGVuLgotCSAqLwotCXJldCA9IGRybV9jbGllbnRfbW9kZXNldF9jb21taXRfZm9yY2UoJmZiX2hl
bHBlci0+Y2xpZW50KTsKKwlyZXQgPSBkcm1fY2xpZW50X21vZGVzZXRfY29tbWl0KCZmYl9oZWxw
ZXItPmNsaWVudCk7CiAKIAlkb19kZWxheWVkID0gZmJfaGVscGVyLT5kZWxheWVkX2hvdHBsdWc7
CiAJaWYgKGRvX2RlbGF5ZWQpCmRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9kcm1fY2xpZW50Lmgg
Yi9pbmNsdWRlL2RybS9kcm1fY2xpZW50LmgKaW5kZXggNWNmMmM1ZGQ4YjFlLi5kMDFkMzExMDIz
YWMgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvZHJtL2RybV9jbGllbnQuaAorKysgYi9pbmNsdWRlL2Ry
bS9kcm1fY2xpZW50LmgKQEAgLTQ0LDYgKzQ0LDExIEBAIHN0cnVjdCBkcm1fY2xpZW50X2Z1bmNz
IHsKIAkgKiByZXR1cm5zIHplcm8gZ2V0cyB0aGUgcHJpdmlsZWdlIHRvIHJlc3RvcmUgYW5kIG5v
IG1vcmUgY2xpZW50cyBhcmUKIAkgKiBjYWxsZWQuIFRoaXMgY2FsbGJhY2sgaXMgbm90IGNhbGxl
ZCBhZnRlciBAdW5yZWdpc3RlciBoYXMgYmVlbiBjYWxsZWQuCiAJICoKKwkgKiBOb3RlIHRoYXQg
dGhlIGNvcmUgZG9lcyBub3QgZ3VhcmFudGVlIGV4Y2x1c2lvbiBhZ2FpbnN0IGNvbmN1cnJlbnQK
KwkgKiBkcm1fb3BlbigpLiBDbGllbnRzIG5lZWQgdG8gZW5zdXJlIHRoaXMgdGhlbXNlbHZlcywg
Zm9yIGV4YW1wbGUgYnkKKwkgKiB1c2luZyBkcm1fbWFzdGVyX2ludGVybmFsX2FjcXVpcmUoKSBh
bmQKKwkgKiBkcm1fbWFzdGVyX2ludGVybmFsX3JlbGVhc2UoKS4KKwkgKgogCSAqIFRoaXMgY2Fs
bGJhY2sgaXMgb3B0aW9uYWwuCiAJICovCiAJaW50ICgqcmVzdG9yZSkoc3RydWN0IGRybV9jbGll
bnRfZGV2ICpjbGllbnQpOwotLSAKMi4yNC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngK
