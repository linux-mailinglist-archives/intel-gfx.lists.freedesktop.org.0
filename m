Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E43C667D0
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 09:36:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AB416E2E2;
	Fri, 12 Jul 2019 07:36:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D377E6E2E2
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jul 2019 07:36:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jul 2019 00:36:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,481,1557212400"; d="scan'208";a="250048353"
Received: from jlahtine-mobl.ger.corp.intel.com (HELO localhost)
 ([10.237.66.136])
 by orsmga001.jf.intel.com with ESMTP; 12 Jul 2019 00:36:32 -0700
MIME-Version: 1.0
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
In-Reply-To: <20190711073155.10926-3-janusz.krzysztofik@linux.intel.com>
References: <20190711073155.10926-1-janusz.krzysztofik@linux.intel.com>
 <20190711073155.10926-3-janusz.krzysztofik@linux.intel.com>
Message-ID: <156291699177.8011.15324729567957007715@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.7
Date: Fri, 12 Jul 2019 10:36:31 +0300
Subject: Re: [Intel-gfx] [PATCH v2 2/5] drm/i915: Replace "_load" with
 "_probe" consequently
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBKYW51c3ogS3J6eXN6dG9maWsgKDIwMTktMDctMTEgMTA6MzE6NTQpCj4gVXNlIHRo
ZSAiX3Byb2JlIiBub21lbmNsYXR1cmUgbm90IG9ubHkgaW4gaTkxNV9kcml2ZXJfcHJvYmUoKSBo
ZWxwZXIKPiBuYW1lIGJ1dCBhbHNvIGluIG90aGVyIHJlbGF0ZWQgZnVuY3Rpb24gLyB2YXJpYWJs
ZSBuYW1lcyBmb3IKPiBjb25zaXN0ZW5jeS4gCgo+IE9ubHkgdGhlIHVzZXJzcGFjZSBleHBvc2Vk
IG5hbWUgb2YgYSByZWxhdGVkIG1vZHVsZQo+IHBhcmFtZXRlciBpcyBsZWZ0IHVudG91Y2hlZC4K
ClN5bmNpbmcgd2l0aCBJR1QsIEkgdGhpbmsgd2UgY291bGQgYWxzbyBjaGFuZ2UgdGhlIG1vZHVs
ZSBwYXJhbWV0ZXIKbmFtZS4KCj4gU2lnbmVkLW9mZi1ieTogSmFudXN6IEtyenlzenRvZmlrIDxq
YW51c3oua3J6eXN6dG9maWtAbGludXguaW50ZWwuY29tPgoKUmV2aWV3ZWQtYnk6IEpvb25hcyBM
YWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4KClJlZ2FyZHMsIEpvb25h
cwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
