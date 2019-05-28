Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A6AE2C201
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2019 11:03:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C32889D81;
	Tue, 28 May 2019 09:03:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com
 [IPv6:2a00:1450:4864:20::543])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA40F89D56
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2019 09:03:14 +0000 (UTC)
Received: by mail-ed1-x543.google.com with SMTP id s19so2497906edq.7
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2019 02:03:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zV1k/wyKbSK4unVk9Zsa3jP6q9n4lvzRcxAhP6ZZB9c=;
 b=PT2ffophMOH3VEvXFnW1KPHpOovAVOtXkEbvKkGeUEh+8X7zt2ehk2CmDJYxULs5kS
 GhARG7hMtPgchRyPMjuRXew4s4g5apN6MROBJWfRCQ1VR5GKQy6wa0y3FZPb1QWro+IU
 QEveDjr9ftcajHn0I/0IkXx404WALiq2hPZxLABOsT5GmKGbSVQ77likS2bPZ9ts0QOp
 ngdjn5AUzXfAizM82+q801mQEtw02pSNpIC9Y3ch5+FqpHYaRH4FceZQ0oL7Z+NCs2F/
 t2QSI33C5FrK8Ti4CtWiHF/YMjjoGtdIiwXPCRBcgbcDt6vn/kU1h5Q/JIR8qthzNYju
 pSLg==
X-Gm-Message-State: APjAAAXVh2mlJzLa85gQOdMG7kXjHZPgLzLiygl1LEgU2+qm/j3lX6Tz
 HxfnV1HT68Mffkx7B3cY5gLB5g==
X-Google-Smtp-Source: APXvYqzAGcPvnepTOvwWRDQxzLcJ/M058MuV1V355eV9v96p3PIpDSwE+P8RHoMQgcX7eCRUeENRAg==
X-Received: by 2002:a50:8a46:: with SMTP id
 i64mr126930218edi.177.1559034193385; 
 Tue, 28 May 2019 02:03:13 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id x49sm4072656edm.25.2019.05.28.02.03.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 May 2019 02:03:12 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: LKML <linux-kernel@vger.kernel.org>
Date: Tue, 28 May 2019 11:02:33 +0200
Message-Id: <20190528090304.9388-3-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190528090304.9388-1-daniel.vetter@ffwll.ch>
References: <20190528090304.9388-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zV1k/wyKbSK4unVk9Zsa3jP6q9n4lvzRcxAhP6ZZB9c=;
 b=Jr4diFnn4D12FEqGpJQ+RuXfm8du2nWF1rRHD4W7cIEGcbaXABy4y7PYtm1RWYCGsM
 4VUgAtZNFYUQNW5orIhfjotHfmaMRBcdXOU7lv9qvqyzRqJa5qThyVjqHAx5MH9qVK6q
 lTOmQV05XsP0H1DMu730MHM4S7AOOkuX/FVNA=
Subject: [Intel-gfx] [PATCH 02/33] fbdev: locking check for fb_set_suspend
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
 Kees Cook <keescook@chromium.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Manfred Schlaegl <manfred.schlaegl@ginzinger.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 linux-fbdev@vger.kernel.org, DRI Development <dri-devel@lists.freedesktop.org>,
 =?UTF-8?q?Micha=C5=82=20Miros=C5=82aw?= <mirq-linux@rere.qmqm.pl>,
 Mikulas Patocka <mpatocka@redhat.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>, Sam Ravnborg <sam@ravnborg.org>,
 Peter Rosin <peda@axentia.se>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SnVzdCBkcml2ZS1ieSwgbm90aGluZyBzeXN0ZW1hdGljIHlldC4KClNpZ25lZC1vZmYtYnk6IERh
bmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogU2FtIFJh
dm5ib3JnIDxzYW1AcmF2bmJvcmcub3JnPgpSZXZpZXdlZC1ieTogTWFhcnRlbiBMYW5raG9yc3Qg
PG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KQ2M6IEJhcnRsb21pZWogWm9sbmll
cmtpZXdpY3ogPGIuem9sbmllcmtpZUBzYW1zdW5nLmNvbT4KQ2M6IERhbmllbCBWZXR0ZXIgPGRh
bmllbC52ZXR0ZXJAZmZ3bGwuY2g+CkNjOiAiTWljaGHFgiBNaXJvc8WCYXciIDxtaXJxLWxpbnV4
QHJlcmUucW1xbS5wbD4KQ2M6IFBldGVyIFJvc2luIDxwZWRhQGF4ZW50aWEuc2U+CkNjOiBIYW5z
IGRlIEdvZWRlIDxoZGVnb2VkZUByZWRoYXQuY29tPgpDYzogVGhvbWFzIFppbW1lcm1hbm4gPHR6
aW1tZXJtYW5uQHN1c2UuZGU+CkNjOiBNYW5mcmVkIFNjaGxhZWdsIDxtYW5mcmVkLnNjaGxhZWds
QGdpbnppbmdlci5jb20+CkNjOiBNaWt1bGFzIFBhdG9ja2EgPG1wYXRvY2thQHJlZGhhdC5jb20+
CkNjOiBLZWVzIENvb2sgPGtlZXNjb29rQGNocm9taXVtLm9yZz4KLS0tCiBkcml2ZXJzL3ZpZGVv
L2ZiZGV2L2NvcmUvZmJtZW0uYyB8IDIgKysKIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMo
KykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3ZpZGVvL2ZiZGV2L2NvcmUvZmJtZW0uYyBiL2RyaXZl
cnMvdmlkZW8vZmJkZXYvY29yZS9mYm1lbS5jCmluZGV4IGQxOTQ5YzkyYmU5OC4uOGJhNjc0ZmZi
M2M5IDEwMDY0NAotLS0gYS9kcml2ZXJzL3ZpZGVvL2ZiZGV2L2NvcmUvZmJtZW0uYworKysgYi9k
cml2ZXJzL3ZpZGVvL2ZiZGV2L2NvcmUvZmJtZW0uYwpAQCAtMTk4NSw2ICsxOTg1LDggQEAgdm9p
ZCBmYl9zZXRfc3VzcGVuZChzdHJ1Y3QgZmJfaW5mbyAqaW5mbywgaW50IHN0YXRlKQogewogCXN0
cnVjdCBmYl9ldmVudCBldmVudDsKIAorCVdBUk5fQ09OU09MRV9VTkxPQ0tFRCgpOworCiAJZXZl
bnQuaW5mbyA9IGluZm87CiAJaWYgKHN0YXRlKSB7CiAJCWZiX25vdGlmaWVyX2NhbGxfY2hhaW4o
RkJfRVZFTlRfU1VTUEVORCwgJmV2ZW50KTsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
