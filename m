Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C1013901C2
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Aug 2019 14:38:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1414E6E3E1;
	Fri, 16 Aug 2019 12:38:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98D9E6E3E1
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Aug 2019 12:38:53 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id 2E9B868B05; Fri, 16 Aug 2019 14:38:50 +0200 (CEST)
Date: Fri, 16 Aug 2019 14:38:50 +0200
From: Christoph Hellwig <hch@lst.de>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190816123850.GA22923@lst.de>
References: <20190816121549.8754-1-chris@chris-wilson.co.uk>
 <20190816122644.GA21797@lst.de>
 <156595862897.11610.6852982219615959799@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <156595862897.11610.6852982219615959799@skylake-alporthouse-com>
User-Agent: Mutt/1.5.17 (2007-11-01)
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

T24gRnJpLCBBdWcgMTYsIDIwMTkgYXQgMDE6MzA6MjlQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IFF1b3RpbmcgQ2hyaXN0b3BoIEhlbGx3aWcgKDIwMTktMDgtMTYgMTM6MjY6NDQpCj4g
PiBQbGVhc2UsIHJlcG9ydCB0aGUgYWN0dWFsIHByb2JsZW0uICBCbGluZGx5IHJldmVydGluZyBh
IHBhdGNoIHdpdGhvdXQKPiA+IGV2ZW4gYW4gZXhwbGFuYXRpb24gb2YgeW91ciByZWdyZXNzaW9u
cyBpcyBub3QgdGhlIHdheSB0byBkbyBpdC4KPiAKPiBBcyBzdGF0ZWQsIHRoZSBzeXN0ZW0gZG9l
c24ndCBzdXNwZW5kLgo+IAo+IElmIHlvdSB3b3VsZCBsaWtlIHRvIHdhaXQsIHlvdSB3aWxsIGdl
dCB0ZXN0IHJlc3VsdHMgZnJvbSBvdXIgQ0kKPiBnaXZpbmcgdGhlIGN1cnJlbnQgZmFpbGVkIHN0
YXRlIGFuZCB0aGUgb3V0Y29tZSBvZiB0aGUgcGF0Y2guCgpQbGF0Zm9ybSB0eXBlLCBTU0QgdmVu
ZG9yIGFuZCB0eXBlLCBmaXJtd2FyZSB2ZXJzaW9uPwpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
