Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 638891A949E
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 09:41:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 428416E894;
	Wed, 15 Apr 2020 07:41:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42E6E6E88B
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 07:41:01 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id d17so10952363wrg.11
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 00:41:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IQt0eavpuFWDfbQlEkBKmJ30wUKD2UffzcnQaAIVLQk=;
 b=c8gI3nUniaDPnj2vAbCeyWyTF63CWn5abRYyRBx+zqkvNYN0B9MtywnXyrtJqnTeFl
 dCJaJIZNwrzNV+nL4mAB5OGSPU1lwDKfqRVYETD8LPwVqCYArMpEsNI3iafmB5YZkrsl
 43/PiVz7B9U0nkSpnyHgi5GcQl9TdeQewTwso=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IQt0eavpuFWDfbQlEkBKmJ30wUKD2UffzcnQaAIVLQk=;
 b=tBK+dZvZVUyvL6wZcbajHDT/qTBFVnv/i0QBjp1Nr87w2K3lER2wbHugGSpoEgLouo
 ae/AK5Xc7Mcr5ddxqBgszt1ONYl/+iTnhM2StYTl83EvK0psx9+OKtzBP20TXbSyz8EN
 vuSR8esBr1CGFVL2weNNdidRBcD7viIfl6R1PVdv9kgmN5BC2ldvySBUSfyfYtS0JKen
 IM4SbvSGSK2czzgGCQMlIHosgKFeGdsDEiZGiXS6aY7FlQll17KzDReW566lMsQ9USFB
 s/xmTAGKW9Klt/ipXvuhlQ4zwuxNiyGSa4YN93HGnhu2jSDpfgdix/ZNcX774qPPAPrv
 x90g==
X-Gm-Message-State: AGi0PuYQ2tc6DdttNtXaciKZ7gC0g48wR89EXMJrP1koIgkA115/hj0v
 uMtkJ3IE6QqKVkyAvrFTmVMBPOhw+kY=
X-Google-Smtp-Source: APiQypKMrtzLtcYGWp4dG1NAbMUTRsNrTsppRTIHIlD8etyQZfgxQrL60Cxc+R5NoVqtisFTu7ONDA==
X-Received: by 2002:adf:f08b:: with SMTP id n11mr4424630wro.36.1586936459725; 
 Wed, 15 Apr 2020 00:40:59 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u30sm1878552wru.13.2020.04.15.00.40.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 00:40:59 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Wed, 15 Apr 2020 09:39:53 +0200
Message-Id: <20200415074034.175360-19-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
References: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 18/59] drm/ili9341: Use devm_drm_dev_alloc
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
Cc: David Lechner <david@lechnology.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Eric Anholt <eric@anholt.net>,
 =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Daniel Vetter <daniel.vetter@intel.com>, Sam Ravnborg <sam@ravnborg.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWxyZWFkeSB1c2luZyBkZXZtX2RybV9kZXZfaW5pdCwgc28gdmVyeSBzaW1wbGUgcmVwbGFjbWVu
dC4KCkFja2VkLWJ5OiBEYXZpZCBMZWNobmVyIDxkYXZpZEBsZWNobm9sb2d5LmNvbT4KQWNrZWQt
Ynk6IFNhbSBSYXZuYm9yZyA8c2FtQHJhdm5ib3JnLm9yZz4KU2lnbmVkLW9mZi1ieTogRGFuaWVs
IFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+CkNjOiAiTm9yYWxmIFRyw7hubmVzIiA8
bm9yYWxmQHRyb25uZXMub3JnPgpDYzogU2FtIFJhdm5ib3JnIDxzYW1AcmF2bmJvcmcub3JnPgpD
YzogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KQ2M6IEVyaWMgQW5ob2x0
IDxlcmljQGFuaG9sdC5uZXQ+CkNjOiBEYXZpZCBMZWNobmVyIDxkYXZpZEBsZWNobm9sb2d5LmNv
bT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vdGlueS9pbGk5MzQxLmMgfCAxMyArKysrLS0tLS0tLS0t
CiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS90aW55L2lsaTkzNDEuYyBiL2RyaXZlcnMvZ3B1L2RybS90
aW55L2lsaTkzNDEuYwppbmRleCBlMTUyZGUzNjkwMTkuLmJiODE5ZjQ1YTVkMyAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL3RpbnkvaWxpOTM0MS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS90
aW55L2lsaTkzNDEuYwpAQCAtMTgzLDE4ICsxODMsMTMgQEAgc3RhdGljIGludCBpbGk5MzQxX3By
b2JlKHN0cnVjdCBzcGlfZGV2aWNlICpzcGkpCiAJdTMyIHJvdGF0aW9uID0gMDsKIAlpbnQgcmV0
OwogCi0JZGJpZGV2ID0ga3phbGxvYyhzaXplb2YoKmRiaWRldiksIEdGUF9LRVJORUwpOwotCWlm
ICghZGJpZGV2KQotCQlyZXR1cm4gLUVOT01FTTsKKwlkYmlkZXYgPSBkZXZtX2RybV9kZXZfYWxs
b2MoZGV2LCAmaWxpOTM0MV9kcml2ZXIsCisJCQkJICAgIHN0cnVjdCBtaXBpX2RiaV9kZXYsIGRy
bSk7CisJaWYgKElTX0VSUihkYmlkZXYpKQorCQlyZXR1cm4gUFRSX0VSUihkYmlkZXYpOwogCiAJ
ZGJpID0gJmRiaWRldi0+ZGJpOwogCWRybSA9ICZkYmlkZXYtPmRybTsKLQlyZXQgPSBkZXZtX2Ry
bV9kZXZfaW5pdChkZXYsIGRybSwgJmlsaTkzNDFfZHJpdmVyKTsKLQlpZiAocmV0KSB7Ci0JCWtm
cmVlKGRiaWRldik7Ci0JCXJldHVybiByZXQ7Ci0JfQotCWRybW1fYWRkX2ZpbmFsX2tmcmVlKGRy
bSwgZGJpZGV2KTsKIAogCWRiaS0+cmVzZXQgPSBkZXZtX2dwaW9kX2dldF9vcHRpb25hbChkZXYs
ICJyZXNldCIsIEdQSU9EX09VVF9ISUdIKTsKIAlpZiAoSVNfRVJSKGRiaS0+cmVzZXQpKSB7Ci0t
IAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
