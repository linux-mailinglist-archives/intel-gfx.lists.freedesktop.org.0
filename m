Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 64AC71F05DD
	for <lists+intel-gfx@lfdr.de>; Sat,  6 Jun 2020 10:58:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C79396E05C;
	Sat,  6 Jun 2020 08:58:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12F876E05C
 for <intel-gfx@lists.freedesktop.org>; Sat,  6 Jun 2020 08:58:45 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21414343-1500050 for multiple; Sat, 06 Jun 2020 09:58:41 +0100
MIME-Version: 1.0
In-Reply-To: <20200606031803.3309624-1-matthew.d.roper@intel.com>
References: <20200606031803.3309624-1-matthew.d.roper@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
Message-ID: <159143391956.22562.4532580926711902889@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Sat, 06 Jun 2020 09:58:39 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Restore DP-E to VBT mapping table
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNYXR0IFJvcGVyICgyMDIwLTA2LTA2IDA0OjE4OjAzKQo+IFdlIGFjY2lkZW50YWxs
eSBkcm9wcGVkIG1hdGNoaW5nIGZvciBEVk9fUE9SVF9EUEUgZnJvbSB0aGUgVkJUIG1hcHBpbmcK
PiB0YWJsZSB3aGVuIHdlIHJlZmFjdG9yZWQgdGhlIGZ1bmN0aW9uLiAgUmVzdG9yZSBpdC4KPiAK
PiBGaXhlczogNDYyODE0MmFlY2NjICgiZHJtL2k5MTUvcmtsOiBwcm92aWRlIHBvcnQvcGh5IG1h
cHBpbmcgZm9yIHZidCIpCj4gQ2M6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50
ZWwuY29tPgo+IENjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgo+IENj
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+IENjOiBD
aHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBTaWduZWQtb2ZmLWJ5OiBN
YXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYyB8IDIgKy0KPiAgMSBmaWxlIGNoYW5nZWQs
IDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9iaW9zLmMKPiBpbmRleCA0ZjFhNzJhOTBiOGYuLmM5NzRjNzE2Zjg1OSAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYwo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jCj4gQEAgLTE2
NTAsNyArMTY1MCw3IEBAIHN0YXRpYyBlbnVtIHBvcnQgZHZvX3BvcnRfdG9fcG9ydChzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4gICAgICAgICAgICAgICAgIFtQT1JUX0JdID0g
eyBEVk9fUE9SVF9IRE1JQiwgRFZPX1BPUlRfRFBCLCAtMSB9LAo+ICAgICAgICAgICAgICAgICBb
UE9SVF9DXSA9IHsgRFZPX1BPUlRfSERNSUMsIERWT19QT1JUX0RQQywgLTEgfSwKPiAgICAgICAg
ICAgICAgICAgW1BPUlRfRF0gPSB7IERWT19QT1JUX0hETUlELCBEVk9fUE9SVF9EUEQsIC0xIH0s
Cj4gLSAgICAgICAgICAgICAgIFtQT1JUX0VdID0geyBEVk9fUE9SVF9DUlQsIERWT19QT1JUX0hE
TUlFLCAtMSB9LAo+ICsgICAgICAgICAgICAgICBbUE9SVF9FXSA9IHsgRFZPX1BPUlRfSERNSUUs
IERWT19QT1JUX0RQRSwgRFZPX1BPUlRfQ1JUIH0sCgpBaCwgeWVzLiBUaGF0IHdhcyBhbiBlYXN5
IHRvIG92ZXJsb29rIGNoYW5nZSBpbiB0aGUgdGFibGUsClJldmlld2VkLWJ5OiBDaHJpcyBXaWxz
b24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KCklzIHRoZXJlIGEgd2F5IHdlIGNhbiBjb21w
dXRlIGEgSFcgY292ZXJhZ2UgbWF0cml4IGZvciB0aGlzIHRhYmxlPyBBbmQKc2VlIGlmIHdlIG5l
ZWQgdG8gZ2V0IG1vcmUgbWFjaGluZXMvY29ubmVjdG9ycyBmb3IgQ0k/Ci1DaHJpcwpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
