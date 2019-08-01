Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9532F7D918
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Aug 2019 12:14:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DBB66E44F;
	Thu,  1 Aug 2019 10:14:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD8546E44F;
 Thu,  1 Aug 2019 10:14:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Aug 2019 03:14:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,333,1559545200"; d="scan'208";a="191590542"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 01 Aug 2019 03:14:02 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Wei Yongjun <weiyongjun1@huawei.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Sean Paul <sean@poorly.run>
In-Reply-To: <20190704104534.12508-1-weiyongjun1@huawei.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190704104534.12508-1-weiyongjun1@huawei.com>
Date: Thu, 01 Aug 2019 13:18:23 +0300
Message-ID: <87k1bxmbo0.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH -next] drm/i915: fix possible memory leak in
 intel_hdcp_auth_downstream()
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
Cc: kernel-janitors@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Wei Yongjun <weiyongjun1@huawei.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAwNCBKdWwgMjAxOSwgV2VpIFlvbmdqdW4gPHdlaXlvbmdqdW4xQGh1YXdlaS5jb20+
IHdyb3RlOgo+ICdrc3ZfZmlmbycgaXMgbWFsbG9jZWQgaW4gaW50ZWxfaGRjcF9hdXRoX2Rvd25z
dHJlYW0oKSBhbmQgc2hvdWxkIGJlCj4gZnJlZWQgYmVmb3JlIGxlYXZpbmcgZnJvbSB0aGUgZXJy
b3IgaGFuZGxpbmcgY2FzZXMsIG90aGVyd2lzZSBpdCB3aWxsCj4gY2F1c2UgbWVtb3J5IGxlYWsu
CgoKVGhhbmtzIGZvciB0aGUgcGF0Y2gsIHNvcnJ5IGZvciB0aGUgZGVsYXksIHB1c2hlZCB0bwpk
cm0taW50ZWwtbmV4dC1xdWV1ZWQuCgpCUiwKSmFuaS4KCj4KPiBTaWduZWQtb2ZmLWJ5OiBXZWkg
WW9uZ2p1biA8d2VpeW9uZ2p1bjFAaHVhd2VpLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9oZGNwLmMgfCAzICsrLQo+ICAxIGZpbGUgY2hhbmdlZCwgMiBp
bnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZGNwLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2hkY3AuYwo+IGluZGV4IGJjM2E5NGQ0OTFjNC4uMjdiZDcyNzZhODJkIDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRjcC5jCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZGNwLmMKPiBAQCAtNTM2LDcg
KzUzNiw4IEBAIGludCBpbnRlbF9oZGNwX2F1dGhfZG93bnN0cmVhbShzdHJ1Y3QgaW50ZWxfY29u
bmVjdG9yICpjb25uZWN0b3IpCj4gIAo+ICAJaWYgKGRybV9oZGNwX2NoZWNrX2tzdnNfcmV2b2tl
ZChkZXYsIGtzdl9maWZvLCBudW1fZG93bnN0cmVhbSkpIHsKPiAgCQlEUk1fRVJST1IoIlJldm9r
ZWQgS3N2KHMpIGluIGtzdl9maWZvXG4iKTsKPiAtCQlyZXR1cm4gLUVQRVJNOwo+ICsJCXJldCA9
IC1FUEVSTTsKPiArCQlnb3RvIGVycjsKPiAgCX0KPiAgCj4gIAkvKgo+Cj4KPgoKLS0gCkphbmkg
TmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
