Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FB796E83C
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jul 2019 17:51:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 883E26E84E;
	Fri, 19 Jul 2019 15:51:28 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BE116E84B
 for <Intel-gfx@lists.freedesktop.org>; Fri, 19 Jul 2019 15:51:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jul 2019 08:51:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,283,1559545200"; d="scan'208";a="159137243"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga007.jf.intel.com with ESMTP; 19 Jul 2019 08:51:14 -0700
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Intel-gfx@lists.freedesktop.org
References: <20190719094845.6242-1-tvrtko.ursulin@linux.intel.com>
 <20190719094845.6242-2-tvrtko.ursulin@linux.intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <cf84d009-9f0f-80a1-7919-23b369f37998@intel.com>
Date: Fri, 19 Jul 2019 08:50:56 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190719094845.6242-2-tvrtko.ursulin@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/2] Revert "drm/i915/guc: Turn on GuC/HuC
 auto mode"
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiA3LzE5LzE5IDI6NDggQU0sIFR2cnRrbyBVcnN1bGluIHdyb3RlOgo+IEZyb206IFR2cnRr
byBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4gCj4gVGhpcyByZXZlcnRzIGNv
bW1pdCBmNzc0ZjA5NjQ5MTkyZjMyNmZhMDMwNTY0YWZkM2Y4ZjVkODJjMWU0Lgo+IAo+IElmIEd1
QyBmaXJtd2FyZSBpcyBub3QgcHJlc2VudCBvbiB0aGUgZmlsZXN5c3RlbSBkcml2ZXIgY3Jhc2hl
cyB0aGUKPiBtYWNoaW5lIG9uIGJvb3QuCj4gCgpEbyB5b3UgaGF2ZSBhIGxvZz8gSSBjYW4ndCBy
ZXByb2R1Y2UgdGhpcyBvbiBhIFNLTCwgSSdtIGp1c3QgZ2V0dGluZzoKCls1NTY2Ny4wMjY3MDdd
IGk5MTUgMDAwMDowMDowMi4wOiBEaXJlY3QgZmlybXdhcmUgbG9hZCBmb3IgCmk5MTUvc2tsX2d1
Y18zMy4wLjAuYmluIGZhaWxlZCB3aXRoIGVycm9yIC0yCls1NTY2Ny4wMjY3MTRdIFtkcm1dIEd1
QzogRmFpbGVkIHRvIGZldGNoIGZpcm13YXJlIAppOTE1L3NrbF9ndWNfMzMuMC4wLmJpbiAoZXJy
b3IgLTIpCls1NTY2Ny4wMjY3MTddIFtkcm1dIEd1QzogRmlybXdhcmUgY2FuIGJlIGRvd25sb2Fk
ZWQgZnJvbSAKaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQv
ZmlybXdhcmUvbGludXgtZmlybXdhcmUuZ2l0L3RyZWUvaTkxNQpbNTU2NjcuMDgxODg1XSBpOTE1
IDAwMDA6MDA6MDIuMDogRGV2aWNlIGluaXRpYWxpemF0aW9uIGZhaWxlZCAoLTgpCls1NTY2Ny4w
ODE5NDldIGk5MTU6IHByb2JlIG9mIDAwMDA6MDA6MDIuMCBmYWlsZWQgd2l0aCBlcnJvciAtOAoK
ClRoaXMgaXMgb24gdGhlIGxhdGVzdCB0aXAgKGp1c3QgZmV0Y2hlZCkuCgpEYW5pZWxlCgo+IEZp
eGVzOiBmNzc0ZjA5NjQ5MTkgKCJkcm0vaTkxNS9ndWM6IFR1cm4gb24gR3VDL0h1QyBhdXRvIG1v
ZGUiKQo+IENjOiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4K
PiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KPiBDYzogSm9vbmFzIExh
aHRpbmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgo+IENjOiBSb2RyaWdvIFZp
dmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+Cj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hy
aXMtd2lsc29uLmNvLnVrPgo+IENjOiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNl
cmFvbG9zcHVyaW9AaW50ZWwuY29tPgo+IENjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAbGlu
dXguaW50ZWwuY29tPgo+IENjOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gLS0t
Cj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5oIHwgMiArLQo+ICAgMSBmaWxl
IGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3BhcmFtcy5oCj4gaW5kZXggNTczNmM1NTY5NGZlLi5kMjlhZGUzYjdkZTYgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wYXJhbXMuaAo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmgKPiBAQCAtNTQsNyArNTQsNyBAQCBzdHJ1Y3Qg
ZHJtX3ByaW50ZXI7Cj4gICAJcGFyYW0oaW50LCBkaXNhYmxlX3Bvd2VyX3dlbGwsIC0xKSBcCj4g
ICAJcGFyYW0oaW50LCBlbmFibGVfaXBzLCAxKSBcCj4gICAJcGFyYW0oaW50LCBpbnZlcnRfYnJp
Z2h0bmVzcywgMCkgXAo+IC0JcGFyYW0oaW50LCBlbmFibGVfZ3VjLCAtMSkgXAo+ICsJcGFyYW0o
aW50LCBlbmFibGVfZ3VjLCAwKSBcCj4gICAJcGFyYW0oaW50LCBndWNfbG9nX2xldmVsLCAtMSkg
XAo+ICAgCXBhcmFtKGNoYXIgKiwgZ3VjX2Zpcm13YXJlX3BhdGgsIE5VTEwpIFwKPiAgIAlwYXJh
bShjaGFyICosIGh1Y19maXJtd2FyZV9wYXRoLCBOVUxMKSBcCj4gCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
