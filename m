Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F854213D8
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 08:48:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D14689854;
	Fri, 17 May 2019 06:48:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com
 [IPv6:2a00:1450:4864:20::544])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 526AC89854
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2019 06:48:21 +0000 (UTC)
Received: by mail-ed1-x544.google.com with SMTP id w37so8986611edw.4
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 May 2019 23:48:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rX5imGBcZRtKQx3U9V+zrVVHOBxwypWv6pSOJY6OKAI=;
 b=ofWz51bpCiQwlXiNY2qrRnGEjYtb4PHriVrrWyqEMQv+L5yyrtsKVj8olO70Y92vpf
 HVglK0OciJ8qCxCdD+Nwn+r5Vu9Scp//8cteR+FVoiNISYmdt1ueJV5atetW/4iUVvqT
 PL/w44f+SwiiKQIEPNfTLuLQqC4KjPL8nd6cdHPuOz+7sGn+Z6R4BSXWqKEWraa+YVRx
 m0kLynvArmJ1sfxj3fz5Jq/OBUpxAWxLt+5xRGuKsUjcGvVAO+H3paEMMum4uWE5dgiD
 FqA6reSnVjVUopIJito7ovAGkIaAYlSiluNsHLdzavy4q1iA5xaDdcQesDqU5K217sr3
 v3+w==
X-Gm-Message-State: APjAAAWdpQci9tiJ8AE57eqoSuwG/uirbxvOK9InVWmOBn7yStFDMDGG
 N8dmMmUiR6d2OT7K6f55/TI6hwmA3jE=
X-Google-Smtp-Source: APXvYqyV29O4b3drabLfyVPkrq+hWsABQp3QQai90z9LmTrnNNs8bebjWoXENMEqa+FToqpmLPimlg==
X-Received: by 2002:a50:f5d9:: with SMTP id x25mr53274395edm.128.1558075699775; 
 Thu, 16 May 2019 23:48:19 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id 43sm2537152edu.78.2019.05.16.23.48.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 23:48:19 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Fri, 17 May 2019 08:48:13 +0200
Message-Id: <20190517064813.17587-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rX5imGBcZRtKQx3U9V+zrVVHOBxwypWv6pSOJY6OKAI=;
 b=WpYCBAwtJDcFTKlyF0zcBpufy0YzupA/wlPIzoMeHzwx/rWms7FwwONvBwiReVvIKv
 s70p35vmn8JWkucf/nWAotoO7jww2ranrs71Lmo0HY1yJ9MbVXzQvlNVmrU8irWTk9/L
 L3qU5RilVlQICgzBfhv6aM9r9lPUoDySQJ0yk=
Subject: [Intel-gfx] [PATCH] C: Revert "net/sch_generic: Shut up noise"
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, Martin Peres <martin.peres@free.fr>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyByZXZlcnRzIGNvbW1pdCBhOWY4NDBiZGQyZmQ0Y2IwN2E2NjlmMWMzMTEyYjgwNDIxOGI0
YWJhLgoKQSBxdWljayB0ZXN0IHBhdGNoIGRpZG4ndCBzZWVtIHRvIGhhdmUgaGl0IHRoaXMsIHNv
IGxldCdzIHRyeSB3aGF0CmhhcHBlbnMgd2hlbiB3ZSByZWluc3RhdGUgdGhlIGZ1bGwgV0FSTklO
RyBhZ2Fpbi4KCkNjOiBNYXJ0aW4gUGVyZXMgPG1hcnRpbi5wZXJlc0BmcmVlLmZyPgotLS0KIG5l
dC9zY2hlZC9zY2hfZ2VuZXJpYy5jIHwgNyArLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNl
cnRpb24oKyksIDYgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvbmV0L3NjaGVkL3NjaF9nZW5l
cmljLmMgYi9uZXQvc2NoZWQvc2NoX2dlbmVyaWMuYwppbmRleCBjZjk2MTQ5ZDdiNWUuLmExMTdk
OTI2MDU1OCAxMDA2NDQKLS0tIGEvbmV0L3NjaGVkL3NjaF9nZW5lcmljLmMKKysrIGIvbmV0L3Nj
aGVkL3NjaF9nZW5lcmljLmMKQEAgLTQ1NiwxMiArNDU2LDcgQEAgc3RhdGljIHZvaWQgZGV2X3dh
dGNoZG9nKHN0cnVjdCB0aW1lcl9saXN0ICp0KQogCQkJCX0KIAkJCX0KIAotCQkJLyogVGhlIG5v
aXNlIGlzIHBpc3Npbmcgb2ZmIG91ciBDSSBhbmQgdXBzdHJlYW0gZG9lc24ndAotCQkJICogbW92
ZSBvbiB0aGUgYnVnIHJlcG9ydDoKLQkJCSAqCi0JCQkgKiBodHRwczovL2J1Z3ppbGxhLmtlcm5l
bC5vcmcvc2hvd19idWcuY2dpP2lkPTE5NjM5OQotCQkJICovCi0JCQlpZiAoc29tZV9xdWV1ZV90
aW1lZG91dCAmJiAwKSB7CisJCQlpZiAoc29tZV9xdWV1ZV90aW1lZG91dCkgewogCQkJCVdBUk5f
T05DRSgxLCBLRVJOX0lORk8gIk5FVERFViBXQVRDSERPRzogJXMgKCVzKTogdHJhbnNtaXQgcXVl
dWUgJXUgdGltZWQgb3V0XG4iLAogCQkJCSAgICAgICBkZXYtPm5hbWUsIG5ldGRldl9kcml2ZXJu
YW1lKGRldiksIGkpOwogCQkJCWRldi0+bmV0ZGV2X29wcy0+bmRvX3R4X3RpbWVvdXQoZGV2KTsK
LS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
