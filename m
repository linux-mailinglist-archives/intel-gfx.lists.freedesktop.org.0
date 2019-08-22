Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1650B98C9F
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2019 09:51:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51D4B6EA6A;
	Thu, 22 Aug 2019 07:51:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C9276EA6A
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Aug 2019 07:51:23 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Aug 2019 00:51:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,415,1559545200"; d="scan'208";a="208047169"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
 by fmsmga002.fm.intel.com with ESMTP; 22 Aug 2019 00:51:22 -0700
Received: from ahiler-desk1.fi.intel.com (10.237.68.151) by
 IRSMSX101.ger.corp.intel.com (163.33.3.153) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 22 Aug 2019 08:51:21 +0100
Date: Thu, 22 Aug 2019 10:51:19 +0300
From: Arkadiusz Hiler <arkadiusz.hiler@intel.com>
To: Michal Wajdeczko <michal.wajdeczko@intel.com>
Message-ID: <20190822075119.2mwbzykrg276ngdx@ahiler-desk1.fi.intel.com>
References: <20190818155109.31360-1-michal.wajdeczko@intel.com>
 <20190818155109.31360-2-michal.wajdeczko@intel.com>
 <1806e59a-a491-1258-48c9-337e62e15cef@linux.intel.com>
 <20190822064033.v6my5cuv25xrbrig@ahiler-desk1.fi.intel.com>
 <op.z6wxt5a1xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <op.z6wxt5a1xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Patchwork-Hint: comment
