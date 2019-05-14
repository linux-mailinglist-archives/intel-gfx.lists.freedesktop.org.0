Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E57BA1CB66
	for <lists+intel-gfx@lfdr.de>; Tue, 14 May 2019 17:09:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E21D189183;
	Tue, 14 May 2019 15:09:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3500889183
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 May 2019 15:09:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16553753-1500050 for multiple; Tue, 14 May 2019 16:08:55 +0100
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190514080439.23931-1-chris@chris-wilson.co.uk>
References: <20190514074409.23456-2-chris@chris-wilson.co.uk>
 <20190514080439.23931-1-chris@chris-wilson.co.uk>
Message-ID: <155784653541.21839.5369677766828422292@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 14 May 2019 16:08:55 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Truly bump ready tasks ahead of
 busywaits
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
Cc: Dmitry Ermilov <dmitry.ermilov@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDUtMTQgMDk6MDQ6MzkpCj4gSW4gY29tbWl0IGI3
NDA0YzdlY2IzOCAoImRybS9pOTE1OiBCdW1wIHJlYWR5IHRhc2tzIGFoZWFkIG9mCj4gYnVzeXdh
aXRzIiksIEkgdHJpZWQgY3V0dGluZyBhIGNvcm5lciBpbiBvcmRlciB0byBub3QgaW5zdGFsbCBh
IHNpZ25hbAo+IGZvciBlYWNoIG9mIG91ciBkZXBlbmRlbmNpZXMsIGFuZCBvbmx5IGxpc3RlbmVk
IHRvIHJlcXVlc3RzIG9uIHdoaWNoIHdlCj4gd2VyZSBpbnRlbmRpbmcgdG8gYnVzeXdhaXQuIFRo
ZSBjb21wcm9taXNlIHRoYXQgd2FzIG1hZGUgd2FzIHRoYXQKPiBpbnN0ZWFkIG9mIHRoZW4gYmVp
bmcgYWJsZSB0byBwcm9taXRlIHRoZSByZXF1ZXN0IHdpdGggYSBmdWxsCj4gTk9TRU1BUEhPUkUg
bGlrZSBpdHMgbm9uLWJ1c3l3YWl0aW5nIGJyZXRocmVuLCBhcyB3ZSBoYWQgbm90IGVuc3VyZWQg
d2UKPiBoYWQgY2xlYXJlZCB0aGUgc2VtYXBob3JlIGNoYWluLCB3ZSBzZXR0bGVkIGZvciBvbmx5
IHVzaW5nIHRoZSBORVdDTElFTlQKPiBib29zdC4gV2l0aCBhbiBvdmVyIHNhdHVyYXRlZCBzeXN0
ZW0gd2l0aCBtdWx0aXBsZSBORVdDTElFTlRTIGluIGZsaWdodAo+IGF0IGFueSB0aW1lLCB0aGlz
IHdhcyBmb3VuZCB0byBiZSBhbiBpbmFkZXF1YXRlIHByb21vdGlvbiBhbmQgbGVmdCB1cwo+IHdp
dGggYSBtdWNoIHBvb3JlciBzY2hlZHVsaW5nIG9yZGVyIHRoYW4gcHJpb3IgdG8gdXNpbmcgc2Vt
YXBob3Jlcy4KPiAKPiBUaGUgb3V0Y29tZSBvZiB0aGlzIHBhdGNoLCBpcyB0aGF0IGFsbCByZXF1
ZXN0cyBoYXZlIE5PU0VNQVBIT1JFCj4gcHJpb3JpdHkgd2hlbiB0aGV5IGhhdmUgbm8gZGVwZW5k
ZW5jaWVzIGFuZCBhcmUgcmVhZHkgdG8gcnVuIGFuZCBub3QKPiBidXN5d2FpdCwgcmVzdG9yaW5n
IHRoZSBwcmUtc2VtYXBob3JlIG9yZGVyaW5nIG9uIHNhdHVyYXRlZCBzeXN0ZW1zLgoKW3NuaXBd
Cgo+IEZpeGVzOiBiNzQwNGM3ZWNiMzggKCJkcm0vaTkxNTogQnVtcCByZWFkeSB0YXNrcyBhaGVh
ZCBvZiBidXN5d2FpdHMiKQoKQ29uZmlybWVkIG9uIHRoZSBza2wteGVvbiBib3ggdGhpcyBmaXhl
cyB0aGF0IHBhcnRpY3VsYXIgcmVncmVzc2lvbi4KQWxhcyB0aGF0IGlzIG5vdCB0aGUgbGFzdCBy
ZWdyZXNzaW9uIHRoZXJlLiBUaGVyZSBpcyBhbHNvIGFuIGltcGFjdCBmcm9tCk5FV0NMSUVOVC4K
CkltYWdpbmUgYSBjbGllbnQgdGhhdCBkb2VzIGEgd29yayBwYWNrZXQgb2YgKHJjc0EsIHJjc0Is
IHZjcyksIGFuZCBub3cKaW1hZ2luZSB0aGF0IHRoZXJlIGFyZSAzMCBjbGllbnRzIHN1YnNjcmli
ZWQgdG8gdGhlIHN5c3RlbS4gV2l0aApORVdDTElFTlQgcHJvbW90aW9uIHdlIGVuZCB1cCB3aXRo
CglyY3NBeDMwLCAocmNzQiwgdmNzKXgzMAp0aGF0IGlzIHdlIGRvIG5vdCBzdGFydCBleGVjdXRp
bmcgYW55IHZjcyBwYWNrZXRzIHVudGlsIGFsbCAzMCBjbGllbnRzCmNvbXBsZXRlIHRoZWlyIGZp
cnN0IHJlcXVlc3QgLS0gd2hlcmVhcyBwcmV2aW91c2x5IHdlIHdvdWxkIGludGVybGVhdmUKdGhl
IHZjcyBwYWNrZWQgZnJvbSBjbGllbnQgMSB3aXRoIHRoZSBmaXJzdCByZXF1ZXN0IGluIGNsaWVu
dCAyLiBUaGlzCmdyZWF0bHkgcmVkdWNlcyB0aGUgY29uY3VycmVuY3kgYmV0d2VlbiBjbGllbnRz
LgoKQSB0ZW1wb3JhcnkgYmFuZGFpZCB3b3VsZCBiZSB0byByZXZlcnQgCmNvbW1pdCAxNDEzYjJi
YzA3MTcwMzZhNWE2NTNlZWYyMGNjM2FlNGNjNjY1MDFhCkF1dGhvcjogQ2hyaXMgV2lsc29uIDxj
aHJpc0BjaHJpcy13aWxzb24uY28udWs+CkRhdGU6ICAgTW9uIEZlYiA0IDE1OjAxOjAxIDIwMTkg
KzAwMDAKCiAgICBkcm0vaTkxNTogVHJpbSBORVdDTElFTlQgYm9vc3RpbmcKClRoZXJlIGlzIGFu
IGludGVyZXN0aW5nIHByb2JsZW0gdW5kZXJuZWF0aCB0byB0cnkgYW5kIG1pbmltaXNlIHF1ZXVp
bmcKdGltZXMgYWNyb3NzIHRoZSBtdWx0aXBsZSBzeXN0ZW1zLCBhcyBhZ2FpbiB3ZSBhcmUgZm9y
dHVuYXRlIHRoYXQgdGhlCnByZXZpb3VzIEZJRk8gaGFwcGVucyB0byBiZSBjbG9zZSB0byBpZGVh
bCBvcmRlcmluZy4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
