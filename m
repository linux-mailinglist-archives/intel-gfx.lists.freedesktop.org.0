Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7ABD29382
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2019 10:54:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2E236E0A8;
	Fri, 24 May 2019 08:54:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com
 [IPv6:2a00:1450:4864:20::541])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7211D89F49
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2019 08:54:04 +0000 (UTC)
Received: by mail-ed1-x541.google.com with SMTP id w33so9957784edb.10
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2019 01:54:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WjZOCAqCO3l6sOylMJV3BG1AKBRXEuG+IGCZcKuozWA=;
 b=por9uALqUODW32AcG73MUM7DM8a8GGvtdvZAmbOzMtq/40kt7p/ign8QvT6g9YlTvr
 i0vKZP6/hIo4CvWjjPNvIJNcRPqGOjgdp4xDeWy6LgnSjQvlL+tXv/VWlBERqESdqq8T
 bB5hNWPRLCgBmrSkcdsmBepwwMtiovCdtVI16GexAz7hXgyf5gGwAfXEIrigJHszkbmm
 7ToYOCn/wevZg335MgcSWkzv7xiVZVv+ytxXyf/8nJHaI3ciJcYKzfXJRGPTaV/loLn4
 YZ3NW1529JqZwhrkgrRd134IYOHXbLdFGETjyzd6J95vDokLgwcHDw8LN2TcsVlT4bFM
 BpSg==
X-Gm-Message-State: APjAAAUHL50xA76fNbvAVL7gkZGzeqwd6NC2rStwj6Mem60g9zOG48/C
 4UGbejFtNhP2BUWQyH+Jk5WBgQ==
X-Google-Smtp-Source: APXvYqw90JW22kbymXTQpmSH2wtmpc3E7xGbmiBHk8MYvAt3SJf376+g2NAganFHL+j0ca7tqriJSQ==
X-Received: by 2002:a50:ba1d:: with SMTP id g29mr48994176edc.298.1558688043136; 
 Fri, 24 May 2019 01:54:03 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id 96sm567082edq.68.2019.05.24.01.54.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 01:54:02 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: LKML <linux-kernel@vger.kernel.org>
Date: Fri, 24 May 2019 10:53:23 +0200
Message-Id: <20190524085354.27411-3-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190524085354.27411-1-daniel.vetter@ffwll.ch>
References: <20190524085354.27411-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WjZOCAqCO3l6sOylMJV3BG1AKBRXEuG+IGCZcKuozWA=;
 b=Ed3N0BtCGy2KrRjxgTqaTL3MHlzGpZBsTTx8FSTmwmpH0uBFHwRKyPhA/jP7Z9Ep6q
 TJd+LpH/8IMbH3/A57PWAxKw+6Umw2mgAPzSRXA6eUbOaKXykY0YzLmiHUBDoaeL0zqT
 4b3/gaoPpvVyAEmwrbiirj1Bobt5V1KRsZlgI=
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
 DRI Development <dri-devel@lists.freedesktop.org>,
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
dmVycy92aWRlby9mYmRldi9jb3JlL2ZibWVtLmMKaW5kZXggZDE5NDljOTJiZTk4Li44YmE2NzRm
ZmIzYzkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvdmlkZW8vZmJkZXYvY29yZS9mYm1lbS5jCisrKyBi
L2RyaXZlcnMvdmlkZW8vZmJkZXYvY29yZS9mYm1lbS5jCkBAIC0xOTg1LDYgKzE5ODUsOCBAQCB2
b2lkIGZiX3NldF9zdXNwZW5kKHN0cnVjdCBmYl9pbmZvICppbmZvLCBpbnQgc3RhdGUpCiB7CiAJ
c3RydWN0IGZiX2V2ZW50IGV2ZW50OwogCisJV0FSTl9DT05TT0xFX1VOTE9DS0VEKCk7CisKIAll
dmVudC5pbmZvID0gaW5mbzsKIAlpZiAoc3RhdGUpIHsKIAkJZmJfbm90aWZpZXJfY2FsbF9jaGFp
bihGQl9FVkVOVF9TVVNQRU5ELCAmZXZlbnQpOwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
