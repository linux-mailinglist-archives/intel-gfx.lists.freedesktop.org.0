Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 934A9104432
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2019 20:21:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF7AA6E9FC;
	Wed, 20 Nov 2019 19:21:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55FA46E9FC
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2019 19:21:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Nov 2019 11:21:24 -0800
X-IronPort-AV: E=Sophos;i="5.69,223,1571727600"; d="scan'208";a="196969990"
Received: from jlahtine-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.18.127])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Nov 2019 11:21:21 -0800
MIME-Version: 1.0
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
In-Reply-To: <20191120182209.3967833-1-chris@chris-wilson.co.uk>
References: <20191120182209.3967833-1-chris@chris-wilson.co.uk>
Message-ID: <157427767877.22493.2858069442089832609@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.7
Date: Wed, 20 Nov 2019 21:21:18 +0200
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Fixup config ifdeffery for
 pm_suspend_target_state
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
Cc: kbuild-all@lists.01.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMTEtMjAgMjA6MjI6MDkpCj4gcG1fc3VzcGVuZF90
YXJnZXRfc3RhdGUgaXMgZGVjbGFyZWQgdW5kZXIgQ09ORklHX1BNX1NMRUVQIGJ1dCBvbmx5Cj4g
ZGVmaW5lZCB1bmRlciBDT05GSUdfU1VTUEVORC4gUGxheSBzYWZlIGFuZCBvbmx5IHVzZSB0aGUg
c3ltYm9sIGlmIGl0IGlzCj4gYm90aCBkZWNsYXJlZCBhbmQgZGVmaW5lcy4KPiAKPiBSZXBvcnRl
ZC1ieToga2J1aWxkLWFsbEBsaXN0cy4wMS5vcmcKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxz
b24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBGaXhlczogYTcwYTllOTk4ZThlICgiZHJt
L2k5MTU6IERlZmVyIHJjNiBzaHV0ZG93biB0byBzdXNwZW5kX2xhdGUiKQo+IENjOiBBbmRpIFNo
eXRpIDxhbmRpLnNoeXRpQGludGVsLmNvbT4KPiBDYzogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMu
bGFodGluZW5AbGludXguaW50ZWwuY29tPgoKUmV2aWV3ZWQtYnk6IEpvb25hcyBMYWh0aW5lbiA8
am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4KClJlZ2FyZHMsIEpvb25hcwpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
