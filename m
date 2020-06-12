Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF9F11F7B4F
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2020 18:01:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8BE26E9FD;
	Fri, 12 Jun 2020 16:01:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8CB76E9FD
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jun 2020 16:01:13 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id c3so10223955wru.12
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jun 2020 09:01:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=C6aThnIT5TKug3TwFcMSP2pfu2HbEKHkPMXwj0VD06U=;
 b=JQx9+sySzXcsVyCIb9Q8p61its1Vy8G/EQe2xFMTzb8Uten81XUCRYlrkChq6jI/tJ
 8UIuKPVoOv1qDHpYruK9bcl/9hXUdXUb5r5kbbmpcSZ/VP78MK7SMBjy46e1gc5l2ams
 QgsbDBEU2T4CT1piB279QxzRzr2QgTbYveeLM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=C6aThnIT5TKug3TwFcMSP2pfu2HbEKHkPMXwj0VD06U=;
 b=p1jlDu/LPOJfW7781VoFD3jPjLrNZcGcLoibF+p3X5+LhcypHjnuCSy9Q8JlS7LEy6
 tJ3hEah8EFxFDz2zUOa3GhNuPQvImnkyQ3vWswCWnerl1bxdQOJE1IulhEIryVGKEkSr
 ktuiNBrBp9OcR0bK4zvf0mMpqhU120MeS9v42PuGaPH2ya+eZ3hAf9LEME00hBOjXIR5
 fGZINLCY1wc8AXsMaNqN/WTkjRZT6eIq3+f+Mv4zLDCG17+juNSjKF44lH1Qpotd518Z
 3X88eDzzmTdtmaByLKl6bnTZ0Kzu5+FDKgLebltnK7PYhNSP/MZjr29Na8up563IWDdr
 kgtQ==
X-Gm-Message-State: AOAM533+zz0Ammf+8zM3D9ftvDHoW/9S87SdiiIl4H2ndW2NkRpv1lJS
 a3s2/mOkYHTk0zrP0V1zx8HXpcKzMrc=
X-Google-Smtp-Source: ABdhPJyK4CW5uIrePuVArJHSfm5/wErcIe2663hwPxlfblOGUaEaHYj0lz+k8DRK7JSNOpvAtE5yQg==
X-Received: by 2002:a05:6000:1150:: with SMTP id
 d16mr15437313wrx.197.1591977672339; 
 Fri, 12 Jun 2020 09:01:12 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id j5sm10801566wrq.39.2020.06.12.09.01.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Jun 2020 09:01:11 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 12 Jun 2020 18:00:56 +0200
