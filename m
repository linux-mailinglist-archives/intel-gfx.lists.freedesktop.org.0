Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94A7A2AD3F7
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Nov 2020 11:41:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19F5C8967F;
	Tue, 10 Nov 2020 10:41:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E1F48967F
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Nov 2020 10:41:15 +0000 (UTC)
IronPort-SDR: UUfBQgLKs2v+iJsP07EU332jFuhMgTSKvNWHPWztCS/kobtnYQ0ZMQiT225qjxfe2OuoxsORZp
 i8Dl2dGwTBsA==
X-IronPort-AV: E=McAfee;i="6000,8403,9800"; a="167369218"
X-IronPort-AV: E=Sophos;i="5.77,466,1596524400"; d="scan'208";a="167369218"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2020 02:41:12 -0800
IronPort-SDR: ijv3NvF486REjxDpXagLn1T3S7BK1W15ue57FYUi3c3ZYLcUF9TDA2eZUavqUp6gMKqGRoWm3A
 4RVaSJJkVcPw==
X-IronPort-AV: E=Sophos;i="5.77,466,1596524400"; d="scan'208";a="531151306"
Received: from ideacone-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.251.80.124])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2020 02:41:10 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20201022222709.29386-4-manasi.d.navare@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20201022222709.29386-1-manasi.d.navare@intel.com>
 <20201022222709.29386-4-manasi.d.navare@intel.com>
