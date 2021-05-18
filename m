Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20C0438728F
	for <lists+intel-gfx@lfdr.de>; Tue, 18 May 2021 08:46:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03B976EA96;
	Tue, 18 May 2021 06:46:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E8B56EA96;
 Tue, 18 May 2021 06:46:49 +0000 (UTC)
IronPort-SDR: m3xvmt2uVl+gouVlzyD12vNJwL99zQdh5vT+Lk390qDosD8DAIC7Gxc/fLDXdhq4G4Os6J/VO7
 MxeKrmuCTXeg==
X-IronPort-AV: E=McAfee;i="6200,9189,9987"; a="180246715"
X-IronPort-AV: E=Sophos;i="5.82,309,1613462400"; d="scan'208";a="180246715"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2021 23:46:49 -0700
IronPort-SDR: 7AjQz0vdBoc7zosy1+hwE4iToElxnCsfAZ1jqv5LaJhE/OmnEFNuOVwFSp+guyMvNCchRnsLWX
 1noGlrxZc34Q==
X-IronPort-AV: E=Sophos;i="5.82,309,1613462400"; d="scan'208";a="630331526"
Received: from cmutgix-mobl.gar.corp.intel.com (HELO [10.249.254.195])
 ([10.249.254.195])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2021 23:46:46 -0700
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
To: Christoph Hellwig <hch@lst.de>, Serge Belyshev <belyshev@depni.sinp.msu.ru>
References: <20210326055505.1424432-1-hch@lst.de>
 <20210326055505.1424432-5-hch@lst.de> <87pmxqiry6.fsf@depni.sinp.msu.ru>
 <20210517123716.GD15150@lst.de> <87lf8dik15.fsf@depni.sinp.msu.ru>
 <20210517131137.GA19451@lst.de>
 <976fb38a-7780-6ca6-d602-a5f02c0938c9@linux.intel.com>
Message-ID: <6adf9658-25b7-16ef-4b88-fa3911d06b74@linux.intel.com>
Date: Tue, 18 May 2021 08:46:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <976fb38a-7780-6ca6-d602-a5f02c0938c9@linux.intel.com>
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>,
 linux-mm@kvack.org, Andrew Morton <akpm@linux-foundation.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDUvMTcvMjEgMTE6NDYgUE0sIFRob21hcyBIZWxsc3Ryw7ZtIHdyb3RlOgo+Cj4gT24gNS8x
Ny8yMSAzOjExIFBNLCBDaHJpc3RvcGggSGVsbHdpZyB3cm90ZToKPj4gT24gTW9uLCBNYXkgMTcs
IDIwMjEgYXQgMDQ6MDk6NDJQTSArMDMwMCwgU2VyZ2UgQmVseXNoZXYgd3JvdGU6Cj4+PiBDaHJp
c3RvcGggSGVsbHdpZyA8aGNoQGxzdC5kZT4gd3JpdGVzOgo+Pj4KPj4+PiBBcyBhbiBhZC1ob2Mg
ZXhwZXJpbWVudDrCoCBjYW4geW91IHJlcGxhY2UgdGhlIGNhbGwgdG8gcmVtYXBfcGZuX3Jhbmdl
Cj4+Pj4gd2l0aCByZW1hcF9wZm5fcmFuZ2Vfbm90cmFjayAoYW5kIGV4cG9ydCBpdCBpZiB5b3Ug
YnVpbGQgaTkxNSBtb2R1bGFyKQo+Pj4+IGluIHJlbWFwX2lvX3NnIGFuZCBzZWUgaWYgdGhhdCBt
YWtlcyBhbnkgZGlmZmVyZW5jZT8KPj4+IFRoYXQgd29ya2VkLCB0aGFua3MgLS0gbm8gYXJ0aWZh
Y3RzIHNlZW4uCj4+IExvb2tzIGxpa2UgaXQgaXMgY2F1c2VkIGJ5IHRoZSB2YWxpZGF0aW9uIGZh
aWx1cmUgdGhlbi7CoCBXaGljaCBtZWFucyB0aGUKPj4gZXhpc3RpbmcgY29kZSBpcyBkb2luZyBz
b21ldGhpbmcgd3JvbmcgaW4gaXRzIGNob2ljZSBvZiB0aGUgcGFnZQo+PiBwcm90ZWN0aW9uIGJp
dC7CoCBJIHJlYWxseSBuZWVkIGhlbHAgZnJvbSB0aGUgaTkxNSBtYWludGFpbmVycyBoZXJlLi4K
Pgo+IEhtbSwKPgo+IEFwYXJ0IGZyb20gdGhlIGNhY2hpbmcgYWxpYXNpbmcgTWF0dGV3IGJyb3Vn
aHQgdXAsIGRvZXNuJ3QgdGhlIAo+IHJlbWFwX3Bmbl9yYW5nZV94eHgoKSBmYW1pbHkgcmVxdWly
ZSB0aGUgbW1hcF9zZW0gaGVsZCBpbiB3cml0ZSBtb2RlIAo+IHNpbmNlIGl0IG1vZGlmaWVzIHRo
ZSB2bWEgc3RydWN0dXJlPyByZW1hcF9pb19zZygpIGlzIGNhbGxlZCBmcm9tIHRoZSAKPiBmYXVs
dCBoYW5kbGVyIHdpdGggdGhlIG1tYXBfc2VtIGhlbGQgaW4gcmVhZCBtb2RlIG9ubHkuCj4KPiAv
VGhvbWFzCgpBbmQgd29yc2UsIGlmIHdlIHByZWZhdWx0IGEgdXNlci1zcGFjZSBidWZmZXIgb2Jq
ZWN0IG1hcCB1c2luZyAKcmVtYXBfaW9fc2coKSBhbmQgdGhlbiB6YXAgc29tZSBwdGVzIHVzaW5n
IG1hZHZpc2UoKSwgdGhlIG5leHQgdGltZSAKdGhvc2UgcHRlcyBhcmUgYWNjZXNzZWQsIHdlJ2Qg
dHJpZ2dlciBhIG5ldyBjYWxsIHRvIHJlbWFwX2lvX3NnKCkgd2hpY2ggCndvdWxkIG5vdyBmaW5k
IGFscmVhZHkgcG9wdWxhdGVkIHB0ZXMuIFdoaWxlIHRoZSBvbGQgY29kZSBsb29rcyB0byBqdXN0
IApzaWxlbnRseSBvdmVyd3JpdGUgdGhvc2UsIGl0IGxvb2tzIGxpa2UgdGhlIG5ldyBjb2RlIHdv
dWxkIEJVRyBpbiAKcmVtYXBfcHRlX3JhbmdlKCk/CgovVGhvbWFzCgoKCgo+Cj4+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IEludGVsLWdmeCBtYWls
aW5nIGxpc3QKPj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+PiBodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeApfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
