Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 014E871D25
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2019 18:55:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E07D6E311;
	Tue, 23 Jul 2019 16:55:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FBBE6E311;
 Tue, 23 Jul 2019 16:55:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17540326-1500050 for multiple; Tue, 23 Jul 2019 17:55:39 +0100
MIME-Version: 1.0
To: Chuhong Yuan <hslester96@gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <156389911703.31349.2020385253528691635@skylake-alporthouse-com>
References: <20190723103915.3964-1-hslester96@gmail.com>
 <156389911703.31349.2020385253528691635@skylake-alporthouse-com>
Message-ID: <156390093724.31349.11990658707501306462@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 23 Jul 2019 17:55:37 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Use dev_get_drvdata
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
Cc: David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 Chuhong Yuan <hslester96@gmail.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDctMjMgMTc6MjU6MTcpCj4gUXVvdGluZyBDaHVo
b25nIFl1YW4gKDIwMTktMDctMjMgMTE6Mzk6MTYpCj4gPiBJbnN0ZWFkIG9mIHVzaW5nIHRvX3Bj
aV9kZXYgKyBwY2lfZ2V0X2RydmRhdGEsCj4gPiB1c2UgZGV2X2dldF9kcnZkYXRhIHRvIG1ha2Ug
Y29kZSBzaW1wbGVyLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBDaHVob25nIFl1YW4gPGhzbGVz
dGVyOTZAZ21haWwuY29tPgo+IAo+IFRoYXQgY3V0cyBvdXQgc29tZSBjaXJjdW1sb2N1dGlvbiwK
PiBSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CgpB
bmQgcHVzaGVkIHRvIGRpbnEsIHRoYW5rcy4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
