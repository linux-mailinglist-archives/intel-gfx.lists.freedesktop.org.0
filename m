Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E202E17674C
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Mar 2020 23:28:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E6F26E8DF;
	Mon,  2 Mar 2020 22:27:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A85F56E8D2
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Mar 2020 22:27:36 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id j16so1889260wrt.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 02 Mar 2020 14:27:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KWgXr/WkInjaQ8cVX1YfsEAGUgyxCqxAciePN/v2iAY=;
 b=Y6T+CoVfKDl5dtt9zPUYQb3hnYFhKXK5+XivPZ+0sFz/CIwOT+uHPSjrXGiqWaec9h
 MVyY9qoxK0Dc1hx3HLSVE49vwuS5w7Apx3URhaQwPSRmkKbesgjfdewkJ8/v4ruONyYB
 lZAHHLpJDHi3ZyORVI5T3Cv/1C+s7PHUvccTk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KWgXr/WkInjaQ8cVX1YfsEAGUgyxCqxAciePN/v2iAY=;
 b=CTcZOhS+kJ9TXhbKpnGK2dm2Ry5sXYSz1v3uiIyd7Q9WBWPppZZiGXk+jggP+g2rrw
 yqFc9ksEWwcEf3GdnACXPopnZvXvbm4t5KIoaW+1H0AIezpVk7bNgjTAMIUe9D4GIMK9
 YQieu4pRr7HZeepaSH8Fp/oJUMhxoZqkiC6mY+DBafDw3sBhWTF4WFHJmA9Dga384Qzj
 Jr/BjGV0Md6UgcnoTqGBr94fREzoKuJ7XVsyi699AreBJRJVNzRr6HuXjUtYwib40VJr
 bY3nsm5KYlKKLKdIdm1P+4+cqWzoJzJBYc9DmfHxKnaxyQGYJ70Zug9GZTEfuq70Cvfw
 Orsw==
X-Gm-Message-State: ANhLgQ02SX4gNISSOI4+5EsqQpBikQAQXAsTRl7jrMRezk3X2zii0F38
 wXuYAnZdpbzaU117E3ZeVH6TyA==
X-Google-Smtp-Source: ADFU+vuiUxXldeDRNS1BpAbBgMbgvA0pw63RQDAWoUUin3anEVllq8xWgUD/ImXJ/PUDB5ZLuqmj1A==
X-Received: by 2002:adf:fc10:: with SMTP id i16mr1584149wrr.331.1583188055187; 
 Mon, 02 Mar 2020 14:27:35 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id o18sm26114589wrv.60.2020.03.02.14.27.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 14:27:34 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon,  2 Mar 2020 23:26:24 +0100
Message-Id: <20200302222631.3861340-45-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200302222631.3861340-1-daniel.vetter@ffwll.ch>
References: <20200302222631.3861340-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 44/51] drm/gm12u320: Use helpers for
 shutdown/suspend/resume
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

