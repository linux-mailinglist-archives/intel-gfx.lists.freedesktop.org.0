Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2F7C46AE9
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 22:39:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDB3C8946E;
	Fri, 14 Jun 2019 20:37:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com
 [IPv6:2a00:1450:4864:20::543])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC39589861
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 20:37:28 +0000 (UTC)
Received: by mail-ed1-x543.google.com with SMTP id p15so5226373eds.8
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 13:37:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yvL73GVoINdhNnVubpUzKj2ETKHlC4lNPOPbS+G8PA4=;
 b=nxWWe99V8pxooLltW2zg+5snYJrC41XoEG9w28fft4/migEJzzc3+qt3ufgaRqy+bZ
 rPocfYFPStOosLfQVdvqBZZShz3s/1mxFNY7Y+JD8y3zKdLBDQS67r0H8QR93xOZHGTz
 fD/3ds05yUCRKlZqrHqGqw1v4l2DJO/26J85DvFYxhRrMD7BW7CnoFEe9KWcOrxB3EiV
 YTKRznhHflYAH1HNfP3O0BdNhEnYPezhtPSbn32bi4VAsmhaWSFd/wK5lqGfbxKjynAE
 RG3vrQ3cEdg2JsViPW5pQGtU5O07jWRMEYGMzsDxVsObowYutaZbaJoucBre8oBKvexR
 in6Q==
X-Gm-Message-State: APjAAAVY9CD7wKJXw3X+BW50T5NH03bRzQEKRG5vTmKYnOucgrhmsTvq
 RcVASZkDJEhL4vfweUGfG2vN0w==
X-Google-Smtp-Source: APXvYqwSY79Sms9DZAgKAJOgx/nmLKjgpZQTSZB/8wAoym31pj4WLJyiXKSRlom4fGdypB6cDmeQuQ==
X-Received: by 2002:a50:9590:: with SMTP id w16mr82163394eda.0.1560544646005; 
 Fri, 14 Jun 2019 13:37:26 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id n15sm1166672edd.49.2019.06.14.13.37.25
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 13:37:25 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 14 Jun 2019 22:36:12 +0200
Message-Id: <20190614203615.12639-57-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yvL73GVoINdhNnVubpUzKj2ETKHlC4lNPOPbS+G8PA4=;
 b=c68BIYb/kJ1Fo6CXnbHp0PIOLUtEi7PtlwBUIDG5mvas37o9bExx14AGL3oNxu1Dmo
 voZQOH3fzYQ4IeUgZnVZVTFuSwV3zC5qZIlXtSYvXsIStFyog9Z6SkuhyuJgmhv0lpH1
 L/X2DCDrhLYPNSZrAfE/42ay/loNfCq32/6ho=
Subject: [Intel-gfx] [PATCH 56/59] drm/todo: Update backlight todo
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

