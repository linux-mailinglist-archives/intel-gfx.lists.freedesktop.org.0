Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B9842F8114
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Jan 2021 17:47:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F3A06E43B;
	Fri, 15 Jan 2021 16:47:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com
 [IPv6:2a00:1450:4864:20::42a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E8976E43B
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Jan 2021 16:47:48 +0000 (UTC)
Received: by mail-wr1-x42a.google.com with SMTP id c5so9938506wrp.6
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Jan 2021 08:47:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5QhN8WM/ckHBgnu83CTaUnW3ZwglkDD4+LDU6FzNXn0=;
 b=GmwNCvEMEIug47BLSuTExXvaRIVzvRXzJyEC5DYvTndfAiyu7Y5pi9btVSLDN5fG9Z
 +rOyPtC8YVgQ6tF9QsrA7FxVc22rps71qivNNmCzqNEnsGhKP2ZoE4IVdxnYAIFzEVKU
 K3vFL2eeED0gWur4EJYgOB/NAf1yk4x8ACxRM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5QhN8WM/ckHBgnu83CTaUnW3ZwglkDD4+LDU6FzNXn0=;
 b=RI9Kf9Q6hDADS08/A9MkJ26nYn/+7wd7HreqoZvekQQ20jJ0dsrn2dP61F0vV0cAom
 tWXKiEP1HZZ0AXd4vMhN6wxZL6HRq/y+kfm7+SnEu/rniORorVIAMslGPu5Oq7NCSNoI
 xpWafIqiuTDBZkf++8ncH7aaD/DFNEGyLX/skBNXtRCHVwkNGPSLOSoVisTSF3XX0Ucb
 lHNVg87w36YkEvVhM5IDL6IJOvl1DjVuH7Dc3vK9/nTcGgaLQBYtkOf2QtjdH3aSSFB5
 BHiHC06DlBy1bt0PB9QYTaUNRZTYwhVPjkQZl9VRDwDuF7uXqQt+f4EGX2GR9K/2i4Ac
 KaVQ==
X-Gm-Message-State: AOAM532GFwfRRbk8Q0vVwOAEHyDYtBpaqOaA/Hv+wZpdvw9QhcamBj2T
 b+F1VNY6eZf9YwSuFCieEzfUkA==
X-Google-Smtp-Source: ABdhPJygbouW4H8IICEc0jMjE3LaGGIdIqHaZsQYLAlDZW5L/OD61A33IaJ8ta7r0g42FWRRGvkTZg==
X-Received: by 2002:adf:c145:: with SMTP id w5mr14260042wre.400.1610729266988; 
 Fri, 15 Jan 2021 08:47:46 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id v126sm2075911wma.22.2021.01.15.08.47.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Jan 2021 08:47:45 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Fri, 15 Jan 2021 17:47:39 +0100
Message-Id: <20210115164739.3958206-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210115130219.3915789-1-daniel.vetter@ffwll.ch>
References: <20210115130219.3915789-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] dma-buf: Add debug option
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
 Sumit Semwal <sumit.semwal@linaro.org>, linaro-mm-sig@lists.linaro.org,
 David Stevens <stevensd@chromium.org>, Daniel Vetter <daniel.vetter@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2UgaGF2ZSB0b28gbWFueSBwZW9wbGUgYWJ1c2luZyB0aGUgc3RydWN0IHBhZ2UgdGhleSBjYW4g
