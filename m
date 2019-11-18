Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2B9B10028C
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2019 11:36:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D725D89FDD;
	Mon, 18 Nov 2019 10:35:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 865A189FDD
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Nov 2019 10:35:53 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id b3so18783112wrs.13
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Nov 2019 02:35:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rolM2WPKs8+DsIxKqhNuDcQ0QT80+P3uSe9mlBm5Xok=;
 b=QsZ7FFHa9A+CimAASxw3ds3jclsi7djTBVD+EXdDSJSJnRMWnTsfymlszIJY1Bn/AM
 EgxUYmuVfBZ4CWOCa2v9Mucyr+r0twFCnAmsLw4st63DZ/KdX6/H4fbBKlcZzj4u6fJ+
 MPSJajpUXrKhWwxkw2tYScD9iQc2XHwtpLdFg7UYsWyrW578pR/e3/g02RTr30SUolQQ
 rMIb5w70QkFJQn4rsJhBUMG4XIvnPveIePkrABk2MSx0zsPyvTSA/kp1iNA6wAI6lMMB
 6RQLMZPhNOvb9YIyLwgsYbHY0ZZZK+UoBdUxgIKiUAsST8ZMk6wklgAMAgFQajWY2OnB
 lfRQ==
X-Gm-Message-State: APjAAAW8RMwEvJeeDZgElohIHwBpehx7hXFCC5i50n3RQxWi6YzBGOyc
 Jn7cZxk1IgWXG9j8+GUrceZVDw==
X-Google-Smtp-Source: APXvYqwPRFZSkWVwmowI7t5vonOru3FCQvDaRuKAk40jMAWnOvg8mPVy/34XnMryuGKWE5aYD5LbCA==
X-Received: by 2002:a5d:4b86:: with SMTP id b6mr22717029wrt.143.1574073352170; 
 Mon, 18 Nov 2019 02:35:52 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id j2sm22749200wrt.61.2019.11.18.02.35.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 02:35:51 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 18 Nov 2019 11:35:28 +0100
Message-Id: <20191118103536.17675-8-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191118103536.17675-1-daniel.vetter@ffwll.ch>
References: <20191118103536.17675-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rolM2WPKs8+DsIxKqhNuDcQ0QT80+P3uSe9mlBm5Xok=;
 b=agyUJnU75V0fGIBlkG1uo6HVgtfTsAY9NjSlXJlJjrD4Fh9sOf2ESoLtrvfr1BVc5/
 QwhpO9T+v71nfmzjbfDeLpfLyrJiW9gHQdvIbv00Y2kz18fMSU85uWJdqyU0QnSVb5jK
 vQDQafOLTMMM99wDNOPj6qc7zD1XH3M+RgrCQ=
Subject: [Intel-gfx] [PATCH 07/15] drm/omapdrm: Drop dma_buf->k(un)map
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

