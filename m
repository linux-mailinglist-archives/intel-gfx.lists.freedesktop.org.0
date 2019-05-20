Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F00E22E71
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2019 10:23:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE802892AC;
	Mon, 20 May 2019 08:22:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com
 [IPv6:2a00:1450:4864:20::544])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79A9F89263
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2019 08:22:41 +0000 (UTC)
Received: by mail-ed1-x544.google.com with SMTP id g57so22486838edc.12
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2019 01:22:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qFqlt6mo9F4Pd9G7O8MT8qo6u/5jZNMJ/2yl3qsAQiY=;
 b=AEa3b03IIRD+pFyM/0B7JqYQNN9XbB7S3XpmWsl0WlUnYnQHDnlhN3jhJOc/YbKWwJ
 LBfuj8Dw4LvkTicmfBQceJyoEqez2XEL4/OnTXpwKIgxaLaf0fuRZtGI/Mbsik0fB33M
 0Bd8ra9YZG++M59E9saDwO1gzu/fnRjNpuWjMW3/6F5yjauWQZc1atJIV8zLKK/7hByk
 uugery1vrIZeilul7dpgLIhezpWJe4HeXCkxRGbLq5Iwu5INZ7o7jnN0Feu/rFSFifZH
 YLtbwRSyJg+43v6dJ/0GY92mkq2h7qR1UMKNq2i7DbU0WwNNxIqqSVI79u30E4fG5UZ9
 kRXQ==
X-Gm-Message-State: APjAAAXtnZaXD9VuGDllswUhbNYIbPvII5f0JBndX45bi4h9hSVxTVDD
 h5ePtEKun0+o18eSEJe2cBBZYQ==
X-Google-Smtp-Source: APXvYqzMmvmbNckNLQCV3bNeFbcu8iFFcSc/sM1SOnUv0GtRrF3LCHc2XNNQ3XBMx6YgDvVqoDnpoA==
X-Received: by 2002:a17:906:a34e:: with SMTP id
 bz14mr37528317ejb.82.1558340558649; 
 Mon, 20 May 2019 01:22:38 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id t25sm3021263ejx.8.2019.05.20.01.22.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 01:22:38 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 20 May 2019 10:21:57 +0200
Message-Id: <20190520082216.26273-15-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190520082216.26273-1-daniel.vetter@ffwll.ch>
References: <20190520082216.26273-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qFqlt6mo9F4Pd9G7O8MT8qo6u/5jZNMJ/2yl3qsAQiY=;
 b=RTZ93kzVk9zGtnHtCaoZcwrmjSjG2Mp581U8LZiMJO9kPtk70WxR1ULXsE+s8Ev7ul
 bUysO8XL+pRY2yc7jmOEeZJBz6sHilS5rSOo0Hi+uHKPgTCJJhnmZu57MFXxVDkkyBXZ
 HRh/z9TwO6V3f8214ma3SZ0+PxgdfNq4IR6oc=
Subject: [Intel-gfx] [PATCH 14/33] staging/olpc: lock_fb_info can't fail
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
Cc: Daniel Drake <dsd@laptop.org>, Jens Frederich <jfrederich@gmail.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>, Jon Nettleton <jon.nettleton@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U2ltcGx5IGJlY2F1c2Ugb2xwYyBuZXZlciB1bnJlZ2lzdGVycyB0aGUgZGFtbiB0aGluZy4gSXQg
YWxzbwpyZWdpc3RlcnMgdGhlIGZyYW1lYnVmZmVyIGRpcmVjdGx5IGJ5IHBva2luZyBhcm91bmQg
aW4gZmJkZXYKY29yZSBpbnRlcm5hbHMsIHNvIGl0J3MgYWxsIGFyb3VuZCByYXRoZXIgYnJva2Vu
LgoKU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4K
Q2M6IEplbnMgRnJlZGVyaWNoIDxqZnJlZGVyaWNoQGdtYWlsLmNvbT4KQ2M6IERhbmllbCBEcmFr
ZSA8ZHNkQGxhcHRvcC5vcmc+CkNjOiBKb24gTmV0dGxldG9uIDxqb24ubmV0dGxldG9uQGdtYWls
LmNvbT4KLS0tCiBkcml2ZXJzL3N0YWdpbmcvb2xwY19kY29uL29scGNfZGNvbi5jIHwgNiArLS0t
LS0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgNSBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvb2xwY19kY29uL29scGNfZGNvbi5jIGIvZHJpdmVycy9z
dGFnaW5nL29scGNfZGNvbi9vbHBjX2Rjb24uYwppbmRleCA2YjcxNGY3NDBhYzMuLmEyNTQyMzhi
ZTE4MSAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL29scGNfZGNvbi9vbHBjX2Rjb24uYwor
KysgYi9kcml2ZXJzL3N0YWdpbmcvb2xwY19kY29uL29scGNfZGNvbi5jCkBAIC0yNTAsMTEgKzI1
MCw3IEBAIHN0YXRpYyBib29sIGRjb25fYmxhbmtfZmIoc3RydWN0IGRjb25fcHJpdiAqZGNvbiwg
Ym9vbCBibGFuaykKIAlpbnQgZXJyOwogCiAJY29uc29sZV9sb2NrKCk7Ci0JaWYgKCFsb2NrX2Zi
X2luZm8oZGNvbi0+ZmJpbmZvKSkgewotCQljb25zb2xlX3VubG9jaygpOwotCQlkZXZfZXJyKCZk
Y29uLT5jbGllbnQtPmRldiwgInVuYWJsZSB0byBsb2NrIGZyYW1lYnVmZmVyXG4iKTsKLQkJcmV0
dXJuIGZhbHNlOwotCX0KKwlsb2NrX2ZiX2luZm8oZGNvbi0+ZmJpbmZvKTsKIAogCWRjb24tPmln
bm9yZV9mYl9ldmVudHMgPSB0cnVlOwogCWVyciA9IGZiX2JsYW5rKGRjb24tPmZiaW5mbywKLS0g
CjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
