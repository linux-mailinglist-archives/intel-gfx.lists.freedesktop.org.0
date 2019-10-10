Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7836D332C
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2019 23:08:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A13DA6EB88;
	Thu, 10 Oct 2019 21:08:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F371C6EB88
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Oct 2019 21:08:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Oct 2019 14:08:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,281,1566889200"; d="scan'208";a="395535166"
Received: from sgorczyc-mobl.ger.corp.intel.com (HELO [10.252.38.87])
 ([10.252.38.87])
 by fmsmga006.fm.intel.com with ESMTP; 10 Oct 2019 14:08:23 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191009211947.6815-1-chris@chris-wilson.co.uk>
 <20191009211947.6815-7-chris@chris-wilson.co.uk>
 <2b005ce6-97dd-ceee-04aa-72147bfb8e74@intel.com>
 <157072228213.31038.15681586973898095047@skylake-alporthouse-com>
 <8e58da7d-9ec9-4225-3e24-d7e6665d8a17@intel.com>
 <157073703290.31572.10913483979759707139@skylake-alporthouse-com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <3aefde94-4dfd-ea9f-9d88-be7d7f858baa@intel.com>
Date: Fri, 11 Oct 2019 00:08:23 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <157073703290.31572.10913483979759707139@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 7/9] drm/i915/perf: Allow dynamic
 reconfiguration of the OA stream
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

T24gMTAvMTAvMjAxOSAyMjo1MCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgTGlvbmVs
IExhbmR3ZXJsaW4gKDIwMTktMTAtMTAgMTc6MDc6MTEpCj4+IFllYWgsIHRoYXQncyBhIGZpbmUg
aW50ZXJmYWNlIGFjdHVhbGx5Lgo+IE9uZSBsYXN0IHRob3VnaHQgZm9yIHRoZSBpbnRlcmZhY2Us
IHNob3VsZCB3ZSByZXR1cm4gdGhlIHByZXZpb3VzCj4gY29uZmlnLWlkPwo+Cj4gVGhhdCBsaW1p
dHMgdGhlIGNvbmZpZy1pZCBzcGFjZSB0byBsb25nIChtaW4gczMyKSBzbyB0aGF0IHdlIGNhbiBy
ZXBvcnQKPiB0aGUgbmVnYXRpdmUgZXJyb3IgY29kZSAob3IgZXhjbHVkZSB0aGUgdG9wIDQwOTUg
dmFsdWVzKS4KPiAtQ2hyaXMKPgpObyByZWFsIHVzZSBmb3IgaXQgYXQgdGhlIG1vbWVudC4gSSBs
ZWF2ZSB0aGlzIHVwIHRvIHlvdXIgdUFQSSBkZXNpZ25lciAKZXhwZXJpZW5jZSA6KQoKCi1MaW9u
ZWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
