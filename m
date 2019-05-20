Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A38F0242F2
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2019 23:39:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 180E089148;
	Mon, 20 May 2019 21:39:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com
 [IPv6:2a00:1450:4864:20::544])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35FBF89148
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2019 21:39:53 +0000 (UTC)
Received: by mail-ed1-x544.google.com with SMTP id w33so25942053edb.10
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2019 14:39:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DucpRdkRgOoCBrOy6KiJUJJfWEr/7+ZCIIaJ4AvhfB0=;
 b=RTYrQZm60Tn5eUggjfFVIwEcRp9IxrnOnGDOtxVkp0+RlijZmGzewESAwyO/XNeV40
 DrcYjWpSgJAdlpWfw4LSW+MW1RB+cYKj1ZSfLg2tVxRWw0t+N77QRA2a9/a7UIjnaVfh
 OeoU/dRdRdBao/DIK7R6HnwDXw0TbFzrOKJChAKtZn/s40SLavMHkV7AflWl1kLdICkG
 VW7EvBPYn7t9jDLuEHV+ZrERfH+L7F5XK8imgoBYKE3m9KqrCraSl1XxB9k294JcFIfQ
 /BkAVGJXN6529lYfK7u+SMOexr/rWwtqjB5XK5+CPB+linekHPRcGXG/g7E/wnL92kzm
 DnGw==
X-Gm-Message-State: APjAAAWJ84J23/iLwBZ2cr2B+T4qXvYbm92bdZXxMv9W/mZ0dwy0LbU/
 PPOeJ3EYBm4le78xvvRrS/ezlQ==
X-Google-Smtp-Source: APXvYqzzZ2kpVp8haHdbToY3y03B93IZ2fARLhOO1vyR6C1AaG3mgxQcALaUAvLZsqLVYAWfP3KDjg==
X-Received: by 2002:a50:b865:: with SMTP id k34mr79563563ede.16.1558388391895; 
 Mon, 20 May 2019 14:39:51 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id v27sm3285772eja.68.2019.05.20.14.39.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 14:39:51 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 20 May 2019 23:39:42 +0200
Message-Id: <20190520213945.17046-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DucpRdkRgOoCBrOy6KiJUJJfWEr/7+ZCIIaJ4AvhfB0=;
 b=HKq8DuysKW6hx7l8Yig0NV9UpMzIOK98ALTyHYlWExOE6Pc4XsceN9CwZTMEZ+y6cw
 Cotb3dp0LmPi/TnfsGu9Mc8wGpsj9yCkmJXIekv1AWGWZdRazvo+2R7pulay1RKnKq5x
 V5EN38iDPb1UvcB2ERZ4RtefPoEDwb5qTXLcw=
Subject: [Intel-gfx] [PATCH 1/4] mm: Check if mmu notifier callbacks are
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
Cc: Michal Hocko <mhocko@suse.com>, Daniel Vetter <daniel.vetter@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>, Linux MM <linux-mm@kvack.org>,
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
ZXdvcmtpbmcgZXZlcnl0aGluZy4KCkNjOiBBbmRyZXcgTW9ydG9uIDxha3BtQGxpbnV4LWZvdW5k
YXRpb24ub3JnPgpDYzogTWljaGFsIEhvY2tvIDxtaG9ja29Ac3VzZS5jb20+CkNjOiAiQ2hyaXN0
aWFuIEvDtm5pZyIgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KQ2M6IERhdmlkIFJpZW50amVz
IDxyaWVudGplc0Bnb29nbGUuY29tPgpDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBm
ZndsbC5jaD4KQ2M6ICJKw6lyw7RtZSBHbGlzc2UiIDxqZ2xpc3NlQHJlZGhhdC5jb20+CkNjOiBs
aW51eC1tbUBrdmFjay5vcmcKQ2M6IFBhb2xvIEJvbnppbmkgPHBib256aW5pQHJlZGhhdC5jb20+
ClJldmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+
ClNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgot
LS0KIG1tL21tdV9ub3RpZmllci5jIHwgMyArKysKIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlv
bnMoKykKCmRpZmYgLS1naXQgYS9tbS9tbXVfbm90aWZpZXIuYyBiL21tL21tdV9ub3RpZmllci5j
CmluZGV4IGVlMzYwNjgwNzdiNi4uYzA1ZTQwNmE3Y2Q3IDEwMDY0NAotLS0gYS9tbS9tbXVfbm90
aWZpZXIuYworKysgYi9tbS9tbXVfbm90aWZpZXIuYwpAQCAtMTgxLDYgKzE4MSw5IEBAIGludCBf
X21tdV9ub3RpZmllcl9pbnZhbGlkYXRlX3JhbmdlX3N0YXJ0KHN0cnVjdCBtbXVfbm90aWZpZXJf
cmFuZ2UgKnJhbmdlKQogCQkJCXByX2luZm8oIiVwUyBjYWxsYmFjayBmYWlsZWQgd2l0aCAlZCBp
biAlc2Jsb2NrYWJsZSBjb250ZXh0LlxuIiwKIAkJCQkJbW4tPm9wcy0+aW52YWxpZGF0ZV9yYW5n
ZV9zdGFydCwgX3JldCwKIAkJCQkJIW1tdV9ub3RpZmllcl9yYW5nZV9ibG9ja2FibGUocmFuZ2Up
ID8gIm5vbi0iIDogIiIpOworCQkJCWlmICghbW11X25vdGlmaWVyX3JhbmdlX2Jsb2NrYWJsZShy
YW5nZSkpCisJCQkJCXByX3dhcm4oIiVwUyBjYWxsYmFjayBmYWlsdXJlIG5vdCBhbGxvd2VkXG4i
LAorCQkJCQkJbW4tPm9wcy0+aW52YWxpZGF0ZV9yYW5nZV9zdGFydCk7CiAJCQkJcmV0ID0gX3Jl
dDsKIAkJCX0KIAkJfQotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
