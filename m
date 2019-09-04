Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0BB8A7BF6
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2019 08:47:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 146CC898C7;
	Wed,  4 Sep 2019 06:47:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E93F6898B6;
 Wed,  4 Sep 2019 06:47:43 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Sep 2019 23:47:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,465,1559545200"; d="scan'208";a="183808833"
Received: from kmurugas-mobl1.gar.corp.intel.com (HELO intel.intel)
 ([10.251.81.189])
 by fmsmga007.fm.intel.com with ESMTP; 03 Sep 2019 23:47:40 -0700
Date: Wed, 4 Sep 2019 09:47:39 +0300
From: Andi Shyti <andi.shyti@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190904064739.GD22095@intel.intel>
References: <20190902041548.14919-3-chris@chris-wilson.co.uk>
 <20190903193151.3132-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190903193151.3132-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_tiled_swapping: Tweak
 mlocked size
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgQ2hyaXMsCgpPbiBUdWUsIFNlcCAwMywgMjAxOSBhdCAwODozMTo1MVBNICswMTAwLCBDaHJp
cyBXaWxzb24gd3JvdGU6Cj4gT24gbXkgc3lzdGVtcyB3aXRoIGxvdHMgb2YgbWVtZGVidWcgZW5h
YmxlZCwgd2Ugd291bGQgaGl0IHRoZSBvb21raWxsZXIKPiA5MCUgb2YgdGhlIHRpbWUgZHVyaW5n
IHRoZSBpbml0aWFsIG1sb2NrIHByaW9yIHRvIGFsbG9jYXRpbmcgYW55IG9iamVjdHMKPiAoYW5k
IGFib3V0IDIwJSBvZiB0aGUgdGltZSBsb2NrdXAgLyBwYW5pYykuIFR3ZWFrIHRoZSB0YXJnZXQg
YWxsb2NhdGlvbgo+IHNpemVzLCBhbmQgaW5jbHVkZSBhIGZldyBtb3JlIGJyZWFkY3J1bWJzIHRy
YWNpbmcgdGhlIGFsbG9jYXRpb25zIHNvCj4gdGhhdCB3ZSBjYW4gcmVsaWFibHkgc3RhcnQgdGhl
IHRlc3RzLiBXZSBzdGlsbCBkbyBoaXQgb3VyIHNocmlua2VyIGFuZAo+IGV2ZW4gdGhlIG9vbSBu
b3RpZmllciwgc28gc3RpbGwgYWNoaWV2aW5nIGl0cyBnb2FsIG9mIGV4ZXJjaXNpbmcgbG93Cj4g
bWVtb3J5IGFuZCBzd2FwIHByZXNzdXJlLgo+IAo+IFRvIHNsaWdodGx5IGNvbXBlbnNhdGUgZm9y
IHRoZSByZWR1Y2VkIG1lbXByZXNzdXJlIChhbGJlaXQgd2UgZG8gbm90Cj4gcmVtb3ZlIHRoZSBz
d2FwcGluZywgdGhlIHJhaXNvbiBkJ2V0cmUgb2YgdGhlIHRlc3QpLCB3ZSBpbmNyZWFzZSB0aGUK
PiBudW1iZXIgb2YgdGhyZWFkcyB0byBmb3JjZSB0aGUgc3lzdGVtIHRvIHJldXNlIGFjdGl2ZSBm
ZW5jZXMsIG1ha2luZyBpdAo+IG1vcmUgc3RyZXNzZnVsIG9uIHRoZSBmZW5jZSBjb2RlLgoKQWgu
Li4gT0sgOikKCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxz
b24uY28udWs+Cj4gQ2M6IEFuZGkgU2h5dGkgPGFuZGkuc2h5dGlAaW50ZWwuY29tPgoKUmV2aWV3
ZWQtYnk6IEFuZGkgU2h5dGkgPGFuZGkuc2h5dGlAaW50ZWwuY29tPgoKQW5kaQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
