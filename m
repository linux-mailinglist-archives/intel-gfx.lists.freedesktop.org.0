Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AC4DFA731A
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2019 21:05:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A566C89622;
	Tue,  3 Sep 2019 19:05:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com
 [IPv6:2a00:1450:4864:20::542])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3566A89622
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2019 19:05:54 +0000 (UTC)
Received: by mail-ed1-x542.google.com with SMTP id i8so5821042edn.13
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 Sep 2019 12:05:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rMbe/90UeFfqEUrk4ND8PxMTYBDDkx6JYpo4F1BWcC8=;
 b=gVnCfjrbe7MOdAnHSlQ4J/mFB2X1gM/hLcc2HAgoe+GCTtwmuwcYf7MZUgfsyam5gt
 gwP4zdJEIataP7XGb1Vx3ZrvyU7UHFkJ79sgQesdBisucyND/AWtEdyK0XDuHv1kfO2c
 WF7Pt+1gKcwAv5SRgSr0g3jY9c/nQqj47hXG9B9IHdz0PLBX9t9ocpoD6pF5cWmMKafp
 FpB977WRCqtGiffBGwZhwKN2y6NBc0aSPt/XfRLSHMOI4dUeEP7TNo66dh+FfE5vMGqe
 2eGIThKdQKUY4MK1fj/E1Eb+qkz9OCao2bXjNO4W5lO6NnAMfMJCNJTvn+q1JPj75pCC
 I1Fg==
X-Gm-Message-State: APjAAAXs0QXBCJOl0SnUo8XFvPY/Gf9iu8iDS1ndu9B3es4vCagNK7mp
 ilm6MsHwrda/Ya4D5uTj6r/R/w==
X-Google-Smtp-Source: APXvYqxN/Y6aPD7JASs4itjBnR/gvRxtylDnevVJ/hnjg0KTrnwyas9PoqDn7aPPGvSQlIpIMTlLKQ==
X-Received: by 2002:a50:b19c:: with SMTP id m28mr26549237edd.189.1567537552813; 
 Tue, 03 Sep 2019 12:05:52 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id 60sm1766309edg.10.2019.09.03.12.05.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Sep 2019 12:05:52 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue,  3 Sep 2019 21:05:43 +0200
Message-Id: <20190903190545.31852-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rMbe/90UeFfqEUrk4ND8PxMTYBDDkx6JYpo4F1BWcC8=;
 b=PJ5ZC67poNYVba0KlxW5VX4k9UsYhOC7oyFZHGPHL8WmT0zU4uF+7ou/Z3Lso887c+
 AnVR6mTC0FckX2sjbpPR8itM22iXZT3ETuj0USV/+XXti+uBQfsE4EKFYN8Oh5YqC7zw
 HV0X8JNTlzVuFlyeINVOs/3UjBLPBa95qpxjI=
Subject: [Intel-gfx] [PATCH 1/3] drm/atomic: Reject FLIP_ASYNC
 unconditionally
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
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Adam Jackson <ajax@redhat.com>, Alex Deucher <alexdeucher@gmail.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 =?UTF-8?q?Michel=20D=C3=A4nzer?= <michel@daenzer.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SXQncyBuZXZlciBiZWVuIHdpcmVkIHVwLiBPbmx5IHVzZXJzcGFjZSB0aGF0IHRyaWVkIHRvIHVz
ZSBpdCAoYW5kCmRpZG4ndCBhY3R1YWxseSBjaGVjayB3aGV0aGVyIGFueXRoaW5nIHdvcmtzLCBi
dXQgaGV5IGl0IGJ1aWxkcykgaXMKdGhlIC1tb2Rlc2V0dGluZyBhdG9taWMgaW1wbGVtZW50YXRp
b24uIEFuZCB3ZSBqdXN0IHNodXQgdGhhdCB1cC4KCklmIHRoZXJlJ3MgYW55b25lIGVsc2UgdGhl
biB3ZSBuZWVkIHRvIHNpbGVudGx5IGFjY2VwdCB0aGlzIGZsYWcgbm8KbWF0dGVyIHdoYXQsIGFu
ZCBmaW5kIGEgbmV3IG9uZS4gQmVjYXVzZSBvbmNlIGEgZmxhZyBpcyB0YWludGVkLCBpdCdzCmxv
c3QuCgpDYzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVs
LmNvbT4KQ2M6IE1pY2hlbCBEw6RuemVyIDxtaWNoZWxAZGFlbnplci5uZXQ+CkNjOiBBbGV4IERl
dWNoZXIgPGFsZXhkZXVjaGVyQGdtYWlsLmNvbT4KQ2M6IEFkYW0gSmFja3NvbiA8YWpheEByZWRo
YXQuY29tPgpDYzogU2VhbiBQYXVsIDxzZWFuQHBvb3JseS5ydW4+CkNjOiBEYXZpZCBBaXJsaWUg
PGFpcmxpZWRAbGludXguaWU+ClNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52
ZXR0ZXJAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9kcm1fYXRvbWljX3VhcGkuYyB8
IDMgKy0tCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDIgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9hdG9taWNfdWFwaS5jIGIvZHJpdmVycy9n
cHUvZHJtL2RybV9hdG9taWNfdWFwaS5jCmluZGV4IDVhNWI0MmRiNmYyYS4uN2EyNmJmYjUzMjlj
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2F0b21pY191YXBpLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2RybV9hdG9taWNfdWFwaS5jCkBAIC0xMzA1LDggKzEzMDUsNyBAQCBpbnQg
ZHJtX21vZGVfYXRvbWljX2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCiAJaWYgKGFyZy0+
cmVzZXJ2ZWQpCiAJCXJldHVybiAtRUlOVkFMOwogCi0JaWYgKChhcmctPmZsYWdzICYgRFJNX01P
REVfUEFHRV9GTElQX0FTWU5DKSAmJgotCQkJIWRldi0+bW9kZV9jb25maWcuYXN5bmNfcGFnZV9m
bGlwKQorCWlmIChhcmctPmZsYWdzICYgRFJNX01PREVfUEFHRV9GTElQX0FTWU5DKQogCQlyZXR1
cm4gLUVJTlZBTDsKIAogCS8qIGNhbid0IHRlc3QgYW5kIGV4cGVjdCBhbiBldmVudCBhdCB0aGUg
c2FtZSB0aW1lLiAqLwotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
