Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CE2C2C204
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2019 11:03:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC73389D64;
	Tue, 28 May 2019 09:03:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com
 [IPv6:2a00:1450:4864:20::541])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77FD589D64
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2019 09:03:18 +0000 (UTC)
Received: by mail-ed1-x541.google.com with SMTP id f37so30561086edb.13
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2019 02:03:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jUOvUFjOZWrbnCxjvkZoRiQyUO6GhlMn91QUcJ72DHI=;
 b=AGck8HlwIXcd+51/gcTgD3RI/jVTlxF1DMgEKZmEhW319ItBkLk7Z006Qll8wyG6NK
 LBlidMi9QE6OhyR+Fddx1n5+7WNOORQY4hMwOfd17gA/ExK2jhGbsrHki0Oaxf9O1zzm
 NF3MzVWAxM7SU1f4B0Ooc8/BI//Gt4P1rQCBBsZzLBJ361o89CMFKMDQcccfFuQ0GLUb
 GlmEb+sIw6wPCsPDCicqTYW+tSy6X4xt6m6L5+Fea2oJxq67qjPqtK1R/+xdUqeCcfA6
 1alX2rTwP6RP2cx2qeXzhovPxUMgp6rpl+Wc60q5SSuHaZJXz8a5ogaXmzLbCwoE5AF0
 7DLQ==
X-Gm-Message-State: APjAAAWVxpJk2y0h7uiX8fWR5+dmN3Fh6BjN8hb2FT1lmW8tZ8Ahsakd
 fs/74tGLIN3IWzj2nsa4+aOP2w==
X-Google-Smtp-Source: APXvYqx+3Wae09oYe6uZ+dqJBAuIjniRv4ny3Kk16p1SvfsNRiZK6GI4951/ZXDCJWQJ1C95ZStI+A==
X-Received: by 2002:aa7:dd03:: with SMTP id i3mr90704646edv.93.1559034195925; 
 Tue, 28 May 2019 02:03:15 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id x49sm4072656edm.25.2019.05.28.02.03.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 May 2019 02:03:15 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: LKML <linux-kernel@vger.kernel.org>
Date: Tue, 28 May 2019 11:02:35 +0200
Message-Id: <20190528090304.9388-5-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190528090304.9388-1-daniel.vetter@ffwll.ch>
References: <20190528090304.9388-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jUOvUFjOZWrbnCxjvkZoRiQyUO6GhlMn91QUcJ72DHI=;
 b=H29+SckyvkTxRaOEF5mwVU3EMqX7rXNRfN87/DSt5U3WQU+ZAs7hRquIOi9RzLh0cq
 y26ULKv9eBX2/q3UjrfIHryBmDKjabYCAdBQgCihP1AxUIlusJP0cLTTa5KKbirFHQgt
 k/qMMmYucmNuqrA3kjZVBk6TSXZFe1MV/uXew=
Subject: [Intel-gfx] [PATCH 04/33] vt: More locking checks
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
Cc: Nicolas Pitre <nicolas.pitre@linaro.org>,
 Adam Borowski <kilobyte@angband.pl>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 linux-fbdev@vger.kernel.org, DRI Development <dri-devel@lists.freedesktop.org>,
 Martin Hostettler <textshell@uchuujin.de>,
 Mikulas Patocka <mpatocka@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Vetter <daniel.vetter@intel.com>, Sam Ravnborg <sam@ravnborg.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SSBob25lc3RseSBoYXZlIG5vIGlkZWEgd2hhdCB0aGUgc3VidGxlIGRpZmZlcmVuY2VzIGJldHdl
