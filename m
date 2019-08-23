Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 119B99B123
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 15:43:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85E4A6ECA1;
	Fri, 23 Aug 2019 13:43:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com
 [IPv6:2607:f8b0:4864:20::242])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E31856ECA2
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 13:42:59 +0000 (UTC)
Received: by mail-oi1-x242.google.com with SMTP id b25so7043476oib.4
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 06:42:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Jw7xTqZljvWDt+gH2lHnnIUkh+OWb2dqWCVggLcTb1s=;
 b=GlvYyQlZaKZNggyPT6Wtt7PfwYofl4dbUIIISK1Fl55Wqp1LHtdTdd3sj86LrNJ8Hc
 40dKOSQdBpp6mobI340KHKs+GNIJ/RcuwTFI0ZdcoY998QJNUG/tAIoFpGq2ZGc2gkgg
 QRS3oUX4vviOCKuEmL8W28pNYSebKPcR3Oj4Vo2ktF8E3zrQi1v8+VZgcQvc4luHWeV+
 WImsfBdbYor6i6fRrz/9eS1teNK1MqKckucAXNLEmNcRigudhfIitZtWwBRNJFQuO//s
 R/V3GEUOCZtRjKTOgnbIpqTdhjvd3A3/viEuu0zYXlf0Yv1JmhxjOPPjhpFap/52kY3c
 hRWw==
X-Gm-Message-State: APjAAAVYmIRhI0pz98vvPDwW2zxRMN7HTzLFufBr+vUfulhzZ0Y5h7dk
 5r8DfbDIfj24pqmygGvgusZnwF7PW05/TgMWu+2hsw==
X-Google-Smtp-Source: APXvYqw+eNygtffssBOBe6S8vbVTEOL5pWoEIu5RbBvwqcrgjAiCt8BJn2VrxejfsbAbB+/zEvTuexyQmTMFvMUOjmE=
X-Received: by 2002:aca:da08:: with SMTP id r8mr3001623oig.101.1566567779012; 
 Fri, 23 Aug 2019 06:42:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190820081902.24815-1-daniel.vetter@ffwll.ch>
 <20190820081902.24815-4-daniel.vetter@ffwll.ch>
 <20190820202440.GH11147@phenom.ffwll.local>
 <20190822161428.c9e4479207386d34745ea111@linux-foundation.org>
 <CAKMK7uGw_7uD=wH3bcR9xXSxAcAuYTLOZt3ue4TEvst1D0KzLQ@mail.gmail.com>
 <20190823121234.GB12968@ziepe.ca>
In-Reply-To: <20190823121234.GB12968@ziepe.ca>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Fri, 23 Aug 2019 15:42:47 +0200
Message-ID: <CAKMK7uHzSkd2j4MvSMoHhCaSE0BT0zMo9osF4FUBYwNZrVfYDA@mail.gmail.com>
To: Jason Gunthorpe <jgg@ziepe.ca>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=Jw7xTqZljvWDt+gH2lHnnIUkh+OWb2dqWCVggLcTb1s=;
 b=gyrMKzTuaWrnNIRBDm50i6quBqIz1bhUm1Gm6/8s2kaFviG+TeyKizbVwp8QsZDsg9
 cB0yBjxUh49n7gzOZcU+eGE8vbuKolbVIShRQc6ouMetE6nFGOVR3MppH+/tnYO3Zrlc
 UH0SHALg7tcmzdDG2FTfNdvvTV0I/BMmNjbSw=
Subject: Re: [Intel-gfx] [PATCH 3/4] kernel.h: Add non_block_start/end()
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
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 Ingo Molnar <mingo@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Randy Dunlap <rdunlap@infradead.org>, David Rientjes <rientjes@google.com>,
 Wei Wang <wvw@google.com>, Daniel Vetter <daniel.vetter@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBBdWcgMjMsIDIwMTkgYXQgMjoxMiBQTSBKYXNvbiBHdW50aG9ycGUgPGpnZ0B6aWVw
