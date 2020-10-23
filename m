Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 48E4A296EC9
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Oct 2020 14:23:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 587766E5A0;
	Fri, 23 Oct 2020 12:22:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0B236E50D
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Oct 2020 12:22:42 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id k18so1286342wmj.5
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Oct 2020 05:22:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Oo+WCqNcRY4hz8ARHU44AzglCk3LcvfnVh+Q+d4r9RU=;
 b=QRe2K4NDzMa3XvVHnklPYEQBWwaTYYKSqPpSchH+IzdO7uoZMOJmLrYKxFyPuFedgt
 hBGRQ8jSDsXFVPkf4tno5kbL04YE1J5uETPopMp2haTMemX81cxn8GM2SG8tLS8LW1Tq
 3bmfMo7wGggEbrwFcrXY/XzlIA2yGcA0FzNrU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Oo+WCqNcRY4hz8ARHU44AzglCk3LcvfnVh+Q+d4r9RU=;
 b=KCpxfnqw2gCHG4IXpHfYsawMIU/IcvulfUY6dKnofQKUjcHcWIJNrK4M15ZTR05foi
 VYhgW84eCYtHWovg+CTOUCEOVu/uPVBi5VIZtYNxl5KaUuWP9SI8i3Glx0M8xYHWd2Gw
 PggY+LwTElzWyQQ1cIuD8WROcE2vEYkPe9FB2J6+95nPkkbkWLfWLJHykdzjOzJWjNm5
 DGMNdxRlmQiS3BATcAR6wrRoB6PMdkZjaQD78ehIl5Kr7uSCZz4pWCHIS4MUzFqTQONy
 LIWnU9BlAD5NRHxY0FGf2ivQslFUa48YUOjt0oXGT20UENz22O8USKgHXbV2XrQeAPRX
 6NIg==
X-Gm-Message-State: AOAM533m3UQVL4zShRVTNFDgtnQsIshK8zxO/B4A6TnDPf951r80LkFl
 XxQQHaXPwcFkkcGBxD5v8Zyb6A==
X-Google-Smtp-Source: ABdhPJxmIrYyotlMUykKvZ8yFRoXhmXv4OuqQiJQL/V4ipGjIXJX6Lq0IMzK4dvfWtQS6XzUEHIJNg==
X-Received: by 2002:a7b:c401:: with SMTP id k1mr2023294wmi.120.1603455761598; 
 Fri, 23 Oct 2020 05:22:41 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id y4sm3056484wrp.74.2020.10.23.05.22.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Oct 2020 05:22:41 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 23 Oct 2020 14:21:28 +0200
Message-Id: <20201023122216.2373294-17-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201023122216.2373294-1-daniel.vetter@ffwll.ch>
References: <20201021163242.1458885-1-daniel.vetter@ffwll.ch>
 <20201023122216.2373294-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 17/65] drm/scheduler: use dma-fence annotations
 in main thread
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
Cc: linux-rdma@vger.kernel.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 amd-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>,
 linaro-mm-sig@lists.linaro.org, Daniel Vetter <daniel.vetter@intel.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SWYgdGhlIHNjaGVkdWxlciBydCB0aHJlYWQgZ2V0cyBzdHVjayBvbiBhIG11dGV4IHRoYXQgd2Un
cmUgaG9sZGluZwp3aGlsZSB3YWl0aW5nIGZvciBncHUgd29ya2xvYWRzIHRvIGNvbXBsZXRlLCB3
ZSBoYXZlIGEgcHJvYmxlbS4KCkFkZCBkbWEtZmVuY2UgYW5ub3RhdGlvbnMgc28gdGhhdCBsb2Nr
ZGVwIGNhbiBjaGVjayB0aGlzIGZvciB1cy4KCkkndmUgdHJpZWQgdG8gcXVpdGUgY2FyZWZ1bGx5
IHJldmlldyB0aGlzLCBhbmQgSSB0aGluayBpdCdzIGF0IHRoZQpyaWdodCBzcG90LiBCdXQgb2J2
aW9zbHkgbm8gZXhwZXJ0IG9uIGRybSBzY2hlZHVsZXIuCgpDYzogbGludXgtbWVkaWFAdmdlci5r
ZXJuZWwub3JnCkNjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKQ2M6IGxpbnV4LXJk
bWFAdmdlci5rZXJuZWwub3JnCkNjOiBhbWQtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpDYzog
aW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+CkNjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9y
c3RAbGludXguaW50ZWwuY29tPgpDYzogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5p
Z0BhbWQuY29tPgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGlu
dGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX21haW4uYyB8IDYg
KysrKysrCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9tYWluLmMgYi9kcml2ZXJzL2dwdS9kcm0vc2No
ZWR1bGVyL3NjaGVkX21haW4uYwppbmRleCA5YTBkNzdhNjgwMTguLmY2OWFiYzRlNzBkMyAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9tYWluLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9tYWluLmMKQEAgLTc2NCw5ICs3NjQsMTIgQEAg
c3RhdGljIGludCBkcm1fc2NoZWRfbWFpbih2b2lkICpwYXJhbSkKIHsKIAlzdHJ1Y3QgZHJtX2dw
dV9zY2hlZHVsZXIgKnNjaGVkID0gKHN0cnVjdCBkcm1fZ3B1X3NjaGVkdWxlciAqKXBhcmFtOwog
CWludCByOworCWJvb2wgZmVuY2VfY29va2llOwogCiAJc2NoZWRfc2V0X2ZpZm9fbG93KGN1cnJl
bnQpOwogCisJZmVuY2VfY29va2llID0gZG1hX2ZlbmNlX2JlZ2luX3NpZ25hbGxpbmcoKTsKKwog
CXdoaWxlICgha3RocmVhZF9zaG91bGRfc3RvcCgpKSB7CiAJCXN0cnVjdCBkcm1fc2NoZWRfZW50
aXR5ICplbnRpdHkgPSBOVUxMOwogCQlzdHJ1Y3QgZHJtX3NjaGVkX2ZlbmNlICpzX2ZlbmNlOwpA
QCAtODI0LDYgKzgyNyw5IEBAIHN0YXRpYyBpbnQgZHJtX3NjaGVkX21haW4odm9pZCAqcGFyYW0p
CiAKIAkJd2FrZV91cCgmc2NoZWQtPmpvYl9zY2hlZHVsZWQpOwogCX0KKworCWRtYV9mZW5jZV9l
bmRfc2lnbmFsbGluZyhmZW5jZV9jb29raWUpOworCiAJcmV0dXJuIDA7CiB9CiAKLS0gCjIuMjgu
MAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
