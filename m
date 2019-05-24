Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F0A2293AA
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2019 10:55:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DC466E0C0;
	Fri, 24 May 2019 08:54:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com
 [IPv6:2a00:1450:4864:20::544])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B0C86E0B1
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2019 08:54:18 +0000 (UTC)
Received: by mail-ed1-x544.google.com with SMTP id w37so13335013edw.4
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2019 01:54:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=z5iZhjuR5FCK/3TxL7IjS7BEtXamfSAXEK7faRMJIyY=;
 b=Riu5ltCG/nnF3JGuMmVDIKiXCY9R9KTQMBoUi7x/cAPLLE3EXlP0x3U5HH5Bpm1I+S
 ddkOpegzHMYuwcJmEg8Xj6wXLmeBVR1HCnMfWcfmVURlQ1aQ9B9wvaPF3nEaeDw8ntIu
 VrLUU/W+8A1FI5/5Nl6mQymrCYkMEt+3UX7PWba0p359Ew66L8g9ex8pFXQshSqfBeed
 pgys9+sQp2TZ4UbUeAC5iBWILk/8xiBABfD7TqNZBYwa2/0ZJI4f4AU7mgQTx6/9S6ky
 UrqCjOgMVQhAxjYPzOyIGGuBnW1hNGv5GnUffHaiq92jMSBuOS2i2It8YRKogBmNmbJo
 av/g==
X-Gm-Message-State: APjAAAVm32S+XpoSzuen/+JeikV/Krd/w1A1UCSSMM6O2YAyGTkm2oLc
 Wtx6wakSbmHXqIKfbV8X45YSzA==
X-Google-Smtp-Source: APXvYqw+C7uEvcSOzAqBpZKzIjQB+kCYivog+9nN4dN0rkn4Uvf91qd6a0Cft/NG3LdotqRz3PN/jA==
X-Received: by 2002:a17:906:1c4a:: with SMTP id
 l10mr14985452ejg.124.1558688056848; 
 Fri, 24 May 2019 01:54:16 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id 96sm567082edq.68.2019.05.24.01.54.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 01:54:16 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: LKML <linux-kernel@vger.kernel.org>
Date: Fri, 24 May 2019 10:53:32 +0200
Message-Id: <20190524085354.27411-12-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190524085354.27411-1-daniel.vetter@ffwll.ch>
References: <20190524085354.27411-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=z5iZhjuR5FCK/3TxL7IjS7BEtXamfSAXEK7faRMJIyY=;
 b=A84J3j6yA9uBLJ4ynLq1hkbX6gaeWiJBlrLbMqTJZ8UL/PCTKWUctpHKWgggmpBGPf
 I8KeLGCgt5cQA9HVi3LQAUwxnb1KiMFfk+3rbZjqd6yF4kX0nRL+Crqvs1W6zyDbd5LA
 yXVpa3vQNEoL/t8Djh76UgtdUToi4TPriNRZ4=
Subject: [Intel-gfx] [PATCH 11/33] fbdev/sh_mobile: remove
 sh_mobile_lcdc_display_notify
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
 Geert Uytterhoeven <geert+renesas@glider.be>,
 DRI Development <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SXQncyBkZWFkIGNvZGUsIGFuZCByZW1vdmluZyBpdCBhdm9pZHMgbWUgaGF2aW5nIHRvIHVuZGVy
