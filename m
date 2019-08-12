Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E43789904
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Aug 2019 10:52:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FDA66E3C7;
	Mon, 12 Aug 2019 08:52:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E3126E3C7
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Aug 2019 08:52:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Aug 2019 01:52:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,376,1559545200"; d="scan'208";a="204640865"
Received: from amanna-mobl.gar.corp.intel.com (HELO [10.66.113.234])
 ([10.66.113.234])
 by fmsmga002.fm.intel.com with ESMTP; 12 Aug 2019 01:52:48 -0700
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190701062632.456-1-animesh.manna@intel.com>
 <87v9v6hdzn.fsf@intel.com>
From: Animesh Manna <animesh.manna@intel.com>
Message-ID: <9f9c7302-6cd5-80d8-b4da-340e7f94c4cf@intel.com>
Date: Mon, 12 Aug 2019 14:22:47 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <87v9v6hdzn.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH 00/15] DSB enablement.
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
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiA4LzkvMjAxOSAzOjEyIFBNLCBKYW5pIE5pa3VsYSB3cm90ZToKPiBPbiBNb24sIDAxIEp1
bCAyMDE5LCBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4gd3JvdGU6Cj4+
IERpc3BsYXkgU3RhdGUgQnVmZmVyIChEU0IpIGlzIGhhcmR3YXJlIGNhcGFiaWxpdHkgd2hpY2gg
YWxsb3dzCj4+IGRyaXZlciB0byBiYXRjaCBzdWJtaXQgSFcgcHJvZ3JhbW1pbmcuCj4+Cj4+IEFz
IHBhcnQgb2YgaW5pdGlhbCBlbmFibGVtZW50IGNvbW1vbiBhcGkgY3JlYXRlZCB3aGljaCBjdXJy
ZW50bHkgdXNlZAo+PiB0byBwcm9ncmFtIGdhbW1hIGx1dCBwcm9yYW1taW5nLgo+Pgo+PiBHb2lu
ZyBmb3J3YWQgRFNCIHN1cHBvcnQgY2FuIGJlIGFkZGVkIGZvciBIRFIgYW5kIGZsaXAgcmVsYXRl
ZCBvcGVyYXRpb24uCj4+Cj4+IEZldyBjaGFuZ2VzIG9mIHRoaXMgcGF0Y2ggc2VyaWVzIGlzIG5v
dCB0ZXN0ZWQsIHNlbmRpbmcgdmVyc2lvbiAxCj4+IGZvciBkZXNpZ24gcmV2aWV3LCB3aWxsIGJl
IHRlc3RpbmcgaW4gcGFyYWxsZWwuCj4gT3VyIENJIHJlcG9ydGVkIG9uIHRoZSBzYW1lIGRheSB0
aGF0IHRoaXMgc2VyaWVzIG9vcHNlcyBvbiBhIGxvdCBvZgo+IHBsYXRmb3Jtcy4gSGF2ZSB5b3Ug
aW52ZXN0aWdhdGVkIGFuZCBmaXhlZCB0aG9zZSBpc3N1ZXM/IFBsZWFzZSBwb3N0IHRoZQo+IGZp
eGVkIHNlcmllcy4KRm91bmQgdGhlIGlzc3VlIGFuZCBmaXhlZCBpdCAoY2hhbmdlcyBhZGRlZCBp
biAxNXRoIHBhdGNoKSwgaGF2ZSBzZW50IHRvIAp0cnlib3QsIHdpbGwgcG9zdCB0aGUgcGF0Y2hl
cyBzb29uLgoKUmVnYXJkcywKQW5pbWVzaAo+Cj4gQlIsCj4gSmFuaS4KPgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
