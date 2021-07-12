Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E3E53C649E
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Jul 2021 22:02:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33FC189E0D;
	Mon, 12 Jul 2021 20:02:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com
 [IPv6:2a00:1450:4864:20::435])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31B5589E05
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Jul 2021 20:02:11 +0000 (UTC)
Received: by mail-wr1-x435.google.com with SMTP id k4so20946450wrc.8
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Jul 2021 13:02:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ezhaA8hTBUICMyc9KfH8N0Ki2qpVtTK3oPL1/iX+DhE=;
 b=WvivAdaKsVfa79rAQx/9iAZ2ztB0DCmwcyARgn/20xmhYqF4sqZA7xQ1e3vLrWAbir
 675MS66KN4C77TJVv66ZnEkHCn6nIX/Y4WBG0hIAlozl+vkh+eL07Olf7MELbvxedSaK
 LInOPpE+XOQwc5/ldMFb4xJEnWkmkipU9Yv1I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ezhaA8hTBUICMyc9KfH8N0Ki2qpVtTK3oPL1/iX+DhE=;
 b=c8bTjP96YzsRYwZyDlu6d7YXirOLOqk2ac1YIrtiQ7VTf8oeMkIdPJ9gboUEGuUVUm
 f7OOCb8fchjjIUex61cnZs3elf8z0rmvraOC2jpXAoqdeTiyNTJjWKfeFGpj1rJA0L+Q
 a+XvVFm3XZQpZXGsbvdHfRxKVSHbvviIW9uv0xDhEIuAuLZ3R9p8OdgiSU41L0wxRHPw
 MB4zXwHX5nSVaPVXA8yATd6fCVJhxMbNWF/YWE1T3TgSYQ8NbQAW3KaC8XX6tnxj5Z10
 nTbi96Ski99aMVnwT/WRO7Wk3Rtb3cfBi7oNSI+ZIPX3FiGwJiaCwIVkgE3eFr0zuMVA
 4TZA==
X-Gm-Message-State: AOAM530EuWYps7lBNC+aaRLYsbs6sd7Cyw08QSGl7+SQUIS6X9sZ3cSX
 vmxmyOnDHC0ilBJ0WV0edCN49A==
X-Google-Smtp-Source: ABdhPJzz6Ty+0HbQQD5KqOZq4W2JOaXsv4E/IUMIyzLnldbgzh6U9YV/u0HOsJaD5B3+exw82XQkag==
X-Received: by 2002:adf:de84:: with SMTP id w4mr885712wrl.104.1626120129933;
 Mon, 12 Jul 2021 13:02:09 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id l14sm9858221wrs.22.2021.07.12.13.02.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 12 Jul 2021 13:02:09 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 12 Jul 2021 19:53:46 +0200
Message-Id: <20210712175352.802687-13-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210712175352.802687-1-daniel.vetter@ffwll.ch>
References: <20210712175352.802687-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 12/18] drm/sched: Don't store
 self-dependencies
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
Cc: Andrey Grodzovsky <andrey.grodzovsky@amd.com>,
 Jack Zhang <Jack.Zhang1@amd.com>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Luben Tuikov <luben.tuikov@amd.com>, Alex Deucher <alexander.deucher@amd.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBpcyBlc3NlbnRpYWxseSBwYXJ0IG9mIGRybV9zY2hlZF9kZXBlbmRlbmN5X29wdGltaXpl
