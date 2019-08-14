Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7204D8DE9A
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Aug 2019 22:20:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1EEB6E830;
	Wed, 14 Aug 2019 20:20:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com
 [IPv6:2a00:1450:4864:20::544])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A9D36E82D
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Aug 2019 20:20:36 +0000 (UTC)
Received: by mail-ed1-x544.google.com with SMTP id p28so372804edi.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Aug 2019 13:20:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NGoYUnhBV7TeB+3l4wceLC9ZPh9ISIJNJOmyRzHIbHM=;
 b=GXB8chZIBMAQMYqWIxpWdk9ROmAflRYBC4j4s0Zhuwhii3fMV6c0rd0UjYs251RlXx
 wa73l17QMO/0xtBIzsRjuaEtbh7cS075vTOCiM2n5uaMiK/1hEV5r8Tvy8ILjks3092+
 El9gYxyFenE7i8BSAYV1O0+lVX0DWP2ciAiCAPELrhJT8on3rX3JpJGgMZb3O73xneQ4
 ACsW2b6RqK5rvGeurnfrMooHcnylqn4X//lBBgCkhGu+AGbZHux0zf8uqp+LhZPmUs/L
 oEPch3uRua3KmwsB+bo2WsWU3OQDTv/YbJ4sNN+ts7JBZ0c2TXeu4ELko2iBc5j9uHjp
 3WnQ==
X-Gm-Message-State: APjAAAUw7gTurrylQyJN9wWM80XFSIqYBOWg0MtkeGM4w8t16TRoNP6g
 Qi6KZ17tvbkkrS/uzx8YMkwB8g==
X-Google-Smtp-Source: APXvYqwaJ7x0tLnRLHwbItm2wgIoNWmNw2/2hrhii9cO7U6X/gWZx95a1UP7+c/DHPfmXSg1sNEoMQ==
X-Received: by 2002:a17:906:1e85:: with SMTP id
 e5mr1324797ejj.200.1565814035124; 
 Wed, 14 Aug 2019 13:20:35 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id ns22sm84342ejb.9.2019.08.14.13.20.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Aug 2019 13:20:34 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: LKML <linux-kernel@vger.kernel.org>
Date: Wed, 14 Aug 2019 22:20:23 +0200
Message-Id: <20190814202027.18735-2-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190814202027.18735-1-daniel.vetter@ffwll.ch>
References: <20190814202027.18735-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NGoYUnhBV7TeB+3l4wceLC9ZPh9ISIJNJOmyRzHIbHM=;
 b=B5pmU59ycnYBpryQhhG1Z3DbeM8Nqe5M8v1SwTte2yz8M8LB54A/UjWXYoWpYTn2Uv
 5wXLGfAUtYZN5x4CsUBfceRVwXq/4IjhgUmLTFyUKguhiSbuw71qyrATlnjMjT5+NMfu
 Y1nD5IwF07+NuCcwz0U1msvMGB0mJkgxThOFM=
