Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1162F1A94C3
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 09:42:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DFED89BF6;
	Wed, 15 Apr 2020 07:41:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 392AB6E8A5
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 07:41:19 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id o81so10590783wmo.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 00:41:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=68pRrV/FcZHhfKF8N6ed2Kst21jlb9WtulkqBRnU6S8=;
 b=Gyz+CtzkcX37Hl3nRFOLm4GVr0azPRX/NrKG8ap0W4baKemymnbW+Lxwz1Xp6GzRWr
 lx8lnLIxv1Ol9V12XsfA9QbmLLL+3YuN9Oi/tEmm8esrE92s8XrfhUVGnPj+V2YfEa9U
 /1rFjd2vFJTcNB51K1Lp7i6tJvkBxa6hlf7kw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=68pRrV/FcZHhfKF8N6ed2Kst21jlb9WtulkqBRnU6S8=;
 b=hTZvCcpgqpYoEQpfmInhKoPT4oKd9a4iuqBgYsR6tY1uYH5B8OdB1mMCqlfAfHxpwI
 PZhF+/nxRXuwXCEaAGKJmpqq6ypDImw3BtOR3buIUkq9lxk6eer9P5nDBAzUV11PPG3F
 5WT7QuPPLaHDaIc69wnEaIukMydvqRT6gXKZp7xFj42VjTqSzUmq+JvuR9X+u/EcOP7C
 hkomyun+mz9E7/L5mxN1Z3GgE1uE+LH5ENv+rMyztc6TBfQnGcekLcg4mpa+ZrKZ0HpD
 w6IAdwPDB/paw2/TpNvR0T6nSmY1iu/XN3+FDPm+lOsucMdApjsJ4cHHnWk6gjhF9tN1
 skUQ==
X-Gm-Message-State: AGi0PubE9nW9OiANXKgf+420n9keZsiHm34PHQopHTBkLzx76LzZhlbB
 A0fXYAbKaR3sSLjADjkFZ3Xxxu6CmJ0=
X-Google-Smtp-Source: APiQypK5zCrPi1yHK4Hs/xsz2aEThr6qJhfA2NsVnJXgzOw3DJadAR07qQZyjbKa0Tk2q2OD7lnVVg==
X-Received: by 2002:a1c:80c3:: with SMTP id b186mr4095533wmd.117.1586936477577; 
 Wed, 15 Apr 2020 00:41:17 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u30sm1878552wru.13.2020.04.15.00.41.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 00:41:17 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Wed, 15 Apr 2020 09:40:10 +0200
Message-Id: <20200415074034.175360-36-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
References: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 35/59] drm/cirrus: Use devm_drm_dev_alloc
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
Cc: Rob Herring <robh@kernel.org>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 virtualization@lists.linux-foundation.org,
 =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Gerd Hoffmann <kraxel@redhat.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>, Dave Airlie <airlied@redhat.com>,
 Sam Ravnborg <sam@ravnborg.org>, Emil Velikov <emil.velikov@collabora.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWxyZWFkeSB1c2luZyBkZXZtX2RybV9kZXZfaW5pdCwgc28gdmVyeSBzaW1wbGUgcmVwbGFjbWVu
dC4KCkFja2VkLWJ5OiBOb3JhbGYgVHLDuG5uZXMgPG5vcmFsZkB0cm9ubmVzLm9yZz4KQWNrZWQt
Ynk6IFNhbSBSYXZuYm9yZyA8c2FtQHJhdm5ib3JnLm9yZz4KU2lnbmVkLW9mZi1ieTogRGFuaWVs
IFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+CkNjOiBEYXZlIEFpcmxpZSA8YWlybGll
ZEByZWRoYXQuY29tPgpDYzogR2VyZCBIb2ZmbWFubiA8a3JheGVsQHJlZGhhdC5jb20+CkNjOiBE
YW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPgpDYzogU2FtIFJhdm5ib3JnIDxz
YW1AcmF2bmJvcmcub3JnPgpDYzogIk5vcmFsZiBUcsO4bm5lcyIgPG5vcmFsZkB0cm9ubmVzLm9y
Zz4KQ2M6IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+CkNjOiBUaG9tYXMgWmltbWVybWFu
biA8dHppbW1lcm1hbm5Ac3VzZS5kZT4KQ2M6IHZpcnR1YWxpemF0aW9uQGxpc3RzLmxpbnV4LWZv
dW5kYXRpb24ub3JnCkNjOiBFbWlsIFZlbGlrb3YgPGVtaWwudmVsaWtvdkBjb2xsYWJvcmEuY29t
PgotLS0KIGRyaXZlcnMvZ3B1L2RybS9jaXJydXMvY2lycnVzLmMgfCAxMyArKysrLS0tLS0tLS0t
CiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9jaXJydXMvY2lycnVzLmMgYi9kcml2ZXJzL2dwdS9kcm0v
Y2lycnVzL2NpcnJ1cy5jCmluZGV4IGEzNjI2OTcxN2MzYi4uNGI2NTYzNzE0N2JhIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vY2lycnVzL2NpcnJ1cy5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9jaXJydXMvY2lycnVzLmMKQEAgLTU2NywxOCArNTY3LDEzIEBAIHN0YXRpYyBpbnQgY2lycnVz
X3BjaV9wcm9iZShzdHJ1Y3QgcGNpX2RldiAqcGRldiwKIAkJcmV0dXJuIHJldDsKIAogCXJldCA9
IC1FTk9NRU07Ci0JY2lycnVzID0ga3phbGxvYyhzaXplb2YoKmNpcnJ1cyksIEdGUF9LRVJORUwp
OwotCWlmIChjaXJydXMgPT0gTlVMTCkKLQkJcmV0dXJuIHJldDsKKwljaXJydXMgPSBkZXZtX2Ry
bV9kZXZfYWxsb2MoJnBkZXYtPmRldiwgJmNpcnJ1c19kcml2ZXIsCisJCQkJICAgIHN0cnVjdCBj
aXJydXNfZGV2aWNlLCBkZXYpOworCWlmIChJU19FUlIoY2lycnVzKSkKKwkJcmV0dXJuIFBUUl9F
UlIoY2lycnVzKTsKIAogCWRldiA9ICZjaXJydXMtPmRldjsKLQlyZXQgPSBkZXZtX2RybV9kZXZf
aW5pdCgmcGRldi0+ZGV2LCBkZXYsICZjaXJydXNfZHJpdmVyKTsKLQlpZiAocmV0KSB7Ci0JCWtm
cmVlKGNpcnJ1cyk7Ci0JCXJldHVybiByZXQ7Ci0JfQogCWRldi0+ZGV2X3ByaXZhdGUgPSBjaXJy
dXM7Ci0JZHJtbV9hZGRfZmluYWxfa2ZyZWUoZGV2LCBjaXJydXMpOwogCiAJY2lycnVzLT52cmFt
ID0gZGV2bV9pb3JlbWFwKCZwZGV2LT5kZXYsIHBjaV9yZXNvdXJjZV9zdGFydChwZGV2LCAwKSwK
IAkJCQkgICAgcGNpX3Jlc291cmNlX2xlbihwZGV2LCAwKSk7Ci0tIAoyLjI1LjEKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
