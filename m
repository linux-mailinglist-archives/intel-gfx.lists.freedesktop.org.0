Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0205229380
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2019 10:54:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A11A89F49;
	Fri, 24 May 2019 08:54:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com
 [IPv6:2a00:1450:4864:20::543])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4C566E04B
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2019 08:54:05 +0000 (UTC)
Received: by mail-ed1-x543.google.com with SMTP id m4so13311752edd.8
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2019 01:54:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ap6gHVfG6PM+wYbkqC4KGmp/roHspJTrFKWjjYMA/To=;
 b=r3ADR3rcFLKAhMYJTOPm96WLsaq6qpv21h4zdmayWK23GKq0vLBQDugcxJW/UdmWu1
 Z3UAP3JboTAeqbtub+m1bNfVIUKVI0MyJBOCjGDUoHEpG2Wx8l+Z2uVqw6Rw//7tc6Gv
 IfjIN8Bl0XZNkrnwb65ozAXKQiptm6LidwWd7EFn75prFuZucKW9VE5zXboNpGYlRJkG
 tx00QAJcZ8yCroXEuWhhppNueB7LCZ860MYDPZYeJKaNd2jMK6JXqlPwO8DsJ4ssshBb
 LNJViFUMrpx3NcjBP12OImLlLgPuxqpSufaSpjYtiZXOxF8k+i48+0r+dzk5m8X51Y0/
 1SWg==
X-Gm-Message-State: APjAAAWyBinuW9JVshYtV0gFHtQ4w+560WNIcjhqjO9c6+aB2lQrGBIj
 zqUfdLDfJRpu3KbzyB1i0K1njA==
X-Google-Smtp-Source: APXvYqzhd4f3rrF1WDIdoewCydKwsOVaIfyCIIjufiU3/tV42BLUr8ae9tm+UecNxlXgltqO2gHb8w==
X-Received: by 2002:a05:6402:1214:: with SMTP id
 c20mr101983320edw.38.1558688044363; 
 Fri, 24 May 2019 01:54:04 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id 96sm567082edq.68.2019.05.24.01.54.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 01:54:03 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: LKML <linux-kernel@vger.kernel.org>
Date: Fri, 24 May 2019 10:53:24 +0200
Message-Id: <20190524085354.27411-4-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190524085354.27411-1-daniel.vetter@ffwll.ch>
References: <20190524085354.27411-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ap6gHVfG6PM+wYbkqC4KGmp/roHspJTrFKWjjYMA/To=;
 b=TcHOFSYpTZDVzEzFDwDdhVIyODgONPMw+T3NbmiYfQjRtHLOh8DAwQFpc9neVEvsg5
 3o1EvHY3jdbyMeWHIJy+cFE0Sf636G/ypqXGntdQR0FIhJ98nrM9Cb6YYB4awpiVkYmt
 LnPJOFzsIhXefcJvhqHx3iX6Le26pu/IwJvSY=
Subject: [Intel-gfx] [PATCH 03/33] vt: might_sleep() annotation for
 do_blank_screen
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
 Adam Borowski <kilobyte@angband.pl>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Martin Hostettler <textshell@uchuujin.de>,
 Mikulas Patocka <mpatocka@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rm9yIHN5bW1ldHJ5IHJlYXNvbnMgd2l0aCBkb191bmJsYW5rX3NjcmVlbiwgZXhjZXB0IHdpdGhv
dXQgdGhlCm9vcHNfaW5fcHJvZ3Jlc3Mgc3BlY2lhbCBjYXNlLgoKSnVzdCBhIGRyaXZlLWJ5IGFu
bm90YXRpb24gd2hpbGUgSSdtIHRyeWluZyB0byB1bnRhbmdsZSB0aGUgZmJjb24gdnMuCmZiZGV2
IHNjcmVlbiBibGFuay91bmJsYW5rIG1hemUuCgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVy
IDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KQ2M6IEdyZWcgS3JvYWgtSGFydG1hbiA8Z3JlZ2to
QGxpbnV4Zm91bmRhdGlvbi5vcmc+CkNjOiBOaWNvbGFzIFBpdHJlIDxuaWNvbGFzLnBpdHJlQGxp
bmFyby5vcmc+CkNjOiBBZGFtIEJvcm93c2tpIDxraWxvYnl0ZUBhbmdiYW5kLnBsPgpDYzogTWFy
dGluIEhvc3RldHRsZXIgPHRleHRzaGVsbEB1Y2h1dWppbi5kZT4KQ2M6IERhbmllbCBWZXR0ZXIg
PGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+CkNjOiBNaWt1bGFzIFBhdG9ja2EgPG1wYXRvY2thQHJl
ZGhhdC5jb20+Ci0tLQogZHJpdmVycy90dHkvdnQvdnQuYyB8IDIgKysKIDEgZmlsZSBjaGFuZ2Vk
LCAyIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3R0eS92dC92dC5jIGIvZHJp
dmVycy90dHkvdnQvdnQuYwppbmRleCBmZGQxMmY4YzNkZWIuLmJjOTgxM2IxNGM1OCAxMDA2NDQK
LS0tIGEvZHJpdmVycy90dHkvdnQvdnQuYworKysgYi9kcml2ZXJzL3R0eS92dC92dC5jCkBAIC00
MTU5LDYgKzQxNTksOCBAQCB2b2lkIGRvX2JsYW5rX3NjcmVlbihpbnQgZW50ZXJpbmdfZ2Z4KQog
CXN0cnVjdCB2Y19kYXRhICp2YyA9IHZjX2NvbnNbZmdfY29uc29sZV0uZDsKIAlpbnQgaTsKIAor
CW1pZ2h0X3NsZWVwKCk7CisKIAlXQVJOX0NPTlNPTEVfVU5MT0NLRUQoKTsKIAogCWlmIChjb25z
b2xlX2JsYW5rZWQpIHsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
