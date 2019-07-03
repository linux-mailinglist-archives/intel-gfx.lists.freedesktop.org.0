Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CAA615E159
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2019 11:48:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40F9B6E10A;
	Wed,  3 Jul 2019 09:48:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0B706E10A
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jul 2019 09:48:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jul 2019 02:48:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,446,1557212400"; d="scan'208";a="190974290"
Received: from cdsmith6-mobl2.ger.corp.intel.com (HELO [10.252.3.86])
 ([10.252.3.86])
 by fmsmga002.fm.intel.com with ESMTP; 03 Jul 2019 02:48:29 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190703091726.11690-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <1a0a1006-a3e2-e2e9-09db-a671dd00607e@intel.com>
Date: Wed, 3 Jul 2019 10:48:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20190703091726.11690-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 01/15] drm/i915/selftests: Common live
 setup/teardown
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMDMvMDcvMjAxOSAxMDoxNywgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFdlIGZyZXF1ZW50bHks
IGFuZCBub3QgZnJlcXVlbnRseSBlbm91Z2gsIHJlbWVtYmVyIHRvIGZsdXNoIHJlc2lkdWFsCj4g
b3BlbmF0aW9ucyBhbmQgb2JqZWN0cyBhdCB0aGUgZW5kIG9mIGEgbGl2ZSBzdWJ0ZXN0LiBUaGUg
cHVycG9zZSBpcyB0bwoKb3BlcmF0aW9ucwoKPiBjbGVhbnVwIGFmdGVyIGV2ZXJ5IHN1YnRlc3Qs
IGxlYXZpbmcgYSBjbGVhbiBzbGF0ZSBmb3IgdGhlIG5leHQgc3VidGVzdCwKPiBhbmQgcGVyZm9y
bSBlYXJseSBkZXRlY3Rpb24gb2YgbGVha3kgc3RhdGUuCj4gCj4gU2lnbmVkLW9mZi1ieTogQ2hy
aXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IFR2cnRrbyBVcnN1bGlu
IDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBNYXR0aGV3IEF1bGQgPG1h
dHRoZXcuYXVsZEBpbnRlbC5jb20+CgpBIHZhcmlhbnQgd2l0aCBzZXBhcmF0ZSBhcmd1bWVudHMg
Zm9yIGRhdGEgYW5kIGk5MTU/IE1laC4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
