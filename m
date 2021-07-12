Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 177453C6473
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Jul 2021 22:02:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D1F389DC1;
	Mon, 12 Jul 2021 20:02:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com
 [IPv6:2a00:1450:4864:20::335])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20F6589DB2
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Jul 2021 20:02:01 +0000 (UTC)
Received: by mail-wm1-x335.google.com with SMTP id
 k16-20020a05600c1c90b02901f4ed0fcfe7so785136wms.5
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Jul 2021 13:02:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GSY9W1VxCdMpypdkbaup7CixlFsk0s/gKk3ObtLJVLg=;
 b=XrD3D9ja9dBSoDlgsVH+He3M/Qnc0g7g5V9iYxxuxX6OVy1Ym1kO5KoUk40/N1BN73
 23PWAIQLn4cpJJ9jvhn+wPxhgbHvmtvGhRn+nF/fMXvrF3HJu8+SgkN0eEO0TGvc3Qz4
 UUPaQKOpnGzWXy5tRBYl/sEyZTfWKZTVZ3wVQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GSY9W1VxCdMpypdkbaup7CixlFsk0s/gKk3ObtLJVLg=;
 b=dFqEbygLjesWcbJWNzYB4KoCgnk3EBUPfYT2rPZ97+k7FhoXx1M4yaO7tdCe50V0Dk
 A83kWWs5yNktg71fzFVIWGeUy6OO4R4Aypc89ENBdpzW1ga+JdmThxckVHM1mGt3qBVu
 368ET/FBHGCiADlr8mP9hm25GwOjDBjzprj/GVMSZB76IdECwmQJGwWUwSb6dofP2Gi9
 EDFJotsm4A0fVXt+OL/l09Zf1za3H3Sl0nPJRaMQOHLJst4A1VQnx2puBZEL5FVyWTlO
 aCyDNOjLaFYTtEzB2TPLSSbR1CDq1Qa9l8Ld9zLdYowWscOx99nmip6kZt1TxKDJmHhk
 Vsxg==
X-Gm-Message-State: AOAM5309uEL96T2sz6y7Ie21TCnGs3bL9f40IYSpdo3qrPRtJQSJvl5q
 TWOfZa9huo23vHrF0ZyxnjE4Qw==
X-Google-Smtp-Source: ABdhPJxjeXPggqYsDGc4BnsH9bBPwkFEgfpctPnYSmhVAPacjN8G/a6BByHv1WYSDK7vT2aFCPkqAA==
X-Received: by 2002:a1c:9dd6:: with SMTP id g205mr959206wme.82.1626120119757; 
 Mon, 12 Jul 2021 13:01:59 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id l14sm9858221wrs.22.2021.07.12.13.01.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 12 Jul 2021 13:01:59 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 12 Jul 2021 19:53:36 +0200
Message-Id: <20210712175352.802687-3-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210712175352.802687-1-daniel.vetter@ffwll.ch>
References: <20210712175352.802687-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 02/18] drm/sched: Barriers are needed for
 entity->last_scheduled
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
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Steven Price <steven.price@arm.com>, Daniel Vetter <daniel.vetter@intel.com>,
 Lee Jones <lee.jones@linaro.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SXQgbWlnaHQgYmUgZ29vZCBlbm91Z2ggb24geDg2IHdpdGgganVzdCBSRUFEX09OQ0UsIGJ1dCB0
