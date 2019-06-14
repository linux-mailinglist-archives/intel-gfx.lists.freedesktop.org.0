Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB74146B03
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 22:39:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90F108984C;
	Fri, 14 Jun 2019 20:37:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com
 [IPv6:2a00:1450:4864:20::542])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04D9089873
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 20:37:29 +0000 (UTC)
Received: by mail-ed1-x542.google.com with SMTP id r12so3059914edo.5
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 13:37:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=b4mqrSb1Usyec08G5jnBEsIDSXDjtvj/Z/wfScS5D4g=;
 b=DwCE33tB93EuFlbJvDsxd8ewsmoM1dbifW/ciTkusdxJBJ1nwUUrdBIqLiChRv6Kh4
 9ELYsv4p91rId5RoE1qQUOG+VMchZuB/5Z6Wg0U3wmkWz+EK3p8P6qgobiaPLOjiNCby
 Wg0Ft0pnoI2sAvGjPcmG2zS+zYC6rt5xtIRDgMXbEoXN7Gq6UuPjUVGzx1vqkPxu58cf
 cK+TYWuEZSu60l3TjDo1FRob2ZoNaJX/K+7+UjVy2+c1dCtGmnqZY4lCEmWMZn2KzXbE
 X4hjH3QZJKhWBeZA9azMANWCqtyVWHGwOHjHXPIR5OdSULeUyKFScADLXyRNNBA+cF0i
 bQyA==
X-Gm-Message-State: APjAAAXjNcg0by4wgRidU/9XTKzLqcDlYck1ekohnu9jX9kn/2nTKTh8
 YNfrYdsrkU4191X16NDYfwfHAQ==
X-Google-Smtp-Source: APXvYqztbd3ogoc0WOfjzuh58YnxlXieOvWJoRXEWv/8HYOCmXCEp1u7ZkiRuLuIz9CYnSQ6pEPgqw==
X-Received: by 2002:a50:86ea:: with SMTP id 39mr79308884edu.184.1560544646869; 
 Fri, 14 Jun 2019 13:37:26 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id n15sm1166672edd.49.2019.06.14.13.37.26
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 13:37:26 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 14 Jun 2019 22:36:13 +0200
Message-Id: <20190614203615.12639-58-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=b4mqrSb1Usyec08G5jnBEsIDSXDjtvj/Z/wfScS5D4g=;
 b=hAnRko8ZuKV1bxsHwvloJgN5vx1V1yc2+prIUC6EZ4Knos+Pg8GHOa6uDb/tCy1cYP
 YBm7PdsSiTcb57e/rAFkNWqTc8OyFGEVT0fxtSSnoTQxCG1uCMKT1hAGkLU3AkbwDPdF
 s57WcHCn6eVuqW79E5Zil9EN7Af6yvV5J4yAs=
Subject: [Intel-gfx] [PATCH 57/59] drm/todo: Update mmap todo
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
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhhbmtzIHRvIE5vcmFsZiBzb21lIGdvb2QgcHJvZ3Jlc3MgYWxyZWFkeS4KClNpZ25lZC1vZmYt
Ynk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgotLS0KIERvY3VtZW50
YXRpb24vZ3B1L3RvZG8ucnN0IHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCsp
LCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9ncHUvdG9kby5yc3Qg
Yi9Eb2N1bWVudGF0aW9uL2dwdS90b2RvLnJzdAppbmRleCBjNGU3YzA2NzJhMTQuLjk3MTc1NDBl
ZTI4ZiAxMDA2NDQKLS0tIGEvRG9jdW1lbnRhdGlvbi9ncHUvdG9kby5yc3QKKysrIGIvRG9jdW1l
bnRhdGlvbi9ncHUvdG9kby5yc3QKQEAgLTE2Miw3ICsxNjIsNyBAQCBDbGVhbiB1cCBtbWFwIGZv
cndhcmRpbmcKIAogQSBsb3Qgb2YgZHJpdmVycyBmb3J3YXJkIGdlbSBtbWFwIGNhbGxzIHRvIGRt
YS1idWYgbW1hcCBmb3IgaW1wb3J0ZWQgYnVmZmVycy4KIEFuZCBhbHNvIGEgbG90IG9mIHRoZW0g
Zm9yd2FyZCBkbWEtYnVmIG1tYXAgdG8gdGhlIGdlbSBtbWFwIGltcGxlbWVudGF0aW9ucy4KLVdv
dWxkIGJlIGdyZWF0IHRvIHJlZmFjdG9yIHRoaXMgYWxsIGludG8gYSBzZXQgb2Ygc21hbGwgY29t
bW9uIGhlbHBlcnMuCitUaGVyZSdzIGRybV9nZW1fcHJpbWVfbW1hcCgpIGZvciB0aGlzIG5vdywg
YnV0IHN0aWxsIG5lZWRzIHRvIGJlIHJvbGxlZCBvdXQuCiAKIENvbnRhY3Q6IERhbmllbCBWZXR0
ZXIKIAotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