QmFzaWMgaGVscGVycyBoYXZlIGJlZW4gZXh0cmFjdGVkLCBub3cgdGhlcmUncyBhIHBpbGUgbW9y
ZSB0b2RvIHN0aWxsCmFjcm9zcyB0aGUgZW50aXJlIHRyZWUuCgpTaWduZWQtb2ZmLWJ5OiBEYW5p
ZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KLS0tCiBEb2N1bWVudGF0aW9uL2dw
dS90b2RvLnJzdCB8IDI3ICsrKysrKysrKysrKystLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5n
ZWQsIDEzIGluc2VydGlvbnMoKyksIDE0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL0RvY3Vt
ZW50YXRpb24vZ3B1L3RvZG8ucnN0IGIvRG9jdW1lbnRhdGlvbi9ncHUvdG9kby5yc3QKaW5kZXgg
MjFhN2I3ODAwZDNlLi5jNGU3YzA2NzJhMTQgMTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRpb24vZ3B1
L3RvZG8ucnN0CisrKyBiL0RvY3VtZW50YXRpb24vZ3B1L3RvZG8ucnN0CkBAIC00MjIsNiArNDIy
LDE5IEBAIGZpdCB0aGUgYXZhaWxhYmxlIHRpbWUuCiAKIENvbnRhY3Q6IERhbmllbCBWZXR0ZXIK
IAorQmFja2xpZ2h0IFJlZmFjdG9yaW5nCistLS0tLS0tLS0tLS0tLS0tLS0tLS0KKworQmFja2xp
Z2h0IGRyaXZlcnMgaGF2ZSBhIHRyaXBsZSBlbmFibGUvZGlzYWJsZSBzdGF0ZSwgd2hpY2ggaXMg
YSBiaXQgb3ZlcmtpbGwuCitQbGFuIHRvIGZpeCB0aGlzOgorCisxLiBSb2xsIG91dCBiYWNrbGln
aHRfZW5hYmxlKCkgYW5kIGJhY2tsaWdodF9kaXNhYmxlKCkgaGVscGVycyBldmVyeXdoZXJlLiBU
aGlzCisgICBoYXMgc3RhcnRlZCBhbHJlYWR5LgorMi4gSW4gYWxsLCBvbmx5IGxvb2sgYXQgb25l
IG9mIHRoZSB0aHJlZSBzdGF0dXMgYml0cyBzZXQgYnkgdGhlIGFib3ZlIGhlbHBlcnMuCiszLiBS
ZW1vdmUgdGhlIG90aGVyIHR3byBzdGF0dXMgYml0cy4KKworQ29udGFjdDogRGFuaWVsIFZldHRl
cgorCiBEcml2ZXIgU3BlY2lmaWMKID09PT09PT09PT09PT09PQogCkBAIC00MzEsMjAgKzQ0NCw2
IEBAIHRpbnlkcm0KIFRpbnlkcm0gaXMgdGhlIGhlbHBlciBkcml2ZXIgZm9yIHJlYWxseSBzaW1w
bGUgZmIgZHJpdmVycy4gVGhlIGdvYWwgaXMgdG8gbWFrZQogdGhvc2UgZHJpdmVycyBhcyBzaW1w
bGUgYXMgcG9zc2libGUsIHNvIGxvdHMgb2Ygcm9vbSBmb3IgcmVmYWN0b3Jpbmc6CiAKLS0gYmFj
a2xpZ2h0IGhlbHBlcnMsIHByb2JhYmx5IGJlc3QgdG8gcHV0IHRoZW0gaW50byBhIG5ldyBkcm1f
YmFja2xpZ2h0LmMuCi0gIFRoaXMgaXMgYmVjYXVzZSBkcml2ZXJzL3ZpZGVvIGlzIGRlLWZhY3Rv
IHVubWFpbnRhaW5lZC4gV2UgY291bGQgYWxzbwotICBtb3ZlIGRyaXZlcnMvdmlkZW8vYmFja2xp
Z2h0IHRvIGRyaXZlcnMvZ3B1L2JhY2tsaWdodCBhbmQgdGFrZSBpdCBhbGwKLSAgb3ZlciB3aXRo
aW4gZHJtLW1pc2MsIGJ1dCB0aGF0J3MgbW9yZSB3b3JrLiBCYWNrbGlnaHQgaGVscGVycyByZXF1
aXJlIGEgZmFpcgotICBiaXQgb2YgcmV3b3JraW5nIGFuZCByZWZhY3RvcmluZy4gQSBzaW1wbGUg
ZXhhbXBsZSBpcyB0aGUgZW5hYmxpbmcgb2YgYSBiYWNrbGlnaHQuCi0gIFRpbnlkcm0gaGFzIGhl
bHBlcnMgZm9yIHRoaXMuIEl0IHdvdWxkIGJlIGdvb2QgaWYgb3RoZXIgZHJpdmVycyBjYW4gYWxz
byB1c2UgdGhlCi0gIGhlbHBlci4gSG93ZXZlciwgdGhlcmUgYXJlIHZhcmlvdXMgY2FzZXMgd2Ug
bmVlZCB0byBjb25zaWRlciBpLmUgZGlmZmVyZW50Ci0gIGRyaXZlcnMgc2VlbSB0byBoYXZlIGRp
ZmZlcmVudCB3YXlzIG9mIGVuYWJsaW5nL2Rpc2FibGluZyBhIGJhY2tsaWdodC4KLSAgV2UgYWxz
byBuZWVkIHRvIGNvbnNpZGVyIHRoZSBiYWNrbGlnaHQgZHJpdmVycyAobGlrZSBncGlvX2JhY2ts
aWdodCkuIFRoZSBzaXR1YXRpb24KLSAgaXMgZnVydGhlciBjb21wbGljYXRlZCBieSB0aGUgZmFj
dCB0aGF0IHRoZSBiYWNrbGlnaHQgaXMgdGllZCB0byBmYmRldgotICB2aWEgZmJfbm90aWZpZXJf
Y2FsbGJhY2soKSB3aGljaCBoYXMgY29tcGxpY2F0ZWQgbG9naWMuIEZvciBmdXJ0aGVyIGRldGFp
bHMsIHJlZmVyCi0gIHRvIHRoZSBmb2xsb3dpbmcgZGlzY3Vzc2lvbiB0aHJlYWQ6Ci0gIGh0dHBz
Oi8vZ3JvdXBzLmdvb2dsZS5jb20vZm9ydW0vIyF0b3BpYy9vdXRyZWFjaHkta2VybmVsLzhyQmUz
MGx3dGRBCi0KIC0gc3BpIGhlbHBlcnMsIHByb2JhYmx5IGJlc3QgcHV0IGludG8gc3BpIGNvcmUv
aGVscGVyIGNvZGUuIFRoaWVycnkgc2FpZAogICB0aGUgc3BpIG1haW50YWluZXIgaXMgZmFzdCZy
ZWFjdGl2ZSwgc28gc2hvdWxkbid0IGJlIGEgYmlnIGlzc3VlLgogCi0tIAoyLjIwLjEKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
