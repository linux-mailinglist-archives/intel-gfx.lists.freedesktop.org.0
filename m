Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7967567156
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 16:29:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2743F6E0DB;
	Fri, 12 Jul 2019 14:29:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lb3-smtp-cloud7.xs4all.net (lb3-smtp-cloud7.xs4all.net
 [194.109.24.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A1BC6E0B8
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jul 2019 14:28:58 +0000 (UTC)
Received: from xps13 ([83.160.161.190]) by smtp-cloud7.xs4all.net with ESMTPSA
 id lwXbhDbAL0SBqlwXehHyL1; Fri, 12 Jul 2019 16:28:56 +0200
Message-ID: <68472c5f390731e170221809a12d88cb3bc6460e.camel@tiscali.nl>
From: Paul Bolle <pebolle@tiscali.nl>
To: James Bottomley <James.Bottomley@HansenPartnership.com>, "Souza, Jose"
 <jose.souza@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "chris@chris-wilson.co.uk"
 <chris@chris-wilson.co.uk>
Date: Fri, 12 Jul 2019 16:28:36 +0200
In-Reply-To: <1562941185.3398.1.camel@HansenPartnership.com>
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
User-Agent: Evolution 3.32.3 (3.32.3-1.fc30) 
MIME-Version: 1.0
X-CMAE-Envelope: MS4wfMr2nDHN+vQMiu6ycsuxH9sUvGcaclwSB8gQFWemmcKnszoJckYcVA7kJ+kvBCwLWMikpWVChCEO0dy9CKeshRs3a8OtaRpEhZdt/s8ywdPX1z9AoXhz
 998M9aEHlttkUTsD5hrL5gDGtJdRJM9aVVlhSB6NZ+ddaJdyMVNA12r5xJyO2lBnYYyJGIHvJaM1tbdYYCW4Pp8OG+zB2OrX4kZxgcqHo85BjiyOgx0gcvqb
 bf0k0V0if2d3I5lYygVcZtmbfNDQWgujwup0icztT6BiXOoujJTa+5i7WuZbZUR3NJo6Rc0fOb3WMdw5aJc0FY3Sw2EOhnIPL3ivQ51TgIQ=
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

SmFtZXMgQm90dG9tbGV5IHNjaHJlZWYgb3AgdnIgMTItMDctMjAxOSBvbSAwNzoxOSBbLTA3MDBd
Ogo+IEl0IGhhcyBzdXJ2aXZlZCA2aCB3aXRob3V0IG1hbmlmZXN0aW5nIHRoZSByZWdyZXNzaW9u
LiAgU3RhcnRpbmcgYWdhaW4KPiB0byB0cnkgYSB3aG9sZSBkYXkuCgpBbmQgSSdtIGN1cnJlbnRs
eSBhdCBmb3VyIGhvdXJzIHdpdGhvdXQgYSBzY3JlZW4gZnJlZXplLiBXaGljaCBpcyBtdWNoLCBt
dWNoCmxvbmdlciB0aGFuIEkgd2FzIGFibGUgdG8gYWNoaWV2ZSB3aXRob3V0IHRoZSBoYWNrIGFw
cGxpZWQuCgoKUGF1bCBCb2xsZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
