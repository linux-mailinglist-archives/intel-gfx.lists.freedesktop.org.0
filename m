Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 03E4F1CF035
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2020 11:01:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 146086E8D9;
	Tue, 12 May 2020 09:00:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28F2C6E8D9
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 May 2020 09:00:17 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id v12so14306402wrp.12
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 May 2020 02:00:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tFPcYYVPEczCJNqu565ZZzRL31Ro7iqoJLud+V9/W6s=;
 b=gVfBqrMKYAzurJ/RstzwJY91qBLOOMNjuPIDPoBrD1wsTDF47Xk6LAJDfP1paQCHue
 hb7A0jpibe9rCFhP8vACHxcmJAL+/3WLLIF1ayojzTlGhgxI0AD/lpcfFzQsuaWtCNTF
 xdX3NuhPackoyWfVuA8lxXykjw+ve1/2YT27g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tFPcYYVPEczCJNqu565ZZzRL31Ro7iqoJLud+V9/W6s=;
 b=CeE0KrM9/iq+37kyYHudBTSO0ZjKS3LzP7kHallSZPw+byQ/orpvDtjSyoZ3uVHzmA
 MD9c8uKKLrI11Dc+rvyMMh0epN37x390LL4uoqHDec1zN/3blQ8HayredFdYwQ6RcLwO
 Kwqi3qcPNPZ4K9h8cfu6fgdB8oPe+YKOHfb0oTV3aaABhB1quSe6hu1gUllw9OHWJtWI
 No8dFAun8nNb4mkvb3lUK+HBYvhRHP+SwCweTdlrmukQflVKlWAXZJUyIwA+tqIK8wX7
 lIfUKq3m2HZGzIEvxhKZo/sgok/OIB8eEI1ekoWiLWL+aUM4knxTUNH2012rrT+jlAlb
 FzMg==
X-Gm-Message-State: AGi0PubnENHbupi4tK3X5Lvfqaoqvj0DxYgizKJTBVdcYlhUK/w+T05r
 RPXFndLR89xUDn4OY9QMO/9G+A==
X-Google-Smtp-Source: APiQypIbabYyHNtuDrEHDjujDbV60fZeSSVWGyjvdD4rzzfjplG/fVCJt6XewcV7pRKQdnM6iDktMg==
X-Received: by 2002:adf:d4c6:: with SMTP id w6mr24833712wrk.92.1589274015818; 
 Tue, 12 May 2020 02:00:15 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id y10sm18845457wrd.95.2020.05.12.02.00.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 02:00:15 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue, 12 May 2020 10:59:44 +0200
Message-Id: <20200512085944.222637-18-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200512085944.222637-1-daniel.vetter@ffwll.ch>
References: <20200512085944.222637-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 17/17] drm/i915: Annotate dma_fence_work
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
Cc: linux-rdma@vger.kernel.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 intel-gfx@lists.freedesktop.org, LKML <linux-kernel@vger.kernel.org>,
 amd-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>,
 linaro-mm-sig@lists.linaro.org, Daniel Vetter <daniel.vetter@intel.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

aTkxNSBkb2VzIHRvbnMgb2YgYWxsb2NhdGlvbnMgZnJvbSB0aGlzIHdvcmtlciwgd2hpY2ggbG9j
a2RlcCBjYXRjaGVzLgoKQWxzbyBnZW5lcmljIGluZnJhc3RydWN0dXJlIGxpa2UgdGhpcyB3aXRo
IGJpZyBwb3RlbnRpYWwgZm9yIGhvdwpkbWFfZmVuY2Ugb3Igb3RoZXIgY3Jvc3MgZHJpdmVyIGNv
bnRyYWN0cyB3b3JrLCByZWFsbHkgc2hvdWxkIGJlCnJldmlld2VkIG9uIGRyaS1kZXZlbC4gSW1w
bGVtZW50aW5nIGN1c3RvbSB3aGVlbHMgZm9yIGV2ZXJ5dGhpbmcKd2l0aGluIHRoZSBkcml2ZXIg
aXMgYSBjbGFzc2ljIGNhc2Ugb2YgInBsYXRmb3JtIHByb2JsZW0iIFsxXS4gV2hpY2ggaW4KdXBz
dHJlYW0gd2UgcmVhbGx5IHNob3VsZG4ndCBoYXZlLgoKU2luY2UgdGhlcmUncyBubyBxdWljayB3
YXkgdG8gc29sdmUgdGhlc2Ugc3BsYXRzIChkbWFfZmVuY2Vfd29yayBpcwp1c2VkIGEgYnVuY2gg
aW4gYmFzaWMgYnVmZmVyIG1hbmFnZW1lbnQgYW5kIGNvbW1hbmQgc3VibWlzc2lvbikgbGlrZQpm
b3IgYW1kZ3B1LCBJJ20gZ2l2aW5nIHVwIGF0IHRoaXMgcG9pbnQgaGVyZS4gQW5ub3RhdGluZyBp
OTE1CnNjaGVkdWxlciBhbmQgZ3B1IHJlc2V0IGNvdWxkIHdvdWxkIGJlIGludGVyZXN0aW5nLCBi
dXQgc2luY2UgbG9ja2RlcAppcyBvbmUtc2hvdCB3ZSBjYW4ndCBzZWUgd2hhdCBzdXJwcmlzZXMg
d291bGQgbHVyayB0aGVyZS4KCjE6IGh0dHBzOi8vbHduLm5ldC9BcnRpY2xlcy80NDM1MzEvCkNj
OiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpDYzogbGludXgtcmRtYUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IGFtZC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCkNjOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCkNjOiBD
aHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IE1hYXJ0ZW4gTGFua2hv
cnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+CkNjOiBDaHJpc3RpYW4gS8O2
bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+ClNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0
ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfc3dfZmVuY2Vfd29yay5jIHwgMyArKysKIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMo
KykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3N3X2ZlbmNlX3dvcmsu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc3dfZmVuY2Vfd29yay5jCmluZGV4IGEzYTgx
YmI4ZjJjMy4uNWI3NGFjYWRhZWY1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3N3X2ZlbmNlX3dvcmsuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3N3X2Zl
bmNlX3dvcmsuYwpAQCAtMTcsMTIgKzE3LDE1IEBAIHN0YXRpYyB2b2lkIGZlbmNlX3dvcmsoc3Ry
dWN0IHdvcmtfc3RydWN0ICp3b3JrKQogewogCXN0cnVjdCBkbWFfZmVuY2Vfd29yayAqZiA9IGNv
bnRhaW5lcl9vZih3b3JrLCB0eXBlb2YoKmYpLCB3b3JrKTsKIAlpbnQgZXJyOworCWJvb2wgZmVu
Y2VfY29va2llOwogCisJZmVuY2VfY29va2llID0gZG1hX2ZlbmNlX2JlZ2luX3NpZ25hbGxpbmco
KTsKIAllcnIgPSBmLT5vcHMtPndvcmsoZik7CiAJaWYgKGVycikKIAkJZG1hX2ZlbmNlX3NldF9l
cnJvcigmZi0+ZG1hLCBlcnIpOwogCiAJZmVuY2VfY29tcGxldGUoZik7CisJZG1hX2ZlbmNlX2Vu
ZF9zaWduYWxsaW5nKGZlbmNlX2Nvb2tpZSk7CiAJZG1hX2ZlbmNlX3B1dCgmZi0+ZG1hKTsKIH0K
IAotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngK
