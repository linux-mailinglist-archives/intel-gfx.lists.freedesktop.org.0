Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 162758DE99
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Aug 2019 22:20:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2DDB6E82F;
	Wed, 14 Aug 2019 20:20:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com
 [IPv6:2a00:1450:4864:20::541])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EB6A6E82C
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Aug 2019 20:20:35 +0000 (UTC)
Received: by mail-ed1-x541.google.com with SMTP id m44so343538edd.9
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Aug 2019 13:20:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nWZWsKOfmIl4yNVyC1A/XslquByM6vO1WGS7Kz0bD8U=;
 b=kGe/RYGRa3nHKpG1FeQ0ctdVcPHqD9//Hd57WKhge8co3TudOZK7ivEfDwJWtDEpmb
 GJBBkfgH3EZCDVTqi70huq8yFkB+0PJox4URRkBQyoyFiaMNGMEAprmx4dBhj+wGSVuC
 qMBw2kwrOG8JBzIEwTf0t1NM3Dx9DYYcWzQwYF2SfEhLwxvst4QeTTbbymL3f4gWHloB
 J8Q3Bv4n2KWWr74qjmggshKRPNiiMt6onWwEDTTNWDHg1FOgzRPJKnM3qX8+zhgPgl8D
 /aPxYIfbqvYcgyxElwPdhrA5k9wcr/CHxLWjOTvASnwtuM4KWXjEC1OmpcCRSugCHQVd
 8+yQ==
X-Gm-Message-State: APjAAAWRhrsBwJabNhxuYyvWwKZTSHjyDuD4Rn31wPcSARx9e5kwlPIP
 uLWWQaOK812k25GUWqoVN/F+1kns2JvDIw==
X-Google-Smtp-Source: APXvYqw0SI+1ky3oT9vQxF5bI61NxCDkMXiJWr+jVakG6fqDm3c/lfxYyJWqP0bvugFJUIGMMW1jXQ==
X-Received: by 2002:a17:906:5042:: with SMTP id
 e2mr1299846ejk.220.1565814033793; 
 Wed, 14 Aug 2019 13:20:33 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id ns22sm84342ejb.9.2019.08.14.13.20.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Aug 2019 13:20:33 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: LKML <linux-kernel@vger.kernel.org>
Date: Wed, 14 Aug 2019 22:20:22 +0200
Message-Id: <20190814202027.18735-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nWZWsKOfmIl4yNVyC1A/XslquByM6vO1WGS7Kz0bD8U=;
 b=SVq5cWxfnMTCbnzjMxfAenRqPrywZHCY7aSYPqhjndhFoxhSpIaewsuAAbQ+hxRege
 LlE77zS9n3UHrI63NXV/R4kzhjhCsYIyspu6VzmOq3rB3oTT4FTYaoEIf2AXE4TNZw67
 EpRfZR5Lx03CDLH2/rXob/8M+d0YAjVHOhE5s=
Subject: [Intel-gfx] [PATCH 0/5] hmm & mmu_notifier debug/lockdep annotations
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
Cc: linux-mm@kvack.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgYWxsIChidXQgSSBndWVzcyBtb3N0bHkgSmFzb24pLAoKRmluYWxseSBnb3R0ZW4gYXJvdW5k
IHRvIHJlYmFzaW5nIHRoZSBwcmV2aW91cyB2ZXJzaW9uLCBmaXhpbmcgdGhlIHJlYmFzZQpmYWls
IGluIHRoZXJlLCB1cGRhdGUgdGhlIGNvbW1pdCBtZXNzYWdlIGEgYml0IGFuZCBnaXZlIHRoaXMg
YSBzcGluIHdpdGgKc29tZSB0ZXN0cy4gTmljZWx5IGNhdWdodCBhIGxvY2tkZXAgc3BsYXQgdGhh
dCB3ZSdyZSBub3cgZGlzY3Vzc2luZyBpbgppOTE1LCBhbmQgc2VlbXMgdG8gbm90IGhhdmUgbWlz
ZmlyZWQgYW55d2hlcmUgZWxzZSAoaW5jbHVkaW5nIGEgZmV3IG9vbSkuCgpSZXZpZXcsIGNvbW1l
bnRzIGFuZCBldmVyeXRoaW5nIHZlcnkgbXVjaCBhcHByZWNpYXRlZC4gUGx1cyBJJ2QgcmVhbGx5
Cmxpa2UgdG8gbGFuZCB0aGlzLCB0aGVyZSdzIG1vcmUgaG1tX21pcnJvciB1c2VycyBpbi1mbGln
aHQsIGFuZCBJJ3ZlIHNlZW4Kc29tZSB0aGF0IGdldCB0aGluZ3Mgd3Jvbmcgd2hpY2ggdGhpcyBw
YXRjaHNldCBzaG91bGQgY2F0Y2guCgpUaGFua3MsIERhbmllbAoKRGFuaWVsIFZldHRlciAoNSk6
CiAgbW06IENoZWNrIGlmIG1tdSBub3RpZmllciBjYWxsYmFja3MgYXJlIGFsbG93ZWQgdG8gZmFp
bAogIGtlcm5lbC5oOiBBZGQgbm9uX2Jsb2NrX3N0YXJ0L2VuZCgpCiAgbW0sIG5vdGlmaWVyOiBD
YXRjaCBzbGVlcGluZy9ibG9ja2luZyBmb3IgIWJsb2NrYWJsZQogIG1tLCBub3RpZmllcjogQWRk
IGEgbG9ja2RlcCBtYXAgZm9yIGludmFsaWRhdGVfcmFuZ2Vfc3RhcnQKICBtbS9obW06IFdBUk4g
b24gaWxsZWdhbCAtPnN5bmNfY3B1X2RldmljZV9wYWdldGFibGVzIGVycm9ycwoKIGluY2x1ZGUv
bGludXgva2VybmVsLmggICAgICAgfCAxMCArKysrKysrKystCiBpbmNsdWRlL2xpbnV4L21tdV9u
b3RpZmllci5oIHwgIDYgKysrKysrCiBpbmNsdWRlL2xpbnV4L3NjaGVkLmggICAgICAgIHwgIDQg
KysrKwoga2VybmVsL3NjaGVkL2NvcmUuYyAgICAgICAgICB8IDE5ICsrKysrKysrKysrKysrLS0t
LS0KIG1tL2htbS5jICAgICAgICAgICAgICAgICAgICAgfCAgMyArKysKIG1tL21tdV9ub3RpZmll
ci5jICAgICAgICAgICAgfCAxNyArKysrKysrKysrKysrKysrLQogNiBmaWxlcyBjaGFuZ2VkLCA1
MiBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQoKLS0gCjIuMjIuMAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
