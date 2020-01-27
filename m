Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4574614A164
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2020 11:02:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82D476EAB4;
	Mon, 27 Jan 2020 10:02:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D91276EAB4
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2020 10:02:10 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id q10so10396045wrm.11
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2020 02:02:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Dl6pDRuxn83oTxQUltB0tjgjlPYDl59kbbRtt4dLBgM=;
 b=b4+boFWbdAPGjXG/EzbaNFa2tnHMgTOVHuuDFcq7LidAssebAw8a/F9DohGaUZiQsZ
 5VA3enC07ipHei8bkoe2iu1JaH8/i9ZWnGD0yihTHl7qf9MHKd/6UXjdgP5+7R1XoNQE
 5zaS2NwBe9e6zTVfiRB3OLYS72rtUzq6meqGc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Dl6pDRuxn83oTxQUltB0tjgjlPYDl59kbbRtt4dLBgM=;
 b=loCCAL2muNRn9ydo08b4RhVJMHQ8MEIRJj3aUE+YR6QOyndc5hcjLIYfj9KBOnosQI
 80uKr0I+VrPlmvmKEWu59kZIg1r7WBDQTVg/fPgu9GCf16F6WCasESiveCVSZtszWknA
 tBu22MgWeNWmWj+AIE2MvCK/U/csDZ+NLrrEJZQx/iw+BxyrF8OCyNQH0DM1NQxZtYAX
 4fL7pHBtybi0g2IeOTbBOak4DjNi9QgEgduS++9gm08iLDhwnCuKoicg1bfoIXNhER5K
 uZXw8b157g/tZ22uOFJPZv9tyyRAjamimqlrwKB0r/z7EMAZeSuQcx6Kh4oudc+oXHBF
 jSKQ==
X-Gm-Message-State: APjAAAW3KFy+zHhDTXRcvFrd0sLmzzvnmAmmHtQDxejoQe2YtAC+tESU
 q4nUqYxrVVoKac0NgP5ewNOT0g==
X-Google-Smtp-Source: APXvYqzRmqcqHLpH1PdlHq70gB7ZG4xH0q66D3FR2/9q4wSFH9wZgU2nGVY3uUVNDNOWRZsS9OQOeA==
X-Received: by 2002:adf:fd87:: with SMTP id d7mr21815470wrr.226.1580119329499; 
 Mon, 27 Jan 2020 02:02:09 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u7sm18175281wmj.3.2020.01.27.02.02.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Jan 2020 02:02:08 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 27 Jan 2020 11:02:03 +0100
Message-Id: <20200127100203.1299322-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/auth: Drop master_create/destroy hooks
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
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m=20=28VMware=29?= <thomas_os@shipmail.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

