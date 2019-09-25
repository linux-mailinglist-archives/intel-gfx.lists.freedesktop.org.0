Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BAC85BDE3E
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2019 14:45:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30C186EBA7;
	Wed, 25 Sep 2019 12:45:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D9E56EBA7
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2019 12:45:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Sep 2019 05:45:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,548,1559545200"; d="scan'208";a="203604280"
Received: from timmpete-desk1.ger.corp.intel.com (HELO [10.252.55.52])
 ([10.252.55.52])
 by fmsmga001.fm.intel.com with ESMTP; 25 Sep 2019 05:45:45 -0700
To: Matt Roper <matthew.d.roper@intel.com>
References: <20190920114235.22411-1-maarten.lankhorst@linux.intel.com>
 <20190920114235.22411-9-maarten.lankhorst@linux.intel.com>
 <20190925045531.GN1869@mdroper-desk1.amr.corp.intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <f8c26bec-1ddc-3f97-06b5-d0c3bbd0a2bf@linux.intel.com>
Date: Wed, 25 Sep 2019 14:45:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190925045531.GN1869@mdroper-desk1.amr.corp.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 09/23] drm/i915: Do not add all planes when
 checking scalers on glk+
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T3AgMjUtMDktMjAxOSBvbSAwNjo1NSBzY2hyZWVmIE1hdHQgUm9wZXI6Cj4gT24gRnJpLCBTZXAg
MjAsIDIwMTkgYXQgMDE6NDI6MjFQTSArMDIwMCwgTWFhcnRlbiBMYW5raG9yc3Qgd3JvdGU6Cj4+
IFdlIGNhbm5vdCBzd2l0Y2ggYmV0d2VlbiBIUSBhbmQgbm9ybWFsIG1vZGUgb24gR0xLKywgc28g
b25seQo+PiBhZGQgcGxhbmVzIG9uIHBsYXRmb3JtcyB3aGVyZSBpdCBtYWtlcyBzZW5zZS4KPj4K
Pj4gV2UgY291bGQgcHJvYmFibHkgcmVzdHJpY3QgaXQgZXZlbiBtb3JlIHRvIG9ubHkgYWRkIHdo
ZW4gc2NhbGVyCj4+IHVzZXJzIHRvZ2dsZXMgYmV0d2VlbiAxIGFuZCAyLCBidXQgbGV0cyBqdXN0
IGxlYXZlIGl0IGZvciBub3cuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IE1hYXJ0ZW4gTGFua2hvcnN0
IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+Cj4+IC0tLQo+PiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWMuYyB8IDUgKysrKysKPj4gIDEgZmlsZSBj
aGFuZ2VkLCA1IGluc2VydGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2F0b21pYy5jCj4+IGluZGV4IDE1ODU5NGU2NGJiOS4uYzUwZTBiMjE4YmQ2IDEw
MDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pYy5j
Cj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljLmMKPj4g
QEAgLTQyMSw2ICs0MjEsMTEgQEAgaW50IGludGVsX2F0b21pY19zZXR1cF9zY2FsZXJzKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPj4gIAkJCSAqLwo+PiAgCQkJaWYgKCFwbGFu
ZSkgewo+PiAgCQkJCXN0cnVjdCBkcm1fcGxhbmVfc3RhdGUgKnN0YXRlOwo+PiArCj4+ICsJCQkJ
LyogTm8gbmVlZCB0byByZXByb2dyYW0sIHdlJ3JlIG5vdCBjaGFuZ2luZyBzY2FsaW5nIG1vZGUg
Ki8KPj4gKwkJCQlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMCB8fCBJU19HRU1JTklMQUtF
KGRldl9wcml2KSkKPj4gKwkJCQkJY29udGludWU7Cj4+ICsKPiBXZSBjb3VsZCBwcm9iYWJseSBq
dXN0IGNvbWJpbmUgdGhpcyBpbnRvIHRoZSBleGlzdGluZyAhcGxhbmUgY29uZGl0aW9uCj4gYW5k
IGVuaGFuY2UgdGhlIGNvbW1lbnQgYWJvdmUgdGhhdCB0byBzYXkgIk5vdGUgdGhhdCBHTEsrIHNj
YWxlcnMgZG9uJ3QKPiBoYXZlIGEgSFEgbW9kZSBzbyB0aGlzIGlzbid0IG5lY2Vzc2FyeSBvbiB0
aG9zZSBwbGF0Zm9ybXMuIgo+Cj4gRWl0aGVyIHdheSwKPgo+IFJldmlld2VkLWJ5OiBNYXR0IFJv
cGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgoKSSBjaGFuZ2VkIHRoZSBjb21lbnQgc2xp
Z2h0bHksIGJ1dCB3ZSBuZWVkIHRoZSBjb250aW51ZSBvciB3ZSBnZXQgYSBudWxsIHBvaW50ZXIg
ZGVyZWYuCgpUaGFua3MgZm9yIHJldmlldywgcHVzaGVkIDYsIDgsIDkgYW5kIHRoZSBmaXJzdCBw
YXRjaCAoYWx0aG91Z2ggbmV3ZXIgdjUgdmVyc2lvbiB3aXRoIFZpbGxlJ3MgUi1CKS4KCj4KPj4g
IAkJCQlwbGFuZSA9IGRybV9wbGFuZV9mcm9tX2luZGV4KCZkZXZfcHJpdi0+ZHJtLCBpKTsKPj4g
IAkJCQlzdGF0ZSA9IGRybV9hdG9taWNfZ2V0X3BsYW5lX3N0YXRlKGRybV9zdGF0ZSwgcGxhbmUp
Owo+PiAgCQkJCWlmIChJU19FUlIoc3RhdGUpKSB7Cj4+IC0tIAo+PiAyLjIwLjEKPj4KPj4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdAo+PiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4+IGh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4CgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
