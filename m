Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECCEC1726C3
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 19:17:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED5486ED25;
	Thu, 27 Feb 2020 18:16:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B3CE6ED0F
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 18:16:25 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id a5so454243wmb.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 10:16:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KtYWRDVuIvnYFleamKDxyysG2IUaegpBBRJT9v1d8kM=;
 b=TJp1mjxYC9oJGBAfV37FnOdYblC6YAGS4F83NRnXa/GIgs+q9vUoRmssqwv0i6EBHQ
 KfQMn5i+5bNBL/xhUHEuIo55GrBaqj18T1Of5IFTZJk66w0uBDn14JmcRQvOTQGh1Szx
 bpic9ltIwunEy8rReve9rS4Lg3ixQBaTLh3FQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KtYWRDVuIvnYFleamKDxyysG2IUaegpBBRJT9v1d8kM=;
 b=TFHdSkrKfYtAbXqlSZCBqmYYZpV6HNxpQSIqCGSRJbmjGk5DGCz7qadnOLqFCjph5j
 GbIP+8zEJ1JRso+UHZwOJo4ZU4vkBSBpe9AiTfqs2qbeKGWCYctBtScZg3qGPbrXlxGc
 d75DNSipr3ZEJUFLptNR3LZFyqi+UAG3tcTthzK1MA+yZfME91YHQ6s34mY91iwcxaxt
 +MmZepoMemyhXt0cFWM9q/vkVzN9uhF/5SmuM/wZ8jjvpku95+6CzKTWeck0fW8hmM2h
 PKaRqKMMombD2lLxDA16oN9HcGHp+1o7rzjYgpsVN/YJBK/PNBK+XjhxzvkXA1RJ41BQ
 NZPQ==
X-Gm-Message-State: APjAAAWtnv77x5Y1TSVUEV6OZns65j0zGdi5OqyV3H80gM49cwzgQMOP
 5XfwKizmChVzjKhKL1mJi1l9fA==
X-Google-Smtp-Source: APXvYqztco97Lhn0v/ohusos+ignbh0vZrrbe/AcSD2U8h9BC6VSyBwvfcO7yCdjXwoAzieIVoJByQ==
X-Received: by 2002:a1c:7d93:: with SMTP id y141mr11163wmc.111.1582827384241; 
 Thu, 27 Feb 2020 10:16:24 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id q1sm8551152wrw.5.2020.02.27.10.16.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 10:16:23 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Thu, 27 Feb 2020 19:15:14 +0100
Message-Id: <20200227181522.2711142-44-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200227181522.2711142-1-daniel.vetter@ffwll.ch>
References: <20200227181522.2711142-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 43/51] drm/gm12u320: Use devm_drm_dev_init
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
 m.felsch@pengutronix.de,
 =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Daniel Vetter <daniel.vetter@intel.com>, l.stach@pengutronix.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T25seSBkcm9wcyB0aGUgZHJtX2Rldl9wdXQsIGJ1dCBoZXkgYSBmZXcgbGluZXMhCgpSZXZpZXdl
