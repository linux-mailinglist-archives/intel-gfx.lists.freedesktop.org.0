Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E067322E5B
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2019 10:22:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77F8C89257;
	Mon, 20 May 2019 08:22:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com
 [IPv6:2a00:1450:4864:20::543])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED87489259
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2019 08:22:27 +0000 (UTC)
Received: by mail-ed1-x543.google.com with SMTP id b8so22487844edm.11
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2019 01:22:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mVMSkVkXVXoA7bd+CVw0neKzoieyYhVCa/oZdeVcz6s=;
 b=fqRY81mxU+5ZnSFssErlADonvEukjMb+PCw/eDKlcdMTL/PiOoTeN2/0PxuHJiVU0P
 VDN/W/3eOUgk1rMLNQDW9pyLnJ4uYuyddzipQ4oyoveXPfgPUoc1cIzY42GFM7pvtUnt
 ZT3VWb353UXd+57oizaT9dm/FoeNCyN5uXm4zH4Rn4Jm44sImKsUl6k1Dcb29pd/3lVB
 b140YgpfvS3UPIrwupEEdQ5A8N5p4rbmXNrcT9AVRe5HB6bitWkG7aHJd3aleEdWg9e8
 cxPug4Ltf8ht6eGxpOsWJ/Y+M5QPjWYAbdv/Tg0NhdmlSSuAFV2eWrxYb5BLBd6BCWqY
 zKVA==
X-Gm-Message-State: APjAAAXjS8Nt/91GZiVSia3ltWsC7xpelKzb23Nm3lKCik4E86gKcsZ2
 nudMUFEzutOJk770NWzrGhTpfA==
X-Google-Smtp-Source: APXvYqzgHYK7jVIgS4gfI7+Dv9xMQJnk2fhjsWys9x/6q7TmowQ0BrrlSYyon+rIUQknLGOfs4YtBw==
X-Received: by 2002:a50:ba4f:: with SMTP id 15mr18344027eds.210.1558340546096; 
 Mon, 20 May 2019 01:22:26 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id t25sm3021263ejx.8.2019.05.20.01.22.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 01:22:25 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 20 May 2019 10:21:46 +0200
Message-Id: <20190520082216.26273-4-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190520082216.26273-1-daniel.vetter@ffwll.ch>
References: <20190520082216.26273-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mVMSkVkXVXoA7bd+CVw0neKzoieyYhVCa/oZdeVcz6s=;
 b=Sa5zP3JT5hyfGQAExSIWnPbCd2RrgT54fuBK2oWIXdhjEzKYlwkv2mj33KHHgR9Tb1
 OPZ84ScC4qk6uW/A2vVDIiq7WJFLyKaLezunk6D82VjXFVZkwLK6sw6PcT1GveLks2U6
 hhkRii8j3WVTGHSloOOpdQQ+9gDCXElisP1DY=
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
 LKML <linux-kernel@vger.kernel.org>, Martin Hostettler <textshell@uchuujin.de>,
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
dmVycy90dHkvdnQvdnQuYwppbmRleCA2NTBjNjY4ODZjODAuLjhiNGIzYTQ5ZWMzMyAxMDA2NDQK
LS0tIGEvZHJpdmVycy90dHkvdnQvdnQuYworKysgYi9kcml2ZXJzL3R0eS92dC92dC5jCkBAIC00
MTU4LDYgKzQxNTgsOCBAQCB2b2lkIGRvX2JsYW5rX3NjcmVlbihpbnQgZW50ZXJpbmdfZ2Z4KQog
CXN0cnVjdCB2Y19kYXRhICp2YyA9IHZjX2NvbnNbZmdfY29uc29sZV0uZDsKIAlpbnQgaTsKIAor
CW1pZ2h0X3NsZWVwKCk7CisKIAlXQVJOX0NPTlNPTEVfVU5MT0NLRUQoKTsKIAogCWlmIChjb25z
b2xlX2JsYW5rZWQpIHsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