aGUgd3JpdGUgc2lkZQpzaG91bGQgdGhlbiBhdCBsZWFzdCBiZSBXUklURV9PTkNFIGJlY2F1c2Ug
eDg2IGhhcyB0b3RhbCBzdG9yZSBvcmRlci4KCkl0J3MgZGVmaW5pdGVseSBub3QgZW5vdWdoIG9u
IGFybS4KCkZpeCB0aGlzIHByb3BsZXJ5LCB3aGljaCBtZWFucwotIGV4cGxhaW4gdGhlIG5lZWQg
Zm9yIHRoZSBiYXJyaWVyIGluIGJvdGggcGxhY2VzCi0gcG9pbnQgYXQgdGhlIG90aGVyIHNpZGUg
aW4gZWFjaCBjb21tZW50CgpBbHNvIHB1bGwgb3V0IHRoZSAhc2NoZWRfbGlzdCBjYXNlIGFzIHRo
ZSBmaXJzdCBjaGVjaywgc28gdGhhdCB0aGUKY29kZSBmbG93IGlzIGNsZWFyZXIuCgpXaGlsZSBh
dCBpdCBzcHJpbmtsZSBzb21lIGNvbW1lbnRzIGFyb3VuZCBiZWNhdXNlIGl0IHdhcyB2ZXJ5Cm5v
bi1vYnZpb3VzIHRvIG1lIHdoYXQncyBhY3R1YWxseSBnb2luZyBvbiBoZXJlIGFuZCB3aHkuCgpO
b3RlIHRoYXQgd2UgcmVhbGx5IG5lZWQgZnVsbCBiYXJyaWVycyBoZXJlLCBhdCBmaXJzdCBJIHRo
b3VnaHQKc3RvcmUtcmVsZWFzZSBhbmQgbG9hZC1hY3F1aXJlIG9uIC0+bGFzdF9zY2hlZHVsZWQg
d291bGQgYmUgZW5vdWdoLApidXQgd2UgYWN0dWFsbHkgcmVxdWlyaW5nIG9yZGVyaW5nIGJldHdl
ZW4gdGhhdCBhbmQgdGhlIHF1ZXVlIHN0YXRlLgoKdjI6IFB1dCBzbXBfcm1wKCkgaW4gdGhlIHJp
Z2h0IHBsYWNlIGFuZCBmaXggdXAgY29tbWVudCAoQW5kcmV5KQoKU2lnbmVkLW9mZi1ieTogRGFu
aWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+CkNjOiAiQ2hyaXN0aWFuIEvDtm5p
ZyIgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KQ2M6IFN0ZXZlbiBQcmljZSA8c3RldmVuLnBy
aWNlQGFybS5jb20+CkNjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPgpD
YzogQW5kcmV5IEdyb2R6b3Zza3kgPGFuZHJleS5ncm9kem92c2t5QGFtZC5jb20+CkNjOiBMZWUg
Sm9uZXMgPGxlZS5qb25lc0BsaW5hcm8ub3JnPgpDYzogQm9yaXMgQnJlemlsbG9uIDxib3Jpcy5i
cmV6aWxsb25AY29sbGFib3JhLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3Nj
aGVkX2VudGl0eS5jIHwgMjcgKysrKysrKysrKysrKysrKysrKysrKy0tCiAxIGZpbGUgY2hhbmdl
ZCwgMjUgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX2VudGl0eS5jIGIvZHJpdmVycy9ncHUvZHJtL3NjaGVk
dWxlci9zY2hlZF9lbnRpdHkuYwppbmRleCBmNzM0N2MyODQ4ODYuLjg5ZTNmNmVhZjUxOSAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9lbnRpdHkuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX2VudGl0eS5jCkBAIC00MzksOCArNDM5LDE2
IEBAIHN0cnVjdCBkcm1fc2NoZWRfam9iICpkcm1fc2NoZWRfZW50aXR5X3BvcF9qb2Ioc3RydWN0
IGRybV9zY2hlZF9lbnRpdHkgKmVudGl0eSkKIAkJZG1hX2ZlbmNlX3NldF9lcnJvcigmc2NoZWRf
am9iLT5zX2ZlbmNlLT5maW5pc2hlZCwgLUVDQU5DRUxFRCk7CiAKIAlkbWFfZmVuY2VfcHV0KGVu
dGl0eS0+bGFzdF9zY2hlZHVsZWQpOworCiAJZW50aXR5LT5sYXN0X3NjaGVkdWxlZCA9IGRtYV9m
ZW5jZV9nZXQoJnNjaGVkX2pvYi0+c19mZW5jZS0+ZmluaXNoZWQpOwogCisJLyoKKwkgKiBJZiB0
aGUgcXVldWUgaXMgZW1wdHkgd2UgYWxsb3cgZHJtX3NjaGVkX2VudGl0eV9zZWxlY3RfcnEoKSB0
bworCSAqIGxvY2tsZXNzbHkgYWNjZXNzIC0+bGFzdF9zY2hlZHVsZWQuIFRoaXMgb25seSB3b3Jr
cyBpZiB3ZSBzZXQgdGhlCisJICogcG9pbnRlciBiZWZvcmUgd2UgZGVxdWV1ZSBhbmQgaWYgd2Ug
YSB3cml0ZSBiYXJyaWVyIGhlcmUuCisJICovCisJc21wX3dtYigpOworCiAJc3BzY19xdWV1ZV9w
b3AoJmVudGl0eS0+am9iX3F1ZXVlKTsKIAlyZXR1cm4gc2NoZWRfam9iOwogfQpAQCAtNDU5LDEw
ICs0NjcsMjUgQEAgdm9pZCBkcm1fc2NoZWRfZW50aXR5X3NlbGVjdF9ycShzdHJ1Y3QgZHJtX3Nj
aGVkX2VudGl0eSAqZW50aXR5KQogCXN0cnVjdCBkcm1fZ3B1X3NjaGVkdWxlciAqc2NoZWQ7CiAJ
c3RydWN0IGRybV9zY2hlZF9ycSAqcnE7CiAKLQlpZiAoc3BzY19xdWV1ZV9jb3VudCgmZW50aXR5
LT5qb2JfcXVldWUpIHx8ICFlbnRpdHktPnNjaGVkX2xpc3QpCisJLyogc2luZ2xlIHBvc3NpYmxl
IGVuZ2luZSBhbmQgYWxyZWFkeSBzZWxlY3RlZCAqLworCWlmICghZW50aXR5LT5zY2hlZF9saXN0
KQorCQlyZXR1cm47CisKKwkvKiBxdWV1ZSBub24tZW1wdHksIHN0YXkgb24gdGhlIHNhbWUgZW5n
aW5lICovCisJaWYgKHNwc2NfcXVldWVfY291bnQoJmVudGl0eS0+am9iX3F1ZXVlKSkKIAkJcmV0
dXJuOwogCi0JZmVuY2UgPSBSRUFEX09OQ0UoZW50aXR5LT5sYXN0X3NjaGVkdWxlZCk7CisJLyoK
KwkgKiBPbmx5IHdoZW4gdGhlIHF1ZXVlIGlzIGVtcHR5IGFyZSB3ZSBndWFyYW50ZWVkIHRoYXQg
dGhlIHNjaGVkdWxlcgorCSAqIHRocmVhZCBjYW5ub3QgY2hhbmdlIC0+bGFzdF9zY2hlZHVsZWQu
IFRvIGVuZm9yY2Ugb3JkZXJpbmcgd2UgbmVlZAorCSAqIGEgcmVhZCBiYXJyaWVyIGhlcmUuIFNl
ZSBkcm1fc2NoZWRfZW50aXR5X3BvcF9qb2IoKSBmb3IgdGhlIG90aGVyCisJICogc2lkZS4KKwkg
Ki8KKwlzbXBfcm1iKCk7CisKKwlmZW5jZSA9IGVudGl0eS0+bGFzdF9zY2hlZHVsZWQ7CisKKwkv
KiBzdGF5IG9uIHRoZSBzYW1lIGVuZ2luZSBpZiB0aGUgcHJldmlvdXMgam9iIGhhc24ndCBmaW5p
c2hlZCAqLwogCWlmIChmZW5jZSAmJiAhZG1hX2ZlbmNlX2lzX3NpZ25hbGVkKGZlbmNlKSkKIAkJ
cmV0dXJuOwogCi0tIAoyLjMyLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeAo=
