Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88E3D294B0B
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Oct 2020 12:05:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B8D26F480;
	Wed, 21 Oct 2020 10:05:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 427 seconds by postgrey-1.36 at gabe;
 Wed, 21 Oct 2020 10:05:29 UTC
Received: from esa2.hc3370-68.iphmx.com (esa2.hc3370-68.iphmx.com
 [216.71.145.153])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CA5D6EAB3
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Oct 2020 10:05:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=citrix.com; s=securemail; t=1603274729;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=O29350yNgiHYjXb3qrigNg8xxVDACGF1x6pzlHVVpQk=;
 b=Adw1sR2LEIvVpRHRPVdFoJGSwxfnRwiOsAp6ExCG53KgRwxjyqsFMqy1
 +XMolCKYByNiB1O13XhjX/GUGxw6F/LkCikSq2Z2uA+N8bArNwakCXEoJ
 2NemwVohxFUqiYATjRlBap/nPX0vqON/qeW30Dpw68xl5EAZoFwzBpzl7 o=;
Authentication-Results: esa2.hc3370-68.iphmx.com;
 dkim=none (message not signed) header.i=none
IronPort-SDR: WJ9qrBzI4wb5PDRnwJ8d6vwtT4H+i5G4WN1cj774c14rWpnFEGwNM3brmK9We5kd6PZu8QJSZQ
 Gn2eAJTDSYrsPq+U/nHwd9woMJaYgTmm6qqQ1PuSOqQcspURX0C242MOSbRpGEAbo3c+CaWQpb
 oniLk1HEGkq9UqR8t5gaD3x1ymm+mOrbY6437GV2UOCnfLAMZ2/F7wrOMtg1VLQAikHslL0rEZ
 KTvSunuW+/cbw7J+cQ6xH4icz8kSQamyDyBUGtkKC9Zjc7FqJWEaL2CV+DT5iuNxppYJRnq5wh
 KHs=
X-SBRS: 2.5
X-MesageID: 29468608
X-Ironport-Server: esa2.hc3370-68.iphmx.com
X-Remote-IP: 162.221.158.21
X-Policy: $RELAYED
X-IronPort-AV: E=Sophos;i="5.77,401,1596513600"; d="scan'208";a="29468608"
Date: Wed, 21 Oct 2020 11:58:09 +0200
From: Roger Pau =?utf-8?B?TW9ubsOp?= <roger.pau@citrix.com>
To: Jason Andryuk <jandryuk@gmail.com>
Message-ID: <20201021095809.o53b6hpvjl2lbqsi@Air-de-Roger>
References: <CAKf6xpv-LRCuo-qHHWMuukYtvJiR-i+-YhLUOZeqoAFd-=swEQ@mail.gmail.com>
 <1a3b90f4-564e-84d3-fd6a-3454e8753579@citrix.com>
 <20201015113109.GA68032@Air-de-Roger>
 <CAKf6xpsJYT7VCeaf6TxPNK1QD+3U9E8ST7E+mWtfDjw0k9L9dA@mail.gmail.com>
 <CAKf6xps1q9zMBeFg7C7ZhD-JcwQ6EG6+bYvvA9QT8PzzxKqMNg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKf6xps1q9zMBeFg7C7ZhD-JcwQ6EG6+bYvvA9QT8PzzxKqMNg@mail.gmail.com>
X-ClientProxiedBy: AMSPEX02CAS01.citrite.net (10.69.22.112) To
 FTLPEX02CL06.citrite.net (10.13.108.179)
Subject: Re: [Intel-gfx] i915 dma faults on Xen
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
Cc: Andrew Cooper <andrew.cooper3@citrix.com>, intel-gfx@lists.freedesktop.org,
 xen-devel <xen-devel@lists.xenproject.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBPY3QgMTYsIDIwMjAgYXQgMTI6MjM6MjJQTSAtMDQwMCwgSmFzb24gQW5kcnl1ayB3
