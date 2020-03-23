Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3414718F7AB
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 15:52:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C03206E247;
	Mon, 23 Mar 2020 14:51:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9BD16E22A
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 14:50:58 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id w10so17459097wrm.4
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 07:50:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2h9nVkR6GZVSqp0Uq5z09nALfzbd4PTui374h6bOKxQ=;
 b=D4OAlQvIOJLCr5x2ccySSYxgiVH8cMqxeCqbKlA83ccoc41HRhPYbRd2FIrOlTf/4L
 pLqaJsrRz1xTDrHmZG3VlUuWRkEmPExl57CUrF/Slt7AVUkhRY0j13l7iQB9iKRtCsPh
 veXo0vpQdQyBxkVI+rq8IgfVG3UT7baE/D0Xs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2h9nVkR6GZVSqp0Uq5z09nALfzbd4PTui374h6bOKxQ=;
 b=G903kcZVLqWIOXVkJIp95HSRWZRnfxDUyBB3LZXnDUtl3t92R44QwivS6D/gFRm7eL
 GGIlwpY17QyCRsNkilykb8MRxcbgk5YujojBfgTzebV84kcUzQTCd1+yQmf5+oLqiYn+
 xRx8euzEmPmogYsww9FsnLIOHxa7wUTnhDmq79ScAzbseeBMHqPO0Hr4tu5v64x5InEt
 iZ/l1TQvLqidiU7r2LdeM4dPDjufDgn7Zd81hvEUdGDEPDEzUFeGixKDcOmcxZ4k86E2
 hI0flQfWeWj4KKG1+UtzOFSp6E8tL4MoqY9ATIfRtugXyFCwqj3LoFsDcHXuWyrKbocd
 bMUg==
X-Gm-Message-State: ANhLgQ0KodgmEx7cuMzqDUu5LDFA7K1hCn/n9kwkOOAyTFIqY64gYnm6
 LrOvRA7zpYcaijx/C40I6wLG2w==
X-Google-Smtp-Source: ADFU+vv3xYkvag/3iy+5tXiymVHAGy7IrB71E97MIOWv/6UEREKNJ4HXUrQNA4hPjkcVGExQTwEBkw==
X-Received: by 2002:a5d:644c:: with SMTP id d12mr31053888wrw.54.1584975057386; 
 Mon, 23 Mar 2020 07:50:57 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s22sm20376522wmc.16.2020.03.23.07.50.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Mar 2020 07:50:56 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 23 Mar 2020 15:49:42 +0100
Message-Id: <20200323144950.3018436-44-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200323144950.3018436-1-daniel.vetter@ffwll.ch>
References: <20200323144950.3018436-1-daniel.vetter@ffwll.ch>
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
Ci0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eAo=
