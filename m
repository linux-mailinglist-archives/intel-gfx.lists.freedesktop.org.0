Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 310BA293B0
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2019 10:55:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F21C6E0E1;
	Fri, 24 May 2019 08:54:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com
 [IPv6:2a00:1450:4864:20::544])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E2E26E0D7
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2019 08:54:31 +0000 (UTC)
Received: by mail-ed1-x544.google.com with SMTP id e24so13343133edq.6
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2019 01:54:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qewta4jE6NaBT1wgic7FFQ06WBBHYmA/qRjwYgxOqRs=;
 b=FxsQa87hL5Gdp0yiUC54giTekbdTgOhvOhOw8gGwcp419dcagbppR1dVCLq3Pp4ugB
 Q+gEWzIoBKYt+SH1WIlFCxI4Pp/QwNwhPAqspQsxYE/1EBE9iCmHrUEggxR9SU6Sm3lr
 Vc2xPwj8z3oXh0Fw7WIfCuBgHjU6axJ28i0GZJJF1sJp9Qx66Md78HT4hMF6rpNso1v4
 4qdwy1DPPULw09QIgjtdA2gWc7cwKHZVYEJrq6tYwXBQLKQEeiWq4Z/GFcTK+lXjoNA/
 Z6k+c4cG54drINB5b5QRUcaXLNfYe++j+Z83+B9qcjlDSgdCfDrbi8cHeAaS+D+QJMAb
 MY9w==
X-Gm-Message-State: APjAAAU0VCCmTPUqvHhmCUEXSm3+RkfLxMKJmERsXO9eaCRwH2cneNOd
 cvSSC6BZIP6OGLQEwxs2TvoMeQ==
X-Google-Smtp-Source: APXvYqyr6Tw3IMkdvKEhRIRZY6yk1Ivs/PjOxT7WpIXudWAibRjX8vDW5XPFQ0Wc/pC5twi84XhpqA==
X-Received: by 2002:a50:8684:: with SMTP id r4mr103185155eda.98.1558688069727; 
 Fri, 24 May 2019 01:54:29 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id 96sm567082edq.68.2019.05.24.01.54.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 01:54:29 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: LKML <linux-kernel@vger.kernel.org>
Date: Fri, 24 May 2019 10:53:42 +0200
Message-Id: <20190524085354.27411-22-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190524085354.27411-1-daniel.vetter@ffwll.ch>
References: <20190524085354.27411-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qewta4jE6NaBT1wgic7FFQ06WBBHYmA/qRjwYgxOqRs=;
 b=UJ/oc6lGweLhLGaGI+xbhdiMnf+Cl5bY1xWJJbxHvngccKX4OoywLCjeBh1g4pYDoJ
 qi1WhmNTybu+BYt2gziM+hFKub1eGlHbu1KVKoGMG+FCaKAPV4qEvHKNT3weADfNlJ0l
 fN49GpBW5Nme6wUCxJRLNAJpa3n4EJNc6UmaM=
Subject: [Intel-gfx] [PATCH 21/33] fbdev: directly call
 fbcon_suspended/resumed
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
Cc: Prarit Bhargava <prarit@redhat.com>, linux-fbdev@vger.kernel.org,
 Kees Cook <keescook@chromium.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 =?UTF-8?q?Micha=C5=82=20Miros=C5=82aw?= <mirq-linux@rere.qmqm.pl>,
 Yisheng Xie <ysxie@foxmail.com>, Mikulas Patocka <mpatocka@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Vetter <daniel.vetter@intel.com>, Peter Rosin <peda@axentia.se>,
 Konstantin Khorenko <khorenko@virtuozzo.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2l0aCB0aGUgc2hfbW9iaWxlIG5vdGlmaWVyIHJlbW92ZWQgd2UgY2FuIGp1c3QgZGlyZWN0bHkg