cm90ZToKPiBPbiBUaHUsIE9jdCAxNSwgMjAyMCBhdCAxMToxNiBBTSBKYXNvbiBBbmRyeXVrIDxq
YW5kcnl1a0BnbWFpbC5jb20+IHdyb3RlOgo+ID4KPiA+IE9uIFRodSwgT2N0IDE1LCAyMDIwIGF0
IDc6MzEgQU0gUm9nZXIgUGF1IE1vbm7DqSA8cm9nZXIucGF1QGNpdHJpeC5jb20+IHdyb3RlOgo+
ID4gPgo+ID4gPiBPbiBXZWQsIE9jdCAxNCwgMjAyMCBhdCAwODozNzowNlBNICswMTAwLCBBbmRy
ZXcgQ29vcGVyIHdyb3RlOgo+ID4gPiA+IE9uIDE0LzEwLzIwMjAgMjA6MjgsIEphc29uIEFuZHJ5
dWsgd3JvdGU6Cj4gPiA+ID4gPiBIaSwKPiA+ID4gPiA+Cj4gPiA+ID4gPiBCdWcgb3BlbmVkIGF0
IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvLS9pc3N1ZXMvMjU3Ngo+
ID4gPiA+ID4KPiA+ID4gPiA+IEknbSBzZWVpbmcgRE1BIGZhdWx0cyBmb3IgdGhlIGk5MTUgZ3Jh
cGhpY3MgaGFyZHdhcmUgb24gYSBEZWxsCj4gPiA+ID4gPiBMYXRpdHVkZSA1NTAwLiBUaGVzZSB3
ZXJlIGNhcHR1cmVkIHdoZW4gSSBwbHVnZ2VkIGludG8gYSBEZWxsCj4gPiA+ID4gPiBUaHVuZGVy
Ym9sdCBkb2NrIHdpdGggdHdvIERpc3BsYXlQb3J0IG1vbml0b3JzIGF0dGFjaGVkLiAgWGVuIDQu
MTIuNAo+ID4gPiA+ID4gc3RhZ2luZyBhbmQgTGludXggNS40LjcwIChhbmQgc29tZSBlYXJsaWVy
IHZlcnNpb25zKS4KPiA+ID4gPiA+Cj4gPiA+ID4gPiBPY3QgMTQgMTg6NDE6NDkuMDU2NDkwIGtl
cm5lbDpbICAgODUuNTcwMzQ3XSBbZHJtOmdlbjhfZGVfaXJxX2hhbmRsZXIKPiA+ID4gPiA+IFtp
OTE1XV0gKkVSUk9SKiBGYXVsdCBlcnJvcnMgb24gcGlwZSBBOiAweDAwMDAwMDgwCj4gPiA+ID4g
PiBPY3QgMTQgMTg6NDE6NDkuMDU2NDk0IGtlcm5lbDpbICAgODUuNTcwMzk1XSBbZHJtOmdlbjhf
ZGVfaXJxX2hhbmRsZXIKPiA+ID4gPiA+IFtpOTE1XV0gKkVSUk9SKiBGYXVsdCBlcnJvcnMgb24g
cGlwZSBBOiAweDAwMDAwMDgwCj4gPiA+ID4gPiBPY3QgMTQgMTg6NDE6NDkuMDU2NTg5IFZNIGh5
cGVydmlzb3I6IChYRU4pIFtWVC1EXURNQVI6W0RNQSBSZWFkXQo+ID4gPiA+ID4gUmVxdWVzdCBk
ZXZpY2UgWzAwMDA6MDA6MDIuMF0gZmF1bHQgYWRkciAzOWI1ODQ1MDAwLCBpb21tdSByZWcgPQo+
ID4gPiA+ID4gZmZmZjgyYzAwMDIxZDAwMAo+ID4gPiA+ID4gT2N0IDE0IDE4OjQxOjQ5LjA1NjU5
NCBWTSBoeXBlcnZpc29yOiAoWEVOKSBbVlQtRF1ETUFSOiByZWFzb24gMDYgLQo+ID4gPiA+ID4g
UFRFIFJlYWQgYWNjZXNzIGlzIG5vdCBzZXQKPiA+ID4gPiA+IE9jdCAxNCAxODo0MTo0OS4wNTY3
ODQga2VybmVsOlsgICA4NS41NzA2NjhdIFtkcm06Z2VuOF9kZV9pcnFfaGFuZGxlcgo+ID4gPiA+
ID4gW2k5MTVdXSAqRVJST1IqIEZhdWx0IGVycm9ycyBvbiBwaXBlIEE6IDB4MDAwMDAwODAKPiA+
ID4gPiA+IE9jdCAxNCAxODo0MTo0OS4wNTY3ODkga2VybmVsOlsgICA4NS41NzA2ODddIFtkcm06
Z2VuOF9kZV9pcnFfaGFuZGxlcgo+ID4gPiA+ID4gW2k5MTVdXSAqRVJST1IqIEZhdWx0IGVycm9y
cyBvbiBwaXBlIEE6IDB4MDAwMDAwODAKPiA+ID4gPiA+IE9jdCAxNCAxODo0MTo0OS4wNTY4ODUg
Vk0gaHlwZXJ2aXNvcjogKFhFTikgW1ZULURdRE1BUjpbRE1BIFJlYWRdCj4gPiA+ID4gPiBSZXF1
ZXN0IGRldmljZSBbMDAwMDowMDowMi4wXSBmYXVsdCBhZGRyIDQyMzhkMGEwMDAsIGlvbW11IHJl
ZyA9Cj4gPiA+ID4gPiBmZmZmODJjMDAwMjFkMDAwCj4gPiA+ID4gPiBPY3QgMTQgMTg6NDE6NDku
MDU2ODkwIFZNIGh5cGVydmlzb3I6IChYRU4pIFtWVC1EXURNQVI6IHJlYXNvbiAwNiAtCj4gPiA+
ID4gPiBQVEUgUmVhZCBhY2Nlc3MgaXMgbm90IHNldAo+ID4gPiA+ID4KPiA+ID4gPiA+IFRoZXkg
cmVwZWF0LiBJbiB0aGUgbG9nIGF0dGFjaGVkIHRvCj4gPiA+ID4gPiBodHRwczovL2dpdGxhYi5m
cmVlZGVza3RvcC5vcmcvZHJtL2ludGVsLy0vaXNzdWVzLzI1NzYsIHRoZXkgc3RhcnQgYXQKPiA+
ID4gPiA+ICJPY3QgMTQgMTg6NDE6NDkuMDU2NTg5IiBhbmQgY29udGludWUgdW50aWwgSSB1bnBs
dWcgdGhlIGRvY2sgYXJvdW5kCj4gPiA+ID4gPiAiT2N0IDE0IDE4OjQxOjU0LjgwMTgwMiIuCj4g
PiA+ID4gPgo+ID4gPiA+ID4gSSd2ZSBhbHNvIHNlZW4gc2ltaWxhciBtZXNzYWdlcyB3aGVuIGF0
dGFjaGluZyB0aGUgbGFwdG9wJ3MgSERNSSBwb3J0Cj4gPiA+ID4gPiB0byBhIDRrIG1vbml0b3Iu
IFRoZSBlRFAgZGlzcGxheSBieSBpdHNlbGYgc2VlbXMgb2theS4KPiA+ID4gPiA+Cj4gPiA+ID4g
PiBJIHRyaWVkIEZlZG9yYSAzMSAmIDMyIGxpdmUgaW1hZ2VzIHdpdGggaW50ZWxfaW9tbXU9b24s
IHNvIG5vIFhlbiwgYW5kCj4gPiA+ID4gPiBkaWRuJ3Qgc2VlIGFueSBlcnJvcnMKPiA+ID4gPiA+
Cj4gPiA+ID4gPiBUaGlzIGlzIGEga2VybmVsICYgeGVuIGxvZyB3aXRoIGRybS5kZWJ1Zz0weDFl
LiBJdCBhbHNvIGluY2x1ZGVzIHNvbWUKPiA+ID4gPiA+IGFwcGxpY2F0aW9uIChnbGFzcykgbG9n
Z2luZyB3aGVuIGl0IGNoYW5nZXMgcmVzb2x1dGlvbnMgd2hpY2ggc2VlbXMgdG8KPiA+ID4gPiA+
IHNldCBvZmYgdGhlIERNQSBmYXVsdHMuIDU1MDAtaWdmeC1tZXNzYWdlcy1rZXJuLXhlbi1nbGFz
cwo+ID4gPiA+ID4KPiA+ID4gPiA+IFJ1bm5pbmcgeGVuIHdpdGggaW9tbXU9bm8taWdmeCBkaXNh
YmxlcyB0aGUgaW9tbXUgZm9yIHRoZSBpOTE1Cj4gPiA+ID4gPiBncmFwaGljcyBhbmQgbm8gZmF1
bHRzIGFyZSByZXBvcnRlZC4gSG93ZXZlciwgdGhhdCBicmVha3Mgc29tZSBvdGhlcgo+ID4gPiA+
ID4gZGV2aWNlcyAoRGVsbCBMYXRpdHVkZSA3MjAwIGFuZCA1NTgwKSBnaXZpbmcgYSBibGFjayBz
Y3JlZW4gd2l0aDoKPiA+ID4gPiA+Cj4gPiA+ID4gPiBPY3QgMTAgMTM6MjQ6MzcuMDIyMTE3IGtl
cm5lbDpbICAgMTQuODg0NzU5XSBpOTE1IDAwMDA6MDA6MDIuMDogRmFpbGVkCj4gPiA+ID4gPiB0
byBpZGxlIGVuZ2luZXMsIGRlY2xhcmluZyB3ZWRnZWQhCj4gPiA+ID4gPiBPY3QgMTAgMTM6MjQ6
MzcuMDIyMTE4IGtlcm5lbDpbICAgMTQuOTY0Nzk0XSBpOTE1IDAwMDA6MDA6MDIuMDogRmFpbGVk
Cj4gPiA+ID4gPiB0byBpbml0aWFsaXplIEdQVSwgZGVjbGFyaW5nIGl0IHdlZGdlZCEKPiA+ID4g
PiA+Cj4gPiA+ID4gPiBBbnkgc3VnZ2VzdGlvbnMgd2VsY29tZS4KPiA+ID4gPgo+ID4gPiA+IFBy
ZXN1bWFibHkgdGhpcyBpcyB3aXRoIGEgUFYgZG9tMC4gIFdoYXQgYXJlIDM5YjU4NDUwMDAgYW5k
IDQyMzhkMGEwMDAKPiA+ID4gPiBpbiB0aGUgbWFjaGluZSBtZW1vcnkgbWFwPwo+ID4KPiA+IFRo
ZXkgYXJlIGJvZ3VzPwo+ID4gRW5kIG9mIFJBTSBpcyAweDQ3YzgwMDAwMAo+ID4gVGhhdHM6Cj4g
PiAweDA0N2M4MDAwMDAKPiA+IHZzLgo+ID4gMHgzOWI1ODQ1MDAwCj4gPiAweDQyMzhkMGEwMDAK
PiA+Cj4gPiA+ID4gVGhpcyBzbWVsbHMgbGlrZSBhIG1pc3NpbmcgUk1SUiBpbiB0aGUgQUNQSSB0
YWJsZXMuCj4gCj4gVGhlIFJNUlJzIGFyZToKPiAoWEVOKSBbVlQtRF1Ib3N0IGFkZHJlc3Mgd2lk
dGggMzkKPiAoWEVOKSBbVlQtRF1mb3VuZCBBQ1BJX0RNQVJfRFJIRDoKPiAoWEVOKSBbVlQtRF0g
IGRtYXJ1LT5hZGRyZXNzID0gZmVkOTAwMDAKPiAoWEVOKSBbVlQtRF1kcmhkLT5hZGRyZXNzID0g
ZmVkOTAwMDAgaW9tbXUtPnJlZyA9IGZmZmY4MmMwMDAyMWQwMDAKPiAoWEVOKSBbVlQtRF1jYXAg
PSAxYzAwMDBjNDA2NjA0NjIgZWNhcCA9IDE5ZTJmZjA1MDVlCj4gKFhFTikgW1ZULURdIGVuZHBv
aW50OiAwMDAwOjAwOjAyLjAKPiAoWEVOKSBbVlQtRF1mb3VuZCBBQ1BJX0RNQVJfRFJIRDoKPiAo
WEVOKSBbVlQtRF0gIGRtYXJ1LT5hZGRyZXNzID0gZmVkOTEwMDAKPiAoWEVOKSBbVlQtRF1kcmhk
LT5hZGRyZXNzID0gZmVkOTEwMDAgaW9tbXUtPnJlZyA9IGZmZmY4MmMwMDAyMWYwMDAKPiAoWEVO
KSBbVlQtRF1jYXAgPSBkMjAwOGM0MDY2MDQ2MiBlY2FwID0gZjA1MGRhCj4gKFhFTikgW1ZULURd
IElPQVBJQzogMDAwMDowMDoxZS43Cj4gKFhFTikgW1ZULURdIE1TSSBIUEVUOiAwMDAwOjAwOjFl
LjYKPiAoWEVOKSBbVlQtRF0gIGZsYWdzOiBJTkNMVURFX0FMTAo+IChYRU4pIFtWVC1EXWZvdW5k
IEFDUElfRE1BUl9STVJSOgo+IChYRU4pIFtWVC1EXSBlbmRwb2ludDogMDAwMDowMDoxNC4wCj4g
KFhFTikgW1ZULURdZG1hci5jOjYxNTogICBSTVJSIHJlZ2lvbjogYmFzZV9hZGRyIDc4ODYzMDAw
IGVuZF9hZGRyIDc4ODgyZmZmCj4gKFhFTikgW1ZULURdZm91bmQgQUNQSV9ETUFSX1JNUlI6Cj4g
KFhFTikgW1ZULURdIGVuZHBvaW50OiAwMDAwOjAwOjAyLjAKPiAoWEVOKSBbVlQtRF1kbWFyLmM6
NjE1OiAgIFJNUlIgcmVnaW9uOiBiYXNlX2FkZHIgN2QwMDAwMDAgZW5kX2FkZHIgN2Y3ZmZmZmYK
PiAoWEVOKSBbVlQtRF1mb3VuZCBBQ1BJX0RNQVJfUk1SUjoKPiAoWEVOKSBbVlQtRF0gZW5kcG9p
bnQ6IDAwMDA6MDA6MTYuNwo+IChYRU4pIFtWVC1EXWRtYXIuYzo1ODE6ICBOb24tZXhpc3RlbnQg
ZGV2aWNlICgwMDAwOjAwOjE2LjcpIGlzCj4gcmVwb3J0ZWQgaW4gUk1SUiAoNzg5MDcwMDAsIDc4
OTg2ZmZmKSdzIHNjb3BlIQo+IChYRU4pIFtWVC1EXWRtYXIuYzo1OTY6ICAgSWdub3JlIHRoZSBS
TVJSICg3ODkwNzAwMCwgNzg5ODZmZmYpIGR1ZSB0bwoKVGhpcyBpcyBhbHNvIHBhcnQgb2YgYSBy
ZXNlcnZlZCByZWdpb24sIHNvIHNob3VsZCBiZSBhZGRlZCB0byB0aGUKaW9tbXUgcGFnZSB0YWJs
ZXMgYW55d2F5IHJlZ2FyZGxlc3Mgb2YgdGhpcyBtZXNzYWdlLgoKPiBkZXZpY2VzIHVuZGVyIGl0
cyBzY29wZSBhcmUgbm90IFBDSSBkaXNjb3ZlcmFibGUhCj4gCj4gPiA+IEkgYWdyZWUuCj4gPiA+
Cj4gPiA+IENhbiB5b3UgcGFzdGUgdGhlIG1lbW9yeSBtYXAgYXMgcHJpbnRlZCBieSBYZW4gd2hl
biBib290aW5nLCBhbmQgd2hhdAo+ID4gPiBjb21tYW5kIGxpbmUgYXJlIHlvdSB1c2luZyB0byBi
b290IFhlbi4KPiA+Cj4gPiBTbyB0aGlzIGlzIE9wZW5YVCwgYW5kIGl0J3MgYm9vdGluZyBFRkkg
LT4geGVuIC0+IHRib290IC0+IHhlbgo+ID4KPiA+IFRoZXJlJ3MgdGhlIG1lbW9yeSBtYXAKPiA+
IChYRU4pIFRCT09UIFJBTSBtYXA6Cj4gPiAoWEVOKSAgMDAwMDAwMDAwMDAwMDAwMCAtIDAwMDAw
MDAwMDAwNjAwMDAgKHVzYWJsZSkKPiA+IChYRU4pICAwMDAwMDAwMDAwMDYwMDAwIC0gMDAwMDAw
MDAwMDA2ODAwMCAocmVzZXJ2ZWQpCj4gPiAoWEVOKSAgMDAwMDAwMDAwMDA2ODAwMCAtIDAwMDAw
MDAwMDAwOWUwMDAgKHVzYWJsZSkKPiA+IChYRU4pICAwMDAwMDAwMDAwMDllMDAwIC0gMDAwMDAw
MDAwMDA5ZjAwMCAocmVzZXJ2ZWQpCj4gPiAoWEVOKSAgMDAwMDAwMDAwMDA5ZjAwMCAtIDAwMDAw
MDAwMDAwYTAwMDAgKHVzYWJsZSkKPiA+IChYRU4pICAwMDAwMDAwMDAwMGEwMDAwIC0gMDAwMDAw
MDAwMDEwMDAwMCAocmVzZXJ2ZWQpCj4gPiAoWEVOKSAgMDAwMDAwMDAwMDEwMDAwMCAtIDAwMDAw
MDAwNDAwMDAwMDAgKHVzYWJsZSkKPiA+IChYRU4pICAwMDAwMDAwMDQwMDAwMDAwIC0gMDAwMDAw
MDA0MDQwMDAwMCAocmVzZXJ2ZWQpCj4gPiAoWEVOKSAgMDAwMDAwMDA0MDQwMDAwMCAtIDAwMDAw
MDAwNzAyNGIwMDAgKHVzYWJsZSkKPiA+IChYRU4pICAwMDAwMDAwMDcwMjRiMDAwIC0gMDAwMDAw
MDA3MDI0YzAwMCAoQUNQSSBOVlMpCj4gPiAoWEVOKSAgMDAwMDAwMDA3MDI0YzAwMCAtIDAwMDAw
MDAwNzAyNGQwMDAgKHJlc2VydmVkKQo+ID4gKFhFTikgIDAwMDAwMDAwNzAyNGQwMDAgLSAwMDAw
MDAwMDc3ZjE5MDAwICh1c2FibGUpCj4gPiAoWEVOKSAgMDAwMDAwMDA3N2YxOTAwMCAtIDAwMDAw
MDAwNzg5ODcwMDAgKHJlc2VydmVkKQo+ID4gKFhFTikgIDAwMDAwMDAwNzg5ODcwMDAgLSAwMDAw
MDAwMDc4YTA0MDAwIChBQ1BJIGRhdGEpCj4gPiAoWEVOKSAgMDAwMDAwMDA3OGEwNDAwMCAtIDAw
MDAwMDAwNzhlYTMwMDAgKEFDUEkgTlZTKQo+ID4gKFhFTikgIDAwMDAwMDAwNzhlYTMwMDAgLSAw
MDAwMDAwMDdhY2ZmMDAwIChyZXNlcnZlZCkKPiA+IChYRU4pICAwMDAwMDAwMDdhY2ZmMDAwIC0g
MDAwMDAwMDA3YWQwMDAwMCAodXNhYmxlKQo+ID4gKFhFTikgIDAwMDAwMDAwN2FkMDAwMDAgLSAw
MDAwMDAwMDdmODAwMDAwIChyZXNlcnZlZCkKPiA+IChYRU4pICAwMDAwMDAwMGYwMDAwMDAwIC0g
MDAwMDAwMDBmODAwMDAwMCAocmVzZXJ2ZWQpCj4gPiAoWEVOKSAgMDAwMDAwMDBmZTAwMDAwMCAt
IDAwMDAwMDAwZmUwMTEwMDAgKHJlc2VydmVkKQo+ID4gKFhFTikgIDAwMDAwMDAwZmVjMDAwMDAg
LSAwMDAwMDAwMGZlYzAxMDAwIChyZXNlcnZlZCkKPiA+IChYRU4pICAwMDAwMDAwMGZlZTAwMDAw
IC0gMDAwMDAwMDBmZWUwMTAwMCAocmVzZXJ2ZWQpCj4gPiAoWEVOKSAgMDAwMDAwMDBmZjAwMDAw
MCAtIDAwMDAwMDAxMDAwMDAwMDAgKHJlc2VydmVkKQo+ID4gKFhFTikgIDAwMDAwMDAxMDAwMDAw
MDAgLSAwMDAwMDAwNDdjODAwMDAwICh1c2FibGUpCj4gPiAoWEVOKSBFRkkgbWVtb3J5IG1hcDoK
PiA+IChYRU4pICAwMDAwMDAwMDAwMDAwLTAwMDAwMDAwOWRmZmYgdHlwZT03IGF0dHI9MDAwMDAw
MDAwMDAwMDAwZgo+ID4gKFhFTikgIDAwMDAwMDAwOWUwMDAtMDAwMDAwMDA5ZWZmZiB0eXBlPTAg
YXR0cj0wMDAwMDAwMDAwMDAwMDBmCj4gPiAoWEVOKSAgMDAwMDAwMDA5ZjAwMC0wMDAwMDAwMDlm
ZmZmIHR5cGU9MyBhdHRyPTAwMDAwMDAwMDAwMDAwMGYKPiA+IChYRU4pICAwMDAwMDAwMTAwMDAw
LTAwMDAwM2ZmZmZmZmYgdHlwZT03IGF0dHI9MDAwMDAwMDAwMDAwMDAwZgo+ID4gKFhFTikgIDAw
MDAwNDAwMDAwMDAtMDAwMDA0MDNmZmZmZiB0eXBlPTAgYXR0cj0wMDAwMDAwMDAwMDAwMDBmCj4g
PiAoWEVOKSAgMDAwMDA0MDQwMDAwMC0wMDAwMDVlMzU5ZmZmIHR5cGU9NyBhdHRyPTAwMDAwMDAw
MDAwMDAwMGYKPiA+IChYRU4pICAwMDAwMDVlMzVhMDAwLTAwMDAwNWUzOTlmZmYgdHlwZT00IGF0
dHI9MDAwMDAwMDAwMDAwMDAwZgo+ID4gKFhFTikgIDAwMDAwNWUzOWEwMDAtMDAwMDA2YTQ3ZGZm
ZiB0eXBlPTcgYXR0cj0wMDAwMDAwMDAwMDAwMDBmCj4gPiAoWEVOKSAgMDAwMDA2YTQ3ZTAwMC0w
MDAwMDZjM2VlZmZmIHR5cGU9MiBhdHRyPTAwMDAwMDAwMDAwMDAwMGYKPiA+IChYRU4pICAwMDAw
MDZjM2VmMDAwLTAwMDAwNmQ1ZWVmZmYgdHlwZT0xIGF0dHI9MDAwMDAwMDAwMDAwMDAwZgo+ID4g
KFhFTikgIDAwMDAwNmQ1ZWYwMDAtMDAwMDA2ZDg2Y2ZmZiB0eXBlPTIgYXR0cj0wMDAwMDAwMDAw
MDAwMDBmCj4gPiAoWEVOKSAgMDAwMDA2ZDg2ZDAwMC0wMDAwMDZkOTc4ZmZmIHR5cGU9MSBhdHRy
PTAwMDAwMDAwMDAwMDAwMGYKPiA+IChYRU4pICAwMDAwMDZkOTc5MDAwLTAwMDAwNmRjN2FmZmYg
dHlwZT00IGF0dHI9MDAwMDAwMDAwMDAwMDAwZgo+ID4gKFhFTikgIDAwMDAwNmRjN2IwMDAtMDAw
MDA2ZGM5OGZmZiB0eXBlPTMgYXR0cj0wMDAwMDAwMDAwMDAwMDBmCj4gPiAoWEVOKSAgMDAwMDA2
ZGM5OTAwMC0wMDAwMDZkY2M3ZmZmIHR5cGU9NCBhdHRyPTAwMDAwMDAwMDAwMDAwMGYKPiA+IChY
RU4pICAwMDAwMDZkY2M4MDAwLTAwMDAwNmRjY2RmZmYgdHlwZT0zIGF0dHI9MDAwMDAwMDAwMDAw
MDAwZgo+ID4gKFhFTikgIDAwMDAwNmRjY2UwMDAtMDAwMDA3MDFhNWZmZiB0eXBlPTQgYXR0cj0w
MDAwMDAwMDAwMDAwMDBmCj4gPiAoWEVOKSAgMDAwMDA3MDFhNjAwMC0wMDAwMDcwMWM4ZmZmIHR5
cGU9MyBhdHRyPTAwMDAwMDAwMDAwMDAwMGYKPiA+IChYRU4pICAwMDAwMDcwMWM5MDAwLTAwMDAw
NzAxZWRmZmYgdHlwZT00IGF0dHI9MDAwMDAwMDAwMDAwMDAwZgo+ID4gKFhFTikgIDAwMDAwNzAx
ZWUwMDAtMDAwMDA3MDIwNGZmZiB0eXBlPTMgYXR0cj0wMDAwMDAwMDAwMDAwMDBmCj4gPiAoWEVO
KSAgMDAwMDA3MDIwNTAwMC0wMDAwMDcwMjJjZmZmIHR5cGU9NCBhdHRyPTAwMDAwMDAwMDAwMDAw
MGYKPiA+IChYRU4pICAwMDAwMDcwMjJkMDAwLTAwMDAwNzAyNGFmZmYgdHlwZT0zIGF0dHI9MDAw
MDAwMDAwMDAwMDAwZgo+ID4gKFhFTikgIDAwMDAwNzAyNGIwMDAtMDAwMDA3MDI0YmZmZiB0eXBl
PTEwIGF0dHI9MDAwMDAwMDAwMDAwMDAwZgo+ID4gKFhFTikgIDAwMDAwNzAyNGMwMDAtMDAwMDA3
MDI0Y2ZmZiB0eXBlPTYgYXR0cj04MDAwMDAwMDAwMDAwMDBmCj4gPiAoWEVOKSAgMDAwMDA3MDI0
ZDAwMC0wMDAwMDcwMjRkZmZmIHR5cGU9NCBhdHRyPTAwMDAwMDAwMDAwMDAwMGYKPiA+IChYRU4p
ICAwMDAwMDcwMjRlMDAwLTAwMDAwNzAyODJmZmYgdHlwZT0zIGF0dHI9MDAwMDAwMDAwMDAwMDAw
Zgo+ID4gKFhFTikgIDAwMDAwNzAyODMwMDAtMDAwMDA3MDJjM2ZmZiB0eXBlPTQgYXR0cj0wMDAw
MDAwMDAwMDAwMDBmCj4gPiAoWEVOKSAgMDAwMDA3MDJjNDAwMC0wMDAwMDcwMmM4ZmZmIHR5cGU9
MyBhdHRyPTAwMDAwMDAwMDAwMDAwMGYKPiA+IChYRU4pICAwMDAwMDcwMmM5MDAwLTAwMDAwNzAy
ZGVmZmYgdHlwZT00IGF0dHI9MDAwMDAwMDAwMDAwMDAwZgo+ID4gKFhFTikgIDAwMDAwNzAyZGYw
MDAtMDAwMDA3MDMwN2ZmZiB0eXBlPTMgYXR0cj0wMDAwMDAwMDAwMDAwMDBmCj4gPiAoWEVOKSAg
MDAwMDA3MDMwODAwMC0wMDAwMDcwMzE3ZmZmIHR5cGU9NCBhdHRyPTAwMDAwMDAwMDAwMDAwMGYK
PiA+IChYRU4pICAwMDAwMDcwMzE4MDAwLTAwMDAwNzAzMTlmZmYgdHlwZT0zIGF0dHI9MDAwMDAw
MDAwMDAwMDAwZgo+ID4gKFhFTikgIDAwMDAwNzAzMWEwMDAtMDAwMDA3MDMzMWZmZiB0eXBlPTQg
YXR0cj0wMDAwMDAwMDAwMDAwMDBmCj4gPiAoWEVOKSAgMDAwMDA3MDMzMjAwMC0wMDAwMDcwMzQ5
ZmZmIHR5cGU9MyBhdHRyPTAwMDAwMDAwMDAwMDAwMGYKPiA+IChYRU4pICAwMDAwMDcwMzRhMDAw
LTAwMDAwNzAzNTZmZmYgdHlwZT0yIGF0dHI9MDAwMDAwMDAwMDAwMDAwZgo+ID4gKFhFTikgIDAw
MDAwNzAzNTcwMDAtMDAwMDA3MDM1N2ZmZiB0eXBlPTcgYXR0cj0wMDAwMDAwMDAwMDAwMDBmCj4g
PiAoWEVOKSAgMDAwMDA3MDM1ODAwMC0wMDAwMDcwMzU4ZmZmIHR5cGU9MiBhdHRyPTAwMDAwMDAw
MDAwMDAwMGYKPiA+IChYRU4pICAwMDAwMDcwMzU5MDAwLTAwMDAwNzZmM2VmZmYgdHlwZT00IGF0
dHI9MDAwMDAwMDAwMDAwMDAwZgo+ID4gKFhFTikgIDAwMDAwNzZmM2YwMDAtMDAwMDA3NzJhZmZm
ZiB0eXBlPTcgYXR0cj0wMDAwMDAwMDAwMDAwMDBmCj4gPiAoWEVOKSAgMDAwMDA3NzJiMDAwMC0w
MDAwMDc3ZjE4ZmZmIHR5cGU9MyBhdHRyPTAwMDAwMDAwMDAwMDAwMGYKPiA+IChYRU4pICAwMDAw
MDc3ZjE5MDAwLTAwMDAwNzg5ODZmZmYgdHlwZT0wIGF0dHI9MDAwMDAwMDAwMDAwMDAwZgo+ID4g
KFhFTikgIDAwMDAwNzg5ODcwMDAtMDAwMDA3OGEwM2ZmZiB0eXBlPTkgYXR0cj0wMDAwMDAwMDAw
MDAwMDBmCj4gPiAoWEVOKSAgMDAwMDA3OGEwNDAwMC0wMDAwMDc4ZWEyZmZmIHR5cGU9MTAgYXR0
cj0wMDAwMDAwMDAwMDAwMDBmCj4gPiAoWEVOKSAgMDAwMDA3OGVhMzAwMC0wMDAwMDdhYjIyZmZm
IHR5cGU9NiBhdHRyPTgwMDAwMDAwMDAwMDAwMGYKPiA+IChYRU4pICAwMDAwMDdhYjIzMDAwLTAw
MDAwN2FjZmVmZmYgdHlwZT01IGF0dHI9ODAwMDAwMDAwMDAwMDAwZgo+ID4gKFhFTikgIDAwMDAw
N2FjZmYwMDAtMDAwMDA3YWNmZmZmZiB0eXBlPTQgYXR0cj0wMDAwMDAwMDAwMDAwMDBmCj4gPiAo
WEVOKSAgMDAwMDEwMDAwMDAwMC0wMDAwNDdjN2ZmZmZmIHR5cGU9NyBhdHRyPTAwMDAwMDAwMDAw
MDAwMGYKPiA+IChYRU4pICAwMDAwMDAwMGEwMDAwLTAwMDAwMDAwZmZmZmYgdHlwZT0wIGF0dHI9
MDAwMDAwMDAwMDAwMDAwMAo+ID4gKFhFTikgIDAwMDAwN2FkMDAwMDAtMDAwMDA3YWRmZmZmZiB0
eXBlPTAgYXR0cj0wNzAwMDAwMDAwMDAwMDBmCj4gPiAoWEVOKSAgMDAwMDA3YWUwMDAwMC0wMDAw
MDdmN2ZmZmZmIHR5cGU9MCBhdHRyPTAwMDAwMDAwMDAwMDAwMDAKPiA+IChYRU4pICAwMDAwMGYw
MDAwMDAwLTAwMDAwZjdmZmZmZmYgdHlwZT0xMSBhdHRyPTgwMDAwMDAwMDAwMDEwMGQKPiA+IChY
RU4pICAwMDAwMGZlMDAwMDAwLTAwMDAwZmUwMTBmZmYgdHlwZT0xMSBhdHRyPTgwMDAwMDAwMDAw
MDAwMDEKPiA+IChYRU4pICAwMDAwMGZlYzAwMDAwLTAwMDAwZmVjMDBmZmYgdHlwZT0xMSBhdHRy
PTgwMDAwMDAwMDAwMDAwMDEKPiA+IChYRU4pICAwMDAwMGZlZTAwMDAwLTAwMDAwZmVlMDBmZmYg
dHlwZT0xMSBhdHRyPTgwMDAwMDAwMDAwMDAwMDEKPiA+IChYRU4pICAwMDAwMGZmMDAwMDAwLTAw
MDAwZmZmZmZmZmYgdHlwZT0xMSBhdHRyPTgwMDAwMDAwMDAwMDEwMGQKPiA+Cj4gPiBDb21tYW5k
IGxpbmUKPiA+IGNvbnNvbGU9Y29tMSBkb20wX21lbT1taW46NDIwTSxtYXg6NDIwTSw0MjBNIGVm
aT1uby1ycyxhdHRyPXVjCj4gPiBjb20xPTExNTIwMCw4bjEscGNpIG1iaS12aWRlbyB2Z2E9Y3Vy
cmVudCBmbGFzaz1lbmZvcmNpbmcgbG9nbHZsPWRlYnVnCj4gPiBndWVzdF9sb2dsdmw9ZGVidWcg
c210PTAgdWNvZGU9LTEgYm9vdHNjcnViPTEKPiA+IGFyZ289eWVzLG1hYy1wZXJtaXNzaXZlPTEg
aW9tbXU9Zm9yY2UsaWdmeAo+ID4KPiA+IGlvbW11PWZvcmNlLGlnZnggd2FzIHRvIGZvcmNlIGln
ZnggYmFjayBvbi4gIEkgYWRkZWQgYSBkbWkgcXVpcmsgdG8KPiA+IHNldCBuby1pZ2Z4IG9uIHRo
aXMgcGxhdGZvcm0gYXMgYSB0ZW1wb3Jhcnkgd29ya2Fyb3VuZC4KCkkgYXNzdW1lIHNldHRpbmcg
bm8taWdmeCBmaXhlZCB0aGUgaXNzdWUgYW5kIHRoZSBjYXJkIHdvcmtzIGZpbmUgaW4KdGhhdCBj
YXNlPwoKPiA+ID4gSGF2ZSB5b3UgdHJpZWQgYWRkaW5nIGRvbTAtaW9tbXU9bWFwLWluY2x1c2l2
ZSB0byB0aGUgWGVuIGNvbW1hbmQKPiA+ID4gbGluZT8KPiAKPiBTdGlsbCBzZWVpbmcgZmF1bHRz
IHdpdGggZG9tMC1pb21tdT1tYXAtaW5jbHVzaXZlLiAgQXQgYSBkaWZmZXJlbnQKPiBhZGRyZXNz
IHRoaXMgdGltZToKPiBPY3QgMTYgMTU6NTg6MDUuMTEwNzY4IFZNIGh5cGVydmlzb3I6IChYRU4p
IFtWVC1EXURNQVI6W0RNQSBSZWFkXQo+IFJlcXVlc3QgZGV2aWNlIFswMDAwOjAwOjAyLjBdIGZh
dWx0IGFkZHIgZWEwYzRmMDAwLCBpb21tdSByZWcgPSBmZmZmCgpUaGF0J3MgYWxzbyBwYXN0IHRo
ZSBlbmQgb2YgUkFNLgoKPiA4MmMwMDAyMWQwMDAKPiBPY3QgMTYgMTU6NTg6MDUuMTEwNzc0IFZN
IGh5cGVydmlzb3I6IChYRU4pIFtWVC1EXURNQVI6IHJlYXNvbiAwNiAtCj4gUFRFIFJlYWQgYWNj
ZXNzIGlzIG5vdCBzZXQKPiBPY3QgMTYgMTU6NTg6MDUuMTEwNzc3IFZNIGh5cGVydmlzb3I6IChY
RU4pIHByaW50X3Z0ZF9lbnRyaWVzOiBpb21tdQo+ICMwIGRldiAwMDAwOjAwOjAyLjAgZ21mbiBl
YTBjNGYKPiBPY3QgMTYgMTU6NTg6MDUuMTEwNzgwIFZNIGh5cGVydmlzb3I6IChYRU4pICAgICBy
b290X2VudHJ5WzAwXSA9IDQ2ZTEyOTAwMQo+IE9jdCAxNiAxNTo1ODowNS4xMTA3ODIgVk0gaHlw
ZXJ2aXNvcjogKFhFTikgICAgIGNvbnRleHRbMTBdID0gMl80NmUxMjgwMDEKPiBPY3QgMTYgMTU6
NTg6MDUuMTEwNzg1IFZNIGh5cGVydmlzb3I6IChYRU4pICAgICBsNFswMDBdID0gNDZlMTFiMDAz
Cj4gT2N0IDE2IDE1OjU4OjA1LjExMDc4NyBWTSBoeXBlcnZpc29yOiAoWEVOKSAgICAgbDNbMDNh
XSA9IDAKPiBPY3QgMTYgMTU6NTg6MDUuMTEwNzg5IFZNIGh5cGVydmlzb3I6IChYRU4pICAgICBs
M1swM2FdIG5vdCBwcmVzZW50Cj4gCj4gVGhlIHByZXZpb3VzIHBvc3RpbmcsIHRoZSB0d28gZmF1
bHRpbmcgYWRkcmVzc2VzIHJlcGVhdGVkIGluIHBhaXJzLgo+IEhlcmUgaXQgaXMgb25seSB0aGlz
IG9uZSBhZGRyZXNzIHJlcGVhdGluZy4KPiAKPiBJIHBsdWdnZWQgYW5kIHVucGx1Z2dlZCBhbmQg
YSBkaWZmZXJlbnQgYWRkcmVzcyB3YXMgcmVwZWF0aW5nIHdpdGggYQo+IGZldyBvdGhlciByYW5k
b20gYWRkcmVzc2VzIHdpdGggMSBvciAyIGZhdWx0cy4gIEhlcmUgaXMgdW5pcSAtYyBvdXRwdXQK
PiBvZiB0aGUgYWRkcmVzcyBhbmQgY291bnQgcHVsbGVkIGZyb20gdGhlIGxvZ3M6Cj4gMHgxY2U5
ZDZiMDAwIDIwMDcKPiAweDMxYjUwZDUwMDAgMQo+IDB4MWNlOWQ2YjAwMCA4ODIKPiAweDcwNzc0
MTAwMCAxCj4gMHgxY2U5ZDZiMDAwIDExMTQKPiAweDIwZDIwOTkwMDAgMQo+IDB4MWNlOWQ2YjAw
MCAzNDg5Cj4gMHhlYjk4ZWIwMDAgMQo+IDB4MWNlOWQ2YjAwMCAyNDMwCj4gMHhlYjk4ZWIwMDAg
MQo+IDB4MWNlOWQ2YjAwMCAxMzAwCj4gMHgyMmYyMGJiMDAwIDEKPiAweDFjZTlkNmIwMDAgMjY5
Cj4gMHgyMmYyMGJiMDAwIDEKPiAweDFjZTlkNmIwMDAgNTA5MQo+IDB4NmM5OWVjOTAwMCAxCj4g
MHgxY2U5ZDZiMDAwIDI5Cj4gMHhlYjk4ZWIwMDAgMQo+IDB4MWNlOWQ2YjAwMCA0NTk5Cj4gMHg2
Yzk5ZWM5MDAwIDEKPiAweDFjZTlkNmIwMDAgMTk4OQoKSG0sIGl0J3MgaGFyZCB0byB0ZWxsIHdo
YXQncyBnb2luZyBvbi4gTXkgbGltaXRlZCBleHBlcmllbmNlIHdpdGgKSU9NTVUgZmF1bHRzIG9u
IGJyb2tlbiBzeXN0ZW1zIHRoZXJlJ3MgYSBzbWFsbCByYW5nZSB0aGF0IGluaXRpYWxseQp0cmln
Z2VycyB0aG9zZSwgYW5kIHRoZW4gdGhlIGRldmljZSBnb2VzIHdvbmt5IGFuZCBzdGFydHMgYWNj
ZXNzaW5nIGEKd2hvbGUgbG9hZCBvZiBpbnZhbGlkIGFkZHJlc3Nlcy4KCllvdSBjb3VsZCB0cnkg
YWRkaW5nIHRob3NlIG1hbnVhbGx5IHVzaW5nIHRoZSBybXJyIFhlbiBjb21tYW5kIGxpbmUKb3B0
aW9uIFswXSwgbWF5YmUgeW91IGNhbiBmaWd1cmUgb3V0IHdoaWNoIHJhbmdlKHMpIGFyZSBtaXNz
aW5nPwoKUm9nZXIuCgpbMF0gaHR0cHM6Ly94ZW5iaXRzLnhlbi5vcmcvZG9jcy91bnN0YWJsZS9t
aXNjL3hlbi1jb21tYW5kLWxpbmUuaHRtbCNybXJyCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeAo=
