Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 140CE46A1B
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 22:36:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4087B893D5;
	Fri, 14 Jun 2019 20:36:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com
 [IPv6:2a00:1450:4864:20::541])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 129888935B
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 20:36:32 +0000 (UTC)
Received: by mail-ed1-x541.google.com with SMTP id i11so5283655edq.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 13:36:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ozuYLkzuE5EKiRdXRtonyVrqpSQymWsQ+YHRXJTwCgs=;
 b=nYc8hofnDqo12++mZrv9Sqj4Ru/AnGPZu9+g6AL+A4ZTSZwbYsEGV/u+Q6KcyG3C/P
 hlVaSBrYojcE66v5Zsud0QBCkxmojL0ZEUvkocvVUOwhK46eGNXL+1RtJNJN8JFVvNi+
 ydDy2QS8+xTxYeJ/uBKNsjhCLRYDygSXpjUewK68+G8+tc0Xj6UjJJALfaLnyX2HriWY
 veng1Dcr2OMsvqx6MjEuZ3EJujmTeF6VBQQqfkm27uWx1++8mFETrtzm6KW7nYh+4u9Q
 pxOv0OG4qQjaBTpaUkn9gB59s9lofII8DpmR5CFzAecaVyANxelPJeJvbbvI3+ol4lfA
 AN2A==
X-Gm-Message-State: APjAAAVe9hj+caeboFxr3R/U3pt+j9GAt8TGKhfx63DqYZLi2OmD4R0j
 fzlpM+RxzW5PooXJCCD0gbdeog==
X-Google-Smtp-Source: APXvYqxmo68l9VKjRmngxSrKRMzF9noCB0RAXjDyt/6YJA3Pw4xvMLAa618hUD4JDSKybWUZoFjsCw==
X-Received: by 2002:a17:906:bb11:: with SMTP id
 jz17mr15709119ejb.185.1560544590304; 
 Fri, 14 Jun 2019 13:36:30 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id n15sm1166672edd.49.2019.06.14.13.36.29
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 13:36:29 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 14 Jun 2019 22:35:24 +0200
Message-Id: <20190614203615.12639-9-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ozuYLkzuE5EKiRdXRtonyVrqpSQymWsQ+YHRXJTwCgs=;
 b=dlEupAw2H2UeKPz87OmFUI9OX5pfxKv+9CxXEZ0H764h+0dwq/RRP4E1dSxIaGiyTX
 Rl8DiP0ig24M/9fSJoSFelZyoCtIujHG6qbmHeExrleSBnOng7C6Y/BoE6a376ueGtgU
 pQiEdJtMvZcUlwPggQ1u+8mJXaAmF1/ER3C2g=
Subject: [Intel-gfx] [PATCH 08/59] drm/omapdrm: drop fb_debug_enter/leave
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
 Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBpcyBhIG5vLW9wIG9uIGF0b21pYyBkcml2ZXJzIGJlY2F1c2Ugd2l0aCBhdG9taWMgaXQn
cyBzaW1wbHkgdG9vCmNvbXBsaWNhdGVkIHRvIGdldCBhbGwgdGhlIGxvY2tpbmcgYW5kIHdvcmtl
cnMgYW5kIG5vbmJsb2NraW5nCnN5bmNocm9uaXphdGlvbiBjb3JyZWN0LCBmcm9tIGVzc2VudGlh
bGx5IGFuIE5NSSBjb250ZXh0LiBXZWxsLCB0b28KY29tcGxpY2F0ZWQgPSBpbXBvc3NpYmxlLiBB
bHNvLCBvbWFwZHJtIG5ldmVyIGltcGxlbWVudGVkIHRoZQptb2RlX3NldF9iYXNlX2F0b21pYyBo
b29rLCBzbyBJIGtpbmRhIHdvbmRlciB3aHkgdGhpcyB3YXMgZXZlciBhZGRlZC4KCkRyb3AgdGhl
IGhvb2tzLgoKU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRl
bC5jb20+CkNjOiBUb21pIFZhbGtlaW5lbiA8dG9taS52YWxrZWluZW5AdGkuY29tPgotLS0KIGRy
aXZlcnMvZ3B1L2RybS9vbWFwZHJtL29tYXBfZmJkZXYuYyB8IDIgLS0KIDEgZmlsZSBjaGFuZ2Vk
LCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9vbWFwZHJtL29t
YXBfZmJkZXYuYyBiL2RyaXZlcnMvZ3B1L2RybS9vbWFwZHJtL29tYXBfZmJkZXYuYwppbmRleCA1
MGFhYmQ4NTRmNGQuLjBkYWQ0MmU4MTliYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL29t
YXBkcm0vb21hcF9mYmRldi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9vbWFwZHJtL29tYXBfZmJk
ZXYuYwpAQCAtODcsOCArODcsNiBAQCBzdGF0aWMgc3RydWN0IGZiX29wcyBvbWFwX2ZiX29wcyA9
IHsKIAkuZmJfc2V0Y21hcAk9IGRybV9mYl9oZWxwZXJfc2V0Y21hcCwKIAkuZmJfYmxhbmsJPSBk
cm1fZmJfaGVscGVyX2JsYW5rLAogCS5mYl9wYW5fZGlzcGxheSA9IG9tYXBfZmJkZXZfcGFuX2Rp
c3BsYXksCi0JLmZiX2RlYnVnX2VudGVyID0gZHJtX2ZiX2hlbHBlcl9kZWJ1Z19lbnRlciwKLQku
ZmJfZGVidWdfbGVhdmUgPSBkcm1fZmJfaGVscGVyX2RlYnVnX2xlYXZlLAogCS5mYl9pb2N0bAk9
IGRybV9mYl9oZWxwZXJfaW9jdGwsCiAKIAkuZmJfcmVhZCA9IGRybV9mYl9oZWxwZXJfc3lzX3Jl
YWQsCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
