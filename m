Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 66B063C71B2
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jul 2021 16:00:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 738C16E0B6;
	Tue, 13 Jul 2021 13:59:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com
 [IPv6:2a00:1450:4864:20::434])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 051896E0B6
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jul 2021 13:59:55 +0000 (UTC)
Received: by mail-wr1-x434.google.com with SMTP id g16so20721841wrw.5
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jul 2021 06:59:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9YydAG2DcMEmgxcLivuTtxWGeOd7fbFGRECd/sa24wQ=;
 b=F0ZCsLuvDZbH1NpL9Gr8BR4m7vPWuJoj2pxLHSMHE0jfMa7Z0qaez9/Mpy1mjvXBl9
 7Qz4+MaMVubEkwDD/Xn2dkGltVI/9wAMgZi0RASsIxWaRziwmfrOF9VuMTI/xtk1L0oK
 FE1lfIvEgStA04R+4uXa/RaoiNqOSNFUNBJ8Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9YydAG2DcMEmgxcLivuTtxWGeOd7fbFGRECd/sa24wQ=;
 b=LDoa/rH40y1coygSOxu14ABDuiXwVtVPG/i4PTZBWHnP2+ekaem/SunT/+jBMfdlSN
 a7+L1cSK0Elsn6gbzSvdnum4wN6fzVFQYne+1vFyfxN+Ip6GZmo+FCx+J62t92aEs/kg
 k5onvjDJYO2TkNFWLm0gcGESmc7HGcGKw8bPwOCUbwTOwQ1nGBovqH8Yu7ytJGkW4vUm
 lDObkOyC//aHeW/kQcEfSVokUTi9Cjz7vSdHCaJ7gZo3JTn5NikafafwKaAR5upKXA2Z
 b/qwX7QchDF959u9c9lo/iofGjd/XDOp5kkzatytZV1Wq7HwhqeYPpw3DYAnOQGhkN0u
 xecA==
X-Gm-Message-State: AOAM530cvFBUHETiYbKNpK/zjTVKfb3/hv6H8v8mU3arZBC40SyQG3lJ
 pk7um6Mdv7hr6dtiMH1cM8WNUA==
X-Google-Smtp-Source: ABdhPJzwXAzU2cpdYTqZ3JYfNKp8ntaA14B4FhpXI+wfK3KsiogYVTJfuXOFUIsZYWMn7szF8KW7jA==
X-Received: by 2002:a5d:4e4e:: with SMTP id r14mr6084401wrt.251.1626184793688; 
 Tue, 13 Jul 2021 06:59:53 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u18sm15260452wmj.15.2021.07.13.06.59.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Jul 2021 06:59:52 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue, 13 Jul 2021 15:59:22 +0200