c3RhbmQKd2hhdCBpdCdzIGRvaW5nIHdpdGggbG9ja19mYl9pbmZvLgoKU2lnbmVkLW9mZi1ieTog
RGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KUmV2aWV3ZWQtYnk6IEdlZXJ0
IFV5dHRlcmhvZXZlbiA8Z2VlcnQrcmVuZXNhc0BnbGlkZXIuYmU+CkNjOiBHZWVydCBVeXR0ZXJo
b2V2ZW4gPGdlZXJ0K3JlbmVzYXNAZ2xpZGVyLmJlPgpDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVs
LnZldHRlckBmZndsbC5jaD4KLS0tCiBkcml2ZXJzL3ZpZGVvL2ZiZGV2L3NoX21vYmlsZV9sY2Rj
ZmIuYyB8IDYzIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiBkcml2ZXJzL3ZpZGVvL2ZiZGV2
L3NoX21vYmlsZV9sY2RjZmIuaCB8ICA1IC0tCiAyIGZpbGVzIGNoYW5nZWQsIDY4IGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvdmlkZW8vZmJkZXYvc2hfbW9iaWxlX2xjZGNmYi5j
IGIvZHJpdmVycy92aWRlby9mYmRldi9zaF9tb2JpbGVfbGNkY2ZiLmMKaW5kZXggZGM0NmJlMzhj
OTcwLi5jNTkyNGY1ZTk4YzYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvdmlkZW8vZmJkZXYvc2hfbW9i
aWxlX2xjZGNmYi5jCisrKyBiL2RyaXZlcnMvdmlkZW8vZmJkZXYvc2hfbW9iaWxlX2xjZGNmYi5j
CkBAIC01NTYsNjcgKzU1Niw2IEBAIHNoX21vYmlsZV9sY2RjX211c3RfcmVjb25maWd1cmUoc3Ry
dWN0IHNoX21vYmlsZV9sY2RjX2NoYW4gKmNoLAogc3RhdGljIGludCBzaF9tb2JpbGVfbGNkY19j
aGVja192YXIoc3RydWN0IGZiX3Zhcl9zY3JlZW5pbmZvICp2YXIsCiAJCQkJICAgIHN0cnVjdCBm
Yl9pbmZvICppbmZvKTsKIAotc3RhdGljIGludCBzaF9tb2JpbGVfbGNkY19kaXNwbGF5X25vdGlm
eShzdHJ1Y3Qgc2hfbW9iaWxlX2xjZGNfY2hhbiAqY2gsCi0JCQkJCSBlbnVtIHNoX21vYmlsZV9s
Y2RjX2VudGl0eV9ldmVudCBldmVudCwKLQkJCQkJIGNvbnN0IHN0cnVjdCBmYl92aWRlb21vZGUg
Km1vZGUsCi0JCQkJCSBjb25zdCBzdHJ1Y3QgZmJfbW9uc3BlY3MgKm1vbnNwZWMpCi17Ci0Jc3Ry
dWN0IGZiX2luZm8gKmluZm8gPSBjaC0+aW5mbzsKLQlzdHJ1Y3QgZmJfdmFyX3NjcmVlbmluZm8g
dmFyOwotCWludCByZXQgPSAwOwotCi0Jc3dpdGNoIChldmVudCkgewotCWNhc2UgU0hfTU9CSUxF
X0xDRENfRVZFTlRfRElTUExBWV9DT05ORUNUOgotCQkvKiBIRE1JIHBsdWcgaW4gKi8KLQkJY29u
c29sZV9sb2NrKCk7Ci0JCWlmIChsb2NrX2ZiX2luZm8oaW5mbykpIHsKLQotCi0JCQljaC0+ZGlz
cGxheS53aWR0aCA9IG1vbnNwZWMtPm1heF94ICogMTA7Ci0JCQljaC0+ZGlzcGxheS5oZWlnaHQg
PSBtb25zcGVjLT5tYXhfeSAqIDEwOwotCi0JCQlpZiAoIXNoX21vYmlsZV9sY2RjX211c3RfcmVj
b25maWd1cmUoY2gsIG1vZGUpICYmCi0JCQkgICAgaW5mby0+c3RhdGUgPT0gRkJJTkZPX1NUQVRF
X1JVTk5JTkcpIHsKLQkJCQkvKiBGaXJzdCBhY3RpdmF0aW9uIHdpdGggdGhlIGRlZmF1bHQgbW9u
aXRvci4KLQkJCQkgKiBKdXN0IHR1cm4gb24sIGlmIHdlIHJ1biBhIHJlc3VtZSBoZXJlLCB0aGUK
LQkJCQkgKiBsb2dvIGRpc2FwcGVhcnMuCi0JCQkJICovCi0JCQkJaW5mby0+dmFyLndpZHRoID0g
Y2gtPmRpc3BsYXkud2lkdGg7Ci0JCQkJaW5mby0+dmFyLmhlaWdodCA9IGNoLT5kaXNwbGF5Lmhl
aWdodDsKLQkJCQlzaF9tb2JpbGVfbGNkY19kaXNwbGF5X29uKGNoKTsKLQkJCX0gZWxzZSB7Ci0J
CQkJLyogTmV3IG1vbml0b3Igb3IgaGF2ZSB0byB3YWtlIHVwICovCi0JCQkJZmJfc2V0X3N1c3Bl
bmQoaW5mbywgMCk7Ci0JCQl9Ci0KLQotCQkJdW5sb2NrX2ZiX2luZm8oaW5mbyk7Ci0JCX0KLQkJ
Y29uc29sZV91bmxvY2soKTsKLQkJYnJlYWs7Ci0KLQljYXNlIFNIX01PQklMRV9MQ0RDX0VWRU5U
X0RJU1BMQVlfRElTQ09OTkVDVDoKLQkJLyogSERNSSBkaXNjb25uZWN0ICovCi0JCWNvbnNvbGVf
bG9jaygpOwotCQlpZiAobG9ja19mYl9pbmZvKGluZm8pKSB7Ci0JCQlmYl9zZXRfc3VzcGVuZChp
bmZvLCAxKTsKLQkJCXVubG9ja19mYl9pbmZvKGluZm8pOwotCQl9Ci0JCWNvbnNvbGVfdW5sb2Nr
KCk7Ci0JCWJyZWFrOwotCi0JY2FzZSBTSF9NT0JJTEVfTENEQ19FVkVOVF9ESVNQTEFZX01PREU6
Ci0JCS8qIFZhbGlkYXRlIGEgcHJvcG9zZWQgbmV3IG1vZGUgKi8KLQkJZmJfdmlkZW9tb2RlX3Rv
X3ZhcigmdmFyLCBtb2RlKTsKLQkJdmFyLmJpdHNfcGVyX3BpeGVsID0gaW5mby0+dmFyLmJpdHNf
cGVyX3BpeGVsOwotCQl2YXIuZ3JheXNjYWxlID0gaW5mby0+dmFyLmdyYXlzY2FsZTsKLQkJcmV0
ID0gc2hfbW9iaWxlX2xjZGNfY2hlY2tfdmFyKCZ2YXIsIGluZm8pOwotCQlicmVhazsKLQl9Ci0K
LQlyZXR1cm4gcmV0OwotfQotCiAvKiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogICogRm9ybWF0IGhl
bHBlcnMKICAqLwpAQCAtMjU0MCw4ICsyNDc5LDYgQEAgc2hfbW9iaWxlX2xjZGNfY2hhbm5lbF9p
bml0KHN0cnVjdCBzaF9tb2JpbGVfbGNkY19jaGFuICpjaCkKIAl1bnNpZ25lZCBpbnQgbWF4X3Np
emU7CiAJdW5zaWduZWQgaW50IGk7CiAKLQljaC0+bm90aWZ5ID0gc2hfbW9iaWxlX2xjZGNfZGlz
cGxheV9ub3RpZnk7Ci0KIAkvKiBWYWxpZGF0ZSB0aGUgZm9ybWF0LiAqLwogCWZvcm1hdCA9IHNo
X21vYmlsZV9mb3JtYXRfaW5mbyhjZmctPmZvdXJjYyk7CiAJaWYgKGZvcm1hdCA9PSBOVUxMKSB7
CmRpZmYgLS1naXQgYS9kcml2ZXJzL3ZpZGVvL2ZiZGV2L3NoX21vYmlsZV9sY2RjZmIuaCBiL2Ry
aXZlcnMvdmlkZW8vZmJkZXYvc2hfbW9iaWxlX2xjZGNmYi5oCmluZGV4IGI4ZTQ3YThiZDhhYi4u
NTg5NDAwMzcyMDk4IDEwMDY0NAotLS0gYS9kcml2ZXJzL3ZpZGVvL2ZiZGV2L3NoX21vYmlsZV9s
Y2RjZmIuaAorKysgYi9kcml2ZXJzL3ZpZGVvL2ZiZGV2L3NoX21vYmlsZV9sY2RjZmIuaApAQCAt
ODcsMTEgKzg3LDYgQEAgc3RydWN0IHNoX21vYmlsZV9sY2RjX2NoYW4gewogCXVuc2lnbmVkIGxv
bmcgYmFzZV9hZGRyX2M7CiAJdW5zaWduZWQgaW50IGxpbmVfc2l6ZTsKIAotCWludCAoKm5vdGlm
eSkoc3RydWN0IHNoX21vYmlsZV9sY2RjX2NoYW4gKmNoLAotCQkgICAgICBlbnVtIHNoX21vYmls
ZV9sY2RjX2VudGl0eV9ldmVudCBldmVudCwKLQkJICAgICAgY29uc3Qgc3RydWN0IGZiX3ZpZGVv
bW9kZSAqbW9kZSwKLQkJICAgICAgY29uc3Qgc3RydWN0IGZiX21vbnNwZWNzICptb25zcGVjKTsK
LQogCS8qIEJhY2tsaWdodCAqLwogCXN0cnVjdCBiYWNrbGlnaHRfZGV2aWNlICpibDsKIAl1bnNp
Z25lZCBpbnQgYmxfYnJpZ2h0bmVzczsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
