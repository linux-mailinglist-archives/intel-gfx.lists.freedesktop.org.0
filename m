Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F09C42937F
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2019 10:54:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B87F46E0A1;
	Fri, 24 May 2019 08:54:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com
 [IPv6:2a00:1450:4864:20::543])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5749789F49
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2019 08:54:03 +0000 (UTC)
Received: by mail-ed1-x543.google.com with SMTP id a8so13340976edx.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2019 01:54:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SbM4kkl5EWVc1Lud+LN0uVoCMIXyfC33Tfm6rZ3mnEI=;
 b=fFhBsauRSyoEi+352lrAGxQOWDtZHNp++vMHrTpQe0UxxkN6x0pSKs1v8rdMensGN7
 Oi21gPIJK1VDMpeoUxAj2zjo/FNYLK5qqaUwBvlDVAd6iGKrrN17UU1QNtqXXTuD2xjp
 sBGfvFogvFg8Php5bX/SnEjCeaWhyTAPg/blh72Bs3/c3kI4wI1Q0vsAp1odiqgPfaFx
 BrAamhsv5kjWdtcEKLjcerKvhcIHUKUfSRX1ljhbrIMsC7h+8/kR0coG8b7C4FwixX0x
 o8J6RDIzESQkLoNXgvzWxvDzwb73tdmwpBG5Rg/5ntz6RlAB1O5ecuJQRJ0OM41yTntg
 8u5Q==
X-Gm-Message-State: APjAAAWH8O7KF+VopSzhhA4rHfWjYOyOqnL1/yc15YDBTiOWaivu/7QR
 RgZ1yNDtmp7Iw5TqrmjCe1kakA==
X-Google-Smtp-Source: APXvYqwCsy7wS1y18TiVxkSUCraHHH/2ZdqufPRJtqnU28F6RF/leE8tdjhD6kmcJQEGce2Dp+lTBA==
X-Received: by 2002:a50:b1d1:: with SMTP id
 n17mr103556301edd.131.1558688042014; 
 Fri, 24 May 2019 01:54:02 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id 96sm567082edq.68.2019.05.24.01.54.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 01:54:01 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: LKML <linux-kernel@vger.kernel.org>
Date: Fri, 24 May 2019 10:53:22 +0200
Message-Id: <20190524085354.27411-2-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190524085354.27411-1-daniel.vetter@ffwll.ch>
References: <20190524085354.27411-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SbM4kkl5EWVc1Lud+LN0uVoCMIXyfC33Tfm6rZ3mnEI=;
 b=c/FPyF4yrdA+kyY4YOL61v9wViH0qXWsWn7LeQbNFRkgk/NtlJDZd/2fQOm5/hWjBa
 PLBpGyU8BH+CjKkw/vlnSJ1M9WN303wo9Lz5muTXupETgpDMznUolBtQcGizX4JWfCai
 ayz2xzztT1E0yJ7VrbMfYeDSWGkMTKBHplZi4=
Subject: [Intel-gfx] [PATCH 01/33] dummycon: Sprinkle locking checks
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
Cc: Nicolas Pitre <nicolas.pitre@linaro.org>, Kees Cook <keescook@chromium.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QXMgcGFydCBvZiB0cnlpbmcgdG8gdW5kZXJzdGFuZCB0aGUgbG9ja2luZyAob3IgbGFjayB0aGVy
ZW9mKSBpbiB0aGUKZmJjb24vdnQvZmJkZXYgbWF6ZSwgYW5ub3RhdGUgZXZlcnl0aGluZy4KClNp
Z25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgpDYzog
QmFydGxvbWllaiBab2xuaWVya2lld2ljeiA8Yi56b2xuaWVya2llQHNhbXN1bmcuY29tPgpDYzog
SGFucyBkZSBHb2VkZSA8aGRlZ29lZGVAcmVkaGF0LmNvbT4KQ2M6IERhbmllbCBWZXR0ZXIgPGRh
bmllbC52ZXR0ZXJAZmZ3bGwuY2g+CkNjOiBHcmVnIEtyb2FoLUhhcnRtYW4gPGdyZWdraEBsaW51
eGZvdW5kYXRpb24ub3JnPgpDYzogS2VlcyBDb29rIDxrZWVzY29va0BjaHJvbWl1bS5vcmc+CkNj
OiBOaWNvbGFzIFBpdHJlIDxuaWNvbGFzLnBpdHJlQGxpbmFyby5vcmc+Ci0tLQogZHJpdmVycy92
aWRlby9jb25zb2xlL2R1bW15Y29uLmMgfCA2ICsrKysrKwogMSBmaWxlIGNoYW5nZWQsIDYgaW5z
ZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvdmlkZW8vY29uc29sZS9kdW1teWNvbi5j
IGIvZHJpdmVycy92aWRlby9jb25zb2xlL2R1bW15Y29uLmMKaW5kZXggNDVhZDkyNWFkNWY4Li4y
MzUyYjRjMzc4MjYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvdmlkZW8vY29uc29sZS9kdW1teWNvbi5j
CisrKyBiL2RyaXZlcnMvdmlkZW8vY29uc29sZS9kdW1teWNvbi5jCkBAIC0zMyw2ICszMyw4IEBA
IHN0YXRpYyBib29sIGR1bW15Y29uX3B1dGNfY2FsbGVkOwogCiB2b2lkIGR1bW15Y29uX3JlZ2lz
dGVyX291dHB1dF9ub3RpZmllcihzdHJ1Y3Qgbm90aWZpZXJfYmxvY2sgKm5iKQogeworCVdBUk5f
Q09OU09MRV9VTkxPQ0tFRCgpOworCiAJcmF3X25vdGlmaWVyX2NoYWluX3JlZ2lzdGVyKCZkdW1t
eWNvbl9vdXRwdXRfbmgsIG5iKTsKIAogCWlmIChkdW1teWNvbl9wdXRjX2NhbGxlZCkKQEAgLTQx
LDExICs0MywxNSBAQCB2b2lkIGR1bW15Y29uX3JlZ2lzdGVyX291dHB1dF9ub3RpZmllcihzdHJ1
Y3Qgbm90aWZpZXJfYmxvY2sgKm5iKQogCiB2b2lkIGR1bW15Y29uX3VucmVnaXN0ZXJfb3V0cHV0
X25vdGlmaWVyKHN0cnVjdCBub3RpZmllcl9ibG9jayAqbmIpCiB7CisJV0FSTl9DT05TT0xFX1VO
TE9DS0VEKCk7CisKIAlyYXdfbm90aWZpZXJfY2hhaW5fdW5yZWdpc3RlcigmZHVtbXljb25fb3V0
cHV0X25oLCBuYik7CiB9CiAKIHN0YXRpYyB2b2lkIGR1bW15Y29uX3B1dGMoc3RydWN0IHZjX2Rh
dGEgKnZjLCBpbnQgYywgaW50IHlwb3MsIGludCB4cG9zKQogeworCVdBUk5fQ09OU09MRV9VTkxP
Q0tFRCgpOworCiAJZHVtbXljb25fcHV0Y19jYWxsZWQgPSB0cnVlOwogCXJhd19ub3RpZmllcl9j
YWxsX2NoYWluKCZkdW1teWNvbl9vdXRwdXRfbmgsIDAsIE5VTEwpOwogfQotLSAKMi4yMC4xCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
