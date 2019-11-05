Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2CE5F0624
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2019 20:38:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 065D16E127;
	Tue,  5 Nov 2019 19:38:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4034D6E127
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Nov 2019 19:38:36 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id 11so684208wmk.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 05 Nov 2019 11:38:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Mp7yz0aWutSh9cWPztceYhSuiOCTYSFRVo2/8174iVg=;
 b=HceQ9t9Z3Aek9lq19K8RrV1znvmvGpm17elIqZ4uZyWNGtZsik8eJMPinO330pCaoe
 BtZ00ftFKW5BJbEbliwm6aqTZMWM45ZFC+yMqnZr3PepNNvKs39WuEMz6MD5QXsMJhQg
 MQEUkEd8seqxkQLZPgE+1IodcQh9Z7Fi3iV4/bqqFDmTMaw77Ld3NMBocjudIgx/Qn4w
 xhv3qGxLsTNQIKbzaUAqZ3uKMF+V48amBXXDMnVK8YtcNLTP0OuhSxKn5jnyj8foTCks
 kPMf7B3I0MmK5ulvUH/zChmly775iWWVAsLqYg33jct0q2vDJT3pKIjipgTRS9dnfWXe
 7p7g==
X-Gm-Message-State: APjAAAXFt8M9ERlwgdVnDcNrIc9xLY5QaTRce8JQLeVugOh1BeQBIs6T
 YssTtgPwIqbHPvAgSCI7txjBJA==
X-Google-Smtp-Source: APXvYqwTPdMylHa22j3VJcEYZKs5bQOZAmmedm6H/jbCSgbnwxQtscbogo784rpNaNP3FxIZye+f3w==
X-Received: by 2002:a1c:e157:: with SMTP id y84mr514292wmg.59.1572982714599;
 Tue, 05 Nov 2019 11:38:34 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id g184sm578840wma.8.2019.11.05.11.38.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 11:38:33 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue,  5 Nov 2019 20:38:29 +0100
Message-Id: <20191105193829.11599-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.0.rc2
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Mp7yz0aWutSh9cWPztceYhSuiOCTYSFRVo2/8174iVg=;
 b=Kp7vo/ai5wDDLZ6XVfAvNA3v1d32Blg8RHFu04NQX+ByeHYAPVbYN/09BB3/e910dc
 6fx/hwrjyRNW/xVFqvngX0b1NNsr2fzEUUz8a8/bCYG6uo2ahFNSyGNdYhc7vUvzpvdq
 TriKEc+30SpUuxxylZW2iFoQTNKV//y4lItAw=
Subject: [Intel-gfx] [PATCH] drm/i915: Don't select BROKEN
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SXQncyBicm9rZW4uCgpSZXBvcnRlZC1ieTogU3RlcGhlbiBSb3Rod2VsbCA8c2ZyQGNhbmIuYXV1
Zy5vcmcuYXU+ClJlZmVyZW5jZXM6IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL2FyY2hp
dmVzL2RyaS1kZXZlbC8yMDE5LU5vdmVtYmVyLzI0MjYyNS5odG1sClNpZ25lZC1vZmYtYnk6IERh
bmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgotLS0KTm90ZTogUHJvYmFibHkg
YmVzdCB0byBhcHBseSB0aGlzIGRpcmVjdGx5IG9udG8gZHJtLW5leHQgdG8gYXZvaWQKaGF2aW5n
IGRybS1uZXh0IGRyb3BwZWQgZnJvbSBsaW51eC1uZXh0IHVudGlsIHRoZSBuZXh0IHB1bGwgcmVx
dWVzdC4KLURhbmllbAotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L0tjb25maWcuZGVidWcgfCAx
IC0KIDEgZmlsZSBjaGFuZ2VkLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvS2NvbmZpZy5kZWJ1ZyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L0tjb25maWcu
ZGVidWcKaW5kZXggZWYxMjNlYjI5MTY4Li5kMmJhOGY3ZTVlNTAgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L0tjb25maWcuZGVidWcKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
S2NvbmZpZy5kZWJ1ZwpAQCAtNDQsNyArNDQsNiBAQCBjb25maWcgRFJNX0k5MTVfREVCVUcKIAlz
ZWxlY3QgRFJNX0k5MTVfU0VMRlRFU1QKIAlzZWxlY3QgRFJNX0k5MTVfREVCVUdfUlVOVElNRV9Q
TQogCXNlbGVjdCBEUk1fSTkxNV9ERUJVR19NTUlPCi0Jc2VsZWN0IEJST0tFTiAjIGZvciBwcm90
b3R5cGUgdUFQSQogCWRlZmF1bHQgbgogCWhlbHAKIAkgIENob29zZSB0aGlzIG9wdGlvbiB0byB0
dXJuIG9uIGV4dHJhIGRyaXZlciBkZWJ1Z2dpbmcgdGhhdCBtYXkgYWZmZWN0Ci0tIAoyLjI0LjAu
cmMyCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
