Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7760176749
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Mar 2020 23:28:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42F506E8F1;
	Mon,  2 Mar 2020 22:27:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 643CD6E8D2
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Mar 2020 22:27:35 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id z11so1829813wro.9
 for <intel-gfx@lists.freedesktop.org>; Mon, 02 Mar 2020 14:27:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pfeqaNk4GjNszi3Ea7LYDy+w79vQVBJO+BHJfqa5LNc=;
 b=DwWAwMRWivoSg+fp73PzDZXR1NF/yj1bk/eROvmKM0sSWr8y+RIlgzC8Wko+NH9Bip
 ewQcN0G7uP25lLt3RhF7VTZuEeeNFsdkv8jelOsLxHTHLMwsHSUzY3dRu6nOSSrCbmIO
 CS6E+U+tIKzaypHHfNnCSmn3rC9wi1f+R3S2s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pfeqaNk4GjNszi3Ea7LYDy+w79vQVBJO+BHJfqa5LNc=;
 b=WpLxV8TU1DJfwkE5vdp0/rQlgP9vPyLSgOdeuRV+XF3G0w9/z2t0lthQOk80S9x78U
 VMvR2x6dB/6PMHfgfCJqhEAJ5DOXWJvBzMV3x3XEezePWzKFopN0vOw6Pdm1JX5NeV+P
 Yo8debkbUdS1Jy5Qq2fh6seQ+mHGd5CRp8a7ii7lcqxxSr33QEBnbwcZOyx2L29kMuDl
 RUKFIf1gc/QyuNi7uDhzS3MfgGhFLnpb+LRDDEbKPwkUQXHf/peH22bHCkZlaBrUjWPD
 kIRIILDJiTO5UgStrzwjQUcmMwPabBXewp1lN+gPpVpIq+rJMtvOvSOl27nI0iOda4zL
 BTXg==
X-Gm-Message-State: ANhLgQ1LAvIEcmMTkbyMKLj98Jm5mf+7eada3UJ5iQB/VopuziHo+50p
 AX71xS0R522Ez1OG2H8/KOSMJA==
X-Google-Smtp-Source: ADFU+vuTBuXaSNIay4OvKsTjohIZ7KgOCdOq8TVvS/5pabqW4AVqIdCKbDFIAjm+CtFFTbG8NNSLXg==
X-Received: by 2002:adf:f60b:: with SMTP id t11mr1606433wrp.344.1583188054047; 
 Mon, 02 Mar 2020 14:27:34 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id o18sm26114589wrv.60.2020.03.02.14.27.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 14:27:33 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon,  2 Mar 2020 23:26:23 +0100
