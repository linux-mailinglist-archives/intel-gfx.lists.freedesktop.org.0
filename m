Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF9EB969D8
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2019 21:55:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC4C88970B;
	Tue, 20 Aug 2019 19:54:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com
 [IPv6:2a00:1450:4864:20::542])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AB448966B
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 19:54:58 +0000 (UTC)
Received: by mail-ed1-x542.google.com with SMTP id t50so128926edd.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 12:54:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JS1RHTkJnaQCaYGVbIEVnObAwd1uiUZ/ycHUm8EAhlo=;
 b=DDysQvGl1gEJ9shAhZsWyQ7bmMeS2OqhVYWbs5KfYlnJ0F3AOFAjGZM4hErAcQg0S2
 srtSRg9Hp8XGS1P24GdfqHU2eaiZclY0+9xEl534D8cS7Vji+ALIU9g4fkrwiYLcF34r
 phWQIGaBk6bl8CNCsT7ZvLl4oXW5B0u735xMaRCJD6r2aR3dZHr36AYenydxcyK547Ln
 eTFJ5H3joITroBimAgAL65IA7o2R45fqtuQFX0//Ts/pr5g+kNRB3G7WnsOktQ2FOFfy
 sLh4TaF19onGUc1qPlzYHm/eNCm14aGUTzl8vDAQFtmk8ahxjGnGJUipIeor7+EJRXEr
 RYVA==
X-Gm-Message-State: APjAAAU1XLS0TTDQ0b8fRi7/hjrQTDwT00/QjEpHXt3ghKIXEv+IIVNt
 Vxxqd7tPaG2uWXAv5NceDAkrWk4J+xFp/Q==
X-Google-Smtp-Source: APXvYqxwt34OvtLcZyA8ICCphauaOLOPdr2SKjnwZTfDGeSMZiMxKLaEs/FO0QlT+rtmf/VjxAOdiA==
X-Received: by 2002:aa7:d5d3:: with SMTP id d19mr33979582eds.103.1566330896526; 
 Tue, 20 Aug 2019 12:54:56 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id k12sm2782436ejz.79.2019.08.20.12.54.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 12:54:55 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Tue, 20 Aug 2019 21:54:51 +0200
Message-Id: <20190820195451.15671-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190820170631.26570-1-daniel.vetter@ffwll.ch>
References: <20190820170631.26570-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JS1RHTkJnaQCaYGVbIEVnObAwd1uiUZ/ycHUm8EAhlo=;
 b=DRyLzsiwI0HUZ9aD6ifd5Wbgz7Oir3Y2EbI+JodT1DYrA/HcYCarioNeL3SXDAgDrh
 jtlwVLPDi/nx9nRvjLa6k0k1MwMM717DOfdUdSVyfrgbMK6Wzkpdgr/PZ3BsBn8holdD
 spLQeb630CpYZpDwwLFHqY1XCHGPOkqU52TXs=
