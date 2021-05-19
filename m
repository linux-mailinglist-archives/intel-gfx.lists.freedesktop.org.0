Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DCF1388703
	for <lists+intel-gfx@lfdr.de>; Wed, 19 May 2021 07:52:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CAE36E928;
	Wed, 19 May 2021 05:52:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B8A56E928;
 Wed, 19 May 2021 05:52:01 +0000 (UTC)
IronPort-SDR: Ydo+obfDwQnFdFOcxXD/7N4nPoW/cUmckvg7QDWebIfzf/Xh/0ZzxjNT6InivmSJKJ3C4tyDxX
 Ux9WN2V7/O/g==
X-IronPort-AV: E=McAfee;i="6200,9189,9988"; a="200591789"
X-IronPort-AV: E=Sophos;i="5.82,312,1613462400"; d="scan'208";a="200591789"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 22:52:00 -0700
IronPort-SDR: bsmntiYDgDjdyOsRgCHKijC45Hwgr2cG1dWGAJjSezNCb8JW+Qm4sMcYZIyvemyybZIoOT7s80
 qJZK2t3ie0OQ==
X-IronPort-AV: E=Sophos;i="5.82,312,1613462400"; d="scan'208";a="627483643"
Received: from clanggaa-mobl1.ger.corp.intel.com (HELO [10.249.254.222])
 ([10.249.254.222])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 22:51:58 -0700
To: Christoph Hellwig <hch@lst.de>
References: <20210326055505.1424432-1-hch@lst.de>
 <20210326055505.1424432-5-hch@lst.de> <87pmxqiry6.fsf@depni.sinp.msu.ru>
 <20210517123716.GD15150@lst.de> <87lf8dik15.fsf@depni.sinp.msu.ru>
 <20210517131137.GA19451@lst.de>
 <976fb38a-7780-6ca6-d602-a5f02c0938c9@linux.intel.com>
 <20210518132333.GC2617@lst.de>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <1d6cc36a-cce9-92d3-4ca9-67d1450232a3@linux.intel.com>
Date: Wed, 19 May 2021 07:51:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210518132333.GC2617@lst.de>
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

Ck9uIDUvMTgvMjEgMzoyMyBQTSwgQ2hyaXN0b3BoIEhlbGx3aWcgd3JvdGU6Cj4gT24gTW9uLCBN
YXkgMTcsIDIwMjEgYXQgMTE6NDY6MzVQTSArMDIwMCwgVGhvbWFzIEhlbGxzdHLDtm0gd3JvdGU6
Cj4+IEFwYXJ0IGZyb20gdGhlIGNhY2hpbmcgYWxpYXNpbmcgTWF0dGV3IGJyb3VnaHQgdXAsIGRv
ZXNuJ3QgdGhlCj4+IHJlbWFwX3Bmbl9yYW5nZV94eHgoKSBmYW1pbHkgcmVxdWlyZSB0aGUgbW1h
cF9zZW0gaGVsZCBpbiB3cml0ZSBtb2RlIHNpbmNlCj4+IGl0IG1vZGlmaWVzIHRoZSB2bWEgc3Ry
dWN0dXJlPyByZW1hcF9pb19zZygpIGlzIGNhbGxlZCBmcm9tIHRoZSBmYXVsdAo+PiBoYW5kbGVy
IHdpdGggdGhlIG1tYXBfc2VtIGhlbGQgaW4gcmVhZCBtb2RlIG9ubHkuCj4gT25seSBmb3Igdm1h
LT52bV9mbGFncywgYW5kIHJlbWFwX3NnIGFscmVhZHkgYXNzZXJ0cyBhbGwgdGhlIGludGVyZXN0
aW5nCj4gZmxhZ3MgYXJlIHNldCwgYWx0aG91Z2ggaXQgZG9lcyBub3QgYXNzZXJ0IFZNX0lPLgo+
Cj4gV2UgY291bGQgbW92ZSB0aGUgYXNzaWdubWVudCBvdXQgb2YgcmVtYXBfcGZuX3JhbmdlX25v
dHJhY2sgYW5kCj4gaW50byByZW1hcF9wZm5fcmFuZ2UgYW5kIGp1c3QgYXNzZXJ0IHRoYXQgdGhl
IHByb3BlciBmbGFncyBhcmUgc2V0LAo+IHRob3VnaC4KClRoYXQgdG8gbWUgc291bmRzIGxpa2Ug
YSB3YXkgZm9yd2FyZC4gSXQgc291bmQgbGlrZSBpbiBnZW5lcmFsIGEgZ3B1IApwcmVmYXVsdGlu
ZyBoZWxwZXIgdGhhdCBpbiB0aGUgbG9uZyBydW4gYWxzbyBzdXBwb3J0cyBmYXVsdGluZyBodWdl
IHB0ZXMgCmlzIGRlc2lyZWQgYWxzbyBieSBUVE0uIEFsdGhvdWdoIGl0IGxvb2tzIGxpa2UgdGhh
dCBCVUdfT04oKSBJIHBvaW50ZWQgCm91dCB3YXMgaGl0IGFueXdheS4uLi4KCi9UaG9tYXMKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
