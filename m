Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D2FE168233
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2020 16:48:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0EE16F491;
	Fri, 21 Feb 2020 15:48:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A5646F491
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2020 15:48:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20304106-1500050 for multiple; Fri, 21 Feb 2020 15:48:17 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200221154310.14858-1-ville.syrjala@linux.intel.com>
 <158229998279.7320.13343837397636223686@skylake-alporthouse-com>
In-Reply-To: <158229998279.7320.13343837397636223686@skylake-alporthouse-com>
Message-ID: <158230009552.7320.9102903892681841712@skylake-alporthouse-com>
Date: Fri, 21 Feb 2020 15:48:15 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Correctly terminate connector
 iteration
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMjAtMDItMjEgMTU6NDY6MjIpCj4gUXVvdGluZyBWaWxs
ZSBTeXJqYWxhICgyMDIwLTAyLTIxIDE1OjQzOjEwKQo+ID4gRnJvbTogVmlsbGUgU3lyasOkbMOk
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiA+IAo+ID4gT25lIHNob3VsZCB1c2Ug
ZHJtX2Nvbm5lY3Rvcl9saXN0X2l0ZXJfZW5kKCkgcmF0aGVyIHRoYW4KPiA+IGRybV9jb25uZWN0
b3JfbGlzdF9pdGVyX2JlZ2luKCkgdG8gdGVybWluYXRlIHRoZSBjb25uZWN0b3IKPiA+IGl0ZXJh
dGlvbi4KPiA+IAo+ID4gQ2M6IE1hbmFzaSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBpbnRlbC5j
b20+Cj4gPiBDYzogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4KPiA+IENsb3Nl
czogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvMTI3OAo+
ID4gRml4ZXM6IGUyNGJjZDM0YzFkZCAoImRybS9pOTE1L2RwOiBBZGQgYWxsIHRpbGVkIGFuZCBw
b3J0IHN5bmMgY29ubnMgdG8gbW9kZXNldCIpCj4gPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJq
w6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+ID4gLS0tCj4gPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIHwgMiArLQo+ID4gIDEgZmlsZSBjaGFu
Z2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCj4gPiBpbmRleCAwNjYwYjhjMzMzYWMuLjdlODI4MGZj
NjJiYSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHAuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCj4g
PiBAQCAtNjYyMiw3ICs2NjIyLDcgQEAgc3RhdGljIGludCBpbnRlbF9tb2Rlc2V0X3RpbGVfZ3Jv
dXAoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCj4gPiAgICAgICAgICAgICAgICAg
aWYgKHJldCkKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgIGJyZWFrOwo+ID4gICAgICAgICB9
Cj4gPiAtICAgICAgIGRybV9jb25uZWN0b3JfbGlzdF9pdGVyX2JlZ2luKCZkZXZfcHJpdi0+ZHJt
LCAmY29ubl9pdGVyKTsKPiA+ICsgICAgICAgZHJtX2Nvbm5lY3Rvcl9saXN0X2l0ZXJfZW5kKCZj
b25uX2l0ZXIpOwo+IAo+IFJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4KPiAKPiBIb3cgZGlkIHRoaXMgZXNjYXBlIGxvY2tkZXA/IEkgd29uZGVyLgoK
bG9ja19hY3F1aXJlX3NoYXJlZF9yZWN1cnNpdmUoKQoKQmVjYXVzZSBpdCdzIGEgcmVhZC1sb2Nr
LgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
