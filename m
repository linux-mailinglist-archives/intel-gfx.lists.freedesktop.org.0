Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6781ABE18
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2019 18:56:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B293E6E32E;
	Fri,  6 Sep 2019 16:56:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB4EE6E32E
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Sep 2019 16:56:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18401497-1500050 for multiple; Fri, 06 Sep 2019 17:55:50 +0100
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <919a6fab-e70e-44ec-3011-39909978f799@intel.com>
References: <20190906122314.2146-1-mika.kuoppala@linux.intel.com>
 <20190906122314.2146-2-mika.kuoppala@linux.intel.com>
 <919a6fab-e70e-44ec-3011-39909978f799@intel.com>
Message-ID: <156778894722.2967.15159695928288836970@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 06 Sep 2019 17:55:47 +0100
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/tgl: Register state context
 definition for Gen12
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
Cc: Michel Thierry <michel.thierry@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA5LTA2IDE2OjQyOjUwKQo+IAo+
ID4gK3N0YXRpYyB2b2lkIGdlbjEyX2luaXRfcmVnX3N0YXRlKHUzMiAqIGNvbnN0IHJlZ3MsCj4g
PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGludGVsX2NvbnRleHQgKmNl
LAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBpbnRlbF9lbmdpbmVf
Y3MgKmVuZ2luZSwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgaW50
ZWxfcmluZyAqcmluZykKPiA+ICt7Cj4gPiArICAgICBzdHJ1Y3QgaTkxNV9wcGd0dCAqIGNvbnN0
IHBwZ3R0ID0gaTkxNV92bV90b19wcGd0dChjZS0+dm0pOwo+ID4gKyAgICAgY29uc3QgYm9vbCBy
Y3MgPSBlbmdpbmUtPmNsYXNzID09IFJFTkRFUl9DTEFTUzsKPiA+ICsgICAgIGNvbnN0IHUzMiBi
YXNlID0gZW5naW5lLT5tbWlvX2Jhc2U7Cj4gPiArICAgICBjb25zdCB1MzIgbHJpX2Jhc2UgPSBp
bnRlbF9lbmdpbmVfaGFzX3JlbGF0aXZlX21taW8oZW5naW5lKSA/Cj4gPiArICAgICAgICAgICAg
IE1JX0xSSV9DU19NTUlPIDogMDsKPiA+ICsKPiA+ICsgICAgIEdFTV9ERUJVR19FWEVDKERSTV9J
TkZPX09OQ0UoIlVzaW5nIEdFTjEyIFJlZ2lzdGVyIFN0YXRlIENvbnRleHRcbiIpKTsKPiA+ICsK
PiA+ICsgICAgIHJlZ3NbQ1RYX0xSSV9IRUFERVJfMF0gPSBNSV9MT0FEX1JFR0lTVEVSX0lNTShy
Y3MgPyAxMSA6IDkpIHwKPiAKPiBJIHdvdWxkJ3ZlIGtlcHQgYSBjb25zdGFudCAxMyBoZXJlIHNp
bmNlIHdlJ2xsIG5lZWQgdG8gc2V0IHRoZSAxM3RoIAo+IHJlZ2lzdGVyICh0aGF0J3MgdGhlIHNl
bWFwaG9yZSByZWcgeW91IGhhZCBpbiB0aGUgcHJldmlvdXMgcmV2aXNpb24pLCAKPiBidXQgYW55
d2F5IHdlIGNhbiBidW1wIGl0IHdoZW4gdGhhdCBzdXBwb3J0IGlzIGFkZGVkIGluLgoKSSBsZWZ0
IHRoaXMgZm9yIGEgZnV0dXJlIHRhc2suIEVhcmx5IG5leHQgd2VlayBJIGhvcGUgdG8gaGF2ZSBh
IG5ldwpzZWxmdGVzdCByZWFkeSB0aGF0IGVuZm9yY2VzIHRoYXQgb3VyIGluaXRfcmVnX3N0YXRl
KCkgbWF0Y2hlcyB0aGUgSFcKbGF5b3V0LiBGb3Igbm93LCB0aGlzIGdldHMgdXMgb250byB0aGUg
bmV4dCBlcnJvciB3ZSBuZWVkIHRvIGRlYnVnLgoKVGhhbmtzIGZvciB0aGUgcGF0Y2hlcyBhbmQg
cmV2aWV3aW5nLAotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
