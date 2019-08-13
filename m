Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 09FEB8B1ED
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Aug 2019 10:02:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1065895CA;
	Tue, 13 Aug 2019 08:02:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B67CC895CA
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Aug 2019 08:02:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17978928-1500050 for multiple; Tue, 13 Aug 2019 09:01:49 +0100
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <87h86l7b0g.fsf@gaia.fi.intel.com>
References: <20190812160108.16973-1-mika.kuoppala@linux.intel.com>
 <156562660318.2301.11470842796548311941@skylake-alporthouse-com>
 <87h86l7b0g.fsf@gaia.fi.intel.com>
Message-ID: <156568330706.2301.8340601474032811595@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 13 Aug 2019 09:01:47 +0100
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/icl: Implement gen11 flush
 including tile cache
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA4LTEzIDA4OjU3OjUxKQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBRdW90aW5nIE1pa2Eg
S3VvcHBhbGEgKDIwMTktMDgtMTIgMTc6MDE6MDcpCj4gPj4gQEAgLTI4MjksNyArMjg4NywxMCBA
QCBpbnQgaW50ZWxfZXhlY2xpc3RzX3N1Ym1pc3Npb25fc2V0dXAoc3RydWN0IGludGVsX2VuZ2lu
ZV9jcyAqZW5naW5lKQo+ID4+ICAgICAgICAgbG9naWNhbF9yaW5nX2RlZmF1bHRfaXJxcyhlbmdp
bmUpOwo+ID4+ICAKPiA+PiAgICAgICAgIGlmIChlbmdpbmUtPmNsYXNzID09IFJFTkRFUl9DTEFT
Uykgewo+ID4+IC0gICAgICAgICAgICAgICBlbmdpbmUtPmVtaXRfZmx1c2ggPSBnZW44X2VtaXRf
Zmx1c2hfcmVuZGVyOwo+ID4+ICsgICAgICAgICAgICAgICBpZiAoSU5URUxfR0VOKGVuZ2luZS0+
aTkxNSkgPj0gMTEpCj4gPj4gKyAgICAgICAgICAgICAgICAgICAgICAgZW5naW5lLT5lbWl0X2Zs
dXNoID0gZ2VuMTFfZW1pdF9mbHVzaF9yZW5kZXI7Cj4gPj4gKyAgICAgICAgICAgICAgIGVsc2UK
PiA+PiArICAgICAgICAgICAgICAgICAgICAgICBlbmdpbmUtPmVtaXRfZmx1c2ggPSBnZW44X2Vt
aXRfZmx1c2hfcmVuZGVyOwo+ID4+ICAgICAgICAgICAgICAgICBlbmdpbmUtPmVtaXRfZmluaV9i
cmVhZGNydW1iID0gZ2VuOF9lbWl0X2ZpbmlfYnJlYWRjcnVtYl9yY3M7Cj4gPgo+ID4gTm8gZmlu
aSBicmVhZGNydW1iIGZsdXNoPwo+IAo+IFdlbGwgdGhlcmUgYXJlIHJvb20gZm9yIGNsZWFuaW5n
IHRoZXJlIGZvciBzdXJlLiBJIGFkbWl0IHRvIGJlaW5nCj4gYSBiaXQgY293YXJkLiBJIGRvbid0
IGhhdmUgYW4gaWNlbGFrZSBhbmQgY2hhbmdpbmcgdGhhdCB3b3VsZAo+IHdhcnJhbnQgcXVpdGUg
YW1vdW50IG9mIGdlbV9jb25jdXJyZW50X2JsdCBjeWNsZXMuCj4gCj4gSWYgeW91IGNhbiBjb252
aW5jZSBtZSB0aGF0IGNpL2JhdCB3aWxsIGNhdGNoIG15IG1pc3Rha2VzLAo+IEkgY291bGQgcmVj
b25zaWRlci4KCkl0J3MgdGhlIHZpdGFsIG9uZS4gQ2hhbmdpbmcgZW1pdF9mbHVzaCB3aWxsIGhh
dmUgbm8gaW1wYWN0IGJ5IGl0c2VsZi4uLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
