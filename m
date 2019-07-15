Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7CBA69E5F
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jul 2019 23:35:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0376889DA8;
	Mon, 15 Jul 2019 21:35:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lb2-smtp-cloud9.xs4all.net (lb2-smtp-cloud9.xs4all.net
 [194.109.24.26])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B4C189DA8
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Jul 2019 21:35:10 +0000 (UTC)
Received: from xps13 ([83.160.161.190]) by smtp-cloud9.xs4all.net with ESMTPSA
 id n8cdhhG1kuEBxn8cghMp2U; Mon, 15 Jul 2019 23:35:08 +0200
Message-ID: <595d9bc87bf47717c8675eb5b1a1cbb2bc463752.camel@tiscali.nl>
From: Paul Bolle <pebolle@tiscali.nl>
To: "Souza, Jose" <jose.souza@intel.com>, 
 "James.Bottomley@HansenPartnership.com"
 <James.Bottomley@HansenPartnership.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "chris@chris-wilson.co.uk"
 <chris@chris-wilson.co.uk>
Date: Mon, 15 Jul 2019 23:34:59 +0200
In-Reply-To: <143142cad4a946361a0bf285b6f1701c81096c7b.camel@intel.com>
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
User-Agent: Evolution 3.32.3 (3.32.3-1.fc30) 
MIME-Version: 1.0
X-CMAE-Envelope: MS4wfH6I1vuIhhM+oakc5dwVYTm3I/Gg+CbbYwfjkax0Kna5ekLjxFrG0nbLTCBLvqmk8OQI6i15Dn5y6XOuuoxMcJfqnCXICRSmfCGLQCnrwR30VbKzZ9QB
 8N+lHPKORktdnAsANPfx3qsJaWItk9IeAy84ugJfL9Ix6b3GkjpMP9t/CyXX0AG4Q/0jW3IDnlvuSDkriIL1BSH5D5spyWCs11Af+F/OivP58lMk9sb3X3EV
 1IkvWL3f+6zsekrQPCs0F62nnDImRNPD0dXm2aevHZ1ZZ8RyWfxJW0ePkO48QaNQw0LVYrybuYah4R4KeKio2KNKWUc+vqNro254SK3fS+4=
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

SGkgSm9zZSwKClNvdXphLCBKb3NlIHNjaHJlZWYgb3AgbWEgMTUtMDctMjAxOSBvbSAyMTowMyBb
KzAwMDBdOgo+IFNvIHRoZSBpc3N1ZSBkaWQgbm90IGhhcHBlbmVkIGFnYWluIHdpdGggdGhlIHBh
dGNoIGFwcGxpZWQ/CgpOb3QgaW4gdGhlIHRocmVlIGRheXMgdGhhdCBJJ3ZlIGJlZW4gcnVubmlu
ZyA1LjIga2VybmVscyB3aXRoIHRoZSBoYWNrIGFwcGxpZWQKKHNvIHRoYXQgc2hvdWxkIGJlIGFi
b3V0IHR3ZWx2ZSBob3VycyBvZiBwcm9wZXIgdXB0aW1lKS4KCj4gSWYgeW91IHN0aWxsIGhhdmUg
dGhlIGtlcm5lbCA1LjEgaW5zdGFsbGVkIGNvdWxkIHlvdSBzaGFyZSB5b3VyCj4gL3N5cy9rZXJu
ZWwvZGVidWcvZHJpLzAvaTkxNV9lZHBfcHNyX3N0YXR1cyB3aXRoIHRoZSBvbGRlciBrZXJuZWw/
Cj4gV2Ugd2FudCB0byBjaGVjayBpZiB0cmFpbmluZyB2YWx1ZXMgY2hhbmdlZCBiZXR3ZWVuIGtl
cm5lbCB2ZXJzaW9ucy4KClN1cmUuIE9uIDUuMS4xNyBJIGdldDoKICAgIFNpbmsgc3VwcG9ydDog
eWVzIFsweDAxXQogICAgUFNSIG1vZGU6IFBTUjEgZW5hYmxlZAogICAgU291cmNlIFBTUiBjdGw6
IGVuYWJsZWQgWzB4ODFmMDA2MjZdCiAgICBTb3VyY2UgUFNSIHN0YXR1czogSURMRSBbMHgwNDBi
MDAwMV0KICAgIEJ1c3kgZnJvbnRidWZmZXIgYml0czogMHgwMDAwMDAwMAoKQW5kLCBpbiBjYXNl
IHlvdSBuZWVkIGl0LCBvbiA1LjIuMStoYWNrIEkgZ2V0OgogICAgU2luayBzdXBwb3J0OiB5ZXMg
WzB4MDFdCiAgICBQU1IgbW9kZTogUFNSMSBlbmFibGVkCiAgICBTb3VyY2UgUFNSIGN0bDogZW5h
YmxlZCBbMHg4MWYwMDYyNl0KICAgIFNvdXJjZSBQU1Igc3RhdHVzOiBJRExFIFsweDA0MDMwMDA2
XQogICAgQnVzeSBmcm9udGJ1ZmZlciBiaXRzOiAweDAwMDAwMDAwCgpIb3BlIHRoaXMgaGVscHMs
CgoKUGF1bAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
