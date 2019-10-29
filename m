Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7395CE894A
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2019 14:20:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D50A66E2EA;
	Tue, 29 Oct 2019 13:20:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 573AD6E2EA
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2019 13:20:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Oct 2019 06:20:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,244,1569308400"; d="scan'208";a="203561343"
Received: from amanna-mobl.gar.corp.intel.com (HELO [10.66.122.10])
 ([10.66.122.10])
 by orsmga006.jf.intel.com with ESMTP; 29 Oct 2019 06:20:30 -0700
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
References: <20191017155810.21654-1-tvrtko.ursulin@linux.intel.com>
 <a936adad-0172-8f6d-106b-9548315b971a@intel.com>
From: Animesh Manna <animesh.manna@intel.com>
Message-ID: <76cd793a-d26c-9e37-8047-db2b65b6d860@intel.com>
Date: Tue, 29 Oct 2019 18:50:28 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <a936adad-0172-8f6d-106b-9548315b971a@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsb: Remove PIN_MAPPABLE from the
 DSB object VMA
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiAxMC8yNS8yMDE5IDg6NTIgUE0sIEFuaW1lc2ggTWFubmEgd3JvdGU6Cj4KPiBPbiAxMC8x
Ny8yMDE5IDk6MjggUE0sIFR2cnRrbyBVcnN1bGluIHdyb3RlOgo+PiBGcm9tOiBUdnJ0a28gVXJz
dWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+Pgo+PiBJdCBzb3VuZHMgbGlrZSB0aGUg
aGFyZHdhcmUgb25seSBuZWVkcyB0aGUgRFNCIG9iamVjdCB0byBiZSBpbiBnbG9iYWwgCj4+IEdU
VAo+PiBhbmQgbm90IGluIHRoZSBtYXBwYWJsZSByZWdpb24uCj4KPiBDdXJyZW50bHkgdGVzdGVk
IGFuZCB3b3JraW5nIHdpdGhvdXQgYW55IHJlZ3Jlc3Npb24sIHdhaXRpbmcgZm9yIAo+IGNvbmZp
cm1hdGlvbiBmcm9tIGgvdyB0ZWFtLCB3aWxsIHVwZGF0ZSBzb29uLgoKR290IGNvbmZpcm1hdGlv
biBmcm9tIGgvdyB0ZWFtLCBjaGFuZ2VzIGFyZSBvayB0byBtZS4KUmV2aWV3ZWQtYnk6IEFuaW1l
c2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPgpUaGFua3MgQ2hyaXMsIFR2cnRrbyBm
b3IgdGhlIGxlYXJuaW5nLgoKUmVnYXJkcywKQW5pbWVzaAoKPgo+IFJlZ2FyZHMsCj4gQW5pbWVz
aAo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50
ZWwuY29tPgo+PiBDYzogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+Cj4+
IC0tLQo+PiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMgfCAyICst
Cj4+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4+Cj4+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jIAo+
PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMKPj4gaW5kZXggYmI1
YTBlOTFiMzcwLi5kOGFkNWZlMWVmZWYgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kc2IuYwo+PiBAQCAtMTE5LDcgKzExOSw3IEBAIGludGVsX2RzYl9nZXQoc3Ry
dWN0IGludGVsX2NydGMgKmNydGMpCj4+ICAgICAgICAgICBnb3RvIGVycjsKPj4gICAgICAgfQo+
PiAgIC0gICAgdm1hID0gaTkxNV9nZW1fb2JqZWN0X2dndHRfcGluKG9iaiwgTlVMTCwgMCwgMCwg
UElOX01BUFBBQkxFKTsKPj4gKyAgICB2bWEgPSBpOTE1X2dlbV9vYmplY3RfZ2d0dF9waW4ob2Jq
LCBOVUxMLCAwLCAwLCAwKTsKPj4gICAgICAgaWYgKElTX0VSUih2bWEpKSB7Cj4+ICAgICAgICAg
ICBEUk1fRVJST1IoIlZtYSBjcmVhdGlvbiBmYWlsZWRcbiIpOwo+PiAgICAgICAgICAgaTkxNV9n
ZW1fb2JqZWN0X3B1dChvYmopOwo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
