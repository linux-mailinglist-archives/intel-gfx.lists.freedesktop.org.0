Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB09E23151
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2019 12:27:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BFA0890B9;
	Mon, 20 May 2019 10:27:46 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAE69890B9;
 Mon, 20 May 2019 10:27:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 May 2019 03:27:45 -0700
X-ExtLoop1: 1
Received: from dmironox-mobl5.ccr.corp.intel.com (HELO [10.252.20.122])
 ([10.252.20.122])
 by fmsmga008.fm.intel.com with ESMTP; 20 May 2019 03:27:44 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, igt-dev@lists.freedesktop.org
References: <20190517112526.6738-1-tvrtko.ursulin@linux.intel.com>
 <20190517112526.6738-16-tvrtko.ursulin@linux.intel.com>
 <155812181148.1890.3697434324553419870@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <de60a6a6-2e0a-0b13-515b-ce15c7e2d440@linux.intel.com>
Date: Mon, 20 May 2019 11:27:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <155812181148.1890.3697434324553419870@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 15/25] gem_wsim: Engine map
 load balance command
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDE3LzA1LzIwMTkgMjA6MzYsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA1LTE3IDEyOjI1OjE2KQo+PiBGcm9tOiBUdnJ0a28gVXJzdWxpbiA8
dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+Pgo+PiBBIG5ldyB3b3JrbG9hZCBjb21tYW5kIGZv
ciBlbmFibGluZyBhIGxvYWQgYmFsYW5jZWQgY29udGV4dCBtYXAgKGFrYQo+PiBWaXJ0dWFsIEVu
Z2luZSkuIEV4YW1wbGUgdXNhZ2U6Cj4+Cj4+ICAgIEIuMQo+Pgo+PiBUaGlzIHR1cm5zIG9uIGxv
YWQgYmFsYW5jaW5nIGZvciBjb250ZXh0IG9uZSwgYXNzdW1pbmcgaXQgaGFzIGFscmVhZHkgYmVl
bgo+PiBjb25maWd1cmVkIHdpdGggYW4gZW5naW5lIG1hcC4gT25seSBERUZBVUxUIGVuZ2luZSBz
cGVjaWZpZXIgY2FuIGJlIHVzZWQKPj4gd2l0aCBsb2FkIGJhbGFuY2VkIGVuZ2luZSBtYXBzLgo+
IAo+IFdoeT8KCkhtLi4uIGRvbid0IHRoaW5rIHRoZXJlIGlzIGEgcmVhbCByZWFzb24gYW5kIEkg
ZGVmaW5pdGVseSBkb24ndCByZW1lbWJlciAKd2hhdCBJIHdhcyB0aGlua2luZyBiYWNrIHdoZW4g
SSB3cm90ZSB0aGlzIHNlbnRlbmNlLiA6KSBJJ2xsIHRyeSBsaWZ0aW5nIAp0aGUgcmVzdHJpY3Rp
b24gYW5kIHNlZSB3aGF0IGhhcHBlbnMuCgpSZWdhcmRzLAoKVHZydGtvCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
