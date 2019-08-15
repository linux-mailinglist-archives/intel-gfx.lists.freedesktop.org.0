Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 903E38EC7E
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Aug 2019 15:12:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2BB76E997;
	Thu, 15 Aug 2019 13:12:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com
 [IPv6:2607:f8b0:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EC386E996
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Aug 2019 13:12:27 +0000 (UTC)
Received: by mail-ot1-x343.google.com with SMTP id g17so4896595otl.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Aug 2019 06:12:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nLAvE7lDJNY/2hXIcylLI9QM83e4RDXFU2y4iIE01K4=;
 b=eZXgU7JJ7OkuW4A+vC5Y95fa9hQAo/XSegZ4irYCflZjrKMPQ9vVMv0is2IiY1fPCM
 sHljofC0ITCEY4EsOfbrtgFE2MOHEn5ME6C2tpIcrwJQ3+mn3qFSlGnv3i892DU0Bj8I
 ebNrOWL8vaRvZZ9yByJzUnEB4AorUPBnOV4fwDUANU5WqTxv4BOaDEl+gxVHhjZjUIfG
 RwG2jIcM6McnLxtlbij3RK8oKZ/BHCyDPVl/z28vMTZjoZakI6Jr096bT5A0GtUAdmxu
 TVUGctE0lOtsqRpVdQv5hUiwbJyEe7TKEw9usbSuSZhUKIxRvzFTSdwm69uUyfh7WrZW
 QoPQ==
X-Gm-Message-State: APjAAAWI6ia4laAb3gjb3jKr5AseQrhyy+uCQZqe+sMuUmT1RJfb3rRC
 zpuqPmyQ9jXy6fgrc7wDXQ64NRNThphyxyBZHpmppg==
X-Google-Smtp-Source: APXvYqwb4/fPJEfbvz7yWzpngUJACAlVMwrTaPlMWn6ej36UzkLB2ub99QrSaO1zkI7AqPQMI7LKYD8gIiKyzGjESHY=
X-Received: by 2002:a9d:7cc9:: with SMTP id r9mr3688645otn.188.1565874747163; 
 Thu, 15 Aug 2019 06:12:27 -0700 (PDT)
MIME-Version: 1.0
References: <20190814202027.18735-1-daniel.vetter@ffwll.ch>
 <20190814202027.18735-3-daniel.vetter@ffwll.ch>
 <20190814134558.fe659b1a9a169c0150c3e57c@linux-foundation.org>
 <20190815084429.GE9477@dhcp22.suse.cz> <20190815130415.GD21596@ziepe.ca>
In-Reply-To: <20190815130415.GD21596@ziepe.ca>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Thu, 15 Aug 2019 15:12:11 +0200
Message-ID: <CAKMK7uE9zdmBuvxa788ONYky=46GN=5Up34mKDmsJMkir4x7MQ@mail.gmail.com>
To: Jason Gunthorpe <jgg@ziepe.ca>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=nLAvE7lDJNY/2hXIcylLI9QM83e4RDXFU2y4iIE01K4=;
 b=Za9fYZAvz38c7q5/yD99Bw30IvGPgKhHThVM4vKevIWU3/BW35bi+F3ppSbkTaFkbT
 fo2CpvHM7cVjqc50yRgI9kWHHLUpxwV9lKj2e5yAkPWwg/XLsgOFJ9+5aRlUooRkXMat
 8A59WCTr5lrTYXQcbNjUgSTq+i4lJG3Axdh94=
Subject: Re: [Intel-gfx] [PATCH 2/5] kernel.h: Add non_block_start/end()
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
Cc: Feng Tang <feng.tang@intel.com>, Randy Dunlap <rdunlap@infradead.org>,
 Kees Cook <keescook@chromium.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Jann Horn <jannh@google.com>, LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Michal Hocko <mhocko@kernel.org>, Linux MM <linux-mm@kvack.org>,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 Ingo Molnar <mingo@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 David Rientjes <rientjes@google.com>, Wei Wang <wvw@google.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBBdWcgMTUsIDIwMTkgYXQgMzowNCBQTSBKYXNvbiBHdW50aG9ycGUgPGpnZ0B6aWVw
ZS5jYT4gd3JvdGU6Cj4KPiBPbiBUaHUsIEF1ZyAxNSwgMjAxOSBhdCAxMDo0NDoyOUFNICswMjAw
LCBNaWNoYWwgSG9ja28gd3JvdGU6Cj4KPiA+IEFzIHRoZSBvb20gcmVhcGVyIGlzIHRoZSBwcmlt
YXJ5IGd1YXJhbnRlZSBvZiB0aGUgb29tIGhhbmRsaW5nIGZvcndhcmQKPiA+IHByb2dyZXNzIGl0
IGNhbm5vdCBiZSBibG9ja2VkIG9uIGFueXRoaW5nIHRoYXQgbWlnaHQgZGVwZW5kIG9uIGJsb2Nr
YWJsZQo+ID4gbWVtb3J5IGFsbG9jYXRpb25zLiBUaGVzZSBhcmUgbm90IHJlYWxseSBlYXN5IHRv
IHRyYWNrIGJlY2F1c2UgdGhleQo+ID4gbWlnaHQgYmUgaW5kaXJlY3QgLSBlLmcuIG5vdGlmaWVy
IGJsb2NrcyBvbiBhIGxvY2sgd2hpY2ggb3RoZXIgY29udGV4dAo+ID4gaG9sZHMgd2hpbGUgYWxs
b2NhdGluZyBtZW1vcnkgb3Igd2FpdGluZyBmb3IgYSBmbHVzaGVyIHRoYXQgbmVlZHMgbWVtb3J5
Cj4gPiB0byBwZXJmb3JtIGl0cyB3b3JrLgo+Cj4gQnV0IGxvY2tkZXAgKmRvZXMqIHRyYWNrIGFs
bCB0aGlzIGFuZCBmc19yZWNsYWltX2FjcXVpcmUoKSB3YXMgY3JlYXRlZAo+IHRvIHNvbHZlIGV4
YWN0bHkgdGhpcyBwcm9ibGVtLgo+Cj4gZnNfcmVjbGFpbSBpcyBhIGxvY2sgYW5kIGl0IGZsb3dz
IHRocm91Z2ggYWxsIHRoZSB1c3VhbCBsb2NrZGVwCj4gc2NoZW1lcyBsaWtlIGFueSBvdGhlciBs
b2NrLiBBbnkgdGltZSB0aGUgcGFnZSBhbGxvY2F0b3Igd2FudHMgdG8gZG8KPiBzb21ldGhpbmcg
dGhlIHdvdWxkIGRlYWRsb2NrIHdpdGggcmVjbGFpbSBpdCB0YWtlcyB0aGUgbG9jay4KPgo+IEZh
aWx1cmUgaXMgZXhwcmVzc2VkIGJ5IGEgZGVhZGxvY2sgY3ljbGUgaW4gdGhlIGxvY2tkZXAgbWFw
LCBhbmQKPiBsb2NrZGVwIGNhbiBoYW5kbGUgYXJiaXRhcnkgY29tcGxleGl0eSB0aHJvdWdoIGxh
eWVycyBvZiBsb2Nrcywgd29yawo+IHF1ZXVlcywgdGhyZWFkcywgZXRjLgo+Cj4gV2hhdCBpcyBt
aXNzaW5nPwoKTG9ja2RlcCBkb2Vucyd0IHNlZW4gZXZlcnl0aGluZyBieSBmYXIuIEUuZy4gYSB3
YWl0X2V2ZW50IHdpbGwgYmUKY2F1Z2h0IGJ5IHRoZSBhbm5vdGF0aW9ucyBoZXJlLCBidXQgbm90
IGJ5IGxvY2tkZXAuIFBsdXMgbG9ja2RlcCBkb2VzCm5vdCBzZWUgdGhyb3VnaCB0aGUgd2FpdF9l
dmVudCwgYW5kIGRvZXNuJ3QgcmVhbGl6ZSBpZiBlLmcuIHRoYXQgZXZlbnQKd2lsbCBuZXZlciBz
aWduYWwgYmVjYXVzZSB0aGUgd29ya2VyIGlzIHBhcnQgb2YgdGhlIGRlYWRsb2NrIGxvb3AuCmNy
b3NzLXJlbGVhc2Ugd2FzIHN1cHBvc2VkIHRvIGZpeCB0aGF0LCBidXQgc2VlbXMgbGlrZSB0aGF0
IHdpbGwgbmV2ZXIKbGFuZC4KCkFuZCBzaW5jZSB3ZSdyZSB0YWxraW5nIGFib3V0IG1tdSBub3Rp
ZmllcnMgaGVyZSBhbmQgZ3B1cy9kbWEgZW5naW5lcy4KV2UgaGF2ZSBkbWFfZmVuY2Vfd2FpdCwg
d2hpY2ggY2FuIHdhaXQgZm9yIGFueSBody9kcml2ZXIgaW4gdGhlIHN5c3RlbQp0aGF0IHRha2Vz
IHBhcnQgaW4gc2hhcmVkL3plcm8tY29weSBidWZmZXIgcHJvY2Vzc2luZy4gV2hpY2ggYXQgbGVh
c3QKb24gdGhlIGdyYXBoaWNzIHNpZGUgaXMgZXZlcnl0aGluZy4gVGhpcyBwdWxscyBpbiBlbm9y
bW91cyBhbW91bnRzIG9mCmRlYWRsb2NrIHBvdGVudGlhbCB0aGF0IGxvY2tkZXAgc2ltcGx5IGlz
IGJsaW5kIGFib3V0IGFuZCB3aWxsIG5ldmVyCnNlZS4KCkFybWluZyBtaWdodF9zbGVlcCBjYXRj
aGVzIHRoZW0gYWxsLgoKQ2hlZXJzLCBEYW5pZWwKClBTOiBEb24ndCBhc2sgbWUgYWJvdXQgd2h5
IHdlIG5lZWQgdGhlc2Ugc2VtYW50aWNzIGZvciBvb21fcmVhcGVyLApsaWtlIEkgc2FpZCBqdXN0
IHRyeWluZyB0byBmb2xsb3cgdGhlIHJ1bGVzLgotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBF
bmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KKzQxICgwKSA3OSAzNjUgNTcgNDggLSBodHRwOi8v
YmxvZy5mZndsbC5jaApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
