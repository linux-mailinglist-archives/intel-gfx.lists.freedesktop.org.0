Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E445DF18EA
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2019 15:40:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 605146ED8E;
	Wed,  6 Nov 2019 14:40:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD6AA6ED8E
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Nov 2019 14:40:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Nov 2019 06:40:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,275,1569308400"; d="scan'208";a="212785822"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga001.fm.intel.com with ESMTP; 06 Nov 2019 06:40:33 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id D19625C1E06; Wed,  6 Nov 2019 16:40:27 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20191106133129.17732-1-chris@chris-wilson.co.uk>
References: <20191106133129.17732-1-chris@chris-wilson.co.uk>
Date: Wed, 06 Nov 2019 16:40:27 +0200
Message-ID: <87d0e5nk4k.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Only drop heartbeat.systole if
 the sole owner
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gTWlrYSBz
cG90dGVkIHRoYXQgb25seSB1c2luZyBjYW5jZWxfZGVsYXllZF93b3JrKCkgY291bGQgbWVhbiB0
aGF0IHdlCj4gYXR0ZW1wdGVkIHRvIGNsZWFyIHRoZSBoZWFydGJlYXQuc3lzdG9sZSB3aGlsZSB0
aGUgd29ya2VyIHdhcyBzdGlsbAo+IHJ1bm5pbmcuIFJlY3RpZnkgdGhlIHNpdHVhdGlvbiBieSBv
bmx5IHRvdWNoaW5nIHRoZSBzeXN0b2xlIGZyb20gb3V0c2lkZQo+IHRoZSB3b3JrZXIgaWYgd2Ug
c3VjZWVkZWQgaW4gY2FuY2VsbGluZyB0aGUgd29ya2VyIGJlZm9yZSBpdCBjb3VsZCBydW4uCgpz
dWNjZWVkZWQKCj4gVGhlIHdvcmtlciBpcyBleHBlY3RlZCB0byBjbGVhbiB1cCBieSBpdHNlbGYg
dXBvbiBpZGxpbmcuCj4KPiBSZXBvcnRlZC1ieTogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFs
YUBsaW51eC5pbnRlbC5jb20+Cj4gRml4ZXM6IDA1ODE3OWU3MmUwOSAoImRybS9pOTE1L2d0OiBS
ZXBsYWNlIGhhbmdjaGVjayBieSBoZWFydGJlYXRzIikKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBX
aWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogTWlrYSBLdW9wcGFsYSA8bWlr
YS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2VuZ2luZV9oZWFydGJlYXQuYyB8IDQgKystLQo+ICAxIGZpbGUgY2hhbmdlZCwg
MiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9oZWFydGJlYXQuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2VuZ2luZV9oZWFydGJlYXQuYwo+IGluZGV4IDUwNTFmMzA0NzA1Yi4u
MDZhYTE0YzdhYThjIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2VuZ2luZV9oZWFydGJlYXQuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2VuZ2luZV9oZWFydGJlYXQuYwo+IEBAIC0xNDEsOCArMTQxLDggQEAgdm9pZCBpbnRlbF9lbmdp
bmVfdW5wYXJrX2hlYXJ0YmVhdChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCj4gIAo+
ICB2b2lkIGludGVsX2VuZ2luZV9wYXJrX2hlYXJ0YmVhdChzdHJ1Y3QgaW50ZWxfZW5naW5lX2Nz
ICplbmdpbmUpCj4gIHsKPiAtCWNhbmNlbF9kZWxheWVkX3dvcmsoJmVuZ2luZS0+aGVhcnRiZWF0
LndvcmspOwo+IC0JaTkxNV9yZXF1ZXN0X3B1dChmZXRjaF9hbmRfemVybygmZW5naW5lLT5oZWFy
dGJlYXQuc3lzdG9sZSkpOwo+ICsJaWYgKGNhbmNlbF9kZWxheWVkX3dvcmsoJmVuZ2luZS0+aGVh
cnRiZWF0LndvcmspKQo+ICsJCWk5MTVfcmVxdWVzdF9wdXQoZmV0Y2hfYW5kX3plcm8oJmVuZ2lu
ZS0+aGVhcnRiZWF0LnN5c3RvbGUpKTsKCldlIGRvbid0IGFybSBpbiBwYXJrIHBhdGggc28gdGhp
cyBzaG91bGQgZG8gdGhlIHRyaWNrLgoKUmV2aWV3ZWQtYnk6IE1pa2EgS3VvcHBhbGEgPG1pa2Eu
a3VvcHBhbGFAbGludXguaW50ZWwuY29tPgoKPiAgfQo+ICAKPiAgdm9pZCBpbnRlbF9lbmdpbmVf
aW5pdF9oZWFydGJlYXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQo+IC0tIAo+IDIu
MjQuMApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