ZS5jYT4gd3JvdGU6Cj4KPiBPbiBGcmksIEF1ZyAyMywgMjAxOSBhdCAxMDozNDowMUFNICswMjAw
LCBEYW5pZWwgVmV0dGVyIHdyb3RlOgo+ID4gT24gRnJpLCBBdWcgMjMsIDIwMTkgYXQgMToxNCBB
TSBBbmRyZXcgTW9ydG9uIDxha3BtQGxpbnV4LWZvdW5kYXRpb24ub3JnPiB3cm90ZToKPiA+ID4K
PiA+ID4gT24gVHVlLCAyMCBBdWcgMjAxOSAyMjoyNDo0MCArMDIwMCBEYW5pZWwgVmV0dGVyIDxk
YW5pZWxAZmZ3bGwuY2g+IHdyb3RlOgo+ID4gPgo+ID4gPiA+IEhpIFBldGVyLAo+ID4gPiA+Cj4g
PiA+ID4gSWlyYyB5b3UndmUgYmVlbiBpbnZvbHZlZCBhdCBsZWFzdCBzb21ld2hhdCBpbiBkaXNj
dXNzaW5nIHRoaXMuIC1tbSBmb2xrcwo+ID4gPiA+IGFyZSBhIGJpdCB1bmRlY2lkZWQgd2hldGhl
ciB0aGVzZSBuZXcgbm9uX2Jsb2NrIHNlbWFudGljcyBhcmUgYSBnb29kIGlkZWEuCj4gPiA+ID4g
TWljaGFsIEhvY2tvIHN0aWxsIGlzIGluIHN1cHBvcnQsIGJ1dCBBbmRyZXcgTW9ydG9uIGFuZCBK
YXNvbiBHdW50aG9ycGUKPiA+ID4gPiBhcmUgbGVzcyBlbnRodXNpYXN0aWMuIEphc29uIHNhaWQg
aGUncyBvayB3aXRoIG1lcmdpbmcgdGhlIGhtbSBzaWRlIG9mCj4gPiA+ID4gdGhpcyBpZiBzY2hl
ZHVsZXIgZm9sa3MgYWNrLiBJZiBub3QsIHRoZW4gSSdsbCByZXNwaW4gd2l0aCB0aGUKPiA+ID4g
PiBwcmVlbXB0X2Rpc2FibGUvZW5hYmxlIGluc3RlYWQgbGlrZSBpbiB2MS4KPiA+ID4KPiA+ID4g
SSBiZWNhbWUgbW9sbGlmaWVkIG9uY2UgTWljaGVsIGV4cGxhaW5lZCB0aGUgcmF0aW9uYWxlLiAg
SSB0aGluayBpdCdzCj4gPiA+IE9LLiAgSXQncyB2ZXJ5IHNwZWNpZmljIHRvIHRoZSBvb20gcmVh
cGVyIGFuZCBob3BlZnVsbHkgd29uJ3QgYmUgdXNlZAo+ID4gPiBtb3JlIHdpZGVseSg/KS4KPiA+
Cj4gPiBZZWFoLCBubyBwbGFucyBmb3IgdGhhdCBmcm9tIG1lLiBBbmQgSSBob3BlIHRoZSBjb21t
ZW50IGFib3ZlIHRoZW0gbm93Cj4gPiBleHBsYWlucyB3aHkgdGhleSBleGlzdCwgc28gcGVvcGxl
IHRoaW5rIHR3aWNlIGJlZm9yZSB1c2luZyBpdCBpbgo+ID4gcmFuZG9tIHBsYWNlcy4KPgo+IEkg
c3RpbGwgaGF2ZW4ndCBoZWFyZCBhIHNhdGlzZmFjdG9yeSBhbnN3ZXIgd2h5IGEgd2hvbGUgbmV3
IHNjaGVtZSBpcwo+IG5lZWRlZCBhbmQgYSBzaW1wbGU6Cj4KPiAgICBpZiAoSVNfRU5BQkxFRChD
T05GSUdfREVCVUdfQVRPTUlDX1NMRUVQKSkKPiAgICAgICAgIHByZWVtcHRfZGlzYWJsZSgpCj4K
PiBpc24ndCBzdWZmaWNpZW50IHRvIGNhdGNoIHRoZSBwcm9ibGVtYXRpYyBjYXNlcyBkdXJpbmcg
ZGVidWdnaW5nPz8KPiBJTUhPIHRoZSBmYWN0IHByZWVtcHQgaXMgY2hhbmdlZCBieSB0aGUgYWJv
dmUgd2hlbiBkZWJ1Z2dpbmcgaXMgbm90Cj4gbWF0ZXJpYWwgaGVyZS4gSSB0aGluayB0aGF0IGlu
Zm9ybWF0aW9uIHNob3VsZCBiZSBpbmNsdWRlZCBpbiB0aGUKPiBjb21taXQgbWVzc2FnZSBhdCBs
ZWFzdC4KPgo+IEJ1dCBpZiBzY2hlZCBwZW9wbGUgYXJlIGhhcHB5IHRoZW4gbGV0cyBnbyBhaGVh
ZC4gQ2FuIHlvdSBzZW5kIGEgdjIKPiB3aXRoIHRoZSBjaGVjayBlbmNvbXBhc3NpbmcgdGhlIGlu
dmFsaWRhdGVfcmFuZ2VfZW5kPwoKWWVzIEkgd2lsbCByZXNlbmQgd2l0aCB0aGlzIHBhdGNoIHBs
dXMgdGhlIG5leHQsIGFtZW5kZWQgYXMgd2UKZGlzY3Vzc2VkLCBwbHVzIHRoZSBtaWdodF9zbGVl
cCBhbm5vdGF0aW9ucy4gSSdtIGFzc3VtaW5nIHRoZSBsb2NrZGVwCm9uZSB3aWxsIGxhbmQsIHNv
IG5vdCBnb2luZyB0byByZXNlbmQgdGhhdC4KLURhbmllbAotLSAKRGFuaWVsIFZldHRlcgpTb2Z0
d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KKzQxICgwKSA3OSAzNjUgNTcgNDggLSBo
dHRwOi8vYmxvZy5mZndsbC5jaApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
