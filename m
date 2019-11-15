Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EE07FD8C0
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 10:22:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 698D36E29D;
	Fri, 15 Nov 2019 09:21:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com
 [IPv6:2a00:1450:4864:20::32e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D4816E264
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 09:21:37 +0000 (UTC)
Received: by mail-wm1-x32e.google.com with SMTP id z26so8886322wmi.4
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 01:21:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3ZOZSGjuzwminPcDUMzMQQAJ/v0yGAVO3+XoBKIorZg=;
 b=PmoACWYoUTMj6Qwz1A/KO0oMlKwBZVJCnGB/WBZ7X5fEoBaL9kG80ZzSZYMs6VAhFX
 +gG1sv+UI3aAYqkgj6udEALjvOvgt9ywiR/CzlAqlfykYfZAtT1AsRXpvpfAcVObjVq7
 pDLR0hyBBj1BK3n1ibBp4wv4Ah+yz1wGexcVwlye87Q2xO9aShMYqLf9Eb20So1rFEDB
 LxPjhykCvx41olkmhhUoEH9KM4pPq41GKoPjwG2K1aAg21dT2l59jWeVTDnZElYgnwxQ
 X4Sq7Kv64HF2fed7hPo48qKZi3C7GyWaGV6TxXASGfnMgtjTOCxPluz0EdK3qNwCEyfh
 1vfw==
X-Gm-Message-State: APjAAAUNo/vCi/s5w/zqndznYzIaH2TVA7U4A4+l7PycjW7pmGwu5gjU
 I6VG2EfDPIVSgMG4MFQwsHWOXJdQEsk=
X-Google-Smtp-Source: APXvYqywjQTl3gGc6fgeCR78rBfxBmOimdQO3NVza++3R0TvF2NccoDIcDDTHBnUjLY+EcbQICdOMA==
X-Received: by 2002:a1c:6386:: with SMTP id x128mr13089281wmb.41.1573809695721; 
 Fri, 15 Nov 2019 01:21:35 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id 11sm8987506wmi.8.2019.11.15.01.21.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Nov 2019 01:21:35 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 15 Nov 2019 10:21:20 +0100
Message-Id: <20191115092120.4445-9-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191115092120.4445-1-daniel.vetter@ffwll.ch>
References: <20191115092120.4445-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3ZOZSGjuzwminPcDUMzMQQAJ/v0yGAVO3+XoBKIorZg=;
 b=U8icL1uXfof5LpbN7+eAqz8xLLnN3MBi98hJxWiNfcLPHOvS/xF1OGMzvoJZQRf3fI
 couA2d0zgTcDxj1DfbYNtDSi7zU9RH2KON0GptfDOcrAlvLlk6gyeK65WpYnNl9xzG17
 1iD6SNGRzTPIbjEDIP/2TXYqnIhwKJWkq2fe8=
Subject: [Intel-gfx] [PATCH 8/8] drm/todo: Add entry for fb funcs related
 cleanups
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
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2UncmUgZG9pbmcgYSBncmVhdCBqb2IgZm9yIHJlYWxseSBzaW1wbGUgZHJpdmVycyByaWdodCBu
b3csIGJ1dCBzdGlsbAphIGxvdCBvZiBib2lsZXJwbGF0ZSBmb3IgdGhlIGJpZ2dlciBvbmVzLgoK
U2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+Ci0t
LQogRG9jdW1lbnRhdGlvbi9ncHUvdG9kby5yc3QgfCAyNiArKysrKysrKysrKysrKysrKysrKysr
KysrKwogMSBmaWxlIGNoYW5nZWQsIDI2IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9Eb2N1
bWVudGF0aW9uL2dwdS90b2RvLnJzdCBiL0RvY3VtZW50YXRpb24vZ3B1L3RvZG8ucnN0CmluZGV4
IDNlYzUwOTM4MWZjNS4uMmQ4NWYzNzI4NGExIDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0aW9uL2dw
dS90b2RvLnJzdAorKysgYi9Eb2N1bWVudGF0aW9uL2dwdS90b2RvLnJzdApAQCAtMTgyLDYgKzE4
MiwzMiBAQCBDb250YWN0OiBNYWludGFpbmVyIG9mIHRoZSBkcml2ZXIgeW91IHBsYW4gdG8gY29u
dmVydAogCiBMZXZlbDogSW50ZXJtZWRpYXRlCiAKK2RybV9mcmFtZWJ1ZmZlcl9mdW5jcyBhbmQg
ZHJtX21vZGVfY29uZmlnX2Z1bmNzLmZiX2NyZWF0ZSBjbGVhbnVwCistLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQorCitBIGxv
dCBtb3JlIGRyaXZlcnMgY291bGQgYmUgc3dpdGNoZWQgb3ZlciB0byB0aGUgZHJtX2dlbV9mcmFt
ZWJ1ZmZlciBoZWxwZXJzLgorVmFyaW91cyBob2xkLXVwczoKKworLSBOZWVkIHRvIHN3aXRjaCBv
dmVyIHRvIHRoZSBnZW5lcmljIGRpcnR5IHRyYWNraW5nIGNvZGUgdXNpbmcKKyAgZHJtX2F0b21p
Y19oZWxwZXJfZGlydHlmYiBmaXJzdCAoZS5nLiBxeGwpLgorCistIE5lZWQgdG8gc3dpdGNoIHRv
IGRybV9mYmRldl9nZW5lcmljX3NldHVwKCksIG90aGVyd2lzZSBhIGxvdCBvZiB0aGUgY3VzdG9t
IGZiCisgIHNldHVwIGNvZGUgY2FuJ3QgYmUgZGVsZXRlZC4KKworLSBNYW55IGRyaXZlcnMgd3Jh
cCBkcm1fZ2VtX2ZiX2NyZWF0ZSgpIG9ubHkgdG8gY2hlY2sgZm9yIHZhbGlkIGZvcm1hdHMuIEZv
cgorICBhdG9taWMgZHJpdmVycyB3ZSBjb3VsZCBjaGVjayBmb3IgdmFsaWQgZm9ybWF0cyBieSBj
YWxsaW5nCisgIGRybV9wbGFuZV9jaGVja19waXhlbF9mb3JtYXQoKSBhZ2FpbnN0IGFsbCBwbGFu
ZXMsIGFuZCBwYXNzIGlmIGFueSBwbGFuZQorICBzdXBwb3J0cyB0aGUgZm9ybWF0LiBGb3Igbm9u
LWF0b21pYyB0aGF0J3Mgbm90IHBvc3NpYmxlIHNpbmNlIGxpa2UgdGhlIGZvcm1hdAorICBsaXN0
IGZvciB0aGUgcHJpbWFyeSBwbGFuZSBpcyBmYWtlIGFuZCB3ZSdkIHRoZXJlZm9yIHJlamVjdCB2
YWxpZCBmb3JtYXRzLgorCistIE1hbnkgZHJpdmVycyBzdWJjbGFzcyBkcm1fZnJhbWVidWZmZXIs
IHdlJ2QgbmVlZCBhIGVtYmVkZGluZyBjb21wYXRpYmxlCisgIHZlcnNpb24gb2YgdGhlIHZhcmlv
cyBkcm1fZ2VtX2ZiX2NyZWF0ZSBmdW5jdGlvbnMuIE1heWJlIGNhbGxlZAorICBkcm1fZ2VtX2Zi
X2NyZWF0ZS9fd2l0aF9kaXJ0eS9fd2l0aF9mdW5jcyBhcyBuZWVkZWQuCisKK0NvbnRhY3Q6IERh
bmllbCBWZXR0ZXIKKworTGV2ZWw6IEludGVybWVkaWF0ZQorCiBDbGVhbiB1cCBtbWFwIGZvcndh
cmRpbmcKIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogCi0tIAoyLjI0LjAKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
