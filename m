Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 351C990197
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Aug 2019 14:31:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90FB56E33B;
	Fri, 16 Aug 2019 12:31:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A36A96E33B
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Aug 2019 12:31:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18162673-1500050 for multiple; Fri, 16 Aug 2019 13:30:30 +0100
MIME-Version: 1.0
To: Christoph Hellwig <hch@lst.de>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190816122644.GA21797@lst.de>
References: <20190816121549.8754-1-chris@chris-wilson.co.uk>
 <20190816122644.GA21797@lst.de>
Message-ID: <156595862897.11610.6852982219615959799@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 16 Aug 2019 13:30:29 +0100
Subject: Re: [Intel-gfx] [PATCH] Revert "nvme-pci: use host managed power
 state for suspend"
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 intel-gfx@lists.freedesktop.org,
 "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>,
 linux-nvme@lists.infradead.org, Keith Busch <keith.busch@intel.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBDaHJpc3RvcGggSGVsbHdpZyAoMjAxOS0wOC0xNiAxMzoyNjo0NCkKPiBQbGVhc2Us
IHJlcG9ydCB0aGUgYWN0dWFsIHByb2JsZW0uICBCbGluZGx5IHJldmVydGluZyBhIHBhdGNoIHdp
dGhvdXQKPiBldmVuIGFuIGV4cGxhbmF0aW9uIG9mIHlvdXIgcmVncmVzc2lvbnMgaXMgbm90IHRo
ZSB3YXkgdG8gZG8gaXQuCgpBcyBzdGF0ZWQsIHRoZSBzeXN0ZW0gZG9lc24ndCBzdXNwZW5kLgoK
SWYgeW91IHdvdWxkIGxpa2UgdG8gd2FpdCwgeW91IHdpbGwgZ2V0IHRlc3QgcmVzdWx0cyBmcm9t
IG91ciBDSQpnaXZpbmcgdGhlIGN1cnJlbnQgZmFpbGVkIHN0YXRlIGFuZCB0aGUgb3V0Y29tZSBv
ZiB0aGUgcGF0Y2guCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