ZC1ieTogSGFucyBkZSBHb2VkZSA8aGRlZ29lZGVAcmVkaGF0LmNvbT4KU2lnbmVkLW9mZi1ieTog
RGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+CkNjOiBIYW5zIGRlIEdvZWRl
IDxoZGVnb2VkZUByZWRoYXQuY29tPgpDYzogIk5vcmFsZiBUcsO4bm5lcyIgPG5vcmFsZkB0cm9u
bmVzLm9yZz4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vdGlueS9nbTEydTMyMC5jIHwgMTkgKysrKysr
Ky0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMTIgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3RpbnkvZ20xMnUzMjAuYyBiL2Ry
aXZlcnMvZ3B1L2RybS90aW55L2dtMTJ1MzIwLmMKaW5kZXggNWJkMjZmYzZmYWZhLi42NWRmYjg3
Y2NiMTMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS90aW55L2dtMTJ1MzIwLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL3RpbnkvZ20xMnUzMjAuYwpAQCAtNjc4LDcgKzY3OCw3IEBAIHN0YXRp
YyBpbnQgZ20xMnUzMjBfdXNiX3Byb2JlKHN0cnVjdCB1c2JfaW50ZXJmYWNlICppbnRlcmZhY2Us
CiAJaW5pdF93YWl0cXVldWVfaGVhZCgmZ20xMnUzMjAtPmZiX3VwZGF0ZS53YWl0cSk7CiAKIAlk
ZXYgPSAmZ20xMnUzMjAtPmRldjsKLQlyZXQgPSBkcm1fZGV2X2luaXQoZGV2LCAmZ20xMnUzMjBf
ZHJtX2RyaXZlciwgJmludGVyZmFjZS0+ZGV2KTsKKwlyZXQgPSBkZXZtX2RybV9kZXZfaW5pdCgm
aW50ZXJmYWNlLT5kZXYsIGRldiwgJmdtMTJ1MzIwX2RybV9kcml2ZXIpOwogCWlmIChyZXQpIHsK
IAkJa2ZyZWUoZ20xMnUzMjApOwogCQlyZXR1cm4gcmV0OwpAQCAtNjg4LDcgKzY4OCw3IEBAIHN0
YXRpYyBpbnQgZ20xMnUzMjBfdXNiX3Byb2JlKHN0cnVjdCB1c2JfaW50ZXJmYWNlICppbnRlcmZh
Y2UsCiAKIAlyZXQgPSBkcm1fbW9kZV9jb25maWdfaW5pdChkZXYpOwogCWlmIChyZXQpCi0JCWdv
dG8gZXJyX3B1dDsKKwkJcmV0dXJuIHJldDsKIAogCWRldi0+bW9kZV9jb25maWcubWluX3dpZHRo
ID0gR00xMlUzMjBfVVNFUl9XSURUSDsKIAlkZXYtPm1vZGVfY29uZmlnLm1heF93aWR0aCA9IEdN
MTJVMzIwX1VTRVJfV0lEVEg7CkBAIC02OTgsMTUgKzY5OCwxNSBAQCBzdGF0aWMgaW50IGdtMTJ1
MzIwX3VzYl9wcm9iZShzdHJ1Y3QgdXNiX2ludGVyZmFjZSAqaW50ZXJmYWNlLAogCiAJcmV0ID0g
Z20xMnUzMjBfdXNiX2FsbG9jKGdtMTJ1MzIwKTsKIAlpZiAocmV0KQotCQlnb3RvIGVycl9wdXQ7
CisJCXJldHVybiByZXQ7CiAKIAlyZXQgPSBnbTEydTMyMF9zZXRfZWNvbW9kZShnbTEydTMyMCk7
CiAJaWYgKHJldCkKLQkJZ290byBlcnJfcHV0OworCQlyZXR1cm4gcmV0OwogCiAJcmV0ID0gZ20x
MnUzMjBfY29ubl9pbml0KGdtMTJ1MzIwKTsKIAlpZiAocmV0KQotCQlnb3RvIGVycl9wdXQ7CisJ
CXJldHVybiByZXQ7CiAKIAlyZXQgPSBkcm1fc2ltcGxlX2Rpc3BsYXlfcGlwZV9pbml0KCZnbTEy
dTMyMC0+ZGV2LAogCQkJCQkgICAmZ20xMnUzMjAtPnBpcGUsCkBAIC03MTYsMjIgKzcxNiwxOCBA
QCBzdGF0aWMgaW50IGdtMTJ1MzIwX3VzYl9wcm9iZShzdHJ1Y3QgdXNiX2ludGVyZmFjZSAqaW50
ZXJmYWNlLAogCQkJCQkgICBnbTEydTMyMF9waXBlX21vZGlmaWVycywKIAkJCQkJICAgJmdtMTJ1
MzIwLT5jb25uKTsKIAlpZiAocmV0KQotCQlnb3RvIGVycl9wdXQ7CisJCXJldHVybiByZXQ7CiAK
IAlkcm1fbW9kZV9jb25maWdfcmVzZXQoZGV2KTsKIAogCXVzYl9zZXRfaW50ZmRhdGEoaW50ZXJm
YWNlLCBkZXYpOwogCXJldCA9IGRybV9kZXZfcmVnaXN0ZXIoZGV2LCAwKTsKIAlpZiAocmV0KQot
CQlnb3RvIGVycl9wdXQ7CisJCXJldHVybiByZXQ7CiAKIAlkcm1fZmJkZXZfZ2VuZXJpY19zZXR1
cChkZXYsIDApOwogCiAJcmV0dXJuIDA7Ci0KLWVycl9wdXQ6Ci0JZHJtX2Rldl9wdXQoZGV2KTsK
LQlyZXR1cm4gcmV0OwogfQogCiBzdGF0aWMgdm9pZCBnbTEydTMyMF91c2JfZGlzY29ubmVjdChz
dHJ1Y3QgdXNiX2ludGVyZmFjZSAqaW50ZXJmYWNlKQpAQCAtNzQxLDcgKzczNyw2IEBAIHN0YXRp
YyB2b2lkIGdtMTJ1MzIwX3VzYl9kaXNjb25uZWN0KHN0cnVjdCB1c2JfaW50ZXJmYWNlICppbnRl
cmZhY2UpCiAKIAlnbTEydTMyMF9zdG9wX2ZiX3VwZGF0ZShnbTEydTMyMCk7CiAJZHJtX2Rldl91
bnBsdWcoZGV2KTsKLQlkcm1fZGV2X3B1dChkZXYpOwogfQogCiBzdGF0aWMgX19tYXliZV91bnVz
ZWQgaW50IGdtMTJ1MzIwX3N1c3BlbmQoc3RydWN0IHVzYl9pbnRlcmZhY2UgKmludGVyZmFjZSwK
LS0gCjIuMjQuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
Cg==