Z2V0IGF0IGJ1dApyZWFsbHkgc2hvdWxkbid0IGluIGltcG9ydGVycy4gQXNpZGUgZnJvbSB0aGF0
IHRoZSBiYWNraW5nIHBhZ2UgbWlnaHQKc2ltcGx5IG5vdCBleGlzdCAoZm9yIGR5bmFtaWMgcDJw
IG1hcHBpbmdzKSBsb29raW5nIGF0IGl0IGFuZCB1c2luZyBpdAplLmcuIGZvciBtbWFwIGNhbiBh
bHNvIHdyZWFrIHRoZSBwYWdlIGhhbmRsaW5nIG9mIHRoZSBleHBvcnRlcgpjb21wbGV0ZWx5LiBJ
bXBvcnRlcnMgcmVhbGx5IG11c3QgZ28gdGhyb3VnaCB0aGUgcHJvcGVyIGludGVyZmFjZSBsaWtl
CmRtYV9idWZfbW1hcCBmb3IgZXZlcnl0aGluZy4KCkknbSBzZW1pLXRlbXB0ZWQgdG8gZW5mb3Jj
ZSB0aGlzIGZvciBkeW5hbWljIGltcG9ydGVycyBzaW5jZSB0aG9zZQpyZWFsbHkgaGF2ZSBubyBl
eGN1c2UgYXQgYWxsIHRvIGJyZWFrIHRoZSBydWxlcy4KClVuZm9ydHVhbnRlbHkgd2UgY2FuJ3Qg
c3RvcmUgdGhlIHJpZ2h0IHBvaW50ZXJzIHNvbWV3aGVyZSBzYWZlIHRvIG1ha2UKc3VyZSB3ZSBv
b3BzIG9uIHNvbWV0aGluZyByZWNvZ25pemFibGUsIHNvIGJlc3QgaXMgdG8ganVzdCB3cmFuZ2xl
CnRoZW0gYSBiaXQgYnkgZmxpcHBpbmcgYWxsIHRoZSBiaXRzLiBBdCBsZWFzdCBvbiB4ODYga2Vy
bmVsIGFkZHJlc3NlcwpoYXZlIGFsbCB0aGVpciBoaWdoIGJpdHMgc2V0cyBhbmQgdGhlIHN0cnVj
dCBwYWdlIGFycmF5IGlzIGZhaXJseSBsb3cKaW4gdGhlIGtlcm5lbCBtYXBwaW5nLCBzbyBmbGlw
cGluZyBhbGwgdGhlIGJpdHMgZ2l2ZXMgdXMgYSB2ZXJ5IGhpZ2gKcG9pbnRlciBpbiB1c2Vyc3Bh
Y2UgYW5kIGhlbmNlIGV4Y2VsbGVudCBjaGFuY2VzIGZvciBhbiBpbnZhbGlkCmRlcmVmZXJlbmNl
LgoKdjI6IEFkZCBhIG5vdGUgdG8gdGhlIEBtYXBfZG1hX2J1ZiBob29rIHRoYXQgZXhwb3J0ZXJz
IHNob3VsZG4ndCBkbwpmYW5jeSBjYWNoaW5nIHRyaWNrcywgd2hpY2ggd291bGQgYmxvdyB1cCB3
aXRoIHRoaXMgYWRkcmVzcyBzY3JhbWJsaW5nCnRyaWNrIGhlcmUgKENocmlzKQoKRW5hYmxlIGJ5
IGRlZmF1bHQgd2hlbiBDT05GSUdfRE1BX0FQSV9ERUJVRyBpcyBlbmFibGVkLgoKdjM6IE9ubHkg
b25lIGNvcHkgb2YgdGhlIG1hbmdsZS91bm1hbmdsZSBjb2RlIChDaHJpc3RpYW4pCgp2NDogI2lm
ZGVmLCBub3QgI2lmICgwZGF5KQoKdjU6IHNnX3RhYmxlIGNhbiBhbHNvIGJlIGFuIEVSUl9QVFIg
KENocmlzLCBDaHJpc3RpYW4pCgpSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJp
cy13aWxzb24uY28udWs+ICh2MikKU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVs
LnZldHRlckBpbnRlbC5jb20+CkNjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5j
by51az4KQ2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+CkNjOiAiQ2hy
aXN0aWFuIEvDtm5pZyIgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KQ2M6IERhdmlkIFN0ZXZl
bnMgPHN0ZXZlbnNkQGNocm9taXVtLm9yZz4KQ2M6IGxpbnV4LW1lZGlhQHZnZXIua2VybmVsLm9y
ZwpDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCi0tLQogZHJpdmVycy9kbWEtYnVm
L0tjb25maWcgICB8ICA4ICsrKysrKysKIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgfCA0NiAr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0KIGluY2x1ZGUvbGludXgvZG1h
LWJ1Zi5oICAgfCAgNiArKysrKwogMyBmaWxlcyBjaGFuZ2VkLCA1NiBpbnNlcnRpb25zKCspLCA0
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9LY29uZmlnIGIvZHJp
dmVycy9kbWEtYnVmL0tjb25maWcKaW5kZXggNGY4MjI0YTZhYzk1Li40ZTE2YzcxYzI0YjcgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9LY29uZmlnCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9L
Y29uZmlnCkBAIC01MCw2ICs1MCwxNCBAQCBjb25maWcgRE1BQlVGX01PVkVfTk9USUZZCiAJICBU
aGlzIGlzIG1hcmtlZCBleHBlcmltZW50YWwgYmVjYXVzZSB3ZSBkb24ndCB5ZXQgaGF2ZSBhIGNv
bnNpc3RlbnQKIAkgIGV4ZWN1dGlvbiBjb250ZXh0IGFuZCBtZW1vcnkgbWFuYWdlbWVudCBiZXR3
ZWVuIGRyaXZlcnMuCiAKK2NvbmZpZyBETUFCVUZfREVCVUcKKwlib29sICJETUEtQlVGIGRlYnVn
IGNoZWNrcyIKKwlkZWZhdWx0IHkgaWYgRE1BX0FQSV9ERUJVRworCWhlbHAKKwkgIFRoaXMgb3B0
aW9uIGVuYWJsZXMgYWRkaXRpb25hbCBjaGVja3MgZm9yIERNQS1CVUYgaW1wb3J0ZXJzIGFuZAor
CSAgZXhwb3J0ZXJzLiBTcGVjaWZpY2FsbHkgaXQgdmFsaWRhdGVzIHRoYXQgaW1wb3J0ZXJzIGRv
IG5vdCBwZWVrIGF0IHRoZQorCSAgdW5kZXJseWluZyBzdHJ1Y3QgcGFnZSB3aGVuIHRoZXkgaW1w
b3J0IGEgYnVmZmVyLgorCiBjb25maWcgRE1BQlVGX1NFTEZURVNUUwogCXRyaXN0YXRlICJTZWxm
dGVzdHMgZm9yIHRoZSBkbWEtYnVmIGludGVyZmFjZXMiCiAJZGVmYXVsdCBuCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYwpp
bmRleCAxYzliZDUxZGIxMTAuLmYyNjRiNzBjMzgzZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9kbWEt
YnVmL2RtYS1idWYuYworKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCkBAIC02NjYsNiAr
NjY2LDM0IEBAIHZvaWQgZG1hX2J1Zl9wdXQoc3RydWN0IGRtYV9idWYgKmRtYWJ1ZikKIH0KIEVY
UE9SVF9TWU1CT0xfR1BMKGRtYV9idWZfcHV0KTsKIAorc3RhdGljIHZvaWQgbWFuZ2xlX3NnX3Rh
YmxlKHN0cnVjdCBzZ190YWJsZSAqc2dfdGFibGUpCit7CisjaWZkZWYgQ09ORklHX0RNQUJVRl9E
RUJVRworCWludCBpOworCXN0cnVjdCBzY2F0dGVybGlzdCAqc2c7CisKKwkvKiBUbyBjYXRjaCBh
YnVzZSBvZiB0aGUgdW5kZXJseWluZyBzdHJ1Y3QgcGFnZSBieSBpbXBvcnRlcnMgbWl4CisJICog
dXAgdGhlIGJpdHMsIGJ1dCB0YWtlIGNhcmUgdG8gcHJlc2VydmUgdGhlIGxvdyBTR18gYml0cyB0
bworCSAqIG5vdCBjb3JydXB0IHRoZSBzZ3QuIFRoZSBtaXhpbmcgaXMgdW5kb25lIGluIF9fdW5t
YXBfZG1hX2J1ZgorCSAqIGJlZm9yZSBwYXNzaW5nIHRoZSBzZ3QgYmFjayB0byB0aGUgZXhwb3J0
ZXIuICovCisJZm9yX2VhY2hfc2d0YWJsZV9zZyhzZ190YWJsZSwgc2csIGkpCisJCXNnLT5wYWdl
X2xpbmsgXj0gfjB4ZmZVTDsKKyNlbmRpZgorCit9CitzdGF0aWMgc3RydWN0IHNnX3RhYmxlICog
X19tYXBfZG1hX2J1ZihzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2gsCisJCQkJICAg
ICAgIGVudW0gZG1hX2RhdGFfZGlyZWN0aW9uIGRpcmVjdGlvbikKK3sKKwlzdHJ1Y3Qgc2dfdGFi
bGUgKnNnX3RhYmxlOworCisJc2dfdGFibGUgPSBhdHRhY2gtPmRtYWJ1Zi0+b3BzLT5tYXBfZG1h
X2J1ZihhdHRhY2gsIGRpcmVjdGlvbik7CisKKwlpZiAoIUlTX0VSUl9PUl9OVUxMKHNnX3RhYmxl
KSkKKwkJbWFuZ2xlX3NnX3RhYmxlKHNnX3RhYmxlKTsKKworCXJldHVybiBzZ190YWJsZTsKK30K
KwogLyoqCiAgKiBkbWFfYnVmX2R5bmFtaWNfYXR0YWNoIC0gQWRkIHRoZSBkZXZpY2UgdG8gZG1h
X2J1ZidzIGF0dGFjaG1lbnRzIGxpc3QKICAqIEBkbWFidWY6CQlbaW5dCWJ1ZmZlciB0byBhdHRh
Y2ggZGV2aWNlIHRvLgpAQCAtNzM3LDcgKzc2NSw3IEBAIGRtYV9idWZfZHluYW1pY19hdHRhY2go
c3RydWN0IGRtYV9idWYgKmRtYWJ1Ziwgc3RydWN0IGRldmljZSAqZGV2LAogCQkJCWdvdG8gZXJy
X3VubG9jazsKIAkJfQogCi0JCXNndCA9IGRtYWJ1Zi0+b3BzLT5tYXBfZG1hX2J1ZihhdHRhY2gs
IERNQV9CSURJUkVDVElPTkFMKTsKKwkJc2d0ID0gX19tYXBfZG1hX2J1ZihhdHRhY2gsIERNQV9C
SURJUkVDVElPTkFMKTsKIAkJaWYgKCFzZ3QpCiAJCQlzZ3QgPSBFUlJfUFRSKC1FTk9NRU0pOwog
CQlpZiAoSVNfRVJSKHNndCkpIHsKQEAgLTc4NCw2ICs4MTIsMTYgQEAgc3RydWN0IGRtYV9idWZf
YXR0YWNobWVudCAqZG1hX2J1Zl9hdHRhY2goc3RydWN0IGRtYV9idWYgKmRtYWJ1ZiwKIH0KIEVY
UE9SVF9TWU1CT0xfR1BMKGRtYV9idWZfYXR0YWNoKTsKIAorc3RhdGljIHZvaWQgX191bm1hcF9k
bWFfYnVmKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCwKKwkJCSAgICBzdHJ1Y3Qg
c2dfdGFibGUgKnNnX3RhYmxlLAorCQkJICAgIGVudW0gZG1hX2RhdGFfZGlyZWN0aW9uIGRpcmVj
dGlvbikKK3sKKwkvKiB1c2VzIFhPUiwgaGVuY2UgdGhpcyB1bm1hbmdsZXMgKi8KKwltYW5nbGVf
c2dfdGFibGUoc2dfdGFibGUpOworCisJYXR0YWNoLT5kbWFidWYtPm9wcy0+dW5tYXBfZG1hX2J1
ZihhdHRhY2gsIHNnX3RhYmxlLCBkaXJlY3Rpb24pOworfQorCiAvKioKICAqIGRtYV9idWZfZGV0
YWNoIC0gUmVtb3ZlIHRoZSBnaXZlbiBhdHRhY2htZW50IGZyb20gZG1hYnVmJ3MgYXR0YWNobWVu
dHMgbGlzdAogICogQGRtYWJ1ZjoJW2luXQlidWZmZXIgdG8gZGV0YWNoIGZyb20uCkBAIC04MDIs
NyArODQwLDcgQEAgdm9pZCBkbWFfYnVmX2RldGFjaChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLCBz
dHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2gpCiAJCWlmIChkbWFfYnVmX2lzX2R5bmFt
aWMoYXR0YWNoLT5kbWFidWYpKQogCQkJZG1hX3Jlc3ZfbG9jayhhdHRhY2gtPmRtYWJ1Zi0+cmVz
diwgTlVMTCk7CiAKLQkJZG1hYnVmLT5vcHMtPnVubWFwX2RtYV9idWYoYXR0YWNoLCBhdHRhY2gt
PnNndCwgYXR0YWNoLT5kaXIpOworCQlfX3VubWFwX2RtYV9idWYoYXR0YWNoLCBhdHRhY2gtPnNn
dCwgYXR0YWNoLT5kaXIpOwogCiAJCWlmIChkbWFfYnVmX2lzX2R5bmFtaWMoYXR0YWNoLT5kbWFi
dWYpKSB7CiAJCQlkbWFfYnVmX3VucGluKGF0dGFjaCk7CkBAIC05MjQsNyArOTYyLDcgQEAgc3Ry
dWN0IHNnX3RhYmxlICpkbWFfYnVmX21hcF9hdHRhY2htZW50KHN0cnVjdCBkbWFfYnVmX2F0dGFj
aG1lbnQgKmF0dGFjaCwKIAkJfQogCX0KIAotCXNnX3RhYmxlID0gYXR0YWNoLT5kbWFidWYtPm9w
cy0+bWFwX2RtYV9idWYoYXR0YWNoLCBkaXJlY3Rpb24pOworCXNnX3RhYmxlID0gX19tYXBfZG1h
X2J1ZihhdHRhY2gsIGRpcmVjdGlvbik7CiAJaWYgKCFzZ190YWJsZSkKIAkJc2dfdGFibGUgPSBF
UlJfUFRSKC1FTk9NRU0pOwogCkBAIC05ODcsNyArMTAyNSw3IEBAIHZvaWQgZG1hX2J1Zl91bm1h
cF9hdHRhY2htZW50KHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCwKIAlpZiAoZG1h
X2J1Zl9pc19keW5hbWljKGF0dGFjaC0+ZG1hYnVmKSkKIAkJZG1hX3Jlc3ZfYXNzZXJ0X2hlbGQo
YXR0YWNoLT5kbWFidWYtPnJlc3YpOwogCi0JYXR0YWNoLT5kbWFidWYtPm9wcy0+dW5tYXBfZG1h
X2J1ZihhdHRhY2gsIHNnX3RhYmxlLCBkaXJlY3Rpb24pOworCV9fdW5tYXBfZG1hX2J1ZihhdHRh
Y2gsIHNnX3RhYmxlLCBkaXJlY3Rpb24pOwogCiAJaWYgKGRtYV9idWZfaXNfZHluYW1pYyhhdHRh
Y2gtPmRtYWJ1ZikgJiYKIAkgICAgIUlTX0VOQUJMRUQoQ09ORklHX0RNQUJVRl9NT1ZFX05PVElG
WSkpCmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaCBiL2luY2x1ZGUvbGludXgv
ZG1hLWJ1Zi5oCmluZGV4IDYyODY4MWJmNmM5OS4uZWZkYzU2YjlkOTVmIDEwMDY0NAotLS0gYS9p
bmNsdWRlL2xpbnV4L2RtYS1idWYuaAorKysgYi9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaApAQCAt
MTU0LDYgKzE1NCwxMiBAQCBzdHJ1Y3QgZG1hX2J1Zl9vcHMgewogCSAqIE9uIGZhaWx1cmUsIHJl
dHVybnMgYSBuZWdhdGl2ZSBlcnJvciB2YWx1ZSB3cmFwcGVkIGludG8gYSBwb2ludGVyLgogCSAq
IE1heSBhbHNvIHJldHVybiAtRUlOVFIgd2hlbiBhIHNpZ25hbCB3YXMgcmVjZWl2ZWQgd2hpbGUg
YmVpbmcKIAkgKiBibG9ja2VkLgorCSAqCisJICogTm90ZSB0aGF0IGV4cG9ydGVycyBzaG91bGQg
bm90IHRyeSB0byBjYWNoZSB0aGUgc2NhdHRlciBsaXN0LCBvcgorCSAqIHJldHVybiB0aGUgc2Ft
ZSBvbmUgZm9yIG11bHRpcGxlIGNhbGxzLiBDYWNoaW5nIGlzIGRvbmUgZWl0aGVyIGJ5IHRoZQor
CSAqIERNQS1CVUYgY29kZSAoZm9yIG5vbi1keW5hbWljIGltcG9ydGVycykgb3IgdGhlIGltcG9y
dGVyLiBPd25lcnNoaXAKKwkgKiBvZiB0aGUgc2NhdHRlciBsaXN0IGlzIHRyYW5zZmVycmVkIHRv
IHRoZSBjYWxsZXIsIGFuZCByZXR1cm5lZCBieQorCSAqIEB1bm1hcF9kbWFfYnVmLgogCSAqLwog
CXN0cnVjdCBzZ190YWJsZSAqICgqbWFwX2RtYV9idWYpKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1l
bnQgKiwKIAkJCQkJIGVudW0gZG1hX2RhdGFfZGlyZWN0aW9uKTsKLS0gCjIuMjkuMgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
