Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35C63F74A3
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2019 14:19:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C8F46E1F7;
	Mon, 11 Nov 2019 13:19:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 799E16E1F7
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2019 13:19:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Nov 2019 05:19:43 -0800
X-IronPort-AV: E=Sophos;i="5.68,293,1569308400"; d="scan'208";a="197667719"
Received: from jlahtine-desk.ger.corp.intel.com (HELO localhost)
 ([10.252.20.50])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Nov 2019 05:19:42 -0800
MIME-Version: 1.0
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
In-Reply-To: <20191110185806.17413-10-chris@chris-wilson.co.uk>
References: <20191110185806.17413-1-chris@chris-wilson.co.uk>
 <20191110185806.17413-10-chris@chris-wilson.co.uk>
Message-ID: <157347837952.16183.16508486191531561732@jlahtine-desk.ger.corp.intel.com>
User-Agent: alot/0.7
Date: Mon, 11 Nov 2019 15:19:39 +0200
Subject: Re: [Intel-gfx] [PATCH 10/25] drm/i915/execlists: Reduce barrier on
 context switch to a wmb()
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMTEtMTAgMjA6NTc6NTEpCj4gSGF2aW5nIGJlZW4g
Zm9yY2VkIHRvIHJlZHVjZSBCcmFzd2VsbCBiYWNrIHRvIHVzaW5nIHRoZSBhbGlhc2luZyBwcGd0
dCwKPiB0aGUgY29oZXJlbmN5IGlzc3VlIHdlIHByZXZpb3VzbHkgb2JzZXJ2ZWQgY2Fubm90IGlt
cGFjdCB1cy4gUmVkdWNlIHRoZQo+IHBlcmZvcm1hbmNlIHBlbmFsdHkgaW1wb3NlZCBvbiBhbGwg
cGxhdGZvcm1zIGZyb20gdXNpbmcgdGhlIG1mZW5jZSB0byBhCj4gbWVyZSBzZmVuY2UuCj4gCj4g
UmVmZXJlbmNlczogY2Y2NmI4YTBiYTE0ICgiZHJtL2k5MTUvZXhlY2xpc3RzOiBBcHBseSBhIGZ1
bGwgbWIgYmVmb3JlIGV4ZWN1dGlvbiBmb3IgQnJhc3dlbGwiKQo+IFNpZ25lZC1vZmYtYnk6IENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBNaWthIEt1b3BwYWxh
IDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KPiBDYzogSm9vbmFzIExhaHRpbmVuIDxq
b29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgoKUmV2aWV3ZWQtYnk6IEpvb25hcyBMYWh0
aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4KClJlZ2FyZHMsIEpvb25hcwpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
