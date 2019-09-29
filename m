Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E9525C196F
	for <lists+intel-gfx@lfdr.de>; Sun, 29 Sep 2019 22:15:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F7D66E32E;
	Sun, 29 Sep 2019 20:15:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 700C56E32C
 for <intel-gfx@lists.freedesktop.org>; Sun, 29 Sep 2019 20:15:41 +0000 (UTC)
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D5EB020863;
 Sun, 29 Sep 2019 20:15:39 +0000 (UTC)
Date: Sun, 29 Sep 2019 16:15:31 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Alexey Dobriyan <adobriyan@gmail.com>
Message-ID: <20190929161531.727da348@gandalf.local.home>
In-Reply-To: <20190929200619.GA12851@avx2>
References: <20190929200619.GA12851@avx2>
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

T24gU3VuLCAyOSBTZXAgMjAxOSAyMzowNjoxOSArMDMwMApBbGV4ZXkgRG9icml5YW4gPGFkb2Jy
aXlhbkBnbWFpbC5jb20+IHdyb3RlOgoKPiAqIFNpbXBseSBjb21wYXJlIC0xIHdpdGggMCwKPiAq
IERyb3AgdW5uZWNlc3NhcnkgcGFyZW50aGVzaXMgc2V0cwo+IAo+IE5ldyBtYWNybyBsZWF2ZXMg
cG9pbnRlciBhcyAidW5zaWduZWQgdHlwZSIgYnV0IGdpdmVzIGEgd2FybmluZywKPiB3aGljaCBz
aG91bGQgYmUgZmluZSBiZWNhdXNlIGFza2luZyB3aGV0aGVyIGEgcG9pbnRlciBpcyBzaWduZWQg
aXMKPiBzdHJhbmdlIHF1ZXN0aW9uLgo+IAo+IEknbSBub3Qgc3VyZSB3aGF0J3MgZ29pbmcgb24g
aW4gdGhlIGk5MTUgZHJpdmVyLCBpdCBpcyBzaGlwcGluZyBrZXJuZWwKPiBwb2ludGVycyB0byB1
c2Vyc3BhY2UuCgpUaGlzIHRlbGxzIHVzIHdoYXQgdGhlIHBhdGNoIGRvZXMsIG5vdCB3aHkuCgot
LSBTdGV2ZQoKPiAKPiBTaWduZWQtb2ZmLWJ5OiBBbGV4ZXkgRG9icml5YW4gPGFkb2JyaXlhbkBn
bWFpbC5jb20+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
