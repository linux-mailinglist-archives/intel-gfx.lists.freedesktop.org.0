Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BBF4725314
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2019 16:55:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF7AF8941D;
	Tue, 21 May 2019 14:55:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 687 seconds by postgrey-1.36 at gabe;
 Tue, 21 May 2019 14:55:06 UTC
Received: from a9-99.smtp-out.amazonses.com (a9-99.smtp-out.amazonses.com
 [54.240.9.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 511988941D;
 Tue, 21 May 2019 14:55:06 +0000 (UTC)
Date: Tue, 21 May 2019 14:43:38 +0000
From: Christopher Lameter <cl@linux.com>
X-X-Sender: cl@nuc-kabylake
To: Daniel Vetter <daniel.vetter@ffwll.ch>
In-Reply-To: <20190521100611.10089-1-daniel.vetter@ffwll.ch>
Message-ID: <0100016adad909d8-e6c9c310-36e0-4bdd-80fd-5df1a1660041-000000@email.amazonses.com>
References: <20190521100611.10089-1-daniel.vetter@ffwll.ch>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-SES-Outgoing: 2019.05.21-54.240.9.99
Feedback-ID: 1.us-east-1.fQZZZ0Xtj2+TD7V5apTT/NrT6QKuPgzCT/IC7XYgDKI=:AmazonSES
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/simple; 
 s=6gbrjpgwjskckoa6a5zn6fwqkn67xbtw; d=amazonses.com; t=1558449818;
 h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:MIME-Version:Content-Type:Feedback-ID;
 bh=ugj1TnF91z5+PBr8jQIJ7x5EpDifHr/zSRpWbpp1ovs=;
 b=BQ+JycJdcpCjIkVBFXG/uI/HVL5jFnPpTJt1wuepkBL/uNGFdX/hN68BkswpWFGW
 mg/FuCt9SExcgAO0Eslvkkk3XzdUBUdiRTWU+zp5YFpHW7RGAhGngcQtn5shOZF0VN/
 nOqFCUJNNa5hHtr4UGwVSyLKP9qAjIfWUg7eWWug=
Subject: Re: [Intel-gfx] [PATCH] kernel.h: Add non_block_start/end()
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
Cc: Feng Tang <feng.tang@intel.com>, Michal Hocko <mhocko@suse.com>,
 Kees Cook <keescook@chromium.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Jann Horn <jannh@google.com>, LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Linux MM <linux-mm@kvack.org>,
 =?ISO-8859-15?Q?J=E9r=F4me_Glisse?= <jglisse@redhat.com>,
 Ingo Molnar <mingo@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Randy Dunlap <rdunlap@infradead.org>, David Rientjes <rientjes@google.com>,
 Wei Wang <wvw@google.com>, Daniel Vetter <daniel.vetter@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 =?ISO-8859-15?Q?Christian_K=F6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMSBNYXkgMjAxOSwgRGFuaWVsIFZldHRlciB3cm90ZToKCj4gSW4gc29tZSBzcGVj
aWFsIGNhc2VzIHdlIG11c3Qgbm90IGJsb2NrLCBidXQgdGhlcmUncyBub3QgYQo+IHNwaW5sb2Nr
LCBwcmVlbXB0LW9mZiwgaXJxcy1vZmYgb3Igc2ltaWxhciBjcml0aWNhbCBzZWN0aW9uIGFscmVh
ZHkKPiB0aGF0IGFybXMgdGhlIG1pZ2h0X3NsZWVwKCkgZGVidWcgY2hlY2tzLiBBZGQgYSBub25f
YmxvY2tfc3RhcnQvZW5kKCkKPiBwYWlyIHRvIGFubm90YXRlIHRoZXNlLgoKSnVzdCBwdXR0aW5n
IHByZWVtcHQgb24vb2ZmIGFyb3VuZCB0aGVzZSBpcyBub3Qgc3VmZmljaWVudD8KCklmIG5vdCBh
bmQgeW91IG5lZWQgdG8gYWRkIGFub3RoZXIgdHlwZSBvZiBjcml0aWNhbCBzZWN0aW9uIHRoZW4g
d291bGQKdGhpcyBub3QgbmVlZCB0byBiZSBhZGRlZCB0byB0aGUgcHJlZW1wdCBjb3VudGVycz8g
U2VlCmluY2x1ZGUvbGludXgvcHJlZW1wdC5oPyBMb29rcyBsaWtlIHRoZXJlIGFyZSBzdWZmaWNp
ZW50IGJpdHMgbGVmdCB0byBwdXQKdGhlIGNvdW50ZXIgaW4gdGhlcmUuCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