Message-Id: <20200612160056.2082681-8-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200612160056.2082681-1-daniel.vetter@ffwll.ch>
References: <20200612160056.2082681-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 8/8] drm/tiny/repaper: Drop edp->enabled
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
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U2FtZSBwYXRjaCBhcyB0aGUgbWlwaS1kYmkgb25lLCBhdG9taWMgdHJhY2tzIHRoaXMgZm9yIHVz
IGFscmVhZHksIHdlCmp1c3QgaGF2ZSB0byBjaGVjayB0aGUgcmlnaHQgdGhpbmcuCgpTaWduZWQt
b2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KQ2M6ICJOb3Jh
bGYgVHLDuG5uZXMiIDxub3JhbGZAdHJvbm5lcy5vcmc+Ci0tLQogZHJpdmVycy9ncHUvZHJtL3Rp
bnkvcmVwYXBlci5jIHwgMTMgKysrLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0
aW9ucygrKSwgMTAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3Rp
bnkvcmVwYXBlci5jIGIvZHJpdmVycy9ncHUvZHJtL3RpbnkvcmVwYXBlci5jCmluZGV4IDA4MTY0
ZTJhMmQxMy4uMmUwMWNmMGE5ODc2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vdGlueS9y
ZXBhcGVyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3RpbnkvcmVwYXBlci5jCkBAIC04OCw3ICs4
OCw2IEBAIHN0cnVjdCByZXBhcGVyX2VwZCB7CiAJdTggKmxpbmVfYnVmZmVyOwogCXZvaWQgKmN1
cnJlbnRfZnJhbWU7CiAKLQlib29sIGVuYWJsZWQ7CiAJYm9vbCBjbGVhcmVkOwogCWJvb2wgcGFy
dGlhbDsKIH07CkBAIC01MzgsOSArNTM3LDYgQEAgc3RhdGljIGludCByZXBhcGVyX2ZiX2RpcnR5
KHN0cnVjdCBkcm1fZnJhbWVidWZmZXIgKmZiKQogCWludCBpZHgsIHJldCA9IDA7CiAJdTggKmJ1
ZiA9IE5VTEw7CiAKLQlpZiAoIWVwZC0+ZW5hYmxlZCkKLQkJcmV0dXJuIDA7Ci0KIAlpZiAoIWRy
bV9kZXZfZW50ZXIoZmItPmRldiwgJmlkeCkpCiAJCXJldHVybiAtRU5PREVWOwogCkBAIC03ODYs
NyArNzgyLDYgQEAgc3RhdGljIHZvaWQgcmVwYXBlcl9waXBlX2VuYWJsZShzdHJ1Y3QgZHJtX3Np
bXBsZV9kaXNwbGF5X3BpcGUgKnBpcGUsCiAJICovCiAJcmVwYXBlcl93cml0ZV92YWwoc3BpLCAw
eDAyLCAweDA0KTsKIAotCWVwZC0+ZW5hYmxlZCA9IHRydWU7CiAJZXBkLT5wYXJ0aWFsID0gZmFs
c2U7CiBvdXRfZXhpdDoKIAlkcm1fZGV2X2V4aXQoaWR4KTsKQEAgLTgwNSwxMyArODAwLDggQEAg
c3RhdGljIHZvaWQgcmVwYXBlcl9waXBlX2Rpc2FibGUoc3RydWN0IGRybV9zaW1wbGVfZGlzcGxh
eV9waXBlICpwaXBlKQogCSAqIHVucGx1Zy4KIAkgKi8KIAotCWlmICghZXBkLT5lbmFibGVkKQot
CQlyZXR1cm47Ci0KIAlEUk1fREVCVUdfRFJJVkVSKCJcbiIpOwogCi0JZXBkLT5lbmFibGVkID0g
ZmFsc2U7Ci0KIAkvKiBOb3RoaW5nIGZyYW1lICovCiAJZm9yIChsaW5lID0gMDsgbGluZSA8IGVw
ZC0+aGVpZ2h0OyBsaW5lKyspCiAJCXJlcGFwZXJfb25lX2xpbmUoZXBkLCAweDdmZmZ1LCBOVUxM
LCAweDAwLCBOVUxMLApAQCAtODU5LDYgKzg0OSw5IEBAIHN0YXRpYyB2b2lkIHJlcGFwZXJfcGlw
ZV91cGRhdGUoc3RydWN0IGRybV9zaW1wbGVfZGlzcGxheV9waXBlICpwaXBlLAogCXN0cnVjdCBk
cm1fcGxhbmVfc3RhdGUgKnN0YXRlID0gcGlwZS0+cGxhbmUuc3RhdGU7CiAJc3RydWN0IGRybV9y
ZWN0IHJlY3Q7CiAKKwlpZiAoIXBpcGUtPmNydGMuc3RhdGUtPmFjdGl2ZSkKKwkJcmV0dXJuOwor
CiAJaWYgKGRybV9hdG9taWNfaGVscGVyX2RhbWFnZV9tZXJnZWQob2xkX3N0YXRlLCBzdGF0ZSwg
JnJlY3QpKQogCQlyZXBhcGVyX2ZiX2RpcnR5KHN0YXRlLT5mYik7CiB9Ci0tIAoyLjI2LjIKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
