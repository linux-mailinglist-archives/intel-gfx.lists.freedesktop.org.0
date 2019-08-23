Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 725209AAA1
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 10:49:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FFF36EC2A;
	Fri, 23 Aug 2019 08:49:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from merlin.infradead.org (merlin.infradead.org
 [IPv6:2001:8b0:10b:1231::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 502176EC2A
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 08:49:22 +0000 (UTC)
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i15Fx-0007QZ-Ip; Fri, 23 Aug 2019 08:49:13 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 69D73307510;
 Fri, 23 Aug 2019 10:48:39 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id CCFF620A21FD2; Fri, 23 Aug 2019 10:49:11 +0200 (CEST)
Date: Fri, 23 Aug 2019 10:49:11 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20190823084911.GE2369@hirez.programming.kicks-ass.net>
References: <20190820081951.25053-1-daniel.vetter@ffwll.ch>
 <20190820081951.25053-2-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190820081951.25053-2-daniel.vetter@ffwll.ch>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=L/vkdcP05JWhGYT6635EGSEpeSPBO2zNysiTmrxCkEw=; b=B6fmBKNREv3wbYVEJbZKMQylr
 2QE8UM9F6/Eu480sbXo3kKT1SplNa1HQWh5VdAw1Ka1+0ZFxIqOGOK/ztOA+4XWWiO16yLgmfvCgr
 5jWDafwbqh+r4doQ1z9eNSBwZUQ590qOP6xjoRDsaRO/9+XsBOkgmtch16YsU48DjLXG6m8GxfXOa
 PaN1jnGH90cm4drdC3HyCDBY9PGmzmNeIhjN4RDEsnjl7Narv3X0ej9AzM6TWE2TdoC0B7LbQNVjV
 5FcaVV12fLFnfP4v4dR0/ZWhbV2MnChzI8s2cFVH/39hgE+ihzJUqdhlv15hHMaEQhq6ztLoAjZCT
 EkYmJapIg==;
Subject: Re: [Intel-gfx] [PATCH 2/3] lockdep: add might_lock_nested()
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Ingo Molnar <mingo@redhat.com>, Will Deacon <will@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBBdWcgMjAsIDIwMTkgYXQgMTA6MTk6NTBBTSArMDIwMCwgRGFuaWVsIFZldHRlciB3
cm90ZToKPiBOZWNlc3NhcnkgdG8gYW5ub3RhdGUgZnVuY3Rpb25zIHdoZXJlIHdlIG1pZ2h0IGFj
cXVpcmUgYQo+IG11dGV4X2xvY2tfbmVzdGVkKCkgb3Igc2ltaWxhci4gTmVlZGVkIGJ5IGk5MTUu
Cj4gCj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5j
b20+Cj4gQ2M6IFBldGVyIFppamxzdHJhIDxwZXRlcnpAaW5mcmFkZWFkLm9yZz4KPiBDYzogSW5n
byBNb2xuYXIgPG1pbmdvQHJlZGhhdC5jb20+Cj4gQ2M6IFdpbGwgRGVhY29uIDx3aWxsQGtlcm5l
bC5vcmc+Cj4gQ2M6IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmcKCkFja2VkLWJ5OiBQZXRl
ciBaaWpsc3RyYSAoSW50ZWwpIDxwZXRlcnpAaW5mcmFkZWFkLm9yZz4KCj4gLS0tCj4gIGluY2x1
ZGUvbGludXgvbG9ja2RlcC5oIHwgOCArKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNl
cnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvbG9ja2RlcC5oIGIvaW5j
bHVkZS9saW51eC9sb2NrZGVwLmgKPiBpbmRleCAzOGVhNjE3OGRmN2QuLjMwZjYxNzJkNjg4OSAx
MDA2NDQKPiAtLS0gYS9pbmNsdWRlL2xpbnV4L2xvY2tkZXAuaAo+ICsrKyBiL2luY2x1ZGUvbGlu
dXgvbG9ja2RlcC5oCj4gQEAgLTYzMSw2ICs2MzEsMTMgQEAgZG8gewkJCQkJCQkJCVwKPiAgCWxv
Y2tfYWNxdWlyZSgmKGxvY2spLT5kZXBfbWFwLCAwLCAwLCAxLCAxLCBOVUxMLCBfVEhJU19JUF8p
OwlcCj4gIAlsb2NrX3JlbGVhc2UoJihsb2NrKS0+ZGVwX21hcCwgMCwgX1RISVNfSVBfKTsJCQlc
Cj4gIH0gd2hpbGUgKDApCj4gKyMgZGVmaW5lIG1pZ2h0X2xvY2tfbmVzdGVkKGxvY2ssIHN1YmNs
YXNzKSAJCQkJXAo+ICtkbyB7CQkJCQkJCQkJXAo+ICsJdHlwZWNoZWNrKHN0cnVjdCBsb2NrZGVw
X21hcCAqLCAmKGxvY2spLT5kZXBfbWFwKTsJCVwKPiArCWxvY2tfYWNxdWlyZSgmKGxvY2spLT5k
ZXBfbWFwLCBzdWJjbGFzcywgMCwgMSwgMSwgTlVMTCwJCVwKPiArCQkgICAgIF9USElTX0lQXyk7
CQkJCQlcCj4gKwlsb2NrX3JlbGVhc2UoJihsb2NrKS0+ZGVwX21hcCwgMCwgX1RISVNfSVBfKTsJ
CVwKPiArfSB3aGlsZSAoMCkKPiAgCj4gICNkZWZpbmUgbG9ja2RlcF9hc3NlcnRfaXJxc19lbmFi
bGVkKCkJZG8gewkJCQlcCj4gIAkJV0FSTl9PTkNFKGRlYnVnX2xvY2tzICYmICFjdXJyZW50LT5s
b2NrZGVwX3JlY3Vyc2lvbiAmJglcCj4gQEAgLTY1Myw2ICs2NjAsNyBAQCBkbyB7CQkJCQkJCQkJ
XAo+ICAjZWxzZQo+ICAjIGRlZmluZSBtaWdodF9sb2NrKGxvY2spIGRvIHsgfSB3aGlsZSAoMCkK
PiAgIyBkZWZpbmUgbWlnaHRfbG9ja19yZWFkKGxvY2spIGRvIHsgfSB3aGlsZSAoMCkKPiArIyBk
ZWZpbmUgbWlnaHRfbG9ja19uZXN0ZWQobG9jaywgc3ViY2xhc3MpIGRvIHsgfSB3aGlsZSAoMCkK
PiAgIyBkZWZpbmUgbG9ja2RlcF9hc3NlcnRfaXJxc19lbmFibGVkKCkgZG8geyB9IHdoaWxlICgw
KQo+ICAjIGRlZmluZSBsb2NrZGVwX2Fzc2VydF9pcnFzX2Rpc2FibGVkKCkgZG8geyB9IHdoaWxl
ICgwKQo+ICAjIGRlZmluZSBsb2NrZGVwX2Fzc2VydF9pbl9pcnEoKSBkbyB7IH0gd2hpbGUgKDAp
Cj4gLS0gCj4gMi4yMy4wLnJjMQo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