dm13Z2Z4IHN0b3BwZWQgdXNpbmcgdGhlbS4KCldpdGggdGhlIGRybSBkZXZpY2UgbW9kZWwgdGhh
dCB3ZSd2ZSBzbG93bHkgZXZvbHZlZCBvdmVyIHRoZSBwYXN0IGZldwp5ZWFycyBtYXN0ZXIgc3Rh
dHVzIGVzc2VudGlhbGx5IGNvbnRyb2xzIGFjY2VzcyB0byBkaXNwbGF5IHJlc291cmNlcywKYW5k
IG5vdGhpbmcgZWxzZS4gU2luY2UgdGhhdCdzIGEgcHVyZSBhY2Nlc3MgcGVybWlzc2lvbiBjaGVj
ayBkcml2ZXJzCnNob3VsZCBoYXZlIG5vIG5lZWQgYXQgYWxsIHRvIHRyYWNrIGFkZGl0aW9uYWwg
c3RhdGUgb24gYSBwZXIgZmlsZQpiYXNpcy4KCkFzaWRlOiBGb3IgY2xlYW51cCBhbmQgcmVzdG9y
aW5nIGtlcm5lbC1pbnRlcm5hbCBjbGllbnRzIHRoZSBncmFuZApwbGFuIGlzIHRvIG1vdmUgZXZl
cnlvbmUgb3ZlciB0byBkcm1fY2xpZW50IGFuZApkcm1fbWFzdGVyX2ludGVybmFsX2FjcXVpcmUv
cmVsZWFzZSwgbGlrZSB0aGUgZ2VuZXJpYyBmYmRldiBjb2RlCmFscmVhZHkgZG9lcy4gVGhhdCBz
aG91bGQgZ2V0IHJpZCBvZiBtb3N0IC0+bGFzdGNsb3NlIGltcGxlbWVudGF0aW9ucywKYW5kIEkg
dGhpbmsgYWxzbyBzdWJzdW1lcyBhbnkgcHJvY2Vzc2luZyB2bXdnZnggZG9lcyBpbgptYXN0ZXJf
c2V0L2Ryb3AuCgpDYzogIlRob21hcyBIZWxsc3Ryw7ZtIChWTXdhcmUpIiA8dGhvbWFzX29zQHNo
aXBtYWlsLm9yZz4KU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBp
bnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2RybV9hdXRoLmMgfCAgOCAtLS0tLS0tLQog
aW5jbHVkZS9kcm0vZHJtX2Rydi5oICAgICAgfCAxNCAtLS0tLS0tLS0tLS0tLQogMiBmaWxlcyBj
aGFuZ2VkLCAyMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJt
X2F1dGguYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fYXV0aC5jCmluZGV4IGNjOWFjZDk4NmM2OC4u
NTMxYjg3NmQwZWQ4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2F1dGguYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vZHJtX2F1dGguYwpAQCAtMTUzLDExICsxNTMsNiBAQCBzdGF0aWMg
aW50IGRybV9uZXdfc2V0X21hc3RlcihzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCBzdHJ1Y3QgZHJt
X2ZpbGUgKmZwcml2KQogCQlyZXR1cm4gLUVOT01FTTsKIAl9CiAKLQlpZiAoZGV2LT5kcml2ZXIt
Pm1hc3Rlcl9jcmVhdGUpIHsKLQkJcmV0ID0gZGV2LT5kcml2ZXItPm1hc3Rlcl9jcmVhdGUoZGV2
LCBmcHJpdi0+bWFzdGVyKTsKLQkJaWYgKHJldCkKLQkJCWdvdG8gb3V0X2VycjsKLQl9CiAJZnBy
aXYtPmlzX21hc3RlciA9IDE7CiAJZnByaXYtPmF1dGhlbnRpY2F0ZWQgPSAxOwogCkBAIC0zMzIs
OSArMzI3LDYgQEAgc3RhdGljIHZvaWQgZHJtX21hc3Rlcl9kZXN0cm95KHN0cnVjdCBrcmVmICpr
cmVmKQogCWlmIChkcm1fY29yZV9jaGVja19mZWF0dXJlKGRldiwgRFJJVkVSX01PREVTRVQpKQog
CQlkcm1fbGVhc2VfZGVzdHJveShtYXN0ZXIpOwogCi0JaWYgKGRldi0+ZHJpdmVyLT5tYXN0ZXJf
ZGVzdHJveSkKLQkJZGV2LT5kcml2ZXItPm1hc3Rlcl9kZXN0cm95KGRldiwgbWFzdGVyKTsKLQog
CWRybV9sZWdhY3lfbWFzdGVyX3JtbWFwcyhkZXYsIG1hc3Rlcik7CiAKIAlpZHJfZGVzdHJveSgm
bWFzdGVyLT5tYWdpY19tYXApOwpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0vZHJtX2Rydi5oIGIv
aW5jbHVkZS9kcm0vZHJtX2Rydi5oCmluZGV4IGYzZjNlMTA4NzNhZi4uNzdiYzYzZGUwYTkxIDEw
MDY0NAotLS0gYS9pbmNsdWRlL2RybS9kcm1fZHJ2LmgKKysrIGIvaW5jbHVkZS9kcm0vZHJtX2Ry
di5oCkBAIC00NjAsMjAgKzQ2MCw2IEBAIHN0cnVjdCBkcm1fZHJpdmVyIHsKIAkgKi8KIAl2b2lk
ICgqaXJxX3VuaW5zdGFsbCkgKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpOwogCi0JLyoqCi0JICog
QG1hc3Rlcl9jcmVhdGU6Ci0JICoKLQkgKiBDYWxsZWQgd2hlbmV2ZXIgYSBuZXcgbWFzdGVyIGlz
IGNyZWF0ZWQuIE9ubHkgdXNlZCBieSB2bXdnZnguCi0JICovCi0JaW50ICgqbWFzdGVyX2NyZWF0
ZSkoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgc3RydWN0IGRybV9tYXN0ZXIgKm1hc3Rlcik7Ci0K
LQkvKioKLQkgKiBAbWFzdGVyX2Rlc3Ryb3k6Ci0JICoKLQkgKiBDYWxsZWQgd2hlbmV2ZXIgYSBt
YXN0ZXIgaXMgZGVzdHJveWVkLiBPbmx5IHVzZWQgYnkgdm13Z2Z4LgotCSAqLwotCXZvaWQgKCpt
YXN0ZXJfZGVzdHJveSkoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgc3RydWN0IGRybV9tYXN0ZXIg
Km1hc3Rlcik7Ci0KIAkvKioKIAkgKiBAbWFzdGVyX3NldDoKIAkgKgotLSAKMi4yNC4xCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
