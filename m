Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 83409E05D0
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 16:04:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 046696E80B;
	Tue, 22 Oct 2019 14:04:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 764E56E80B
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2019 14:04:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Oct 2019 07:04:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,327,1566889200"; d="scan'208";a="200793924"
Received: from amanna-mobl.gar.corp.intel.com (HELO [10.66.75.213])
 ([10.66.75.213])
 by orsmga003.jf.intel.com with ESMTP; 22 Oct 2019 07:04:14 -0700
To: Manasi Navare <manasi.d.navare@intel.com>
References: <20191003150653.15881-1-animesh.manna@intel.com>
 <20191003150653.15881-3-animesh.manna@intel.com>
 <20191021225731.GA29989@intel.com>
From: Animesh Manna <animesh.manna@intel.com>
Message-ID: <bd7b9c22-7a51-7dfc-e86c-039aa5d47ab4@intel.com>
Date: Tue, 22 Oct 2019 19:34:13 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <20191021225731.GA29989@intel.com>
Subject: Re: [Intel-gfx] [RFC 2/6] drm/i915/dp: Move vswing/pre-emphasis
 adjustment calculation
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDEwLzIyLzIwMTkgNDoyNyBBTSwgTWFuYXNpIE5hdmFyZSB3cm90ZToKPiBPbiBUaHUsIE9j
dCAwMywgMjAxOSBhdCAwODozNjo0OVBNICswNTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOgo+PiB2
c3dpbmcvcHJlLWVtcGhhc2lzIGFkanVzdG1lbnQgY2FsY3VsYXRpb24gaXMgbmVlZGVkIGluIHBy
b2Nlc3NpbmcKPj4gb2YgYXV0byBwaHkgY29tcGxpYW5jZSByZXF1ZXN0IG90aGVyIHRoYW4gbGlu
ayB0cmFpbmluZywgc28gbW92ZWQKPj4gdGhlIHNhbWUgZnVuY3Rpb24gaW4gaW50ZWxfZHAuYy4K
Pj4KPj4gTm8gZnVuY3Rpb25hbCBjaGFuZ2UuCj4gWW91IGNvdWxkIGp1c3QgbWFrZSBpdCBhIG5v
biBzdGF0aWMgZnVuY3Rpb24gaW5zdGVhZCBvZiBtb3ZpbmcgdG8gaW50ZWxfZHAuYwoKSW5pdGlh
bGx5IEkgZGlkIHRoZSBzYW1lIC4uLiA6KQpMYXRlciBJIHRob3VnaHQgaW50ZWxfZHBfbGlua190
cmFpbmluZy5jIGZpbGUgaXMgbWFpbmx5IGZvY3VzZWQgb25seSBvbiAKbGluayB0cmFpbmluZyBw
cm9jZXNzLCBzdGFydF9saW5rX3RyYWluKCkgYW5kIHN0b3BfbGlua190cmFpbigpIGFyZSBvbmx5
IApleHBvc2VkLgpJIHRob3VnaHQgSSBtYXkgbm90IGJlIGFsbG93ZWQgdG8gZXhwb3NlIGludGVs
X2dldF9hZGp1c3RfdHJhaW4oKSBhcyBpdCAKaXMgbm90IGV4Y2x1c2l2ZSBmb3IgbGluayB0cmFp
bmluZy4KUGxlYXNlIGxldCBtZSBrbm93IHlvdXIgdmlldy4KClJlZ2FyZHMsCkFuaW1lc2gKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