User-Agent: NeoMutt/20180716
X-Originating-IP: [10.237.68.151]
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/uc: Turn on GuC/HuC auto mode
 again
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBBdWcgMjIsIDIwMTkgYXQgMDk6MzE6MDdBTSArMDIwMCwgTWljaGFsIFdhamRlY3pr
byB3cm90ZToKPiBPbiBUaHUsIDIyIEF1ZyAyMDE5IDA4OjQwOjMzICswMjAwLCBBcmthZGl1c3og
SGlsZXIKPiA8YXJrYWRpdXN6LmhpbGVyQGludGVsLmNvbT4gd3JvdGU6Cj4gCj4gPiBPbiBNb24s
IEF1ZyAxOSwgMjAxOSBhdCAxMTowOToxNUFNICswMzAwLCBNYXJ0aW4gUGVyZXMgd3JvdGU6Cj4g
PiA+IE9uIDE4LzA4LzIwMTkgMTg6NTEsIE1pY2hhbCBXYWpkZWN6a28gd3JvdGU6Cj4gPiA+ID4g
V2UgaG9wZSB0aGF0IG5vdyBhbGwgaXNzdWVzIHJlbGF0ZWQgdG8gbWlzc2luZyB1QyBmaXJtd2Fy
ZXMKPiA+ID4gPiBhcmUgZml4ZWQgYW5kIHRoYXQgZHJpdmVyIGNhbiBjb250aW51ZSB0byBsb2Fk
IHdpdGhvdXQgR3VDCj4gPiA+ID4gb3IgSHVDIGZpcm13YXJlIGF2YWlsYWJsZSBhbmQgcnVubmlu
ZzoKPiA+ID4gPgo+ID4gPiA+ICAtIG1pc3Npbmcgb3IgY29ycnVwdGVkIEh1QyBmaXJtd2FyZSBo
YXMgbm8gaW1wYWN0IHRvIGRyaXZlcgo+ID4gPiA+ICAgIGxvYWQgKGNsaWVudHMgc2hvdWxkIGNv
bnRpbnVlIHRvIHVzZSBIVUNfU1RBVFVTIHRvIGNoZWNrCj4gPiA+ID4gICAgaWYgSHVDIGZpcm13
YXJlIHdhcyBsb2FkZWQgYW5kIGF1dGhlbnRpY2F0ZWQpCj4gPiA+ID4KPiA+ID4gPiAgLSBtaXNz
aW5nIG9yIGNvcnJ1cHRlZCBHdUMgZmlybXdhcmUgaGFzIG5vIGltcGFjdCB0byBkcml2ZXIKPiA+
ID4gPiAgICBsb2FkICh1bmxlc3MgR3VDIGZpcm13YXJlIGJsb2Igd2FzIG92ZXJyaWRkZW4gYnkg
dGhlIHVzZXIKPiA+ID4gPiAgICBvciBHdUMgc3VibWlzc2lvbiB3YXMgcmVxdWVzdGVkIG9yIEd1
QyB3YXMgcHJldmlvdXNseQo+ID4gPiA+ICAgIGVuYWJsZWQgb24gdGhpcyBzeXN0ZW0gd2l0aG91
dCByZWJvb3QgLSB0aGVuIHdlIHdpbGwgbWFyawo+ID4gPiA+ICAgIEdQVSBhcyB3ZWRnZWQgYW5k
IGNvbnRpbnVlIHdpdGggS01TIG9ubHkpCj4gPiA+IAo+ID4gPiBQbGVhc2UgaG9sZCBtZXJnaW5n
IHRoaXMgcGF0Y2gsIGFzIG1hbnkgbW9yZSBpdGVtcyBuZWVkIHRvIGJlIGNyb3NzZWQKPiA+ID4g
b2ZmIGJlZm9yZSBzdWNoIGEgcGF0Y2ggY2FuIGxhbmQuCj4gPiA+IAo+ID4gPiBTdWNoIGl0ZW1z
IGluY2x1ZGU6Cj4gPiA+IAo+ID4gPiAgLSBBc3Nlc3MgYWxsIHRoZSBleGlzdGluZyBHVUMtcmVs
YXRlZCBidWdzLCBhbmQgcHJvdmUgdGhleSB3b24ndAo+ID4gPiBzdWRkZW5seSBnZXQgc2VlbiBi
eSBtb3JlIHVzZXJzCj4gPiA+ICAtIGFkZCBmYXVsdCBpbmplY3Rpb24gdG8gdGhlIEZXIGxvYWRp
bmcgcGF0aAo+ID4gPiAgLSBhZGQgSUdUIHRlc3RzIHRvIG1ha2Ugc3VyZSBkcml2ZXIgYmVoYXZl
cyB3ZWxsIG9uIGRpZmZlcmVudCBGVwo+ID4gPiBsb2FkaW5nIGVycm9ycwo+ID4gCj4gPiBJZiB0
aGlzIGlzIGdvaW5nIHRvIGdldCBlbmFibGVkIGJ5IGRlZmF1bHQgd2Ugc2hvdWxkIGFkZCBzb21l
IHRlc3RzIHRvCj4gPiB2ZXJpZnkgdGhhdCBIdUMgaXMgaW5kZWVkIGxvYWRlZCBhbmQgb3BlcmF0
aW9uYWwuIE90aGVyd2lzZSB0aGlzIG1heQo+ID4gZGVncmFkZSB3aXRob3V0IGFueW9uZSBub3Rp
Y2luZy4KPiAKPiB3ZSB3ZXJlIGRpc2N1c3Npbmcgc3VjaCB0ZXN0IHNvbWUgdGltZSBhZ28gWzFd
LCBidXQgd2UgY291bGRuJ3QgZ2V0Cj4gaW50byBmaW5hbCBhZ3JlZW1lbnQuCj4gCj4gWzFdIGh0
dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjA4MDAvCgpPaCwgdGhhdCdz
IGEgZ29vZCBzdGFydC4gSXQgd291bGQgYmUgZ29vZCB0byBsYW5kIHRoaXMgYWxvbmcgdGhlIGRl
ZmF1bHQKZW5hYmxpbmcgb2YgSHVDIGFuZCBoYXZlIHRoZSBhZ3JlZW1lbnQgb24gdGhlICJiZXN0
IGVycm9yIGNvZGVzIiBieSB0aGVuLgoKPiA+IFNvbWV0aGluZyBhbG9uZyB0aG9zZSBsaW5lczoK
PiA+ICAgICBpbnQgaHVjX3N0YXR1cyA9IGdldHBhcmFtKEk5MTVfUEFSQU1fSFVDX1NUQVRVUyk7
Cj4gPiAKPiA+ICAgICBhc3NlcnQoTUlfUFJFRElDQVRFKEhVQ19TVEFUVVMpID09ICEhaHVjX3N0
YXR1cyk7Cj4gPiAgICAgc2tpcF9vbl9mKGh1Y19zdGF0dXMgPT0gMCwgIkh1QyBkaXNhYmxlZFxu
Iik7Cj4gPiAKPiA+ICAgICBhc3NlcnRfZihodWNfc3RhdHVzID09IDEsICJIdUMgc3RhdHVzIGlz
IG5vdCBlbmFibGVkOiAlZFxuIiwKPiA+IGh1Y19zdGF0dXMpOwo+ID4gICAgIGFzc2VydChzdWJt
aXRfY29tbWFuZHNfdG9fY2hlY2tfdGhhdF9odWNfaXNfb3BlcmF0aW9uYWwoKSk7Cj4gPiAKPiA+
IAo+ID4gCj4gPiBUaGUgaXNzdWUgaXMgdGhhdCB0aGUgUEFSQU1fSFVDX1NUQVRVUyB3b24ndCBl
dmVuIHdvcmsgcmlnaHQgbm93IGJlY2F1c2U6Cj4gPiAKPiA+ICAgICBjYXNlIEk5MTVfUEFSQU1f
SFVDX1NUQVRVUzoKPiA+ICAgICAJdmFsdWUgPSBpbnRlbF9odWNfY2hlY2tfc3RhdHVzKCZpOTE1
LT5ndC51Yy5odWMpOwo+ID4gICAgIAlpZiAodmFsdWUgPCAwKQo+ID4gICAgIAkJcmV0dXJuIHZh
bHVlOwo+ID4gICAgIAlicmVhazsKPiA+ICAgICAvKiAuLi4gKi8KPiA+ICAgICByZXR1cm4gMDsK
PiAKPiBQbGVhc2Ugbm90ZSB0aGF0IHRoaXMgcmV0dXJuIGlmIGZvciBpb2N0bCgpIGNhbGwgc3Rh
dHVzCj4gCj4gPiAKPiA+IAo+ID4gICAgIC8qKgo+ID4gICAgICAqIGludGVsX2h1Y19jaGVja19z
dGF0dXMoKSAtIGNoZWNrIEh1QyBzdGF0dXMKPiA+ICAgICAgKiBAaHVjOiBpbnRlbF9odWMgc3Ry
dWN0dXJlCj4gPiAgICAgICoKPiA+ICAgICAgKiBUaGlzIGZ1bmN0aW9uIHJlYWRzIHN0YXR1cyBy
ZWdpc3RlciB0byB2ZXJpZnkgaWYgSHVDCj4gPiAgICAgICogZmlybXdhcmUgd2FzIHN1Y2Nlc3Nm
dWxseSBsb2FkZWQuCj4gPiAgICAgICoKPiA+ICAgICAgKiBSZXR1cm5zOiAxIGlmIEh1QyBmaXJt
d2FyZSBpcyBsb2FkZWQgYW5kIHZlcmlmaWVkLAo+ID4gICAgICAqIDAgaWYgSHVDIGZpcm13YXJl
IGlzIG5vdCBsb2FkZWQgYW5kIC1FTk9ERVYgaWYgSHVDCj4gPiAgICAgICogaXMgbm90IHByZXNl
bnQgb24gdGhpcyBwbGF0Zm9ybS4KPiA+ICAgICAgKi8KPiA+IAo+ID4gVGhpcyBpcyBicm9rZW4g
LSB3ZSB3aWxsIGdldCAwIHdoZXRoZXIgaXQncyBlbmFibGVkIG9yIGRpc2FibGVkLgo+IAo+IEkg
ZG9uJ3QgdGhpbmsgc28uIE5lZ2F0aXZlIHZhbHVlcyByZXR1cm5lZCBieSB0aGlzIGZ1bmN0aW9u
IGFyZSBzaW1wbHkKPiB1c2VkIGFzIGlvY3RsKCkgZXJyb3JzLCB3aGlsZSAwLzEgdmFsdWVzIGFy
ZSByZXR1cm5lZCBhcyAndmFsdWUnIGZpZWxkCj4gdGhhdCBob2xkcyByZXBseSB3aXRoIGFjdHVh
bCBIdUMgc3RhdHVzOgo+IAo+IAlpZiAocHV0X3VzZXIodmFsdWUsIHBhcmFtLT52YWx1ZSkpCj4g
CQlyZXR1cm4gLUVGQVVMVDsKPiAKPiBNb3JlIGNvZmZlZT8KCk15IGJhZC4gY29mZmVlKysgd291
bGQgaGF2ZSBoZWxwZWQKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
