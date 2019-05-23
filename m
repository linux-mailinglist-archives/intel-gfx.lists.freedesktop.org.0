Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CB94C278FA
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2019 11:14:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F2F389C56;
	Thu, 23 May 2019 09:14:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5641A89D46;
 Thu, 23 May 2019 09:14:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16651425-1500050 for multiple; Thu, 23 May 2019 10:14:42 +0100
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <155860258858.28319.3356284881218976685@skylake-alporthouse-com>
References: <20190523080649.29466-1-chris@chris-wilson.co.uk>
 <f386b249-b3a3-11b4-915d-d99c0d8a649d@linux.intel.com>
 <155860258858.28319.3356284881218976685@skylake-alporthouse-com>
Message-ID: <155860288158.28319.1379621732185163417@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 23 May 2019 10:14:41 +0100
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915: Improve static engine map for
 legacy
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDUtMjMgMTA6MDk6NDgpCj4gUXVvdGluZyBUdnJ0
a28gVXJzdWxpbiAoMjAxOS0wNS0yMyAwOTo0NjowOCkKPiA+IAo+ID4gT24gMjMvMDUvMjAxOSAw
OTowNiwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gPiAgIGNvbnN0IHN0cnVjdCBpbnRlbF9leGVj
dXRpb25fZW5naW5lMiBpbnRlbF9leGVjdXRpb25fZW5naW5lczJbXSA9IHsKPiA+ID4gLSAgICAg
eyAicmNzMCIsIEk5MTVfRU5HSU5FX0NMQVNTX1JFTkRFUiwgMCB9LAo+ID4gPiAtICAgICB7ICJi
Y3MwIiwgSTkxNV9FTkdJTkVfQ0xBU1NfQ09QWSwgMCB9LAo+ID4gPiAtICAgICB7ICJ2Y3MwIiwg
STkxNV9FTkdJTkVfQ0xBU1NfVklERU8sIDAgfSwKPiA+ID4gLSAgICAgeyAidmNzMSIsIEk5MTVf
RU5HSU5FX0NMQVNTX1ZJREVPLCAxIH0sCj4gPiA+IC0gICAgIHsgInZjczIiLCBJOTE1X0VOR0lO
RV9DTEFTU19WSURFTywgMiB9LAo+ID4gPiAtICAgICB7ICJ2ZWNzMCIsIEk5MTVfRU5HSU5FX0NM
QVNTX1ZJREVPX0VOSEFOQ0UsIDAgfSwKPiA+ID4gKyAgICAgeyAicmNzMCIsIEk5MTVfRU5HSU5F
X0NMQVNTX1JFTkRFUiwgMCwgSTkxNV9FWEVDX1JFTkRFUiB9LAo+ID4gPiArICAgICB7ICJiY3Mw
IiwgSTkxNV9FTkdJTkVfQ0xBU1NfQ09QWSwgMCwgSTkxNV9FWEVDX0JMVCB9LAo+ID4gPiArICAg
ICB7ICJ2Y3MwIiwgSTkxNV9FTkdJTkVfQ0xBU1NfVklERU8sIDAsIEk5MTVfRVhFQ19CU0QgfCBJ
OTE1X0VYRUNfQlNEX1JJTkcxIH0sCj4gPiAKPiA+IGV4ZWNidWYgd2lsbCByZWplY3QgdGhpcyBv
biBzaW5nbGUgdmNzIHBhcnRzLiA6KCBBbSBJIG5vdCBzZWVpbmcgc29tZSAKPiA+IHBsYWNlIHdo
ZXJlIHlvdSBmdWRnZSBpdCBpbnRvIGNvbXBsaWFuY2U/Cj4gCj4gCj4gICAgICAgICBpZiAodXNl
cl9yaW5nX2lkID09IEk5MTVfRVhFQ19CU0QgJiYgSEFTX0VOR0lORShkZXZfcHJpdiwgVkNTMSkp
IHsKPiAgICAgICAgICAgICAgICAgdW5zaWduZWQgaW50IGJzZF9pZHggPSBhcmdzLT5mbGFncyAm
IEk5MTVfRVhFQ19CU0RfTUFTSzsKPiAKPiAgICAgICAgICAgICAgICAgaWYgKGJzZF9pZHggPT0g
STkxNV9FWEVDX0JTRF9ERUZBVUxUKSB7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgYnNkX2lk
eCA9IGdlbjhfZGlzcGF0Y2hfYnNkX2VuZ2luZShkZXZfcHJpdiwgZmlsZSk7Cj4gICAgICAgICAg
ICAgICAgIH0gZWxzZSBpZiAoYnNkX2lkeCA+PSBJOTE1X0VYRUNfQlNEX1JJTkcxICYmCj4gICAg
ICAgICAgICAgICAgICAgICAgICAgICAgYnNkX2lkeCA8PSBJOTE1X0VYRUNfQlNEX1JJTkcyKSB7
Cj4gICAgICAgICAgICAgICAgICAgICAgICAgYnNkX2lkeCA+Pj0gSTkxNV9FWEVDX0JTRF9TSElG
VDsKPiAgICAgICAgICAgICAgICAgICAgICAgICBic2RfaWR4LS07Cj4gICAgICAgICAgICAgICAg
IH0gZWxzZSB7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgRFJNX0RFQlVHKCJleGVjYnVmIHdp
dGggdW5rbm93biBic2QgcmluZzogJXVcbiIsCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIGJzZF9pZHgpOwo+ICAgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiBOVUxMOwo+
ICAgICAgICAgICAgICAgICB9Cj4gCj4gICAgICAgICAgICAgICAgIGVuZ2luZSA9IGRldl9wcml2
LT5lbmdpbmVbX1ZDUyhic2RfaWR4KV07Cj4gICAgICAgICB9IGVsc2Ugewo+ICAgICAgICAgICAg
ICAgICBlbmdpbmUgPSBkZXZfcHJpdi0+ZW5naW5lW3VzZXJfcmluZ19tYXBbdXNlcl9yaW5nX2lk
XV07Cj4gICAgICAgICB9Cj4gCj4gTG9va3Mgb2sgdG8gbWUuLi4gSSB3YXMgdHJ5aW5nIHRvIGRv
dWJsZSBjaGVjayBidXQgZGlmIGRpZG4ndCBib290IG9uCj4gYnN3LiBTaWdoLgoKU28gaW5zdGVh
ZCBJIHJlbW92ZWQgdmNzMSBmcm9tIGJkdywgYW5kIHZjczAgY29udGludWVzIHRvIHdvcmsuCgpX
aGF0IGlzIHN0aWxsIGluY29ycmVjdCB0aG91Z2g6CiQgLi9idWlsZC90ZXN0cy9nZW1fZXhlY19w
YXJhbGxlbCAtLWxpc3Qtc3VidGVzdHMKLi4uCnZjczAKdmNzMC1jb250ZXh0cwp2Y3MwLWZkcwp2
Y3MxCnZjczEtY29udGV4dHMKdmNzMS1mZHMKdmNzMgp2Y3MyLWNvbnRleHRzCnZjczItZmRzCi4u
LgoKJCBzdWRvIC4vYnVpbGQvdGVzdHMvZ2VtX2V4ZWNfcGFyYWxsZWwgLS1ydW4gdmNzMQpJR1Qt
VmVyc2lvbjogMS4yMy1nODIxMzdiYTQgKHg4Nl82NCkgKExpbnV4OiA1LjIuMC1yYzErIHg4Nl82
NCkKKGdlbV9leGVjX3BhcmFsbGVsOjE2MjE5KSBpZ3RfY29yZS1XQVJOSU5HOiBVbmtub3duIHN1
YnRlc3Q6IHZjczEKCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