Y2FsbCB0aGUKZmJjb24gY29kZSBoZXJlLgoKdjI6IFJlbW92ZSBub3cgdW51c2VkIGxvY2FsIHZh
cmlhYmxlLgoKdjM6IGZpeHVwICFDT05GSUdfRlJBTUVCVUZGRVJfQ09OU09MRSwgbm90aWNlZCBi
eSBrYnVpbGQKClNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50
ZWwuY29tPgpDYzogQmFydGxvbWllaiBab2xuaWVya2lld2ljeiA8Yi56b2xuaWVya2llQHNhbXN1
bmcuY29tPgpDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KQ2M6IEhh
bnMgZGUgR29lZGUgPGhkZWdvZWRlQHJlZGhhdC5jb20+CkNjOiBHcmVnIEtyb2FoLUhhcnRtYW4g
PGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPgpDYzogUHJhcml0IEJoYXJnYXZhIDxwcmFyaXRA
cmVkaGF0LmNvbT4KQ2M6IEtlZXMgQ29vayA8a2Vlc2Nvb2tAY2hyb21pdW0ub3JnPgpDYzogS29u
c3RhbnRpbiBLaG9yZW5rbyA8a2hvcmVua29AdmlydHVvenpvLmNvbT4KQ2M6IFlpc2hlbmcgWGll
IDx5c3hpZUBmb3htYWlsLmNvbT4KQ2M6ICJNaWNoYcWCIE1pcm9zxYJhdyIgPG1pcnEtbGludXhA
cmVyZS5xbXFtLnBsPgpDYzogUGV0ZXIgUm9zaW4gPHBlZGFAYXhlbnRpYS5zZT4KQ2M6IE1pa3Vs
YXMgUGF0b2NrYSA8bXBhdG9ja2FAcmVkaGF0LmNvbT4KQ2M6IGxpbnV4LWZiZGV2QHZnZXIua2Vy
bmVsLm9yZwotLS0KIGRyaXZlcnMvdmlkZW8vZmJkZXYvY29yZS9mYmNvbi5jIHwgMTAgKystLS0t
LS0tLQogZHJpdmVycy92aWRlby9mYmRldi9jb3JlL2ZibWVtLmMgfCAgNyArKy0tLS0tCiBpbmNs
dWRlL2xpbnV4L2ZiLmggICAgICAgICAgICAgICB8ICA4IC0tLS0tLS0tCiBpbmNsdWRlL2xpbnV4
L2ZiY29uLmggICAgICAgICAgICB8ICA0ICsrKysKIDQgZmlsZXMgY2hhbmdlZCwgOCBpbnNlcnRp
b25zKCspLCAyMSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3ZpZGVvL2ZiZGV2
L2NvcmUvZmJjb24uYyBiL2RyaXZlcnMvdmlkZW8vZmJkZXYvY29yZS9mYmNvbi5jCmluZGV4IGYx
MTRiNGM4ODc5Ni4uMjRlYTZlNGZiZWUwIDEwMDY0NAotLS0gYS9kcml2ZXJzL3ZpZGVvL2ZiZGV2
L2NvcmUvZmJjb24uYworKysgYi9kcml2ZXJzL3ZpZGVvL2ZiZGV2L2NvcmUvZmJjb24uYwpAQCAt
MjkxOSw3ICsyOTE5LDcgQEAgc3RhdGljIGludCBmYmNvbl9zZXRfb3JpZ2luKHN0cnVjdCB2Y19k
YXRhICp2YykKIAlyZXR1cm4gMDsKIH0KIAotc3RhdGljIHZvaWQgZmJjb25fc3VzcGVuZGVkKHN0
cnVjdCBmYl9pbmZvICppbmZvKQordm9pZCBmYmNvbl9zdXNwZW5kZWQoc3RydWN0IGZiX2luZm8g
KmluZm8pCiB7CiAJc3RydWN0IHZjX2RhdGEgKnZjID0gTlVMTDsKIAlzdHJ1Y3QgZmJjb25fb3Bz
ICpvcHMgPSBpbmZvLT5mYmNvbl9wYXI7CkBAIC0yOTMyLDcgKzI5MzIsNyBAQCBzdGF0aWMgdm9p
ZCBmYmNvbl9zdXNwZW5kZWQoc3RydWN0IGZiX2luZm8gKmluZm8pCiAJZmJjb25fY3Vyc29yKHZj
LCBDTV9FUkFTRSk7CiB9CiAKLXN0YXRpYyB2b2lkIGZiY29uX3Jlc3VtZWQoc3RydWN0IGZiX2lu
Zm8gKmluZm8pCit2b2lkIGZiY29uX3Jlc3VtZWQoc3RydWN0IGZiX2luZm8gKmluZm8pCiB7CiAJ
c3RydWN0IHZjX2RhdGEgKnZjOwogCXN0cnVjdCBmYmNvbl9vcHMgKm9wcyA9IGluZm8tPmZiY29u
X3BhcjsKQEAgLTMzMzAsMTIgKzMzMzAsNiBAQCBzdGF0aWMgaW50IGZiY29uX2V2ZW50X25vdGlm
eShzdHJ1Y3Qgbm90aWZpZXJfYmxvY2sgKnNlbGYsCiAJaW50IGlkeCwgcmV0ID0gMDsKIAogCXN3
aXRjaChhY3Rpb24pIHsKLQljYXNlIEZCX0VWRU5UX1NVU1BFTkQ6Ci0JCWZiY29uX3N1c3BlbmRl
ZChpbmZvKTsKLQkJYnJlYWs7Ci0JY2FzZSBGQl9FVkVOVF9SRVNVTUU6Ci0JCWZiY29uX3Jlc3Vt
ZWQoaW5mbyk7Ci0JCWJyZWFrOwogCWNhc2UgRkJfRVZFTlRfTU9ERV9DSEFOR0U6CiAJCWZiY29u
X21vZGVjaGFuZ2VkKGluZm8pOwogCQlicmVhazsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvdmlkZW8v
ZmJkZXYvY29yZS9mYm1lbS5jIGIvZHJpdmVycy92aWRlby9mYmRldi9jb3JlL2ZibWVtLmMKaW5k
ZXggYmVlNDVlOTQwNWI4Li43MzI2OWRlZGNkNDUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvdmlkZW8v
ZmJkZXYvY29yZS9mYm1lbS5jCisrKyBiL2RyaXZlcnMvdmlkZW8vZmJkZXYvY29yZS9mYm1lbS5j
CkBAIC0xOTE3LDE3ICsxOTE3LDE0IEBAIEVYUE9SVF9TWU1CT0wodW5yZWdpc3Rlcl9mcmFtZWJ1
ZmZlcik7CiAgKi8KIHZvaWQgZmJfc2V0X3N1c3BlbmQoc3RydWN0IGZiX2luZm8gKmluZm8sIGlu
dCBzdGF0ZSkKIHsKLQlzdHJ1Y3QgZmJfZXZlbnQgZXZlbnQ7Ci0KIAlXQVJOX0NPTlNPTEVfVU5M
T0NLRUQoKTsKIAotCWV2ZW50LmluZm8gPSBpbmZvOwogCWlmIChzdGF0ZSkgewotCQlmYl9ub3Rp
Zmllcl9jYWxsX2NoYWluKEZCX0VWRU5UX1NVU1BFTkQsICZldmVudCk7CisJCWZiY29uX3N1c3Bl
bmRlZChpbmZvKTsKIAkJaW5mby0+c3RhdGUgPSBGQklORk9fU1RBVEVfU1VTUEVOREVEOwogCX0g
ZWxzZSB7CiAJCWluZm8tPnN0YXRlID0gRkJJTkZPX1NUQVRFX1JVTk5JTkc7Ci0JCWZiX25vdGlm
aWVyX2NhbGxfY2hhaW4oRkJfRVZFTlRfUkVTVU1FLCAmZXZlbnQpOworCQlmYmNvbl9yZXN1bWVk
KGluZm8pOwogCX0KIH0KIEVYUE9SVF9TWU1CT0woZmJfc2V0X3N1c3BlbmQpOwpkaWZmIC0tZ2l0
IGEvaW5jbHVkZS9saW51eC9mYi5oIGIvaW5jbHVkZS9saW51eC9mYi5oCmluZGV4IGI5MGNmN2Q1
NmJkOC4uNzk0YjM4NjQxNWI3IDEwMDY0NAotLS0gYS9pbmNsdWRlL2xpbnV4L2ZiLmgKKysrIGIv
aW5jbHVkZS9saW51eC9mYi5oCkBAIC0xMjYsMTQgKzEyNiw2IEBAIHN0cnVjdCBmYl9jdXJzb3Jf
dXNlciB7CiAKIC8qCVRoZSByZXNvbHV0aW9uIG9mIHRoZSBwYXNzZWQgaW4gZmJfaW5mbyBhYm91
dCB0byBjaGFuZ2UgKi8gCiAjZGVmaW5lIEZCX0VWRU5UX01PREVfQ0hBTkdFCQkweDAxCi0vKglU
aGUgZGlzcGxheSBvbiB0aGlzIGZiX2luZm8gaXMgYmVpbmcgc3VzcGVuZGVkLCBubyBhY2Nlc3Mg
dG8gdGhlCi0gKglmcmFtZWJ1ZmZlciBpcyBhbGxvd2VkIGFueSBtb3JlIGFmdGVyIHRoYXQgY2Fs
bCByZXR1cm5zCi0gKi8KLSNkZWZpbmUgRkJfRVZFTlRfU1VTUEVORAkJMHgwMgotLyoJVGhlIGRp
c3BsYXkgb24gdGhpcyBmYl9pbmZvIHdhcyByZXN1bWVkLCB5b3UgY2FuIHJlc3RvcmUgdGhlIGRp
c3BsYXkKLSAqCWlmIHlvdSBvd24gaXQKLSAqLwotI2RlZmluZSBGQl9FVkVOVF9SRVNVTUUJCQkw
eDAzCiAvKiAgICAgIEFuIGVudHJ5IGZyb20gdGhlIG1vZGVsaXN0IHdhcyByZW1vdmVkICovCiAj
ZGVmaW5lIEZCX0VWRU5UX01PREVfREVMRVRFICAgICAgICAgICAgMHgwNAogCmRpZmYgLS1naXQg
YS9pbmNsdWRlL2xpbnV4L2ZiY29uLmggYi9pbmNsdWRlL2xpbnV4L2ZiY29uLmgKaW5kZXggMzhk
NDRmZGI2ZDE0Li43OTBjNDJlYzdiNWQgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvbGludXgvZmJjb24u
aAorKysgYi9pbmNsdWRlL2xpbnV4L2ZiY29uLmgKQEAgLTcsMTIgKzcsMTYgQEAgdm9pZCBfX2V4
aXQgZmJfY29uc29sZV9leGl0KHZvaWQpOwogaW50IGZiY29uX2ZiX3JlZ2lzdGVyZWQoc3RydWN0
IGZiX2luZm8gKmluZm8pOwogdm9pZCBmYmNvbl9mYl91bnJlZ2lzdGVyZWQoc3RydWN0IGZiX2lu
Zm8gKmluZm8pOwogdm9pZCBmYmNvbl9mYl91bmJpbmQoc3RydWN0IGZiX2luZm8gKmluZm8pOwor
dm9pZCBmYmNvbl9zdXNwZW5kZWQoc3RydWN0IGZiX2luZm8gKmluZm8pOwordm9pZCBmYmNvbl9y
ZXN1bWVkKHN0cnVjdCBmYl9pbmZvICppbmZvKTsKICNlbHNlCiBzdGF0aWMgaW5saW5lIHZvaWQg
ZmJfY29uc29sZV9pbml0KHZvaWQpIHt9CiBzdGF0aWMgaW5saW5lIHZvaWQgZmJfY29uc29sZV9l
eGl0KHZvaWQpIHt9CiBzdGF0aWMgaW5saW5lIGludCBmYmNvbl9mYl9yZWdpc3RlcmVkKHN0cnVj
dCBmYl9pbmZvICppbmZvKSB7IHJldHVybiAwOyB9CiBzdGF0aWMgaW5saW5lIHZvaWQgZmJjb25f
ZmJfdW5yZWdpc3RlcmVkKHN0cnVjdCBmYl9pbmZvICppbmZvKSB7fQogc3RhdGljIGlubGluZSB2
b2lkIGZiY29uX2ZiX3VuYmluZChzdHJ1Y3QgZmJfaW5mbyAqaW5mbykge30KK3N0YXRpYyBpbmxp
bmUgdm9pZCBmYmNvbl9zdXNwZW5kZWQoc3RydWN0IGZiX2luZm8gKmluZm8pIHt9CitzdGF0aWMg
aW5saW5lIHZvaWQgZmJjb25fcmVzdW1lZChzdHJ1Y3QgZmJfaW5mbyAqaW5mbykge30KICNlbmRp
ZgogCiAjZW5kaWYgLyogX0xJTlVYX0ZCQ09OX0ggKi8KLS0gCjIuMjAuMQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
