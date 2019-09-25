Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF4F0BE867
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2019 00:43:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AC896F6E4;
	Wed, 25 Sep 2019 22:43:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6393A6F6E4
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2019 22:43:03 +0000 (UTC)
Received: from localhost (unknown [40.117.208.15])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A6505208C3;
 Wed, 25 Sep 2019 22:43:02 +0000 (UTC)
Date: Wed, 25 Sep 2019 22:43:01 +0000
From: Sasha Levin <sashal@kernel.org>
To: Sasha Levin <sashal@kernel.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
In-Reply-To: <20190925082110.17439-1-maarten.lankhorst@linux.intel.com>
References: <20190925082110.17439-1-maarten.lankhorst@linux.intel.com>
Message-Id: <20190925224302.A6505208C3@mail.kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=default; t=1569451382;
 bh=0tIDnPxxb4LgI/QCzmi6fMPYGfmF03p2eCrH3n5t6J4=;
 h=Date:From:To:To:To:Cc:Cc:Cc:Subject:In-Reply-To:References:From;
 b=Mv/ZUIZQ/tVPnEq+iMaUtH6mFnOpCQ0zzWR7gT8LGQlBx94WCb1C6AXtJYaKGHLmq
 EHOptpFHdnorYm3ggo6UEXffNM5Qxh9e52hS1piMw/ScwTzAyQyyXdLv2qai+SAaWk
 wEDbhN6ROu/Y2vvFtcRZP8FND21+/glWI+6e225c=
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/dp: Fix dsc bpp calculations,
 v5.
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
cm9jZXNzZWQgYmVjYXVzZSBpdCBjb250YWlucyBhICJGaXhlczoiIHRhZywKZml4aW5nIGNvbW1p
dDogZDkyMThjOGY2Y2Y0IGRybS9pOTE1L2RwOiBBZGQgaGVscGVycyBmb3IgQ29tcHJlc3NlZCBC
UFAgYW5kIFNsaWNlIENvdW50IGZvciBEU0MuCgpUaGUgYm90IGhhcyB0ZXN0ZWQgdGhlIGZvbGxv
d2luZyB0cmVlczogdjUuMy4xLCB2NS4yLjE3LgoKdjUuMy4xOiBCdWlsZCBPSyEKdjUuMi4xNzog
RmFpbGVkIHRvIGFwcGx5ISBQb3NzaWJsZSBkZXBlbmRlbmNpZXM6CiAgICAzYzA1M2E5NmVmNWYg
KCJkcm0vaTkxNS9kcDogUHJvZ3JhbSBWU0MgSGVhZGVyIGFuZCBEQiBmb3IgUGl4ZWwgRW5jb2Rp
bmcvQ29sb3JpbWV0cnkgRm9ybWF0IikKCgpOT1RFOiBUaGUgcGF0Y2ggd2lsbCBub3QgYmUgcXVl
dWVkIHRvIHN0YWJsZSB0cmVlcyB1bnRpbCBpdCBpcyB1cHN0cmVhbS4KCkhvdyBzaG91bGQgd2Ug
cHJvY2VlZCB3aXRoIHRoaXMgcGF0Y2g/CgotLQpUaGFua3MsClNhc2hhCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
