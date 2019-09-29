Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DDBB9C198C
	for <lists+intel-gfx@lfdr.de>; Sun, 29 Sep 2019 23:16:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B86776E347;
	Sun, 29 Sep 2019 21:16:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D0636E347
 for <intel-gfx@lists.freedesktop.org>; Sun, 29 Sep 2019 21:16:30 +0000 (UTC)
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0D61E217F5;
 Sun, 29 Sep 2019 21:16:28 +0000 (UTC)
Date: Sun, 29 Sep 2019 17:16:27 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Alexey Dobriyan <adobriyan@gmail.com>
Message-ID: <20190929171627.1b854409@gandalf.local.home>
In-Reply-To: <20190929204424.GA14565@avx2>
References: <20190929200619.GA12851@avx2>
 <20190929161531.727da348@gandalf.local.home>
 <20190929204424.GA14565@avx2>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] Make is_signed_type() simpler
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
Cc: intel-gfx@lists.freedesktop.org, linux@rasmusvillemoes.dk,
 linux-kernel@vger.kernel.org, mingo@redhat.com, akpm@linux-foundation.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gU3VuLCAyOSBTZXAgMjAxOSAyMzo0NDoyNCArMDMwMApBbGV4ZXkgRG9icml5YW4gPGFkb2Jy
aXlhbkBnbWFpbC5jb20+IHdyb3RlOgoKPiBPbiBTdW4sIFNlcCAyOSwgMjAxOSBhdCAwNDoxNToz
MVBNIC0wNDAwLCBTdGV2ZW4gUm9zdGVkdCB3cm90ZToKPiA+IE9uIFN1biwgMjkgU2VwIDIwMTkg
MjM6MDY6MTkgKzAzMDAKPiA+IEFsZXhleSBEb2JyaXlhbiA8YWRvYnJpeWFuQGdtYWlsLmNvbT4g
d3JvdGU6Cj4gPiAgIAo+ID4gPiAqIFNpbXBseSBjb21wYXJlIC0xIHdpdGggMCwKPiA+ID4gKiBE
cm9wIHVubmVjZXNzYXJ5IHBhcmVudGhlc2lzIHNldHMKPiA+ID4gCj4gPiA+IE5ldyBtYWNybyBs
ZWF2ZXMgcG9pbnRlciBhcyAidW5zaWduZWQgdHlwZSIgYnV0IGdpdmVzIGEgd2FybmluZywKPiA+
ID4gd2hpY2ggc2hvdWxkIGJlIGZpbmUgYmVjYXVzZSBhc2tpbmcgd2hldGhlciBhIHBvaW50ZXIg
aXMgc2lnbmVkIGlzCj4gPiA+IHN0cmFuZ2UgcXVlc3Rpb24uCj4gPiA+IAo+ID4gPiBJJ20gbm90
IHN1cmUgd2hhdCdzIGdvaW5nIG9uIGluIHRoZSBpOTE1IGRyaXZlciwgaXQgaXMgc2hpcHBpbmcg
a2VybmVsCj4gPiA+IHBvaW50ZXJzIHRvIHVzZXJzcGFjZS4gIAo+ID4gCj4gPiBUaGlzIHRlbGxz
IHVzIHdoYXQgdGhlIHBhdGNoIGRvZXMsIG5vdCB3aHkuICAKPiAKPiBDaGVjayB0aGUgc3ViamVj
dCBsaW5lLgoKSSBkb24ndCBzZWUgaG93IGl0J3Mgc2ltcGxlci4KCi0jZGVmaW5lIGlzX3NpZ25l
ZF90eXBlKHR5cGUpCSgoKHR5cGUpKC0xKSkgPCAodHlwZSkxKQorI2RlZmluZSBpc19zaWduZWRf
dHlwZSh0eXBlKQkoKHR5cGUpLTEgPCAwKQogCgpSZXF1aXJlcyBtb3JlIHJhdGlvbmFsIHRoYXQg
Im1ha2UgaXQgc2ltcGxlciIuIFJld3JpdGluZyBmdXRleCBvciB0dHkKbGF5ZXIgY29kZSB3b3Vs
ZCBiZSBzb21ldGhpbmcgSSB3b3VsZCBsb3ZlIHRvIHNlZSwgYnV0IGp1c3QgcmVwbGFjaW5nCiIo
dHlwZSkxIiB3aXRoICIwIiBpc24ndCB3b3J0aCB0aGUgY2h1cm4uCgotLSBTdGV2ZQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
