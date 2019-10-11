Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E42BED4749
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 20:15:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47F326E427;
	Fri, 11 Oct 2019 18:15:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D596D6E427
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2019 18:15:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18808247-1500050 for multiple; Fri, 11 Oct 2019 19:15:53 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191011133911.18621-1-mika.kuoppala@linux.intel.com>
 <20191011133911.18621-2-mika.kuoppala@linux.intel.com>
In-Reply-To: <20191011133911.18621-2-mika.kuoppala@linux.intel.com>
Message-ID: <157081775098.31572.12430315088719830208@skylake-alporthouse-com>
Date: Fri, 11 Oct 2019 19:15:51 +0100
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/tgl: Add HDC Pipeline Flush
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTEwLTExIDE0OjM5OjEwKQo+IEFkZCBoZGMgcGlw
ZWxpbmUgZmx1c2ggdG8gZW5zdXJlIG1lbW9yeSBzdGF0ZSBpcyBjb2hlcmVudAo+IGluIEwzIHdo
ZW4gd2UgYXJlIGRvbmUuCj4gCj4gU2lnbmVkLW9mZi1ieTogTWlrYSBLdW9wcGFsYSA8bWlrYS5r
dW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2dwdV9jb21tYW5kcy5oIHwgMSArCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2xyYy5jICAgICAgICAgIHwgMSArCj4gIDIgZmlsZXMgY2hhbmdlZCwgMiBpbnNlcnRpb25z
KCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dwdV9j
b21tYW5kcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3B1X2NvbW1hbmRzLmgK
PiBpbmRleCA4YzhlNmJmODI0YTkuLjY5NmI2NDk1YjBkYSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ncHVfY29tbWFuZHMuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2dwdV9jb21tYW5kcy5oCj4gQEAgLTIzMiw2ICsyMzIsNyBAQAo+
ICAjZGVmaW5lICAgUElQRV9DT05UUk9MX1RFWFRVUkVfQ0FDSEVfSU5WQUxJREFURSAgICAgICAg
ICAgICAgICAoMTw8MTApIC8qIEdNNDUrIG9ubHkgKi8KPiAgI2RlZmluZSAgIFBJUEVfQ09OVFJP
TF9MM19ST19DQUNIRV9JTlZBTElEQVRFICAgICAgICAgICgxPDwxMCkgLyogZ2VuMTIgKi8KPiAg
I2RlZmluZSAgIFBJUEVfQ09OVFJPTF9JTkRJUkVDVF9TVEFURV9ESVNBQkxFICAgICAgICAgICgx
PDw5KQo+ICsjZGVmaW5lICAgUElQRV9DT05UUk9MX0hEQ19QSVBFTElORV9GTFVTSCAgICAgICAg
ICAgICAgKDE8PDkpICAvKiBnZW4gMTIgKi8KCkFjay4gSnVzdCBuZWVkIHRvIHR3ZWFrIHVzYWdl
LgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
