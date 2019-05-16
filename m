Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A9541FFCC
	for <lists+intel-gfx@lfdr.de>; Thu, 16 May 2019 08:45:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5048D891A6;
	Thu, 16 May 2019 06:45:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com
 [IPv6:2a00:1450:4864:20::544])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 224F0891A6
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 May 2019 06:45:42 +0000 (UTC)
Received: by mail-ed1-x544.google.com with SMTP id w37so3590154edw.4
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 May 2019 23:45:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PcUBo+l05+/J9JCJgzO6Ss6Y34xHKPeneFgnLJWDdgA=;
 b=YdduhnIfyUGy9mf7EsBvnHj+c/Lu+bw1t1tcZhiH5mCS5P6XTDVE2eTzh/a0qQs5T3
 n02cmyxxGYRhCcS+kRIPA0qMncPR5+N9kPUiUl0QdhT4se+yfZk31vmC0Ol9a6eS4KRW
 SkVftvB5gZQGF2MLhSMZ9E/U2OcIXZopev2tX42KCQqCpjAp+a9bZcGumuLwQltTrFXT
 Izxj/jowIs23fqDAJNUMeaNNl9b+oCTyO0nhl2ScX4ICOr+ffkZuvw8u2yOy8VUxJC2g
 pqm2O4k9I71IbN87RqFw0iuTye9tB2M1TjGdUxA+lHp1E+X3GrKvnxGEALtrbpCH6uqY
 6f2A==
X-Gm-Message-State: APjAAAXa6jtUp1gaYKFDBEc3jyFnM5SKlO4522bHTcUI5WVsLIV6OBNa
 +TZ9Q7K9U51aauWN3bGYYQrR8EKmLxA=
X-Google-Smtp-Source: APXvYqzppgOAMo1uZBoEu5yv/lDJb5fCC60RureRL+2+zFhT7sC+Xqtx5RHtEkHZONU6jBK0vs3nIg==
X-Received: by 2002:a50:f5d9:: with SMTP id x25mr46288547edm.128.1557989140463; 
 Wed, 15 May 2019 23:45:40 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id q24sm915170ejr.44.2019.05.15.23.45.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 May 2019 23:45:39 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Thu, 16 May 2019 08:45:32 +0200
Message-Id: <20190516064532.12200-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PcUBo+l05+/J9JCJgzO6Ss6Y34xHKPeneFgnLJWDdgA=;
 b=Vnhu7Z5fHqVB8KgBoGq8v/SL8ETobMHWfBXJRGKxHO2BR2qobhXpL6fGW6eBZ9835d
 Ww+01CglDIdmYE0mq7H2myl7orsT9OZRo8+lPbRMKfdxvjKZnEE4HUE+fVqIdSRpmRcW
 ttska8dprvgElJS5yZHQvnU+9gDnBFmPVnq2c=
Subject: [Intel-gfx] [PATCH] CI: Revert "net/sch_generic: Shut up noise"
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
YWJhLgoKQnV0IGluc3RlYWQgdHVuZSBpdCBkb3duIHRvIGFuIGVycm9yLCBob3BlZnVsbHkgdGhh
dCB3YXkgd2UgY2FuCnBlcmhhcHMgY2FwdHVyZSBzb21ldGhpbmcgLi4uCgpDYzogTWFydGluIFBl
cmVzIDxtYXJ0aW4ucGVyZXNAZnJlZS5mcj4KLS0tCiBuZXQvc2NoZWQvc2NoX2dlbmVyaWMuYyB8
IDkgKystLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL25ldC9zY2hlZC9zY2hfZ2VuZXJpYy5jIGIvbmV0L3NjaGVkL3Nj
aF9nZW5lcmljLmMKaW5kZXggY2Y5NjE0OWQ3YjVlLi41YjQyZGFkOTQ2NjUgMTAwNjQ0Ci0tLSBh
L25ldC9zY2hlZC9zY2hfZ2VuZXJpYy5jCisrKyBiL25ldC9zY2hlZC9zY2hfZ2VuZXJpYy5jCkBA
IC00NTYsMTMgKzQ1Niw4IEBAIHN0YXRpYyB2b2lkIGRldl93YXRjaGRvZyhzdHJ1Y3QgdGltZXJf
bGlzdCAqdCkKIAkJCQl9CiAJCQl9CiAKLQkJCS8qIFRoZSBub2lzZSBpcyBwaXNzaW5nIG9mZiBv
dXIgQ0kgYW5kIHVwc3RyZWFtIGRvZXNuJ3QKLQkJCSAqIG1vdmUgb24gdGhlIGJ1ZyByZXBvcnQ6
Ci0JCQkgKgotCQkJICogaHR0cHM6Ly9idWd6aWxsYS5rZXJuZWwub3JnL3Nob3dfYnVnLmNnaT9p
ZD0xOTYzOTkKLQkJCSAqLwotCQkJaWYgKHNvbWVfcXVldWVfdGltZWRvdXQgJiYgMCkgewotCQkJ
CVdBUk5fT05DRSgxLCBLRVJOX0lORk8gIk5FVERFViBXQVRDSERPRzogJXMgKCVzKTogdHJhbnNt
aXQgcXVldWUgJXUgdGltZWQgb3V0XG4iLAorCQkJaWYgKHNvbWVfcXVldWVfdGltZWRvdXQpIHsK
KwkJCQlwcl9lcnIoIk5FVERFViBXQVRDSERPRzogJXMgKCVzKTogdHJhbnNtaXQgcXVldWUgJXUg
dGltZWQgb3V0XG4iLAogCQkJCSAgICAgICBkZXYtPm5hbWUsIG5ldGRldl9kcml2ZXJuYW1lKGRl
diksIGkpOwogCQkJCWRldi0+bmV0ZGV2X29wcy0+bmRvX3R4X3RpbWVvdXQoZGV2KTsKIAkJCX0K
LS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
