Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 98E421731A7
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 08:19:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A63766EDFF;
	Fri, 28 Feb 2020 07:19:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C7106EE02
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 07:19:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Feb 2020 23:19:21 -0800
X-IronPort-AV: E=Sophos;i="5.70,493,1574150400"; d="scan'208";a="232151559"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Feb 2020 23:19:20 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: =?utf-8?Q?Jos=C3=A9?= Roberto de Souza <jose.souza@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20200227235005.18706-1-jose.souza@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200227235005.18706-1-jose.souza@intel.com>
Date: Fri, 28 Feb 2020 09:19:17 +0200
Message-ID: <87lfonqive.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dmc: Use firmware v2.06 for TGL
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyNyBGZWIgMjAyMCwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBp
bnRlbC5jb20+IHdyb3RlOgo+IE5ldyBmaXJtd2FyZSBjb250YWlucyBtaW5vciBmaXhlcyBhcm91
bmQgY29udGV4dCByZXN0b3JlLgoKUGxlYXNlIGdldCB0aGUgZmlybXdhcmUgaW4gbGludXgtZmly
bXdhcmUgYW5kIENJIGZpcnN0OgoKPDc+WyAgICA2LjMyODg4NF0gaTkxNSAwMDAwOjAwOjAyLjA6
IFtkcm06aW50ZWxfY3NyX3Vjb2RlX2luaXQgW2k5MTVdXSBMb2FkaW5nIGk5MTUvdGdsX2RtY192
ZXIyXzA2LmJpbgo8ND5bICAgIDYuMzMwNjEyXSBpOTE1IDAwMDA6MDA6MDIuMDogRGlyZWN0IGZp
cm13YXJlIGxvYWQgZm9yIGk5MTUvdGdsX2RtY192ZXIyXzA2LmJpbiBmYWlsZWQgd2l0aCBlcnJv
ciAtMgo8NT5bICAgIDYuMzMwNjQ1XSBpOTE1IDAwMDA6MDA6MDIuMDogW2RybV0gRmFpbGVkIHRv
IGxvYWQgRE1DIGZpcm13YXJlIGk5MTUvdGdsX2RtY192ZXIyXzA2LmJpbi4gRGlzYWJsaW5nIHJ1
bnRpbWUgcG93ZXIgbWFuYWdlbWVudC4KPDU+WyAgICA2LjMzMDY0OF0gaTkxNSAwMDAwOjAwOjAy
LjA6IFtkcm1dIERNQyBmaXJtd2FyZSBob21lcGFnZTogaHR0cHM6Ly9naXQua2VybmVsLm9yZy9w
dWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvZmlybXdhcmUvbGludXgtZmlybXdhcmUuZ2l0L3RyZWUv
aTkxNQoKQlIsCkphbmkuCgoKPgo+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291
emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Nzci5jIHwgNCArKy0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlv
bnMoKyksIDIgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9jc3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfY3NyLmMKPiBpbmRleCA1NzMyMGMxMjgzOWYuLjMxMTI1NzJjZmI3ZCAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Nzci5jCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jc3IuYwo+IEBAIC00MCw4ICs0MCw4IEBACj4g
IAo+ICAjZGVmaW5lIEdFTjEyX0NTUl9NQVhfRldfU0laRQkJSUNMX0NTUl9NQVhfRldfU0laRQo+
ICAKPiAtI2RlZmluZSBUR0xfQ1NSX1BBVEgJCQkiaTkxNS90Z2xfZG1jX3ZlcjJfMDQuYmluIgo+
IC0jZGVmaW5lIFRHTF9DU1JfVkVSU0lPTl9SRVFVSVJFRAlDU1JfVkVSU0lPTigyLCA0KQo+ICsj
ZGVmaW5lIFRHTF9DU1JfUEFUSAkJCSJpOTE1L3RnbF9kbWNfdmVyMl8wNi5iaW4iCj4gKyNkZWZp
bmUgVEdMX0NTUl9WRVJTSU9OX1JFUVVJUkVECUNTUl9WRVJTSU9OKDIsIDYpCj4gICNkZWZpbmUg
VEdMX0NTUl9NQVhfRldfU0laRQkJMHg2MDAwCj4gIE1PRFVMRV9GSVJNV0FSRShUR0xfQ1NSX1BB
VEgpOwoKLS0gCkphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
