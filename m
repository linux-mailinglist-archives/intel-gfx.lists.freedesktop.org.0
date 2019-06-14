Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4156245FE2
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 16:02:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C06F892AE;
	Fri, 14 Jun 2019 14:02:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE929892AE;
 Fri, 14 Jun 2019 14:02:41 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F10F42064A;
 Fri, 14 Jun 2019 14:02:40 +0000 (UTC)
Date: Fri, 14 Jun 2019 16:02:39 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <20190614140239.GA7234@kroah.com>
References: <20190614134726.3827-1-hch@lst.de>
 <20190614134726.3827-13-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190614134726.3827-13-hch@lst.de>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=default; t=1560520961;
 bh=yuQRJdK0c0k8QDLCPmaaUBPA4Gh5iMSc87ydddzUjLY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Adj/ubhVrddpf3XNZqH7bla3F/OQLtlWktGpnu78fRXaEWJVclE8EAVB7iVcwuXIj
 MgEu3GKKHjwm4kv6V7mrBTfmdB65iAPolSabTzDn8Y8MigqQqnxVgShMq6aUvnqaEX
 cqT5x9DBfftx8QKc8qPay9S9idxZcSOh+UlLdp+0=
Subject: Re: [Intel-gfx] [PATCH 12/16] staging/comedi: mark as broken
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>, dri-devel@lists.freedesktop.org,
 linux-mm@kvack.org, devel@driverdev.osuosl.org, linux-s390@vger.kernel.org,
 linux-rdma@vger.kernel.org, David Airlie <airlied@linux.ie>,
 linux-media@vger.kernel.org, Intel Linux Wireless <linuxwifi@intel.com>,
 intel-gfx@lists.freedesktop.org, Ian Abbott <abbotti@mev.co.uk>,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>,
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, H Hartley Sweeten <hsweeten@visionengravers.com>,
 iommu@lists.linux-foundation.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBKdW4gMTQsIDIwMTkgYXQgMDM6NDc6MjJQTSArMDIwMCwgQ2hyaXN0b3BoIEhlbGx3
aWcgd3JvdGU6Cj4gY29tZWRpX2J1Zi5jIGFidXNlIHRoZSBETUEgQVBJIGluIGdyYXZlbHkgYnJv
a2VuIHdheXMsIGFzIGl0IGFzc3VtZXMgaXQKPiBjYW4gY2FsbCB2aXJ0X3RvX3BhZ2Ugb24gdGhl
IHJlc3VsdCwgYW5kIHRoZSBqdXN0IHJlbWFwIGl0IGFzIHVuY2FjaGVkCj4gdXNpbmcgdm1hcC4g
IERpc2FibGUgdGhlIGRyaXZlciB1bnRpbCB0aGlzIEFQSSBhYnVzZSBoYXMgYmVlbiBmaXhlZC4K
PiAKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RvcGggSGVsbHdpZyA8aGNoQGxzdC5kZT4KPiAtLS0K
PiAgZHJpdmVycy9zdGFnaW5nL2NvbWVkaS9LY29uZmlnIHwgMSArCj4gIDEgZmlsZSBjaGFuZ2Vk
LCAxIGluc2VydGlvbigrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvY29tZWRp
L0tjb25maWcgYi9kcml2ZXJzL3N0YWdpbmcvY29tZWRpL0tjb25maWcKPiBpbmRleCAwNDliNjU5
ZmE2YWQuLmU3YzAyMWQ3NmNmYSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvY29tZWRp
L0tjb25maWcKPiArKysgYi9kcml2ZXJzL3N0YWdpbmcvY29tZWRpL0tjb25maWcKPiBAQCAtMSw2
ICsxLDcgQEAKPiAgIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMAo+ICBjb25maWcg
Q09NRURJCj4gIAl0cmlzdGF0ZSAiRGF0YSBhY3F1aXNpdGlvbiBzdXBwb3J0IChjb21lZGkpIgo+
ICsJZGVwZW5kcyBvbiBCUk9LRU4KClVtLCB0aGF0J3MgYSBodWdlIHNsZWRnZWhhbW1lci4KClBl
cmhhcHMgYSBoaW50IGFzIHRvIGhvdyB3ZSBjYW4gZml4IHRoaXMgdXA/ICBUaGlzIGlzIHRoZSBm
aXJzdCB0aW1lCkkndmUgaGVhcmQgb2YgdGhlIGNvbWVkaSBjb2RlIG5vdCBoYW5kbGluZyBkbWEg
cHJvcGVybHkuCgp0aGFua3MsCgpncmVnIGstaApfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
