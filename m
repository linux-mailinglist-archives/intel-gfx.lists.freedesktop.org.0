Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4A7164852
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 16:27:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6870B6E0E1;
	Wed, 10 Jul 2019 14:27:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDB936E0E1
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2019 14:27:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jul 2019 07:27:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,474,1557212400"; d="scan'208";a="176853368"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga002.jf.intel.com with ESMTP; 10 Jul 2019 07:27:04 -0700
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.180.238])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x6AER3WB016785; Wed, 10 Jul 2019 15:27:03 +0100
In-Reply-To: <156268182280.22347.16782215518232414464@jlahtine-desk.ger.corp.intel.com>
References: <20190703113640.31100-1-michal.wajdeczko@intel.com>
 <20190703113640.31100-2-michal.wajdeczko@intel.com>
 <156268182280.22347.16782215518232414464@jlahtine-desk.ger.corp.intel.com>
To: intel-gfx@lists.freedesktop.org, "Joonas Lahtinen"
 <joonas.lahtinen@linux.intel.com>, "Anusha Srivatsa"
 <anusha.srivatsa@intel.com>, "Ye, Tony" <tony.ye@intel.com>
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Date: Wed, 10 Jul 2019 16:27:02 +0200
Message-ID: <op.z4ptu00mxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/guc: Turn on GuC/HuC auto mode
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAwOSBKdWwgMjAxOSAxNjoxNzowMiArMDIwMCwgSm9vbmFzIExhaHRpbmVuCjxqb29u
YXMubGFodGluZW5AbGludXguaW50ZWwuY29tPiB3cm90ZToKCj4gQmV0dGVyIHN1YmplY3Qgd291
bGQgYmU6ICJFbmFibGUgSHVDICh0aHJvdWdoIEd1Qykgb24gc3VwcG9ydGVkICAKPiBwbGF0Zm9y
bXMiCgpTdWNoIHN1YmplY3Qgc291bmRzIGJldHRlciwgYnV0IG9uIG9uZSBoYW5kIGl0IGRvZXMg
bm90IHJlZmxlY3QgcmVhbApjb2RlIGNoYW5nZSAoc2luY2Ugd2UgYXJlIG5vdCBleHBsaWNpdGx5
IGVuYWJsaW5nIEh1QywgYnV0IGluc3RlYWQgd2UKYXJlIGp1c3QgbGV0dGluZyB0aGUgZHJpdmVy
IGVuYWJsZSBHdUMvSHVDIHRvIHdoYXRldmVyIG1vZGUgaXQgZGVjaWRlcyksCmJ1dCBvbiBvdGhl
ciBoYW5kIHRoaXMgaXMgd2hhdCBhY3R1YWwgb3V0Y29tZSBvZiB0aGUgY2hhbmdlIGlzIChhcyBp
OTE1CmN1cnJlbnRseSBlbmFibGVzIEd1QyBsb2FkaW5nIHdpdGggSHVDIGF1dGhlbnRpY2F0aW9u
IG9uIGV2ZXJ5IHBsYXRmb3JtCndoZXJlIGNvcnJlc3BvbmRpbmcgZmlybXdhcmVzIGFyZSBkZWZp
bmVkL2F2YWlsYWJsZSwgYW5kIG5vdGhpbmcgbW9yZSkuCgpQbGVhc2UgY29uZmlybSBpZiB5b3Ug
c3RpbGwgb3B0LWluIHRvIHVzZSB5b3VyIHN1YmplY3QuCgo+Cj4gUXVvdGluZyBNaWNoYWwgV2Fq
ZGVjemtvICgyMDE5LTA3LTAzIDE0OjM2OjQwKQo+PiBHdUMgZmlybXdhcmUgaXMgbm93IG1hdHVy
ZSwgc28gbGV0IGl0IHJ1biBieSBkZWZhdWx0Lgo+Cj4gVGhhdCdzIGJpdCBvZiBhIG1pc2xlYWRp
bmcgc3RhdGVtZW50IChpbiBtb3JlIHRoYW4gb25lIHdheSkuCgpJdCdzIG1hdHVyZSBlbm91Z2gg
dG8gcGVyZm9ybSBIdUMgYXV0aGVudGljYXRpb24sIGFuZCB3ZQpkb24ndCBleHBlY3QgbW9yZSBm
cm9tIGl0IDspCgo+Cj4gIkVuYWJsZSBsb2FkaW5nIEh1QyBmaXJtd2FyZSAodGhyb3VnaCBHdUMp
IHRvIHVubG9jawo+IGFkdmFuY2VkIHZpZGVvIGNvZGVjcyBvbiBzdXBwb3J0ZWQgcGxhdGZvcm1z
Lgo+Cj4gR3VDIGZpcm13YXJlIGlzIHJlcXVpcmVkIHRvIGF1dGhlbnRpY2F0ZSB0aGUgSHVDIGZp
cm13YXJlLAo+IHdoaWNoIGlzIGEgcmVxdWlyZW1lbnQgZm9yIGl0IHRvIG9wZXJhdGUuIgoKVG8g
c29tZSBleHRlbmQgdGhpcyBkdXBsaWNhdGVzIGV4aXN0aW5nICJET0M6IEh1QyBGaXJtd2FyZSIK
RG8gd2UgbmVlZCB0byByZXBlYXQgdGhhdCBhZ2FpbiBoZXJlPwoKPgo+IEhhcyB0aGUgbW9zdCBy
ZWNlbnQgZmlybXdhcmUgYmVlbiBtZXJnZWQgdG8gbGludXgtZmlybXdhcmUgYW5kCj4gaXMgaXQg
cHJlc2VudCBpbiBvdXIgQ0kgc3lzdGVtcz8KCk15IHVuZGVyc3RhbmRpbmcgaXM6IE5vIGFuZCBZ
ZXMuCk1heWJlIEFudXNoYSBjYW4gcHJvdmlkZSBtb3JlIGRldGFpbHMgaGVyZS4KCj4KPiBJdCB3
b3VsZCBhbHNvIGJlIGdvb2QgdG8gbGlzdCB3aGF0IGtpbmQgb2YgdGVzdHMgaGF2ZSBiZWVuIHJ1
bgo+IHRvIGVuc3VyZSB0aGF0IHRoZXJlIGFyZSBubyByZWdyZXNzaW9ucywKCkknbSBhZnJhaWQg
b24gSUdUIGxldmVsIHdlIGRvbid0IGhhdmUgSHVDIHRlc3RzLgpCdXQgbWVkaWEgdGVhbSB3YXMg
dXNpbmcgbW9kcGFyYW0gb3ZlcnJpZGUgdG8gZm9yY2UgR3VDL0h1QyBmb3IKYSB3aGlsZSwgVG9u
eSBkbyB5b3UgaGF2ZSBzdWNoIHRlc3QgbGlzdC9yZXN1bHRzIGhhbmR5PwoKPiBhbmQgd2hpY2gg
cGxhdGZvcm1zCj4gdGhpcyBjaGFuZ2UgYWZmZWN0cy4KClRoaXMgY2hhbmdlIGFmZmVjdHMgYWxs
IHBsYXRmb3JtcyB3aGVyZSB3ZSBoYXZlIEd1Qy9IdUMgZmlybXdhcmVzCmRlZmluZWQsIHNvOiBT
S0wsIEJYVCwgS0JMLCBDRkwsIElDTC4KCk5vdGUgdGhhdCB3ZSdsbCBzdGlsbCBoYXZlIHBvc3Np
YmlsaXR5IHRvIHR3ZWFrIHRoYXQgaW5zaWRlCmRyaXZlciwgYXMgYXV0byBtb2RlIGlzIGp1c3Qg
bW92aW5nIHJlc3BvbnNpYmlsaXR5IHdoYXQgY2FuCmJlIGVuYWJsZWQgZnJvbSB0aGUgdXNlciB0
byB0aGUgaTkxNS4KCj4KPiBSZWdhcmRzLCBKb29uYXMKPgo+PiBOb3RlIHRoYXQgdG9kYXkgR3VD
IGlzIG9ubHkgdXNlZCBmb3IgSHVDIGF1dGhlbnRpY2F0aW9uLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5
OiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KPj4gQ2M6IERh
bmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+Cj4+
IENjOiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+Cj4+
IENjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPj4gLS0tCj4+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5oIHwgMiArLQo+PiAgMSBmaWxlIGNoYW5n
ZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5oICAKPj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3BhcmFtcy5oCj4+IGluZGV4IGQyOWFkZTNiN2RlNi4uNTczNmM1NTY5NGZlIDEwMDY0
NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5oCj4+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmgKPj4gQEAgLTU0LDcgKzU0LDcgQEAgc3Ry
dWN0IGRybV9wcmludGVyOwo+PiAgICAgICAgIHBhcmFtKGludCwgZGlzYWJsZV9wb3dlcl93ZWxs
LCAtMSkgXAo+PiAgICAgICAgIHBhcmFtKGludCwgZW5hYmxlX2lwcywgMSkgXAo+PiAgICAgICAg
IHBhcmFtKGludCwgaW52ZXJ0X2JyaWdodG5lc3MsIDApIFwKPj4gLSAgICAgICBwYXJhbShpbnQs
IGVuYWJsZV9ndWMsIDApIFwKPj4gKyAgICAgICBwYXJhbShpbnQsIGVuYWJsZV9ndWMsIC0xKSBc
Cj4+ICAgICAgICAgcGFyYW0oaW50LCBndWNfbG9nX2xldmVsLCAtMSkgXAo+PiAgICAgICAgIHBh
cmFtKGNoYXIgKiwgZ3VjX2Zpcm13YXJlX3BhdGgsIE5VTEwpIFwKPj4gICAgICAgICBwYXJhbShj
aGFyICosIGh1Y19maXJtd2FyZV9wYXRoLCBOVUxMKSBcCj4+IC0tCj4+IDIuMTkuMgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