ZCgpLCB3aGljaApvbmx5IGFtZGdwdSBzZWVtcyB0byBtYWtlIHVzZSBvZi4gVXNlIGl0IGEgYml0
IG1vcmUuCgpUaGlzIHdvdWxkIG1lYW4gdGhhdCBhcy1pcyBhbWRncHUgY2FuJ3QgdXNlIHRoZSBk
ZXBlbmRlbmN5IGhlbHBlcnMsIGF0CmxlYXN0IG5vdCB3aXRoIHRoZSBjdXJyZW50IGFwcHJvYWNo
IGFtZGdwdSBoYXMgZm9yIGRlY2lkaW5nIHdoZXRoZXIgYQp2bV9mbHVzaCBpcyBuZWVkZWQuIFNp
bmNlIGFtZGdwdSBhbHNvIGhhcyB2ZXJ5IHNwZWNpYWwgcnVsZXMgYXJvdW5kCmltcGxpY2l0IGZl
bmNpbmcgaXQgY2FuJ3QgdXNlIHRob3NlIGhlbHBlcnMgZWl0aGVyLCBhbmQgYWRkaW5nIGEKZHJt
X3NjaGVkX2pvYl9hd2FpdF9mZW5jZV9hbHdheXMgb3Igc2ltaWxhciBmb3IgYW1kZ3B1IHdvdWxk
bid0IGJlIHRvbwpvbmVyb3VzLiBUaGF0IHdheSB0aGUgc3BlY2lhbCBjYXNlIGhhbmRsaW5nIGZv
ciBhbWRncHUgc3RpY2tzIGV2ZW4KbW9yZSBvdXQgYW5kIHdlIGhhdmUgaGlnaGVyIGNoYW5jZXMg
dGhhdCByZXZpZXdlcnMgdGhhdCBnbyBhY3Jvc3MgYWxsCmRyaXZlcnMgd29udCBtaXNzIGl0LgoK
UmV2aWV3ZWQtYnk6IEx1Y2FzIFN0YWNoIDxsLnN0YWNoQHBlbmd1dHJvbml4LmRlPgpTaWduZWQt
b2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KQ2M6ICJDaHJp
c3RpYW4gS8O2bmlnIiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgpDYzogRGFuaWVsIFZldHRl
ciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KQ2M6IEx1YmVuIFR1aWtvdiA8bHViZW4udHVpa292
QGFtZC5jb20+CkNjOiBBbmRyZXkgR3JvZHpvdnNreSA8YW5kcmV5Lmdyb2R6b3Zza3lAYW1kLmNv
bT4KQ2M6IEFsZXggRGV1Y2hlciA8YWxleGFuZGVyLmRldWNoZXJAYW1kLmNvbT4KQ2M6IEphY2sg
WmhhbmcgPEphY2suWmhhbmcxQGFtZC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxl
ci9zY2hlZF9tYWluLmMgfCA3ICsrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMo
KykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX21haW4uYyBi
L2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfbWFpbi5jCmluZGV4IDg0YzMwYmFkYjc4
ZS4uZmQ1MmRiOTA2YjkwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3Nj
aGVkX21haW4uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX21haW4uYwpA
QCAtNjYwLDYgKzY2MCwxMyBAQCBpbnQgZHJtX3NjaGVkX2pvYl9hd2FpdF9mZW5jZShzdHJ1Y3Qg
ZHJtX3NjaGVkX2pvYiAqam9iLAogCWlmICghZmVuY2UpCiAJCXJldHVybiAwOwogCisJLyogaWYg
aXQncyBhIGZlbmNlIGZyb20gdXMgaXQncyBndWFyYW50ZWVkIHRvIGJlIGVhcmxpZXIgKi8KKwlp
ZiAoZmVuY2UtPmNvbnRleHQgPT0gam9iLT5lbnRpdHktPmZlbmNlX2NvbnRleHQgfHwKKwkgICAg
ZmVuY2UtPmNvbnRleHQgPT0gam9iLT5lbnRpdHktPmZlbmNlX2NvbnRleHQgKyAxKSB7CisJCWRt
YV9mZW5jZV9wdXQoZmVuY2UpOworCQlyZXR1cm4gMDsKKwl9CisKIAkvKiBEZWR1cGxpY2F0ZSBp
ZiB3ZSBhbHJlYWR5IGRlcGVuZCBvbiBhIGZlbmNlIGZyb20gdGhlIHNhbWUgY29udGV4dC4KIAkg
KiBUaGlzIGxldHMgdGhlIHNpemUgb2YgdGhlIGFycmF5IG9mIGRlcHMgc2NhbGUgd2l0aCB0aGUg
bnVtYmVyIG9mCiAJICogZW5naW5lcyBpbnZvbHZlZCwgcmF0aGVyIHRoYW4gdGhlIG51bWJlciBv
ZiBCT3MuCi0tIAoyLjMyLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeAo=
