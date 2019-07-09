Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2053E63793
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 16:17:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94A666E064;
	Tue,  9 Jul 2019 14:17:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E1CB6E064
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 14:17:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jul 2019 07:17:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,470,1557212400"; d="scan'208";a="170603446"
Received: from jlahtine-desk.ger.corp.intel.com (HELO localhost)
 ([10.252.23.24])
 by orsmga006.jf.intel.com with ESMTP; 09 Jul 2019 07:17:03 -0700
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
In-Reply-To: <20190703113640.31100-2-michal.wajdeczko@intel.com>
References: <20190703113640.31100-1-michal.wajdeczko@intel.com>
 <20190703113640.31100-2-michal.wajdeczko@intel.com>
Message-ID: <156268182280.22347.16782215518232414464@jlahtine-desk.ger.corp.intel.com>
User-Agent: alot/0.7
Date: Tue, 09 Jul 2019 17:17:02 +0300
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QmV0dGVyIHN1YmplY3Qgd291bGQgYmU6ICJFbmFibGUgSHVDICh0aHJvdWdoIEd1Qykgb24gc3Vw
cG9ydGVkIHBsYXRmb3JtcyIKClF1b3RpbmcgTWljaGFsIFdhamRlY3prbyAoMjAxOS0wNy0wMyAx
NDozNjo0MCkKPiBHdUMgZmlybXdhcmUgaXMgbm93IG1hdHVyZSwgc28gbGV0IGl0IHJ1biBieSBk
ZWZhdWx0LgoKVGhhdCdzIGJpdCBvZiBhIG1pc2xlYWRpbmcgc3RhdGVtZW50IChpbiBtb3JlIHRo
YW4gb25lIHdheSkuCgoiRW5hYmxlIGxvYWRpbmcgSHVDIGZpcm13YXJlICh0aHJvdWdoIEd1Qykg
dG8gdW5sb2NrCmFkdmFuY2VkIHZpZGVvIGNvZGVjcyBvbiBzdXBwb3J0ZWQgcGxhdGZvcm1zLgoK
R3VDIGZpcm13YXJlIGlzIHJlcXVpcmVkIHRvIGF1dGhlbnRpY2F0ZSB0aGUgSHVDIGZpcm13YXJl
LAp3aGljaCBpcyBhIHJlcXVpcmVtZW50IGZvciBpdCB0byBvcGVyYXRlLiIKCkhhcyB0aGUgbW9z
dCByZWNlbnQgZmlybXdhcmUgYmVlbiBtZXJnZWQgdG8gbGludXgtZmlybXdhcmUgYW5kCmlzIGl0
IHByZXNlbnQgaW4gb3VyIENJIHN5c3RlbXM/CgpJdCB3b3VsZCBhbHNvIGJlIGdvb2QgdG8gbGlz
dCB3aGF0IGtpbmQgb2YgdGVzdHMgaGF2ZSBiZWVuIHJ1bgp0byBlbnN1cmUgdGhhdCB0aGVyZSBh
cmUgbm8gcmVncmVzc2lvbnMsIGFuZCB3aGljaCBwbGF0Zm9ybXMKdGhpcyBjaGFuZ2UgYWZmZWN0
cy4KClJlZ2FyZHMsIEpvb25hcwoKPiBOb3RlIHRoYXQgdG9kYXkgR3VDIGlzIG9ubHkgdXNlZCBm
b3IgSHVDIGF1dGhlbnRpY2F0aW9uLgo+IAo+IFNpZ25lZC1vZmYtYnk6IE1pY2hhbCBXYWpkZWN6
a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgo+IENjOiBEYW5pZWxlIENlcmFvbG8gU3B1
cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgo+IENjOiBKb29uYXMgTGFodGlu
ZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+Cj4gQ2M6IENocmlzIFdpbHNvbiA8
Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3BhcmFtcy5oIHwgMiArLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEg
ZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9w
YXJhbXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmgKPiBpbmRleCBkMjlh
ZGUzYjdkZTYuLjU3MzZjNTU2OTRmZSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3BhcmFtcy5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wYXJhbXMu
aAo+IEBAIC01NCw3ICs1NCw3IEBAIHN0cnVjdCBkcm1fcHJpbnRlcjsKPiAgICAgICAgIHBhcmFt
KGludCwgZGlzYWJsZV9wb3dlcl93ZWxsLCAtMSkgXAo+ICAgICAgICAgcGFyYW0oaW50LCBlbmFi
bGVfaXBzLCAxKSBcCj4gICAgICAgICBwYXJhbShpbnQsIGludmVydF9icmlnaHRuZXNzLCAwKSBc
Cj4gLSAgICAgICBwYXJhbShpbnQsIGVuYWJsZV9ndWMsIDApIFwKPiArICAgICAgIHBhcmFtKGlu
dCwgZW5hYmxlX2d1YywgLTEpIFwKPiAgICAgICAgIHBhcmFtKGludCwgZ3VjX2xvZ19sZXZlbCwg
LTEpIFwKPiAgICAgICAgIHBhcmFtKGNoYXIgKiwgZ3VjX2Zpcm13YXJlX3BhdGgsIE5VTEwpIFwK
PiAgICAgICAgIHBhcmFtKGNoYXIgKiwgaHVjX2Zpcm13YXJlX3BhdGgsIE5VTEwpIFwKPiAtLSAK
PiAyLjE5LjIKPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
