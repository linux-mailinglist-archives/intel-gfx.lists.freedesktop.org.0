Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E10E337C5A
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 19:20:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A2436EAD8;
	Thu, 11 Mar 2021 18:20:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7FCF6EAD8;
 Thu, 11 Mar 2021 18:20:03 +0000 (UTC)
IronPort-SDR: o7u96XDrLl4M1h+SnIBjVJD1wy5XR139P39D83mdo1ylI9dmoELx+XtaVBV73lz+t+bKYEvBOL
 IfKjmK94xN6Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9920"; a="168632760"
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="168632760"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 10:20:03 -0800
IronPort-SDR: M8HS4FQom4m7wOQtJIR7viUPsf1l/yvpKQi5JnSTLTrDjEA2aent2LtQ4zHMZBraZ8BKfpXFj6
 PBm744IUwwrw==
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="410701199"
Received: from wkryszax-mobl2.ger.corp.intel.com (HELO zkempczy-mobl2)
 ([10.213.2.99])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 10:20:01 -0800
Date: Thu, 11 Mar 2021 19:19:53 +0100
From: Zbigniew =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
To: Jason Ekstrand <jason@jlekstrand.net>
Message-ID: <20210311181953.GA124003@zkempczy-mobl2>
References: <20210310212606.766121-1-jason@jlekstrand.net>
 <20210310215007.782649-1-jason@jlekstrand.net>
 <20210311114432.GB101473@zkempczy-mobl2>
 <CAOFGe94FEfM6RKf=fcDm03OW1zvJhRpvTtnQ4dXWY+pQrf-K=Q@mail.gmail.com>
 <CAKMK7uHwYczVHD7SmHAJd9niP4+aanDvEhPviofjmQiEweK3CQ@mail.gmail.com>
 <CAOFGe96bL1Wu2Qgie7QOhMDoY-3hFhDxhokCekyEHnAC8CgjnQ@mail.gmail.com>
 <20210311165054.GA118464@zkempczy-mobl2>
 <CAOFGe96W_vgkfw_zs_v0RMrKrrQu2kmYYhfZNdgJt4Rc_duT7w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOFGe96W_vgkfw_zs_v0RMrKrrQu2kmYYhfZNdgJt4Rc_duT7w@mail.gmail.com>
Subject: Re: [Intel-gfx] [PATCH] i915: Drop relocation support on all new
 hardware (v3)
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
Cc: Dave Airlie <airlied@redhat.com>,
 Intel GFX <intel-gfx@lists.freedesktop.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBNYXIgMTEsIDIwMjEgYXQgMTE6MTg6MTFBTSAtMDYwMCwgSmFzb24gRWtzdHJhbmQg
