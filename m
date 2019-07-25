Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2B4874B6B
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jul 2019 12:21:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EDDC6E6CA;
	Thu, 25 Jul 2019 10:21:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8F626E6C7
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jul 2019 10:21:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17592524-1500050 for multiple; Thu, 25 Jul 2019 11:21:13 +0100
MIME-Version: 1.0
To: Takashi Iwai <tiwai@suse.de>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <156404342516.31349.4825957285152464339@skylake-alporthouse-com>
References: <20190725080300.1913-1-chris@chris-wilson.co.uk>
 <s5h8ssmttq0.wl-tiwai@suse.de> <s5h5znqtt7z.wl-tiwai@suse.de>
 <156404342516.31349.4825957285152464339@skylake-alporthouse-com>
Message-ID: <156405007115.31349.12271294234555423244@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 25 Jul 2019 11:21:11 +0100
Subject: Re: [Intel-gfx] [PATCH] Revert "ALSA: hda - Fix intermittent
 CORB/RIRB stall on Intel chips"
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDctMjUgMDk6MzA6MjUpCj4gUXVvdGluZyBUYWth
c2hpIEl3YWkgKDIwMTktMDctMjUgMDk6MjY6NTYpCj4gPiBPbiBUaHUsIDI1IEp1bCAyMDE5IDEw
OjE2OjA3ICswMjAwLAo+ID4gVGFrYXNoaSBJd2FpIHdyb3RlOgo+ID4gPiAKPiA+ID4gT24gVGh1
LCAyNSBKdWwgMjAxOSAxMDowMzowMCArMDIwMCwKPiA+ID4gQ2hyaXMgV2lsc29uIHdyb3RlOgo+
ID4gPiA+IAo+ID4gPiA+IEp1c3QgYSBoZWFkcyB1cCB0aGF0IGljbCBpcyBjb25zaXN0ZW50bHkg
c2hvd2luZwo+ID4gPiA+IAo+ID4gPiA+IDw0PiBbMzE1LjQ3ODgzMF0gc25kX2hkYV9pbnRlbCAw
MDAwOjAwOjFmLjM6IGF6eF9nZXRfcmVzcG9uc2UgdGltZW91dCwgc3dpdGNoaW5nIHRvIHBvbGxp
bmcgbW9kZTogbGFzdCBjbWQ9MHgyMDJmODEwMAo+ID4gPiA+IDw0PiBbMzE2LjQ4Mjc5OV0gc25k
X2hkYV9pbnRlbCAwMDAwOjAwOjFmLjM6IE5vIHJlc3BvbnNlIGZyb20gY29kZWMsIGRpc2FibGlu
ZyBNU0k6IGxhc3QgY21kPTB4MjAyZjgxMDAKPiA+ID4gPiA8Mz4gWzUwOC40MTI5MTVdIHNuZF9o
ZGFfY29kZWNfaGRtaSBoZGF1ZGlvQzBEMjogVW5hYmxlIHRvIHN5bmMgcmVnaXN0ZXIgMHgyZjgx
MDAuIC0xMQo+ID4gPiA+IAo+ID4gPiA+IGZvbGxvd2luZyBjb21taXRzIDI3NTZkOTE0M2FhNSAo
IkFMU0E6IGhkYSAtIEZpeCBpbnRlcm1pdHRlbnQgQ09SQi9SSVJCCj4gPiA+ID4gc3RhbGwgb24g
SW50ZWwgY2hpcHMiKSBhbmQgYTMwZjE3NDNlNGY1ICgiQUxTQTogbGluZTY6IHNpemVvZiAoYnl0
ZSkgaXMKPiA+ID4gPiBhbHdheXMgMSwgdXNlIHRoYXQgZmFjdC4iKQo+ID4gPiAKPiA+ID4gVGhl
IHZlcmIgdGhhdCBzdGFsbHMgKDB4MjAyZjgxMDApIGlzIGEgcmVhZCB2ZXJiICgweGY4MSwgSW50
ZWwKPiA+ID4gdmVuZG9yLXNwZWNpZmljIHZlcmIgZm9yIEhETUkpLCBzbyBpdCBzaG91bGRuJ3Qg
bWF0dGVyIHdoZXRoZXIgd2l0aCBvcgo+ID4gPiB3aXRob3V0IHdyaXRlIHN5bmMsIGJlY2F1c2Ug
aXQgbmVlZHMgdG8gcmVhZCB0aGUgcmVzcG9uc2UgaW4gYW55d2F5Lgo+ID4gPiAKPiA+ID4gSWYg
dGhhdCBwYXRjaCBicm9rZSBhbnl0aGluZywgaXQgbWVhbnMgdGhhdCBzb21ldGhpbmcgZWxzZSB3
YXMgYWxyZWFkeQo+ID4gPiBicm9rZW4uICBPaCB3ZWxsLCB0aGF0IElDTCBjcmFwLi4uCj4gPiA+
IAo+ID4gPiBJcyBpdCBhYm91dCB0aGUgcnVudGltZSBQTSwgb3IgUzMgb3IgUzQ/ICBUaGUgb25s
eSBjYXNlIHdlIG5lZWQgdG8KPiA+ID4gcmUtaXNzdWUgdGhpcyB2ZXJiIGlzIG9ubHkgUzQsIEkg
c3VwcG9zZSwgc28gd2UgbWF5IHNraXAgdGhhdCBpbiBtb3N0Cj4gPiA+IGNhc2VzLgo+ID4gCj4g
PiBOb3cgY2hlY2tpbmcgdGhlIGNvZGUsIGFuZCBJIGJlbGlldmUgdGhlIHdvcmthcm91bmQgYXBw
bGllZCB0aGVyZSBjYW4KPiA+IGJlIHNraXBwZWQgZm9yIG5vbi1IYXN3ZWxsIGNoaXBzLiAgQ291
bGQgeW91IHRyeSB0aGUgcGF0Y2ggYmVsb3cgaW4KPiA+IGFkZGl0aW9uPwo+IAo+IER1ZSB0byB0
aGUgd2F5IHBhdGNod29yayB3b3JrcywgdGhpcyBwYXRjaCB3aWxsIG5vdyBiZSB0ZXN0ZWQgaW5z
dGVhZCBvZgo+IHRoZSByZXZlcnQuIFNvIHdhdGNoIHRoaXMgc3BhY2UuCgpTYWRseSwgbm8gY2hh
bmdlLiBQYXRjaHdvcmsgZGVmaW5pdGVseSBsaXN0cyB0aGlzIHBhdGNoIGFzIGJlaW5nIHRoZSBv
bmUKdGVzdGVkLCBidXQgbWF5YmUgc2VuZCBpdCBzZXBhcmF0ZWx5IGp1c3QgaW4gY2FzZS4KLUNo
cmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
