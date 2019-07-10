Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B423464A98
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 18:17:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CFA06E114;
	Wed, 10 Jul 2019 16:17:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lb1-smtp-cloud7.xs4all.net (lb1-smtp-cloud7.xs4all.net
 [194.109.24.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DA666E114
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2019 16:17:04 +0000 (UTC)
Received: from xps13 ([83.160.161.190]) by smtp-cloud7.xs4all.net with ESMTPSA
 id lFH7hw0M80SBqlFHAh8qoA; Wed, 10 Jul 2019 18:17:03 +0200
Message-ID: <93b8a186f4c8b4dae63845a20bd49ae965893143.camel@tiscali.nl>
From: Paul Bolle <pebolle@tiscali.nl>
To: James Bottomley <James.Bottomley@HansenPartnership.com>, 
 intel-gfx@lists.freedesktop.org
Date: Wed, 10 Jul 2019 18:16:57 +0200
In-Reply-To: <1562770874.3213.14.camel@HansenPartnership.com>
References: <1561834612.3071.6.camel@HansenPartnership.com>
 <1562770874.3213.14.camel@HansenPartnership.com>
User-Agent: Evolution 3.32.3 (3.32.3-1.fc30) 
MIME-Version: 1.0
X-CMAE-Envelope: MS4wfLRIrnplNSIvUDH75sB5Ar/hqvTbGNDk2rvWbMiShmuIxyfdGCKqgqODhMwtXO6X65G1na/sP5swcZxIAvR+GPmc8amgh5MmNkFFvc1zw5GFDtmiRL1w
 ndxdR4vrhsm72dR+YZTyW9TKURvHVyThnQhIFZsUbjT8q/ucnxtoWy3avtrtl8Ta0N1Z+h6AMXSJKgr40HWhfKbWZq8yIwIAGGV1xSNqNqRCJ8Zm5HtyfzgH
 ZPzX2bHzuaNsu7ROx2dgnY0MvSykoiqgNxWwF+Cshus=
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
Cc: linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgSmFtZXMsCgpKYW1lcyBCb3R0b21sZXkgc2NocmVlZiBvcCB3byAxMC0wNy0yMDE5IG9tIDA4
OjAxIFstMDcwMF06Cj4gSSd2ZSBjb25maXJtZWQgdGhhdCA1LjEgZG9lc24ndCBoYXZlIHRoZSBy
ZWdyZXNzaW9uIGFuZCBJJ20gbm93IHRyeWluZwo+IHRvIGJpc2VjdCB0aGUgNS4yIG1lcmdlIHdp
bmRvdywgYnV0IHNpbmNlIHRoZSBwcm9ibGVtIHRha2VzIHF1aXRlIGEKPiB3aGlsZSB0byBtYW5p
ZmVzdCB0aGlzIHdpbGwgdGFrZSBzb21lIHRpbWUuICBBbnkgaGludHMgYWJvdXQgc3BlY2lmaWMK
PiBwYXRjaGVzIHRoYXQgbWlnaHQgYmUgdGhlIHByb2JsZW0gd291bGQgYmUgd2VsY29tZS4KCihQ
ZXJoYXBzIG15IG1lc3NhZ2Ugb2YgeWVzdGVyZGF5IG5ldmVyIHJlYWNoZWQgeW91LikKCkl0IHNl
ZW1zIEkgaGl0IHRoaXMgcHJvYmxlbSBxdWl0ZSBlYXNpbHkuIEJpc2VjdGluZyB2NS4xLi52NS4y
IGNvdWxkIGJlIGEgcmVhbApjaG9yZSwgc28gcGVyaGFwcyB3ZSBjb3VsZCBjb29yZGluYXRlIGVm
Zm9ydHMgKG9mZi1saXN0KT8KClRoYW5rcywKCgpQYXVsIEJvbGxlCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
