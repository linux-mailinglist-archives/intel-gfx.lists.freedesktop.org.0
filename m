Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B792C66AF1
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 12:33:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36D5F6E345;
	Fri, 12 Jul 2019 10:33:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lb1-smtp-cloud8.xs4all.net (lb1-smtp-cloud8.xs4all.net
 [194.109.24.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E75556E345
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jul 2019 10:33:02 +0000 (UTC)
Received: from xps13 ([83.160.161.190]) by smtp-cloud8.xs4all.net with ESMTPSA
 id lsrDhP6COHOZUlsrGhbQVQ; Fri, 12 Jul 2019 12:33:01 +0200
Message-ID: <cec8238bfffa43650b7bd8feb0e9d9c0acdc15b3.camel@tiscali.nl>
From: Paul Bolle <pebolle@tiscali.nl>
To: Chris Wilson <chris@chris-wilson.co.uk>, James Bottomley
 <James.Bottomley@HansenPartnership.com>, intel-gfx@lists.freedesktop.org
Date: Fri, 12 Jul 2019 12:32:45 +0200
In-Reply-To: <9a8ed0f8e880e1a7387db00c74a9b71210ce6aff.camel@tiscali.nl>
References: <1561834612.3071.6.camel@HansenPartnership.com>
 <156283735757.12757.8954391372130933707@skylake-alporthouse-com>
 <9a8ed0f8e880e1a7387db00c74a9b71210ce6aff.camel@tiscali.nl>
User-Agent: Evolution 3.32.3 (3.32.3-1.fc30) 
MIME-Version: 1.0
X-CMAE-Envelope: MS4wfLaRbaES6HfwrzMNSFf3CXWwhvICM4kUP0lrUQX2EC2KOFCdmhd99TIO807yAvQL5IL1KDhcislGjxi3g+Wo9W91bdNcXlP4RKJaVQlDTrvx2kBEmgkr
 A6cbPM/5KpT15ST7HsbnQN7fPkqx8NUc8kJwU+P7BBRFcd1qRiAYu7IibvuuYjQMriAQaQGVIx0J0NqmyDqfMoTbYkD4h6l35gudeX0kvPqut95hSQQK2xvi
 pe6ivjWD0ZOjElm+SZCCcVdsHzW/hJ5CLuxFNkO3xW8Mmff+U04/drYmwJz9uNiNWXvXPlUj+CgtW8EWEHzUHg==
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

UGF1bCBCb2xsZSBzY2hyZWVmIG9wIGRvIDExLTA3LTIwMTkgb20gMTM6MjAgWyswMjAwXToKPiBD
aHJpcyBXaWxzb24gc2NocmVlZiBvcCBkbyAxMS0wNy0yMDE5IG9tIDEwOjI5IFsrMDEwMF06Cj4g
PiBUZW1wb3Jhcnkgd29ya2Fyb3VuZCB3b3VsZCBiZSB0byBzZXQgaTkxNS5lbmFibGVfcHNyPTAK
PiAKPiBUaGF0IHdvcmthcm91bmQgc2VlbXMgdG8gd29yayBmb3IgbWUuIE92ZXIgYW4gaG91ciBv
ZiB1cHRpbWUgd2l0aG91dCBhbnkKPiBzY3JlZW4gZnJlZXplcy4KCk1heSBvciBtYXkgbm90IGJl
IHJlbGF0ZWQ6IDI0IGhvdXJzIGludG8gdGhhdCBzZXNzaW9uIEkgaGFkIHRoZSBtYWNoaW5lIGxv
Y2sKdXAgaGFyZC4gU2NyZWVuIGZyb3plbiwgbm8gaW5wdXQgcG9zc2libGUsIGV0Yy4gSSBoYWQg
dG8gcG93ZXIgY3ljbGUgaXQgKGFmdGVyCmhhbGYgYW4gaG91ciwgYmVoYXZpbmcgdmVyeSBwYXRp
ZW50KS4KCkJ1dCB0aGUgc2NyZWVuIGZyZWV6ZSB0aGF0IHdlJ3JlIGZvY3VzaW5nIG9uIGhlcmUg
bmV2ZXIgb2NjdXJyZWQgZHVyaW5nIHRoaXMKc2Vzc2lvbi4KCgpQYXVsIEJvbGxlCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
