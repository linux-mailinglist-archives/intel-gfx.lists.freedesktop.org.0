Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49E8118F7A6
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 15:52:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA55A6E261;
	Mon, 23 Mar 2020 14:51:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CA2E6E22A
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 14:51:02 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id t7so12749138wrw.12
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 07:51:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=50EvKYMoILj2aPfjn/Hmz526xC3SseH5NBkdaf27Kgw=;
 b=bGgaG+OtLOnceuZjJpIQblgDW6+sArODIz0nkL+ewFPgjJwh6+oHZXK0UeMi2MIlUH
 fh5lBoHrrT4Q62zNm5lul/36Nd0+xfHgkF1q/4sx19C5qxKdmtve+Kmo0N6l63y7eVVv
 cILqDGQ1gTSvNCOmK2vw60As4xrtqun0SY1M4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=50EvKYMoILj2aPfjn/Hmz526xC3SseH5NBkdaf27Kgw=;
 b=AqEFH94E+JYwq/O2pHJGq7a/1+oMk3lUvKg1QCHXcV3HOKxmtTvooS8BnD56bCXK0E
 w7SThOIVz246fhoZ0yUe6znOMKfARsqqwlxFgIWfdNQD4K9xVAtXC1NkhBxnIyo0wcCQ
 DdzaLTScwW6WxW8Rr3NHWPCKjZhFp05zsFtqxwJdhuhROOfWaQR4k4r/BfGAFe8yPobo
 kRNRQPQEpI2/ZktvCe4IGDHwjj2iFC9VG3vpsUioKlD5u7p+XjpMail3OGd+X6TQlQvc
 oZ1l2gp9MdeJXyQVXb2r1DQuAZJ3G7ctHnbJxJaLocOIKzSFKlgW0psIyVHEvKjpr2Ke
 j9kw==
X-Gm-Message-State: ANhLgQ2MGWU8vwHeQAaYK1y2TCYqF7b2YzLkpt288Z2dQAPbfU81KKeB
 cKN8imVr2CUP7zKhh8PMEnhOrw==
X-Google-Smtp-Source: ADFU+vtGLTcVL1NpXElhTqgDYjk11Z0GhUTSRMtv6BBr/5S/HkwhkseI0DXo27+ow/6UGcKINWGyiQ==
X-Received: by 2002:adf:9321:: with SMTP id 30mr29275077wro.330.1584975061180; 
 Mon, 23 Mar 2020 07:51:01 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s22sm20376522wmc.16.2020.03.23.07.50.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Mar 2020 07:51:00 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 23 Mar 2020 15:49:45 +0100
Message-Id: <20200323144950.3018436-47-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200323144950.3018436-1-daniel.vetter@ffwll.ch>
References: <20200323144950.3018436-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 46/51] drm/repaper: Drop explicit
 drm_mode_config_cleanup call
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
 Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>, Sam Ravnborg <sam@ravnborg.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWxsb3dzIHVzIHRvIGRyb3AgdGhlIGRybV9kcml2ZXIucmVsZWFzZSBjYWxsYmFjay4KClRoaXMg