Subject: [Intel-gfx] [PATCH 1/5] mm: Check if mmu notifier callbacks are
 allowed to fail
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
Cc: Michal Hocko <mhocko@suse.com>, Jason Gunthorpe <jgg@ziepe.ca>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>, linux-mm@kvack.org,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 David Rientjes <rientjes@google.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SnVzdCBhIGJpdCBvZiBwYXJhbm9pYSwgc2luY2UgaWYgd2Ugc3RhcnQgcHVzaGluZyB0aGlzIGRl
ZXAgaW50bwpjYWxsY2hhaW5zIGl0J3MgaGFyZCB0byBzcG90IGFsbCBwbGFjZXMgd2hlcmUgYW4g
bW11IG5vdGlmaWVyCmltcGxlbWVudGF0aW9uIG1pZ2h0IGZhaWwgd2hlbiBpdCdzIG5vdCBhbGxv
d2VkIHRvLgoKSW5zcGlyZWQgYnkgc29tZSBjb25mdXNpb24gd2UgaGFkIGRpc2N1c3NpbmcgaTkx
NSBtbXUgbm90aWZpZXJzIGFuZAp3aGV0aGVyIHdlIGNvdWxkIHVzZSB0aGUgbmV3bHktaW50cm9k
dWNlZCByZXR1cm4gdmFsdWUgdG8gaGFuZGxlIHNvbWUKY29ybmVyIGNhc2VzLiBVbnRpbCB3ZSBy
ZWFsaXplZCB0aGF0IHRoZXNlIGFyZSBvbmx5IGZvciB3aGVuIGEgdGFzawpoYXMgYmVlbiBraWxs
ZWQgYnkgdGhlIG9vbSByZWFwZXIuCgpBbiBhbHRlcm5hdGl2ZSBhcHByb2FjaCB3b3VsZCBiZSB0
byBzcGxpdCB0aGUgY2FsbGJhY2sgaW50byB0d28KdmVyc2lvbnMsIG9uZSB3aXRoIHRoZSBpbnQg
cmV0dXJuIHZhbHVlLCBhbmQgdGhlIG90aGVyIHdpdGggdm9pZApyZXR1cm4gdmFsdWUgbGlrZSBp
biBvbGRlciBrZXJuZWxzLiBCdXQgdGhhdCdzIGEgbG90IG1vcmUgY2h1cm4gZm9yCmZhaXJseSBs
aXR0bGUgZ2FpbiBJIHRoaW5rLgoKU3VtbWFyeSBmcm9tIHRoZSBtLWwgZGlzY3Vzc2lvbiBvbiB3
aHkgd2Ugd2FudCBzb21ldGhpbmcgYXQgd2FybmluZwpsZXZlbDogVGhpcyBhbGxvd3MgYXV0b21h
dGVkIHRvb2xpbmcgaW4gQ0kgdG8gY2F0Y2ggYnVncyB3aXRob3V0Cmh1bWFucyBoYXZpbmcgdG8g
bG9vayBhdCBldmVyeXRoaW5nLiBJZiB3ZSBqdXN0IHVwZ3JhZGUgdGhlIGV4aXN0aW5nCnByX2lu
Zm8gdG8gYSBwcl93YXJuLCB0aGVuIHdlJ2xsIGhhdmUgZmFsc2UgcG9zaXRpdmVzLiBBbmQgYXMt
aXMsIG5vCm9uZSB3aWxsIGV2ZXIgc3BvdCB0aGUgcHJvYmxlbSBzaW5jZSBpdCdzIGxvc3QgaW4g
dGhlIG1hc3NpdmUgYW1vdW50cwpvZiBvdmVyYWxsIGRtZXNnIG5vaXNlLgoKdjI6IERyb3AgdGhl
IGZ1bGwgV0FSTl9PTiBiYWNrdHJhY2UgaW4gZmF2b3VyIG9mIGp1c3QgYSBwcl93YXJuIGZvcgp0
aGUgcHJvYmxlbWF0aWMgY2FzZSAoTWljaGFsIEhvY2tvKS4KCnYzOiBSZWJhc2Ugb24gdG9wIG9m
IEdsaXNzZSdzIGFyZyByZXdvcmsuCgp2NDogTW9yZSByZWJhc2Ugb24gdG9wIG9mIEdsaXNzZSBy
ZXdvcmtpbmcgZXZlcnl0aGluZy4KCnY1OiBGaXh1cCByZWJhc2UgZGFtYWdlIGFuZCBhbHNvIGNh
dGNoIGZhaWx1cmVzICE9IEVBR0FJTiBmb3IKIWJsb2NrYWJsZSAoSmFzb24pLiBBbHNvIGdvIGJh
Y2sgdG8gV0FSTl9PTiBhcyByZXF1ZXN0ZWQgYnkgSmFzb24sIHNvCmF1dG9tYXRpYyBjaGVja2Vy
cyBjYW4gZWFzaWx5IGNhdGNoIGJ1Z3MgYnkgc2V0dGluZyBwYW5pY19vbl93YXJuLgoKQ2M6IEFu
ZHJldyBNb3J0b24gPGFrcG1AbGludXgtZm91bmRhdGlvbi5vcmc+CkNjOiBNaWNoYWwgSG9ja28g
PG1ob2Nrb0BzdXNlLmNvbT4KQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hyaXN0aWFuLmtvZW5p
Z0BhbWQuY29tPgpDYzogRGF2aWQgUmllbnRqZXMgPHJpZW50amVzQGdvb2dsZS5jb20+CkNjOiBE
YW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPgpDYzogIkrDqXLDtG1lIEdsaXNz
ZSIgPGpnbGlzc2VAcmVkaGF0LmNvbT4KQ2M6IGxpbnV4LW1tQGt2YWNrLm9yZwpDYzogUGFvbG8g
Qm9uemluaSA8cGJvbnppbmlAcmVkaGF0LmNvbT4KQ2M6IEphc29uIEd1bnRob3JwZSA8amdnQHpp
ZXBlLmNhPgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVs
LmNvbT4KLS0tCiBtbS9tbXVfbm90aWZpZXIuYyB8IDIgKysKIDEgZmlsZSBjaGFuZ2VkLCAyIGlu
c2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9tbS9tbXVfbm90aWZpZXIuYyBiL21tL21tdV9ub3Rp
Zmllci5jCmluZGV4IGI1NjcwNjIwYWVhMC4uMTZmMWNiYzc3NWQwIDEwMDY0NAotLS0gYS9tbS9t
bXVfbm90aWZpZXIuYworKysgYi9tbS9tbXVfbm90aWZpZXIuYwpAQCAtMTc5LDYgKzE3OSw4IEBA
IGludCBfX21tdV9ub3RpZmllcl9pbnZhbGlkYXRlX3JhbmdlX3N0YXJ0KHN0cnVjdCBtbXVfbm90
aWZpZXJfcmFuZ2UgKnJhbmdlKQogCQkJCXByX2luZm8oIiVwUyBjYWxsYmFjayBmYWlsZWQgd2l0
aCAlZCBpbiAlc2Jsb2NrYWJsZSBjb250ZXh0LlxuIiwKIAkJCQkJbW4tPm9wcy0+aW52YWxpZGF0
ZV9yYW5nZV9zdGFydCwgX3JldCwKIAkJCQkJIW1tdV9ub3RpZmllcl9yYW5nZV9ibG9ja2FibGUo
cmFuZ2UpID8gIm5vbi0iIDogIiIpOworCQkJCVdBUk5fT04obW11X25vdGlmaWVyX3JhbmdlX2Js
b2NrYWJsZShyYW5nZSkgfHwKKwkJCQkJcmV0ICE9IC1FQUdBSU4pOwogCQkJCXJldCA9IF9yZXQ7
CiAJCQl9CiAJCX0KLS0gCjIuMjIuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
