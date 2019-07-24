Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBF27737D8
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2019 21:23:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3209C6E63C;
	Wed, 24 Jul 2019 19:23:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lb1-smtp-cloud9.xs4all.net (lb1-smtp-cloud9.xs4all.net
 [194.109.24.22])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 392B96E63C
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jul 2019 19:23:37 +0000 (UTC)
Received: from xps13 ([83.160.161.190]) by smtp-cloud9.xs4all.net with ESMTPSA
 id qMrLhJkQP0QvJqMrOhAAlA; Wed, 24 Jul 2019 21:23:36 +0200
Message-ID: <b22cf290b089cb1174ec0fdeb15bdf2e90bf51dc.camel@tiscali.nl>
From: Paul Bolle <pebolle@tiscali.nl>
To: James Bottomley <James.Bottomley@HansenPartnership.com>, "Souza, Jose"
 <jose.souza@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "chris@chris-wilson.co.uk"
 <chris@chris-wilson.co.uk>
Date: Wed, 24 Jul 2019 21:23:31 +0200
In-Reply-To: <1563398966.3438.5.camel@HansenPartnership.com>
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
 <1562941185.3398.1.camel@HansenPartnership.com>
 <68472c5f390731e170221809a12d88cb3bc6460e.camel@tiscali.nl>
 <143142cad4a946361a0bf285b6f1701c81096c7b.camel@intel.com>
 <595d9bc87bf47717c8675eb5b1a1cbb2bc463752.camel@tiscali.nl>
 <a10f009fc160f05077760ff59cd86a9c99006b39.camel@intel.com>
 <9ef8fc1ae2c3a9bad588899488a781333af4449a.camel@tiscali.nl>
 <1563398966.3438.5.camel@HansenPartnership.com>
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
MIME-Version: 1.0
X-CMAE-Envelope: MS4wfAak953jrG8+iI+u62M70niCTw5ChlP5YsW2e6m8dc3mQ9x0fFKajOQht3QdhLJaClnveoYliKavy1/mjNjvYgjLgJkltxUqoKdO+uN4o/rhdgecDc7K
 1lqJTGziXjpIMvuFwlp0VMWNObq5EFKq2jIdr/OvXshg1kMKZAr9H1a7DBcYPx82ZFu4aewwAqVuLxjcZYrDEHDtHwdvOGcxYjP4ntjZ9ieER4eb6PG+tOlA
 YizXsZtaPUnV2QnqvzpyfyFRUHisoqIJpl3bWW4G+tfFqK9uTrAv6EnCCpodZMGU+CvMlmMpMjmfW8FMwWMIDWW0RMaZlmmE2b5KQJ8oQoc=
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

SGkgSm9zZSwKCkphbWVzIEJvdHRvbWxleSBzY2hyZWVmIG9wIGRvIDE4LTA3LTIwMTkgb20gMDY6
MjkgWyswOTAwXToKPiBPbiBXZWQsIDIwMTktMDctMTcgYXQgMjM6MjcgKzAyMDAsIFBhdWwgQm9s
bGUgd3JvdGU6Cj4gPiBJJ3ZlIGp1c3QgcmVhY2hlZCBhIGRheSBvZiB1cHRpbWUgd2l0aCB5b3Vy
IHJldmVydC4gKFRoZSBwcm9wZXIKPiA+IHVwdGltZSBpcyBqdXN0IGEgZnJhY3Rpb24gb2YgYSBk
YXksIHRoaXMgYmVpbmcgYSBsYXB0b3AuKSBBbnlob3csIG5vCj4gPiBzY3JlZW4gZnJlZXplcyBv
Y2N1cnJlZCBkdXJpbmcgdGhpcyBkYXkuCj4gCj4gSSdtIGFmcmFpZCBteSBzdGF0dXMgaXMgdGhh
dCBJJ20gaW4gVG9reW8gZG9pbmcgY29uZmVyZW5jZQo+IHByZXNlbnRhdGlvbnMgKGFuZCBrZXJu
ZWwgZGVtb3MpIHNvIEknbSBhIGJpdCByZWx1Y3RhbnQgdG8gbWVzcyB3aXRoIG15Cj4gc2V0dXAg
dW50aWwgSSBmaW5pc2ggZXZlcnl0aGluZyBvbiBGcmlkYXksIGJ1dCBJIHdpbGwgdGVzdCBpdCBh
ZnRlcgo+IHRoZW4sIHByb21pc2UuCgpCeSBub3cgSSdtIHRlc3RpbmcgdGhpcyBmb3IgYSB3ZWVr
IChjdXJyZW50bHkgb24gdG9wIG9mIDUuMi4yKS4gU3RpbGwgbm8KZnJlZXplcyB3aGF0c29ldmVy
LiAKClNvIHdoYXQncyB0aGUgc3RhdHVzIG9mIHRoaXMgcmV2ZXJ0PyBVbmxlc3MgdGhpcyBpcyBz
b21ldGhpbmcgcHJldHR5IG9ic2N1cmUKdGhhdCBmb3Igc29tZSBvZGQgcmVhc29uIG9ubHkgSmFt
ZXMgYW5kIEkgYXJlIGFibGUgdG8gaGl0IGl0IHdvdWxkIGJlIG5pY2UgdG8KZ2V0IHRoaXMgaW50
byBzdGFibGUgYmVmb3JlIHRoZSBtYWluIGRpc3Ryb3Mgc3dpdGNoIG92ZXIgdG8gNS4yLnkuCgpU
aGFua3MsCgoKUGF1bCBCb2xsZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
