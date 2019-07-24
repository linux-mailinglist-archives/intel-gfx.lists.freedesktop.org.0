Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F135735B1
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2019 19:39:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6C4F6E56E;
	Wed, 24 Jul 2019 17:39:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E88D6E56E
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jul 2019 17:39:55 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jul 2019 10:39:54 -0700
X-IronPort-AV: E=Sophos;i="5.64,303,1559545200"; d="scan'208";a="172375593"
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com) ([10.7.196.65])
 by orsmga003-auth.jf.intel.com with
 ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Jul 2019 10:39:54 -0700
Date: Wed, 24 Jul 2019 10:40:29 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20190724174029.GC30776@intel.com>
References: <20190719004526.B0CC521850@mail.kernel.org>
 <20190722231325.16615-1-dhinakaran.pandiyan@intel.com>
 <20190724120657.GG3244@kroah.com>
 <05339e812e35a4cf1811f26a06bd5a4d1d652407.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <05339e812e35a4cf1811f26a06bd5a4d1d652407.camel@intel.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
Subject: Re: [Intel-gfx] [PATCH stable v5.2] drm/i915/vbt: Fix VBT parsing
 for the PSR section
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
Cc: "sashal@kernel.org" <sashal@kernel.org>,
 Jani Nikula <jani.nikula@intel.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>, "Pandiyan,
 Dhinakaran" <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBKdWwgMjQsIDIwMTkgYXQgMDU6Mjc6NDJQTSArMDAwMCwgU291emEsIEpvc2Ugd3Jv
