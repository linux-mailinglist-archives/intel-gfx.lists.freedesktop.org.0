Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2438E105985
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2019 19:29:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E55D06E1EC;
	Thu, 21 Nov 2019 18:29:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C806A6F4C3
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Nov 2019 18:29:17 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Nov 2019 10:29:17 -0800
X-IronPort-AV: E=Sophos;i="5.69,226,1571727600"; d="scan'208";a="197337216"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1)
 ([10.24.11.38])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Nov 2019 10:29:15 -0800
Date: Thu, 21 Nov 2019 10:29:09 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ramalingam C <ramalingam.c@intel.com>
Message-ID: <20191121182909.g2qajp2nqtrirms4@ldmartin-desk1>
X-Patchwork-Hint: ignore
References: <20191121101226.10779-2-ramalingam.c@intel.com>
 <20191121111231.9552-1-ramalingam.c@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191121111231.9552-1-ramalingam.c@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/tgl: Implement Wa_1604555607
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
Cc: Michel Thierry <michel.thierry@intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBOb3YgMjEsIDIwMTkgYXQgMDQ6NDI6MzFQTSArMDUzMCwgUmFtYWxpbmdhbSBDIHdy
b3RlOgo+KwkvKiBXYV8xNjA0NTU1NjA3OnRnbCAqLwo+Kwl2YWwgPSBpbnRlbF91bmNvcmVfcmVh
ZChlbmdpbmUtPnVuY29yZSwgRkZfTU9ERTIpOwo+Kwl2YWwgJj0gfkZGX01PREUyX1REU19USU1F
Ul9NQVNLOwo+Kwl2YWwgfD0gRkZfTU9ERTJfVERTX1RJTUVSXzEyODsKPisJX193YV93cml0ZV9t
YXNrZWRfb3Iod2FsLCBGRl9NT0RFMiwgRkZfTU9ERTJfVERTX1RJTUVSX01BU0ssIHZhbCwKPisJ
CQkgICAgIElTX1RHTF9SRVZJRChlbmdpbmUtPmk5MTUsIDAsIFRHTF9SRVZJRF9BMCkgPyAwOgoK
aXNuJ3QgaXQgYnJva2VuIHVudGlsIEIwIHJhdGhlciB0aGFuIG9ubHkgb24gQTA/IEkgdGhpbmsg
d2UgY291bGQganVzdApkaXNhYmxlIHRoZSByZWFkIGJhY2sgZm9yIGFsbCByZXZzIGFuZCB0aGVu
IHNlbGVjdGl2ZWx5IGVuYWJsZSBpdApmb3IgbGF0ZXIuCgpMdWNhcyBEZSBNYXJjaGkKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
