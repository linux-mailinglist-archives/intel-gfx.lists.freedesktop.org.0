Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B34DA5EF54
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jul 2019 00:58:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DF856E1CE;
	Wed,  3 Jul 2019 22:58:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6CAA6E1CE
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jul 2019 22:58:35 +0000 (UTC)
Received: from localhost (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 621C021852;
 Wed,  3 Jul 2019 22:58:35 +0000 (UTC)
Date: Wed, 3 Jul 2019 18:58:34 -0400
From: Sasha Levin <sashal@kernel.org>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20190703225834.GD10104@sasha-vm>
References: <20190702192304.31955-1-lucas.demarchi@intel.com>
 <20190703121416.GD7784@kroah.com>
 <20190703162403.yyejmv6al3f6bvn7@ldmartin-desk1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190703162403.yyejmv6al3f6bvn7@ldmartin-desk1>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=default; t=1562194715;
 bh=1hp6cqHg6/+eEOnsGalmXc7FaMl1emsGZU5kfEwo8Eg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KXx9MjjOeVtTQJbCYLUzCqj1nUXRRCiLRhO/ziDEv13/1+0VTlglf491so0DUU2ot
 LcLiC3sMQQjSpbljqIm1I/QxnBPfI63KIPCj7x+sWTGcYyPf/OTpNqPwSdb07nsuqi
 KlTk3VFhfiGTcovqyRbQEVJPVXDLva+NSJzv3HxM=
Subject: Re: [Intel-gfx] [PATCH stable-4.9+] drm/i915/dmc: protect against
 reading random memory
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
Cc: Greg KH <greg@kroah.com>, intel-gfx@lists.freedesktop.org,
 stable@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBKdWwgMDMsIDIwMTkgYXQgMDk6MjQ6MDNBTSAtMDcwMCwgTHVjYXMgRGUgTWFyY2hp
IHdyb3RlOgo+T24gV2VkLCBKdWwgMDMsIDIwMTkgYXQgMDI6MTQ6MTZQTSArMDIwMCwgR3JlZyBL
SCB3cm90ZToKPj5PbiBUdWUsIEp1bCAwMiwgMjAxOSBhdCAxMjoyMzowNFBNIC0wNzAwLCBMdWNh
cyBEZSBNYXJjaGkgd3JvdGU6Cj4+PmNvbW1pdCBiYzdiNDg4YjFkMWM3MWRjNGM1MTgyMjA2OTEx
MTI3YmM2YzQxMGQ2IHVwc3RyZWFtLgo+Pj4KPj4+V2hpbGUgbG9hZGluZyB0aGUgRE1DIGZpcm13
YXJlIHdlIHdlcmUgZG91YmxlIGNoZWNraW5nIHRoZSBoZWFkZXJzIG1hZGUKPj4+c2Vuc2UsIGJ1
dCBpbiBubyBwbGFjZSB3ZSBjaGVja2VkIHRoYXQgd2Ugd2VyZSBhY3R1YWxseSByZWFkaW5nIG1l
bW9yeQo+Pj53ZSB3ZXJlIHN1cHBvc2VkIHRvLiBUaGlzIGNvdWxkIGJlIHdyb25nIGluIGNhc2Ug
dGhlIGZpcm13YXJlIGZpbGUgaXMKPj4+dHJ1bmNhdGVkIG9yIG1hbGZvcm1lZC4KPj4+Cj4+PkJl
Zm9yZSB0aGlzIHBhdGNoOgo+Pj4JIyBscyAtbCAvbGliL2Zpcm13YXJlL2k5MTUvaWNsX2RtY192
ZXIxXzA3LmJpbgo+Pj4JLXJ3LXItLXItLSAxIHJvb3Qgcm9vdCAgMjU3MTYgRmViICAxIDEyOjI2
IGljbF9kbWNfdmVyMV8wNy5iaW4KPj4+CSMgdHJ1bmNhdGUgLXMgMjU3MDAgL2xpYi9maXJtd2Fy
ZS9pOTE1L2ljbF9kbWNfdmVyMV8wNy5iaW4KPj4+CSMgbW9kcHJvYmUgaTkxNQo+Pj4JIyBkbWVz
Z3wgZ3JlcCAtaSBkbWMKPj4+CVtkcm06aW50ZWxfY3NyX3Vjb2RlX2luaXQgW2k5MTVdXSBMb2Fk
aW5nIGk5MTUvaWNsX2RtY192ZXIxXzA3LmJpbgo+Pj4JW2RybV0gRmluaXNoZWQgbG9hZGluZyBE
TUMgZmlybXdhcmUgaTkxNS9pY2xfZG1jX3ZlcjFfMDcuYmluICh2MS43KQo+Pj4KPj4+aS5lLiBp
dCBsb2FkcyByYW5kb20gZGF0YS4gTm93IGl0IGZhaWxzIGxpa2UgYmVsb3c6Cj4+PglbZHJtOmlu
dGVsX2Nzcl91Y29kZV9pbml0IFtpOTE1XV0gTG9hZGluZyBpOTE1L2ljbF9kbWNfdmVyMV8wNy5i
aW4KPj4+CVtkcm06Y3NyX2xvYWRfd29ya19mbiBbaTkxNV1dICpFUlJPUiogVHJ1bmNhdGVkIERN
QyBmaXJtd2FyZSwgcmVqZWN0aW5nLgo+Pj4JaTkxNSAwMDAwOjAwOjAyLjA6IEZhaWxlZCB0byBs
b2FkIERNQyBmaXJtd2FyZSBpOTE1L2ljbF9kbWNfdmVyMV8wNy5iaW4uIERpc2FibGluZyBydW50
aW1lIHBvd2VyIG1hbmFnZW1lbnQuCj4+PglpOTE1IDAwMDA6MDA6MDIuMDogRE1DIGZpcm13YXJl
IGhvbWVwYWdlOiBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dp
dC9maXJtd2FyZS9saW51eC1maXJtd2FyZS5naXQvdHJlZS9pOTE1Cj4+Pgo+Pj5CZWZvcmUgcmVh
ZGluZyBhbnkgcGFydCBvZiB0aGUgZmlybXdhcmUgZmlsZSwgdmFsaWRhdGUgdGhlIGlucHV0IGZp
cnN0Lgo+Pj4KPj4+Rml4ZXM6IGViODA1NjIzZDhiMSAoImRybS9pOTE1L3NrbDogQWRkIHN1cHBv
cnQgdG8gbG9hZCBTS0wgQ1NSIGZpcm13YXJlLiIpCj4+PlNpZ25lZC1vZmYtYnk6IEx1Y2FzIERl
IE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgo+Pj5SZXZpZXdlZC1ieTogUm9kcmln
byBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgo+Pj5MaW5rOiBodHRwczovL3BhdGNod29y
ay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gvbXNnaWQvMjAxOTA2MDUyMzU1MzUuMTc3OTEtMS1sdWNh
cy5kZW1hcmNoaUBpbnRlbC5jb20KPj4+KGNoZXJyeSBwaWNrZWQgZnJvbSBjb21taXQgYmM3YjQ4
OGIxZDFjNzFkYzRjNTE4MjIwNjkxMTEyN2JjNmM0MTBkNikKPj4+U2lnbmVkLW9mZi1ieTogSmFu
aSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KPj4+WyBMdWNhczogYmFja3BvcnRlZCB0
byA0LjkrIGFkanVzdGluZyB0aGUgY29udGV4dCBdCj4+PkNjOiBzdGFibGVAdmdlci5rZXJuZWwu
b3JnICMgdjQuOSsKPj4KPj5XaGF0IGFib3V0IGEgNC4xNC55IGFuZCA0LjE5LnkgYmFja3BvcnQg
YXMgd2VsbD8gICBJIGNhbid0IHRha2UgdGhpcwo+PndpdGhvdXQgdGhvc2UgYXMgd2UgZG8gbm90
IHdhbnQgcGVvcGxlIHRvIHVwZ3JhZGUgYW5kIGhhdmUgYSByZWdyZXNzaW9uLgo+Cj5UaGUgZG9j
dW1lbnRhdGlvbiBhYm91dCBzdGFibGUgcHJvY2VzcyBleHBsaWNpdGVseSBzYXlzIHRoZSBtZWFu
aW5nIG9mCj50aGUgdGFnIGlzICdGb3IgZWFjaCAiLXN0YWJsZSIgdHJlZSBzdGFydGluZyB3aXRo
IHRoZSBzcGVjaWZpZWQKPnZlcnNpb24uJy4gSSB0cmllZCB0byBtYWtlIGl0IGNsZWFyIGJ5IHVz
aW5nIHRoZSAnKycgc3VmZml4IGFzIEkgc2F3IGluCj5vdGhlciBjb21taXRzIGluIHN0YWJsZSB0
cmVlLgo+Cj5UaGlzIHBhdGNoIGFwcGxpZXMgY2xlYW5seSB0byA0LjksIDQuMTQgYW5kIDQuMTku
IFRoaXMgY29tbWl0IGlzIGFscmVhZHkKPmFwcGxpZWQgaW4gNS4xIGFzIGl0IGRpZG4ndCBuZWVk
IGFueSBiYWNrcG9ydC4gVGhhdCB3YXMgdGhlIGludGVudGlvbiwgbGV0IG1lCj5rbm93IGlmIHRo
YXQgaXMgbm90IHRoZSBwcm9wZXIgd2F5Lgo+Cj5UaGUgb25seSBtaXNzaW5nIHN0YWJsZSBpcyA0
LjQsIGJ1dCB0aGF0IG5lZWRzIG1vcmUgY2hhbmdlcyB0byB0aGUKPnBhdGNoLgoKVGhpcyB3b3Jr
cywgSSd2ZSBxdWV1ZWQgaXQgdXAgZm9yIDQuOS00LjE5LCB0aGFuayB5b3UhCgotLQpUaGFua3Ms
ClNhc2hhCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
