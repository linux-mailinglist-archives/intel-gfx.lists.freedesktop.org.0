Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B099010028D
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2019 11:36:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D3606E25C;
	Mon, 18 Nov 2019 10:35:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6530E6E04E
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Nov 2019 10:35:54 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id 8so18187598wmo.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Nov 2019 02:35:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WOwJZP0J7iDFrucO385G7SzgcBLPJoOGi9VDEvyVQfk=;
 b=FbLcPs4UjuGbfm0PdAU4+ZBDyb9kCkcoiCDj/mRJRRbasvLKbVHvGVck+h/4i1U8d9
 /EISJSrVvmx0MPOKLB3X68MBo38xOhBcigivau+n0ubNGdp3tCVPv/BeVB6PKukxfmZH
 o4INNhyEQ5ZpArbilgwbt2odeev98YuPnEuWywFNt1ZepbqZrTp7GdKIMmcJJQVBHDtW
 ZSzsxRaHA5o2aRLcpQV7nmcaOeW1TYEHIL9tlqnMMRuk9BtWpF/bAQXMtaQYaOyPdi91
 iReWNQv6kgmQZp1UB8tEBoQuPxXDPxmv7rlGOvmet8yaf3ffK3O49Ml/eb42HUNhXPG+
 rSEw==
X-Gm-Message-State: APjAAAWppj+hl7ellr6i+GR0sHyq2LVro1X+oWnuQvpfDjE71s4B0q4s
 2ig3f7pf7UROWfBtAPHhVPEWGxNOCwQ=
X-Google-Smtp-Source: APXvYqyv++eTh4dfRe6HPZGN9Rfh3IWSCLv9l/B563p4a/JGelFE1fu2E2/VaqryK02I8smzGjsNXg==
X-Received: by 2002:a1c:1fca:: with SMTP id
 f193mr26445746wmf.173.1574073353073; 
 Mon, 18 Nov 2019 02:35:53 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id j2sm22749200wrt.61.2019.11.18.02.35.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 02:35:52 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 18 Nov 2019 11:35:29 +0100
Message-Id: <20191118103536.17675-9-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191118103536.17675-1-daniel.vetter@ffwll.ch>
References: <20191118103536.17675-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WOwJZP0J7iDFrucO385G7SzgcBLPJoOGi9VDEvyVQfk=;
 b=liBzcF0q0R7pU1njSk5pcTNLImCXtbYEylrqni9HUYs9TtIojj7P4J1HU/XVNGZg9x
 j22qg32BjvSkZyKX9+vta5Kg0slb3+0yLSF/KCogPIQanRkFVTULjk1mbmloGzfeBCFb
 VwaOGEsVwJQVkXWz774gqhuoIxeyasmJ0BbY0=
Subject: [Intel-gfx] [PATCH 08/15] drm/tegra: Remove dma_buf->k(un)map
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
 Jonathan Hunter <jonathanh@nvidia.com>, linux-tegra@vger.kernel.org,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Tm8gaW4tdHJlZSB1c2VycyBsZWZ0LgoKU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFu
aWVsLnZldHRlckBpbnRlbC5jb20+CkNjOiBUaGllcnJ5IFJlZGluZyA8dGhpZXJyeS5yZWRpbmdA
Z21haWwuY29tPgpDYzogSm9uYXRoYW4gSHVudGVyIDxqb25hdGhhbmhAbnZpZGlhLmNvbT4KQ2M6
IGxpbnV4LXRlZ3JhQHZnZXIua2VybmVsLm9yZwotLS0KIGRyaXZlcnMvZ3B1L2RybS90ZWdyYS9n
ZW0uYyB8IDEyIC0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDEyIGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS90ZWdyYS9nZW0uYyBiL2RyaXZlcnMvZ3B1L2Ry
bS90ZWdyYS9nZW0uYwppbmRleCA2NjJjYjdjODdlZjUuLjg0YmIyOTA3MDUzNiAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL3RlZ3JhL2dlbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS90ZWdy
YS9nZW0uYwpAQCAtNTg1LDE2ICs1ODUsNiBAQCBzdGF0aWMgaW50IHRlZ3JhX2dlbV9wcmltZV9l
bmRfY3B1X2FjY2VzcyhzdHJ1Y3QgZG1hX2J1ZiAqYnVmLAogCXJldHVybiAwOwogfQogCi1zdGF0
aWMgdm9pZCAqdGVncmFfZ2VtX3ByaW1lX2ttYXAoc3RydWN0IGRtYV9idWYgKmJ1ZiwgdW5zaWdu
ZWQgbG9uZyBwYWdlKQotewotCXJldHVybiBOVUxMOwotfQotCi1zdGF0aWMgdm9pZCB0ZWdyYV9n
ZW1fcHJpbWVfa3VubWFwKHN0cnVjdCBkbWFfYnVmICpidWYsIHVuc2lnbmVkIGxvbmcgcGFnZSwK
LQkJCQkgICB2b2lkICphZGRyKQotewotfQotCiBzdGF0aWMgaW50IHRlZ3JhX2dlbV9wcmltZV9t
bWFwKHN0cnVjdCBkbWFfYnVmICpidWYsIHN0cnVjdCB2bV9hcmVhX3N0cnVjdCAqdm1hKQogewog
CXN0cnVjdCBkcm1fZ2VtX29iamVjdCAqZ2VtID0gYnVmLT5wcml2OwpAQCAtNjI1LDggKzYxNSw2
IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZG1hX2J1Zl9vcHMgdGVncmFfZ2VtX3ByaW1lX2RtYWJ1
Zl9vcHMgPSB7CiAJLnJlbGVhc2UgPSB0ZWdyYV9nZW1fcHJpbWVfcmVsZWFzZSwKIAkuYmVnaW5f
Y3B1X2FjY2VzcyA9IHRlZ3JhX2dlbV9wcmltZV9iZWdpbl9jcHVfYWNjZXNzLAogCS5lbmRfY3B1
X2FjY2VzcyA9IHRlZ3JhX2dlbV9wcmltZV9lbmRfY3B1X2FjY2VzcywKLQkubWFwID0gdGVncmFf
Z2VtX3ByaW1lX2ttYXAsCi0JLnVubWFwID0gdGVncmFfZ2VtX3ByaW1lX2t1bm1hcCwKIAkubW1h
cCA9IHRlZ3JhX2dlbV9wcmltZV9tbWFwLAogCS52bWFwID0gdGVncmFfZ2VtX3ByaW1lX3ZtYXAs
CiAJLnZ1bm1hcCA9IHRlZ3JhX2dlbV9wcmltZV92dW5tYXAsCi0tIAoyLjI0LjAKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
