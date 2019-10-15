Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E4A17D7EF5
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 20:27:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E4966E87D;
	Tue, 15 Oct 2019 18:27:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ms.lwn.net (ms.lwn.net [45.79.88.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A69D66E87A;
 Tue, 15 Oct 2019 18:27:28 +0000 (UTC)
Received: from lwn.net (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ms.lwn.net (Postfix) with ESMTPSA id AA813316;
 Tue, 15 Oct 2019 18:27:27 +0000 (UTC)
Date: Tue, 15 Oct 2019 12:27:26 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: Changbin Du <changbin.du@gmail.com>
Message-ID: <20191015122726.7e12f551@lwn.net>
In-Reply-To: <20191013055359.23312-1-changbin.du@gmail.com>
References: <20191013055359.23312-1-changbin.du@gmail.com>
Organization: LWN.net
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] kernel-doc: rename the kernel-doc directive
 'functions' to 'specific'
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
Cc: linux-doc@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-fpga@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 linux-crypto@vger.kernel.org, linux-kselftest@vger.kernel.org,
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gU3VuLCAxMyBPY3QgMjAxOSAxMzo1Mzo1OSArMDgwMApDaGFuZ2JpbiBEdSA8Y2hhbmdiaW4u
ZHVAZ21haWwuY29tPiB3cm90ZToKCj4gVGhlICdmdW5jdGlvbnMnIGRpcmVjdGl2ZSBpcyBub3Qg
b25seSBmb3IgZnVuY3Rpb25zLCBidXQgYWxzbyB3b3JrcyBmb3IKPiBzdHJ1Y3RzL3VuaW9ucy4g
U28gdGhlIG5hbWUgaXMgbWlzbGVhZGluZy4gVGhpcyBwYXRjaCByZW5hbWVzIGl0IHRvCj4gJ3Nw
ZWNpZmljJywgc28gbm93IHdlIGhhdmUgZXhwb3J0L2ludGVybmFsL3NwZWNpZmljIGRpcmVjdGl2
ZXMgdG8gbGltaXQKPiB0aGUgZnVuY3Rpb25zL3R5cGVzIHRvIGJlIGluY2x1ZGVkIGluIGRvY3Vt
ZW50YXRpb24uIE1lYW53aGlsZSB3ZSBpbXByb3ZlZAo+IHRoZSB3YXJuaW5nIG1lc3NhZ2UuCgpJ
IGFncmVlIHdpdGggdGhlIG90aGVycyB0aGF0ICJzcGVjaWZpYyIgZG9lc24ndCByZWFsbHkgbWFr
ZSB0aGluZ3MKYmV0dGVyLiAgIkludGVyZmFjZXMiIG1heWJlOyBvdGhlcndpc2Ugd2UgY291bGQg
Z28gZm9yIHNvbWV0aGluZyBsaWtlCiJmaWx0ZXIiIG9yICJzZWxlY3QiLgoKUGFpbnQgbWluZSBn
cmVlbiA6KQoKV2hhdGV2ZXIgd2UgZW5kIHVwIHdpdGgsIEkgdGhpbmsgaXQgc2hvdWxkIGJlIGFk
ZGVkIGFzIGEgc3lub255bSBmb3IKImZ1bmN0aW9ucyIuICBUaGVuIHRoZSB2YXJpb3VzIHNlbGVj
dG9ycyB0aGF0IGFyZSBhY3R1YWxseSBwdWxsaW5nIG91dApkb2NzIGZvciBmdW5jdGlvbnMgY291
bGQgYmUgY2hhbmdlZCBhdCBsZWlzdXJlIC0gb3Igbm90IGF0IGFsbC4gIEknZApyYXRoZXIgbm90
IHNlZSBhIGJpZyBwYXRjaCBjaGFuZ2luZyBldmVyeXRoaW5nIGF0IG9uY2UuCgpUaGFua3MsCgpq
b24KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
