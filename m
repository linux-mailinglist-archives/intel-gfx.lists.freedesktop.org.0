Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B594EA7326
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2019 21:07:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D8DA897F5;
	Tue,  3 Sep 2019 19:07:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com
 [IPv6:2a00:1450:4864:20::543])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD7A2897F9
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2019 19:06:59 +0000 (UTC)
Received: by mail-ed1-x543.google.com with SMTP id r12so19578849edo.5
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 Sep 2019 12:06:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rMbe/90UeFfqEUrk4ND8PxMTYBDDkx6JYpo4F1BWcC8=;
 b=Gu7WsGQz5NGxesKbWvotVMlsEzdM1/OcQVxiEcPtN0xAACFkRg7h6RVzTDDEZC/eY3
 +4+NtPH49I5DdCGPfvUyt4ofP21G7UJDelfEsZeeidWQ8LxSOoAIW4gb6D133OKJybxs
 DlvBm6uELmIU5oPk69FRg/GAAYp2OuCbpurtdXSOxBACDCT2oYgDytPX/P6R7NgtswYx
 YSASkmPEA4FwLXGecLCv2SkHyNcHab8jAAfieoMep2txLrph8FsXaRRywtlImeVGue7s
 ERhtJo03jgR1k9bQtqMheE/QT1V3jVI1kn5Lf3FUnn21qT8JnLt1ZVO2X2Hwp2wvao4M
 JEaw==
X-Gm-Message-State: APjAAAUtkOQbV8H5UIzFhQxurXrvj5oVQDdlRTE54YzuCuYiptEkbX60
 a+1DB/mcPzH40bnRIpxncXskgg==
X-Google-Smtp-Source: APXvYqweLY86stxuQkQXezP/PFuo3lvwCfIEpFRc8/jxHYyer1v3jB8UP3B3FCjCKXceMYgpkvb9eA==
X-Received: by 2002:a17:906:c08:: with SMTP id s8mr8462775ejf.66.1567537618355; 
 Tue, 03 Sep 2019 12:06:58 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id b12sm3655583edj.93.2019.09.03.12.06.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Sep 2019 12:06:57 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue,  3 Sep 2019 21:06:41 +0200
Message-Id: <20190903190642.32588-2-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190903190642.32588-1-daniel.vetter@ffwll.ch>
References: <20190903190642.32588-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rMbe/90UeFfqEUrk4ND8PxMTYBDDkx6JYpo4F1BWcC8=;
 b=GBOWMGKL2htvO3SG2dtez5oS9+y04XBknjNmJprvWjn75fZ0rnETw5swFSjkZtTClo
 ThuibSbiJQweoF8PUR9R6qvA0cNz8onWs/Gg6Wr38ugYlhNTuTjHWsD06MsQLBm80ycm
 gMsJ0Cu+sxjStk/RcC0NXV+LdYOEQf3dFZDxk=
Subject: [Intel-gfx] [PATCH 2/3] drm/atomic: Reject FLIP_ASYNC
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