Message-Id: <20200302222631.3861340-44-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200302222631.3861340-1-daniel.vetter@ffwll.ch>
References: <20200302222631.3861340-1-daniel.vetter@ffwll.ch>
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>
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
aXZlcnMvZ3B1L2RybS90aW55L2dtMTJ1MzIwLmMKaW5kZXggMzM0OWYzYzJhNzY1Li45ZmI1Nzlm
YzM0MTIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS90aW55L2dtMTJ1MzIwLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL3RpbnkvZ20xMnUzMjAuYwpAQCAtNjc4LDcgKzY3OCw3IEBAIHN0YXRp
YyBpbnQgZ20xMnUzMjBfdXNiX3Byb2JlKHN0cnVjdCB1c2JfaW50ZXJmYWNlICppbnRlcmZhY2Us
CiAJaW5pdF93YWl0cXVldWVfaGVhZCgmZ20xMnUzMjAtPmZiX3VwZGF0ZS53YWl0cSk7CiAKIAlk
ZXYgPSAmZ20xMnUzMjAtPmRldjsKLQlyZXQgPSBkcm1fZGV2X2luaXQoZGV2LCAmZ20xMnUzMjBf
ZHJtX2RyaXZlciwgJmludGVyZmFjZS0+ZGV2KTsKKwlyZXQgPSBkZXZtX2RybV9kZXZfaW5pdCgm
aW50ZXJmYWNlLT5kZXYsIGRldiwgJmdtMTJ1MzIwX2RybV9kcml2ZXIpOwogCWlmIChyZXQpIHsK
IAkJa2ZyZWUoZ20xMnUzMjApOwogCQlyZXR1cm4gcmV0OwpAQCAtNjg4LDcgKzY4OCw3IEBAIHN0
YXRpYyBpbnQgZ20xMnUzMjBfdXNiX3Byb2JlKHN0cnVjdCB1c2JfaW50ZXJmYWNlICppbnRlcmZh
Y2UsCiAKIAlyZXQgPSBkcm1tX21vZGVfY29uZmlnX2luaXQoZGV2KTsKIAlpZiAocmV0KQotCQln
b3RvIGVycl9wdXQ7CisJCXJldHVybiByZXQ7CiAKIAlkZXYtPm1vZGVfY29uZmlnLm1pbl93aWR0
aCA9IEdNMTJVMzIwX1VTRVJfV0lEVEg7CiAJZGV2LT5tb2RlX2NvbmZpZy5tYXhfd2lkdGggPSBH
TTEyVTMyMF9VU0VSX1dJRFRIOwpAQCAtNjk4LDE1ICs2OTgsMTUgQEAgc3RhdGljIGludCBnbTEy
dTMyMF91c2JfcHJvYmUoc3RydWN0IHVzYl9pbnRlcmZhY2UgKmludGVyZmFjZSwKIAogCXJldCA9
IGdtMTJ1MzIwX3VzYl9hbGxvYyhnbTEydTMyMCk7CiAJaWYgKHJldCkKLQkJZ290byBlcnJfcHV0
OworCQlyZXR1cm4gcmV0OwogCiAJcmV0ID0gZ20xMnUzMjBfc2V0X2Vjb21vZGUoZ20xMnUzMjAp
OwogCWlmIChyZXQpCi0JCWdvdG8gZXJyX3B1dDsKKwkJcmV0dXJuIHJldDsKIAogCXJldCA9IGdt
MTJ1MzIwX2Nvbm5faW5pdChnbTEydTMyMCk7CiAJaWYgKHJldCkKLQkJZ290byBlcnJfcHV0Owor
CQlyZXR1cm4gcmV0OwogCiAJcmV0ID0gZHJtX3NpbXBsZV9kaXNwbGF5X3BpcGVfaW5pdCgmZ20x
MnUzMjAtPmRldiwKIAkJCQkJICAgJmdtMTJ1MzIwLT5waXBlLApAQCAtNzE2LDIyICs3MTYsMTgg
QEAgc3RhdGljIGludCBnbTEydTMyMF91c2JfcHJvYmUoc3RydWN0IHVzYl9pbnRlcmZhY2UgKmlu
dGVyZmFjZSwKIAkJCQkJICAgZ20xMnUzMjBfcGlwZV9tb2RpZmllcnMsCiAJCQkJCSAgICZnbTEy
dTMyMC0+Y29ubik7CiAJaWYgKHJldCkKLQkJZ290byBlcnJfcHV0OworCQlyZXR1cm4gcmV0Owog
CiAJZHJtX21vZGVfY29uZmlnX3Jlc2V0KGRldik7CiAKIAl1c2Jfc2V0X2ludGZkYXRhKGludGVy
ZmFjZSwgZGV2KTsKIAlyZXQgPSBkcm1fZGV2X3JlZ2lzdGVyKGRldiwgMCk7CiAJaWYgKHJldCkK
LQkJZ290byBlcnJfcHV0OworCQlyZXR1cm4gcmV0OwogCiAJZHJtX2ZiZGV2X2dlbmVyaWNfc2V0
dXAoZGV2LCAwKTsKIAogCXJldHVybiAwOwotCi1lcnJfcHV0OgotCWRybV9kZXZfcHV0KGRldik7
Ci0JcmV0dXJuIHJldDsKIH0KIAogc3RhdGljIHZvaWQgZ20xMnUzMjBfdXNiX2Rpc2Nvbm5lY3Qo
c3RydWN0IHVzYl9pbnRlcmZhY2UgKmludGVyZmFjZSkKQEAgLTc0MSw3ICs3MzcsNiBAQCBzdGF0
aWMgdm9pZCBnbTEydTMyMF91c2JfZGlzY29ubmVjdChzdHJ1Y3QgdXNiX2ludGVyZmFjZSAqaW50
ZXJmYWNlKQogCiAJZ20xMnUzMjBfc3RvcF9mYl91cGRhdGUoZ20xMnUzMjApOwogCWRybV9kZXZf
dW5wbHVnKGRldik7Ci0JZHJtX2Rldl9wdXQoZGV2KTsKIH0KIAogc3RhdGljIF9fbWF5YmVfdW51
c2VkIGludCBnbTEydTMyMF9zdXNwZW5kKHN0cnVjdCB1c2JfaW50ZXJmYWNlICppbnRlcmZhY2Us
Ci0tIAoyLjI0LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eAo=
