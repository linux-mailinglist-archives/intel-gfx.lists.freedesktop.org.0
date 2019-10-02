Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B68E6C4B25
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2019 12:11:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D35426E8ED;
	Wed,  2 Oct 2019 10:11:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAAFF6E8ED
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Oct 2019 10:11:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Oct 2019 03:11:13 -0700
X-IronPort-AV: E=Sophos;i="5.64,574,1559545200"; d="scan'208";a="203548482"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Oct 2019 03:11:09 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-kernel@vger.kernel.org
In-Reply-To: <20191001080739.18513-1-jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <8e697984-03b5-44f3-304e-42d303724eaa@rasmusvillemoes.dk>
 <20191001080739.18513-1-jani.nikula@intel.com>
Date: Wed, 02 Oct 2019 13:11:06 +0300
Message-ID: <87eezvbgp1.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3] string-choice: add yesno(), onoff(),
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

T24gVHVlLCAwMSBPY3QgMjAxOSwgSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4g
d3JvdGU6Cj4gV2hpbGUgdGhlIG1haW4gZ29hbCBoZXJlIGlzIHRvIGFic3RyYWN0IHJlY3Vycmlu
ZyBwYXR0ZXJucywgYW5kIHNsaWdodGx5Cj4gY2xlYW4gdXAgdGhlIGNvZGUgYmFzZSBieSBub3Qg
b3BlbiBjb2RpbmcgdGhlIHRlcm5hcnkgb3BlcmF0b3JzLCB0aGVyZQo+IGFyZSBhbHNvIHNvbWUg
c3BhY2Ugc2F2aW5ncyB0byBiZSBoYWQgdmlhIGJldHRlciBzdHJpbmcgY29uc3RhbnQKPiBwb29s
aW5nLgoKTWFrZSB0aGF0CgoiIiIKV2hpbGUgdGhlIG1haW4gZ29hbCBoZXJlIGlzIHRvIGFic3Ry
YWN0IHJlY3VycmluZyBwYXR0ZXJucywgYW5kIHNsaWdodGx5CmNsZWFuIHVwIHRoZSBjb2RlIGJh
c2UgYnkgbm90IG9wZW4gY29kaW5nIHRoZSB0ZXJuYXJ5IG9wZXJhdG9ycywgdXNpbmcKZnVuY3Rp
b25zIHRvIGFjY2VzcyB0aGUgc3RyaW5ncyBhbHNvIG1ha2VzIGl0IGVhc2llciB0byBzZWVrIGRp
ZmZlcmVudAppbXBsZW1lbnRhdGlvbiBvcHRpb25zIGZvciBwb3RlbnRpYWwgc3BhY2Ugc2F2aW5n
cyBvbiBzdHJpbmcgY29uc3RhbnRzCmluIHRoZSBmdXR1cmUuCiIiIgoKdG8gYmUgbW9yZSBleHBs
aWNpdCB0aGF0IHRoaXMgY2hhbmdlIGRvZXMgbm90IGRpcmVjdGx5IHRyYW5zbGF0ZSB0byBhbnkK
c3BhY2Ugc2F2aW5ncy4KClJhc211cywgb2theSB3aXRoIHRoYXQ/CgoKQlIsCkphbmkuCgoKLS0g
CkphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
