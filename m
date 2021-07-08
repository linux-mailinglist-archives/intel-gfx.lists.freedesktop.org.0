Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B7463C1872
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jul 2021 19:38:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3081B6E94B;
	Thu,  8 Jul 2021 17:38:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com
 [IPv6:2a00:1450:4864:20::42b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82E6A6E969
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jul 2021 17:38:22 +0000 (UTC)
Received: by mail-wr1-x42b.google.com with SMTP id a8so8533095wrp.5
 for <intel-gfx@lists.freedesktop.org>; Thu, 08 Jul 2021 10:38:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Neep/k8O4rPFqvb2LyTtHB7zNIqSQStnKQ4ditqwKXE=;
 b=QHEatNCQ3lh7lP5sAUpGkKHp+kq4kV2ALQZa6ff1DLZg0AFRaqu94D8mweMPD8o+SL
 VDNETuNiFNKR1Is7BdH9++y+E5hLlm6ZTgaqi9NdA6GsSqSSMhWKvKMq0SjvOCMH7WgZ
 jQIn8hJScysXor+bQ4ZVvRuQ8qSSSZRNX+IHI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Neep/k8O4rPFqvb2LyTtHB7zNIqSQStnKQ4ditqwKXE=;
 b=rMK6byPgwFpFepcpPE3lesoci+lFEWlxEBqH8SBxoSrXYgE61X9bIaWwWb/17+obtC
 PNd6gON80/zQOVlRtlG7vfwhtC95WTqnReA8ptJPwajphaAs23Usy+Jlsk0vOwsn+Gno
 GVD4HpEntGSxyhsKXNgJQrePff+FA49OInR/Yjr+Uf5j69Kytbho4jF1Rd0m3roCcbDI
 X+MEABYMqXJ5xwMQFI8xtph19MCGWdRUFk2qwrbbvtlmMKQnIgwFX67PUFmlMgm80Wyl
 20/ZxL9i0eiJHwZ1IUkwplmI3+9B7oNw+WaSccK88CvR9QY/IP1h0tCcyzo/q6VeHne3
 tW1A==
X-Gm-Message-State: AOAM530At9tqyhXy6a/Pyki65Y8jDdYYX3JcmOUYXJHln5cZsYwVF9Yk
 Xg95KxvuJXOkpbKuMhSjsBIXTg==
X-Google-Smtp-Source: ABdhPJwtwvrObnGsaYKi8d7l2en5+rAga6UTNLIcFUfFXEOyUekIOws2dG7pT/j8eOB2YPGJlurJjw==
X-Received: by 2002:adf:fc83:: with SMTP id g3mr36877023wrr.154.1625765901207; 
 Thu, 08 Jul 2021 10:38:21 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id l4sm2521853wme.26.2021.07.08.10.38.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 Jul 2021 10:38:20 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Thu,  8 Jul 2021 19:37:47 +0200
Message-Id: <20210708173754.3877540-14-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210708173754.3877540-1-daniel.vetter@ffwll.ch>
References: <20210708173754.3877540-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 13/20] drm/sched: Don't store
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
L2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfbWFpbi5jCmluZGV4IGFkNjJmMWQyOTkx
Yy4uZGIzMjZhMWViZjNjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3Nj
aGVkX21haW4uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX21haW4uYwpA
QCAtNjU0LDYgKzY1NCwxMyBAQCBpbnQgZHJtX3NjaGVkX2pvYl9hd2FpdF9mZW5jZShzdHJ1Y3Qg
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
