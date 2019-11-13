Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D4629FBCAF
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Nov 2019 00:44:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 969086E103;
	Wed, 13 Nov 2019 23:44:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 522E16E103;
 Wed, 13 Nov 2019 23:44:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19193910-1500050 for multiple; Wed, 13 Nov 2019 23:44:18 +0000
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191113154913.8787-3-mika.kuoppala@linux.intel.com>
References: <20191113154913.8787-1-mika.kuoppala@linux.intel.com>
 <20191113154913.8787-3-mika.kuoppala@linux.intel.com>
Message-ID: <157368865735.26076.3766455947640569129@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 13 Nov 2019 23:44:17 +0000
Subject: Re: [Intel-gfx] [PATCH i-g-t 3/7] lib/i915: Add query to detect if
 engine accepts only ro batches
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
Cc: igt-dev@lists.freedesktop.org, Kuoppala@rosetta.fi.intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTExLTEzIDE1OjQ5OjA5KQo+IEZyb206ICJLdW9w
cGFsYSwgTWlrYSIgPG1pa2Eua3VvcHBhbGFAaW50ZWwuY29tPgo+IAo+IElmIGNtZCBwYXJzZXIg
aXMgbWFuZGF0b3J5LCBiYXRjaCBjYW4ndCBiZSBtb2RpZmllZCBwb3N0IGV4ZWNidWYuCj4gU29t
ZSB0ZXN0cyByZWx5IG9uIG1vZGlmeWluZyBiYXRjaCBwb3N0IGV4ZWNidWYuIEdpdmUgdGhvc2UK
PiB0ZXN0cyBhIG1ldGhvZCB0byBxdWVyeSBpZiB0aG9zZSBtb2RpZmljYXRpb25zIGV2ZXIgcmVh
Y2gKPiB0aGUgYWN0dWFsIGVuZ2luZSBjb21tYW5kIHN0cmVhbS4KPiAKPiB2MjogcHVsbCBpbiB0
aGUgdGVzdCBjaGFuZ2VzLCBkb2gKPiB2MzogY2xhc3MgYmFzZWQgcXVlcnkKPiB2NDogcmViYXNl
Cj4gCj4gU2lnbmVkLW9mZi1ieTogS3VvcHBhbGEsIE1pa2EgPG1pa2Eua3VvcHBhbGFAaW50ZWwu
Y29tPgo+IC0tLQo+ICBsaWIvaTkxNS9nZW1fc3VibWlzc2lvbi5jICAgICAgfCA2MiArKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gIGxpYi9pOTE1L2dlbV9zdWJtaXNzaW9uLmgg
ICAgICB8ICAyICsrCj4gIHRlc3RzL2k5MTUvZ2VtX2J1c3kuYyAgICAgICAgICB8ICA3ICsrKy0K
PiAgdGVzdHMvaTkxNS9nZW1fZXhlY19hc3luYy5jICAgIHwgIDMgKysKPiAgdGVzdHMvaTkxNS9n
ZW1fZXhlY19hd2FpdC5jICAgIHwgIDcgKysrLQo+ICB0ZXN0cy9pOTE1L2dlbV9leGVjX2ZlbmNl
LmMgICAgfCAgOCArKysrKwo+ICB0ZXN0cy9pOTE1L2dlbV9leGVjX2xhdGVuY3kuYyAgfCAgNyAr
KysrCj4gIHRlc3RzL2k5MTUvZ2VtX2V4ZWNfbm9wLmMgICAgICB8ICA0ICsrLQo+ICB0ZXN0cy9p
OTE1L2dlbV9leGVjX3NjaGVkdWxlLmMgfCAgNiArKystCj4gIHRlc3RzL2k5MTUvZ2VtX2V4ZWNf
d2hpc3Blci5jICB8ICA0ICsrLQo+ICB0ZXN0cy9wcmltZV9idXN5LmMgICAgICAgICAgICAgfCAg
MyArKwo+ICB0ZXN0cy9wcmltZV92Z2VtLmMgICAgICAgICAgICAgfCAgNiArKysrCj4gIDEyIGZp
bGVzIGNoYW5nZWQsIDExNCBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYg
LS1naXQgYS9saWIvaTkxNS9nZW1fc3VibWlzc2lvbi5jIGIvbGliL2k5MTUvZ2VtX3N1Ym1pc3Np
b24uYwo+IGluZGV4IDRmOTQ2NDkzLi45YmRmMjhiYyAxMDA2NDQKPiAtLS0gYS9saWIvaTkxNS9n
ZW1fc3VibWlzc2lvbi5jCj4gKysrIGIvbGliL2k5MTUvZ2VtX3N1Ym1pc3Npb24uYwo+IEBAIC02
NCw2ICs2NCwyMiBAQCBzdGF0aWMgYm9vbCBoYXNfc2VtYXBob3JlcyhpbnQgZmQsIGludCBkaXIp
Cj4gICAgICAgICByZXR1cm4gdmFsOwo+ICB9Cj4gIAo+ICtzdGF0aWMgaW50IGNtZF9wYXJzZXJf
dmVyc2lvbihpbnQgZmQpCgpnZW1fY21kcGFyc2VyX3ZlcnNpb24oKSA/CgpEcm9wIHRoZSBlbmdp
bmUgcGFyYW1ldGVyIGFzIGl0IHR1cm5zIG91dCB5b3UgZGlkbid0IG5lZWQgaXQuCi1DaHJpcwpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