Tm8gaW4tdHJlZSB1c2VycyBsZWZ0LgoKTm90ZSB0aGF0IHRoaXMgaXMgb25lIG9mIHRoZSBmZXcg
KGlmIG9ubHkpIGltcGxlbWVudGF0aW9ucyBvZiBkbWEtYnVmCnRoYXQgcHJvdmlkZWQgYSBrbWFw
LCBidXQgbm90IGEgdm1hcCBpbXBsZW1lbmF0aW9uLiBHaXZlbiB0aGF0IHRoZQpvbmx5IHJlYWwg
dXNlciAoaW4tdHJlZSBhdCBsZWFzdCkgb2Yga21hcCB3YXMgdGVncmEsIGFuZCBpdCdzCmltcG9z
c2libGUgdG8gYnV5IGEgY2hpcCB3aXRoIHRlZ3JhIGhvc3QxeCBhbmQgb21wYWRybSBvbiB0aGUg
c2FtZQpTb0MsIHRoZXJlJ3Mgbm8gcHJvYmxlbSBoZXJlLgoKU2lnbmVkLW9mZi1ieTogRGFuaWVs
IFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+CkNjOiBUb21pIFZhbGtlaW5lbiA8dG9t
aS52YWxrZWluZW5AdGkuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9vbWFwZHJtL29tYXBfZ2Vt
X2RtYWJ1Zi5jIHwgMjEgLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMjEg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL29tYXBkcm0vb21hcF9n
ZW1fZG1hYnVmLmMgYi9kcml2ZXJzL2dwdS9kcm0vb21hcGRybS9vbWFwX2dlbV9kbWFidWYuYwpp
bmRleCA3MzQ0YmI2MTkzNmMuLmIzMTlmZTdmMjM3MSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL29tYXBkcm0vb21hcF9nZW1fZG1hYnVmLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL29tYXBk
cm0vb21hcF9nZW1fZG1hYnVmLmMKQEAgLTg1LDI1ICs4NSw2IEBAIHN0YXRpYyBpbnQgb21hcF9n
ZW1fZG1hYnVmX2VuZF9jcHVfYWNjZXNzKHN0cnVjdCBkbWFfYnVmICpidWZmZXIsCiAJcmV0dXJu
IDA7CiB9CiAKLXN0YXRpYyB2b2lkICpvbWFwX2dlbV9kbWFidWZfa21hcChzdHJ1Y3QgZG1hX2J1
ZiAqYnVmZmVyLAotCQl1bnNpZ25lZCBsb25nIHBhZ2VfbnVtKQotewotCXN0cnVjdCBkcm1fZ2Vt
X29iamVjdCAqb2JqID0gYnVmZmVyLT5wcml2OwotCXN0cnVjdCBwYWdlICoqcGFnZXM7Ci0Jb21h
cF9nZW1fZ2V0X3BhZ2VzKG9iaiwgJnBhZ2VzLCBmYWxzZSk7Ci0Jb21hcF9nZW1fY3B1X3N5bmNf
cGFnZShvYmosIHBhZ2VfbnVtKTsKLQlyZXR1cm4ga21hcChwYWdlc1twYWdlX251bV0pOwotfQot
Ci1zdGF0aWMgdm9pZCBvbWFwX2dlbV9kbWFidWZfa3VubWFwKHN0cnVjdCBkbWFfYnVmICpidWZm
ZXIsCi0JCXVuc2lnbmVkIGxvbmcgcGFnZV9udW0sIHZvaWQgKmFkZHIpCi17Ci0Jc3RydWN0IGRy
bV9nZW1fb2JqZWN0ICpvYmogPSBidWZmZXItPnByaXY7Ci0Jc3RydWN0IHBhZ2UgKipwYWdlczsK
LQlvbWFwX2dlbV9nZXRfcGFnZXMob2JqLCAmcGFnZXMsIGZhbHNlKTsKLQlrdW5tYXAocGFnZXNb
cGFnZV9udW1dKTsKLX0KLQogc3RhdGljIGludCBvbWFwX2dlbV9kbWFidWZfbW1hcChzdHJ1Y3Qg
ZG1hX2J1ZiAqYnVmZmVyLAogCQlzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSkKIHsKQEAgLTEy
Myw4ICsxMDQsNiBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGRtYV9idWZfb3BzIG9tYXBfZG1hYnVm
X29wcyA9IHsKIAkucmVsZWFzZSA9IGRybV9nZW1fZG1hYnVmX3JlbGVhc2UsCiAJLmJlZ2luX2Nw
dV9hY2Nlc3MgPSBvbWFwX2dlbV9kbWFidWZfYmVnaW5fY3B1X2FjY2VzcywKIAkuZW5kX2NwdV9h
Y2Nlc3MgPSBvbWFwX2dlbV9kbWFidWZfZW5kX2NwdV9hY2Nlc3MsCi0JLm1hcCA9IG9tYXBfZ2Vt
X2RtYWJ1Zl9rbWFwLAotCS51bm1hcCA9IG9tYXBfZ2VtX2RtYWJ1Zl9rdW5tYXAsCiAJLm1tYXAg
PSBvbWFwX2dlbV9kbWFidWZfbW1hcCwKIH07CiAKLS0gCjIuMjQuMAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
