Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C2975A0597
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Aug 2019 17:05:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D22C48966C;
	Wed, 28 Aug 2019 15:05:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BE378966C
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Aug 2019 15:05:02 +0000 (UTC)
Received: from localhost (unknown [40.117.208.15])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 09E3B22CED;
 Wed, 28 Aug 2019 15:05:01 +0000 (UTC)
Date: Wed, 28 Aug 2019 15:05:01 +0000
From: Sasha Levin <sashal@kernel.org>
To: Sasha Levin <sashal@kernel.org>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
To: Ville Syrjälä <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
In-Reply-To: <20190828102059.2512-1-ville.syrjala@linux.intel.com>
References: <20190828102059.2512-1-ville.syrjala@linux.intel.com>
Message-Id: <20190828150502.09E3B22CED@mail.kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=default; t=1567004702;
 bh=IQeqZhZmhdKF8FZpRomSkakKN5Dx4SEF5DzDSRSDHak=;
 h=Date:From:To:To:To:To:Cc:Cc:Cc:Cc:Cc:Subject:In-Reply-To:
 References:From;
 b=AOuFTrN4YQO/X6Zo79KH0/71JjYMhDF80bFWf1M2ah3ZqQ0fQ10orGSVziQsMpW9p
 rdoyrSxiv08uPSX6SK/XCPkCt3+uJZ0SuDUgPwAn6Mil26H2xIlnG44Xz8dQoFA8TG
 6a+L4oM7rDnBtiuPfmNRjub0GCa3tkeseCv/3Yhw=
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Limit MST to <= 8bpc once again
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
Cc: , Geoffrey Bennett <gmux22@gmail.com>, stable@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksCgpbVGhpcyBpcyBhbiBhdXRvbWF0ZWQgZW1haWxdCgpUaGlzIGNvbW1pdCBoYXMgYmVlbiBw
cm9jZXNzZWQgYmVjYXVzZSBpdCBjb250YWlucyBhICJGaXhlczoiIHRhZywKZml4aW5nIGNvbW1p
dDogZjE0NzcyMTk4NjljIGRybS9pOTE1OiBSZW1vdmUgdGhlIDhicGMgc2hhY2tsZXMgZnJvbSBE
UCBNU1QuCgpUaGUgYm90IGhhcyB0ZXN0ZWQgdGhlIGZvbGxvd2luZyB0cmVlczogdjUuMi4xMC4K
CnY1LjIuMTA6IEZhaWxlZCB0byBhcHBseSEgUG9zc2libGUgZGVwZW5kZW5jaWVzOgogICAgVW5h
YmxlIHRvIGNhbGN1bGF0ZQoKCk5PVEU6IFRoZSBwYXRjaCB3aWxsIG5vdCBiZSBxdWV1ZWQgdG8g
c3RhYmxlIHRyZWVzIHVudGlsIGl0IGlzIHVwc3RyZWFtLgoKSG93IHNob3VsZCB3ZSBwcm9jZWVk
IHdpdGggdGhpcyBwYXRjaD8KCi0tClRoYW5rcywKU2FzaGEKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
