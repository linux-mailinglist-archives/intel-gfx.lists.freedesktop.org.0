Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9289C6C28D
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2019 23:27:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D2536E2AB;
	Wed, 17 Jul 2019 21:27:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lb1-smtp-cloud8.xs4all.net (lb1-smtp-cloud8.xs4all.net
 [194.109.24.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CDD96E2AB
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2019 21:27:44 +0000 (UTC)
Received: from xps13 ([83.160.161.190]) by smtp-cloud8.xs4all.net with ESMTPSA
 id nrSTh8SpSHOZUnrSWhrTru; Wed, 17 Jul 2019 23:27:42 +0200
Message-ID: <9ef8fc1ae2c3a9bad588899488a781333af4449a.camel@tiscali.nl>
From: Paul Bolle <pebolle@tiscali.nl>
To: "Souza, Jose" <jose.souza@intel.com>, 
 "James.Bottomley@HansenPartnership.com"
 <James.Bottomley@HansenPartnership.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "chris@chris-wilson.co.uk"
 <chris@chris-wilson.co.uk>
Date: Wed, 17 Jul 2019 23:27:29 +0200
In-Reply-To: <a10f009fc160f05077760ff59cd86a9c99006b39.camel@intel.com>
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
User-Agent: Evolution 3.32.3 (3.32.3-1.fc30) 
MIME-Version: 1.0
X-CMAE-Envelope: MS4wfATkZ51l4cPn6KwISX15HJEDQXz/Y3hweNe4NEoGjmuNvl9Zlvy+FlZbJskaGRI3PjtVQ6yNOdRXxvzTCM+A4kKw6wLMH9sB4E8PFUsEXyqPGh+SF16B
 AWlntmLHqr5lTIY7qwqFwNnQc7FceGEvARg19cgDyobucmEGZUpVw53EEPzamOnrW4v2Wf2lmVLGN0BtpsB11Usj0oPR8W3TRrbpN/cVE9kbALeRUEvSsOPh
 mQ3NkqJcZspa9TS5QvDVGuBl1l+YdkiNVwiin58++zcUR1v3PeWIYptW/IIbI5QnUNjzR8F3EeMnc0hdtUikgpRWqInrWbFznh+iaxatwPc=
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

SGkgSm9zZSwKClNvdXphLCBKb3NlIHNjaHJlZWYgb3AgZGkgMTYtMDctMjAxOSBvbSAxNjozMiBb
KzAwMDBdOgo+IFBhdWwgYW5kIEphbWVzIGNvdWxkIHlvdSB0ZXN0IHRoaXMgZmluYWwgc29sdXRp
b24oYXQgbGVhc3QgZm9yIDUuMik/Cj4gUGxlYXNlIHJldmVydCB0aGUgaGFjayBwYXRjaCBhbmQg
YXBwbHkgdGhpcyBvbmUuCgpJJ3ZlIGp1c3QgcmVhY2hlZCBhIGRheSBvZiB1cHRpbWUgd2l0aCB5
b3VyIHJldmVydC4gKFRoZSBwcm9wZXIgdXB0aW1lIGlzIGp1c3QKYSBmcmFjdGlvbiBvZiBhIGRh
eSwgdGhpcyBiZWluZyBhIGxhcHRvcC4pIEFueWhvdywgbm8gc2NyZWVuIGZyZWV6ZXMgb2NjdXJy
ZWQKZHVyaW5nIHRoaXMgZGF5LgoKU28gZmVlbCBmcmVlIHRvIGFkZCBteSBUZXN0ZWQtYnkgdGFn
IHRvIHlvdXIgcmV2ZXJ0LiBCdXQgcGxlYXNlIGRvbid0IGZvcmdldAp0aGF0IEphbWVzIGVhcm5l
ZCBhIFJlcG9ydGVkLWJ5IHRhZy4KClRoYW5rcywKCgpQYXVsIEJvbGxlCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
