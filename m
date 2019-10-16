Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FE49D9733
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2019 18:24:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C8F76E9AD;
	Wed, 16 Oct 2019 16:24:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com
 [IPv6:2607:f8b0:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AABB46E90C
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2019 09:59:36 +0000 (UTC)
Received: by mail-pf1-x444.google.com with SMTP id x127so14389862pfb.7
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2019 02:59:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2UHiq+bpKpYTZfFCDKz/wHMdPBwb8otM78+THN0Zfxc=;
 b=AqkzfKh4qIZkqtx3VLkdKz7CZ9uddG1vmqJvvo15noaDSVVA/04xOaN3+En4cqC4Lo
 Oy/1wlC70Xvere9VU/8scv0hqQKfw2Ua99C9r/SQUq2nF82jqREcs4+5A4Up5z+xfi+R
 CpYMIOEaDip9qjawVTG9jrBbdWjXleES9rzFCy1ZiUdvoqYUFdXWLRbHJS6dYM/HfvyX
 igBdWr+K3RsHqz75ap+QWiCU7HVH9OMHxMCnMbdo/cPaf5NtzstoSQ2v1e3vjla4YYVx
 c1qEz3t+EjWyVHhdcrU9wtfeA+IWZTI4UeX4bux6ZcIVu8gtm46kG3lb8vzaaSU9/f5L
 pcRQ==
X-Gm-Message-State: APjAAAXlNonnVwjOS+eIa6bUNf5zaaYgsoACzo5j7/wQk6U78yMGI/DT
 nOuIp9u3J2e3l6IFwyoDc2MSmw==
X-Google-Smtp-Source: APXvYqyuTfvDzxNwI9kalDMU0iywh8UZbVEiS7QPebJLB/GNw2tf4Ez9bgFTGBHDoNZGPFzSDcggRQ==
X-Received: by 2002:aa7:87d9:: with SMTP id i25mr4990873pfo.244.1571219975917; 
 Wed, 16 Oct 2019 02:59:35 -0700 (PDT)
Received: from localhost.localdomain (123-204-46-122.static.seed.net.tw.
 [123.204.46.122])
 by smtp.gmail.com with ESMTPSA id p17sm23021423pfn.50.2019.10.16.02.59.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 02:59:35 -0700 (PDT)
From: Jian-Hong Pan <jian-hong@endlessm.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Ramalingam C <ramalingam.c@intel.com>, Uma Shankar <uma.shankar@intel.com>
Date: Wed, 16 Oct 2019 17:57:58 +0800
Message-Id: <20191016095757.4919-1-jian-hong@endlessm.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 16 Oct 2019 16:24:33 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=endlessm-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2UHiq+bpKpYTZfFCDKz/wHMdPBwb8otM78+THN0Zfxc=;
 b=TlmWQr2oZsXsdXMZxuaRHpzO0t6KpXZ1HsiWTKX2m54q+A2Rp1yOdP46uEcRqDOXZD
 Xx8ePK9bNrndXkfM9xbnC4y12z4SanvCtLaaC2LUSSbWP8Zl23hxd9xv9v6/ci+aPu7Q
 N9rrDEtQTuizJjcWieCFpLFZhhFfbwiCIfzTORLJlrHH0CO52xbwMnoQFzDpIh6tt1CT
 2Cc4GWp7DpYFv6A3MoRmmsXBxm0I5lEv09a4FfO66c0SCjlnzYkI16LjJObsM1WQyQpY
 my8enjoqkUcKPq7wjcu1dOuI1tLps2cIVHwUn0V4r3i37N74svEicLAiYZv0xCHWTilB
 gD0w==
Subject: [Intel-gfx] [PATCH] drm/i915/hdmi: enable resolution 3840x2160 for
 type 1 HDMI
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
Cc: Jian-Hong Pan <jian-hong@endlessm.com>, intel-gfx@lists.freedesktop.org,
 linux@endlessm.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VHlwZSAxIEhETUkgbWF5IGJlIHZlcnNpb24gMS4zIG9yIHVwcGVyLCB3aGljaCBzdXBwb3J0cyBo
aWdoZXIgbWF4IFRNRFMKY2xvY2sgZm9yIGhpZ2hlciByZXNvbHV0aW9ucywgbGlrZSAzODQweDIx
NjAuIFRoaXMgcGF0Y2ggc2V0cyBtYXggVE1EUwpjbG9jayBhY2NvcmRpbmcgdG8gdGhlIGNoaXAs
IGlmIHRoZSBhZGFwdGVyIGlzIHR5cGUgMSBIRE1JLgoKQnVnbGluazogaHR0cHM6Ly9idWdzLmZy
ZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEyMDE4CkZpeGVzOiBiMWJhMTI0ZDhlOTUg
KCJkcm0vaTkxNTogUmVzcGVjdCBEUCsrIGFkYXB0b3IgVE1EUyBjbG9jayBsaW1pdCIpClNpZ25l
ZC1vZmYtYnk6IEppYW4tSG9uZyBQYW4gPGppYW4taG9uZ0BlbmRsZXNzbS5jb20+Ci0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMgfCAxMyArKysrKysrKysrKy0t
CiAxIGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jCmluZGV4IGUwMmYwZmFlY2YwMi4u
NzRlNDQyNmZmY2FkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2hkbWkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWku
YwpAQCAtMjQ1NCw2ICsyNDU0LDcgQEAgaW50ZWxfaGRtaV9kcF9kdWFsX21vZGVfZGV0ZWN0KHN0
cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IsIGJvb2wgaGFzX2VkaWQpCiB7CiAJc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjb25uZWN0b3ItPmRldik7CiAJ
c3RydWN0IGludGVsX2hkbWkgKmhkbWkgPSBpbnRlbF9hdHRhY2hlZF9oZG1pKGNvbm5lY3Rvcik7
CisJc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIgPSAmaGRtaV90b19kaWdfcG9ydChoZG1p
KS0+YmFzZTsKIAllbnVtIHBvcnQgcG9ydCA9IGhkbWlfdG9fZGlnX3BvcnQoaGRtaSktPmJhc2Uu
cG9ydDsKIAlzdHJ1Y3QgaTJjX2FkYXB0ZXIgKmFkYXB0ZXIgPQogCQlpbnRlbF9nbWJ1c19nZXRf
YWRhcHRlcihkZXZfcHJpdiwgaGRtaS0+ZGRjX2J1cyk7CkBAIC0yNDg4LDggKzI0ODksMTYgQEAg
aW50ZWxfaGRtaV9kcF9kdWFsX21vZGVfZGV0ZWN0KHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25u
ZWN0b3IsIGJvb2wgaGFzX2VkaWQpCiAJCXJldHVybjsKIAogCWhkbWktPmRwX2R1YWxfbW9kZS50
eXBlID0gdHlwZTsKLQloZG1pLT5kcF9kdWFsX21vZGUubWF4X3RtZHNfY2xvY2sgPQotCQlkcm1f
ZHBfZHVhbF9tb2RlX21heF90bWRzX2Nsb2NrKHR5cGUsIGFkYXB0ZXIpOworCS8qIFR5cGUgMSBI
RE1JIG1heSBiZSB2ZXJzaW9uIDEuMyBvciB1cHBlciwgd2hpY2ggc3VwcG9ydHMgaGlnaGVyIG1h
eAorCSAqIFRNRFMgY2xvY2sgZm9yIGhpZ2hlciByZXNvbHV0aW9ucywgbGlrZSAzODQweDIxNjAu
IFNvLCBzZXQgaXQKKwkgKiBhY2NvcmRpbmcgdG8gdGhlIGNoaXAsIGlmIHRoZSBhZGFwdGVyIGlz
IHR5cGUgMSBIRE1JLgorCSAqLworCWlmICh0eXBlID09IERSTV9EUF9EVUFMX01PREVfVFlQRTFf
SERNSSkKKwkJaGRtaS0+ZHBfZHVhbF9tb2RlLm1heF90bWRzX2Nsb2NrID0KKwkJCWludGVsX2hk
bWlfc291cmNlX21heF90bWRzX2Nsb2NrKGVuY29kZXIpOworCWVsc2UKKwkJaGRtaS0+ZHBfZHVh
bF9tb2RlLm1heF90bWRzX2Nsb2NrID0KKwkJCWRybV9kcF9kdWFsX21vZGVfbWF4X3RtZHNfY2xv
Y2sodHlwZSwgYWRhcHRlcik7CiAKIAlEUk1fREVCVUdfS01TKCJEUCBkdWFsIG1vZGUgYWRhcHRv
ciAoJXMpIGRldGVjdGVkIChtYXggVE1EUyBjbG9jazogJWQga0h6KVxuIiwKIAkJICAgICAgZHJt
X2RwX2dldF9kdWFsX21vZGVfdHlwZV9uYW1lKHR5cGUpLAotLSAKMi4yMy4wCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
