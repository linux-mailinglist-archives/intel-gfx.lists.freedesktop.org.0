Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 700563C1B42
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jul 2021 23:54:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BF2C6E90C;
	Thu,  8 Jul 2021 21:54:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com
 [IPv6:2a00:1450:4864:20::636])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46E1B6E8FF
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jul 2021 21:54:46 +0000 (UTC)
Received: by mail-ej1-x636.google.com with SMTP id o5so12309588ejy.7
 for <intel-gfx@lists.freedesktop.org>; Thu, 08 Jul 2021 14:54:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=d1w93YeUX+1iq+sUD/eLjhVo09cAXuAFNyzb5+/PtX8=;
 b=AOaW9lRzd+A1i5+zCfXF2et/fkCG3+e1jzD9l6EGMpAMRCbDI2g8RtEEeELlakqjrQ
 FfjquAzlGIGCyPWOsaRi8yGmEtOWzfK9bXPwnT7LhcoiZ8ELHJPTBTdO5IfQv/Af1YN9
 UwQw9QVw5gOxh+dhd9y8DgPwAXAGq6nP32IYM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=d1w93YeUX+1iq+sUD/eLjhVo09cAXuAFNyzb5+/PtX8=;
 b=XPx7JZjFBzWYoSTVJSKy32RHCi9c7/JUZeggUAuqiNjDLeYMg7PQx/TMq9NFXcVnZi
 HoRSqZrueOaemrYEihvJfpgD2wP3FTivRfvcbCuZ38sRudMjYSOPTzsZTIo26s83/Wrv
 m1Lydl1iZ+JoPyEGbXAstqeKF1RBQm/FkQdtqM7WK9U4v2RUowGwcwNcqwidl5CCAGaC
 bHVioq0WLtTJuXVpmueK4t5ZuQZODYtj90rv7IsZOohyrdbTrYrPhCfxJnHwuNFgcpIY
 D2wAlYjyZIOLRb9svZWKi9kKZTIcue9K2ElqWxM5A9QgNuxCMRcfNr6XtJhtSUYyO33p
 y7rQ==
X-Gm-Message-State: AOAM531Dh6QqWLSGZave+ELY5Fq02q5baznrQgLBcpo4SwW79b98bbQM
 8KOwz1tmvDEZRf+baiJHuWID7g==
X-Google-Smtp-Source: ABdhPJytUe48vXWCnbKLcG9uXFEIys7ziaSlLcRL//xsMtv0kdYbzJ/NtS4SJACwnSrbDNJz2/+qSg==
X-Received: by 2002:a17:906:3919:: with SMTP id
 f25mr12129311eje.190.1625781284650; 
 Thu, 08 Jul 2021 14:54:44 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s26sm421243ejv.87.2021.07.08.14.54.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 Jul 2021 14:54:43 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Thu,  8 Jul 2021 23:54:39 +0200
Message-Id: <20210708215439.4093557-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210708173754.3877540-4-daniel.vetter@ffwll.ch>
References: <20210708173754.3877540-4-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/sched: Barriers are needed for
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
dWxlci9zY2hlZF9lbnRpdHkuYwppbmRleCA2NGQzOTgxNjY2NDQuLjYzNjYwMDZjMGZjZiAxMDA2
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
