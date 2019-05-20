Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D5B2242FA
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2019 23:40:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 852D789243;
	Mon, 20 May 2019 21:40:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com
 [IPv6:2a00:1450:4864:20::543])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF33089180
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2019 21:39:56 +0000 (UTC)
Received: by mail-ed1-x543.google.com with SMTP id j12so25975360eds.7
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2019 14:39:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=eXUjiROiFGqrcZrxiXfMd6x0O70wFn+SjDBkygnZtOE=;
 b=PRUvfm6DiiBQ06smNWVO/Fct8rfiZLU3OzraE8PpNVkxLUVXuzwlTGCZ5kRp9PZSIU
 nNZ536wEKHKva/YtDvZKXSFdSdqbPvOj/exIZJTPsLLWupo6BD8nbMCbWJbVLRfOK4gP
 1Vwn6m/bUewXMd5JhZq6FqpkyOsMtkY8egqmRK7yiMsTdsb2vrRkJ5ZW3vNnfDpdgfFG
 Ei0+EjHTpoI+JOz35gkujQKpw46rzd5UXGrXb9E9vaC6UrWCIakN5Xpx+mEef9N8BWp6
 jyjSi1fFKRaQcrV6vqb6lQKbszWmEEb9eZYv2DdQ/F12jWAt23GcXVVF27gFCKI864I5
 2h0Q==
X-Gm-Message-State: APjAAAVoAGzMwTUVQ/l6We3HhtPIwR8+n/mBd1vw/UHIsuh8PSUsy4hr
 fgqp2yp+y0J6XBWsnjLJSbf8Ig==
X-Google-Smtp-Source: APXvYqz2Kva8jHAMyBKyLi3aGikci686nvq4u0U8stYOPI/ZCt3pyHtCQHVoinWV1c/CI2ko59Od2g==
X-Received: by 2002:a17:906:4d4f:: with SMTP id
 b15mr1630714ejv.116.1558388395426; 
 Mon, 20 May 2019 14:39:55 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id v27sm3285772eja.68.2019.05.20.14.39.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 14:39:54 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 20 May 2019 23:39:44 +0200
Message-Id: <20190520213945.17046-3-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190520213945.17046-1-daniel.vetter@ffwll.ch>
References: <20190520213945.17046-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=eXUjiROiFGqrcZrxiXfMd6x0O70wFn+SjDBkygnZtOE=;
 b=HE+2jI9yKoWCqEtPmGEmHm4ylYNZon4lbb4PF4NHS53IZxF8pOEgpY8SO8PWwjK/yd
 Kr/K3az9UYI2fpQ8PMsRr6OEK8DOagVNchYQwPKerYeVImZ6A8MUoeqdUStHHSrf9OL7
 JAAzKQQ0avwTjuYS01lKURpWOQUYPaK/I6Hmg=
Subject: [Intel-gfx] [PATCH 3/4] mm,
 notifier: Catch sleeping/blocking for !blockable
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
Cc: Michal Hocko <mhocko@suse.com>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>, Linux MM <linux-mm@kvack.org>,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 David Rientjes <rientjes@google.com>, Daniel Vetter <daniel.vetter@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2UgbmVlZCB0byBtYWtlIHN1cmUgaW1wbGVtZW50YXRpb25zIGRvbid0IGNoZWF0IGFuZCBkb24n
dCBoYXZlIGEKcG9zc2libGUgc2NoZWR1bGUvYmxvY2tpbmcgcG9pbnQgZGVlcGx5IGJ1cnJpZWQg
d2hlcmUgcmV2aWV3IGNhbid0CmNhdGNoIGl0LgoKSSdtIG5vdCBzdXJlIHdoZXRoZXIgdGhpcyBp
cyB0aGUgYmVzdCB3YXkgdG8gbWFrZSBzdXJlIGFsbCB0aGUKbWlnaHRfc2xlZXAoKSBjYWxsc2l0
ZXMgdHJpZ2dlciwgYW5kIGl0J3MgYSBiaXQgdWdseSBpbiB0aGUgY29kZSBmbG93LgpCdXQgaXQg
Z2V0cyB0aGUgam9iIGRvbmUuCgpJbnNwaXJlZCBieSBhbiBpOTE1IHBhdGNoIHNlcmllcyB3aGlj
aCBkaWQgZXhhY3RseSB0aGF0LCBiZWNhdXNlIHRoZQpydWxlcyBoYXZlbid0IGJlZW4gZW50aXJl
bHkgY2xlYXIgdG8gdXMuCgp2MjogVXNlIHRoZSBzaGlueSBuZXcgbm9uX2Jsb2NrX3N0YXJ0L2Vu
ZCBhbm5vdGF0aW9ucyBpbnN0ZWFkIG9mCmFidXNpbmcgcHJlZW1wdF9kaXNhYmxlL2VuYWJsZS4K
CnYzOiBSZWJhc2Ugb24gdG9wIG9mIEdsaXNzZSdzIGFyZyByZXdvcmsuCgp2NDogUmViYXNlIG9u
IHRvcCBvZiBtb3JlIEdsaXNzZSByZXdvcmsuCgpDYzogQW5kcmV3IE1vcnRvbiA8YWtwbUBsaW51
eC1mb3VuZGF0aW9uLm9yZz4KQ2M6IE1pY2hhbCBIb2NrbyA8bWhvY2tvQHN1c2UuY29tPgpDYzog
RGF2aWQgUmllbnRqZXMgPHJpZW50amVzQGdvb2dsZS5jb20+CkNjOiAiQ2hyaXN0aWFuIEvDtm5p
ZyIgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52
ZXR0ZXJAZmZ3bGwuY2g+CkNjOiAiSsOpcsO0bWUgR2xpc3NlIiA8amdsaXNzZUByZWRoYXQuY29t
PgpDYzogbGludXgtbW1Aa3ZhY2sub3JnClJldmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxj
aHJpc3RpYW4ua29lbmlnQGFtZC5jb20+ClNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRh
bmllbC52ZXR0ZXJAaW50ZWwuY29tPgotLS0KIG1tL21tdV9ub3RpZmllci5jIHwgOCArKysrKysr
LQogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAt
LWdpdCBhL21tL21tdV9ub3RpZmllci5jIGIvbW0vbW11X25vdGlmaWVyLmMKaW5kZXggYzA1ZTQw
NmE3Y2Q3Li5hMDllNzM3NzExZDUgMTAwNjQ0Ci0tLSBhL21tL21tdV9ub3RpZmllci5jCisrKyBi
L21tL21tdV9ub3RpZmllci5jCkBAIC0xNzYsNyArMTc2LDEzIEBAIGludCBfX21tdV9ub3RpZmll
cl9pbnZhbGlkYXRlX3JhbmdlX3N0YXJ0KHN0cnVjdCBtbXVfbm90aWZpZXJfcmFuZ2UgKnJhbmdl
KQogCWlkID0gc3JjdV9yZWFkX2xvY2soJnNyY3UpOwogCWhsaXN0X2Zvcl9lYWNoX2VudHJ5X3Jj
dShtbiwgJnJhbmdlLT5tbS0+bW11X25vdGlmaWVyX21tLT5saXN0LCBobGlzdCkgewogCQlpZiAo
bW4tPm9wcy0+aW52YWxpZGF0ZV9yYW5nZV9zdGFydCkgewotCQkJaW50IF9yZXQgPSBtbi0+b3Bz
LT5pbnZhbGlkYXRlX3JhbmdlX3N0YXJ0KG1uLCByYW5nZSk7CisJCQlpbnQgX3JldDsKKworCQkJ
aWYgKCFtbXVfbm90aWZpZXJfcmFuZ2VfYmxvY2thYmxlKHJhbmdlKSkKKwkJCQlub25fYmxvY2tf
c3RhcnQoKTsKKwkJCV9yZXQgPSBtbi0+b3BzLT5pbnZhbGlkYXRlX3JhbmdlX3N0YXJ0KG1uLCBy
YW5nZSk7CisJCQlpZiAoIW1tdV9ub3RpZmllcl9yYW5nZV9ibG9ja2FibGUocmFuZ2UpKQorCQkJ
CW5vbl9ibG9ja19lbmQoKTsKIAkJCWlmIChfcmV0KSB7CiAJCQkJcHJfaW5mbygiJXBTIGNhbGxi
YWNrIGZhaWxlZCB3aXRoICVkIGluICVzYmxvY2thYmxlIGNvbnRleHQuXG4iLAogCQkJCQltbi0+
b3BzLT5pbnZhbGlkYXRlX3JhbmdlX3N0YXJ0LCBfcmV0LAotLSAKMi4yMC4xCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
