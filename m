Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49642240355
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Aug 2020 10:22:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E6316E372;
	Mon, 10 Aug 2020 08:22:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41E7089FF7;
 Mon, 10 Aug 2020 08:22:45 +0000 (UTC)
IronPort-SDR: dGZVIyujPQ4CX2goC89WcnakoPieQ0W+lwMnm2WUFERBgqULbxvIJGN7SesX4OQ+cX2cuvu9LN
 Qpibp15FV9oA==
X-IronPort-AV: E=McAfee;i="6000,8403,9708"; a="150931236"
X-IronPort-AV: E=Sophos;i="5.75,457,1589266800"; d="scan'208";a="150931236"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2020 01:22:43 -0700
IronPort-SDR: PtPmET/DxmI+dhBk6edbVbRTIanNWI5TM1TCsv/6fNGjxP8O9D+AI8eZvLyLuCGrgnBdD8ELiT
 VlmJmldpKFbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,457,1589266800"; d="scan'208";a="324373095"
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.68.154])
 by orsmga008.jf.intel.com with ESMTP; 10 Aug 2020 01:22:43 -0700
Received: from platvala by thrakatuluk with local (Exim 4.92)
 (envelope-from <petri.latvala@intel.com>)
 id 1k534s-0000Qr-F8; Mon, 10 Aug 2020 11:22:42 +0300
Date: Mon, 10 Aug 2020 11:22:42 +0300
From: Petri Latvala <petri.latvala@intel.com>
To: Zbigniew =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
Message-ID: <20200810082242.GH7444@platvala-desk.ger.corp.intel.com>
References: <20200806144529.140512-1-chris@chris-wilson.co.uk>
 <20200810080807.GA3956@zkempczy-mobl2>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200810080807.GA3956@zkempczy-mobl2>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] lib: Use unsigned gen for
 forward compatible tests
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBBdWcgMTAsIDIwMjAgYXQgMTA6MDk6NDZBTSArMDIwMCwgWmJpZ25pZXcgS2VtcGN6
ecWEc2tpIHdyb3RlOgo+IE9uIFRodSwgQXVnIDA2LCAyMDIwIGF0IDAzOjQ1OjI5UE0gKzAxMDAs
IENocmlzIFdpbHNvbiB3cm90ZToKPiA+IFVua25vd24sIHNvIGZ1dHVyZSwgZ2VuIGFyZSBtYXJr
ZWQgYXMgLTEgd2hpY2ggd2Ugd2FudCB0byB0cmVhdCBhcyAtMXUKPiA+IHNvIHRoYXQgYWx3YXlz
IHBhc3MgPj0gZ2VuIGNoZWNrcy4KPiAKPiBEbyB3ZSByZWFsbHkgd2FudCB0byBlbmFibGUgdGhl
IHRlc3RzIHdoZW4gcGxhdGZvcm0gaXMgbm90IGZ1bGx5Cj4gZW5hYmxlZCBpbiBJR1Q/CgpXaGF0
IGRvZXMgImZ1bGx5IGVuYWJsZWQiIG1lYW4/CgpJZiB0aGUgdGVzdCBpcyBjaGVja2luZyBmb3Ig
anVzdCAiZ2VuID4geCIsIHRoZSB0ZXN0IHNob3VsZCB3b3JrCmFscmVhZHkuIElmIHRoZSB0ZXN0
IGlzIGFsc28gY2hlY2tpbmcgZm9yICJnZW4gPCB5IiB0aGVuIHdlIGdldCBhCnNwdXJpb3VzIGZh
aWx1cmUsIGJ1dCBlaXRoZXIgd2F5IENJIGlzIGdvaW5nIHRvIHRlbGwgeW91IHRoYXQKc29tZXRo
aW5nIGlzIG5vdCBwYXNzaW5nLiBXaXRob3V0IHRoaXMgaXQgd2lsbCBiZSBhIHNraXAsIGFsb25n
IHdpdGgKc2tpcHBpbmcgaW4gdGhlIGNhc2UgdGhhdCBzaG91bGQganVzdCB3b3JrIGFscmVhZHkg
d2l0aG91dCBhY3R1YWwgdGVzdApjaGFuZ2VzLgoKCi0tIApQZXRyaSBMYXR2YWxhCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