QWxzbyB0aGVyZSdzIGEgcmFjZSBpbiB0aGUgZGlzY29ubmVjdCBpbXBsZW1lbmF0aW9uLiBGaXJz
dCBzaHV0CmRvd24sIHRoZW4gdW5wbHVnLCBsZWF2ZXMgYSB3aW5kb3cgd2hlcmUgdXNlcnNwYWNl
IGNvdWxkIHNuZWFrCmluIGFuZCByZXN0YXJ0IHRoZSBlbnRpcmUgbWFjaGluZXJ5LgoKV2l0aCB0
aGlzIHdlIGNhbiBhbHNvIGRlbGV0ZSB0aGUgdmVyeSB1bi1hdG9taWMgZ2xvYmFsIHBpcGVfZW5h
YmxlZAp0cmFja2luZy4KClJldmlld2VkLWJ5OiBIYW5zIGRlIEdvZWRlIDxoZGVnb2VkZUByZWRo
YXQuY29tPgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVs
LmNvbT4KQ2M6IEhhbnMgZGUgR29lZGUgPGhkZWdvZWRlQHJlZGhhdC5jb20+CkNjOiAiTm9yYWxm
IFRyw7hubmVzIiA8bm9yYWxmQHRyb25uZXMub3JnPgotLS0KIGRyaXZlcnMvZ3B1L2RybS90aW55
L2dtMTJ1MzIwLmMgfCAxNiArKystLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNl
cnRpb25zKCspLCAxMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
dGlueS9nbTEydTMyMC5jIGIvZHJpdmVycy9ncHUvZHJtL3RpbnkvZ20xMnUzMjAuYwppbmRleCA5
ZmI1NzlmYzM0MTIuLjk2MjdjYmMzZWM2NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3Rp
bnkvZ20xMnUzMjAuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vdGlueS9nbTEydTMyMC5jCkBAIC04
OCw3ICs4OCw2IEBAIHN0cnVjdCBnbTEydTMyMF9kZXZpY2UgewogCXN0cnVjdCB1c2JfZGV2aWNl
ICAgICAgICAgICAgICAgKnVkZXY7CiAJdW5zaWduZWQgY2hhciAgICAgICAgICAgICAgICAgICAq
Y21kX2J1ZjsKIAl1bnNpZ25lZCBjaGFyICAgICAgICAgICAgICAgICAgICpkYXRhX2J1ZltHTTEy
VTMyMF9CTE9DS19DT1VOVF07Ci0JYm9vbCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcGlw
ZV9lbmFibGVkOwogCXN0cnVjdCB7CiAJCWJvb2wgICAgICAgICAgICAgICAgICAgICBydW47CiAJ
CXN0cnVjdCB3b3JrcXVldWVfc3RydWN0ICp3b3JrcTsKQEAgLTU4OSw3ICs1ODgsNiBAQCBzdGF0
aWMgdm9pZCBnbTEydTMyMF9waXBlX2VuYWJsZShzdHJ1Y3QgZHJtX3NpbXBsZV9kaXNwbGF5X3Bp
cGUgKnBpcGUsCiAKIAlnbTEydTMyMF9mYl9tYXJrX2RpcnR5KHBsYW5lX3N0YXRlLT5mYiwgJnJl
Y3QpOwogCWdtMTJ1MzIwX3N0YXJ0X2ZiX3VwZGF0ZShnbTEydTMyMCk7Ci0JZ20xMnUzMjAtPnBp
cGVfZW5hYmxlZCA9IHRydWU7CiB9CiAKIHN0YXRpYyB2b2lkIGdtMTJ1MzIwX3BpcGVfZGlzYWJs
ZShzdHJ1Y3QgZHJtX3NpbXBsZV9kaXNwbGF5X3BpcGUgKnBpcGUpCkBAIC01OTcsNyArNTk1LDYg
QEAgc3RhdGljIHZvaWQgZ20xMnUzMjBfcGlwZV9kaXNhYmxlKHN0cnVjdCBkcm1fc2ltcGxlX2Rp
c3BsYXlfcGlwZSAqcGlwZSkKIAlzdHJ1Y3QgZ20xMnUzMjBfZGV2aWNlICpnbTEydTMyMCA9IHBp
cGUtPmNydGMuZGV2LT5kZXZfcHJpdmF0ZTsKIAogCWdtMTJ1MzIwX3N0b3BfZmJfdXBkYXRlKGdt
MTJ1MzIwKTsKLQlnbTEydTMyMC0+cGlwZV9lbmFibGVkID0gZmFsc2U7CiB9CiAKIHN0YXRpYyB2
b2lkIGdtMTJ1MzIwX3BpcGVfdXBkYXRlKHN0cnVjdCBkcm1fc2ltcGxlX2Rpc3BsYXlfcGlwZSAq
cGlwZSwKQEAgLTczMywyMiArNzMwLDE3IEBAIHN0YXRpYyBpbnQgZ20xMnUzMjBfdXNiX3Byb2Jl
KHN0cnVjdCB1c2JfaW50ZXJmYWNlICppbnRlcmZhY2UsCiBzdGF0aWMgdm9pZCBnbTEydTMyMF91
c2JfZGlzY29ubmVjdChzdHJ1Y3QgdXNiX2ludGVyZmFjZSAqaW50ZXJmYWNlKQogewogCXN0cnVj
dCBkcm1fZGV2aWNlICpkZXYgPSB1c2JfZ2V0X2ludGZkYXRhKGludGVyZmFjZSk7Ci0Jc3RydWN0
IGdtMTJ1MzIwX2RldmljZSAqZ20xMnUzMjAgPSBkZXYtPmRldl9wcml2YXRlOwogCi0JZ20xMnUz
MjBfc3RvcF9mYl91cGRhdGUoZ20xMnUzMjApOwogCWRybV9kZXZfdW5wbHVnKGRldik7CisJZHJt
X2F0b21pY19oZWxwZXJfc2h1dGRvd24oZGV2KTsKIH0KIAogc3RhdGljIF9fbWF5YmVfdW51c2Vk
IGludCBnbTEydTMyMF9zdXNwZW5kKHN0cnVjdCB1c2JfaW50ZXJmYWNlICppbnRlcmZhY2UsCiAJ
CQkJCSAgIHBtX21lc3NhZ2VfdCBtZXNzYWdlKQogewogCXN0cnVjdCBkcm1fZGV2aWNlICpkZXYg
PSB1c2JfZ2V0X2ludGZkYXRhKGludGVyZmFjZSk7Ci0Jc3RydWN0IGdtMTJ1MzIwX2RldmljZSAq
Z20xMnUzMjAgPSBkZXYtPmRldl9wcml2YXRlOwogCi0JaWYgKGdtMTJ1MzIwLT5waXBlX2VuYWJs
ZWQpCi0JCWdtMTJ1MzIwX3N0b3BfZmJfdXBkYXRlKGdtMTJ1MzIwKTsKLQotCXJldHVybiAwOwor
CXJldHVybiBkcm1fbW9kZV9jb25maWdfaGVscGVyX3N1c3BlbmQoZGV2KTsKIH0KIAogc3RhdGlj
IF9fbWF5YmVfdW51c2VkIGludCBnbTEydTMyMF9yZXN1bWUoc3RydWN0IHVzYl9pbnRlcmZhY2Ug
KmludGVyZmFjZSkKQEAgLTc1NywxMCArNzQ5LDggQEAgc3RhdGljIF9fbWF5YmVfdW51c2VkIGlu
dCBnbTEydTMyMF9yZXN1bWUoc3RydWN0IHVzYl9pbnRlcmZhY2UgKmludGVyZmFjZSkKIAlzdHJ1
Y3QgZ20xMnUzMjBfZGV2aWNlICpnbTEydTMyMCA9IGRldi0+ZGV2X3ByaXZhdGU7CiAKIAlnbTEy
dTMyMF9zZXRfZWNvbW9kZShnbTEydTMyMCk7Ci0JaWYgKGdtMTJ1MzIwLT5waXBlX2VuYWJsZWQp
Ci0JCWdtMTJ1MzIwX3N0YXJ0X2ZiX3VwZGF0ZShnbTEydTMyMCk7CiAKLQlyZXR1cm4gMDsKKwly
ZXR1cm4gZHJtX21vZGVfY29uZmlnX2hlbHBlcl9yZXN1bWUoZGV2KTsKIH0KIAogc3RhdGljIGNv
bnN0IHN0cnVjdCB1c2JfZGV2aWNlX2lkIGlkX3RhYmxlW10gPSB7Ci0tIAoyLjI0LjEKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
