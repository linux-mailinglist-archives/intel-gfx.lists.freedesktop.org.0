Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E16E46AC6
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 22:39:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B266E89826;
	Fri, 14 Jun 2019 20:37:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com
 [IPv6:2a00:1450:4864:20::541])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFB3389533
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 20:37:17 +0000 (UTC)
Received: by mail-ed1-x541.google.com with SMTP id d4so5187458edr.13
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 13:37:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KFPSYVwN3kk9QZ4sKRltB7QwR18X686gyXUMlqrYsrY=;
 b=Ur+29T8N0+alNJpILZ51Dqb9J9kbW+o/1dD0xSKOVURjsrKGtMLDXiYST6YhfDMdWP
 Yw2ma+NrYDyLUz4EgQ8A5N78Sxsg5PjfKp204///9ftHoWdY2MYGpbUSzSI7Ghmt4aPO
 D2C2bY0O7YCiyMCEJTpfVmrXUEsg40Kv9fcpWGDgJqnmEA98rQwKm4VAAEjxyQktV5vt
 Ier0RI2RW9dj1JOaKc/oUHAif0BPdxxUFtEe2wrhMDg7ykZ0cbiEXmCRoyywHIjB3v9a
 y1NqVzfD1MBVPJ8wh7a1XoSaYuLdMz7/XgP7SHF7bXQ8pgnHIFYrinAKSEzhG2EYrVll
 upTw==
X-Gm-Message-State: APjAAAVRkxtfpP0GlGQfjfnUhS4qDShStEOlGnDO+VGV997MXGc8rI+M
 ZNE4miqcg2H060PyJKTqD9mvJA==
X-Google-Smtp-Source: APXvYqx6f03vXMhDJunlmmOY4VivqbA2U9HTxczdzhG2kOU+jL8CIwcPl1B1GkGGY+Ooq04DMb4KOQ==
X-Received: by 2002:a50:b1e7:: with SMTP id n36mr55073451edd.227.1560544635843; 
 Fri, 14 Jun 2019 13:37:15 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id n15sm1166672edd.49.2019.06.14.13.37.14
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 13:37:15 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 14 Jun 2019 22:36:03 +0200
Message-Id: <20190614203615.12639-48-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KFPSYVwN3kk9QZ4sKRltB7QwR18X686gyXUMlqrYsrY=;
 b=IsOqiwSAcFTgXxTRrpMpQV8o5pikcwR33RNFL991UaWuy+f+6Ck3xYHOCTtC/taWha
 efSVJaCFMHu0fgTtriz8xJGibqGfbafRU29u7gWBy1cUCJmjnTjZIvso+HTfMJ0ojgdP
 vXjYBS4GPya21gswLI+3oP9Tsiz6nQtj9zYyI=
Subject: [Intel-gfx] [PATCH 47/59] drm/vc4: Don set gem_obj->resv in prime
 import anymore
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBpcyBkb25lIGluIGRybV9wcmltZS5jIG5vdy4KClNpZ25lZC1vZmYtYnk6IERhbmllbCBW
ZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgpDYzogRXJpYyBBbmhvbHQgPGVyaWNAYW5o
b2x0Lm5ldD4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vdmM0L3ZjNF9iby5jIHwgMiAtLQogMSBmaWxl
IGNoYW5nZWQsIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3Zj
NC92YzRfYm8uYyBiL2RyaXZlcnMvZ3B1L2RybS92YzQvdmM0X2JvLmMKaW5kZXggYjBmOWViNjYz
MmEyLi43MDdiY2Q5OTI3ZjMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS92YzQvdmM0X2Jv
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3ZjNC92YzRfYm8uYwpAQCAtNzkzLDggKzc5Myw2IEBA
IHZjNF9wcmltZV9pbXBvcnRfc2dfdGFibGUoc3RydWN0IGRybV9kZXZpY2UgKmRldiwKIAlpZiAo
SVNfRVJSKG9iaikpCiAJCXJldHVybiBvYmo7CiAKLQlvYmotPnJlc3YgPSBhdHRhY2gtPmRtYWJ1
Zi0+cmVzdjsKLQogCXJldHVybiBvYmo7CiB9CiAKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
