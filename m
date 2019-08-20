Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 00EBB959A4
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2019 10:34:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45F656E821;
	Tue, 20 Aug 2019 08:19:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com
 [IPv6:2a00:1450:4864:20::541])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81E976E821
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 08:19:12 +0000 (UTC)
Received: by mail-ed1-x541.google.com with SMTP id f22so5337476edt.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 01:19:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HRs5HpBA3qSqFe5qnt1LL6h0B7I2hzSM+r7A2DpfdeU=;
 b=GCikPKAQKoQcVTK71AoOVNkxPUioGK705hdz/z+MOXdsvgeYiz1JCV7wXcaI34tYZq
 gOQckqkeKWW/63MT/k4TQjq0aL9KVNXSf2DxqNeJhX+fwdvpmTpWxFKceTfWFixwH1d6
 QPLXypNyhRP/NXSBrwv1WHFyKQE7OP+S7Boi+g6V8/V3TREmH74NUlRErMeIlUKKJyIv
 yDkXOw2iwDWRbAYgL8WsHbuEqGt2uM92DHIYlVcPwfYxB1WsyuGE8ErFa2ODAl2Cdcna
 1A7D/Lx/bml87Yti4YbSmVJ/UI2eMPymKj9Q12jYLuWsFeFG24kgb8J0SdwOY63AgIyj
 eVJw==
X-Gm-Message-State: APjAAAU/OHnfuYgslgK/s7+8nLYDA6/fJeAtYbIjNvZOzWdlWfWb9dEr
 oPjP7u4igSXyjnUwBtn0D5VQHg==
X-Google-Smtp-Source: APXvYqzwk/VVcEGb/uEJb+MjHFqWnLqThVvSK3PFeDiC0L0cxhC/+XJhzn783w4kD3r5dKVWby8hcQ==
X-Received: by 2002:aa7:c498:: with SMTP id m24mr12784881edq.277.1566289150887; 
 Tue, 20 Aug 2019 01:19:10 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id fj15sm2469623ejb.78.2019.08.20.01.19.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 01:19:10 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: LKML <linux-kernel@vger.kernel.org>
Date: Tue, 20 Aug 2019 10:19:00 +0200
Message-Id: <20190820081902.24815-3-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190820081902.24815-1-daniel.vetter@ffwll.ch>
References: <20190820081902.24815-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=HRs5HpBA3qSqFe5qnt1LL6h0B7I2hzSM+r7A2DpfdeU=;
 b=H3IaTIIKcnZxd8XaCn8QCH9mcrNGjOx/ak2ybd66H0ki331clYHFNQzkO0bKWcuXsr
 Mq6+jU/jrdI7HQWeHyhaTDSfFkUDTPsmPa++H2SDWnl1ZAvHNh4YpUIn825O4i0/plh8
 z09eHCYqJKERfRBDZg/Pr+cpNjod1qv2vMJ8w=
