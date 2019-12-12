Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 154B011D6A3
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 20:02:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FD3F6E10B;
	Thu, 12 Dec 2019 19:02:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb42.google.com (mail-yb1-xb42.google.com
 [IPv6:2607:f8b0:4864:20::b42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0E426E10B
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 19:02:38 +0000 (UTC)
Received: by mail-yb1-xb42.google.com with SMTP id 63so887367yba.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 11:02:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dzTlbSPDk2anKhVKTtI0sy9Z4bmPlFZnqKLkyDoxCLI=;
 b=Ue/LjwPF/HGXT/QEAAelM/jdEwb5xnEhipI18HUy2f+/Ov/alm0wWJYhyHlRPykHXO
 H1IyCMw9Bu7uli8HvT+kNFuxeAvIo4+5/wTYmzLwFS5bWt8qydhLIG3Qqp6iIgJ1tNXb
 OXitrTqx5/oCeKTMROsHhkDUDm1ngx+H1AelO/2076xD2a41iNsbGphYNNCZFedG/OGb
 LFJFov6oM6ZFfHjvQyGy3Hx8Ell6GADI6E+gV9bj+2w7i/Rtjipv/ynmvSgRqVxGBu94
 shuTBC63kL50lKmvm6G0M739W4zTGBNd1QG37d+7E44iUb2P/uPqV8tqlHVBQczQQuI9
 Ryjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dzTlbSPDk2anKhVKTtI0sy9Z4bmPlFZnqKLkyDoxCLI=;
 b=lxp1xpM3bb1HWBMk2C+JnjAYUy5j8lKZUCcAoV3rwxRQ/GJjVX3t4Sa6+rvV6ryK28
 xpbNdfL5m2jUWBbBKcB326tR6DohIP98ZMh81MDQdjEZNC5U4iryhm8OJ4bXdMaCcZ0B
 Kcakw/a8CJLlnpO0oJm04ZT6YeIZpUjde8Qutbi6UqsEkPExchdkDE+S+cgX37iL5/qk
 PElEekKszR/ZyczoI61J9c87Hh1egVtSvEDe7RDFjBqvOsBtHhaiJdxOpRh4D27tfuN3
 GYzharCTEcA3CZC+6Jr4DYJBEtV1bL53x51cyH3m1eAQglXVJNDy78q2ihkA2qRIISBN
 gFvQ==
X-Gm-Message-State: APjAAAVxECKoh68JO8PLBEeHezU0K1er6DbfvKmPwetWcRGj1k2Gqr5n
 62i3lex+fa9Bc5AfDKR6UwSf1w==
X-Google-Smtp-Source: APXvYqwoJwF8xw8EvbWXFz0Bmc2FmjGXQUm8aA+PsNQUVW8bHd/RveWdG6usYEx36RrzzoD4UvVGpw==
X-Received: by 2002:a25:b95:: with SMTP id 143mr4074489ybl.182.1576177358050; 
 Thu, 12 Dec 2019 11:02:38 -0800 (PST)
Received: from localhost ([2620:0:1013:11:1e1:4760:6ce4:fc64])
 by smtp.gmail.com with ESMTPSA id a202sm2987296ywe.8.2019.12.12.11.02.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Dec 2019 11:02:37 -0800 (PST)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Thu, 12 Dec 2019 14:02:21 -0500
Message-Id: <20191212190230.188505-4-sean@poorly.run>
X-Mailer: git-send-email 2.24.1.735.g03f4e72817-goog
In-Reply-To: <20191212190230.188505-1-sean@poorly.run>
References: <20191212190230.188505-1-sean@poorly.run>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 03/12] drm/i915: WARN if HDCP signalling is
 enabled upon disable
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
Cc: daniel.vetter@ffwll.ch, Sean Paul <seanpaul@chromium.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogU2VhbiBQYXVsIDxzZWFucGF1bEBjaHJvbWl1bS5vcmc+CgpIRENQIHNpZ25hbGxpbmcg
c2hvdWxkIG5vdCBiZSBsZWZ0IG9uLCBXQVJOIGlmIGl0IGlzCgpDYzogVmlsbGUgU3lyasOkbMOk
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmll
bC52ZXR0ZXJAZmZ3bGwuY2g+ClNpZ25lZC1vZmYtYnk6IFNlYW4gUGF1bCA8c2VhbnBhdWxAY2hy
b21pdW0ub3JnPgoKQ2hhbmdlcyBpbiB2MjoKLSBBZGRlZCB0byB0aGUgc2V0IGluIGxpZXUgb2Yg
anVzdCBjbGVhcmluZyB0aGUgYml0Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kZGkuYyB8IDIgKysKIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwppbmRleCA1YjZmMzI1MTdjNzUuLjRh
NWJkZjNlZjUxZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kZGkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCkBA
IC0xOTUxLDYgKzE5NTEsOCBAQCB2b2lkIGludGVsX2RkaV9kaXNhYmxlX3RyYW5zY29kZXJfZnVu
Yyhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZQogCWk5MTVfcmVnX3Qg
cmVnID0gVFJBTlNfRERJX0ZVTkNfQ1RMKGNwdV90cmFuc2NvZGVyKTsKIAl1MzIgdmFsID0gSTkx
NV9SRUFEKHJlZyk7CiAKKwlXQVJOX09OKHZhbCAmIFRSQU5TX0RESV9IRENQX1NJR05BTExJTkcp
OworCiAJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIpIHsKIAkJdmFsICY9IH4oVFJBTlNf
RERJX0ZVTkNfRU5BQkxFIHwgVEdMX1RSQU5TX0RESV9QT1JUX01BU0sgfAogCQkJIFRSQU5TX0RE
SV9EUF9WQ19QQVlMT0FEX0FMTE9DKTsKLS0gClNlYW4gUGF1bCwgU29mdHdhcmUgRW5naW5lZXIs
IEdvb2dsZSAvIENocm9taXVtIE9TCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngK
