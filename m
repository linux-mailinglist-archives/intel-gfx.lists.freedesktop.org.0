Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 65173E1E96
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2019 16:50:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED7EF6E0F1;
	Wed, 23 Oct 2019 14:50:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB8D56EAEF
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Oct 2019 14:50:03 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id c22so10844620wmd.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Oct 2019 07:50:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TgNcxEwD/Rw+XsHHUoWKtnyQ7Kd75vAYAE7l7GYdjMw=;
 b=TffrRr5UBidelHp/a+K1U1iUFhbZPKVsuyLwDGH7MCXMXEWEaOF4zZ7vkCro3LPsP6
 DGaiLG1bTzuiNu9e3MPdnW+RoVNIRVhMtpKUmC33SqOzXRKipfhd1UpJKyPaY4fKXj7B
 ASfYYKFm5l9dFMfr6D6pTUPoUCrdR6lXzBseWqMn5RJf6HKzR3kPKtWiSTIBydhjnwNG
 6ZYIJVL23HetJ8g+8D6kwZfZK3/F+JEDAmmHT5iH0H1tKCs4iSz/qEVUJTMQfnqykwDw
 emEyw3YvGIvktOJ3JxR9femMhuOpV95nlNW5IOVL78k2IXoDryctIUUp82qc/1PWvCKf
 yZ4g==
X-Gm-Message-State: APjAAAVymj1XemR6BAM716FkQeBD4kx+/OT+WNwcUYlQ+d/IdSbED6Rb
 QkN8Yv7zy5PZgMHHyKNIPD7fZp4FIPU=
X-Google-Smtp-Source: APXvYqxBybYZhBzgCwl8sjJ1UHbUbu9xiERzLdeA22Nqrezpw1E1ihlJAn/cLHEHT8CYvoFqDh8h8Q==
X-Received: by 2002:a1c:dd06:: with SMTP id u6mr261130wmg.109.1571842202346;
 Wed, 23 Oct 2019 07:50:02 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id z125sm29614190wme.37.2019.10.23.07.49.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 07:49:59 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Wed, 23 Oct 2019 16:49:52 +0200
Message-Id: <20191023144953.28190-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TgNcxEwD/Rw+XsHHUoWKtnyQ7Kd75vAYAE7l7GYdjMw=;
 b=WGzE7qffBMivLCljiUXSRqpVN97SZOL/56BMB9CMFOMsN0qHEJRDyLLPJpmGZ6OUiW
 P4Vf/TDutlZKpZLOz8HwOWTfTjkMKWBlnm6xmFq4ZYgPblEV+uWiu2vsQacqkTymj+6U
 dnVIX/7SAFgNX8tHFNpel1YTG23II2Pb673/k=
