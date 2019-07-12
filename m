Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD7B167140
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 16:19:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2D046E0DB;
	Fri, 12 Jul 2019 14:19:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
 [66.63.167.143])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65DAD6E0DB
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jul 2019 14:19:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by bedivere.hansenpartnership.com (Postfix) with ESMTP id 19D7A8EE331;
 Fri, 12 Jul 2019 07:19:48 -0700 (PDT)
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
 by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new,
 port 10024)
 with ESMTP id 0Jw-QcXrd_p4; Fri, 12 Jul 2019 07:19:47 -0700 (PDT)
Received: from jarvis.lan (unknown [50.35.68.20])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id 6925F8EE1F7;
 Fri, 12 Jul 2019 07:19:47 -0700 (PDT)
Message-ID: <1562941185.3398.1.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: "Souza, Jose" <jose.souza@intel.com>, "pebolle@tiscali.nl"
 <pebolle@tiscali.nl>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "chris@chris-wilson.co.uk"
 <chris@chris-wilson.co.uk>
Date: Fri, 12 Jul 2019 07:19:45 -0700
In-Reply-To: <1562888433.2915.0.camel@HansenPartnership.com>
References: <1561834612.3071.6.camel@HansenPartnership.com>
 <156283735757.12757.8954391372130933707@skylake-alporthouse-com>
 <1562875878.2840.0.camel@HansenPartnership.com>
 <27a5b2ca8cfc79bf617387a363ea7192acc4e1f0.camel@intel.com>
 <1562876880.2840.12.camel@HansenPartnership.com>
 <1562882235.13723.1.camel@HansenPartnership.com>
 <dad073fb4b06cf0abb7ab702a9474b9c443186eb.camel@intel.com>
 <1562884722.15001.3.camel@HansenPartnership.com>
 <2c4edfabf49998eb5da3a6adcabc006eb64bfe90.camel@tiscali.nl>
 <55f4d1c242d684ca2742e8c14613d810a9ee9504.camel@intel.com>
 <1562888433.2915.0.camel@HansenPartnership.com>
X-Mailer: Evolution 3.26.6 
Mime-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=hansenpartnership.com; 
 s=20151216; t=1562941188;
 bh=Dp5a0UrH9hKoPaQtN8NMeqGJ73pmNknix42kASn6zxs=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=VCxaaTItFh6NC+DFhY5jQFgBXHoCm+NCJSqectbFZbBep25ieqYrtlTfwSiZZZZBB
 8BsXsUeOPXxuxXysoVjlBzluStZeuXYBzSh9KT1JmROTOLAn4yYEKmvg7th5/2W1oP
 cm6iDhW90Dn+SrZldgLwk55/D4sSC1p9HSNS/nPc=
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=hansenpartnership.com; 
 s=20151216; t=1562941187;
 bh=Dp5a0UrH9hKoPaQtN8NMeqGJ73pmNknix42kASn6zxs=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=iGO0vzMtpj+2FTqUdMvhfBOs8fjXi7+T29UOioFgPCgGq5ucBAQEuaKfZDSAh0SNm
 0zTJwZZmCWp/3z+Vi1Sci9qtPHTrwPjf/H+zgAyMmmAmKoB9nZJIFVv9cOJC/vKhj8
 DDAHJ3E3j7M8wT1RSFNRT2gMRXtfcXCXy68x54yg=
Subject: Re: [Intel-gfx] screen freeze with 5.2-rc6 Dell XPS-13 skylake i915
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDE5LTA3LTExIGF0IDE2OjQwIC0wNzAwLCBKYW1lcyBCb3R0b21sZXkgd3JvdGU6
Cj4gT24gVGh1LCAyMDE5LTA3LTExIGF0IDIzOjI4ICswMDAwLCBTb3V6YSwgSm9zZSB3cm90ZToK
PiA+IE9uIEZyaSwgMjAxOS0wNy0xMiBhdCAwMTowMyArMDIwMCwgUGF1bCBCb2xsZSB3cm90ZToK
PiA+ID4gSmFtZXMgQm90dG9tbGV5IHNjaHJlZWYgb3AgZG8gMTEtMDctMjAxOSBvbSAxNTozOCBb
LTA3MDBdOgo+ID4gPiA+IE9uIFRodSwgMjAxOS0wNy0xMSBhdCAyMjoyNiArMDAwMCwgU291emEs
IEpvc2Ugd3JvdGU6Cj4gPiA+ID4gPiBJdCBldmVudHVhbGx5IGNvbWVzIGJhY2sgZnJvbSBzY3Jl
ZW4gZnJlZXplPyBMaWtlIG1vdmluZyB0aGUKPiA+ID4gPiA+IG1vdXNlIG9yIHR5cGluZyBicmlu
Z3MgaXQgYmFjaz8KPiA+ID4gPiAKPiA+ID4gPiBObywgaXQgc2VlbXMgdG8gYmUgZnJvemVuIGZv
ciBhbGwgdGltZSAoYXQgbGVhc3QgdW50aWwgSSBnb3QKPiA+ID4gPiBib3JlZCB3YWl0aW5nLCB3
aGljaCB3YXMgcHJvYmFibHkgMjAgbWludXRlcykuICBFdmVuIGlmIEkKPiA+ID4gPiByZWJvb3Qg
dGhlIG1hY2hpbmUsIHRoZSBjdXJyZW50IHNjcmVlbiBzdGF0ZSBzdGF5cyB1bnRpbCB0aGUKPiA+
ID4gPiBzeXN0ZW0gcG93ZXJzIG9mZi4KPiA+ID4gCj4gPiA+IEFzIEkgbWVudGlvbmVkIGVhcmxp
ZXIsIGEgc3VzcGVuZC9yZXN1bWUgY3ljbGUgdW5mcmVlemVzIHRoZQo+ID4gPiBzY3JlZW4uCj4g
PiA+IAo+ID4gPiBBbmQgSSBzZWVtIHRvIHJlbWVtYmVyIHRoYXQsIGlmIHRoZSBnbm9tZSBzY3Jl
ZW4tbG9ja2luZwo+ID4gPiBldmVudHVhbGx5IGtpY2tzIGluLCB1bmxvY2tpbmcgdGhlIHNjcmVl
biBzdGlsbCB3b3JrcywgYXMgdGhlCj4gPiA+IHNjcmVlbiB0aGVuIGlzbid0IGZyb3plbiBhbnlt
b3JlLgo+ID4gPiAKPiA+ID4gVGhhbmtzLAo+ID4gCj4gPiBUaGFua3MgZm9yIGFsbCB0aGUgaW5m
b3JtYXRpb24gUGF1bC4KPiA+IAo+ID4gQ291bGQgdGVzdCB3aXRoIHRoZSBwYXRjaCBhdHRhY2hl
ZD8KPiAKPiBBcHBsaWVkIGFuZCBydW5uaW5nIHdpdGggaXQgbm93LgoKSXQgaGFzIHN1cnZpdmVk
IDZoIHdpdGhvdXQgbWFuaWZlc3RpbmcgdGhlIHJlZ3Jlc3Npb24uICBTdGFydGluZyBhZ2Fpbgp0
byB0cnkgYSB3aG9sZSBkYXkuCgpKYW1lcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
