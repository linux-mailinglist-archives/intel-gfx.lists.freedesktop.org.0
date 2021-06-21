Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DF5883AE966
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Jun 2021 14:49:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7052289B99;
	Mon, 21 Jun 2021 12:49:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CC4589B51
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Jun 2021 12:49:25 +0000 (UTC)
IronPort-SDR: +xn2i1fWMZYi+ZnQtbpIIcyn+MmVt007OjsWRFmRB8s3LaYhzyyFZR63ldxoVoargh+aagvELG
 MezBEJDudwXQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10021"; a="205009173"
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; d="scan'208";a="205009173"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2021 05:49:24 -0700
IronPort-SDR: 9eLUSk+ikqAQpYgL2qD8J2Qr297vJYfVgsnXi7VQH9p5/aWFu8vOtO8lG35RyjIPh8i9B+UuzC
 lgqOQ/MaNXIw==
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; d="scan'208";a="453868517"
Received: from plogin-mobl.ger.corp.intel.com (HELO [10.249.33.137])
 ([10.249.33.137])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2021 05:49:23 -0700
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210621114123.3131534-1-maarten.lankhorst@linux.intel.com>
 <04424cbf-750a-4cb9-a99a-6a5a3671452f@linux.intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <cd5fec10-80b4-70d6-8b06-f852d9d1471c@linux.intel.com>
Date: Mon, 21 Jun 2021 14:49:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <04424cbf-750a-4cb9-a99a-6a5a3671452f@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/gt: Do not allow setting ring
 size for legacy ring submission
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T3AgMjEtMDYtMjAyMSBvbSAxNDowOCBzY2hyZWVmIFR2cnRrbyBVcnN1bGluOgo+Cj4gSSBoYWQg
c29tZSBxdWVzdGlvbnMgb24gdGhlIHRyeWJvdCBtYWlsaW5nIGxpc3QsIGxldCBtZSBjb3B5JnBh
c3RlLi4KPgo+IE9uIDIxLzA2LzIwMjEgMTI6NDEsIE1hYXJ0ZW4gTGFua2hvcnN0IHdyb3RlOgo+
PiBJdCBkb2Vzbid0IHdvcmsgZm9yIGxlZ2FjeSByaW5nIHN1Ym1pc3Npb24sIGFuZCBpcyBpbiB0
aGUgYmVzdCBjYXNlCj4+IGlnbm9yZWQuCj4KPiBMb29rcyByZWplY3RlZCBpbnN0ZWFkIG9mIGln
bm9yZWQ6Cj4KPiBzdGF0aWMgaW50IHNldF9yaW5nc2l6ZShzdHJ1Y3QgaTkxNV9nZW1fY29udGV4
dCAqY3R4LAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBkcm1faTkxNV9nZW1fY29udGV4
dF9wYXJhbSAqYXJncykKPiB7Cj4gwqDCoCBpZiAoIUhBU19MT0dJQ0FMX1JJTkdfQ09OVEVYVFMo
Y3R4LT5pOTE1KSkKPiDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FTk9ERVY7Cj4+Cj4+IEluIHRoZSB3
b3JzdCBjYXNlIHdlIGVuZCB1cCBmcmVlaW5nIGVuZ2luZS0+bGVnYWN5LnJpbmcgZm9yIGFsbCBv
dGhlcgo+PiBhY3RpdmUgZW5naW5lcywgcmVzdWx0aW5nIGluIGEgdXNlLWFmdGVyLWZyZWUuCj4K
PiBXb3JzdCBjYXNlIGlzIGNsb25pbmcgYmVjYXVzZSByaW5nX2NvbnRleHRfYWxsb2MgaXMgbm90
IHRha2luZyBhIHJlZmVyZW5jZSB0byBlbmdpbmUtPmxlZ2FjeS5yaW5nLCBvciBzb21ldGhpbmcg
ZWxzZT8KPgo+IFJlZ2FyZHMsCj4KPiBUdnJ0a28gCgpJIG9ubHkgbm90aWNlZCB0aGlzIGJlY2F1
c2UgdGVzdHMgc3RhcnRlZCBmYWlsaW5nLCBpZiBpdCBzaG91bGQgYWxyZWFkeSBoaXQgLUVOT0RF
ViB0aGVuIHRoYXQncyB3ZWlyZC4uCgpTZWU6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9w
Lm9yZy9zZXJpZXMvOTE1MDEvIGZvciB0aGUgZmFpbHVyZS4KCkl0IHNob3VsZCBub3QgaGl0IHRo
ZSBJTkNPTVBMRVRFcyB0aGVyZS4KClRoZSBsZWdhY3kgY29udGV4dHMgZG9uJ3QgZ3JhYiBhIHJl
ZmVyZW5jZSB0byBlbmdpbmUtPmxlZ2FjeS5yaW5nLCBidXQgYSBjb3B5IHRvIHRoZSBwb2ludGVy
LCBwcmVzdW1hYmx5IGJlY2F1c2UgaXRzIGxpZmV0aW1lIGlzIGFsd2F5cyBzaG9ydGVyIHRoYW4g
dGhlIHJpbmcgbGlmZXRpbWUsIHNvIGl0IHdpbGwgYWN0dWFsbHkgZnJlZSBpdC4KCn5NYWFydGVu
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