Subject: [Intel-gfx] [PATCH 1/2] drm/property: Enforce more lifetime rules
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
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Rajat Jain <rajatja@google.com>, Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UHJvcGVydGllcyBjYW4ndCBiZSBhdHRhY2hlZCBhZnRlciByZWdpc3RlcmluZywgdXNlcnNwYWNl
IHdvdWxkIGdldApjb25mdXNlZCAobm8gb25lIGJvdGhlcnMgdG8gcmVwcm9iZSByZWFsbHkpLgoK
LSBBZGQga2VybmVsZG9jCi0gRW5mb3JjZSB0aGlzIHdpdGggc29tZSBjaGVja3MuIFRoaXMgbmVl
ZHMgYSBzb21ld2hhdCB1Z2x5IGNoZWNrCiAgc2luY2UgY29ubmVjdG9ycyBjYW4gYmUgYWRkZWQg
bGF0ZXIgb24sIGJ1dCB3ZSBzdGlsbCBuZWVkIHRvIGF0dGFjaAogIGFsbCBwcm9wZXJ0aWVzIGJl
Zm9yZSB0aGV5IGdvIHB1YmxpYy4KCk5vdGUgdGhhdCB3ZSBhbHJlYWR5IGVuZm9yY2UgdGhhdCBw
cm9wZXJ0aWVzIHRoZW1zZWx2ZXMgYXJlIGNyZWF0ZWQKYmVmb3JlIHRoZSBlbnRpcmUgZGV2aWNl
IGlzIHJlZ2lzdGVyZWQuCgpDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGxpbnV4LmludGVs
LmNvbT4KQ2M6IFJhamF0IEphaW4gPHJhamF0amFAZ29vZ2xlLmNvbT4KU2lnbmVkLW9mZi1ieTog
RGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2RybV9tb2RlX29iamVjdC5jIHwgMTQgKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2Vk
LCAxNCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9tb2Rl
X29iamVjdC5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9tb2RlX29iamVjdC5jCmluZGV4IDZhMjNl
MzZlZDRmZS4uMzVjMjcxOTQwN2E4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX21v
ZGVfb2JqZWN0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9tb2RlX29iamVjdC5jCkBAIC0y
MjQsMTIgKzIyNCwyNiBAQCBFWFBPUlRfU1lNQk9MKGRybV9tb2RlX29iamVjdF9nZXQpOwogICog
VGhpcyBhdHRhY2hlcyB0aGUgZ2l2ZW4gcHJvcGVydHkgdG8gdGhlIG1vZGVzZXQgb2JqZWN0IHdp
dGggdGhlIGdpdmVuIGluaXRpYWwKICAqIHZhbHVlLiBDdXJyZW50bHkgdGhpcyBmdW5jdGlvbiBj
YW5ub3QgZmFpbCBzaW5jZSB0aGUgcHJvcGVydGllcyBhcmUgc3RvcmVkIGluCiAgKiBhIHN0YXRp
Y2FsbHkgc2l6ZWQgYXJyYXkuCisgKgorICogTm90ZSB0aGF0IGFsbCBwcm9wZXJ0aWVzIG11c3Qg
YmUgYXR0YWNoZWQgYmVmb3JlIHRoZSBvYmplY3QgaXRzZWxmIGlzCisgKiByZWdpc3RlcmVkIGFu
ZCBhY2Nlc3NpYmxlIGZyb20gdXNlcnNwYWNlLgogICovCiB2b2lkIGRybV9vYmplY3RfYXR0YWNo
X3Byb3BlcnR5KHN0cnVjdCBkcm1fbW9kZV9vYmplY3QgKm9iaiwKIAkJCQlzdHJ1Y3QgZHJtX3By
b3BlcnR5ICpwcm9wZXJ0eSwKIAkJCQl1aW50NjRfdCBpbml0X3ZhbCkKIHsKIAlpbnQgY291bnQg
PSBvYmotPnByb3BlcnRpZXMtPmNvdW50OworCXN0cnVjdCBkcm1fZGV2aWNlICpkZXYgPSBwcm9w
ZXJ0eS0+ZGV2OworCisKKwlpZiAob2JqLT50eXBlID09IERSTV9NT0RFX09CSkVDVF9DT05ORUNU
T1IpIHsKKwkJc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciA9IG9ial90b19jb25uZWN0
b3Iob2JqKTsKKworCQlXQVJOX09OKCFkZXYtPmRyaXZlci0+bG9hZCAmJgorCQkJY29ubmVjdG9y
LT5yZWdpc3RyYXRpb25fc3RhdGUgPT0gRFJNX0NPTk5FQ1RPUl9SRUdJU1RFUkVEKTsKKwl9IGVs
c2UgeworCQlXQVJOX09OKCFkZXYtPmRyaXZlci0+bG9hZCAmJiBkZXYtPnJlZ2lzdGVyZWQpOwor
CX0KIAogCWlmIChjb3VudCA9PSBEUk1fT0JKRUNUX01BWF9QUk9QRVJUWSkgewogCQlXQVJOKDEs
ICJGYWlsZWQgdG8gYXR0YWNoIG9iamVjdCBwcm9wZXJ0eSAodHlwZTogMHgleCkuIFBsZWFzZSAi
Ci0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
