Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E10B6D7E5
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jul 2019 02:45:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9991D6E478;
	Fri, 19 Jul 2019 00:45:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 840966E478
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jul 2019 00:45:27 +0000 (UTC)
Received: from localhost (unknown [23.100.24.84])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B0CC521850;
 Fri, 19 Jul 2019 00:45:26 +0000 (UTC)
Date: Fri, 19 Jul 2019 00:45:25 +0000
From: Sasha Levin <sashal@kernel.org>
To: Sasha Levin <sashal@kernel.org>
To: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
To: intel-gfx@lists.freedesktop.org
In-Reply-To: <20190717223451.2595-1-dhinakaran.pandiyan@intel.com>
References: <20190717223451.2595-1-dhinakaran.pandiyan@intel.com>
Message-Id: <20190719004526.B0CC521850@mail.kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=default; t=1563497126;
 bh=2HayFm+E2LfG+sXOW14O5t2FaRiPKmstlUCbfgepk5M=;
 h=Date:From:To:To:To:Cc:Cc:Cc:Cc:Cc:Subject:In-Reply-To:References:
 From;
 b=loWMZokb+si0j/EAy7RNU7JZ5eCEcE3hr+F8Ju3MpqeVe1OzEo12R0VsAavjOKRSZ
 BrVUoaymqmpNKw4xVWd/AYT9GjVkSSJOJ2I/LQwlhczqlaIIj/xqyBCoegJn64EsaZ
 BuMRmGTKnCs+EmndVYoL2qiWoTmscB+5Cwqdnrz4=
Subject: Re: [Intel-gfx] [PATCH] drm/i915/vbt: Fix VBT parsing for the PSR
 section
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
Cc: , stable@vger.kernel.org,
 Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksCgpbVGhpcyBpcyBhbiBhdXRvbWF0ZWQgZW1haWxdCgpUaGlzIGNvbW1pdCBoYXMgYmVlbiBw
cm9jZXNzZWQgYmVjYXVzZSBpdCBjb250YWlucyBhICJGaXhlczoiIHRhZywKZml4aW5nIGNvbW1p
dDogODhhMGQ5NjA2YWZmIGRybS9pOTE1L3ZidDogUGFyc2UgYW5kIHVzZSB0aGUgbmV3IGZpZWxk
IHdpdGggUFNSMiBUUDIvMyB3YWtldXAgdGltZS4KClRoZSBib3QgaGFzIHRlc3RlZCB0aGUgZm9s
bG93aW5nIHRyZWVzOiB2NS4yLjEuCgp2NS4yLjE6IEZhaWxlZCB0byBhcHBseSEgUG9zc2libGUg
ZGVwZW5kZW5jaWVzOgogICAgMjMxZGNmZmMyMzRmICgiZHJtL2k5MTUvYmlvczogYWRkIEJEQiBi
bG9jayBjb21tZW50cyBiZWZvcmUgZGVmaW5pdGlvbnMiKQogICAgODQzNDQ0ZWQxMzAxICgiZHJt
L2k5MTUvYmlvczogc29ydCBCREIgYmxvY2sgZGVmaW5pdGlvbnMgdXNpbmcgYmxvY2sgSUQiKQog
ICAgZjg3ZjY1OTljODQzICgiZHJtL2k5MTUvYmlvczogcmVzZXJ2ZSBzdHJ1Y3QgYmRiXyBwcmVm
aXggZm9yIEJEQiBibG9ja3MiKQoKCk5PVEU6IFRoZSBwYXRjaCB3aWxsIG5vdCBiZSBxdWV1ZWQg
dG8gc3RhYmxlIHRyZWVzIHVudGlsIGl0IGlzIHVwc3RyZWFtLgoKSG93IHNob3VsZCB3ZSBwcm9j
ZWVkIHdpdGggdGhpcyBwYXRjaD8KCi0tClRoYW5rcywKU2FzaGEKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
