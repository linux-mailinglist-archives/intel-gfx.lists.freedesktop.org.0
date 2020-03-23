Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 725B418F73D
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 15:50:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 441916E14C;
	Mon, 23 Mar 2020 14:50:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A68AD6E134
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 14:50:06 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id 6so14956539wmi.5
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 07:50:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kbtfsp0R5FIBBIayH8FrOzfPY5PeSem4zC0AulO19ao=;
 b=fhWjLk7Vc+QyE3oZmJCqXJgVUKzPSQAWgE1p3EYV6TkUYaHdzRuHgeHTQt1rcgNmK1
 x079Igf60EYWrI2wSX3fA3EF1aM0kNfkUpaj0WMZKksfLVkuFmYVy4Npa0nQsEWi02AT
 rwoezWWdF/zmqYJHs1F1QGk3y3vKjOWbCOp6c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kbtfsp0R5FIBBIayH8FrOzfPY5PeSem4zC0AulO19ao=;
 b=Wpx+eeZrFUDQVAgl0VTnaki/mFAgdZzgNUUy5xNUDgGKIQF5W2d1a0Z1m7zuXkzIb1
 tQ0DxVMg9VG6/xV2HiX93k8u7UjyGZV1YW81drvgiMb/mZF895DEPW9b45RUdTYumXFk
 YZlMrRMM/kxiiZTjFycpaYwf8jp4frbyik3sSMrYPmyENwdbQXf+q9iBVnBluGM6QaVB
 aMXqbaOzxm5EwxRA7/6RjwnTbSPESHAVzZsZpeOoYSY4hCj89iTCJHwwIoxKpIGpDtin
 iujn1xA5g7IXl5aQDTV0QNzEY4ZxGqm69aSxPIhEeqVOu3k+xNj/yNl4fkUl+gJxSWtN
 Kgvg==
X-Gm-Message-State: ANhLgQ0Y8VNbSdFCwvoJcq8cfJkHAZcz1lSW6JiYRYFIDWhnWb/nvdbe
 5z3Veudp76uUuuY8+hzstKMSGA==
X-Google-Smtp-Source: ADFU+vuvVzo+09P6HiP33K2yl048cpXbnVs2u0q+PzkPsxuNL8OMXEVxX6njLavxDrR0kUIePMjoRA==
X-Received: by 2002:a7b:cb03:: with SMTP id u3mr26069150wmj.12.1584975005306; 
 Mon, 23 Mar 2020 07:50:05 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s22sm20376522wmc.16.2020.03.23.07.50.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Mar 2020 07:50:04 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 23 Mar 2020 15:49:05 +0100
Message-Id: <20200323144950.3018436-7-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200323144950.3018436-1-daniel.vetter@ffwll.ch>
References: <20200323144950.3018436-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 06/51] drm/udl: Use drmm_add_final_kfree
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
 =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, Dave Airlie <airlied@redhat.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Thomas Gleixner <tglx@linutronix.de>,
 Sam Ravnborg <sam@ravnborg.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2l0aCB0aGlzIHdlIGNhbiBkcm9wIHRoZSBmaW5hbCBrZnJlZSBmcm9tIHRoZSByZWxlYXNlIGZ1
