Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4010014A4C0
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2020 14:18:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A9EA6EB95;
	Mon, 27 Jan 2020 13:18:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 680496EB95
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2020 13:18:30 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20022582-1500050 for multiple; Mon, 27 Jan 2020 13:18:27 +0000
MIME-Version: 1.0
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200124181530.GA13686@intel.com>
References: <20200124172301.16484-1-stanislav.lisovskiy@intel.com>
 <20200124181530.GA13686@intel.com>
Message-ID: <158013110559.25356.16671003310732677949@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 27 Jan 2020 13:18:25 +0000
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: Fix inconsistance between
 pfit.enable and scaler freeing
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBWaWxsZSBTeXJqw6Rsw6QgKDIwMjAtMDEtMjQgMTg6MTU6MzApCj4gT24gRnJpLCBK
YW4gMjQsIDIwMjAgYXQgMDc6MjM6MDFQTSArMDIwMCwgU3RhbmlzbGF2IExpc292c2tpeSB3cm90
ZToKPiA+IERlc3BpdGUgdGhhdCBkdXJpbmcgaHcgcmVhZG91dCB3ZSBzZWVtIHRvIGhhdmUgc2Nh
bGVycyBhc3NpZ25lZAo+ID4gdG8gcGlwZXMsIHRoZW4gY2FsbCBhdG9taWNfc2V0dXBfc2NhbGVy
cywgYXQgdGhlIGNvbW1pdCBzdGFnZSBpbgo+ID4gc2tsX3VwZGF0ZV9zY2FsZXIgdGhlcmUgaXMg
YSBjaGVjaywgdGhhdCBpZiB3ZSBoYXZlIGZiIHNyYyBhbmQKPiA+IGRlc3Qgb2Ygc2FtZSBzaXpl
LCB3ZSBzdGFnZSBmcmVlaW5nIG9mIHRoYXQgc2NhbGVyLgo+ID4gCj4gPiBIb3dldmVyIHdlIGRv
bid0IHVwZGF0ZSBwZml0LmVuYWJsZWQgZmxhZyB0aGVuLCB3aGljaCBtYWtlcwo+ID4gdGhlIHN0
YXRlIGluY29uc2lzdGVudCwgd2hpY2ggaW4gdHVybiB0cmlnZ2VycyBhIFdBUk5fT04KPiA+IGlu
IHNrbF9wZml0X2VuYWJsZSwgYmVjYXVzZSB3ZSBoYXZlIHBmaXQgZW5hYmxlZCwKPiA+IGJ1dCBu
byBhc3NpZ25lZCBzY2FsZXIuCj4gCj4gQW5kIHRoZSByZWFzb24gZm9yIG5vdCBoYXZpbmcgdXBk
YXRlcyBwZml0LmVuYWJsZWQgaXMgdGhhdCB0aGUKPiB0aGUgbW9kZXNldCB3YXMgZm9yY2VkIGJ5
IGEgY2RjbGsgY2hhbmdlIGFuZCB0aHVzIHRoZSBmdWxsIHN0YXRlCj4gcmVjb21wdXRhdGlvbiBu
ZXZlciBoYXBwZW5lZCBhbmQgd2UncmUgbGVmdCB3aXRoIHRoZSBpbmhlcml0ZWQKPiBwZml0LmVu
YWJsZWQuCj4gCj4gPiAKPiA+IFRvIG1lIHRoaXMgbG9va3Mgd2VpcmQgdGhhdCB3ZSBraW5kIG9m
IGRvIHRoZSBkZWNpc2lvbgo+ID4gdG8gdXNlIG9yIG5vdCB1c2UgdGhlIHNjYWxlciBhdCBza2xf
dXBkYXRlX3NjYWxlciBzdGFnZQo+ID4gYnV0IG5vdCBpbiBpbnRlbF9hdG9taWNfc2V0dXBfc2Nh
bGVycywgbW9yZW92ZXIKPiA+IG5vdCB1cGRhdGluZyB0aGUgd2hvbGUgc3RhdGUgY29uc2lzdGVu
dGx5Lgo+ID4gCj4gPiBUaGlzIGZpeCBpcyB0byBub3QgZnJlZSB0aGUgc2NhbGVyIGlmIHdlIGhh
dmUgcGZpdC5lbmFibGVkCj4gPiBmbGFnIHNldCwgc28gdGhhdCB0aGUgc3RhdGUgaXMgbm93IGNv
bnNpc3RlbnQKPiA+IGFuZCB0aGUgd2FybmluZ3MgYXJlIGdvbmUuCj4gPiAKPiA+IHYyOiAtIFB1
dCBwZml0LmVuYWJsZSBjaGVjayBpbnRvIGNydGMgc3BlY2lmaWMgcGxhY2UKPiA+ICAgICAgIChW
aWxsZSBTeXJqw6Rsw6QpCj4gPiAKPiA+IEJ1Z3ppbGxhOiBodHRwczovL2dpdGxhYi5mcmVlZGVz
a3RvcC5vcmcvZHJtL2ludGVsL2lzc3Vlcy81NzcKPiAKPiBDbG9zZXM6IC4uLgoKU2lnaCwgc2hv
dWxkIGhhdmUgY2hlY2tlZCBmaXJzdC4KCkJ5IHNwZWNpYWwgcmVxdWVzdCBvZiBUb21pLApUZXN0
ZWQtYnk6IFRvbWkgU2FydmVsYSA8dG9taS5wLnNhcnZlbGFAaW50ZWwuY29tPgoKSSBwdXNoZWQu
IFRoYW5rcyBmb3IgdGhlIHBhdGNoLAotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4Cg==
