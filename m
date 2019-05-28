Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF2962C22B
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2019 11:04:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DE1989EB8;
	Tue, 28 May 2019 09:03:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com
 [IPv6:2a00:1450:4864:20::542])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B3F889E52
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2019 09:03:33 +0000 (UTC)
Received: by mail-ed1-x542.google.com with SMTP id a8so30639121edx.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2019 02:03:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vM1aYE2ulFqwNKAI91FehOuN3FngVvZTQQrOwUdJ200=;
 b=Et21j7GgU0ZCo/szKW/nEA0BIAYTUUB8DM/5khGZfgGuygPbilLx7GfeJpAH9uM3DH
 RODSav8ZEQe6qmvUh+2Wbz4I487Hqtk7m0F9MHXjMAu2MwKE+Co3mV2vu3LLUsl0Selk
 tjtuqKAwuhWsK9fmAkeA3PVZj6RHZ35rK4nTg/kmtbaLGKYWdnT14uetlPOH6JzaFmR6
 45WGWW9Mwl7IUvriJviC4dro9JhRCYqHpmsCvJhReI5QwKbXpiQcmraniVVDhCC3zS7u
 3WnEWDDRDKkwCIEP079j88mxni89Ya9wpXU7/x2K53EYs9L8KmT36deLKweZ67N1XW7M
 CWQQ==
X-Gm-Message-State: APjAAAVJC643t2VskI+oRqEUhbi+rUaq0fZvEy+oROAfAr4lUNiwW8hb
 v+0AIJq673WxGbLyTOON9kdy0w==
X-Google-Smtp-Source: APXvYqwU3phWu021ZksHkbFLtcLsKLyfWY2d+xsu54QDYCzOWlQy1gkDllSESV1InsXH4hWCGMcBow==
X-Received: by 2002:a50:b3a6:: with SMTP id
 s35mr129115181edd.220.1559034210796; 
 Tue, 28 May 2019 02:03:30 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id x49sm4072656edm.25.2019.05.28.02.03.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 May 2019 02:03:29 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: LKML <linux-kernel@vger.kernel.org>
Date: Tue, 28 May 2019 11:02:44 +0200
Message-Id: <20190528090304.9388-14-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190528090304.9388-1-daniel.vetter@ffwll.ch>
References: <20190528090304.9388-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vM1aYE2ulFqwNKAI91FehOuN3FngVvZTQQrOwUdJ200=;
 b=KW37xWZVcPypjbSNTGtze1qbJdJ+h3eyy81RbWAyp7nDLbzjHN5Wkb5DfFZKHDsp2A
 v6vepSIbHMJFlOq2tkBtTV/XzHFr6pwUkmz2w01+sxCfI4CkmEqKeMStEPkcI1eaw2zU
 cTRX3cMyqjfte5kX7q5zfCLS6/JyWCmbOWE5k=
Subject: [Intel-gfx] [PATCH 13/33] fbdev: sysfs files can't disappear before
 the device is gone
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
Cc: Daniel Thompson <daniel.thompson@linaro.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 linux-fbdev@vger.kernel.org, DRI Development <dri-devel@lists.freedesktop.org>,
 Sam Ravnborg <sam@ravnborg.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2hpY2ggbWVhbnMgbG9ja19mYl9pbmZvIGNhbiBuZXZlciBmYWlsLiBSZW1vdmUgdGhlIGVycm9y
IGhhbmRsaW5nLgoKU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBm
ZndsbC5jaD4KUmV2aWV3ZWQtYnk6IFNhbSBSYXZuYm9yZyA8c2FtQHJhdm5ib3JnLm9yZz4KUmV2
aWV3ZWQtYnk6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRl
bC5jb20+CkNjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPgpDYzogQmFy
dGxvbWllaiBab2xuaWVya2lld2ljeiA8Yi56b2xuaWVya2llQHNhbXN1bmcuY29tPgpDYzogUm9i
IENsYXJrIDxyb2JkY2xhcmtAZ21haWwuY29tPgotLS0KIGRyaXZlcnMvdmlkZW8vZmJkZXYvY29y
ZS9mYnN5c2ZzLmMgfCAxMCArKy0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25z
KCspLCA4IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvdmlkZW8vZmJkZXYvY29y
ZS9mYnN5c2ZzLmMgYi9kcml2ZXJzL3ZpZGVvL2ZiZGV2L2NvcmUvZmJzeXNmcy5jCmluZGV4IDQ0
Y2NhMzlmMmI1MS4uNWYzMjkyNzhlNTVmIDEwMDY0NAotLS0gYS9kcml2ZXJzL3ZpZGVvL2ZiZGV2
L2NvcmUvZmJzeXNmcy5jCisrKyBiL2RyaXZlcnMvdmlkZW8vZmJkZXYvY29yZS9mYnN5c2ZzLmMK
QEAgLTE3OSwxMCArMTc5LDcgQEAgc3RhdGljIHNzaXplX3Qgc3RvcmVfbW9kZXMoc3RydWN0IGRl
dmljZSAqZGV2aWNlLAogCQlyZXR1cm4gLUVJTlZBTDsKIAogCWNvbnNvbGVfbG9jaygpOwotCWlm
ICghbG9ja19mYl9pbmZvKGZiX2luZm8pKSB7Ci0JCWNvbnNvbGVfdW5sb2NrKCk7Ci0JCXJldHVy
biAtRU5PREVWOwotCX0KKwlsb2NrX2ZiX2luZm8oZmJfaW5mbyk7CiAKIAlsaXN0X3NwbGljZSgm
ZmJfaW5mby0+bW9kZWxpc3QsICZvbGRfbGlzdCk7CiAJZmJfdmlkZW9tb2RlX3RvX21vZGVsaXN0
KChjb25zdCBzdHJ1Y3QgZmJfdmlkZW9tb2RlICopYnVmLCBpLApAQCAtNDA5LDEwICs0MDYsNyBA
QCBzdGF0aWMgc3NpemVfdCBzdG9yZV9mYnN0YXRlKHN0cnVjdCBkZXZpY2UgKmRldmljZSwKIAlz
dGF0ZSA9IHNpbXBsZV9zdHJ0b3VsKGJ1ZiwgJmxhc3QsIDApOwogCiAJY29uc29sZV9sb2NrKCk7
Ci0JaWYgKCFsb2NrX2ZiX2luZm8oZmJfaW5mbykpIHsKLQkJY29uc29sZV91bmxvY2soKTsKLQkJ
cmV0dXJuIC1FTk9ERVY7Ci0JfQorCWxvY2tfZmJfaW5mbyhmYl9pbmZvKTsKIAogCWZiX3NldF9z
dXNwZW5kKGZiX2luZm8sIChpbnQpc3RhdGUpOwogCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
