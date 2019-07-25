Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E16C074C22
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jul 2019 12:49:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FFD388EA3;
	Thu, 25 Jul 2019 10:49:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B4DA6E6E8
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jul 2019 10:49:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17593541-1500050 for multiple; Thu, 25 Jul 2019 11:49:15 +0100
MIME-Version: 1.0
To: Takashi Iwai <tiwai@suse.de>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <s5himrq1jif.wl-tiwai@suse.de>
References: <20190725080300.1913-1-chris@chris-wilson.co.uk>
 <s5h8ssmttq0.wl-tiwai@suse.de> <s5h5znqtt7z.wl-tiwai@suse.de>
 <156404342516.31349.4825957285152464339@skylake-alporthouse-com>
 <156405007115.31349.12271294234555423244@skylake-alporthouse-com>
 <s5himrq1jif.wl-tiwai@suse.de>
Message-ID: <156405175285.31349.14367657058005451308@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 25 Jul 2019 11:49:12 +0100
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

UXVvdGluZyBUYWthc2hpIEl3YWkgKDIwMTktMDctMjUgMTE6NDQ6MDgpCj4gT24gVGh1LCAyNSBK
dWwgMjAxOSAxMjoyMToxMSArMDIwMCwKPiBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiAKPiA+IFF1
b3RpbmcgQ2hyaXMgV2lsc29uICgyMDE5LTA3LTI1IDA5OjMwOjI1KQo+ID4gPiBRdW90aW5nIFRh
a2FzaGkgSXdhaSAoMjAxOS0wNy0yNSAwOToyNjo1NikKPiA+ID4gPiBPbiBUaHUsIDI1IEp1bCAy
MDE5IDEwOjE2OjA3ICswMjAwLAo+ID4gPiA+IFRha2FzaGkgSXdhaSB3cm90ZToKPiA+ID4gPiA+
IAo+ID4gPiA+ID4gT24gVGh1LCAyNSBKdWwgMjAxOSAxMDowMzowMCArMDIwMCwKPiA+ID4gPiA+
IENocmlzIFdpbHNvbiB3cm90ZToKPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IEp1c3QgYSBoZWFk
cyB1cCB0aGF0IGljbCBpcyBjb25zaXN0ZW50bHkgc2hvd2luZwo+ID4gPiA+ID4gPiAKPiA+ID4g
PiA+ID4gPDQ+IFszMTUuNDc4ODMwXSBzbmRfaGRhX2ludGVsIDAwMDA6MDA6MWYuMzogYXp4X2dl
dF9yZXNwb25zZSB0aW1lb3V0LCBzd2l0Y2hpbmcgdG8gcG9sbGluZyBtb2RlOiBsYXN0IGNtZD0w
eDIwMmY4MTAwCj4gPiA+ID4gPiA+IDw0PiBbMzE2LjQ4Mjc5OV0gc25kX2hkYV9pbnRlbCAwMDAw
OjAwOjFmLjM6IE5vIHJlc3BvbnNlIGZyb20gY29kZWMsIGRpc2FibGluZyBNU0k6IGxhc3QgY21k
PTB4MjAyZjgxMDAKPiA+ID4gPiA+ID4gPDM+IFs1MDguNDEyOTE1XSBzbmRfaGRhX2NvZGVjX2hk
bWkgaGRhdWRpb0MwRDI6IFVuYWJsZSB0byBzeW5jIHJlZ2lzdGVyIDB4MmY4MTAwLiAtMTEKPiA+
ID4gPiA+ID4gCj4gPiA+ID4gPiA+IGZvbGxvd2luZyBjb21taXRzIDI3NTZkOTE0M2FhNSAoIkFM
U0E6IGhkYSAtIEZpeCBpbnRlcm1pdHRlbnQgQ09SQi9SSVJCCj4gPiA+ID4gPiA+IHN0YWxsIG9u
IEludGVsIGNoaXBzIikgYW5kIGEzMGYxNzQzZTRmNSAoIkFMU0E6IGxpbmU2OiBzaXplb2YgKGJ5
dGUpIGlzCj4gPiA+ID4gPiA+IGFsd2F5cyAxLCB1c2UgdGhhdCBmYWN0LiIpCj4gPiA+ID4gPiAK
PiA+ID4gPiA+IFRoZSB2ZXJiIHRoYXQgc3RhbGxzICgweDIwMmY4MTAwKSBpcyBhIHJlYWQgdmVy
YiAoMHhmODEsIEludGVsCj4gPiA+ID4gPiB2ZW5kb3Itc3BlY2lmaWMgdmVyYiBmb3IgSERNSSks
IHNvIGl0IHNob3VsZG4ndCBtYXR0ZXIgd2hldGhlciB3aXRoIG9yCj4gPiA+ID4gPiB3aXRob3V0
IHdyaXRlIHN5bmMsIGJlY2F1c2UgaXQgbmVlZHMgdG8gcmVhZCB0aGUgcmVzcG9uc2UgaW4gYW55
d2F5Lgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBJZiB0aGF0IHBhdGNoIGJyb2tlIGFueXRoaW5nLCBp
dCBtZWFucyB0aGF0IHNvbWV0aGluZyBlbHNlIHdhcyBhbHJlYWR5Cj4gPiA+ID4gPiBicm9rZW4u
ICBPaCB3ZWxsLCB0aGF0IElDTCBjcmFwLi4uCj4gPiA+ID4gPiAKPiA+ID4gPiA+IElzIGl0IGFi
b3V0IHRoZSBydW50aW1lIFBNLCBvciBTMyBvciBTND8gIFRoZSBvbmx5IGNhc2Ugd2UgbmVlZCB0
bwo+ID4gPiA+ID4gcmUtaXNzdWUgdGhpcyB2ZXJiIGlzIG9ubHkgUzQsIEkgc3VwcG9zZSwgc28g
d2UgbWF5IHNraXAgdGhhdCBpbiBtb3N0Cj4gPiA+ID4gPiBjYXNlcy4KPiA+ID4gPiAKPiA+ID4g
PiBOb3cgY2hlY2tpbmcgdGhlIGNvZGUsIGFuZCBJIGJlbGlldmUgdGhlIHdvcmthcm91bmQgYXBw
bGllZCB0aGVyZSBjYW4KPiA+ID4gPiBiZSBza2lwcGVkIGZvciBub24tSGFzd2VsbCBjaGlwcy4g
IENvdWxkIHlvdSB0cnkgdGhlIHBhdGNoIGJlbG93IGluCj4gPiA+ID4gYWRkaXRpb24/Cj4gPiA+
IAo+ID4gPiBEdWUgdG8gdGhlIHdheSBwYXRjaHdvcmsgd29ya3MsIHRoaXMgcGF0Y2ggd2lsbCBu
b3cgYmUgdGVzdGVkIGluc3RlYWQgb2YKPiA+ID4gdGhlIHJldmVydC4gU28gd2F0Y2ggdGhpcyBz
cGFjZS4KPiA+IAo+ID4gU2FkbHksIG5vIGNoYW5nZS4gUGF0Y2h3b3JrIGRlZmluaXRlbHkgbGlz
dHMgdGhpcyBwYXRjaCBhcyBiZWluZyB0aGUgb25lCj4gPiB0ZXN0ZWQsIGJ1dCBtYXliZSBzZW5k
IGl0IHNlcGFyYXRlbHkganVzdCBpbiBjYXNlLgo+IAo+IEhtLCBkb2VzIHRoZSBlcnJvciBpbmRp
Y2F0ZSB0aGUgc2FtZSBtZXNzYWdlICgibGFzdCBjbWQ9MHgyMDJmODEwMCIpPwoKaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM3NDUvZmktaWNsLXUy
L2lndEBpOTE1X21vZHVsZV9sb2FkQHJlbG9hZC5odG1sCjw0PiBbMzgzLjg1ODM1NF0gc25kX2hk
YV9pbnRlbCAwMDAwOjAwOjFmLjM6IGF6eF9nZXRfcmVzcG9uc2UgdGltZW91dCwgc3dpdGNoaW5n
IHRvIHBvbGxpbmcgbW9kZTogbGFzdCBjbWQ9MHgyMDE3MDUwMAo8ND4gWzM4NC44NjAyNjFdIHNu
ZF9oZGFfaW50ZWwgMDAwMDowMDoxZi4zOiBObyByZXNwb25zZSBmcm9tIGNvZGVjLCBkaXNhYmxp
bmcgTVNJOiBsYXN0IGNtZD0weDIwMTcwNTAwCjwzPiBbNTU2LjYzNjI0M10gc25kX2hkYV9jb2Rl
Y19oZG1pIGhkYXVkaW9DMEQyOiBVbmFibGUgdG8gc3luYyByZWdpc3RlciAweDJmODEwMC4gLTEx
CgpMb29rcyBkaWZmZXJlbnQsIGluZGVlZCBhbGwgdGhlIGVycm9ycyBpbiBCQVQgYXJlIGxhc3Qg
Y21kPTB4MjAyZjgxMDAKLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
