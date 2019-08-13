Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C82278BD4F
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Aug 2019 17:37:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC4236E1A4;
	Tue, 13 Aug 2019 15:37:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA9916E182;
 Tue, 13 Aug 2019 15:37:42 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Aug 2019 08:37:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,382,1559545200"; d="scan'208";a="376330683"
Received: from aquilante.fi.intel.com (HELO intel.intel) ([10.237.72.186])
 by fmsmga006.fm.intel.com with ESMTP; 13 Aug 2019 08:37:41 -0700
Date: Tue, 13 Aug 2019 18:37:41 +0300
From: Andi Shyti <andi.shyti@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190813153741.GC32007@intel.intel>
References: <20190813062016.7870-1-chris@chris-wilson.co.uk>
 <20190813062016.7870-9-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190813062016.7870-9-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 9/9] i915/gem_ctx_engine:
 Drip feed requests into 'independent'
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgQ2hyaXMsCgpPbiBUdWUsIEF1ZyAxMywgMjAxOSBhdCAwNzoyMDoxNkFNICswMTAwLCBDaHJp
cyBXaWxzb24gd3JvdGU6Cj4gVGhlIGludGVudCBvZiB0aGUgdGVzdCBpcyB0byBleGVyY2lzZSB0
aGF0IGVhY2ggY2hhbm5lbCBpbiB0aGUgZW5naW5lW10KPiBpcyBhbiBpbmRlcGVuZGVudCBjb250
ZXh0L3JpbmcvdGltZWxpbmUuIEl0IHNldHVwcyA2NCBjaGFubmVscyBwb2ludGluZwo+IHRvIHJj
czAgYW5kIHRoZW4gc3VibWl0cyBvbmUgcmVxdWVzdCB0byBlYWNoIGluIHR1cm4gd2FpdGluZyBv
biBhCj4gdGltZWxpbmUgdGhhdCB3aWxsIGZvcmNlIHRoZW0gdG8gcnVuIG91dCBvZiBzdWJtaXNz
aW9uIG9yZGVyLiBUaGV5IGNhbgo+IG9ubHkgcnVuIGluIGZlbmNlIG9yZGVyIGFuZCBub3Qgc3Vi
bWlzc2lvbiBvcmRlciBpZiB0aGUgdGltZWxpbmVzIG9mCj4gZWFjaCBjaGFubmVsIGFyZSB0cnVs
eSBpbmRlcGVuZGVudC4KPiAKPiBIb3dldmVyLCB3ZSByZWxlYXNlZCB0aGUgZmVuY2VzIGVuIG1h
c3NlLCBhbmQgb25jZSB0aGUgcmVxdWVzdHMgYXJlCj4gcmVhZHkgdGhleSBhcmUgaW5kZXBlbmRl
bnQgYW55IG1heSBiZSBleGVjdXRlZCBpbiBhbnkgb3JkZXIgYnkgdGhlIEhXLAoKdHlwbyBoZXJl
Cgo+IGVzcGVjaWFsbHkgdHJ1ZSB3aXRoIHRpbWVzbGljaW5nIHRoYXQgbWF5IHJlb3JkZXIgdGhl
IHJlcXVlc3RzIG9uIGEKPiB3aGltLiBTbyBpbnN0ZWFkIG9mIHJlbGVhc2luZyBhbGwgcmVxdWVz
dHMgYXQgb25jZSwgaW5jcmVtZW50IHRoZQo+IHRpbWVsaW5lIHN0ZXAgYnkgc3RlcCBhbmQgY2hl
Y2sgd2UgZ2V0IG91ciByZXN1bHRzIGFkdmFuY2luZy4gSWYgdGhlCj4gcmVxdWVzdHMgY2FuIG5v
dCBiZSBydW4gaW4gZmVuY2Ugb3JkZXIgYW5kIGZhbGwgYmFjayB0byBzdWJtaXNzaW9uCj4gb3Jk
ZXIsIHdlIHdpbGwgdGltZSBvdXQgd2FpdGluZyBmb3Igb3VyIGluY3JlbWVudGFsIHJlc3VsdHMg
YW5kIHRyaWdnZXIKPiBhIGZldyBHUFUgaGFuZ3MuCj4gCj4gQnVnemlsbGE6IGh0dHBzOi8vYnVn
cy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMDk4Nwo+IFNpZ25lZC1vZmYtYnk6
IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgoKTG9va3MgT0suCgpSZXZp
ZXdlZC1ieTogQW5kaSBTaHl0aSA8YW5kaS5zaHl0aUBpbnRlbC5jb20+CgpUaGFua3MsCkFuZGkK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
