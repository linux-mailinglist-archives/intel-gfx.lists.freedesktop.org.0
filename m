Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B0BB21028AF
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2019 16:53:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DADB26E8BF;
	Tue, 19 Nov 2019 15:53:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CCF26E8BF
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Nov 2019 15:53:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Nov 2019 07:53:15 -0800
X-IronPort-AV: E=Sophos;i="5.69,324,1571727600"; d="scan'208";a="200391591"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Nov 2019 07:53:13 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Vandita Kulkarni <vandita.kulkarni@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20191119072004.4093-1-vandita.kulkarni@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20191119072004.4093-1-vandita.kulkarni@intel.com>
Date: Tue, 19 Nov 2019 17:53:10 +0200
Message-ID: <87mucryiah.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsi: Do not read the transcoder
 register.
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

T24gVHVlLCAxOSBOb3YgMjAxOSwgVmFuZGl0YSBLdWxrYXJuaSA8dmFuZGl0YS5rdWxrYXJuaUBp
bnRlbC5jb20+IHdyb3RlOgo+IEFzIHBlciB0aGUgQnNwZWMsIHBvcnQgbWFwcGluZyBpcyBmaXhl
ZCBmb3IgbWlwaSBkc2kuCj4KPiB2MjogUmV1c2UgdGhlIGV4aXN0aW5nIGZ1bmN0aW9uIChKYW5p
KQo+Cj4gU2lnbmVkLW9mZi1ieTogVmFuZGl0YSBLdWxrYXJuaSA8dmFuZGl0YS5rdWxrYXJuaUBp
bnRlbC5jb20+CgpQdXNoZWQsIHRoYW5rcyBmb3IgdGhlIHBhdGNoLgoKQlIsCkphbmkuCgo+IC0t
LQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDE3ICsr
KysrKysrKysrLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCA2IGRl
bGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMKPiBpbmRleCAyM2YwMGE2NTE3MzguLmRjY2I5NGIyNGQxNCAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gQEAgLTEwNTc3LDE2ICsx
MDU3NywyMSBAQCBzdGF0aWMgdm9pZCBoYXN3ZWxsX2dldF9kZGlfcG9ydF9zdGF0ZShzdHJ1Y3Qg
aW50ZWxfY3J0YyAqY3J0YywKPiAgCQkJCSAgICAgICBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAq
cGlwZV9jb25maWcpCj4gIHsKPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9
IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOwo+ICsJZW51bSB0cmFuc2NvZGVyIGNwdV90cmFuc2Nv
ZGVyID0gcGlwZV9jb25maWctPmNwdV90cmFuc2NvZGVyOwo+ICAJc3RydWN0IGludGVsX3NoYXJl
ZF9kcGxsICpwbGw7Cj4gIAllbnVtIHBvcnQgcG9ydDsKPiAgCXUzMiB0bXA7Cj4gIAo+IC0JdG1w
ID0gSTkxNV9SRUFEKFRSQU5TX0RESV9GVU5DX0NUTChwaXBlX2NvbmZpZy0+Y3B1X3RyYW5zY29k
ZXIpKTsKPiAtCj4gLQlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikKPiAtCQlwb3J0ID0g
VEdMX1RSQU5TX0RESV9GVU5DX0NUTF9WQUxfVE9fUE9SVCh0bXApOwo+IC0JZWxzZQo+IC0JCXBv
cnQgPSBUUkFOU19ERElfRlVOQ19DVExfVkFMX1RPX1BPUlQodG1wKTsKPiArCWlmICh0cmFuc2Nv
ZGVyX2lzX2RzaShjcHVfdHJhbnNjb2RlcikpIHsKPiArCQlwb3J0ID0gKGNwdV90cmFuc2NvZGVy
ID09IFRSQU5TQ09ERVJfRFNJX0EpID8KPiArCQkJCQkJUE9SVF9BIDogUE9SVF9COwo+ICsJfSBl
bHNlIHsKPiArCQl0bXAgPSBJOTE1X1JFQUQoVFJBTlNfRERJX0ZVTkNfQ1RMKGNwdV90cmFuc2Nv
ZGVyKSk7Cj4gKwkJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIpCj4gKwkJCXBvcnQgPSBU
R0xfVFJBTlNfRERJX0ZVTkNfQ1RMX1ZBTF9UT19QT1JUKHRtcCk7Cj4gKwkJZWxzZQo+ICsJCQlw
b3J0ID0gVFJBTlNfRERJX0ZVTkNfQ1RMX1ZBTF9UT19QT1JUKHRtcCk7Cj4gKwl9Cj4gIAo+ICAJ
aWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTEpCj4gIAkJaWNlbGFrZV9nZXRfZGRpX3BsbChk
ZXZfcHJpdiwgcG9ydCwgcGlwZV9jb25maWcpOwoKLS0gCkphbmkgTmlrdWxhLCBJbnRlbCBPcGVu
IFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