d3JvdGU6Cj4gT24gVGh1LCBNYXIgMTEsIDIwMjEgYXQgMTA6NTEgQU0gWmJpZ25pZXcgS2VtcGN6
ecWEc2tpCj4gPHpiaWduaWV3LmtlbXBjenluc2tpQGludGVsLmNvbT4gd3JvdGU6Cj4gPgo+ID4g
T24gVGh1LCBNYXIgMTEsIDIwMjEgYXQgMTA6MjQ6MzhBTSAtMDYwMCwgSmFzb24gRWtzdHJhbmQg
d3JvdGU6Cj4gPiA+IE9uIFRodSwgTWFyIDExLCAyMDIxIGF0IDk6NTcgQU0gRGFuaWVsIFZldHRl
ciA8ZGFuaWVsQGZmd2xsLmNoPiB3cm90ZToKPiA+ID4gPgo+ID4gPiA+IE9uIFRodSwgTWFyIDEx
LCAyMDIxIGF0IDQ6NTAgUE0gSmFzb24gRWtzdHJhbmQgPGphc29uQGpsZWtzdHJhbmQubmV0PiB3
cm90ZToKPiA+ID4gPiA+Cj4gPiA+ID4gPiBPbiBUaHUsIE1hciAxMSwgMjAyMSBhdCA1OjQ0IEFN
IFpiaWduaWV3IEtlbXBjennFhHNraQo+ID4gPiA+ID4gPHpiaWduaWV3LmtlbXBjenluc2tpQGlu
dGVsLmNvbT4gd3JvdGU6Cj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+IE9uIFdlZCwgTWFyIDEwLCAy
MDIxIGF0IDAzOjUwOjA3UE0gLTA2MDAsIEphc29uIEVrc3RyYW5kIHdyb3RlOgo+ID4gPiA+ID4g
PiA+IFRoZSBWdWxrYW4gZHJpdmVyIGluIE1lc2EgZm9yIEludGVsIGhhcmR3YXJlIG5ldmVyIHVz
ZXMgcmVsb2NhdGlvbnMgaWYKPiA+ID4gPiA+ID4gPiBpdCdzIHJ1bm5pbmcgb24gYSB2ZXJzaW9u
IG9mIGk5MTUgdGhhdCBzdXBwb3J0cyBhdCBsZWFzdCBzb2Z0cGluIHdoaWNoCj4gPiA+ID4gPiA+
ID4gYWxsIHZlcnNpb25zIG9mIGk5MTUgc3VwcG9ydGluZyBHZW4xMiBkby4gIE9uIHRoZSBPcGVu
R0wgc2lkZSwgR2VuMTIrIGlzCj4gPiA+ID4gPiA+ID4gb25seSBzdXBwb3J0ZWQgYnkgaXJpcyB3
aGljaCBuZXZlciB1c2VzIHJlbG9jYXRpb25zLiAgVGhlIG9sZGVyIGk5NjUKPiA+ID4gPiA+ID4g
PiBkcml2ZXIgaW4gTWVzYSBkb2VzIHVzZSByZWxvY2F0aW9ucyBidXQgaXQgb25seSBzdXBwb3J0
cyBJbnRlbCBoYXJkd2FyZQo+ID4gPiA+ID4gPiA+IHRocm91Z2ggR2VuMTEgYW5kIGhhcyBiZWVu
IGRlcHJlY2F0ZWQgZm9yIGFsbCBoYXJkd2FyZSBHZW45Ky4gIFRoZQo+ID4gPiA+ID4gPiA+IGNv
bXB1dGUgZHJpdmVyIGFsc28gbmV2ZXIgdXNlcyByZWxvY2F0aW9ucy4gIFRoaXMgb25seSBsZWF2
ZXMgdGhlIG1lZGlhCj4gPiA+ID4gPiA+ID4gZHJpdmVyIHdoaWNoIGlzIHN1cHBvc2VkIHRvIGJl
IHN3aXRjaGluZyB0byBzb2Z0cGluIGdvaW5nIGZvcndhcmQuCj4gPiA+ID4gPiA+ID4gTWFraW5n
IHNvZnRwaW4gYSByZXF1aXJlbWVudCBmb3IgYWxsIGZ1dHVyZSBoYXJkd2FyZSBzZWVtcyByZWFz
b25hYmxlLgo+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gUmVqZWN0aW5nIHJlbG9jYXRpb25z
IHN0YXJ0aW5nIHdpdGggR2VuMTIgaGFzIHRoZSBiZW5lZml0IHRoYXQgd2UgZG9uJ3QKPiA+ID4g
PiA+ID4gPiBoYXZlIHRvIGJvdGhlciBzdXBwb3J0aW5nIGl0IG9uIHBsYXRmb3JtcyB3aXRoIGxv
Y2FsIG1lbW9yeS4gIEdpdmVuIGhvdwo+ID4gPiA+ID4gPiA+IG11Y2ggQ1BVIHRvdWNoaW5nIG9m
IG1lbW9yeSBpcyByZXF1aXJlZCBmb3IgcmVsb2NhdGlvbnMsIG5vdCBoYXZpbmcgdG8KPiA+ID4g
PiA+ID4gPiBkbyBzbyBvbiBwbGF0Zm9ybXMgd2hlcmUgbm90IGFsbCBtZW1vcnkgaXMgZGlyZWN0
bHkgQ1BVLWFjY2Vzc2libGUKPiA+ID4gPiA+ID4gPiBjYXJyaWVzIHNpZ25pZmljYW50IGFkdmFu
dGFnZXMuCj4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiB2MiAoSmFzb24gRWtzdHJhbmQpOgo+
ID4gPiA+ID4gPiA+ICAtIEFsbG93IFRHTC1MUCBwbGF0Zm9ybXMgYXMgdGhleSd2ZSBhbHJlYWR5
IHNoaXBwZWQKPiA+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+IHYzIChKYXNvbiBFa3N0cmFuZCk6
Cj4gPiA+ID4gPiA+ID4gIC0gV0FSTl9PTiBwbGF0Zm9ybXMgd2l0aCBMTUVNIHN1cHBvcnQgaW4g
Y2FzZSB0aGUgY2hlY2sgaXMgd3JvbmcKPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gSSB3YXMgYXNr
ZWQgdG8gcmV2aWV3IG9mIHRoaXMgcGF0Y2guIEl0IHdvcmtzIGFsb25nIHdpdGggZXhwZWN0ZWQK
PiA+ID4gPiA+ID4gSUdUIGNoZWNrIGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9w
YXRjaC80MjMzNjEvP3Nlcmllcz04Mjk1NCZyZXY9MjUKPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4g
QmVmb3JlIEknbGwgZ2l2ZSB5b3Ugci1iIC0gaXNuJ3QgaTkxNV9nZW1fZXhlY2J1ZmZlcjJfaW9j
dGwoKSBiZXR0ZXIgcGxhY2UKPiA+ID4gPiA+ID4gdG8gZG8gZm9yIGxvb3AganVzdCBhZnRlciBj
b3B5X2Zyb21fdXNlcigpIGFuZCBjaGVjayByZWxvY2F0aW9uX2NvdW50Pwo+ID4gPiA+ID4gPiBX
ZSBoYXZlIGFuIGFjY2VzcyB0byBleGVjMl9saXN0IHRoZXJlLCB3ZSBrbm93IHRoZSBnZW4gc28g
d2UncmUgYWJsZSB0byBzYXkKPiA+ID4gPiA+ID4gcmVsb2NhdGlvbnMgYXJlIG5vdCBzdXBwb3J0
ZWQgaW1tZWRpYXRlLCB3aXRob3V0IGVudGVyaW5nIGk5MTVfZ2VtX2RvX2V4ZWNidWZmZXIoKS4K
PiA+ID4gPiA+Cj4gPiA+ID4gPiBJIGNvbnNpZGVyZWQgdGhhdCBidXQgaXQgYWRkcyBhbiBleHRy
YSBvYmplY3QgbGlzdCB3YWxrIGZvciBhIGNhc2UKPiA+ID4gPiA+IHdoaWNoIHdlIGV4cGVjdCB0
byBub3QgaGFwcGVuLiAgSSdtIG5vdCBzdXJlIGhvdyBleHBlbnNpdmUgdGhlIGxpc3QKPiA+ID4g
PiA+IHdhbGsgd291bGQgYmUgaWYgYWxsIHdlIGRvIGlzIGNoZWNrIHRoZSBudW1iZXIgb2YgcmVs
b2NhdGlvbnMgb24gZWFjaAo+ID4gPiA+ID4gb2JqZWN0LiAgSSBndWVzcywgaWYgaXQgY29tZXMg
cmlnaHQgYWZ0ZXIgYSBjb3B5X2Zyb21fdXNlciwgaXQncyBhbGwKPiA+ID4gPiA+IGhvdCBpbiB0
aGUgY2FjaGUgc28gaXQgc2hvdWxkbid0IG1hdHRlci4gIE9rLiAgSSd2ZSBjb252aW5jZWQgbXlz
ZWxmLgo+ID4gPiA+ID4gSSdsbCBtb3ZlIGl0Lgo+ID4gPiA+Cj4gPiA+ID4gSSByZWFsbHkgd291
bGRuJ3QgbW92ZSBpdCBpZiBpdCdzIGFub3RoZXIgbGlzdCB3YWxrLiBFeGVjYnVmIGhhcyBhIGxv
dAo+ID4gPiA+IG9mIGZhc3QtcGF0aHMgZ29pbmcgb24sIGFuZCB3ZSBoYXZlIGV4dGVuc2l2ZSB0
ZXN0cyB0byBtYWtlIHN1cmUgaXQKPiA+ID4gPiB1bndpbmRzIGNvcnJlY3RseSBpbiBhbGwgY2Fz
ZXMuIEl0J3Mgbm90IHZlcnkgaW50dWl0aXZlLCBidXQgZXhlY2J1Zgo+ID4gPiA+IGNvZGUgaXNu
J3Qgc2NvcmluZyB2ZXJ5IGhpZ2ggb24gdGhhdC4KPiA+ID4KPiA+ID4gQW5kIGhlcmUgSSdkIGp1
c3QgZmluaXNoZWQgZG9pbmcgdGhlIHR5cGluZyB0byBtb3ZlIGl0LiAgR29vZCB0aGluZyBJCj4g
PiA+IGhhZG4ndCBjbG9zZWQgdmltIHlldCBhbmQgaXQgd2FzIHN0aWxsIGluIG15IHVuZG8gYnVm
ZmVyLiA6LSkKPiA+Cj4gPiBCZWZvcmUgZW50ZXJpbmcgInNsb3dlciIgcGF0aCBmcm9tIG15IHBl
cnNwZWN0aXZlIEkgd291bGQganVzdCBjaGVjawo+ID4gYmF0Y2ggb2JqZWN0IGF0IHRoYXQgcGxh
Y2UuIFdlIHN0aWxsIHdvdWxkIGhhdmUgc2luZ2xlIGxpc3Qgd2Fsa3Rocm91Z2gKPiA+IGFuZCBx
dWljayBjaGVjayBvbiB0aGUgdmVyeSBiZWdpbm5pbmcuCj4gCj4gQ2FuIHlvdSBiZSBtb3JlIHNw
ZWNpZmljIGFib3V0IHdoYXQgZXhhY3RseSB5b3UgdGhpbmsgd2UgY2FuIGNoZWNrIGF0Cj4gdGhl
IGJlZ2lubmluZz8gIEVpdGhlciB3ZSBhZGQgYSBmbGFnIHRoYXQgd2UgY2FuIE8oMSkgY2hlY2sg
YXQgdGhlCj4gYmVnaW5uaW5nIG9yIHdlIGhhdmUgdG8gY2hlY2sgZXZlcnl0aGluZyBpbiBleGVj
Ml9saXN0IGZvcgo+IGV4ZWMyX2xpc3Rbbl0ucmVsb2NhdGlvbl9jb3VudCA9PSAwLiAgVGhhdCdz
IGEgbGlzdCB3YWxrLiAgSSdtIG5vdAo+IHNlZWluZyB3aGF0IHVwLWZyb250IGNoZWNrIHlvdSdy
ZSB0aGlua2luZyB3ZSBjYW4gZG8gd2l0aG91dCB0aGUgbGlzdAo+IHdhbGsuCgpJIGV4cGVjdCB0
aGF0IGxhc3QgKGRlZmF1bHQpIG9yIGZpcnN0IChJOTE1X0VYRUNfQkFUQ0hfRklSU1QpIGV4ZWNv
YmoKKGJhdGNoKSB3aWxsIGxpa2VseSBoYXMgcmVsb2NhdGlvbnMuIFNvIHdlIGNhbiBjaGVjayB0
aGF0IHNpbmdsZSAKb2JqZWN0IHdpdGhvdXQgZW50ZXJpbmcgaTkxNV9nZW1fZG9fZXhlY2J1ZmZl
cigpLiBJZiB0aGF0IGNoZWNrCmlzIG1pc3NlZCAocmVsb2NhdGlvbl9jb3VudCA9IDApIHlvdSds
bCBjYXRjaCByZWxvY2F0aW9ucyBpbiBvdGhlcgpvYmplY3RzIGluIGNoZWNrX3JlbG9jYXRpb25z
KCkgYXMgeW91IGFscmVhZHkgZGlkLiBUaGlzIGlzIHNpbXBsZQpvcHRpbWl6YXRpb24gYnV0IHdl
IGNhbiBhdm9pZCB0d28gaXRlcmF0aW9ucyBvdmVyIGJ1ZmZlciBsaXN0IAooZmlyc3QgaXMgaW4g
ZWJfbG9va3VwX3ZtYXMoKSkuCgotLQpaYmlnbmlldwoKPiAKPiAtLUphc29uCj4gCj4gPiAtLQo+
ID4gWmJpZ25pZXcKPiA+Cj4gPiA+Cj4gPiA+IC0tSmFzb24KPiA+ID4KPiA+ID4gPiAtRGFuaWVs
Cj4gPiA+ID4KPiA+ID4gPiA+Cj4gPiA+ID4gPiAtLUphc29uCj4gPiA+ID4gPgo+ID4gPiA+ID4g
PiAtLQo+ID4gPiA+ID4gPiBaYmlnbmlldwo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+Cj4gPiA+
ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTogSmFzb24gRWtzdHJhbmQgPGphc29uQGpsZWtzdHJhbmQu
bmV0Pgo+ID4gPiA+ID4gPiA+IENjOiBEYXZlIEFpcmxpZSA8YWlybGllZEByZWRoYXQuY29tPgo+
ID4gPiA+ID4gPiA+IENjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4K
PiA+ID4gPiA+ID4gPiAtLS0KPiA+ID4gPiA+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX2V4ZWNidWZmZXIuYyB8IDE1ICsrKysrKysrKysrKy0tLQo+ID4gPiA+ID4gPiA+
ICAxIGZpbGUgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPiA+ID4g
PiA+ID4gPgo+ID4gPiA+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX2V4ZWNidWZmZXIuYwo+ID4gPiA+ID4gPiA+IGluZGV4IDk5NzcyZjM3YmZmNjAuLmIwMmRi
ZDE2YmZhMDMgMTAwNjQ0Cj4gPiA+ID4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYwo+ID4gPiA+ID4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMKPiA+ID4gPiA+ID4gPiBAQCAtMTc2
NCw3ICsxNzY0LDggQEAgZWJfcmVsb2NhdGVfdm1hX3Nsb3coc3RydWN0IGk5MTVfZXhlY2J1ZmZl
ciAqZWIsIHN0cnVjdCBlYl92bWEgKmV2KQo+ID4gPiA+ID4gPiA+ICAgICAgIHJldHVybiBlcnI7
Cj4gPiA+ID4gPiA+ID4gIH0KPiA+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+IC1zdGF0aWMgaW50
IGNoZWNrX3JlbG9jYXRpb25zKGNvbnN0IHN0cnVjdCBkcm1faTkxNV9nZW1fZXhlY19vYmplY3Qy
ICplbnRyeSkKPiA+ID4gPiA+ID4gPiArc3RhdGljIGludCBjaGVja19yZWxvY2F0aW9ucyhjb25z
dCBzdHJ1Y3QgaTkxNV9leGVjYnVmZmVyICplYiwKPiA+ID4gPiA+ID4gPiArICAgICAgICAgICAg
ICAgICAgICAgICAgICBjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2V4ZWNfb2JqZWN0MiAqZW50
cnkpCj4gPiA+ID4gPiA+ID4gIHsKPiA+ID4gPiA+ID4gPiAgICAgICBjb25zdCBjaGFyIF9fdXNl
ciAqYWRkciwgKmVuZDsKPiA+ID4gPiA+ID4gPiAgICAgICB1bnNpZ25lZCBsb25nIHNpemU7Cj4g
PiA+ID4gPiA+ID4gQEAgLTE3NzQsNiArMTc3NSwxNCBAQCBzdGF0aWMgaW50IGNoZWNrX3JlbG9j
YXRpb25zKGNvbnN0IHN0cnVjdCBkcm1faTkxNV9nZW1fZXhlY19vYmplY3QyICplbnRyeSkKPiA+
ID4gPiA+ID4gPiAgICAgICBpZiAoc2l6ZSA9PSAwKQo+ID4gPiA+ID4gPiA+ICAgICAgICAgICAg
ICAgcmV0dXJuIDA7Cj4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiArICAgICAvKiBSZWxvY2F0
aW9ucyBhcmUgZGlzYWxsb3dlZCBmb3IgYWxsIHBsYXRmb3JtcyBhZnRlciBUR0wtTFAgKi8KPiA+
ID4gPiA+ID4gPiArICAgICBpZiAoSU5URUxfR0VOKGViLT5pOTE1KSA+PSAxMiAmJiAhSVNfVElH
RVJMQUtFKGViLT5pOTE1KSkKPiA+ID4gPiA+ID4gPiArICAgICAgICAgICAgIHJldHVybiAtRUlO
VkFMOwo+ID4gPiA+ID4gPiA+ICsKPiA+ID4gPiA+ID4gPiArICAgICAvKiBBbGwgZGlzY3JldGUg
bWVtb3J5IHBsYXRmb3JtcyBhcmUgR2VuMTIgb3IgYWJvdmUgKi8KPiA+ID4gPiA+ID4gPiArICAg
ICBpZiAoV0FSTl9PTihIQVNfTE1FTShlYi0+aTkxNSkpKQo+ID4gPiA+ID4gPiA+ICsgICAgICAg
ICAgICAgcmV0dXJuIC1FSU5WQUw7Cj4gPiA+ID4gPiA+ID4gKwo+ID4gPiA+ID4gPiA+ICAgICAg
IGlmIChzaXplID4gTl9SRUxPQyhVTE9OR19NQVgpKQo+ID4gPiA+ID4gPiA+ICAgICAgICAgICAg
ICAgcmV0dXJuIC1FSU5WQUw7Cj4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiBAQCAtMTgwNyw3
ICsxODE2LDcgQEAgc3RhdGljIGludCBlYl9jb3B5X3JlbG9jYXRpb25zKGNvbnN0IHN0cnVjdCBp
OTE1X2V4ZWNidWZmZXIgKmViKQo+ID4gPiA+ID4gPiA+ICAgICAgICAgICAgICAgaWYgKG5yZWxv
YyA9PSAwKQo+ID4gPiA+ID4gPiA+ICAgICAgICAgICAgICAgICAgICAgICBjb250aW51ZTsKPiA+
ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+IC0gICAgICAgICAgICAgZXJyID0gY2hlY2tfcmVsb2Nh
dGlvbnMoJmViLT5leGVjW2ldKTsKPiA+ID4gPiA+ID4gPiArICAgICAgICAgICAgIGVyciA9IGNo
ZWNrX3JlbG9jYXRpb25zKGViLCAmZWItPmV4ZWNbaV0pOwo+ID4gPiA+ID4gPiA+ICAgICAgICAg
ICAgICAgaWYgKGVycikKPiA+ID4gPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgZ290byBl
cnI7Cj4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiBAQCAtMTg4MCw3ICsxODg5LDcgQEAgc3Rh
dGljIGludCBlYl9wcmVmYXVsdF9yZWxvY2F0aW9ucyhjb25zdCBzdHJ1Y3QgaTkxNV9leGVjYnVm
ZmVyICplYikKPiA+ID4gPiA+ID4gPiAgICAgICBmb3IgKGkgPSAwOyBpIDwgY291bnQ7IGkrKykg
ewo+ID4gPiA+ID4gPiA+ICAgICAgICAgICAgICAgaW50IGVycjsKPiA+ID4gPiA+ID4gPgo+ID4g
PiA+ID4gPiA+IC0gICAgICAgICAgICAgZXJyID0gY2hlY2tfcmVsb2NhdGlvbnMoJmViLT5leGVj
W2ldKTsKPiA+ID4gPiA+ID4gPiArICAgICAgICAgICAgIGVyciA9IGNoZWNrX3JlbG9jYXRpb25z
KGViLCAmZWItPmV4ZWNbaV0pOwo+ID4gPiA+ID4gPiA+ICAgICAgICAgICAgICAgaWYgKGVycikK
PiA+ID4gPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIGVycjsKPiA+ID4gPiA+
ID4gPiAgICAgICB9Cj4gPiA+ID4gPiA+ID4gLS0KPiA+ID4gPiA+ID4gPiAyLjI5LjIKPiA+ID4g
PiA+ID4gPgo+ID4gPiA+ID4gPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4gPiA+ID4gPiA+ID4gZHJpLWRldmVsIG1haWxpbmcgbGlzdAo+ID4gPiA+
ID4gPiA+IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiA+ID4gPiA+ID4gPiBodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbAo+ID4g
PiA+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+
ID4gPiA+IGRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKPiA+ID4gPiA+IGRyaS1kZXZlbEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKPiA+ID4gPiA+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCj4gPiA+ID4KPiA+ID4gPgo+ID4gPiA+Cj4gPiA+ID4g
LS0KPiA+ID4gPiBEYW5pZWwgVmV0dGVyCj4gPiA+ID4gU29mdHdhcmUgRW5naW5lZXIsIEludGVs
IENvcnBvcmF0aW9uCj4gPiA+ID4gaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
