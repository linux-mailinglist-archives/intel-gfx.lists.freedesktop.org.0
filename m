Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 845B496310
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2019 16:53:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C92D76E3E7;
	Tue, 20 Aug 2019 14:53:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com
 [IPv6:2a00:1450:4864:20::543])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E64436E3E7
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 14:53:48 +0000 (UTC)
Received: by mail-ed1-x543.google.com with SMTP id s15so6652554edx.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 07:53:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LsMJOd+Vr//gN++n1h4q4g+7EoS55VUTthL4UKw+YSU=;
 b=PLCP0LMPyB6viBSnvZvUm1sY7uEfIT+yRZripuKshtphZAlTbqc+RCZ7T/edBCeJmA
 8DfeeAubr/0bkiu//WmqlhlX2Bg02GiFJkewJyCrVayuJNIbCnTMBue+S5KUJ6w3gVhu
 MeGJYKjcB79qy6CRjnl6jYThlAXqGuhXfo5v3hFZdPRAs6bk6AbvvBdF/1moJOv00AFX
 6+gGFilShzlkFIJB7zlourA0Trxi1c/9HmWRY/qkH5IC0Zj+WdySTraP16jGZO4k5lOd
 7lfpQky4bH34MNLNeSo4RsYaUJt59FtRXvLOk5w3aFZq1j2BvtG/+YA9/xOaeDmbvwd0
 U4fg==
X-Gm-Message-State: APjAAAWJvOb6S+WnXVrGfLK/GZF7+siHk9+UMkPTKn8FFOa/mjcIru8Y
 RmUV1zU5t0toka5JWUeYxR41oQ==
X-Google-Smtp-Source: APXvYqx39b8WQ8cjuikbb7ChkoPkPfrRCz+xbBXsy47esCFIewmw1A7ArYI1XI+tGWiwnjmYLEml1w==
X-Received: by 2002:a17:906:8481:: with SMTP id
 m1mr26391383ejx.43.1566312827412; 
 Tue, 20 Aug 2019 07:53:47 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id a16sm2644744ejr.10.2019.08.20.07.53.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 07:53:46 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue, 20 Aug 2019 16:53:33 +0200
Message-Id: <20190820145336.15649-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LsMJOd+Vr//gN++n1h4q4g+7EoS55VUTthL4UKw+YSU=;
 b=ewbGJKKLFczcRpgEtOveyeMJLcgNDVHu/iPkMNlEkfyqy2LMcT5eqBqGseN0ruEh7V
 OAvnNmDapPwyKgwgWtdq2iSsbsiwxS+xIkyZFGIPXn+2CNJEqJ0CHpN5zwS+SRf2oVGO
 Jhf6GXCnkZE1amRJiBGSRCqwiO/3UzCtcbr0w=
Subject: [Intel-gfx] [PATCH 0/3] RFC/T: dma_resv vs. mmap_sem
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgYWxsLAoKQXMgcGFydCBvZiBhbGwgdGhlIHJlY2VudCBkaXNjdXNzaW9ucyBhcm91bmQgdHRt
IGFuZCBkbWFfcmVzdiBJIHN0YXJ0ZWQKbG9va2luZyBpbnRvIHRoaXMuIFRoZSBnb2FsIChhdCBs
ZWFzdCBzb21ld2hlbiBpbiB0aGUgbmVhciBmdXR1cmUpIGlzIHRvCmhhdmUgaXQgYWxsIGRvY3Vt
ZW50ZWQgYW5kIHRoZSBjcm9zcy1kcml2ZXIgc2VtYW50aWNzIGxvY2tlZCBkb3duIGFzIG11Y2gK
YXMgcG9zc2libGUuCgpPbmUgb2YgdGhlIGJpZ2dlc3QgaXNzdWVzIHRoZXJlIGlzIGhvdyB0aGUg
ZG1hX3Jlc3Ygd3dfbXV0ZXggZml0cyBpbnRvIHRoZQpvdmVyYWxsIGxvY2tpbmcgaGllcmFyY2h5
LCBlc3BlY2lhbGx5IHdydCBjb3JlIG1tIGxvY2tzLiBUaGlzIHBhdGNoIHNlcmllcwpzaG91bGQg
Zml4IHRoYXQuCgpDb21tZW50cywgcmV2aWV3IGFuZCBlc3BlY2lhbGx5IHRlc3RpbmcgKHRoZXJl
J3Mgb25seSBzbyBtdWNoIHlvdSBjYW4gZG8Kd2l0aCBhdWRpdGluZykgdmVyeSBtdWNoIGFwcHJl
Y2lhdGVkLgoKQ2hlZXJzLCBEYW5pZWwKCkRhbmllbCBWZXR0ZXIgKDMpOgogIGRtYV9yZXN2OiBw
cmltZSBsb2NrZGVwIGFubm90YXRpb25zCiAgZHJtL25vdXZlYXU6IHNsb3dwYXRoIGZvciBwdXNo
YnVmIGlvY3RsCiAgZHJtL3R0bTogcmVtb3ZlIHR0bV9ib193YWl0X3VucmVzZXJ2ZWQKCiBkcml2
ZXJzL2RtYS1idWYvZG1hLXJlc3YuYyAgICAgICAgICAgIHwgMTIgKysrKysrCiBkcml2ZXJzL2dw
dS9kcm0vbm91dmVhdS9ub3V2ZWF1X2dlbS5jIHwgNTcgKysrKysrKysrKysrKysrKysrLS0tLS0t
LS0tCiBkcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9iby5jICAgICAgICAgIHwgMzQgLS0tLS0tLS0t
LS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm9fdm0uYyAgICAgICB8IDI2ICstLS0t
LS0tLS0tLQogaW5jbHVkZS9kcm0vdHRtL3R0bV9ib19hcGkuaCAgICAgICAgICB8ICAxIC0KIDUg
ZmlsZXMgY2hhbmdlZCwgNTEgaW5zZXJ0aW9ucygrKSwgNzkgZGVsZXRpb25zKC0pCgotLSAKMi4y
My4wLnJjMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