bmN0aW9uLgoKdjI6IFdlIG5lZWQgZHJtX2Rldl9wdXQgdG8gdW5yb2xsIHRoZSBkcml2ZXIgY3Jl
YXRpb24gKG9uY2UKZHJtX2Rldl9pbml0IGFuZCBkcm1tX2FkZF9maW5hbF9rZnJlZSBzdWNlZWRl
ZCksIG90aGVyd2lzZQp0aGUgZHJtbV8gbWFnaWMgZG9lc24ndCBoYXBwZW4uCgp2MzogQWN0dWFs
bHkgc3F1YXNoIGluIHRoZSBmaXh1cCAoTGF1cmVudCkuCgpBY2tlZC1ieTogVGhvbWFzIFppbW1l
cm1hbm4gPHR6aW1tZXJtYW5uQHN1c2UuZGU+CkFja2VkLWJ5OiBTYW0gUmF2bmJvcmcgPHNhbUBy
YXZuYm9yZy5vcmc+ClNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJA
aW50ZWwuY29tPgpDYzogTGF1cmVudCBQaW5jaGFydCA8bGF1cmVudC5waW5jaGFydEBpZGVhc29u
Ym9hcmQuY29tPgpDYzogRGF2ZSBBaXJsaWUgPGFpcmxpZWRAcmVkaGF0LmNvbT4KQ2M6IFNlYW4g
UGF1bCA8c2VhbkBwb29ybHkucnVuPgpDYzogVGhvbWFzIFppbW1lcm1hbm4gPHR6aW1tZXJtYW5u
QHN1c2UuZGU+CkNjOiBFbWlsIFZlbGlrb3YgPGVtaWwubC52ZWxpa292QGdtYWlsLmNvbT4KQ2M6
IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+CkNjOiAiTm9yYWxmIFRyw7hu
bmVzIiA8bm9yYWxmQHRyb25uZXMub3JnPgpDYzogVGhvbWFzIEdsZWl4bmVyIDx0Z2x4QGxpbnV0
cm9uaXguZGU+CkNjOiBTYW0gUmF2bmJvcmcgPHNhbUByYXZuYm9yZy5vcmc+Ci0tLQogZHJpdmVy
cy9ncHUvZHJtL3VkbC91ZGxfZHJ2LmMgfCA2ICsrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5z
ZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
dWRsL3VkbF9kcnYuYyBiL2RyaXZlcnMvZ3B1L2RybS91ZGwvdWRsX2Rydi5jCmluZGV4IGU2YzFj
ZDc3ZDRkNC4uNmE1NTk0OTQ2MDk2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vdWRsL3Vk
bF9kcnYuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vdWRsL3VkbF9kcnYuYwpAQCAtMTAsNiArMTAs
NyBAQAogI2luY2x1ZGUgPGRybS9kcm1fZmJfaGVscGVyLmg+CiAjaW5jbHVkZSA8ZHJtL2RybV9m
aWxlLmg+CiAjaW5jbHVkZSA8ZHJtL2RybV9nZW1fc2htZW1faGVscGVyLmg+CisjaW5jbHVkZSA8
ZHJtL2RybV9tYW5hZ2VkLmg+CiAjaW5jbHVkZSA8ZHJtL2RybV9pb2N0bC5oPgogI2luY2x1ZGUg
PGRybS9kcm1fcHJvYmVfaGVscGVyLmg+CiAjaW5jbHVkZSA8ZHJtL2RybV9wcmludC5oPgpAQCAt
MzgsNyArMzksNiBAQCBzdGF0aWMgdm9pZCB1ZGxfZHJpdmVyX3JlbGVhc2Uoc3RydWN0IGRybV9k
ZXZpY2UgKmRldikKIAl1ZGxfZmluaShkZXYpOwogCXVkbF9tb2Rlc2V0X2NsZWFudXAoZGV2KTsK
IAlkcm1fZGV2X2ZpbmkoZGV2KTsKLQlrZnJlZShkZXYpOwogfQogCiBzdGF0aWMgc3RydWN0IGRy
bV9kcml2ZXIgZHJpdmVyID0gewpAQCAtNzcsMTEgKzc3LDExIEBAIHN0YXRpYyBzdHJ1Y3QgdWRs
X2RldmljZSAqdWRsX2RyaXZlcl9jcmVhdGUoc3RydWN0IHVzYl9pbnRlcmZhY2UgKmludGVyZmFj
ZSkKIAogCXVkbC0+dWRldiA9IHVkZXY7CiAJdWRsLT5kcm0uZGV2X3ByaXZhdGUgPSB1ZGw7CisJ
ZHJtbV9hZGRfZmluYWxfa2ZyZWUoJnVkbC0+ZHJtLCB1ZGwpOwogCiAJciA9IHVkbF9pbml0KHVk
bCk7CiAJaWYgKHIpIHsKLQkJZHJtX2Rldl9maW5pKCZ1ZGwtPmRybSk7Ci0JCWtmcmVlKHVkbCk7
CisJCWRybV9kZXZfcHV0KCZ1ZGwtPmRybSk7CiAJCXJldHVybiBFUlJfUFRSKHIpOwogCX0KIAot
LSAKMi4yNS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
