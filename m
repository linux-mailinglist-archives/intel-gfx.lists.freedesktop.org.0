Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 687FB46A04
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 22:36:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4877F89333;
	Fri, 14 Jun 2019 20:36:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com
 [IPv6:2a00:1450:4864:20::544])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A294E892CC
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 20:36:23 +0000 (UTC)
Received: by mail-ed1-x544.google.com with SMTP id k8so5195189edr.11
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 13:36:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NCigECl+eLv0j+gr5RVk62juHsPhtgdWifjAskWwSiY=;
 b=srzZOGVuiKxNcocdy6SpYYBQDtfDPymj7SCsmo28WA/Ucf3oNW3fTkJczvhdARI/mv
 W7OcVly0qj5N8K8yO8whscbuUvSPIpuNOh7oOx9SMpPjj9F3LWrbKnL+ZHE2GlWqDUFC
 Jp4kt1X9fk37MjxahSVGOmHew/PjlVLzp2MnRsgSfHHZJW50WZP5G3DBQYTnuO6F3WWY
 cgjKB9e3W8qLEyJ4tTHPqi3doEOWuCYPlJX/AHKpBHCI3ysWRwdAV3MhNuDh3DF46UyM
 QtyN0ykyU14ec/RdKjqWEtI+iucWRJyAprBtMYVgbS2ZjOaLK5/ziszeT38foP0sGmL8
 /YLw==
X-Gm-Message-State: APjAAAXfzEqy0606uwCTrkV5C42iSlYXA4hAxfB8jjD9a2MlvTZCrBAe
 MSi4dRdmooA9Hf4BR2ASAtjKng==
X-Google-Smtp-Source: APXvYqxT3nBqL8oJ4M0ZY8FyqH+UmBFUSiZZ8sZRMVzCh3pErU/LZ7pZK42HigoG9iw2kI9F8i1Q8A==
X-Received: by 2002:a17:906:31c8:: with SMTP id
 f8mr78452703ejf.131.1560544582301; 
 Fri, 14 Jun 2019 13:36:22 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id n15sm1166672edd.49.2019.06.14.13.36.21
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 13:36:21 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 14 Jun 2019 22:35:17 +0200
Message-Id: <20190614203615.12639-2-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NCigECl+eLv0j+gr5RVk62juHsPhtgdWifjAskWwSiY=;
 b=UR9o2pSzx9iUjZe80Z77JCadYkzDYmrMZbuBz7lJgZlxYKy8JQGWIR2lMSirJqZr3w
 8k87vuljQsCaTvV4XgWG5yBbYhodZZD+KTchDT6j6rHpT+8vPUYpJX5FO9m9pzBgHpcQ
 cviy2No2WNl8wo+uzr+YTJRmnbOORuvPM6KIw=
Subject: [Intel-gfx] [PATCH 01/59] drm/todo: Improve drm_gem_object funcs
 todo
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
Cc: Rob Herring <robh@kernel.org>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Gerd Hoffmann <kraxel@redhat.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2UncmUga2luZGEgZ29pbmcgaW4gdGhlIHdyb25nIGRpcmVjdGlvbi4gU3BvdHRlZCB3aGlsZSB0
eXBpbmcgYmV0dGVyCmdlbS9wcmltZSBkb2NzLgoKQ2M6IFRob21hcyBaaW1tZXJtYW5uIDx0emlt
bWVybWFubkBzdXNlLmRlPgpDYzogR2VyZCBIb2ZmbWFubiA8a3JheGVsQHJlZGhhdC5jb20+CkNj
OiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3JnPgpDYzogTm9yYWxmIFRyw7hubmVzIDxub3Jh
bGZAdHJvbm5lcy5vcmc+ClNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0
ZXJAaW50ZWwuY29tPgotLS0KIERvY3VtZW50YXRpb24vZ3B1L3RvZG8ucnN0IHwgNCArKysrCiAx
IGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlv
bi9ncHUvdG9kby5yc3QgYi9Eb2N1bWVudGF0aW9uL2dwdS90b2RvLnJzdAppbmRleCBiNGE3NmMy
NzAzZTUuLjIzNTgzZjBlMzc1NSAxMDA2NDQKLS0tIGEvRG9jdW1lbnRhdGlvbi9ncHUvdG9kby5y
c3QKKysrIGIvRG9jdW1lbnRhdGlvbi9ncHUvdG9kby5yc3QKQEAgLTIyOCw2ICsyMjgsMTAgQEAg
c3RydWN0IGRybV9nZW1fb2JqZWN0X2Z1bmNzCiBHRU0gb2JqZWN0cyBjYW4gbm93IGhhdmUgYSBm
dW5jdGlvbiB0YWJsZSBpbnN0ZWFkIG9mIGhhdmluZyB0aGUgY2FsbGJhY2tzIG9uIHRoZQogRFJN
IGRyaXZlciBzdHJ1Y3QuIFRoaXMgaXMgbm93IHRoZSBwcmVmZXJyZWQgd2F5IGFuZCBkcml2ZXJz
IGNhbiBiZSBtb3ZlZCBvdmVyLgogCitVbmZvcnR1bmF0ZWx5IHNvbWUgb2YgdGhlIHJlY2VudGx5
IGFkZGVkIEdFTSBoZWxwZXJzIGFyZSBnb2luZyBpbiB0aGUgd3JvbmcKK2RpcmVjdGlvbiBieSBh
ZGRpbmcgT1BTIG1hY3JvcyB0aGF0IHVzZSB0aGUgb2xkLCBkZXByZWNhdGVkIGhvb2tzLiBTZWUK
K0RSTV9HRU1fQ01BX1ZNQVBfRFJJVkVSX09QUywgRFJNX0dFTV9TSE1FTV9EUklWRVJfT1BTLCBh
bmQgRFJNX0dFTV9WUkFNX0RSSVZFUl9QUklNRS4KKwogVXNlIERSTV9NT0RFU0VUX0xPQ0tfQUxM
XyogaGVscGVycyBpbnN0ZWFkIG9mIGJvaWxlcnBsYXRlCiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KIAotLSAKMi4yMC4xCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
