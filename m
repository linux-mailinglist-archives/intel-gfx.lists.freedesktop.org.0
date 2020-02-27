Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CD7117187B
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 14:18:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4D2B6E87C;
	Thu, 27 Feb 2020 13:18:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B3226E87C
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 13:18:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Feb 2020 05:18:32 -0800
X-IronPort-AV: E=Sophos;i="5.70,492,1574150400"; d="scan'208";a="385154172"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Feb 2020 05:18:29 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: =?utf-8?Q?Jos=C3=A9?= Roberto de Souza <jose.souza@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20200221212635.11614-1-jose.souza@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200221212635.11614-1-jose.souza@intel.com>
Date: Thu, 27 Feb 2020 15:18:26 +0200
Message-ID: <87wo88qicd.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v4-CI] drm/i915/psr: Force PSR probe only
 after full initialization
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: Ross Zwisler <zwisler@google.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMSBGZWIgMjAyMCwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBp
bnRlbC5jb20+IHdyb3RlOgo+IENvbW1pdCA2MGM2YTE0YjQ4OWIgKCJkcm0vaTkxNS9kaXNwbGF5
OiBGb3JjZSB0aGUgc3RhdGUgY29tcHV0ZSBwaGFzZQo+IG9uY2UgdG8gZW5hYmxlIFBTUiIpIHdh
cyBmb3JjaW5nIHRoZSBzdGF0ZSBjb21wdXRlIHRvbyBlYXJsaWVyCj4gY2F1c2luZyBlcnJvcnMg
YmVjYXVzZSBub3QgZXZlcnl0aGluZyB3YXMgaW5pdGlhbGl6ZWQsIHNvIGhlcmUKPiBtb3Zpbmcg
dG8gdGhlIGVuZCBvZiBpOTE1X2RyaXZlcl9tb2Rlc2V0X3Byb2JlKCkgd2hlbiB0aGUgZGlzcGxh
eSBpcwo+IGFsbCBpbml0aWFsaXplZC4KCkhtcGgsIHJlYWxseSBub3QgaGFwcHkgYWJvdXQgdGhl
IHBsYWNlbWVudCBoZXJlLiBUaGVzZSBhcmUgaGlnaCBsZXZlbApmdW5jdGlvbnMsIG5vdCBhIGR1
bXBpbmcgZ3JvdW5kIGZvciByYW5kb20gZmVhdHVyZSBzcGVjaWZpYyBoYWNrcy4gOigKCkJSLApK
YW5pLgoKLS0gCkphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
