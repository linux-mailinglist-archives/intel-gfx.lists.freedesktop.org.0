Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 06C503229AD
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Feb 2021 12:52:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E88E6E42E;
	Tue, 23 Feb 2021 11:52:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com
 [IPv6:2a00:1450:4864:20::334])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 545B26E980
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Feb 2021 11:52:01 +0000 (UTC)
Received: by mail-wm1-x334.google.com with SMTP id v62so2156746wmg.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Feb 2021 03:52:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mlU/eDlnmLoM/5fZmN66A2MzT6qJs+p+TD9jil8/t6w=;
 b=Uzr2ZyLaXupOm4IQUNADvBFgHemkZCuTuWBo18SfpsRO5cDVhA5g4O9ovSCptRO9Z2
 rRzpSdrS0rHEtkQ9aDa9GA9aVo0QGk/RCtnOmK/DX7TcdVXnP0fRTjuwcCxr2ncHjaHh
 FerHXI3ABiDRh/pSnc8MlBFCn7I1hwIMl3FcI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mlU/eDlnmLoM/5fZmN66A2MzT6qJs+p+TD9jil8/t6w=;
 b=hK8mX0Pj22NsyCofnpHBZLdR36VHhA/W1kH2FIvFzNnxrj5crK7f+bDUJB2+q7KAFm
 otZvoVnAXTAs9DHllf3iJoDehH581LFPnlJerG2PEH5ARpabVXkQpbltzK+Iv1oe+/7W
 6cVKtGoLTAaJNEzT58hvGMGdbEnMgtqMRNkv04gC9K2EYerhl60mhOca7++72Mnf47Tz
 jaqeF+k6dWyj1g1yt84SJ2twPYLUFmCM6O480OqHnGkPAP4vEODbOOcxxSkXSFa3IJ0g
 22G/Z9K2kIb66vJWBYiWnoDpXuJXHk5s95zfd49NwOpg9n/4hjztK+0TMXraWm/B+7Sx
 Uosw==
X-Gm-Message-State: AOAM532A/xSRhSzBw0v99dsogqr3ZmnmuY4lDxUnFclTb90la1mD4D2+
 8i3RZRT8lSdGmgyiLh4MVlVzaQI/DQUZtA==
X-Google-Smtp-Source: ABdhPJwngJ7iCBRTUNzqFllem4+iTi7j7pTBDmm5HrcgBvr89H0cvxWhAOPOm3N/7mZxjegiLwcXzg==
X-Received: by 2002:a1c:5fd4:: with SMTP id t203mr23650074wmb.17.1614081119983; 
 Tue, 23 Feb 2021 03:51:59 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id 64sm37524614wrc.50.2021.02.23.03.51.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Feb 2021 03:51:59 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue, 23 Feb 2021 12:51:54 +0100
