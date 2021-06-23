Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D24B3B1B2F
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Jun 2021 15:32:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD51B6E8E1;
	Wed, 23 Jun 2021 13:32:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F38D96E8DF;
 Wed, 23 Jun 2021 13:32:55 +0000 (UTC)
IronPort-SDR: kWOxupNWW7w9z3Zzi+2yY56gHuPYWw2fUFgf8WC05kccYMIFS/gpIKAk6yCezjk7ERMEQnRBf+
 jAGWZ0tGhADw==
X-IronPort-AV: E=McAfee;i="6200,9189,10023"; a="207302690"
X-IronPort-AV: E=Sophos;i="5.83,293,1616482800"; d="scan'208";a="207302690"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2021 06:32:54 -0700
IronPort-SDR: MZAyvz92FB+Ky5dMtmwO5aDPs3Fp7yYn718A1KBwYaxGZ8pdV6dIATjt0TI6QrXOz3ZAhKRIgs
 N2xmHZxuCvUA==
X-IronPort-AV: E=Sophos;i="5.83,293,1616482800"; d="scan'208";a="639452806"
Received: from bkuncer-mobl1.ger.corp.intel.com (HELO [10.249.254.243])
 ([10.249.254.243])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2021 06:32:53 -0700
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20210623112637.266855-1-matthew.auld@intel.com>
 <20210623112637.266855-3-matthew.auld@intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <62c8a7a3-dcdd-ec6d-a976-7203e406d364@linux.intel.com>
Date: Wed, 23 Jun 2021 15:32:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210623112637.266855-3-matthew.auld@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/gtt: ignore min_page_size for
 paging structures
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
Cc: dri-devel@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDYvMjMvMjEgMToyNiBQTSwgTWF0dGhldyBBdWxkIHdyb3RlOgo+IFRoZSBtaW5fcGFnZV9z
aXplIGlzIG9ubHkgbmVlZGVkIGZvciBwYWdlcyBpbnNlcnRlZCBpbnRvIHRoZSBHVFQsIGFuZAo+
IGZvciBvdXIgcGFnaW5nIHN0cnVjdHVyZXMgd2Ugb25seSBuZWVkIGF0IG1vc3QgNEsgYnl0ZXMs
IHNvIHNpbXBseQo+IGlnbm9yZSB0aGUgbWluX3BhZ2Vfc2l6ZSByZXN0cmljdGlvbnMgaGVyZSwg
b3RoZXJ3aXNlIHdlIG1pZ2h0IHNlZSBzb21lCj4gc2V2ZXJlIG92ZXJhbGxvY2F0aW9uIG9uIHNv
bWUgZGV2aWNlcy4KPgo+IFNpZ25lZC1vZmYtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxk
QGludGVsLmNvbT4KPiBDYzogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGlu
dXguaW50ZWwuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3R0
LmMgfCAyICstCj4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24o
LSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndHQuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0dC5jCj4gaW5kZXggMDg0ZWE2NWQ1OWMw
Li42MWU4YThjMjUzNzQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfZ3R0LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndHQuYwo+IEBA
IC0xNiw3ICsxNiw3IEBAIHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICphbGxvY19wdF9sbWVt
KHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtLCBpbnQgc3opCj4gICB7Cj4gICAJc3RydWN0
IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iajsKPiAgIAo+IC0Jb2JqID0gaTkxNV9nZW1fb2JqZWN0
X2NyZWF0ZV9sbWVtKHZtLT5pOTE1LCBzeiwgMCk7Cj4gKwlvYmogPSBfX2k5MTVfZ2VtX29iamVj
dF9jcmVhdGVfbG1lbV93aXRoX3BzKHZtLT5pOTE1LCBzeiwgc3osIDApOwoKU28gaXMgdGhpcyBt
ZW1vcnkgYWx3YXlzIHJlcXVpcmVkIHRvIGJlIHNpemUgYWxpZ25lZD8gb3Igc2hvdWxkIGl0IHNh
eSAKc3osIFBBR0VfU0laRT8KCi9UaG9tYXMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngK
