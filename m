Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A28F59E43F
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2019 11:31:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBB0F89991;
	Tue, 27 Aug 2019 09:31:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4892589991
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Aug 2019 09:31:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Aug 2019 02:31:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,436,1559545200"; d="scan'208";a="331764487"
Received: from laaguila-mobl1.amr.corp.intel.com (HELO [10.252.2.212])
 ([10.252.2.212])
 by orsmga004.jf.intel.com with ESMTP; 27 Aug 2019 02:31:10 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190826130750.17272-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <6cc75bb1-3ddb-5f23-f2b6-547ae2ddbe04@intel.com>
Date: Tue, 27 Aug 2019 10:31:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190826130750.17272-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Use NOEVICT for first pass on
 attemping to pin a GGTT mmap
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjYvMDgvMjAxOSAxNDowNywgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFRoZSBpbnRlbnRpb24g
aXMgdGhhdCB3ZSBmaXJzdCB0cnkgdG8gcGluIHRoZSBjdXJyZW50IHZtYSBpbnRvIHRoZQo+IG1h
cHBhYmxlIGFwZXJ0dXJlIG9ubHkgaWYgaXQgaXMgYWxyZWFkeSBpbiB1c2Ugb3IgdCBmaXRzIGlu
IHRoZSBmcmVlCml0IGZpdHMKCj4gc3BhY2UgYW5kIHdpbGwgbm90IGNhdXNlIGNvbnRlbnRpb24u
IFRoZSBmaXJzdCBhdHRlbXB0IHdhcyBtZWFudCB0byBiZQo+IHVzaW5nIFBJTl9OT0VWSUNUIHRv
IHJldXNlIHRoZSBjdXJyZW50IHZtYSBpZiBwb3NzaWJsZSwgZm9sbG93aW5nIHVwCj4gd2l0aCBk
aWZmZXJlbnQgZXZpY3Rpb24gc3RyYXRlZ2llcy4KPiAKPiBCdWd6aWxsYTogaHR0cHM6Ly9idWdz
LmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExNDg1Cj4gRml4ZXM6IDY4NDY4OTVm
ZGUwNSAoImRybS9pOTE1OiBSZXBsYWNlIFBJTl9OT05GQVVMVCB3aXRoIGNhbGxzIHRvIFBJTl9O
T0VWSUNUIikKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNv
bi5jby51az4KPiBDYzogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpSZXZp
ZXdlZC1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