Message-Id: <20210223115154.921260-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210223105951.912577-2-daniel.vetter@ffwll.ch>
References: <20210223105951.912577-2-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/vgem: use shmem helpers
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
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Melissa Wen <melissa.srw@gmail.com>, John Stultz <john.stultz@linaro.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Sumit Semwal <sumit.semwal@linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QXNpZGUgZnJvbSBkZWxldGluZyBsb3RzIG9mIGNvZGUgdGhlIHJlYWwgbW90aXZhdGlvbiBoZXJl
IGlzIHRvIHN3aXRjaAp0aGUgbW1hcCBvdmVyIHRvIFZNX1BGTk1BUCwgdG8gYmUgbW9yZSBjb25z
aXN0ZW50IHdpdGggd2hhdCByZWFsIGdwdQpkcml2ZXJzIGRvLiBUaGV5J3JlIGFsbCBWTV9QRk5N
UCwgd2hpY2ggbWVhbnMgZ2V0X3VzZXJfcGFnZXMgZG9lc24ndAp3b3JrLCBhbmQgZXZlbiBpZiB5
b3UgdHJ5IGFuZCB0aGVyZSdzIGEgc3RydWN0IHBhZ2UgYmVoaW5kIHRoYXQsCnRvdWNoaW5nIGl0
IGFuZCBtdWNraW5nIGFyb3VuZCB3aXRoIGl0cyByZWZjb3VudCBjYW4gdXBzZXQgZHJpdmVycwpy
ZWFsIGJhZC4KCnYyOiBSZXZpZXcgZnJvbSBUaG9tYXM6Ci0gc29ydCAjaW5jbHVkZQotIGRyb3Ag
bW9yZSBkZWFkIGNvZGUgdGhhdCBJIGRpZG4ndCBzcG90IHNvbWVob3cKCkNjOiBUaG9tYXMgWmlt
bWVybWFubiA8dHppbW1lcm1hbm5Ac3VzZS5kZT4KQWNrZWQtYnk6IFRob21hcyBaaW1tZXJtYW5u
IDx0emltbWVybWFubkBzdXNlLmRlPgpDYzogSm9obiBTdHVsdHogPGpvaG4uc3R1bHR6QGxpbmFy
by5vcmc+CkNjOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPgpDYzogIkNo
cmlzdGlhbiBLw7ZuaWciIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+ClNpZ25lZC1vZmYtYnk6
IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgpDYzogTWVsaXNzYSBXZW4g
PG1lbGlzc2Euc3J3QGdtYWlsLmNvbT4KQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2ls
c29uLmNvLnVrPgotLS0KIGRyaXZlcnMvZ3B1L2RybS92Z2VtL3ZnZW1fZHJ2LmMgfCAzNDAgKy0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlv
bnMoKyksIDMzNyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vdmdl
bS92Z2VtX2Rydi5jIGIvZHJpdmVycy9ncHUvZHJtL3ZnZW0vdmdlbV9kcnYuYwppbmRleCBhMGU3
NWYxZDVkMDEuLmIxYjNhNWZmYzU0MiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3ZnZW0v
dmdlbV9kcnYuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vdmdlbS92Z2VtX2Rydi5jCkBAIC0zOCw2
ICszOCw3IEBACiAKICNpbmNsdWRlIDxkcm0vZHJtX2Rydi5oPgogI2luY2x1ZGUgPGRybS9kcm1f
ZmlsZS5oPgorI2luY2x1ZGUgPGRybS9kcm1fZ2VtX3NobWVtX2hlbHBlci5oPgogI2luY2x1ZGUg
PGRybS9kcm1faW9jdGwuaD4KICNpbmNsdWRlIDxkcm0vZHJtX21hbmFnZWQuaD4KICNpbmNsdWRl
IDxkcm0vZHJtX3ByaW1lLmg+CkBAIC01MCw4NyArNTEsMTEgQEAKICNkZWZpbmUgRFJJVkVSX01B
Sk9SCTEKICNkZWZpbmUgRFJJVkVSX01JTk9SCTAKIAotc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1f
Z2VtX29iamVjdF9mdW5jcyB2Z2VtX2dlbV9vYmplY3RfZnVuY3M7Ci0KIHN0YXRpYyBzdHJ1Y3Qg
dmdlbV9kZXZpY2UgewogCXN0cnVjdCBkcm1fZGV2aWNlIGRybTsKIAlzdHJ1Y3QgcGxhdGZvcm1f
ZGV2aWNlICpwbGF0Zm9ybTsKIH0gKnZnZW1fZGV2aWNlOwogCi1zdGF0aWMgdm9pZCB2Z2VtX2dl
bV9mcmVlX29iamVjdChzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaikKLXsKLQlzdHJ1Y3QgZHJt
X3ZnZW1fZ2VtX29iamVjdCAqdmdlbV9vYmogPSB0b192Z2VtX2JvKG9iaik7Ci0KLQlrdmZyZWUo
dmdlbV9vYmotPnBhZ2VzKTsKLQltdXRleF9kZXN0cm95KCZ2Z2VtX29iai0+cGFnZXNfbG9jayk7
Ci0KLQlpZiAob2JqLT5pbXBvcnRfYXR0YWNoKQotCQlkcm1fcHJpbWVfZ2VtX2Rlc3Ryb3kob2Jq
LCB2Z2VtX29iai0+dGFibGUpOwotCi0JZHJtX2dlbV9vYmplY3RfcmVsZWFzZShvYmopOwotCWtm
cmVlKHZnZW1fb2JqKTsKLX0KLQotc3RhdGljIHZtX2ZhdWx0X3QgdmdlbV9nZW1fZmF1bHQoc3Ry
dWN0IHZtX2ZhdWx0ICp2bWYpCi17Ci0Jc3RydWN0IHZtX2FyZWFfc3RydWN0ICp2bWEgPSB2bWYt
PnZtYTsKLQlzdHJ1Y3QgZHJtX3ZnZW1fZ2VtX29iamVjdCAqb2JqID0gdm1hLT52bV9wcml2YXRl
X2RhdGE7Ci0JLyogV2UgZG9uJ3QgdXNlIHZtZi0+cGdvZmYgc2luY2UgdGhhdCBoYXMgdGhlIGZh
a2Ugb2Zmc2V0ICovCi0JdW5zaWduZWQgbG9uZyB2YWRkciA9IHZtZi0+YWRkcmVzczsKLQl2bV9m
YXVsdF90IHJldCA9IFZNX0ZBVUxUX1NJR0JVUzsKLQlsb2ZmX3QgbnVtX3BhZ2VzOwotCXBnb2Zm
X3QgcGFnZV9vZmZzZXQ7Ci0JcGFnZV9vZmZzZXQgPSAodmFkZHIgLSB2bWEtPnZtX3N0YXJ0KSA+
PiBQQUdFX1NISUZUOwotCi0JbnVtX3BhZ2VzID0gRElWX1JPVU5EX1VQKG9iai0+YmFzZS5zaXpl
LCBQQUdFX1NJWkUpOwotCi0JaWYgKHBhZ2Vfb2Zmc2V0ID49IG51bV9wYWdlcykKLQkJcmV0dXJu
IFZNX0ZBVUxUX1NJR0JVUzsKLQotCW11dGV4X2xvY2soJm9iai0+cGFnZXNfbG9jayk7Ci0JaWYg
KG9iai0+cGFnZXMpIHsKLQkJZ2V0X3BhZ2Uob2JqLT5wYWdlc1twYWdlX29mZnNldF0pOwotCQl2
bWYtPnBhZ2UgPSBvYmotPnBhZ2VzW3BhZ2Vfb2Zmc2V0XTsKLQkJcmV0ID0gMDsKLQl9Ci0JbXV0
ZXhfdW5sb2NrKCZvYmotPnBhZ2VzX2xvY2spOwotCWlmIChyZXQpIHsKLQkJc3RydWN0IHBhZ2Ug
KnBhZ2U7Ci0KLQkJcGFnZSA9IHNobWVtX3JlYWRfbWFwcGluZ19wYWdlKAotCQkJCQlmaWxlX2lu
b2RlKG9iai0+YmFzZS5maWxwKS0+aV9tYXBwaW5nLAotCQkJCQlwYWdlX29mZnNldCk7Ci0JCWlm
ICghSVNfRVJSKHBhZ2UpKSB7Ci0JCQl2bWYtPnBhZ2UgPSBwYWdlOwotCQkJcmV0ID0gMDsKLQkJ
fSBlbHNlIHN3aXRjaCAoUFRSX0VSUihwYWdlKSkgewotCQkJY2FzZSAtRU5PU1BDOgotCQkJY2Fz
ZSAtRU5PTUVNOgotCQkJCXJldCA9IFZNX0ZBVUxUX09PTTsKLQkJCQlicmVhazsKLQkJCWNhc2Ug
LUVCVVNZOgotCQkJCXJldCA9IFZNX0ZBVUxUX1JFVFJZOwotCQkJCWJyZWFrOwotCQkJY2FzZSAt
RUZBVUxUOgotCQkJY2FzZSAtRUlOVkFMOgotCQkJCXJldCA9IFZNX0ZBVUxUX1NJR0JVUzsKLQkJ
CQlicmVhazsKLQkJCWRlZmF1bHQ6Ci0JCQkJV0FSTl9PTihQVFJfRVJSKHBhZ2UpKTsKLQkJCQly
ZXQgPSBWTV9GQVVMVF9TSUdCVVM7Ci0JCQkJYnJlYWs7Ci0JCX0KLQotCX0KLQlyZXR1cm4gcmV0
OwotfQotCi1zdGF0aWMgY29uc3Qgc3RydWN0IHZtX29wZXJhdGlvbnNfc3RydWN0IHZnZW1fZ2Vt
X3ZtX29wcyA9IHsKLQkuZmF1bHQgPSB2Z2VtX2dlbV9mYXVsdCwKLQkub3BlbiA9IGRybV9nZW1f
dm1fb3BlbiwKLQkuY2xvc2UgPSBkcm1fZ2VtX3ZtX2Nsb3NlLAotfTsKLQogc3RhdGljIGludCB2
Z2VtX29wZW4oc3RydWN0IGRybV9kZXZpY2UgKmRldiwgc3RydWN0IGRybV9maWxlICpmaWxlKQog
ewogCXN0cnVjdCB2Z2VtX2ZpbGUgKnZmaWxlOwpAQCAtMTU5LDI2NSArODQsMTIgQEAgc3RhdGlj
IHZvaWQgdmdlbV9wb3N0Y2xvc2Uoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgc3RydWN0IGRybV9m
aWxlICpmaWxlKQogCWtmcmVlKHZmaWxlKTsKIH0KIAotc3RhdGljIHN0cnVjdCBkcm1fdmdlbV9n
ZW1fb2JqZWN0ICpfX3ZnZW1fZ2VtX2NyZWF0ZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAotCQkJ
CQkJdW5zaWduZWQgbG9uZyBzaXplKQotewotCXN0cnVjdCBkcm1fdmdlbV9nZW1fb2JqZWN0ICpv
Ymo7Ci0JaW50IHJldDsKLQotCW9iaiA9IGt6YWxsb2Moc2l6ZW9mKCpvYmopLCBHRlBfS0VSTkVM
KTsKLQlpZiAoIW9iaikKLQkJcmV0dXJuIEVSUl9QVFIoLUVOT01FTSk7Ci0KLQlvYmotPmJhc2Uu
ZnVuY3MgPSAmdmdlbV9nZW1fb2JqZWN0X2Z1bmNzOwotCi0JcmV0ID0gZHJtX2dlbV9vYmplY3Rf
aW5pdChkZXYsICZvYmotPmJhc2UsIHJvdW5kdXAoc2l6ZSwgUEFHRV9TSVpFKSk7Ci0JaWYgKHJl
dCkgewotCQlrZnJlZShvYmopOwotCQlyZXR1cm4gRVJSX1BUUihyZXQpOwotCX0KLQotCW11dGV4
X2luaXQoJm9iai0+cGFnZXNfbG9jayk7Ci0KLQlyZXR1cm4gb2JqOwotfQotCi1zdGF0aWMgdm9p
ZCBfX3ZnZW1fZ2VtX2Rlc3Ryb3koc3RydWN0IGRybV92Z2VtX2dlbV9vYmplY3QgKm9iaikKLXsK
LQlkcm1fZ2VtX29iamVjdF9yZWxlYXNlKCZvYmotPmJhc2UpOwotCWtmcmVlKG9iaik7Ci19Ci0K
LXN0YXRpYyBzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKnZnZW1fZ2VtX2NyZWF0ZShzdHJ1Y3QgZHJt
X2RldmljZSAqZGV2LAotCQkJCQkgICAgICBzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGUsCi0JCQkJCSAg
ICAgIHVuc2lnbmVkIGludCAqaGFuZGxlLAotCQkJCQkgICAgICB1bnNpZ25lZCBsb25nIHNpemUp
Ci17Ci0Jc3RydWN0IGRybV92Z2VtX2dlbV9vYmplY3QgKm9iajsKLQlpbnQgcmV0OwotCi0Jb2Jq
ID0gX192Z2VtX2dlbV9jcmVhdGUoZGV2LCBzaXplKTsKLQlpZiAoSVNfRVJSKG9iaikpCi0JCXJl
dHVybiBFUlJfQ0FTVChvYmopOwotCi0JcmV0ID0gZHJtX2dlbV9oYW5kbGVfY3JlYXRlKGZpbGUs
ICZvYmotPmJhc2UsIGhhbmRsZSk7Ci0JaWYgKHJldCkgewotCQlkcm1fZ2VtX29iamVjdF9wdXQo
Jm9iai0+YmFzZSk7Ci0JCXJldHVybiBFUlJfUFRSKHJldCk7Ci0JfQotCi0JcmV0dXJuICZvYmot
PmJhc2U7Ci19Ci0KLXN0YXRpYyBpbnQgdmdlbV9nZW1fZHVtYl9jcmVhdGUoc3RydWN0IGRybV9m
aWxlICpmaWxlLCBzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAotCQkJCXN0cnVjdCBkcm1fbW9kZV9j
cmVhdGVfZHVtYiAqYXJncykKLXsKLQlzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKmdlbV9vYmplY3Q7
Ci0JdTY0IHBpdGNoLCBzaXplOwotCi0JcGl0Y2ggPSBhcmdzLT53aWR0aCAqIERJVl9ST1VORF9V
UChhcmdzLT5icHAsIDgpOwotCXNpemUgPSBhcmdzLT5oZWlnaHQgKiBwaXRjaDsKLQlpZiAoc2l6
ZSA9PSAwKQotCQlyZXR1cm4gLUVJTlZBTDsKLQotCWdlbV9vYmplY3QgPSB2Z2VtX2dlbV9jcmVh
dGUoZGV2LCBmaWxlLCAmYXJncy0+aGFuZGxlLCBzaXplKTsKLQlpZiAoSVNfRVJSKGdlbV9vYmpl
Y3QpKQotCQlyZXR1cm4gUFRSX0VSUihnZW1fb2JqZWN0KTsKLQotCWFyZ3MtPnNpemUgPSBnZW1f
b2JqZWN0LT5zaXplOwotCWFyZ3MtPnBpdGNoID0gcGl0Y2g7Ci0KLQlkcm1fZ2VtX29iamVjdF9w
dXQoZ2VtX29iamVjdCk7Ci0KLQlEUk1fREVCVUcoIkNyZWF0ZWQgb2JqZWN0IG9mIHNpemUgJWxs
dVxuIiwgYXJncy0+c2l6ZSk7Ci0KLQlyZXR1cm4gMDsKLX0KLQogc3RhdGljIHN0cnVjdCBkcm1f
aW9jdGxfZGVzYyB2Z2VtX2lvY3Rsc1tdID0gewogCURSTV9JT0NUTF9ERUZfRFJWKFZHRU1fRkVO
Q0VfQVRUQUNILCB2Z2VtX2ZlbmNlX2F0dGFjaF9pb2N0bCwgRFJNX1JFTkRFUl9BTExPVyksCiAJ
RFJNX0lPQ1RMX0RFRl9EUlYoVkdFTV9GRU5DRV9TSUdOQUwsIHZnZW1fZmVuY2Vfc2lnbmFsX2lv
Y3RsLCBEUk1fUkVOREVSX0FMTE9XKSwKIH07CiAKLXN0YXRpYyBpbnQgdmdlbV9tbWFwKHN0cnVj
dCBmaWxlICpmaWxwLCBzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSkKLXsKLQl1bnNpZ25lZCBs
b25nIGZsYWdzID0gdm1hLT52bV9mbGFnczsKLQlpbnQgcmV0OwotCi0JcmV0ID0gZHJtX2dlbV9t
bWFwKGZpbHAsIHZtYSk7Ci0JaWYgKHJldCkKLQkJcmV0dXJuIHJldDsKLQotCS8qIEtlZXAgdGhl
IFdDIG1tYXBpbmcgc2V0IGJ5IGRybV9nZW1fbW1hcCgpIGJ1dCBvdXIgcGFnZXMKLQkgKiBhcmUg
b3JkaW5hcnkgYW5kIG5vdCBzcGVjaWFsLgotCSAqLwotCXZtYS0+dm1fZmxhZ3MgPSBmbGFncyB8
IFZNX0RPTlRFWFBBTkQgfCBWTV9ET05URFVNUDsKLQlyZXR1cm4gMDsKLX0KLQotc3RhdGljIGNv
bnN0IHN0cnVjdCBmaWxlX29wZXJhdGlvbnMgdmdlbV9kcml2ZXJfZm9wcyA9IHsKLQkub3duZXIJ
CT0gVEhJU19NT0RVTEUsCi0JLm9wZW4JCT0gZHJtX29wZW4sCi0JLm1tYXAJCT0gdmdlbV9tbWFw
LAotCS5wb2xsCQk9IGRybV9wb2xsLAotCS5yZWFkCQk9IGRybV9yZWFkLAotCS51bmxvY2tlZF9p
b2N0bCA9IGRybV9pb2N0bCwKLQkuY29tcGF0X2lvY3RsCT0gZHJtX2NvbXBhdF9pb2N0bCwKLQku
cmVsZWFzZQk9IGRybV9yZWxlYXNlLAotfTsKLQotc3RhdGljIHN0cnVjdCBwYWdlICoqdmdlbV9w
aW5fcGFnZXMoc3RydWN0IGRybV92Z2VtX2dlbV9vYmplY3QgKmJvKQotewotCW11dGV4X2xvY2so
JmJvLT5wYWdlc19sb2NrKTsKLQlpZiAoYm8tPnBhZ2VzX3Bpbl9jb3VudCsrID09IDApIHsKLQkJ
c3RydWN0IHBhZ2UgKipwYWdlczsKLQotCQlwYWdlcyA9IGRybV9nZW1fZ2V0X3BhZ2VzKCZiby0+
YmFzZSk7Ci0JCWlmIChJU19FUlIocGFnZXMpKSB7Ci0JCQliby0+cGFnZXNfcGluX2NvdW50LS07
Ci0JCQltdXRleF91bmxvY2soJmJvLT5wYWdlc19sb2NrKTsKLQkJCXJldHVybiBwYWdlczsKLQkJ
fQotCi0JCWJvLT5wYWdlcyA9IHBhZ2VzOwotCX0KLQltdXRleF91bmxvY2soJmJvLT5wYWdlc19s
b2NrKTsKLQotCXJldHVybiBiby0+cGFnZXM7Ci19Ci0KLXN0YXRpYyB2b2lkIHZnZW1fdW5waW5f
cGFnZXMoc3RydWN0IGRybV92Z2VtX2dlbV9vYmplY3QgKmJvKQotewotCW11dGV4X2xvY2soJmJv
LT5wYWdlc19sb2NrKTsKLQlpZiAoLS1iby0+cGFnZXNfcGluX2NvdW50ID09IDApIHsKLQkJZHJt
X2dlbV9wdXRfcGFnZXMoJmJvLT5iYXNlLCBiby0+cGFnZXMsIHRydWUsIHRydWUpOwotCQliby0+
cGFnZXMgPSBOVUxMOwotCX0KLQltdXRleF91bmxvY2soJmJvLT5wYWdlc19sb2NrKTsKLX0KLQot
c3RhdGljIGludCB2Z2VtX3ByaW1lX3BpbihzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaikKLXsK
LQlzdHJ1Y3QgZHJtX3ZnZW1fZ2VtX29iamVjdCAqYm8gPSB0b192Z2VtX2JvKG9iaik7Ci0JbG9u
ZyBuX3BhZ2VzID0gb2JqLT5zaXplID4+IFBBR0VfU0hJRlQ7Ci0Jc3RydWN0IHBhZ2UgKipwYWdl
czsKLQotCXBhZ2VzID0gdmdlbV9waW5fcGFnZXMoYm8pOwotCWlmIChJU19FUlIocGFnZXMpKQot
CQlyZXR1cm4gUFRSX0VSUihwYWdlcyk7Ci0KLQkvKiBGbHVzaCB0aGUgb2JqZWN0IGZyb20gdGhl
IENQVSBjYWNoZSBzbyB0aGF0IGltcG9ydGVycyBjYW4gcmVseQotCSAqIG9uIGNvaGVyZW50IGlu
ZGlyZWN0IGFjY2VzcyB2aWEgdGhlIGV4cG9ydGVkIGRtYS1hZGRyZXNzLgotCSAqLwotCWRybV9j
bGZsdXNoX3BhZ2VzKHBhZ2VzLCBuX3BhZ2VzKTsKLQotCXJldHVybiAwOwotfQotCi1zdGF0aWMg
dm9pZCB2Z2VtX3ByaW1lX3VucGluKHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqKQotewotCXN0
cnVjdCBkcm1fdmdlbV9nZW1fb2JqZWN0ICpibyA9IHRvX3ZnZW1fYm8ob2JqKTsKLQotCXZnZW1f
dW5waW5fcGFnZXMoYm8pOwotfQotCi1zdGF0aWMgc3RydWN0IHNnX3RhYmxlICp2Z2VtX3ByaW1l
X2dldF9zZ190YWJsZShzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaikKLXsKLQlzdHJ1Y3QgZHJt
X3ZnZW1fZ2VtX29iamVjdCAqYm8gPSB0b192Z2VtX2JvKG9iaik7Ci0KLQlyZXR1cm4gZHJtX3By
aW1lX3BhZ2VzX3RvX3NnKG9iai0+ZGV2LCBiby0+cGFnZXMsIGJvLT5iYXNlLnNpemUgPj4gUEFH
RV9TSElGVCk7Ci19Ci0KLXN0YXRpYyBzdHJ1Y3QgZHJtX2dlbV9vYmplY3QqIHZnZW1fcHJpbWVf
aW1wb3J0KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCi0JCQkJCQlzdHJ1Y3QgZG1hX2J1ZiAqZG1h
X2J1ZikKLXsKLQlzdHJ1Y3QgdmdlbV9kZXZpY2UgKnZnZW0gPSBjb250YWluZXJfb2YoZGV2LCB0
eXBlb2YoKnZnZW0pLCBkcm0pOwotCi0JcmV0dXJuIGRybV9nZW1fcHJpbWVfaW1wb3J0X2Rldihk
ZXYsIGRtYV9idWYsICZ2Z2VtLT5wbGF0Zm9ybS0+ZGV2KTsKLX0KLQotc3RhdGljIHN0cnVjdCBk
cm1fZ2VtX29iamVjdCAqdmdlbV9wcmltZV9pbXBvcnRfc2dfdGFibGUoc3RydWN0IGRybV9kZXZp
Y2UgKmRldiwKLQkJCXN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCwgc3RydWN0IHNn
X3RhYmxlICpzZykKLXsKLQlzdHJ1Y3QgZHJtX3ZnZW1fZ2VtX29iamVjdCAqb2JqOwotCWludCBu
cGFnZXM7Ci0KLQlvYmogPSBfX3ZnZW1fZ2VtX2NyZWF0ZShkZXYsIGF0dGFjaC0+ZG1hYnVmLT5z
aXplKTsKLQlpZiAoSVNfRVJSKG9iaikpCi0JCXJldHVybiBFUlJfQ0FTVChvYmopOwotCi0JbnBh
Z2VzID0gUEFHRV9BTElHTihhdHRhY2gtPmRtYWJ1Zi0+c2l6ZSkgLyBQQUdFX1NJWkU7Ci0KLQlv
YmotPnRhYmxlID0gc2c7Ci0Jb2JqLT5wYWdlcyA9IGt2bWFsbG9jX2FycmF5KG5wYWdlcywgc2l6
ZW9mKHN0cnVjdCBwYWdlICopLCBHRlBfS0VSTkVMKTsKLQlpZiAoIW9iai0+cGFnZXMpIHsKLQkJ
X192Z2VtX2dlbV9kZXN0cm95KG9iaik7Ci0JCXJldHVybiBFUlJfUFRSKC1FTk9NRU0pOwotCX0K
LQotCW9iai0+cGFnZXNfcGluX2NvdW50Kys7IC8qIHBlcm1hLXBpbm5lZCAqLwotCWRybV9wcmlt
ZV9zZ190b19wYWdlX2FycmF5KG9iai0+dGFibGUsIG9iai0+cGFnZXMsIG5wYWdlcyk7Ci0JcmV0
dXJuICZvYmotPmJhc2U7Ci19Ci0KLXN0YXRpYyBpbnQgdmdlbV9wcmltZV92bWFwKHN0cnVjdCBk
cm1fZ2VtX29iamVjdCAqb2JqLCBzdHJ1Y3QgZG1hX2J1Zl9tYXAgKm1hcCkKLXsKLQlzdHJ1Y3Qg
ZHJtX3ZnZW1fZ2VtX29iamVjdCAqYm8gPSB0b192Z2VtX2JvKG9iaik7Ci0JbG9uZyBuX3BhZ2Vz
ID0gb2JqLT5zaXplID4+IFBBR0VfU0hJRlQ7Ci0Jc3RydWN0IHBhZ2UgKipwYWdlczsKLQl2b2lk
ICp2YWRkcjsKLQotCXBhZ2VzID0gdmdlbV9waW5fcGFnZXMoYm8pOwotCWlmIChJU19FUlIocGFn
ZXMpKQotCQlyZXR1cm4gUFRSX0VSUihwYWdlcyk7Ci0KLQl2YWRkciA9IHZtYXAocGFnZXMsIG5f
cGFnZXMsIDAsIHBncHJvdF93cml0ZWNvbWJpbmUoUEFHRV9LRVJORUwpKTsKLQlpZiAoIXZhZGRy
KQotCQlyZXR1cm4gLUVOT01FTTsKLQlkbWFfYnVmX21hcF9zZXRfdmFkZHIobWFwLCB2YWRkcik7
Ci0KLQlyZXR1cm4gMDsKLX0KLQotc3RhdGljIHZvaWQgdmdlbV9wcmltZV92dW5tYXAoc3RydWN0
IGRybV9nZW1fb2JqZWN0ICpvYmosIHN0cnVjdCBkbWFfYnVmX21hcCAqbWFwKQotewotCXN0cnVj
dCBkcm1fdmdlbV9nZW1fb2JqZWN0ICpibyA9IHRvX3ZnZW1fYm8ob2JqKTsKLQotCXZ1bm1hcCht
YXAtPnZhZGRyKTsKLQl2Z2VtX3VucGluX3BhZ2VzKGJvKTsKLX0KLQotc3RhdGljIGludCB2Z2Vt
X3ByaW1lX21tYXAoc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmosCi0JCQkgICBzdHJ1Y3Qgdm1f
YXJlYV9zdHJ1Y3QgKnZtYSkKLXsKLQlpbnQgcmV0OwotCi0JaWYgKG9iai0+c2l6ZSA8IHZtYS0+
dm1fZW5kIC0gdm1hLT52bV9zdGFydCkKLQkJcmV0dXJuIC1FSU5WQUw7Ci0KLQlpZiAoIW9iai0+
ZmlscCkKLQkJcmV0dXJuIC1FTk9ERVY7Ci0KLQlyZXQgPSBjYWxsX21tYXAob2JqLT5maWxwLCB2
bWEpOwotCWlmIChyZXQpCi0JCXJldHVybiByZXQ7Ci0KLQl2bWFfc2V0X2ZpbGUodm1hLCBvYmot
PmZpbHApOwotCXZtYS0+dm1fZmxhZ3MgfD0gVk1fRE9OVEVYUEFORCB8IFZNX0RPTlREVU1QOwot
CXZtYS0+dm1fcGFnZV9wcm90ID0gcGdwcm90X3dyaXRlY29tYmluZSh2bV9nZXRfcGFnZV9wcm90
KHZtYS0+dm1fZmxhZ3MpKTsKLQotCXJldHVybiAwOwotfQotCi1zdGF0aWMgY29uc3Qgc3RydWN0
IGRybV9nZW1fb2JqZWN0X2Z1bmNzIHZnZW1fZ2VtX29iamVjdF9mdW5jcyA9IHsKLQkuZnJlZSA9
IHZnZW1fZ2VtX2ZyZWVfb2JqZWN0LAotCS5waW4gPSB2Z2VtX3ByaW1lX3BpbiwKLQkudW5waW4g
PSB2Z2VtX3ByaW1lX3VucGluLAotCS5nZXRfc2dfdGFibGUgPSB2Z2VtX3ByaW1lX2dldF9zZ190
YWJsZSwKLQkudm1hcCA9IHZnZW1fcHJpbWVfdm1hcCwKLQkudnVubWFwID0gdmdlbV9wcmltZV92
dW5tYXAsCi0JLnZtX29wcyA9ICZ2Z2VtX2dlbV92bV9vcHMsCi19OworREVGSU5FX0RSTV9HRU1f
Rk9QUyh2Z2VtX2RyaXZlcl9mb3BzKTsKIAogc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1fZHJpdmVy
IHZnZW1fZHJpdmVyID0gewogCS5kcml2ZXJfZmVhdHVyZXMJCT0gRFJJVkVSX0dFTSB8IERSSVZF
Ul9SRU5ERVIsCkBAIC00MjcsMTMgKzk5LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1fZHJp
dmVyIHZnZW1fZHJpdmVyID0gewogCS5udW1faW9jdGxzIAkJCT0gQVJSQVlfU0laRSh2Z2VtX2lv
Y3RscyksCiAJLmZvcHMJCQkJPSAmdmdlbV9kcml2ZXJfZm9wcywKIAotCS5kdW1iX2NyZWF0ZQkJ
CT0gdmdlbV9nZW1fZHVtYl9jcmVhdGUsCi0KLQkucHJpbWVfaGFuZGxlX3RvX2ZkID0gZHJtX2dl
bV9wcmltZV9oYW5kbGVfdG9fZmQsCi0JLnByaW1lX2ZkX3RvX2hhbmRsZSA9IGRybV9nZW1fcHJp
bWVfZmRfdG9faGFuZGxlLAotCS5nZW1fcHJpbWVfaW1wb3J0ID0gdmdlbV9wcmltZV9pbXBvcnQs
Ci0JLmdlbV9wcmltZV9pbXBvcnRfc2dfdGFibGUgPSB2Z2VtX3ByaW1lX2ltcG9ydF9zZ190YWJs
ZSwKLQkuZ2VtX3ByaW1lX21tYXAgPSB2Z2VtX3ByaW1lX21tYXAsCisJRFJNX0dFTV9TSE1FTV9E
UklWRVJfT1BTLAogCiAJLm5hbWUJPSBEUklWRVJfTkFNRSwKIAkuZGVzYwk9IERSSVZFUl9ERVND
LAotLSAKMi4zMC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngK
