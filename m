Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 858C48DEA1
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Aug 2019 22:20:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A7926E834;
	Wed, 14 Aug 2019 20:20:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com
 [IPv6:2a00:1450:4864:20::544])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EC9D6E831
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Aug 2019 20:20:39 +0000 (UTC)
Received: by mail-ed1-x544.google.com with SMTP id x19so330358eda.12
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Aug 2019 13:20:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dDjwUmcwSXAq578UY4c9Vj0FS6SCgLfjeiZG1PLwBhc=;
 b=DBg/oqTrtcdjF0o7IHV22Up/ObSmxMG/6Uce1yl/ZQLHN1mJDQE874/wm49tWwrh9F
 y82hlSJ+HWLUYkmfUu8fVm4YKw5s2itkumG6btxixfG8o+et4eJrmk85AQnc5HdDtX2z
 2rTVfWt9O9N3HiObMfWC3YR8Ogc7/xHxU+YBx1xmiLN9wCbcwql5QQ6Z+qe7PKYA3t+5
 A2lomvw3wKWm/rfa5SZCI6mzJR91pT5PgkoCNlsjFG7G77f785ElDcrFTfPDnnqqfVFv
 hm7CPOmQbZYPKZKl5mrv3G7Ioh1fIAo+7nEvMSoAZOloWI2m9Juo+kiV8bZVCdBBd37M
 ZFXQ==
X-Gm-Message-State: APjAAAV5KfHHHbvyFQyER3AoyeREuwmfrE6DgkSYyT+G1cu+5qo3jjh8
 mBk2IU/CCrou5aBocc7ImYDgvw==
X-Google-Smtp-Source: APXvYqzQoXvD/5/BVfPi68WzUkMpSm1CHWB0tkEH2JnEfPgw2NOD1Bv5GUgUamH3qvvNe7OEQP+Ihw==
X-Received: by 2002:a17:906:81cb:: with SMTP id
 e11mr1305807ejx.37.1565814037763; 
 Wed, 14 Aug 2019 13:20:37 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id ns22sm84342ejb.9.2019.08.14.13.20.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Aug 2019 13:20:37 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: LKML <linux-kernel@vger.kernel.org>
Date: Wed, 14 Aug 2019 22:20:25 +0200
Message-Id: <20190814202027.18735-4-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190814202027.18735-1-daniel.vetter@ffwll.ch>
References: <20190814202027.18735-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dDjwUmcwSXAq578UY4c9Vj0FS6SCgLfjeiZG1PLwBhc=;
 b=QQneGltVZyDVKndymgf/V07Lz/mVu4xKZlufq/IsuBlC5+1QN4bp7NWpobW8CC1rIF
 qIF8ZHgfa3ZzNQCa9U+7EASFdi6fg9QrXsipXLij2jwCn91t6FCHDSnO4dCluu2ktfVm
 26tp0nC+Bvb3QHNr2PBbwL8HmhMnTo4N7ChVI=
Subject: [Intel-gfx] [PATCH 3/5] mm,
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
Cc: Michal Hocko <mhocko@suse.com>, linux-mm@kvack.org,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Jason Gunthorpe <jgg@ziepe.ca>,
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
IHRvcCBvZiBtb3JlIEdsaXNzZSByZXdvcmsuCgpDYzogSmFzb24gR3VudGhvcnBlIDxqZ2dAemll
cGUuY2E+CkNjOiBBbmRyZXcgTW9ydG9uIDxha3BtQGxpbnV4LWZvdW5kYXRpb24ub3JnPgpDYzog
TWljaGFsIEhvY2tvIDxtaG9ja29Ac3VzZS5jb20+CkNjOiBEYXZpZCBSaWVudGplcyA8cmllbnRq
ZXNAZ29vZ2xlLmNvbT4KQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hyaXN0aWFuLmtvZW5pZ0Bh
bWQuY29tPgpDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KQ2M6ICJK
w6lyw7RtZSBHbGlzc2UiIDxqZ2xpc3NlQHJlZGhhdC5jb20+CkNjOiBsaW51eC1tbUBrdmFjay5v
cmcKUmV2aWV3ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNv
bT4KUmV2aWV3ZWQtYnk6IErDqXLDtG1lIEdsaXNzZSA8amdsaXNzZUByZWRoYXQuY29tPgpTaWdu
ZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KLS0tCiBt
bS9tbXVfbm90aWZpZXIuYyB8IDggKysrKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlv
bnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9tbS9tbXVfbm90aWZpZXIuYyBiL21t
L21tdV9ub3RpZmllci5jCmluZGV4IDE2ZjFjYmM3NzVkMC4uNDNhNzZkMDMwMTY0IDEwMDY0NAot
LS0gYS9tbS9tbXVfbm90aWZpZXIuYworKysgYi9tbS9tbXVfbm90aWZpZXIuYwpAQCAtMTc0LDcg
KzE3NCwxMyBAQCBpbnQgX19tbXVfbm90aWZpZXJfaW52YWxpZGF0ZV9yYW5nZV9zdGFydChzdHJ1
Y3QgbW11X25vdGlmaWVyX3JhbmdlICpyYW5nZSkKIAlpZCA9IHNyY3VfcmVhZF9sb2NrKCZzcmN1
KTsKIAlobGlzdF9mb3JfZWFjaF9lbnRyeV9yY3UobW4sICZyYW5nZS0+bW0tPm1tdV9ub3RpZmll
cl9tbS0+bGlzdCwgaGxpc3QpIHsKIAkJaWYgKG1uLT5vcHMtPmludmFsaWRhdGVfcmFuZ2Vfc3Rh
cnQpIHsKLQkJCWludCBfcmV0ID0gbW4tPm9wcy0+aW52YWxpZGF0ZV9yYW5nZV9zdGFydChtbiwg
cmFuZ2UpOworCQkJaW50IF9yZXQ7CisKKwkJCWlmICghbW11X25vdGlmaWVyX3JhbmdlX2Jsb2Nr
YWJsZShyYW5nZSkpCisJCQkJbm9uX2Jsb2NrX3N0YXJ0KCk7CisJCQlfcmV0ID0gbW4tPm9wcy0+
aW52YWxpZGF0ZV9yYW5nZV9zdGFydChtbiwgcmFuZ2UpOworCQkJaWYgKCFtbXVfbm90aWZpZXJf
cmFuZ2VfYmxvY2thYmxlKHJhbmdlKSkKKwkJCQlub25fYmxvY2tfZW5kKCk7CiAJCQlpZiAoX3Jl
dCkgewogCQkJCXByX2luZm8oIiVwUyBjYWxsYmFjayBmYWlsZWQgd2l0aCAlZCBpbiAlc2Jsb2Nr
YWJsZSBjb250ZXh0LlxuIiwKIAkJCQkJbW4tPm9wcy0+aW52YWxpZGF0ZV9yYW5nZV9zdGFydCwg
X3JldCwKLS0gCjIuMjIuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
