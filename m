Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 84A62B128D
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2019 18:02:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9C046EDBA;
	Thu, 12 Sep 2019 16:02:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B85796EDBA
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2019 16:02:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Sep 2019 09:01:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,492,1559545200"; d="scan'208";a="187545724"
Received: from jpanina-mobl.ger.corp.intel.com (HELO [10.249.35.93])
 ([10.249.35.93])
 by orsmga003.jf.intel.com with ESMTP; 12 Sep 2019 09:01:58 -0700
To: Sasha Levin <sashal@kernel.org>, intel-gfx@lists.freedesktop.org
References: <20190912130109.5873-1-maarten.lankhorst@linux.intel.com>
 <20190912143415.D8F552081B@mail.kernel.org>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <db913560-ee38-71e0-39e8-28bc75bbdc5e@linux.intel.com>
Date: Thu, 12 Sep 2019 18:01:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190912143415.D8F552081B@mail.kernel.org>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 01/23] drm/i915/dp: Fix dsc bpp calculations.
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
Cc: stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGV5LAoKT3AgMTItMDktMjAxOSBvbSAxNjozNCBzY2hyZWVmIFNhc2hhIExldmluOgo+IEhpLAo+
Cj4gW1RoaXMgaXMgYW4gYXV0b21hdGVkIGVtYWlsXQo+Cj4gVGhpcyBjb21taXQgaGFzIGJlZW4g
cHJvY2Vzc2VkIGJlY2F1c2UgaXQgY29udGFpbnMgYSAiRml4ZXM6IiB0YWcsCj4gZml4aW5nIGNv
bW1pdDogZDkyMThjOGY2Y2Y0IGRybS9pOTE1L2RwOiBBZGQgaGVscGVycyBmb3IgQ29tcHJlc3Nl
ZCBCUFAgYW5kIFNsaWNlIENvdW50IGZvciBEU0MuCj4KPiBUaGUgYm90IGhhcyB0ZXN0ZWQgdGhl
IGZvbGxvd2luZyB0cmVlczogdjUuMi4xNC4KPgo+IHY1LjIuMTQ6IEZhaWxlZCB0byBhcHBseSEg
UG9zc2libGUgZGVwZW5kZW5jaWVzOgo+ICAgICBVbmFibGUgdG8gY2FsY3VsYXRlCj4KPgo+IE5P
VEU6IFRoZSBwYXRjaCB3aWxsIG5vdCBiZSBxdWV1ZWQgdG8gc3RhYmxlIHRyZWVzIHVudGlsIGl0
IGlzIHVwc3RyZWFtLgo+Cj4gSG93IHNob3VsZCB3ZSBwcm9jZWVkIHdpdGggdGhpcyBwYXRjaD8K
Pgo+IC0tCj4gVGhhbmtzLAo+IFNhc2hhCgpXaHkgaXMgdGhpcyBib3QgYXNraW5nIGZvciBwYXRj
aGVzIG9uIHRoZSB0cnlib3QgbWFpbGluZyBsaXN0PwoKfk1hYXJ0ZW4KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