ZW4KY29uX2lzX3Zpc2libGUsIGNvbl9pc19mZyAoaW50ZXJuYWwgdG8gdnQuYykgYW5kIGNvbl9p
c19ib3VuZCBhcmUuIEJ1dAppdCBsb29rcyBsaWtlIGJvdGggdmMtPnZjX2Rpc3BsYXlfZmcgYW5k
IGNvbl9kcml2ZXJfbWFwIGFyZSBwcm90ZWN0ZWQKYnkgdGhlIGNvbnNvbGVfbG9jaywgc28gcHJv
YmFibHkgYmV0dGVyIGlmIHdlIGhvbGQgdGhhdCB3aGVuIGNoZWNraW5nCnRoaXMuCgpUbyBkbyB0
aGF0IEkgaGFkIHRvIGRlaW5saW5lIHRoZSBjb25faXNfdmlzaWJsZSBmdW5jdGlvbi4KClNpZ25l
ZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgpSZXZpZXdl
ZC1ieTogU2FtIFJhdm5ib3JnIDxzYW1AcmF2bmJvcmcub3JnPgpBY2tlZC1ieTogR3JlZyBLcm9h
aC1IYXJ0bWFuIDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz4KUmV2aWV3ZWQtYnk6IE1hYXJ0
ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+CkNjOiBHcmVn
IEtyb2FoLUhhcnRtYW4gPGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPgpDYzogTmljb2xhcyBQ
aXRyZSA8bmljb2xhcy5waXRyZUBsaW5hcm8ub3JnPgpDYzogTWFydGluIEhvc3RldHRsZXIgPHRl
eHRzaGVsbEB1Y2h1dWppbi5kZT4KQ2M6IEFkYW0gQm9yb3dza2kgPGtpbG9ieXRlQGFuZ2JhbmQu
cGw+CkNjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPgpDYzogTWlrdWxh
cyBQYXRvY2thIDxtcGF0b2NrYUByZWRoYXQuY29tPgotLS0KIGRyaXZlcnMvdHR5L3Z0L3Z0LmMg
ICAgICAgICAgICB8IDE2ICsrKysrKysrKysrKysrKysKIGluY2x1ZGUvbGludXgvY29uc29sZV9z
dHJ1Y3QuaCB8ICA1ICstLS0tCiAyIGZpbGVzIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKyksIDQg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy90dHkvdnQvdnQuYyBiL2RyaXZlcnMv
dHR5L3Z0L3Z0LmMKaW5kZXggYmM5ODEzYjE0YzU4Li5hODk4OGEwODUxMzggMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvdHR5L3Z0L3Z0LmMKKysrIGIvZHJpdmVycy90dHkvdnQvdnQuYwpAQCAtMzgxNSw2
ICszODE1LDggQEAgaW50IGNvbl9pc19ib3VuZChjb25zdCBzdHJ1Y3QgY29uc3cgKmNzdykKIHsK
IAlpbnQgaSwgYm91bmQgPSAwOwogCisJV0FSTl9DT05TT0xFX1VOTE9DS0VEKCk7CisKIAlmb3Ig
KGkgPSAwOyBpIDwgTUFYX05SX0NPTlNPTEVTOyBpKyspIHsKIAkJaWYgKGNvbl9kcml2ZXJfbWFw
W2ldID09IGNzdykgewogCQkJYm91bmQgPSAxOwpAQCAtMzgyNiw2ICszODI4LDIwIEBAIGludCBj
b25faXNfYm91bmQoY29uc3Qgc3RydWN0IGNvbnN3ICpjc3cpCiB9CiBFWFBPUlRfU1lNQk9MKGNv
bl9pc19ib3VuZCk7CiAKKy8qKgorICogY29uX2lzX3Zpc2libGUgLSBjaGVja3Mgd2hldGhlciB0
aGUgY3VycmVudCBjb25zb2xlIGlzIHZpc2libGUKKyAqIEB2YzogdmlydHVhbCBjb25zb2xlCisg
KgorICogUkVUVVJOUzogemVybyBpZiBub3QgdmlzaWJsZSwgbm9uemVybyBpZiB2aXNpYmxlCisg
Ki8KK2Jvb2wgY29uX2lzX3Zpc2libGUoY29uc3Qgc3RydWN0IHZjX2RhdGEgKnZjKQoreworCVdB
Uk5fQ09OU09MRV9VTkxPQ0tFRCgpOworCisJcmV0dXJuICp2Yy0+dmNfZGlzcGxheV9mZyA9PSB2
YzsKK30KK0VYUE9SVF9TWU1CT0woY29uX2lzX3Zpc2libGUpOworCiAvKioKICAqIGNvbl9kZWJ1
Z19lbnRlciAtIHByZXBhcmUgdGhlIGNvbnNvbGUgZm9yIHRoZSBrZXJuZWwgZGVidWdnZXIKICAq
IEBzdzogY29uc29sZSBkcml2ZXIKZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvY29uc29sZV9z
dHJ1Y3QuaCBiL2luY2x1ZGUvbGludXgvY29uc29sZV9zdHJ1Y3QuaAppbmRleCBlZDc5OGUxMTQ2
NjMuLjI0ZDRjMTZlM2FlMCAxMDA2NDQKLS0tIGEvaW5jbHVkZS9saW51eC9jb25zb2xlX3N0cnVj
dC5oCisrKyBiL2luY2x1ZGUvbGludXgvY29uc29sZV9zdHJ1Y3QuaApAQCAtMTY4LDkgKzE2OCw2
IEBAIGV4dGVybiB2b2lkIHZjX1NBSyhzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmspOwogCiAjZGVm
aW5lIENVUl9ERUZBVUxUIENVUl9VTkRFUkxJTkUKIAotc3RhdGljIGlubGluZSBib29sIGNvbl9p
c192aXNpYmxlKGNvbnN0IHN0cnVjdCB2Y19kYXRhICp2YykKLXsKLQlyZXR1cm4gKnZjLT52Y19k
aXNwbGF5X2ZnID09IHZjOwotfQorYm9vbCBjb25faXNfdmlzaWJsZShjb25zdCBzdHJ1Y3QgdmNf
ZGF0YSAqdmMpOwogCiAjZW5kaWYgLyogX0xJTlVYX0NPTlNPTEVfU1RSVUNUX0ggKi8KLS0gCjIu
MjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