aXMgbWFkZSBwb3NzaWJsZSBieSBhIHByZWNlZWRpbmcgcGF0Y2ggd2hpY2ggYWRkZWQgYSBkcm1t
XwpjbGVhbnVwIGFjdGlvbiB0byBkcm1fbW9kZV9jb25maWdfaW5pdCgpLCBoZW5jZSBhbGwgd2Ug
bmVlZCB0byBkbyB0bwplbnN1cmUgdGhhdCBkcm1fbW9kZV9jb25maWdfY2xlYW51cCgpIGlzIHJ1
biBvbiBmaW5hbCBkcm1fZGV2aWNlCmNsZWFudXAgaXMgY2hlY2sgdGhlIG5ldyBlcnJvciBjb2Rl
IGZvciBfaW5pdCgpLgoKdjI6IEV4cGxhaW4gd2h5IHRoaXMgY2xlYW51cCBpcyBwb3NzaWJsZSAo
TGF1cmVudCkuCgp2MzogVXNlIGRybW1fbW9kZV9jb25maWdfaW5pdCgpIGZvciBtb3JlIGNsYXJp
dHkgKFNhbSwgVGhvbWFzKQpJIGFsc28gbm90aWNlZCB0aGF0IEkndmUgZmFpbGVkIHRvIGFkZCB0
aGUgZXJyb3IgY2hlY2tpbmcsCl9fbXVzdF9jaGVjayBjYXVnaHQgdGhhdC4KCkNjOiBTYW0gUmF2
bmJvcmcgPHNhbUByYXZuYm9yZy5vcmc+CkNjOiBUaG9tYXMgWmltbWVybWFubiA8dHppbW1lcm1h
bm5Ac3VzZS5kZT4KQ2M6IExhdXJlbnQgUGluY2hhcnQgPGxhdXJlbnQucGluY2hhcnRAaWRlYXNv
bmJvYXJkLmNvbT4KUmV2aWV3ZWQtYnk6IE5vcmFsZiBUcsO4bm5lcyA8bm9yYWxmQHRyb25uZXMu
b3JnPiAodjIpClNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50
ZWwuY29tPgpDYzogIk5vcmFsZiBUcsO4bm5lcyIgPG5vcmFsZkB0cm9ubmVzLm9yZz4KLS0tCiBk
cml2ZXJzL2dwdS9kcm0vdGlueS9yZXBhcGVyLmMgfCAxMiArKystLS0tLS0tLS0KIDEgZmlsZSBj
aGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL3RpbnkvcmVwYXBlci5jIGIvZHJpdmVycy9ncHUvZHJtL3RpbnkvcmVwYXBl
ci5jCmluZGV4IDQ3NDFmZjY3MGVjOS4uODYyYzNlZTYwNTVkIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vdGlueS9yZXBhcGVyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3RpbnkvcmVwYXBl
ci5jCkBAIC05MDksMTMgKzkwOSw2IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX21vZGVfY29u
ZmlnX2Z1bmNzIHJlcGFwZXJfbW9kZV9jb25maWdfZnVuY3MgPSB7CiAJLmF0b21pY19jb21taXQg
PSBkcm1fYXRvbWljX2hlbHBlcl9jb21taXQsCiB9OwogCi1zdGF0aWMgdm9pZCByZXBhcGVyX3Jl
bGVhc2Uoc3RydWN0IGRybV9kZXZpY2UgKmRybSkKLXsKLQlEUk1fREVCVUdfRFJJVkVSKCJcbiIp
OwotCi0JZHJtX21vZGVfY29uZmlnX2NsZWFudXAoZHJtKTsKLX0KLQogc3RhdGljIGNvbnN0IHVp
bnQzMl90IHJlcGFwZXJfZm9ybWF0c1tdID0gewogCURSTV9GT1JNQVRfWFJHQjg4ODgsCiB9OwpA
QCAtOTUzLDcgKzk0Niw2IEBAIERFRklORV9EUk1fR0VNX0NNQV9GT1BTKHJlcGFwZXJfZm9wcyk7
CiBzdGF0aWMgc3RydWN0IGRybV9kcml2ZXIgcmVwYXBlcl9kcml2ZXIgPSB7CiAJLmRyaXZlcl9m
ZWF0dXJlcwk9IERSSVZFUl9HRU0gfCBEUklWRVJfTU9ERVNFVCB8IERSSVZFUl9BVE9NSUMsCiAJ
LmZvcHMJCQk9ICZyZXBhcGVyX2ZvcHMsCi0JLnJlbGVhc2UJCT0gcmVwYXBlcl9yZWxlYXNlLAog
CURSTV9HRU1fQ01BX1ZNQVBfRFJJVkVSX09QUywKIAkubmFtZQkJCT0gInJlcGFwZXIiLAogCS5k
ZXNjCQkJPSAiUGVydmFzaXZlIERpc3BsYXlzIFJlUGFwZXIgZS1pbmsgcGFuZWxzIiwKQEAgLTEw
MjMsNyArMTAxNSw5IEBAIHN0YXRpYyBpbnQgcmVwYXBlcl9wcm9iZShzdHJ1Y3Qgc3BpX2Rldmlj
ZSAqc3BpKQogCX0KIAlkcm1tX2FkZF9maW5hbF9rZnJlZShkcm0sIGVwZCk7CiAKLQlkcm1fbW9k
ZV9jb25maWdfaW5pdChkcm0pOworCXJldCA9IGRybW1fbW9kZV9jb25maWdfaW5pdChkcm0pOwor
CWlmIChyZXQpCisJCXJldHVybiByZXQ7CiAJZHJtLT5tb2RlX2NvbmZpZy5mdW5jcyA9ICZyZXBh
cGVyX21vZGVfY29uZmlnX2Z1bmNzOwogCiAJZXBkLT5zcGkgPSBzcGk7Ci0tIAoyLjI1LjEKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
