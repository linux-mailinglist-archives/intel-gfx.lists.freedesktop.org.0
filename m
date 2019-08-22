Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C93B7996D6
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2019 16:36:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8502D6EB6E;
	Thu, 22 Aug 2019 14:36:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A7856EB0D
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Aug 2019 14:36:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Aug 2019 00:31:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,415,1559545200"; d="scan'208";a="190476816"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga002.jf.intel.com with ESMTP; 22 Aug 2019 00:31:10 -0700
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.145.229])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x7M7V98s019413; Thu, 22 Aug 2019 08:31:09 +0100
To: "Martin Peres" <martin.peres@linux.intel.com>, "Arkadiusz Hiler"
 <arkadiusz.hiler@intel.com>
References: <20190818155109.31360-1-michal.wajdeczko@intel.com>
 <20190818155109.31360-2-michal.wajdeczko@intel.com>
 <1806e59a-a491-1258-48c9-337e62e15cef@linux.intel.com>
 <20190822064033.v6my5cuv25xrbrig@ahiler-desk1.fi.intel.com>
Date: Thu, 22 Aug 2019 09:31:07 +0200
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.z6wxt5a1xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <20190822064033.v6my5cuv25xrbrig@ahiler-desk1.fi.intel.com>
User-Agent: Opera Mail/1.0 (Win32)
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMiBBdWcgMjAxOSAwODo0MDozMyArMDIwMCwgQXJrYWRpdXN6IEhpbGVyICAKPGFy
a2FkaXVzei5oaWxlckBpbnRlbC5jb20+IHdyb3RlOgoKPiBPbiBNb24sIEF1ZyAxOSwgMjAxOSBh
dCAxMTowOToxNUFNICswMzAwLCBNYXJ0aW4gUGVyZXMgd3JvdGU6Cj4+IE9uIDE4LzA4LzIwMTkg
MTg6NTEsIE1pY2hhbCBXYWpkZWN6a28gd3JvdGU6Cj4+ID4gV2UgaG9wZSB0aGF0IG5vdyBhbGwg
aXNzdWVzIHJlbGF0ZWQgdG8gbWlzc2luZyB1QyBmaXJtd2FyZXMKPj4gPiBhcmUgZml4ZWQgYW5k
IHRoYXQgZHJpdmVyIGNhbiBjb250aW51ZSB0byBsb2FkIHdpdGhvdXQgR3VDCj4+ID4gb3IgSHVD
IGZpcm13YXJlIGF2YWlsYWJsZSBhbmQgcnVubmluZzoKPj4gPgo+PiA+ICAtIG1pc3Npbmcgb3Ig
Y29ycnVwdGVkIEh1QyBmaXJtd2FyZSBoYXMgbm8gaW1wYWN0IHRvIGRyaXZlcgo+PiA+ICAgIGxv
YWQgKGNsaWVudHMgc2hvdWxkIGNvbnRpbnVlIHRvIHVzZSBIVUNfU1RBVFVTIHRvIGNoZWNrCj4+
ID4gICAgaWYgSHVDIGZpcm13YXJlIHdhcyBsb2FkZWQgYW5kIGF1dGhlbnRpY2F0ZWQpCj4+ID4K
Pj4gPiAgLSBtaXNzaW5nIG9yIGNvcnJ1cHRlZCBHdUMgZmlybXdhcmUgaGFzIG5vIGltcGFjdCB0
byBkcml2ZXIKPj4gPiAgICBsb2FkICh1bmxlc3MgR3VDIGZpcm13YXJlIGJsb2Igd2FzIG92ZXJy
aWRkZW4gYnkgdGhlIHVzZXIKPj4gPiAgICBvciBHdUMgc3VibWlzc2lvbiB3YXMgcmVxdWVzdGVk
IG9yIEd1QyB3YXMgcHJldmlvdXNseQo+PiA+ICAgIGVuYWJsZWQgb24gdGhpcyBzeXN0ZW0gd2l0
aG91dCByZWJvb3QgLSB0aGVuIHdlIHdpbGwgbWFyawo+PiA+ICAgIEdQVSBhcyB3ZWRnZWQgYW5k
IGNvbnRpbnVlIHdpdGggS01TIG9ubHkpCj4+Cj4+IFBsZWFzZSBob2xkIG1lcmdpbmcgdGhpcyBw
YXRjaCwgYXMgbWFueSBtb3JlIGl0ZW1zIG5lZWQgdG8gYmUgY3Jvc3NlZAo+PiBvZmYgYmVmb3Jl
IHN1Y2ggYSBwYXRjaCBjYW4gbGFuZC4KPj4KPj4gU3VjaCBpdGVtcyBpbmNsdWRlOgo+Pgo+PiAg
LSBBc3Nlc3MgYWxsIHRoZSBleGlzdGluZyBHVUMtcmVsYXRlZCBidWdzLCBhbmQgcHJvdmUgdGhl
eSB3b24ndAo+PiBzdWRkZW5seSBnZXQgc2VlbiBieSBtb3JlIHVzZXJzCj4+ICAtIGFkZCBmYXVs
dCBpbmplY3Rpb24gdG8gdGhlIEZXIGxvYWRpbmcgcGF0aAo+PiAgLSBhZGQgSUdUIHRlc3RzIHRv
IG1ha2Ugc3VyZSBkcml2ZXIgYmVoYXZlcyB3ZWxsIG9uIGRpZmZlcmVudCBGVwo+PiBsb2FkaW5n
IGVycm9ycwo+Cj4gSWYgdGhpcyBpcyBnb2luZyB0byBnZXQgZW5hYmxlZCBieSBkZWZhdWx0IHdl
IHNob3VsZCBhZGQgc29tZSB0ZXN0cyB0bwo+IHZlcmlmeSB0aGF0IEh1QyBpcyBpbmRlZWQgbG9h
ZGVkIGFuZCBvcGVyYXRpb25hbC4gT3RoZXJ3aXNlIHRoaXMgbWF5Cj4gZGVncmFkZSB3aXRob3V0
IGFueW9uZSBub3RpY2luZy4KCndlIHdlcmUgZGlzY3Vzc2luZyBzdWNoIHRlc3Qgc29tZSB0aW1l
IGFnbyBbMV0sIGJ1dCB3ZSBjb3VsZG4ndCBnZXQKaW50byBmaW5hbCBhZ3JlZW1lbnQuCgpbMV0g
aHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82MDgwMC8KCgo+Cj4gU29t
ZXRoaW5nIGFsb25nIHRob3NlIGxpbmVzOgo+ICAgICBpbnQgaHVjX3N0YXR1cyA9IGdldHBhcmFt
KEk5MTVfUEFSQU1fSFVDX1NUQVRVUyk7Cj4KPiAgICAgYXNzZXJ0KE1JX1BSRURJQ0FURShIVUNf
U1RBVFVTKSA9PSAhIWh1Y19zdGF0dXMpOwo+ICAgICBza2lwX29uX2YoaHVjX3N0YXR1cyA9PSAw
LCAiSHVDIGRpc2FibGVkXG4iKTsKPgo+ICAgICBhc3NlcnRfZihodWNfc3RhdHVzID09IDEsICJI
dUMgc3RhdHVzIGlzIG5vdCBlbmFibGVkOiAlZFxuIiwgIAo+IGh1Y19zdGF0dXMpOwo+ICAgICBh
c3NlcnQoc3VibWl0X2NvbW1hbmRzX3RvX2NoZWNrX3RoYXRfaHVjX2lzX29wZXJhdGlvbmFsKCkp
Owo+Cj4KPgo+IFRoZSBpc3N1ZSBpcyB0aGF0IHRoZSBQQVJBTV9IVUNfU1RBVFVTIHdvbid0IGV2
ZW4gd29yayByaWdodCBub3cgYmVjYXVzZToKPgo+ICAgICBjYXNlIEk5MTVfUEFSQU1fSFVDX1NU
QVRVUzoKPiAgICAgCXZhbHVlID0gaW50ZWxfaHVjX2NoZWNrX3N0YXR1cygmaTkxNS0+Z3QudWMu
aHVjKTsKPiAgICAgCWlmICh2YWx1ZSA8IDApCj4gICAgIAkJcmV0dXJuIHZhbHVlOwo+ICAgICAJ
YnJlYWs7Cj4gICAgIC8qIC4uLiAqLwo+ICAgICByZXR1cm4gMDsKClBsZWFzZSBub3RlIHRoYXQg
dGhpcyByZXR1cm4gaWYgZm9yIGlvY3RsKCkgY2FsbCBzdGF0dXMKCj4KPgo+ICAgICAvKioKPiAg
ICAgICogaW50ZWxfaHVjX2NoZWNrX3N0YXR1cygpIC0gY2hlY2sgSHVDIHN0YXR1cwo+ICAgICAg
KiBAaHVjOiBpbnRlbF9odWMgc3RydWN0dXJlCj4gICAgICAqCj4gICAgICAqIFRoaXMgZnVuY3Rp
b24gcmVhZHMgc3RhdHVzIHJlZ2lzdGVyIHRvIHZlcmlmeSBpZiBIdUMKPiAgICAgICogZmlybXdh
cmUgd2FzIHN1Y2Nlc3NmdWxseSBsb2FkZWQuCj4gICAgICAqCj4gICAgICAqIFJldHVybnM6IDEg
aWYgSHVDIGZpcm13YXJlIGlzIGxvYWRlZCBhbmQgdmVyaWZpZWQsCj4gICAgICAqIDAgaWYgSHVD
IGZpcm13YXJlIGlzIG5vdCBsb2FkZWQgYW5kIC1FTk9ERVYgaWYgSHVDCj4gICAgICAqIGlzIG5v
dCBwcmVzZW50IG9uIHRoaXMgcGxhdGZvcm0uCj4gICAgICAqLwo+Cj4gVGhpcyBpcyBicm9rZW4g
LSB3ZSB3aWxsIGdldCAwIHdoZXRoZXIgaXQncyBlbmFibGVkIG9yIGRpc2FibGVkLgoKSSBkb24n
dCB0aGluayBzby4gTmVnYXRpdmUgdmFsdWVzIHJldHVybmVkIGJ5IHRoaXMgZnVuY3Rpb24gYXJl
IHNpbXBseQp1c2VkIGFzIGlvY3RsKCkgZXJyb3JzLCB3aGlsZSAwLzEgdmFsdWVzIGFyZSByZXR1
cm5lZCBhcyAndmFsdWUnIGZpZWxkCnRoYXQgaG9sZHMgcmVwbHkgd2l0aCBhY3R1YWwgSHVDIHN0
YXR1czoKCglpZiAocHV0X3VzZXIodmFsdWUsIHBhcmFtLT52YWx1ZSkpCgkJcmV0dXJuIC1FRkFV
TFQ7CgpNb3JlIGNvZmZlZT8KCk1pY2hhbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
