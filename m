Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 02CC049E30
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 12:24:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67BD26E136;
	Tue, 18 Jun 2019 10:24:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CDC76E136
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2019 10:24:37 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16938310-1500050 for multiple; Tue, 18 Jun 2019 11:24:30 +0100
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <op.z3i9m3f4xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
References: <20190617100917.13110-1-chris@chris-wilson.co.uk>
 <op.z3i9m3f4xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
Message-ID: <156085347039.31375.13894975603668668933@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 18 Jun 2019 11:24:30 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc: Reduce verbosity on log
 overflows
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

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA2LTE3IDE1OjM4OjUzKQo+IE9uIE1vbiwg
MTcgSnVuIDIwMTkgMTI6MDk6MTcgKzAyMDAsIENocmlzIFdpbHNvbiAgCj4gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4gd3JvdGU6Cj4gCj4gPiBJZiB0aGUgdXNlciBpcyBjbGVhcmluZyB0aGUg
bG9nIGJ1ZmZlciB0b28gc2xvd2x5LCB3ZSBvdmVyZmxvdy4gQXMgdGhpcwo+ID4gaXMgYW4gZXhw
ZWN0ZWQgY29uZGl0aW9uLCBhbmQgdGhlIGRyaXZlciB0cmllcyB0byBoYW5kbGUgaXQsIHJlZHVj
ZSB0aGUKPiA+IGVycm9yIG1lc3NhZ2UgZG93biB0byBhIG5vdGljZS4KPiA+Cj4gPiBCdWd6aWxs
YTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEwODE3Cj4g
PiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4K
PiA+IENjOiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KPiA+
IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+ID4gLS0tCj4g
PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjX2xvZy5jIHwgNCArKystCj4gPiAgMSBm
aWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+ID4KPiA+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNfbG9nLmMgIAo+ID4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNfbG9nLmMKPiA+IGluZGV4IGJmMTQ0NjYyOTcwMy4u
ZTNiODNlY2I5MGI1IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
Z3VjX2xvZy5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNfbG9nLmMK
PiA+IEBAIC0yMDgsNyArMjA4LDkgQEAgc3RhdGljIGJvb2wgZ3VjX2NoZWNrX2xvZ19idWZfb3Zl
cmZsb3coc3RydWN0ICAKPiA+IGludGVsX2d1Y19sb2cgKmxvZywKPiA+ICAgICAgICAgICAgICAg
ICAgICAgICAvKiBidWZmZXJfZnVsbF9jbnQgaXMgYSA0IGJpdCBjb3VudGVyICovCj4gPiAgICAg
ICAgICAgICAgICAgICAgICAgbG9nLT5zdGF0c1t0eXBlXS5zYW1wbGVkX292ZXJmbG93ICs9IDE2
Owo+ID4gICAgICAgICAgICAgICB9Cj4gPiAtICAgICAgICAgICAgIERSTV9FUlJPUl9SQVRFTElN
SVRFRCgiR3VDIGxvZyBidWZmZXIgb3ZlcmZsb3dcbiIpOwo+ID4gKwo+ID4gKyAgICAgICAgICAg
ICBkZXZfbm90aWNlX3JhdGVsaW1pdGVkKGd1Y190b19pOTE1KGxvZ190b19ndWMobG9nKSktPmRy
bS5kZXYsCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIkd1QyBsb2cg
YnVmZmVyIG92ZXJmbG93XG4iKTsKPiAKPiBXaGlsZSB0aGlzIGNoYW5nZSBhbG9uZSBpcyBub3Qg
aGFybWZ1bCwgSSdtIGFmcmFpZCB0aGF0IHRoZXJlIG1pZ2h0Cj4gYmUgYW5vdGhlciByZWFzb24g
d2h5IHdlIHNlZSB0aGlzIG1lc3NhZ2UgOiBvbmNlIGJ1ZmZlcl9mdWxsX2NudCBpcwo+IHR1cm5l
ZCBvbiBieSB0aGUgZncgYW5kIHRoZW4gd2UgcmVzZXQgdGhlIEd1YywgdGhpcyBmaWVsZCBtYXkg
aGF2ZQo+IHN0YWxlIHZhbHVlIGFzIGl0IGlzIG5vdCBjbGVhcmVkIGJ5IHVzL3VjIGFuZCB3ZSBt
YXkgd3JvbmdseSBhc3N1bWUKPiB0aGF0IHRoZXJlIHdhcyBhbiBvdmVyZmxvdy4KClNvIHlheS9u
YXkgb24gc2lsZW5jaW5nIHRoZSB0ZXN0IG91dHB1dCBzbyBJIGNhbiBibGlzc2Z1bGx5IGlnbm9y
ZSBpdCBpbgpidWd6aWxsYT8KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
