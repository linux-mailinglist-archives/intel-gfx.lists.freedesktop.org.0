Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 71F02E0AC8
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 19:38:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E7666E8AD;
	Tue, 22 Oct 2019 17:38:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C4EE6E8AD
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2019 17:38:38 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Oct 2019 10:38:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,217,1569308400"; d="scan'208";a="397766427"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by fmsmga005.fm.intel.com with ESMTP; 22 Oct 2019 10:38:36 -0700
Date: Tue, 22 Oct 2019 10:40:55 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Animesh Manna <animesh.manna@intel.com>
Message-ID: <20191022174055.GC2533@intel.com>
References: <20191003150653.15881-1-animesh.manna@intel.com>
 <20191003150653.15881-3-animesh.manna@intel.com>
 <20191021225731.GA29989@intel.com>
 <bd7b9c22-7a51-7dfc-e86c-039aa5d47ab4@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bd7b9c22-7a51-7dfc-e86c-039aa5d47ab4@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [RFC 2/6] drm/i915/dp: Move vswing/pre-emphasis
 adjustment calculation
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBPY3QgMjIsIDIwMTkgYXQgMDc6MzQ6MTNQTSArMDUzMCwgQW5pbWVzaCBNYW5uYSB3
cm90ZToKPiAKPiBPbiAxMC8yMi8yMDE5IDQ6MjcgQU0sIE1hbmFzaSBOYXZhcmUgd3JvdGU6Cj4g
Pk9uIFRodSwgT2N0IDAzLCAyMDE5IGF0IDA4OjM2OjQ5UE0gKzA1MzAsIEFuaW1lc2ggTWFubmEg
d3JvdGU6Cj4gPj52c3dpbmcvcHJlLWVtcGhhc2lzIGFkanVzdG1lbnQgY2FsY3VsYXRpb24gaXMg
bmVlZGVkIGluIHByb2Nlc3NpbmcKPiA+Pm9mIGF1dG8gcGh5IGNvbXBsaWFuY2UgcmVxdWVzdCBv
dGhlciB0aGFuIGxpbmsgdHJhaW5pbmcsIHNvIG1vdmVkCj4gPj50aGUgc2FtZSBmdW5jdGlvbiBp
biBpbnRlbF9kcC5jLgo+ID4+Cj4gPj5ObyBmdW5jdGlvbmFsIGNoYW5nZS4KPiA+WW91IGNvdWxk
IGp1c3QgbWFrZSBpdCBhIG5vbiBzdGF0aWMgZnVuY3Rpb24gaW5zdGVhZCBvZiBtb3ZpbmcgdG8g
aW50ZWxfZHAuYwo+IAo+IEluaXRpYWxseSBJIGRpZCB0aGUgc2FtZSAuLi4gOikKPiBMYXRlciBJ
IHRob3VnaHQgaW50ZWxfZHBfbGlua190cmFpbmluZy5jIGZpbGUgaXMgbWFpbmx5IGZvY3VzZWQg
b25seSBvbiBsaW5rCj4gdHJhaW5pbmcgcHJvY2Vzcywgc3RhcnRfbGlua190cmFpbigpIGFuZCBz
dG9wX2xpbmtfdHJhaW4oKSBhcmUgb25seSBleHBvc2VkLgo+IEkgdGhvdWdodCBJIG1heSBub3Qg
YmUgYWxsb3dlZCB0byBleHBvc2UgaW50ZWxfZ2V0X2FkanVzdF90cmFpbigpIGFzIGl0IGlzCj4g
bm90IGV4Y2x1c2l2ZSBmb3IgbGluayB0cmFpbmluZy4KPiBQbGVhc2UgbGV0IG1lIGtub3cgeW91
ciB2aWV3LgoKSW5mYWN0IG5vdyB0aGF0IEkgbG9vayBhdCB0aGlzLCBpIHRoaW5rIHRoZSBwcmVw
YXJlX3BoeV90ZXN0IGZ1bmN0aW9uIHNob3VsZCBvbmx5CnByb2JhYmx5IGdldCB0aGUgZHJtX2dl
dF9waHlfdGVzdF9wYXR0ZXJuIGFuZCBwb3B1bGF0ZSBpbiB0aGUgaW50ZWxfZHBfY29tcGxpYW5j
ZQpzdHJ1Y3R1cmUgYW5kIHRoZW4gYWRqdXN0IHRyYWluIGFuZCBhbGwgdGhhdCBjYW4gaGFwcGVu
IHJpZ2h0IGJlZm9yZSBwYXR0ZXJuIHVwZGF0ZQp3aGljaCB3aWxsIG5lZWQgdG8gaGFwcGVuIGlu
IGF0b21pY19jb21taXRfdGFpbC4KCkhvdyBkbyB5b3UgaGFuZGxlIHRoZSByZWd1bGFyIGxpbmsg
dHJhaW5pbmcgc2VxdWVuY2UgaW4gdGhlIGNhc2Ugb2YgUEhZIHRlc3Q/CldoYXQgaGFwcGVucyB0
byB0aGUgYWRqdXN0IHRyYWluIHRoZSB0aGUgcmVndWxhciBsaW5rIHRyYWluaW5nIGNsb2NrIHJl
Y292ZXJ5IGFuZApjaGFubmVsIGVxIHN0YWdlcz8KCk1hbmFzaQoKPiAKPiBSZWdhcmRzLAo+IEFu
aW1lc2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
