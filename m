Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16F511C73D
	for <lists+intel-gfx@lfdr.de>; Tue, 14 May 2019 12:51:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACDB0892C9;
	Tue, 14 May 2019 10:51:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6FC6892C9;
 Tue, 14 May 2019 10:51:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 May 2019 03:51:20 -0700
X-ExtLoop1: 1
Received: from lstanule-mobl1.ger.corp.intel.com (HELO [10.252.8.33])
 ([10.252.8.33])
 by orsmga007.jf.intel.com with ESMTP; 14 May 2019 03:51:19 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190514100524.4985-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <ecd5750f-b1b7-ef90-05c0-ec7b1a4af78b@linux.intel.com>
Date: Tue, 14 May 2019 11:51:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190514100524.4985-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t] benchmarks/gem_wsim: Perturb
 static_vcs selection across clients
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
Cc: igt-dev@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDE0LzA1LzIwMTkgMTE6MDUsIENocmlzIFdpbHNvbiB3cm90ZToKPiBVc2UgdGhlIGNsaWVu
dCBpZCB0byBhbHRlcm5hdGUgdGhlIHN0YXRpY192Y3MgYmFsYW5jZXIgKC1iIGNvbnRleHQpCj4g
YWNyb3NzIGNsaWVudHMgLSBvdGhlcndpc2UgYWxsIGNsaWVudHMgZW5kIHVwIG9uIHZjczAgYW5k
IGRvIG5vdCBtYXRjaAo+IHRoZSBjb250ZXh0IGJhbGFuY2luZyBlbXBsb3llZCBieSBtZWRpYS1k
cml2ZXIuCj4gCj4gVGhpcyBtYXkgd2FudCB0byBiZSBiZWhpbmQgdGhlIC1SIGZsYWcsIGJ1dCBJ
IGZlbHQgaXQgd2FzIGEgZnVuZGFtZW50YWwKPiBwcm9wZXJ0eSBvZiBzdGF0aWMgY29udGV4dCBi
YWxhbmNpbmcgdGhhdCB0byBrZWVwIGl0IGRpc2FibGVkIGJ5IGRlZmF1bHQKPiBjYXVzZXMgdW5m
YWlyIGNvbXBhcmlzb25zIGFuZCBwb29yIHdvcmtsb2FkIHNjaGVkdWxpbmcsIGRlZmVhdGluZyB0
aGUKPiBwdXJwb3NlIG9mIHRlc3RpbmcuCgpJIHNlZSB5b3VyIHJlYXNvbmluZyBidXQgaXQgYWxz
byBjb21wbGV0ZWx5IG1hdGNoZXMgdGhlIGRlc2lnbiBvZiBvdGhlciAKYmFsYW5jZXJzIHRvIGtl
ZXAgaXQgdW5kZXIgY29udHJvbCBvZiAtUiBzd2l0Y2guIEl0IGNhbiBhbHNvIGFscmVhZHkgYmUg
CmFjaGlldmVkIHdpdGggdGhlIC1HIHN3aXRjaC4gV2hpY2ggaXMgcGVyaGFwcyBhIGJpdCBjb25m
dXNpbmcuLiBIYXZpbmcgCmJvdGggd291bGQgc3RpbGwgbWFrZSBzZW5zZSBJIHRoaW5rLiAoLUcg
Z2l2ZXMgb3V0IGVuZ2luZXMgcnIgdG8gCmNvbnRleHRzIHNlcXVlbnRpYWxseSBhY3Jvc3MgYWxs
IGNsaWVudHMsIC1SIHN0YXJ0IGVhY2ggY2xpZW50IGNvbnRleHRzIApieSByci4pCgpCdXQgSSB3
b3VsZG4ndCBlbmFibGUgaXQgdW5jb25kaXRpb25hbGx5LiBCZWNhdXNlIGNvbnNpZGVyIGFub3Ro
ZXIgCmJhbGFuY2VyIGxpa2UgcnIgYW5kIGEgdHdvIHNhbWUgd29ya2xvYWQgaW5zdGFuY2VzIG9m
IGEgbG9uZyBjb250ZXh0IApmb2xsb3dlZCBieSBzaG9ydCBzZWNvbmQgY29udGV4dCBiYXRjaC4g
SWYgc3VmZmVycyB0aGUgc2FtZSBwcm9ibGVtIG9mIApwb29yIHNjaGVkdWxpbmcgdW50aWwgLVIg
aXMgYWRkZWQuCgpTbyBJIHRoaW5rIHdlIHdhbnQgdG8gaGF2ZSB0aGUgdHdvIGJhbGFuY2VycyBj
b21wYXRpYmxlIGluIGJlaGF2aW91ciBpbiAKdGhpcyByZXNwZWN0Lgo+IFNpZ25lZC1vZmYtYnk6
IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBUdnJ0a28gVXJz
dWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IC0tLQo+ICAgYmVuY2htYXJrcy9nZW1f
d3NpbS5jIHwgMiArLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0
aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2JlbmNobWFya3MvZ2VtX3dzaW0uYyBiL2JlbmNobWFy
a3MvZ2VtX3dzaW0uYwo+IGluZGV4IGFmYjk2NDRkZC4uOGM3ZTMwZWI0IDEwMDY0NAo+IC0tLSBh
L2JlbmNobWFya3MvZ2VtX3dzaW0uYwo+ICsrKyBiL2JlbmNobWFya3MvZ2VtX3dzaW0uYwo+IEBA
IC05MzksNyArOTM5LDcgQEAgYWxsb2Nfc3RlcF9iYXRjaChzdHJ1Y3Qgd29ya2xvYWQgKndyaywg
c3RydWN0IHdfc3RlcCAqdywgdW5zaWduZWQgaW50IGZsYWdzKQo+ICAgc3RhdGljIHZvaWQKPiAg
IHByZXBhcmVfd29ya2xvYWQodW5zaWduZWQgaW50IGlkLCBzdHJ1Y3Qgd29ya2xvYWQgKndyaywg
dW5zaWduZWQgaW50IGZsYWdzKQo+ICAgewo+IC0JdW5zaWduZWQgaW50IGN0eF92Y3MgPSAwOwo+
ICsJdW5zaWduZWQgaW50IGN0eF92Y3MgPSBpZCAmIDE7CgpUaGVyZWZvcmUgSSB0aGluayAiY3R4
X3ZjcyA9IChmbGFncyAmIElOSVRWQ1NSUikgPyBpZCAmIDEgOiAwIiBoZXJlLgoKPiAgIAlpbnQg
bWF4X2N0eCA9IC0xOwo+ICAgCXN0cnVjdCB3X3N0ZXAgKnc7Cj4gICAJaW50IGk7Cj4gCgpSZWdh
cmRzLAoKVHZydGtvCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