Message-Id: <20210713135922.1384264-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/fb-helper: Try to protect cleanup against
 delayed setup
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
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>, Chris Wilson <chris@chris-wilson.co.uk>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U29tZSB2YWd1ZSBldmlkZW5jZXMgc3VnZ2VzdHMgdGhpcyBjYW4gZ28gd3JvbmcuIFRyeSB0byBw
cmV2ZW50IGl0IGJ5CmhvbGRpbmcgdGhlIHJpZ2h0IG11dGV4IGFuZCBjbGVhcmluZyAtPmRlZmVy
cmVkX3NldHVwIHRvIG1ha2Ugc3VyZSB3ZQpsYXRlciBvbiBkb24ndCBhY2NpZGVudGFsbHkgdHJ5
IHRvIHJlLXJlZ2lzdGVyIHRoZSBmYmRldiB3aGVuIHRoZQpkcml2ZXIgdGhvdWdodCBpdCBoYWQg
aXQgYWxsIGNsZWFuZWQgdXAgYWxyZWFkeS4KCnYyOiBJIHJlYWxpemVkIHRoYXQgdGhpcyBpcyBm
dW5kYW1lbnRhbGx5IGJ1dGNoZXJlZCwgYW5kIENJIGNvbXBsYWluZWQKYWJvdXQgbG9ja2RlcCBz
cGxhdHMuIFNvIGxpbWl0IHRoZSBjcml0aWNhbCBzZWN0aW9uIGFnYWluIGFuZCBqdXN0IGFkZAph
IGZldyBub3RlcyB3aGF0IHRoZSBwcm9wZXIgZml4IGlzLgoKUmVmZXJlbmNlczogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvbGludXgtbmV4dC9uZXh0LTIwMjAxMjE1L2ZpLWJ5dC1q
MTkwMC9pZ3RAaTkxNV9wbV9ycG1AbW9kdWxlLXJlbG9hZC5odG1sClNpZ25lZC1vZmYtYnk6IERh
bmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgpDYzogVmlsbGUgU3lyasOkbMOk
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgpDYzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hv
cnN0QGxpbnV4LmludGVsLmNvbT4KQ2M6IE1heGltZSBSaXBhcmQgPG1yaXBhcmRAa2VybmVsLm9y
Zz4KQ2M6IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPgpDYzogRGF2aWQg
QWlybGllIDxhaXJsaWVkQGxpbnV4LmllPgpDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZmd2xs
LmNoPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9kcm1fZmJfaGVscGVyLmMgfCAxMCArKysrKysrKysr
CiAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9kcm1fZmJfaGVscGVyLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2ZiX2hlbHBlci5j
CmluZGV4IDlkODJmZGEyNzRlYi4uOGYxMWU1YWJiMjIyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vZHJtX2ZiX2hlbHBlci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZmJfaGVscGVy
LmMKQEAgLTU5OCw2ICs1OTgsOSBAQCBFWFBPUlRfU1lNQk9MKGRybV9mYl9oZWxwZXJfYWxsb2Nf
ZmJpKTsKICAqIEEgd3JhcHBlciBhcm91bmQgdW5yZWdpc3Rlcl9mcmFtZWJ1ZmZlciwgdG8gcmVs
ZWFzZSB0aGUgZmJfaW5mbwogICogZnJhbWVidWZmZXIgZGV2aWNlLiBUaGlzIG11c3QgYmUgY2Fs
bGVkIGJlZm9yZSByZWxlYXNpbmcgYWxsIHJlc291cmNlcyBmb3IKICAqIEBmYl9oZWxwZXIgYnkg
Y2FsbGluZyBkcm1fZmJfaGVscGVyX2ZpbmkoKS4KKyAqCisgKiBOb3RlIHRoYXQgdGhpcyBpcyBm
dW5kYW1lbnRhbGx5IHJhY3kgb24gaG90dW5sb2FkIGJlY2F1c2UgaXQgZG9lbid0IGhhbmRsZQor
ICogb3BlbiBmYmRldiBmaWxlIGRlc2NyaXB0b3JzIGF0IGFsbC4gVXNlIGRybV9mYmRldl9nZW5l
cmljX3NldHVwKCkgaW5zdGVhZC4KICAqLwogdm9pZCBkcm1fZmJfaGVscGVyX3VucmVnaXN0ZXJf
ZmJpKHN0cnVjdCBkcm1fZmJfaGVscGVyICpmYl9oZWxwZXIpCiB7CkBAIC02MTEsNiArNjE0LDkg
QEAgRVhQT1JUX1NZTUJPTChkcm1fZmJfaGVscGVyX3VucmVnaXN0ZXJfZmJpKTsKICAqIEBmYl9o
ZWxwZXI6IGRyaXZlci1hbGxvY2F0ZWQgZmJkZXYgaGVscGVyLCBjYW4gYmUgTlVMTAogICoKICAq
IFRoaXMgY2xlYW5zIHVwIGFsbCByZW1haW5pbmcgcmVzb3VyY2VzIGFzc29jaWF0ZWQgd2l0aCBA
ZmJfaGVscGVyLgorICoKKyAqIE5vdGUgdGhhdCB0aGlzIGlzIGZ1bmRhbWVudGFsbHkgcmFjeSBv
biBob3R1bmxvYWQgYmVjYXVzZSBpdCBkb2VuJ3QgaGFuZGxlCisgKiBvcGVuIGZiZGV2IGZpbGUg
ZGVzY3JpcHRvcnMgYXQgYWxsLiBVc2UgZHJtX2ZiZGV2X2dlbmVyaWNfc2V0dXAoKSBpbnN0ZWFk
LgogICovCiB2b2lkIGRybV9mYl9oZWxwZXJfZmluaShzdHJ1Y3QgZHJtX2ZiX2hlbHBlciAqZmJf
aGVscGVyKQogewpAQCAtMjM4Miw2ICsyMzg4LDEwIEBAIHN0YXRpYyB2b2lkIGRybV9mYmRldl9j
bGllbnRfdW5yZWdpc3RlcihzdHJ1Y3QgZHJtX2NsaWVudF9kZXYgKmNsaWVudCkKIHsKIAlzdHJ1
Y3QgZHJtX2ZiX2hlbHBlciAqZmJfaGVscGVyID0gZHJtX2ZiX2hlbHBlcl9mcm9tX2NsaWVudChj
bGllbnQpOwogCisJbXV0ZXhfbG9jaygmZmJfaGVscGVyLT5sb2NrKTsKKwlmYl9oZWxwZXItPmRl
ZmVycmVkX3NldHVwID0gZmFsc2U7CisJbXV0ZXhfdW5sb2NrKCZmYl9oZWxwZXItPmxvY2spOwor
CiAJaWYgKGZiX2hlbHBlci0+ZmJkZXYpCiAJCS8qIGRybV9mYmRldl9mYl9kZXN0cm95KCkgdGFr
ZXMgY2FyZSBvZiBjbGVhbnVwICovCiAJCWRybV9mYl9oZWxwZXJfdW5yZWdpc3Rlcl9mYmkoZmJf
aGVscGVyKTsKLS0gCjIuMzIuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4Cg==
