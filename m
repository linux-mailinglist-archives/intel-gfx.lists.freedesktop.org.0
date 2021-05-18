Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DF7C387A0A
	for <lists+intel-gfx@lfdr.de>; Tue, 18 May 2021 15:33:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D39E789E1B;
	Tue, 18 May 2021 13:33:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F303289BCD;
 Tue, 18 May 2021 13:33:18 +0000 (UTC)
IronPort-SDR: REJFHNw8bJZMcXmu5OdBqejeleYUWjZhc6lI8KJA3SWV8ViZx3vBmZ3nYujBxrEGXlHEW2up3S
 uPxfTjGCOufA==
X-IronPort-AV: E=McAfee;i="6200,9189,9987"; a="221764010"
X-IronPort-AV: E=Sophos;i="5.82,310,1613462400"; d="scan'208";a="221764010"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 06:33:18 -0700
IronPort-SDR: JD1KVpOLoXzO9+IeWZmr5Vy+CCysqoXN/qIswodanwS1ndGx6ikR3RlmKh+B7FFgVag35gnd6F
 JHMYFcFN+NuQ==
X-IronPort-AV: E=Sophos;i="5.82,310,1613462400"; d="scan'208";a="438664467"
Received: from cmutgix-mobl.gar.corp.intel.com (HELO [10.249.254.195])
 ([10.249.254.195])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 06:33:16 -0700
To: Christoph Hellwig <hch@lst.de>
References: <20210326055505.1424432-1-hch@lst.de>
 <20210326055505.1424432-5-hch@lst.de> <87pmxqiry6.fsf@depni.sinp.msu.ru>
 <20210517123716.GD15150@lst.de> <87lf8dik15.fsf@depni.sinp.msu.ru>
 <20210517131137.GA19451@lst.de>
 <976fb38a-7780-6ca6-d602-a5f02c0938c9@linux.intel.com>
 <6adf9658-25b7-16ef-4b88-fa3911d06b74@linux.intel.com>
 <20210518132428.GD2617@lst.de>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <114520ed-6d61-a2a1-b753-fb169ef6ecea@linux.intel.com>
Date: Tue, 18 May 2021 15:33:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210518132428.GD2617@lst.de>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 4/4] i915: fix remap_io_sg to verify the
 pgprot
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: Serge Belyshev <belyshev@depni.sinp.msu.ru>,
 Peter Zijlstra <peterz@infradead.org>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>, linux-mm@kvack.org,
 Andrew Morton <akpm@linux-foundation.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDUvMTgvMjEgMzoyNCBQTSwgQ2hyaXN0b3BoIEhlbGx3aWcgd3JvdGU6Cj4gT24gVHVlLCBN
YXkgMTgsIDIwMjEgYXQgMDg6NDY6NDRBTSArMDIwMCwgVGhvbWFzIEhlbGxzdHLDtm0gd3JvdGU6
Cj4+IEFuZCB3b3JzZSwgaWYgd2UgcHJlZmF1bHQgYSB1c2VyLXNwYWNlIGJ1ZmZlciBvYmplY3Qg
bWFwIHVzaW5nCj4+IHJlbWFwX2lvX3NnKCkgYW5kIHRoZW4gemFwIHNvbWUgcHRlcyB1c2luZyBt
YWR2aXNlKCksIHRoZSBuZXh0IHRpbWUgdGhvc2UKPj4gcHRlcyBhcmUgYWNjZXNzZWQsIHdlJ2Qg
dHJpZ2dlciBhIG5ldyBjYWxsIHRvIHJlbWFwX2lvX3NnKCkgd2hpY2ggd291bGQgbm93Cj4+IGZp
bmQgYWxyZWFkeSBwb3B1bGF0ZWQgcHRlcy4gV2hpbGUgdGhlIG9sZCBjb2RlIGxvb2tzIHRvIGp1
c3Qgc2lsZW50bHkKPj4gb3ZlcndyaXRlIHRob3NlLCBpdCBsb29rcyBsaWtlIHRoZSBuZXcgY29k
ZSB3b3VsZCBCVUcgaW4gcmVtYXBfcHRlX3JhbmdlKCk/Cj4gSG93IGNhbiB5b3UgemFwIHRoZSBQ
VEVzIHVzaW5nIG1hZHZpc2U/CgpIbW0sIHRoYXQncyBub3QgcG9zc2libGUgd2l0aCBWTV9QRk5N
QVAuIE15IGJhZC4gU2hvdWxkIGJlIE9LIHRoZW4uCgovVGhvbWFzCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
