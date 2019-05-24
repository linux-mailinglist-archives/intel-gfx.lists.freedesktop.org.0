Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 00AF92939D
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2019 10:54:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD6616E0BE;
	Fri, 24 May 2019 08:54:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com
 [IPv6:2a00:1450:4864:20::543])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D76196E0BD
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2019 08:54:21 +0000 (UTC)
Received: by mail-ed1-x543.google.com with SMTP id w33so9958804edb.10
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2019 01:54:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9Yo/Zer+8+iZGO3QV40bLkqCAAdgnz/HLbmfJGGYr+Q=;
 b=F2gyPWwZVZfmR+hiCsfpsyyS3xKXDG9QWXSQH0IOazxN2nPRw62wdmwK8JooJlLFzH
 DWwAEYP9NLX+97w0i1GrCTd3qxTyTlczoyBryfIRIwBbuqvfvhFlNwi9hJyJJYBT4snT
 WxIGUiB/5BbtHQvhp36BGtKn4Mx2Oi9sMe6tCazzHdp+mUoPPXFr4ShWwWkTVOVKZPpw
 XtsSk8TseT/xRedhugu7tKwaMuODRT9EK4bpfi0KMeQYqUzGIRXcyv511TnGtL3EcrXT
 j+DmJgyb0x/8xZI9x7pDXE0eQr4YkF+TanqYsffvZXdWRLlM3MiaIa6SsQCky2lRvpU9
 HYiA==
X-Gm-Message-State: APjAAAV/MhGe+V+07W6nN0zSVWtSa9r2ObKXPLIPLnvvq+blzYM89yba
 CCeBMO6fRzNPf3MrMbzlLPoZgA==
X-Google-Smtp-Source: APXvYqyP+e+E2qU4Lv+BMo7M2voezqLCAoqOH/3CPIQ+j9xKGyjgD9b1iL7vXjKHs6owTje8UsWqqA==
X-Received: by 2002:a50:90dd:: with SMTP id
 d29mr102590308eda.127.1558688059374; 
 Fri, 24 May 2019 01:54:19 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id 96sm567082edq.68.2019.05.24.01.54.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 01:54:18 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: LKML <linux-kernel@vger.kernel.org>
Date: Fri, 24 May 2019 10:53:34 +0200
Message-Id: <20190524085354.27411-14-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190524085354.27411-1-daniel.vetter@ffwll.ch>
References: <20190524085354.27411-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9Yo/Zer+8+iZGO3QV40bLkqCAAdgnz/HLbmfJGGYr+Q=;
 b=cFppgu9fnJ/2ig/l4HBHyobS0yHLQykJ8yLGQM9AAcNv7HUmalYinvJ0ZiHtjlY2DS
 0fWKpQ+q8hGL1X4DypWe1pT5oGssfAUU/K4r9Mh84vSzJDX1dgqpC4l7ktU0WNniBa9D
 GEyHmeVCWvTv+fG3oFfLaOaXdMDoJV9eJNWXA=
Subject: [Intel-gfx] [PATCH 13/33] fbdev: sysfs files can't disappear before
 the device is gone
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
 DRI Development <dri-devel@lists.freedesktop.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2hpY2ggbWVhbnMgbG9ja19mYl9pbmZvIGNhbiBuZXZlciBmYWlsLiBSZW1vdmUgdGhlIGVycm9y
IGhhbmRsaW5nLgoKU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBm
ZndsbC5jaD4KQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+CkNjOiBC
YXJ0bG9taWVqIFpvbG5pZXJraWV3aWN6IDxiLnpvbG5pZXJraWVAc2Ftc3VuZy5jb20+CkNjOiBS
b2IgQ2xhcmsgPHJvYmRjbGFya0BnbWFpbC5jb20+Ci0tLQogZHJpdmVycy92aWRlby9mYmRldi9j
b3JlL2Zic3lzZnMuYyB8IDEwICsrLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlv
bnMoKyksIDggZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy92aWRlby9mYmRldi9j
b3JlL2Zic3lzZnMuYyBiL2RyaXZlcnMvdmlkZW8vZmJkZXYvY29yZS9mYnN5c2ZzLmMKaW5kZXgg
NDRjY2EzOWYyYjUxLi41ZjMyOTI3OGU1NWYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvdmlkZW8vZmJk
ZXYvY29yZS9mYnN5c2ZzLmMKKysrIGIvZHJpdmVycy92aWRlby9mYmRldi9jb3JlL2Zic3lzZnMu
YwpAQCAtMTc5LDEwICsxNzksNyBAQCBzdGF0aWMgc3NpemVfdCBzdG9yZV9tb2RlcyhzdHJ1Y3Qg
ZGV2aWNlICpkZXZpY2UsCiAJCXJldHVybiAtRUlOVkFMOwogCiAJY29uc29sZV9sb2NrKCk7Ci0J
aWYgKCFsb2NrX2ZiX2luZm8oZmJfaW5mbykpIHsKLQkJY29uc29sZV91bmxvY2soKTsKLQkJcmV0
dXJuIC1FTk9ERVY7Ci0JfQorCWxvY2tfZmJfaW5mbyhmYl9pbmZvKTsKIAogCWxpc3Rfc3BsaWNl
KCZmYl9pbmZvLT5tb2RlbGlzdCwgJm9sZF9saXN0KTsKIAlmYl92aWRlb21vZGVfdG9fbW9kZWxp
c3QoKGNvbnN0IHN0cnVjdCBmYl92aWRlb21vZGUgKilidWYsIGksCkBAIC00MDksMTAgKzQwNiw3
IEBAIHN0YXRpYyBzc2l6ZV90IHN0b3JlX2Zic3RhdGUoc3RydWN0IGRldmljZSAqZGV2aWNlLAog
CXN0YXRlID0gc2ltcGxlX3N0cnRvdWwoYnVmLCAmbGFzdCwgMCk7CiAKIAljb25zb2xlX2xvY2so
KTsKLQlpZiAoIWxvY2tfZmJfaW5mbyhmYl9pbmZvKSkgewotCQljb25zb2xlX3VubG9jaygpOwot
CQlyZXR1cm4gLUVOT0RFVjsKLQl9CisJbG9ja19mYl9pbmZvKGZiX2luZm8pOwogCiAJZmJfc2V0
X3N1c3BlbmQoZmJfaW5mbywgKGludClzdGF0ZSk7CiAKLS0gCjIuMjAuMQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
