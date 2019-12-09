Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 572D2117008
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2019 16:13:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97ED16E49B;
	Mon,  9 Dec 2019 15:13:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 095CD6E49B
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Dec 2019 15:13:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19514383-1500050 for multiple; Mon, 09 Dec 2019 15:13:13 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191209150137.18578-1-ville.syrjala@linux.intel.com>
 <20191209150137.18578-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20191209150137.18578-2-ville.syrjala@linux.intel.com>
Message-ID: <157590439302.6399.13307864068739805449@skylake-alporthouse-com>
Date: Mon, 09 Dec 2019 15:13:13 +0000
Subject: Re: [Intel-gfx] [PATCH xf86-video-intel 2/2] sna: Eliminate
 sna_mode_wants_tear_free()
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBWaWxsZSBTeXJqYWxhICgyMDE5LTEyLTA5IDE1OjAxOjM3KQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gVGhlIG1vZHBh
cmFtIGNoZWNrcyBwZXJmb3JtZWQgYnkgc25hX21vZGVfd2FudHNfdGVhcl9mcmVlKCkgZG9uJ3QK
PiBnZW5lcmFsbHkgd29yayB3aGVuIHRoZSBzZXJ2ZXIgaXMgcnVubmluZyBhcyBhIHJlZ3VsYXIg
dXNlci4gSGVuY2UKPiB3ZSBjYW4ndCByZWx5IG9uIHRoZW0gdG8gaW5kaWNhdGUgd2hldGhlciBG
QkMvUFNSL2V0YyBpcyBlbmFibGVkLgo+IEEgbHNvIHRoZSAiUGFuZWwgU2VsZi1SZWZyZXNoIiBj
b25uZWN0b3IgcHJvcGVydHkgZG9lc24ndCBhY3R1YWxseQo+IGV4aXN0IHNvIHdlIGNhbiBudWtl
IHRoYXQgcGFydCBhcyB3ZWxsLiBMZXQncyBqdXN0IG51a2UgdGhlIHdob2xlCj4gdGhpbmcgYW5k
IGFzc3VtZSB3ZSB3YW50IGRpcnR5ZmIgYWx3YXlzIHdoZW4gdGVhcmZyZWUgaXMgbm90IGVuYWJs
ZWQuCj4gCj4gSSdsbCBhbnl3YXkgd2FudCB0byBlbmFibGUgRkJDIGJ5IGRlZmF1bHQgYWNyb3Nz
IHRoZSBib2FyZCBzb29uaXNoCj4gc28gdGhlIGNoZWNrIHdvdWxkbid0IHJlYWxseSBidXkgdXMg
bXVjaCAod291bGQganVzdCBleGNsdWRlIGk4MzAKPiBhbmQgYSBmZXcgb2xkIGRlc2t0b3AgY2hp
cHNldHMgd2hpY2ggZG9uJ3QgaGF2ZSBGQkMgaGFyZHdhcmUpLgo+IAo+IEFkZGl0aW9uYWxseSBp
ZiB3ZSBkb24ndCBoYXZlIHdvcmtpbmcgZGlydHlmYiB3ZSByZWFsbHkgc2hvdWxkCj4gZW5hYmxl
IHRlYXJmcmVlIGJ5IGRlZmF1bHQgYmVjYXVzZSBvdGhlcndpc2Ugd2UncmUgZ29pbmcgdG8KPiBn
ZXQgaG9ycmlibGUgbGFnIGR1ZSB0byBtaXNzaW5nIGZyb250YnVmZmVyIGZsdXNoZXMuCgpCdXQg
d2UgYWxzbyB3YW50IHRvIGVuYWJsZSBUZWFyRnJlZSBhbnl3YXkgaW4gbW9zdCBjYXNlcywgYW5k
IGhlcmUgd2UKYXJlIGRlZmF1bHRpbmcgdG8gb2ZmIGluIGNhc2VzIHdoZXJlIGl0IHdhcyBhbHJl
YWR5IG9uLgoKSSBzdGlsbCBkb24ndCBrbm93IG9uIHdoYXQgZ3JvdW5kcyB0aGUgY3V0LW9mZiBz
aG91bGQgYmUgYmFzZWQsIHRoZQpwcmltYXJ5IHF1ZXN0aW9uIGlzIGNhbiB3ZSBhZmZvcmQgdG8g
a2VlcCBhbiBleHRyYSBmcmFtZWJ1ZmZlciBwbHVzIGFueQpndWJiaW5zIG1lbW9yeT8gVGhlIHdv
cnJ5IGFib3V0IHBlcmYgYXJlIG5vdyBsYXJnZXIgbW9vdCwgc28gaXQgYm9pbHMKZG93biB0byBh
dmFpbGFibGUgbWVtb3J5IC0tIGluIHF1aXRlIGEgZmV3IGNhc2VzIFRlYXJGcmVlIGlzIGEgYmln
CmltcHJvdmVtZW50IG9uIHBvd2VyIG1hbmFnZW1lbnQsIGJ1dCB0aGF0IEkgZ3Vlc3MgaXMgY3Vy
cmVudGx5IHNuYisKKGFsdGhvdWdoIHdlIGNhbiBmaXggaWxrIHJlbmRlciBwb3dlcnN0YW5kYnkp
LgoKSG93IGFib3V0IEdUVCA+IG1hcHBhYmxlIGFwZXJ0dXJlLCBiYXNlZCBvbiB0aGUgaWRlYSB0
aGF0IHdlIGhhdmUgcm9vbQp0byBzcGFyZSB0aGF0IGNhbid0IGJlIHVzZWQgZm9yIHNjYW5vdXQ/
IFRoYXQgd291bGQgb25seSBkaXNhYmxlIGdlbjIgYnkKZGVmYXVsdC4KLUNocmlzCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
