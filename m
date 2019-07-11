Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AB2D66247
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 01:40:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 801686E294;
	Thu, 11 Jul 2019 23:40:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
 [66.63.167.143])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 155576E294
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 23:40:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by bedivere.hansenpartnership.com (Postfix) with ESMTP id 9B0EA8EE2F6;
 Thu, 11 Jul 2019 16:40:34 -0700 (PDT)
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
 by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new,
 port 10024)
 with ESMTP id rYjmMKygacgS; Thu, 11 Jul 2019 16:40:34 -0700 (PDT)
Received: from jarvis.lan (unknown [50.35.68.20])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id D5D508EE0C7;
 Thu, 11 Jul 2019 16:40:33 -0700 (PDT)
Message-ID: <1562888433.2915.0.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: "Souza, Jose" <jose.souza@intel.com>, "pebolle@tiscali.nl"
 <pebolle@tiscali.nl>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "chris@chris-wilson.co.uk"
 <chris@chris-wilson.co.uk>
Date: Thu, 11 Jul 2019 16:40:33 -0700
In-Reply-To: <55f4d1c242d684ca2742e8c14613d810a9ee9504.camel@intel.com>
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
X-Mailer: Evolution 3.26.6 
Mime-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=hansenpartnership.com; 
 s=20151216; t=1562888434;
 bh=LPWxrwSL9QuLgyS7B1V+52X0AUkrSksPcOGkIpwdVc8=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=I6dRjcYrHijkDI3dduJ59RjnBnmm4vBWSLWsIt+DQpfRPDRFX9YfEsuvIfSTgfKsl
 C4MR1iI/3Hxhzve7JGB7fVii7Z4Vgppjl+vbNNZCztX1SKtFUApCyZD95hEOTVb1x/
 4nj9Kc0h2kV9sWZxle6F2eVa94xy7isBU7zhTSSM=
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=hansenpartnership.com; 
 s=20151216; t=1562888434;
 bh=LPWxrwSL9QuLgyS7B1V+52X0AUkrSksPcOGkIpwdVc8=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=I6dRjcYrHijkDI3dduJ59RjnBnmm4vBWSLWsIt+DQpfRPDRFX9YfEsuvIfSTgfKsl
 C4MR1iI/3Hxhzve7JGB7fVii7Z4Vgppjl+vbNNZCztX1SKtFUApCyZD95hEOTVb1x/
 4nj9Kc0h2kV9sWZxle6F2eVa94xy7isBU7zhTSSM=
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

T24gVGh1LCAyMDE5LTA3LTExIGF0IDIzOjI4ICswMDAwLCBTb3V6YSwgSm9zZSB3cm90ZToKPiBP
biBGcmksIDIwMTktMDctMTIgYXQgMDE6MDMgKzAyMDAsIFBhdWwgQm9sbGUgd3JvdGU6Cj4gPiBK
YW1lcyBCb3R0b21sZXkgc2NocmVlZiBvcCBkbyAxMS0wNy0yMDE5IG9tIDE1OjM4IFstMDcwMF06
Cj4gPiA+IE9uIFRodSwgMjAxOS0wNy0xMSBhdCAyMjoyNiArMDAwMCwgU291emEsIEpvc2Ugd3Jv
dGU6Cj4gPiA+ID4gSXQgZXZlbnR1YWxseSBjb21lcyBiYWNrIGZyb20gc2NyZWVuIGZyZWV6ZT8g
TGlrZSBtb3ZpbmcgdGhlCj4gPiA+ID4gbW91c2Ugb3IgdHlwaW5nIGJyaW5ncyBpdCBiYWNrPwo+
ID4gPiAKPiA+ID4gTm8sIGl0IHNlZW1zIHRvIGJlIGZyb3plbiBmb3IgYWxsIHRpbWUgKGF0IGxl
YXN0IHVudGlsIEkgZ290Cj4gPiA+IGJvcmVkIHdhaXRpbmcsIHdoaWNoIHdhcyBwcm9iYWJseSAy
MCBtaW51dGVzKS4gIEV2ZW4gaWYgSSByZWJvb3QKPiA+ID4gdGhlIG1hY2hpbmUsIHRoZSBjdXJy
ZW50IHNjcmVlbiBzdGF0ZSBzdGF5cyB1bnRpbCB0aGUgc3lzdGVtCj4gPiA+IHBvd2VycyBvZmYu
Cj4gPiAKPiA+IEFzIEkgbWVudGlvbmVkIGVhcmxpZXIsIGEgc3VzcGVuZC9yZXN1bWUgY3ljbGUg
dW5mcmVlemVzIHRoZQo+ID4gc2NyZWVuLgo+ID4gCj4gPiBBbmQgSSBzZWVtIHRvIHJlbWVtYmVy
IHRoYXQsIGlmIHRoZSBnbm9tZSBzY3JlZW4tbG9ja2luZyBldmVudHVhbGx5Cj4gPiBraWNrcyBp
biwgdW5sb2NraW5nIHRoZSBzY3JlZW4gc3RpbGwgd29ya3MsIGFzIHRoZSBzY3JlZW4gdGhlbgo+
ID4gaXNuJ3QgZnJvemVuIGFueW1vcmUuCj4gPiAKPiA+IFRoYW5rcywKPiAKPiBUaGFua3MgZm9y
IGFsbCB0aGUgaW5mb3JtYXRpb24gUGF1bC4KPiAKPiBDb3VsZCB0ZXN0IHdpdGggdGhlIHBhdGNo
IGF0dGFjaGVkPwoKQXBwbGllZCBhbmQgcnVubmluZyB3aXRoIGl0IG5vdy4KCj4gSWYgdGhlIGlz
c3VlIGhhcHBlbnMgYWdhaW4gY291bGQgc2VuZCB0aGUgb3V0cHV0IG9mOgo+IAo+IC9zeXMva2Vy
bmVsL2RlYnVnL2RyaS8wL2VEUC0xL2k5MTVfcHNyX3Npbmtfc3RhdHVzCj4gL3N5cy9rZXJuZWwv
ZGVidWcvZHJpLzAvaTkxNV9lZHBfcHNyX3N0YXR1cwo+IAo+IFRoYW5rcyBzbyBtdWNoIGZvciBh
bGwgdGhlIGhlbHAKClN1cmUsCgpKYW1lcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
