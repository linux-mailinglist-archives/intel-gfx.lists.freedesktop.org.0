Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 20E6622E56
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2019 10:22:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D50289266;
	Mon, 20 May 2019 08:22:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com
 [IPv6:2a00:1450:4864:20::542])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DA8F89259
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2019 08:22:26 +0000 (UTC)
Received: by mail-ed1-x542.google.com with SMTP id b8so22487778edm.11
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2019 01:22:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=G+7lASPDHVp4K6Shi6AhuJ3vCu7cy9RDPQGFtgAVXYo=;
 b=U2KlEbHl6oT2fkSNr2mTGpYeU84Zq9jPPluJ3o909VZWARnId8tfWe958EYNnZHQEg
 /KZHbWXmqGCXEIneuvuz8NRfLUHKdKO27DkPSgQ9fKy42f6Xe2OzA1n4O/ingaPBlIKO
 t5Cf1WoGMuwhzHa92pe7vMm1m5yORNUspoGHjJTj36uwMDBfI88DfRpRcRcMGFORs7Dm
 /oV5feXajCjk1PtjK00ORmuCHvs8pqYqU/kODPzZ/s4jFa1ByqW4wym+yfKwTgehjevM
 NIAaF8kG/1VXGVMJIg90SvgE8SHSPKEgU2Sd+PnEtTIMF0jPzSNni8IHMXUlsi3G1kHI
 1nLQ==
X-Gm-Message-State: APjAAAXnFXaaqovOM+WqWWxNCcfPAKyAwqbAaDPj3Brj9mMgAl7aAdWL
 5fIyFpTT/WfNFmb5p4yoboL1QA==
X-Google-Smtp-Source: APXvYqzH5cPNdv7MYAD+y/4MNq7TDcKB1eyAl64aeRO4GzFk1JnGrIJO/wyx6J/F/ggn0Pw2mY0qXA==
X-Received: by 2002:a17:906:6603:: with SMTP id
 b3mr57042868ejp.128.1558340545071; 
 Mon, 20 May 2019 01:22:25 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id t25sm3021263ejx.8.2019.05.20.01.22.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 01:22:24 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 20 May 2019 10:21:45 +0200
Message-Id: <20190520082216.26273-3-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190520082216.26273-1-daniel.vetter@ffwll.ch>
References: <20190520082216.26273-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=G+7lASPDHVp4K6Shi6AhuJ3vCu7cy9RDPQGFtgAVXYo=;
 b=fdxIA47EdjdY0cAD59y+tCVIUFAcmt0tExaffadsAFlVmlZ8JqvFsP8koUpxE9wSpH
 k+EmmKz6vl+ykzYBeKPaQCP9IAnfqdF7RppIkaJCFu/UcmKLRSVP7teK6x0UwcvAxlkF
 FQf4alrfYArjUBDWAskQ29Ppbr4fa71rZV97s=
Subject: [Intel-gfx] [PATCH 02/33] fbdev: locking check for fb_set_suspend
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
Cc: Kees Cook <keescook@chromium.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Manfred Schlaegl <manfred.schlaegl@ginzinger.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 =?UTF-8?q?Micha=C5=82=20Miros=C5=82aw?= <mirq-linux@rere.qmqm.pl>,
 Mikulas Patocka <mpatocka@redhat.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>, Peter Rosin <peda@axentia.se>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SnVzdCBkcml2ZS1ieSwgbm90aGluZyBzeXN0ZW1hdGljIHlldC4KClNpZ25lZC1vZmYtYnk6IERh
bmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgpDYzogQmFydGxvbWllaiBab2xu
aWVya2lld2ljeiA8Yi56b2xuaWVya2llQHNhbXN1bmcuY29tPgpDYzogRGFuaWVsIFZldHRlciA8
ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KQ2M6ICJNaWNoYcWCIE1pcm9zxYJhdyIgPG1pcnEtbGlu
dXhAcmVyZS5xbXFtLnBsPgpDYzogUGV0ZXIgUm9zaW4gPHBlZGFAYXhlbnRpYS5zZT4KQ2M6IEhh
bnMgZGUgR29lZGUgPGhkZWdvZWRlQHJlZGhhdC5jb20+CkNjOiBUaG9tYXMgWmltbWVybWFubiA8
dHppbW1lcm1hbm5Ac3VzZS5kZT4KQ2M6IE1hbmZyZWQgU2NobGFlZ2wgPG1hbmZyZWQuc2NobGFl
Z2xAZ2luemluZ2VyLmNvbT4KQ2M6IE1pa3VsYXMgUGF0b2NrYSA8bXBhdG9ja2FAcmVkaGF0LmNv
bT4KQ2M6IEtlZXMgQ29vayA8a2Vlc2Nvb2tAY2hyb21pdW0ub3JnPgotLS0KIGRyaXZlcnMvdmlk
ZW8vZmJkZXYvY29yZS9mYm1lbS5jIHwgMiArKwogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9u
cygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvdmlkZW8vZmJkZXYvY29yZS9mYm1lbS5jIGIvZHJp
dmVycy92aWRlby9mYmRldi9jb3JlL2ZibWVtLmMKaW5kZXggNDcyMTQ5MWU2YzhjLi5mYzNkMzRh
OGVhNWIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvdmlkZW8vZmJkZXYvY29yZS9mYm1lbS5jCisrKyBi
L2RyaXZlcnMvdmlkZW8vZmJkZXYvY29yZS9mYm1lbS5jCkBAIC0xOTY0LDYgKzE5NjQsOCBAQCB2
b2lkIGZiX3NldF9zdXNwZW5kKHN0cnVjdCBmYl9pbmZvICppbmZvLCBpbnQgc3RhdGUpCiB7CiAJ
c3RydWN0IGZiX2V2ZW50IGV2ZW50OwogCisJV0FSTl9DT05TT0xFX1VOTE9DS0VEKCk7CisKIAll
dmVudC5pbmZvID0gaW5mbzsKIAlpZiAoc3RhdGUpIHsKIAkJZmJfbm90aWZpZXJfY2FsbF9jaGFp
bihGQl9FVkVOVF9TVVNQRU5ELCAmZXZlbnQpOwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
