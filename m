Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C0BFE1C80
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2019 15:26:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 817B36EAB0;
	Wed, 23 Oct 2019 13:26:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8D4F6EAB0
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Oct 2019 13:26:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Oct 2019 06:26:19 -0700
X-IronPort-AV: E=Sophos;i="5.68,221,1569308400"; d="scan'208";a="191828934"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Oct 2019 06:26:16 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-kernel@vger.kernel.org
In-Reply-To: <ab199f9a-844b-47e5-b643-2bf35316d5ef@rasmusvillemoes.dk>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20191023131308.9420-1-jani.nikula@intel.com>
 <ab199f9a-844b-47e5-b643-2bf35316d5ef@rasmusvillemoes.dk>
Date: Wed, 23 Oct 2019 16:26:13 +0300
Message-ID: <87h83zegp6.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v4] string-choice: add yesno(), onoff(),
 enableddisabled(), plural() helpers
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
Cc: linux-usb@vger.kernel.org, netdev@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, Julia Lawall <julia.lawall@lip6.fr>,
 Vishal Kulkarni <vishal@chelsio.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMyBPY3QgMjAxOSwgUmFzbXVzIFZpbGxlbW9lcyA8bGludXhAcmFzbXVzdmlsbGVt
b2VzLmRrPiB3cm90ZToKPiBPbiAyMy8xMC8yMDE5IDE1LjEzLCBKYW5pIE5pa3VsYSB3cm90ZToK
Pj4gVGhlIGtlcm5lbCBoYXMgcGxlbnR5IG9mIHRlcm5hcnkgb3BlcmF0b3JzIHRvIGNob29zZSBi
ZXR3ZWVuIGNvbnN0YW50Cj4+IHN0cmluZ3MsIHN1Y2ggYXMgY29uZGl0aW9uID8gInllcyIgOiAi
bm8iLCBhcyB3ZWxsIGFzIHZhbHVlID09IDEgPyAiIiA6Cj4+ICJzIjoKPj4gCj4+IAo+PiB2NDog
TWFzc2FnZWQgY29tbWl0IG1lc3NhZ2UgYWJvdXQgc3BhY2Ugc2F2aW5ncyB0byBtYWtlIGl0IGxl
c3MgZmx1ZmZ5Cj4+IGJhc2VkIG9uIFJhc211cycgZmVlZGJhY2suCj4KPiBUaGFua3MsIGl0IGxv
b2tzIGdvb2QgdG8gbWUuIEZXSVcsCj4KPiBBY2tlZC1ieTogUmFzbXVzIFZpbGxlbW9lcyA8bGlu
dXhAcmFzbXVzdmlsbGVtb2VzLmRrPgoKVGhhbmtzLgoKSSB0aGluayB0aGUgcXVlc3Rpb24gaXMs
IHdoaWNoIHRyZWUgdG8gYXBwbHkgdGhpcyB0bywgd2hvJ3MgZ29pbmcgdG8KcGljayBpdCB1cD8g
SSdtIGZpbmUgd2l0aCBhbnkgcm91dGUuCgpCUiwKSmFuaS4KCgotLSAKSmFuaSBOaWt1bGEsIElu
dGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