Subject: [Intel-gfx] [PATCH] drm/i915: disable set/get_tiling ioctl on gen12+
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
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Kenneth Graunke <kenneth@whitecape.org>, Matthew Auld <matthew.auld@intel.com>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIGNwdSAoZGUpdGlsZXIgaHcgaXMgZ29uZSwgdGhpcyBzdG9wcGVkIGJlaW5nIHVzZWZ1bC4g
UGx1cyBpdCBuZXZlcgpzdXBwb3J0ZWQgYW55IG9mIHRoZSBmYW5jeSBuZXcgdGlsaW5nIGZvcm1h
dHMsIHdoaWNoIG1lYW5zIHVzZXJzcGFjZQphbHNvIHN0b3BwZWQgdXNpbmcgdGhlIG1hZ2ljIHNp
ZGUtY2hhbm5lbCB0aGlzIHByb3ZpZGVzLgoKVGhpcyB3b3VsZCB0b3RhbGx5IGJyZWFrIGEgbG90
IG9mIHRoZSBpZ3RzLCBidXQgdGhleSdyZSBhbHJlYWR5IGJyb2tlbgpmb3IgdGhlIHNhbWUgcmVh
c29ucyBhcyB1c2Vyc3BhY2Ugb24gZ2VuMTIgd291bGQgYmUuCgp2MjogTG9vayBhdCBnZ3R0LT5u
dW1fZmVuY2VzIGluc3RlYWQsIHRoYXQgYWxzbyBhdm9pZHMgdGhlIG5lZWQgZm9yIGEKY29tbWVu
dCAoQ2hyaXMpLiBUaGlzIGFsc28gbWVhbnMgdGhhdCBnZW4xMiBzdXBwb3J0IHJlYWxseSBuZWVk
cyB0bwptYWtlIHN1cmUgbnVtX2ZlbmNlcyBpcyBzZXQgdG8gMC4gVGhlcmUgaXMgYSBwYXRjaCBm
b3IgdGhhdCwgYnV0IGl0CmNoZWNrcyBmb3IgSEFTX01BUFBBQkxFX0FQRVJUVVJFLCB3aGljaCBJ
J20gbm90IHN1cmUgaXMgdGhlIHJpZ2h0CnRoaW5nIHJlYWxseS4gQWRkaW5nIHJlbGV2YW50IHBl
b3BsZS4KCkNjOiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9A
aW50ZWwuY29tPgpDYzogU3R1YXJ0IFN1bW1lcnMgPHN0dWFydC5zdW1tZXJzQGludGVsLmNvbT4K
Q2M6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KQ2M6IEtlbm5ldGggR3Jh
dW5rZSA8a2VubmV0aEB3aGl0ZWNhcGUub3JnPgpDYzogSmFzb24gRWtzdHJhbmQgPGphc29uQGps
ZWtzdHJhbmQubmV0PgpDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+
CkNjOiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KU2lnbmVkLW9m
Zi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+Ci0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3RpbGluZy5jIHwgNyArKysrKysrCiAxIGZpbGUg
Y2hhbmdlZCwgNyBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX3RpbGluZy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX3RpbGluZy5jCmluZGV4IGNhMGMyZjQ1MTc0Mi4uZTVkMWFlOGQ0ZGJhIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdGlsaW5nLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3RpbGluZy5jCkBAIC0zMTMsMTAgKzMxMywxNCBA
QCBpbnQKIGk5MTVfZ2VtX3NldF90aWxpbmdfaW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwg
dm9pZCAqZGF0YSwKIAkJCSAgc3RydWN0IGRybV9maWxlICpmaWxlKQogeworCXN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZGV2KTsKIAlzdHJ1Y3QgZHJtX2k5MTVf
Z2VtX3NldF90aWxpbmcgKmFyZ3MgPSBkYXRhOwogCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0
ICpvYmo7CiAJaW50IGVycjsKIAorCWlmICghZGV2X3ByaXYtPmdndHQubnVtX2ZlbmNlcykKKwkJ
cmV0dXJuIC1FT1BOT1RTVVBQOworCiAJb2JqID0gaTkxNV9nZW1fb2JqZWN0X2xvb2t1cChmaWxl
LCBhcmdzLT5oYW5kbGUpOwogCWlmICghb2JqKQogCQlyZXR1cm4gLUVOT0VOVDsKQEAgLTQwMiw2
ICs0MDYsOSBAQCBpOTE1X2dlbV9nZXRfdGlsaW5nX2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpk
ZXYsIHZvaWQgKmRhdGEsCiAJc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iajsKIAlpbnQg
ZXJyID0gLUVOT0VOVDsKIAorCWlmICghZGV2X3ByaXYtPmdndHQubnVtX2ZlbmNlcykKKwkJcmV0
dXJuIC1FT1BOT1RTVVBQOworCiAJcmN1X3JlYWRfbG9jaygpOwogCW9iaiA9IGk5MTVfZ2VtX29i
amVjdF9sb29rdXBfcmN1KGZpbGUsIGFyZ3MtPmhhbmRsZSk7CiAJaWYgKG9iaikgewotLSAKMi4y
My4wLnJjMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
