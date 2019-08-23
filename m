Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 793119AAA6
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 10:50:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94AB76EC1F;
	Fri, 23 Aug 2019 08:50:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from merlin.infradead.org (merlin.infradead.org
 [IPv6:2001:8b0:10b:1231::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24A2A6EC1F
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 08:50:02 +0000 (UTC)
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i15Gg-0007R6-6x; Fri, 23 Aug 2019 08:49:58 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 5A2D1307510;
 Fri, 23 Aug 2019 10:49:24 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id BD24120B3358F; Fri, 23 Aug 2019 10:49:56 +0200 (CEST)
Date: Fri, 23 Aug 2019 10:49:56 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20190823084956.GF2369@hirez.programming.kicks-ass.net>
References: <20190820081951.25053-1-daniel.vetter@ffwll.ch>
 <20190820081951.25053-3-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190820081951.25053-3-daniel.vetter@ffwll.ch>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wxFK1aA0wANvaZBFOZeC8vmeMYoAclgIu5T4D4G9HXQ=; b=CnMhbM30GaWTsXZGmRo6LbfVn
 Ygk8oEXFMbQJrjHRsVys7xjJznnhhiyAm+CJuRLiyNLXi9SSH2AH2BEU4WOOO1o+HjieCWYT5IVU7
 UjHMMhMUHjvb2306/QG19Tyzns9cyblu5PmRBKi1qgSIO1KjKzt/Y1u1S6XBDQTX5tzlkNPSZJM4F
 uu7eI8xJdEKgRIMViW6/9iQW7qamlk6L8o0zs/ucAg8Uo5EVpn4fsnn6/vThBJ77LM9oo1bgVxCMj
 8b39v7+8BGwwWuGNUBnsT7jAszMZnussiZeUsag/eo3qdcJQw5/wvkfJmr4SiQCP9rKSKcScuraif
 W4p7C5zfw==;
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: use might_lock_nested in
 get_pages annotation
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

T24gVHVlLCBBdWcgMjAsIDIwMTkgYXQgMTA6MTk6NTFBTSArMDIwMCwgRGFuaWVsIFZldHRlciB3
cm90ZToKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29i
amVjdC5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oCj4gaW5k
ZXggYTBiMWZhOGEzMjI0Li5iM2ZkNmFhYzkzYmMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oCj4gQEAgLTIzMywxMCArMjMzLDI2IEBAIHZvaWQgX19p
OTE1X2dlbV9vYmplY3Rfc2V0X3BhZ2VzKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmos
Cj4gIGludCBfX19faTkxNV9nZW1fb2JqZWN0X2dldF9wYWdlcyhzdHJ1Y3QgZHJtX2k5MTVfZ2Vt
X29iamVjdCAqb2JqKTsKPiAgaW50IF9faTkxNV9nZW1fb2JqZWN0X2dldF9wYWdlcyhzdHJ1Y3Qg
ZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKTsKPiAgCj4gK2VudW0gaTkxNV9tbV9zdWJjbGFzcyB7
IC8qIGxvY2tkZXAgc3ViY2xhc3MgZm9yIG9iai0+bW0ubG9jay9zdHJ1Y3RfbXV0ZXggKi8KPiAr
CUk5MTVfTU1fTk9STUFMID0gMCwKPiArCS8qCj4gKwkgKiBPbmx5IHVzZWQgYnkgc3RydWN0X211
dGV4LCB3aGVuIGNhbGxlZCAicmVjdXJzaXZlbHkiIGZyb20KPiArCSAqIGRpcmVjdC1yZWNsYWlt
LWVzcXVlLiBTYWZlIGJlY2F1c2UgdGhlcmUgaXMgb25seSBldmVyeSBvbmUKPiArCSAqIHN0cnVj
dF9tdXRleCBpbiB0aGUgZW50aXJlIHN5c3RlbS4gKi8KPiArCUk5MTVfTU1fU0hSSU5LRVIgPSAx
LAo+ICsJLyoKPiArCSAqIFVzZWQgZm9yIG9iai0+bW0ubG9jayB3aGVuIGFsbG9jYXRpbmcgcGFn
ZXMuIFNhZmUgYmVjYXVzZSB0aGUgb2JqZWN0Cj4gKwkgKiBpc24ndCB5ZXQgb24gYW55IExSVSwg
YW5kIHRoZXJlZm9yZSB0aGUgc2hyaW5rZXIgY2FuJ3QgZGVhZGxvY2sgb24KPiArCSAqIGl0LiBB
cyBzb29uIGFzIHRoZSBvYmplY3QgaGFzIHBhZ2VzLCBvYmotPm1tLmxvY2sgbmVzdHMgd2l0aGlu
Cj4gKwkgKiBmc19yZWNsYWltLgo+ICsJICovCj4gKwlJOTE1X01NX0dFVF9QQUdFUyA9IDEsCgpU
aG9zZSBjb21tZW50cyBhcmUgaW5jb25zaXN0ZW50bHkgc3R5bGVkOyBpZiB5b3UgbW92ZSB0aGVt
LCBtaWdodCBhcwp3ZWxsIGZpeCB0aGF0IHRvbyA6LSkKCj4gK307Cj4gKwpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