Subject: [Intel-gfx] [PATCH 2/4] mm, notifier: Prime lockdep
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
Cc: Michal Hocko <mhocko@suse.com>, Linux MM <linux-mm@kvack.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Jason Gunthorpe <jgg@ziepe.ca>,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 Mike Rapoport <rppt@linux.vnet.ibm.com>, David Rientjes <rientjes@google.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2Ugd2FudCB0byB0ZWFjaCBsb2NrZGVwIHRoYXQgbW11IG5vdGlmaWVycyBjYW4gYmUgY2FsbGVk
IGZyb20gZGlyZWN0CnJlY2xhaW0gcGF0aHMsIHNpbmNlIG9uIG1hbnkgQ0kgc3lzdGVtcyBsb2Fk
IG1pZ2h0IG5ldmVyIHJlYWNoIHRoYXQKbGV2ZWwgKGUuZy4gd2hlbiBqdXN0IHJ1bm5pbmcgZnV6
emVyIG9yIHNtYWxsIGZ1bmN0aW9uYWwgdGVzdHMpLgoKTW90aXZhdGVkIGJ5IGEgZGlzY3Vzc2lv
biB3aXRoIEphc29uLgoKSSd2ZSBwdXQgdGhlIGFubm90YXRpb24gaW50byBtbXVfbm90aWZpZXJf
cmVnaXN0ZXIgc2luY2Ugb25seSB3aGVuIHdlCmhhdmUgbW11IG5vdGlmaWVycyByZWdpc3RlcmVk
IGlzIHRoZXJlIGFueSBwb2ludCBpbiB0ZWFjaGluZyBsb2NrZGVwCmFib3V0IHRoZW0uIEFsc28s
IHdlIGFscmVhZHkgaGF2ZSBhIGttYWxsb2MoLCBHRlBfS0VSTkVMKSwgc28gdGhpcyBpcwpzYWZl
LgoKQ2M6IEphc29uIEd1bnRob3JwZSA8amdnQHppZXBlLmNhPgpDYzogQ2hyaXMgV2lsc29uIDxj
aHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBBbmRyZXcgTW9ydG9uIDxha3BtQGxpbnV4LWZv
dW5kYXRpb24ub3JnPgpDYzogRGF2aWQgUmllbnRqZXMgPHJpZW50amVzQGdvb2dsZS5jb20+CkNj
OiAiSsOpcsO0bWUgR2xpc3NlIiA8amdsaXNzZUByZWRoYXQuY29tPgpDYzogTWljaGFsIEhvY2tv
IDxtaG9ja29Ac3VzZS5jb20+CkNjOiAiQ2hyaXN0aWFuIEvDtm5pZyIgPGNocmlzdGlhbi5rb2Vu
aWdAYW1kLmNvbT4KQ2M6IEdyZWcgS3JvYWgtSGFydG1hbiA8Z3JlZ2toQGxpbnV4Zm91bmRhdGlv
bi5vcmc+CkNjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPgpDYzogTWlr
ZSBSYXBvcG9ydCA8cnBwdEBsaW51eC52bmV0LmlibS5jb20+CkNjOiBsaW51eC1tbUBrdmFjay5v
cmcKU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+
Ci0tLQogbW0vbW11X25vdGlmaWVyLmMgfCA3ICsrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA3IGlu
c2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9tbS9tbXVfbm90aWZpZXIuYyBiL21tL21tdV9ub3Rp
Zmllci5jCmluZGV4IGQxMmUzMDc5ZTdhNC4uNTM4ZDNiYjg3ZjliIDEwMDY0NAotLS0gYS9tbS9t
bXVfbm90aWZpZXIuYworKysgYi9tbS9tbXVfbm90aWZpZXIuYwpAQCAtMjU2LDYgKzI1NiwxMyBA
QCBzdGF0aWMgaW50IGRvX21tdV9ub3RpZmllcl9yZWdpc3RlcihzdHJ1Y3QgbW11X25vdGlmaWVy
ICptbiwKIAogCUJVR19PTihhdG9taWNfcmVhZCgmbW0tPm1tX3VzZXJzKSA8PSAwKTsKIAorCWlm
IChJU19FTkFCTEVEKENPTkZJR19MT0NLREVQKSkgeworCQlmc19yZWNsYWltX2FjcXVpcmUoR0ZQ
X0tFUk5FTCk7CisJCWxvY2tfbWFwX2FjcXVpcmUoJl9fbW11X25vdGlmaWVyX2ludmFsaWRhdGVf
cmFuZ2Vfc3RhcnRfbWFwKTsKKwkJbG9ja19tYXBfcmVsZWFzZSgmX19tbXVfbm90aWZpZXJfaW52
YWxpZGF0ZV9yYW5nZV9zdGFydF9tYXApOworCQlmc19yZWNsYWltX3JlbGVhc2UoR0ZQX0tFUk5F
TCk7CisJfQorCiAJcmV0ID0gLUVOT01FTTsKIAltbXVfbm90aWZpZXJfbW0gPSBrbWFsbG9jKHNp
emVvZihzdHJ1Y3QgbW11X25vdGlmaWVyX21tKSwgR0ZQX0tFUk5FTCk7CiAJaWYgKHVubGlrZWx5
KCFtbXVfbm90aWZpZXJfbW0pKQotLSAKMi4yMy4wLnJjMQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
