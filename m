Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAD4D8ECB5
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Aug 2019 15:24:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8396C6E99F;
	Thu, 15 Aug 2019 13:24:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E63046E99E;
 Thu, 15 Aug 2019 13:24:25 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 64041AE12;
 Thu, 15 Aug 2019 13:24:24 +0000 (UTC)
Date: Thu, 15 Aug 2019 15:24:23 +0200
From: Michal Hocko <mhocko@kernel.org>
To: Jason Gunthorpe <jgg@ziepe.ca>
Message-ID: <20190815132423.GJ9477@dhcp22.suse.cz>
References: <20190814202027.18735-1-daniel.vetter@ffwll.ch>
 <20190814202027.18735-3-daniel.vetter@ffwll.ch>
 <20190814134558.fe659b1a9a169c0150c3e57c@linux-foundation.org>
 <20190815084429.GE9477@dhcp22.suse.cz>
 <20190815130415.GD21596@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190815130415.GD21596@ziepe.ca>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
 Peter Zijlstra <peterz@infradead.org>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Jann Horn <jannh@google.com>, LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>, linux-mm@kvack.org,
 =?iso-8859-1?B?Suly9G1l?= Glisse <jglisse@redhat.com>,
 Ingo Molnar <mingo@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 David Rientjes <rientjes@google.com>, Wei Wang <wvw@google.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1IDE1LTA4LTE5IDEwOjA0OjE1LCBKYXNvbiBHdW50aG9ycGUgd3JvdGU6Cj4gT24gVGh1
LCBBdWcgMTUsIDIwMTkgYXQgMTA6NDQ6MjlBTSArMDIwMCwgTWljaGFsIEhvY2tvIHdyb3RlOgo+
IAo+ID4gQXMgdGhlIG9vbSByZWFwZXIgaXMgdGhlIHByaW1hcnkgZ3VhcmFudGVlIG9mIHRoZSBv
b20gaGFuZGxpbmcgZm9yd2FyZAo+ID4gcHJvZ3Jlc3MgaXQgY2Fubm90IGJlIGJsb2NrZWQgb24g
YW55dGhpbmcgdGhhdCBtaWdodCBkZXBlbmQgb24gYmxvY2thYmxlCj4gPiBtZW1vcnkgYWxsb2Nh
dGlvbnMuIFRoZXNlIGFyZSBub3QgcmVhbGx5IGVhc3kgdG8gdHJhY2sgYmVjYXVzZSB0aGV5Cj4g
PiBtaWdodCBiZSBpbmRpcmVjdCAtIGUuZy4gbm90aWZpZXIgYmxvY2tzIG9uIGEgbG9jayB3aGlj
aCBvdGhlciBjb250ZXh0Cj4gPiBob2xkcyB3aGlsZSBhbGxvY2F0aW5nIG1lbW9yeSBvciB3YWl0
aW5nIGZvciBhIGZsdXNoZXIgdGhhdCBuZWVkcyBtZW1vcnkKPiA+IHRvIHBlcmZvcm0gaXRzIHdv
cmsuCj4gCj4gQnV0IGxvY2tkZXAgKmRvZXMqIHRyYWNrIGFsbCB0aGlzIGFuZCBmc19yZWNsYWlt
X2FjcXVpcmUoKSB3YXMgY3JlYXRlZAo+IHRvIHNvbHZlIGV4YWN0bHkgdGhpcyBwcm9ibGVtLgo+
IAo+IGZzX3JlY2xhaW0gaXMgYSBsb2NrIGFuZCBpdCBmbG93cyB0aHJvdWdoIGFsbCB0aGUgdXN1
YWwgbG9ja2RlcAo+IHNjaGVtZXMgbGlrZSBhbnkgb3RoZXIgbG9jay4gQW55IHRpbWUgdGhlIHBh
Z2UgYWxsb2NhdG9yIHdhbnRzIHRvIGRvCj4gc29tZXRoaW5nIHRoZSB3b3VsZCBkZWFkbG9jayB3
aXRoIHJlY2xhaW0gaXQgdGFrZXMgdGhlIGxvY2suCgpPdXIgZW1haWxzIGhhdmUgY3Jvc3NlZC4g
RXZlbiBpZiBmc19yZWNsYWltIGNhbiBiZSByZS1wdXJwb3NlZCBmb3Igb3RoZXIKdGhhbiBGUy9J
TyByZWNsYWltIGNvbnRleHRzIHdoaWNoIEkgYW0gbm90IHN1cmUgYWJvdXQgSSB0aGluayB0aGF0
CmxvY2tkZXAgaXMgdG9vIGhlYXZ5IHdlaWdodCBmb3IgdGhlIHB1cnBvc2Ugb2YgdGhpcyBkZWJ1
Z2dpbmcgYWlkIGluIHRoZQpmaXJzdCBwbGFjZS4gVGhlIG5vbiBibG9jayBtb2RlIGlzIHJlYWxs
eSBzb21ldGhpbmcgYXMgc2ltcGxlIGFzICJoZXkKbW11IG5vdGlmaWVyIHlvdSBhcmUgb25seSBh
bGxvd2VkIHRvIGRvIGEgbGlnaHR3ZWlnaHQgcHJvY2Vzc2luZywgaWYgeW91CmNhbm5vdCBndWFy
YW50ZWUgdGhhdCB0aGVuIGp1c3QgYmFjayBvZmYiLiBUaGUgYW5ub3RhdGlvbiB3aWxsIGdpdmUg
dXMgYQp3YXJuaW5nIGlmIHRoZSBub3RpZmllciBnZXRzIG91dCBvZiB0aGlzIHByb21pc2UuCgot
LSAKTWljaGFsIEhvY2tvClNVU0UgTGFicwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
