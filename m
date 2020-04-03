Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD0B019D841
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 15:59:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4591C6EBC0;
	Fri,  3 Apr 2020 13:59:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 480DD6EBBF
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Apr 2020 13:58:58 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id t7so8610260wrw.12
 for <intel-gfx@lists.freedesktop.org>; Fri, 03 Apr 2020 06:58:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=b4Axr3m19ZDHJDwp000pScLk3nGy1qLEpIOvDG8OyFo=;
 b=YBBM8Ad40h1R8ei+rTrQvBqJD3cc/AUcAT6FxA3t6vEoR3Mp7i6CbQrXZ6IxSmY5RD
 JkVVoODrY86ZGGPSWDfmaSnxwcPZM2qX8WvCensrDXDtcZE4WajuFIUPJWwybLe/TZkX
 x5UY/ACefIWNPNZrTHA7uGIU/qRe54suYfbcc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=b4Axr3m19ZDHJDwp000pScLk3nGy1qLEpIOvDG8OyFo=;
 b=TntGrF5M2XobhwN/AJy866SaOrWTyNdtOSzLDtFwjmIG8nQTVd4XBjcviNyIdKrj/X
 sX4wNXnUyuhguKIE8GfD6Tk/ZLgw0o+D1Ywe4EAylTG+skDRdbD1qk34ptVWxznQ4xVp
 sTXxfGizCxpZ31pksFoakos0/Z5N7yENmZMBRKblOzYBCMyg4Ox3nK1gmJ1bEpV72f8B
 RkgFUYLHlSSJo2sKINLTiJKLnYtQPy7t+9OyAkJB3VzAUEgIiRAVrc6KM6AWQBu5XynN
 INFxQkpx6rtAau+uV03MolXgxQ6hbO3GsojcRGsnR7O6y05t9XWjH6vBeDqU+7ecLN1w
 Sn5w==
X-Gm-Message-State: AGi0PuZrLvsR7sMejMb+4gisTAlnE+zbxdVegEmAuzkJPldeNedRek9y
 QiB8iD+XgaMh3vdPorx7hbm6Gw==
X-Google-Smtp-Source: APiQypLA2zdUAjnSGpahQLdmA413bK5A1SuHc9iqEhDOKjQvWH8GFXShIo/XJbv70BnhLSECGMIzQg==
X-Received: by 2002:adf:a350:: with SMTP id d16mr7598987wrb.277.1585922336942; 
 Fri, 03 Apr 2020 06:58:56 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f141sm11783919wmf.3.2020.04.03.06.58.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Apr 2020 06:58:56 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri,  3 Apr 2020 15:58:03 +0200
Message-Id: <20200403135828.2542770-20-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
References: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 19/44] drm/repaper: Use devm_drm_dev_alloc
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

QWxyZWFkeSB1c2luZyBkZXZtX2RybV9kZXZfaW5pdCwgc28gdmVyeSBzaW1wbGUgcmVwbGFjbWVu
dC4KClNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29t
PgpDYzogIk5vcmFsZiBUcsO4bm5lcyIgPG5vcmFsZkB0cm9ubmVzLm9yZz4KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vdGlueS9yZXBhcGVyLmMgfCAxNCArKysrLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5n
ZWQsIDQgaW5zZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL3RpbnkvcmVwYXBlci5jIGIvZHJpdmVycy9ncHUvZHJtL3RpbnkvcmVwYXBlci5j
CmluZGV4IDg2MmMzZWU2MDU1ZC4uMWMwZTcxNjk1NDViIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vdGlueS9yZXBhcGVyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3RpbnkvcmVwYXBlci5j
CkBAIC0xMDAyLDE5ICsxMDAyLDEzIEBAIHN0YXRpYyBpbnQgcmVwYXBlcl9wcm9iZShzdHJ1Y3Qg
c3BpX2RldmljZSAqc3BpKQogCQl9CiAJfQogCi0JZXBkID0ga3phbGxvYyhzaXplb2YoKmVwZCks
IEdGUF9LRVJORUwpOwotCWlmICghZXBkKQotCQlyZXR1cm4gLUVOT01FTTsKKwllcGQgPSBkZXZt
X2RybV9kZXZfYWxsb2MoZGV2LCAmcmVwYXBlcl9kcml2ZXIsCisJCQkJIHN0cnVjdCByZXBhcGVy
X2VwZCwgZHJtKTsKKwlpZiAoSVNfRVJSKGVwZCkpCisJCXJldHVybiBQVFJfRVJSKGVwZCk7CiAK
IAlkcm0gPSAmZXBkLT5kcm07CiAKLQlyZXQgPSBkZXZtX2RybV9kZXZfaW5pdChkZXYsIGRybSwg
JnJlcGFwZXJfZHJpdmVyKTsKLQlpZiAocmV0KSB7Ci0JCWtmcmVlKGVwZCk7Ci0JCXJldHVybiBy
ZXQ7Ci0JfQotCWRybW1fYWRkX2ZpbmFsX2tmcmVlKGRybSwgZXBkKTsKLQogCXJldCA9IGRybW1f
bW9kZV9jb25maWdfaW5pdChkcm0pOwogCWlmIChyZXQpCiAJCXJldHVybiByZXQ7Ci0tIAoyLjI1
LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
