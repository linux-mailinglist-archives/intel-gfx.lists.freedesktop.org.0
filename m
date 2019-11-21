Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 679EB104DED
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2019 09:30:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D5126EB9D;
	Thu, 21 Nov 2019 08:30:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC5E06EB9D
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Nov 2019 08:30:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Nov 2019 00:30:09 -0800
X-IronPort-AV: E=Sophos;i="5.69,224,1571727600"; d="scan'208";a="210027130"
Received: from jlahtine-mobl.fi.intel.com (HELO localhost) ([10.237.66.132])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Nov 2019 00:30:08 -0800
MIME-Version: 1.0
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
In-Reply-To: <20191121082012.108692-1-chris@chris-wilson.co.uk>
References: <20191121082012.108692-1-chris@chris-wilson.co.uk>
Message-ID: <157432500375.9315.14630965699760184487@jlahtine-mobl.fi.intel.com>
User-Agent: alot/0.7
Date: Thu, 21 Nov 2019 10:30:03 +0200
Subject: Re: [Intel-gfx] [PATCH] drm/i915/execlists: Lock the request while
 validating it during promotion
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMTEtMjEgMTA6MjA6MTIpCj4gU2luY2UgdGhlIHJl
cXVlc3QgaXMgYWxyZWFkeSBvbiB0aGUgSFcgYXMgd2UgcGVyZm9ybSBpdHMgdmFsaWRhdGlvbiwg
aXQKPiBhbmQgZXZlbiBpdHMgc3Vic2VxdWVudCBiYXJyaWVyIG1heSBiZSBjb25jdXJyZW50bHkg
cmV0aXJlZCBiZWZvcmUgd2UKPiBwcm9jZXNzIHRoZSBhc3NlcnRpb25zLiBJZiBpdCBpcyByZXRp
cmVkIGFscmVhZHkgYW5kIHNvIG9mZiB0aGUgSFcsIG91cgo+IGFzc2VydGlvbnMgYmVjb21lIHZv
aWQgYW5kIHdlIG5lZWQgdG8gaWdub3JlIHRoZW0uCj4gCj4gQnVnemlsbGE6IGh0dHBzOi8vYnVn
cy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMjM2Mwo+IFNpZ25lZC1vZmYtYnk6
IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgoKUmV2aWV3ZWQtYnk6IEpv
b25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4KClJlZ2FyZHMs
IEpvb25hcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
