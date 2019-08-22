Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FCB39A141
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2019 22:39:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A36A6E554;
	Thu, 22 Aug 2019 20:38:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D2646E554
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Aug 2019 20:38:56 +0000 (UTC)
Received: from localhost (unknown [40.117.208.15])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0FBB122CE3;
 Thu, 22 Aug 2019 20:38:55 +0000 (UTC)
Date: Thu, 22 Aug 2019 20:38:55 +0000
From: Sasha Levin <sashal@kernel.org>
To: Sasha Levin <sashal@kernel.org>
To: Lyude Paul <lyude@redhat.com>
To: intel-gfx@lists.freedesktop.org
In-Reply-To: <20190822200420.23485-1-lyude@redhat.com>
References: <20190822200420.23485-1-lyude@redhat.com>
Message-Id: <20190822203856.0FBB122CE3@mail.kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=default; t=1566506336;
 bh=aDeDblE2k39A6/XUjHqjcmffCkacYcWoH87vS4xfqYM=;
 h=Date:From:To:To:To:Cc:Cc:Cc:Subject:In-Reply-To:References:From;
 b=wUeWf1XLVKMXU1FVroNZu3VKweyD44zsEfyNUBjyIpubU/NZO3qb20AHAmaI5E2T9
 LZZOTmcR6Up6syanwfV9Wth47jWpm/WvpmazxgqFIWFAxyQzzl7t1SNcYHXPNzDW0M
 X/wYSa41LMVJjex+MawJ8T3DuY7j2SFOM7QioC0o=
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Call dma_set_max_seg_size() in
 i915_ggtt_probe_hw()
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
Cc: , stable@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksCgpbVGhpcyBpcyBhbiBhdXRvbWF0ZWQgZW1haWxdCgpUaGlzIGNvbW1pdCBoYXMgYmVlbiBw
cm9jZXNzZWQgYmVjYXVzZSBpdCBjb250YWlucyBhIC1zdGFibGUgdGFnLgpUaGUgc3RhYmxlIHRh
ZyBpbmRpY2F0ZXMgdGhhdCBpdCdzIHJlbGV2YW50IGZvciB0aGUgZm9sbG93aW5nIHRyZWVzOiA0
LjE4KwoKVGhlIGJvdCBoYXMgdGVzdGVkIHRoZSBmb2xsb3dpbmcgdHJlZXM6IHY1LjIuOSwgdjQu
MTkuNjcuCgp2NS4yLjk6IEZhaWxlZCB0byBhcHBseSEgUG9zc2libGUgZGVwZW5kZW5jaWVzOgog
ICAgVW5hYmxlIHRvIGNhbGN1bGF0ZQoKdjQuMTkuNjc6IEZhaWxlZCB0byBhcHBseSEgUG9zc2li
bGUgZGVwZW5kZW5jaWVzOgogICAgVW5hYmxlIHRvIGNhbGN1bGF0ZQoKCk5PVEU6IFRoZSBwYXRj
aCB3aWxsIG5vdCBiZSBxdWV1ZWQgdG8gc3RhYmxlIHRyZWVzIHVudGlsIGl0IGlzIHVwc3RyZWFt
LgoKSG93IHNob3VsZCB3ZSBwcm9jZWVkIHdpdGggdGhpcyBwYXRjaD8KCi0tClRoYW5rcywKU2Fz
aGEKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
