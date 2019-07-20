Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBEC36F0D3
	for <lists+intel-gfx@lfdr.de>; Sat, 20 Jul 2019 23:47:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D44289AFF;
	Sat, 20 Jul 2019 21:47:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01DE589AFF
 for <intel-gfx@lists.freedesktop.org>; Sat, 20 Jul 2019 21:47:02 +0000 (UTC)
Received: from localhost (unknown [23.100.24.84])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 544FD20838;
 Sat, 20 Jul 2019 21:47:01 +0000 (UTC)
Date: Sat, 20 Jul 2019 21:47:00 +0000
From: Sasha Levin <sashal@kernel.org>
To: Sasha Levin <sashal@kernel.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
To: iommu@lists.linux-foundation.org
In-Reply-To: <20190720180848.15192-1-chris@chris-wilson.co.uk>
References: <20190720180848.15192-1-chris@chris-wilson.co.uk>
Message-Id: <20190720214701.544FD20838@mail.kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=default; t=1563659221;
 bh=5ocWBOP9piRvE5hSaMGtsmQvQUd2aJdYEE0t3kJLhPo=;
 h=Date:From:To:To:To:Cc:Cc:Cc:Cc:Cc:Subject:In-Reply-To:References:
 From;
 b=PFdoactEa1DnMZYpOxMqYhvYMl+R3Fv7MISC2NDI71S/QBpInu/3sLoV0hock00BT
 y3zviFwfHrQFko81WOVC33RUau36uNimZa93jxfQIMmdZF68q/DDvLbUJO4sDDcwFJ
 lQusLknbUctkfh4H+sAeLoG50Avu22zIdYh5RC98=
Subject: Re: [Intel-gfx] [PATCH] iommu/iova: Remove stale cached32_node
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
Cc: , Joerg Roedel <jroedel@suse.de>, intel-gfx@lists.freedesktop.org,
 stable@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>,
 Joerg Roedel <joro@8bytes.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksCgpbVGhpcyBpcyBhbiBhdXRvbWF0ZWQgZW1haWxdCgpUaGlzIGNvbW1pdCBoYXMgYmVlbiBw
cm9jZXNzZWQgYmVjYXVzZSBpdCBjb250YWlucyBhICJGaXhlczoiIHRhZywKZml4aW5nIGNvbW1p
dDogZTYwYWE3YjUzODQ1IGlvbW11L2lvdmE6IEV4dGVuZCByYnRyZWUgbm9kZSBjYWNoaW5nLgoK
VGhlIGJvdCBoYXMgdGVzdGVkIHRoZSBmb2xsb3dpbmcgdHJlZXM6IHY1LjIuMSwgdjUuMS4xOCwg
djQuMTkuNTkuCgp2NS4yLjE6IEJ1aWxkIE9LIQp2NS4xLjE4OiBCdWlsZCBPSyEKdjQuMTkuNTk6
IEZhaWxlZCB0byBhcHBseSEgUG9zc2libGUgZGVwZW5kZW5jaWVzOgogICAgYmVlNjBlOTRhMWUy
ICgiaW9tbXUvaW92YTogT3B0aW1pc2UgYXR0ZW1wdHMgdG8gYWxsb2NhdGUgaW92YSBmcm9tIDMy
Yml0IGFkZHJlc3MgcmFuZ2UiKQoKCk5PVEU6IFRoZSBwYXRjaCB3aWxsIG5vdCBiZSBxdWV1ZWQg
dG8gc3RhYmxlIHRyZWVzIHVudGlsIGl0IGlzIHVwc3RyZWFtLgoKSG93IHNob3VsZCB3ZSBwcm9j
ZWVkIHdpdGggdGhpcyBwYXRjaD8KCi0tClRoYW5rcywKU2FzaGEKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