Date: Tue, 10 Nov 2020 12:41:07 +0200
Message-ID: <87tutxsddo.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 03/11] drm/i915/display/dp: Attach and set
 drm connector VRR property
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMiBPY3QgMjAyMCwgTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVs
LmNvbT4gd3JvdGU6Cj4gRnJvbTogQWRpdHlhIFN3YXJ1cCA8YWRpdHlhLnN3YXJ1cEBpbnRlbC5j
b20+Cj4KPiBUaGlzIGZ1bmN0aW9uIHNldHMgdGhlIFZSUiBwcm9wZXJ0eSBmb3IgY29ubmVjdG9y
IGJhc2VkCj4gb24gdGhlIHBsYXRmb3JtIHN1cHBvcnQsIEVESUQgbW9uaXRvciByYW5nZSBhbmQg
RFAgc2luawo+IERQQ0QgY2FwYWJpbGl0eSBvZiBvdXRwdXRpbmcgdmlkZW8gd2l0aG91dCBtc2EK
PiB0aW1pbmcgaW5mb3JtYXRpb24uCj4KPiB2NzoKPiAqIE1vdmUgdGhlIGhlbHBlciB0byBzZXBh
cmF0ZSBmaWxlIChNYW5hc2kpCj4gdjY6Cj4gKiBSZW1vdmUgdW5zZXQgb2YgcHJvcAo+IHY1Ogo+
ICogRml4IHRoZSB2cnIgcHJvcCBub3QgYmVpbmcgc2V0IGluIGtlcm5lbCAoTWFuYXNpKQo+ICog
VW5zZXQgdGhlIHByb3Agb24gY29ubmVjdG9yIGRpc2Nvbm5lY3QgKE1hbmFzaSkKPiB2NDoKPiAq
IFJlYmFzZSAoTWFuc2kpCj4gdjM6Cj4gKiBpbnRlbF9kcF9pc192cnJfY2FwYWJsZSBjYW4gYmUg
dXNlZCBmb3IgZGVidWdmcywgbWFrZSBpdAo+IG5vbiBzdGF0aWMgKE1hbmFzaSkKPiB2MjoKPiAq
IEp1c3Qgc2V0IHRoaXMgaW4gaW50ZWxfZHBfZ2V0X21vZGVzIGluc3RlYWQgb2YgbmV3IGhvb2sg
KEphbmkpCj4KPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4KPiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGxpbnV4LmludGVsLmNvbT4KPiBT
aWduZWQtb2ZmLWJ5OiBBZGl0eWEgU3dhcnVwIDxhZGl0eWEuc3dhcnVwQGludGVsLmNvbT4KPiBT
aWduZWQtb2ZmLWJ5OiBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29tPgo+
IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgfCA4ICsrKysr
KysrCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuaCB8IDEgKwo+ICAy
IGZpbGVzIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHAuYwo+IGluZGV4IDgxOGRhYWIyNTJmMy4uMzc5NGI4ZjM1ZWRjIDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+IEBAIC02Miw2ICs2Miw3
IEBACj4gICNpbmNsdWRlICJpbnRlbF9zaWRlYmFuZC5oIgo+ICAjaW5jbHVkZSAiaW50ZWxfdGMu
aCIKPiAgI2luY2x1ZGUgImludGVsX3Zkc2MuaCIKPiArI2luY2x1ZGUgImludGVsX3Zyci5oIgo+
ICAKPiAgI2RlZmluZSBEUF9EUFJYX0VTSV9MRU4gMTQKPiAgCj4gQEAgLTY2MjIsNiArNjYyMywx
MCBAQCBzdGF0aWMgaW50IGludGVsX2RwX2dldF9tb2RlcyhzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAq
Y29ubmVjdG9yKQo+ICAJZWRpZCA9IGludGVsX2Nvbm5lY3Rvci0+ZGV0ZWN0X2VkaWQ7Cj4gIAlp
ZiAoZWRpZCkgewo+ICAJCWludCByZXQgPSBpbnRlbF9jb25uZWN0b3JfdXBkYXRlX21vZGVzKGNv
bm5lY3RvciwgZWRpZCk7Cj4gKwo+ICsJCWlmIChpbnRlbF9pc192cnJfY2FwYWJsZShjb25uZWN0
b3IpKQo+ICsJCQlkcm1fY29ubmVjdG9yX3NldF92cnJfY2FwYWJsZV9wcm9wZXJ0eShjb25uZWN0
b3IsCj4gKwkJCQkJCQkgICAgICAgdHJ1ZSk7Cj4gIAkJaWYgKHJldCkKPiAgCQkJcmV0dXJuIHJl
dDsKPiAgCX0KPiBAQCAtNzA4MCw2ICs3MDg1LDkgQEAgaW50ZWxfZHBfYWRkX3Byb3BlcnRpZXMo
c3RydWN0IGludGVsX2RwICppbnRlbF9kcCwgc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3QK
PiAgCQljb25uZWN0b3ItPnN0YXRlLT5zY2FsaW5nX21vZGUgPSBEUk1fTU9ERV9TQ0FMRV9BU1BF
Q1Q7Cj4gIAo+ICAJfQo+ICsKPiArCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKQoKSSB3
b25kZXIgaWYgd2Ugc2hvdWxkIGp1c3QgYWRkIGEgd3JhcHBlcgoKI2RlZmluZSBIQVNfVlJSKGk5
MTUpIChJTlRFTF9HRU4oaTkxNSkgPj0gMTIpCgp0byBiZSBtb3JlIGRlc2NyaXB0aXZlLiBBbmQg
dXNlIGl0IGluIHRoZSBwcmV2aW91cyBwYXRjaCB0b28uCgo+ICsJCWRybV9jb25uZWN0b3JfYXR0
YWNoX3Zycl9jYXBhYmxlX3Byb3BlcnR5KGNvbm5lY3Rvcik7Cj4gIH0KPiAgCj4gIHN0YXRpYyB2
b2lkIGludGVsX2RwX2luaXRfcGFuZWxfcG93ZXJfdGltZXN0YW1wcyhzdHJ1Y3QgaW50ZWxfZHAg
KmludGVsX2RwKQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmgKPiBpbmRl
eCAzZjg2MmI0ZmQzNGYuLmFhZjBhNDE1ODJkNyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwLmgKPiBAQCAtMTUsNiArMTUsNyBAQCBlbnVtIHBpcGU7Cj4gIGVudW0g
cG9ydDsKPiAgc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGU7Cj4gIHN0cnVjdCBkcm1fZW5jb2Rl
cjsKPiArc3RydWN0IGRybV9jb25uZWN0b3I7CgpVbnJlbGF0ZWQgY2hhbmdlLgoKPiAgc3RydWN0
IGRybV9pOTE1X3ByaXZhdGU7Cj4gIHN0cnVjdCBkcm1fbW9kZXNldF9hY3F1aXJlX2N0eDsKPiAg
c3RydWN0IGRybV9kcF92c2Nfc2RwOwoKLS0gCkphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJj
ZSBHcmFwaGljcyBDZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cg==
