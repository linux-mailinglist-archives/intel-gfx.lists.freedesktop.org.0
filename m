Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 282E988D08
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Aug 2019 21:40:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DAD46E0B8;
	Sat, 10 Aug 2019 19:40:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lb2-smtp-cloud7.xs4all.net (lb2-smtp-cloud7.xs4all.net
 [194.109.24.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47CEF6E0B8
 for <intel-gfx@lists.freedesktop.org>; Sat, 10 Aug 2019 19:40:32 +0000 (UTC)
Received: from xps13 ([83.160.161.190]) by smtp-cloud7.xs4all.net with ESMTPSA
 id wXDwhDdUKur8TwXDzheXm4; Sat, 10 Aug 2019 21:40:30 +0200
Message-ID: <21cc0cf51c67e708eb7a4d59702a04bc025b3b2f.camel@tiscali.nl>
From: Paul Bolle <pebolle@tiscali.nl>
To: Jose Souza <jose.souza@intel.com>
Date: Sat, 10 Aug 2019 21:40:20 +0200
In-Reply-To: <54f0979debcd4459ca9d9f25941d4fa29a1aab06.camel@intel.com>
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
 <b22cf290b089cb1174ec0fdeb15bdf2e90bf51dc.camel@tiscali.nl>
 <d084df248afc1943e06c50d391a775d117064743.camel@intel.com>
 <df4d83e5c5650ea2f1afde1469c9dc82d6120644.camel@tiscali.nl>
 <54f0979debcd4459ca9d9f25941d4fa29a1aab06.camel@intel.com>
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
MIME-Version: 1.0
X-CMAE-Envelope: MS4wfMaosohlSnRSuBLjzIqy8RaAwYjeIfJz8jhc2d/SNfuXG4SsfLGK+kBbz7W8ZCx+jd1G96h9pRe8+yGwaL1QVAEqliMOeOcuX63i+gk/JUvNhwbOGDiX
 OGwFm9l6Q+sSyDZtCvrL4Tisuy4bpyGszcQRzFNrAttUNpPhoKf9JaIvGOxbDbqgm4iwd14emAbjTzmpdwf7CCLeHV8bjIc8JxaLV9+uOSynRaY3et8nHtrz
 yYoE5Z6AD4WlJLN+BGrLWPfEAeMInp2CY4Vm5AqrHGIiBbexeiuOb/1ekQNN5Cdefv4ACPnlP+AXC/9FGmiosMGSmAVifAq03jrO3pHwEXU=
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
Cc: James.Bottomley@HansenPartnership.com, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U291emEsIEpvc2Ugc2NocmVlZiBvcCB2ciAwOS0wOC0yMDE5IG9tIDE3OjE2IFsrMDAwMF06Cj4g
Rml4IHJlbGVhc2VkIG9uIExpbnV4IDUuMi44CgpMaW51eCA1LjIuOCBkb2Vzbid0IGhhdmUgdGhl
IHByZXR0eSBvYnZpb3VzIGZyZWV6ZXMgc28gdGhpcyBmaXggd29ya3MgZm9yIG1lCnRvby4gVGhh
bmtzIGZvciBsZXR0aW5nIG1lIGtub3chCgoKUGF1bCBCb2xsZQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
