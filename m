Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 706D89839B
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2019 20:50:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C1FA6E9A9;
	Wed, 21 Aug 2019 18:50:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EED56E92A;
 Wed, 21 Aug 2019 07:33:41 +0000 (UTC)
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A347C2332A;
 Wed, 21 Aug 2019 07:33:39 +0000 (UTC)
Date: Wed, 21 Aug 2019 08:33:36 +0100
From: Will Deacon <will@kernel.org>
To: Stephen Rothwell <sfr@canb.auug.org.au>
Message-ID: <20190821073335.db7wxxznhdnh2aal@willie-the-truck>
References: <20190821141640.7967ddcc@canb.auug.org.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190821141640.7967ddcc@canb.auug.org.au>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Mailman-Approved-At: Wed, 21 Aug 2019 18:50:46 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=default; t=1566372821;
 bh=+tFf0mJTLo96yTYYqbHdRoumDvEssXCzw62+md2MYD8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=F4H1EFiOSPZTcw+U72R+MT/SkRIDDG5NH56gBRfds4Vsj8QWVp5c8syaxCCgU3rYT
 +0SlGG7GQouiQdZ6gYZsgRQmKEaasz1VNv2gdOfR9JwxZjc59DvcXBRHpdZXIXvuPh
 lgySo5SFuMMEijkzIll0PbWBDliFmstTPszklgfM=
Subject: Re: [Intel-gfx] linux-next: manual merge of the iommu tree with the
 drm-misc tree
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
Cc: Rob Herring <robh@kernel.org>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Joerg Roedel <joro@8bytes.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 DRI <dri-devel@lists.freedesktop.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBBdWcgMjEsIDIwMTkgYXQgMDI6MTY6NDBQTSArMTAwMCwgU3RlcGhlbiBSb3Rod2Vs
bCB3cm90ZToKPiBIaSBhbGwsCj4gCj4gVG9kYXkncyBsaW51eC1uZXh0IG1lcmdlIG9mIHRoZSBp
b21tdSB0cmVlIGdvdCBhIGNvbmZsaWN0IGluOgo+IAo+ICAgZHJpdmVycy9ncHUvZHJtL3BhbmZy
b3N0L3BhbmZyb3N0X21tdS5jCj4gCj4gYmV0d2VlbiBjb21taXQ6Cj4gCj4gICAxODdkMjkyOTIw
NmUgKCJkcm0vcGFuZnJvc3Q6IEFkZCBzdXBwb3J0IGZvciBHUFUgaGVhcCBhbGxvY2F0aW9ucyIp
Cj4gCj4gZnJvbSB0aGUgZHJtLW1pc2MgdHJlZSBhbmQgY29tbWl0Ogo+IAo+ICAgYTJkM2EzODJk
NmM2ICgiaW9tbXUvaW8tcGd0YWJsZTogUGFzcyBzdHJ1Y3QgaW9tbXVfaW90bGJfZ2F0aGVyIHRv
IC0+dW5tYXAoKSIpCj4gCj4gZnJvbSB0aGUgaW9tbXUgdHJlZS4KPiAKPiBJIGZpeGVkIGl0IHVw
IChzZWUgYmVsb3cpIGFuZCBjYW4gY2FycnkgdGhlIGZpeCBhcyBuZWNlc3NhcnkuIFRoaXMKPiBp
cyBub3cgZml4ZWQgYXMgZmFyIGFzIGxpbnV4LW5leHQgaXMgY29uY2VybmVkLCBidXQgYW55IG5v
biB0cml2aWFsCj4gY29uZmxpY3RzIHNob3VsZCBiZSBtZW50aW9uZWQgdG8geW91ciB1cHN0cmVh
bSBtYWludGFpbmVyIHdoZW4geW91ciB0cmVlCj4gaXMgc3VibWl0dGVkIGZvciBtZXJnaW5nLiAg
WW91IG1heSBhbHNvIHdhbnQgdG8gY29uc2lkZXIgY29vcGVyYXRpbmcKPiB3aXRoIHRoZSBtYWlu
dGFpbmVyIG9mIHRoZSBjb25mbGljdGluZyB0cmVlIHRvIG1pbmltaXNlIGFueSBwYXJ0aWN1bGFy
bHkKPiBjb21wbGV4IGNvbmZsaWN0cy4KClRoYW5rcy4gSSBkb24ndCB0aGluayB0aGUgY29uZmxp
Y3QgaXMgYXMgYmFkIGFzIGl0IGxvb2tzLCB0aGVyZSdzIGp1c3QKY2xlYXJseSBiZWVuIGEgbG90
IG9mIGNoYW5nZXMgdG8gdGhpcyBmaWxlLiBUaGUgSU9NTVUgY2hhbmdlcyBhcmUgYWxsCmFyb3Vu
ZCB0aGUgaW8tcGd0YWJsZSBBUEksIHNvIHRoZXJlJ3MgYW4gZXh0cmEgJ05VTEwnIGFyZ3VtZW50
IHRvCi0+dW5tYXAoKSBhbmQgc29tZSBuZXcgVExCIGludmFsaWRhdGlvbiBmdW5jdGlvbnMgaW4g
dGhlIHJlbmFtZWQKJ2lvbW11X2dhdGhlcl9vcHMnIChub3cgJ2lvbW11X2ZsdXNoX29wcycpLgoK
V2lsbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
