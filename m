Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD88610029B
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2019 11:36:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2811B6E31A;
	Mon, 18 Nov 2019 10:36:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD5806E2E9
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Nov 2019 10:36:01 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id s5so18810765wrw.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Nov 2019 02:36:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6Ra81SF/gAF1NOlsK25mQDZVt7/1R+jY1Ddov0yZk/I=;
 b=dXx957fPcsZ+ZnUvowV1OOTwORHE5LvrqrpET3q0KlN3PqLEFQDdgAIp4EbMAuwa9f
 h6ZYIybIaTG+V9/SXhClywKDd2GZrh5Av87RbxBpCCE5hqqteySFE8j3Bt58IcZM2adk
 L5QfJinMJso4yF/OXN5HBv4wxfxxWaFQTEW3BEYzQN0faqlX67+pq7uMPrTsbJvm3d+4
 KPqn+tuPvPY0Py9D8nVge0e7fmCvd0i5rnk8ad2hGotaSl6TsIWLm3pxeMXO+0vynMmq
 i5Tq3S2hR0np1ojVHUA8sz1O0UqlgOP/7dLxvAETIEtHsGOnbuAC+o1d/bi6i/ho7jvD
 pt+A==
X-Gm-Message-State: APjAAAXuoP9eBLlEP1jeP8Yqu1G3Q4WAxcZqkcZpVOEU9tEQTOXp+48T
 pCOKm3MqUx+SqyIO9AcHlBClaw==
X-Google-Smtp-Source: APXvYqw29riHGoWMhCfeUGpT8JpzsyL2a/U5QhM8PPUltRaVH+y5YSQ78vFp9V+DsJILGfZcCnEWvA==
X-Received: by 2002:a5d:484f:: with SMTP id n15mr11213479wrs.112.1574073360548; 
 Mon, 18 Nov 2019 02:36:00 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id j2sm22749200wrt.61.2019.11.18.02.35.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 02:36:00 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 18 Nov 2019 11:35:36 +0100
Message-Id: <20191118103536.17675-16-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191118103536.17675-1-daniel.vetter@ffwll.ch>
References: <20191118103536.17675-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6Ra81SF/gAF1NOlsK25mQDZVt7/1R+jY1Ddov0yZk/I=;
 b=jUmU2Pm/rpn34cHxfy/mRTbtXOvG/rx3QBiW/JW6ZrTKA7eyHzhVLN00yIxfjH6RaD
 Jk1Q0TAoW9w0rHaaoGdl2yKZ5lVsS3c2zqF51xDaOKYnlr6y5NEd0jhTP1FYkSRmZnH2
 oLIgt8fS3WN4DKSKvUp8t8vFTe8Q0zNBNct7s=
Subject: [Intel-gfx] [PATCH 15/15] dma-buf: Remove kernel map/unmap hooks
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
 linaro-mm-sig@lists.linaro.org, Daniel Vetter <daniel.vetter@intel.com>,
 Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWxsIGltcGxlbWVudGF0aW9ucyBhcmUgZ29uZSBub3cuCgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwg
VmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KQ2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQu
c2Vtd2FsQGxpbmFyby5vcmc+CkNjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IGxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwotLS0KIGluY2x1ZGUvbGludXgvZG1hLWJ1Zi5o
IHwgMjUgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDI1IGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oIGIvaW5jbHVkZS9s
aW51eC9kbWEtYnVmLmgKaW5kZXggN2ZlYjljMzgwNWFlLi5hYmY1NDU5YTViOWQgMTAwNjQ0Ci0t
LSBhL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oCisrKyBiL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5o
CkBAIC0yNDksMzEgKzI0OSw2IEBAIHN0cnVjdCBkbWFfYnVmX29wcyB7CiAJICovCiAJaW50ICgq
bW1hcCkoc3RydWN0IGRtYV9idWYgKiwgc3RydWN0IHZtX2FyZWFfc3RydWN0ICp2bWEpOwogCi0J
LyoqCi0JICogQG1hcDoKLQkgKgotCSAqIE1hcHMgYSBwYWdlIGZyb20gdGhlIGJ1ZmZlciBpbnRv
IGtlcm5lbCBhZGRyZXNzIHNwYWNlLiBUaGUgcGFnZSBpcwotCSAqIHNwZWNpZmllZCBieSBvZmZz
ZXQgaW50byB0aGUgYnVmZmVyIGluIFBBR0VfU0laRSB1bml0cy4KLQkgKgotCSAqIFRoaXMgY2Fs
bGJhY2sgaXMgb3B0aW9uYWwuCi0JICoKLQkgKiBSZXR1cm5zOgotCSAqCi0JICogVmlydHVhbCBh
ZGRyZXNzIHBvaW50ZXIgd2hlcmUgcmVxdWVzdGVkIHBhZ2UgY2FuIGJlIGFjY2Vzc2VkLiBOVUxM
Ci0JICogb24gZXJyb3Igb3Igd2hlbiB0aGlzIGZ1bmN0aW9uIGlzIHVuaW1wbGVtZW50ZWQgYnkg
dGhlIGV4cG9ydGVyLgotCSAqLwotCXZvaWQgKigqbWFwKShzdHJ1Y3QgZG1hX2J1ZiAqLCB1bnNp
Z25lZCBsb25nKTsKLQotCS8qKgotCSAqIEB1bm1hcDoKLQkgKgotCSAqIFVubWFwcyBhIHBhZ2Ug
ZnJvbSB0aGUgYnVmZmVyLiBQYWdlIG9mZnNldCBhbmQgYWRkcmVzcyBwb2ludGVyIHNob3VsZAot
CSAqIGJlIHRoZSBzYW1lIGFzIHRoZSBvbmUgcGFzc2VkIHRvIGFuZCByZXR1cm5lZCBieSBtYXRj
aGluZyBjYWxsIHRvIG1hcC4KLQkgKgotCSAqIFRoaXMgY2FsbGJhY2sgaXMgb3B0aW9uYWwuCi0J
ICovCi0Jdm9pZCAoKnVubWFwKShzdHJ1Y3QgZG1hX2J1ZiAqLCB1bnNpZ25lZCBsb25nLCB2b2lk
ICopOwotCiAJdm9pZCAqKCp2bWFwKShzdHJ1Y3QgZG1hX2J1ZiAqKTsKIAl2b2lkICgqdnVubWFw
KShzdHJ1Y3QgZG1hX2J1ZiAqLCB2b2lkICp2YWRkcik7CiB9OwotLSAKMi4yNC4wCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