dGU6Cj4gT24gV2VkLCAyMDE5LTA3LTI0IGF0IDE0OjA2ICswMjAwLCBHcmVnIEtIIHdyb3RlOgo+
ID4gT24gTW9uLCBKdWwgMjIsIDIwMTkgYXQgMDQ6MTM6MjVQTSAtMDcwMCwgRGhpbmFrYXJhbiBQ
YW5kaXlhbiB3cm90ZToKPiA+ID4gQSBzaW5nbGUgMzItYml0IFBTUjIgdHJhaW5pbmcgcGF0dGVy
biBmaWVsZCBmb2xsb3dzIHRoZSBzaXh0ZWVuCj4gPiA+IGVsZW1lbnQKPiA+ID4gYXJyYXkgb2Yg
UFNSIHRhYmxlIGVudHJpZXMgaW4gdGhlIFZCVCBzcGVjLiBCdXQsIHdlIGluY29ycmVjdGx5Cj4g
PiA+IGRlZmluZQo+ID4gPiB0aGlzIFBTUjIgZmllbGQgZm9yIGVhY2ggb2YgdGhlIFBTUiB0YWJs
ZSBlbnRyaWVzLiBBcyBhIHJlc3VsdCwgdGhlCj4gPiA+IFBTUjEKPiA+ID4gdHJhaW5pbmcgcGF0
dGVybiBkdXJhdGlvbiBmb3IgYW55IHBhbmVsX3R5cGUgIT0gMCB3aWxsIGJlIHBhcnNlZAo+ID4g
PiBpbmNvcnJlY3RseS4gU2Vjb25kbHksIFBTUjIgdHJhaW5pbmcgcGF0dGVybiBkdXJhdGlvbnMg
Zm9yIFZCVHMKPiA+ID4gd2l0aCBiZGIKPiA+ID4gdmVyc2lvbiA+PSAyMjYgd2lsbCBhbHNvIGJl
IHdyb25nLgo+ID4gPiAKPiA+ID4gQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVs
LmNvbT4KPiA+ID4gQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwu
Y29tPgo+ID4gPiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZwo+ID4gPiBDYzogc3RhYmxlQHZn
ZXIua2VybmVsLm9yZyAjdjUuMgo+ID4gPiBGaXhlczogODhhMGQ5NjA2YWZmICgiZHJtL2k5MTUv
dmJ0OiBQYXJzZSBhbmQgdXNlIHRoZSBuZXcgZmllbGQKPiA+ID4gd2l0aCBQU1IyIFRQMi8zIHdh
a2V1cCB0aW1lIikKPiA+ID4gQnVnemlsbGE6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcv
c2hvd19idWcuY2dpP2lkPTExMTA4OAo+ID4gPiBCdWd6aWxsYTogaHR0cHM6Ly9idWd6aWxsYS5r
ZXJuZWwub3JnL3Nob3dfYnVnLmNnaT9pZD0yMDQxODMKPiA+ID4gU2lnbmVkLW9mZi1ieTogRGhp
bmFrYXJhbiBQYW5kaXlhbiA8ZGhpbmFrYXJhbi5wYW5kaXlhbkBpbnRlbC5jb20+Cj4gPiA+IFJl
dmlld2VkLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
Pgo+ID4gPiBSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBp
bnRlbC5jb20+Cj4gPiA+IEFja2VkLWJ5OiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRl
bC5jb20+Cj4gPiA+IFRlc3RlZC1ieTogRnJhbsOnb2lzIEd1ZXJyYXogPGt1YnJpY2tAZmd2Ni5u
ZXQ+Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVs
LmNvbT4KPiA+ID4gTGluazogCj4gPiA+IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9y
Zy9wYXRjaC9tc2dpZC8yMDE5MDcxNzIyMzQ1MS4yNTk1LTEtZGhpbmFrYXJhbi5wYW5kaXlhbkBp
bnRlbC5jb20KPiA+ID4gKGNoZXJyeSBwaWNrZWQgZnJvbSBjb21taXQKPiA+ID4gYjVlYTljOTMz
NzAwN2Q2ZTcwMDI4MGM4YTYwYjRlMTBkMDcwZmI1MykKPiA+IAo+ID4gVGhlcmUgaXMgbm8gc3Vj
aCBjb21taXQgaW4gTGludXMncyBrZXJuZWwgdHJlZSA6KAoKbm90IHlldC4uLiBJdCBpcyBxdWV1
ZWQgZm9yIDUuMyBvbiBkcm0taW50ZWwtbmV4dC1xdWV1ZWQuCgpUaGlzIGxpbmUgaXMgYXV0b21h
dGljYWxseSBhZGRlZCBieSAiZGltIiB0b29sIHdoZW4KY2hlcnJ5LXBpY2tpbmcgcXVldWVkIHN0
dWZmIGZvciBvdXIgZHJtLWludGVsIGZpeGVzIGJyYW5jaGVzLgoKPiA+IAo+IAo+IEl0IGlzIHN0
aWxsIG9uIGRybS1pbnRlbC9kcm0taW50ZWwtbmV4dC1xdWV1ZWQgLQo+IHNzaDovL2dpdC5mcmVl
ZGVza3RvcC5vcmcvZ2l0L2RybS1pbnRlbAo+IAo+IFJvZHJpZ28gZG8geW91IGtub3cgd2hlbiBp
cyB0aGUgbmV4dCBwdWxsLXJlcXVlc3QgdG8gTGludXM/CgpJIHdpbGwgc3RhcnQgZG9pbmcgdGhl
IHB1bGwgcmVxdWVzdHMgdG8gRGF2ZSBhbmQgRGFuaWVsIHNvb24sCmJ1dCB0aGlzIGRvZXNuJ3Qg
cmVhY2ggTGludXMgdHJlZSBiZWZvcmUgbmV4dCBtZXJnZSB3aW5kb3cuCgpFdmVudHVhbGx5IGl0
IHdpbGwgYmUgdGhlcmUuCgpJZiB0aGlzIGlzIGEgYmxvY2tlciBmZWxsIGZyZWUgdG8gcmVtb3Zl
IHRoZSBsaW5lIGFuZCBtZXJnZSB0aGUKcGF0Y2ggcGxlYXNlLCBiZWNhdXNlIHRoaXMgZml4IHZl
cnkgY3JpdGljYWwgaXNzdWUgdGhhdCBpbXBhY3QgdXNlcnMuClNvIHdlIGNhbiBjb250aW51ZSB0
aGUgZGlzY3Vzc2lvbiBpbiBwYXJhbGxlbCBvbiBob3cgdG8gaGFuZGxlCmNvbW1pdCBsaW5rcyBs
aWtlIHRoaXMgaW4gYSBiZXR0ZXIgd2F5LgoKVGhhbmtzLApSb2RyaWdvLgoKPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5n
IGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
