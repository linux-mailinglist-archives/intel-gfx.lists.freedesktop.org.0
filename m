Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E363E2C37D
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2019 11:48:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EDE089FDD;
	Tue, 28 May 2019 09:48:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0975B89FDD
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2019 09:48:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 May 2019 02:48:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,521,1549958400"; d="scan'208";a="179149599"
Received: from linux.intel.com ([10.54.29.200])
 by fmsmga002.fm.intel.com with ESMTP; 28 May 2019 02:48:19 -0700
Received: from [10.237.72.73] (mperes-desk.fi.intel.com [10.237.72.73])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id 9135758001E;
 Tue, 28 May 2019 02:48:17 -0700 (PDT)
To: Chris Wilson <chris@chris-wilson.co.uk>,
 Petri Latvala <petri.latvala@intel.com>
References: <20190527183613.17076-1-michal.wajdeczko@intel.com>
 <155903540427.2573.16902107227143511776@skylake-alporthouse-com>
 <20190528094031.GQ22949@platvala-desk.ger.corp.intel.com>
 <155903675213.2573.1572948212701356584@skylake-alporthouse-com>
From: Martin Peres <martin.peres@linux.intel.com>
Message-ID: <2cfdccea-b7d3-f990-25e5-405e7d8b6cc2@linux.intel.com>
Date: Tue, 28 May 2019 12:48:13 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <155903675213.2573.1572948212701356584@skylake-alporthouse-com>
Content-Language: en-PH
Subject: Re: [Intel-gfx] [PATCH v5 00/17] GuC 32.0.3
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

T24gMjgvMDUvMjAxOSAxMjo0NSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgUGV0cmkg
TGF0dmFsYSAoMjAxOS0wNS0yOCAxMDo0MDozMSkKPj4gT24gVHVlLCBNYXkgMjgsIDIwMTkgYXQg
MTA6MjM6MjRBTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+Pj4gUXVvdGluZyBNaWNoYWwg
V2FqZGVjemtvICgyMDE5LTA1LTI3IDE5OjM1OjU2KQo+Pj4+IE5ldyBHdUMgZmlybXdhcmVzIChm
b3IgU0tMLCBCWFQsIEtCTCwgR0xLLCBJQ0wpIHdpdGggdXBkYXRlZCBBQkkgaW50ZXJmYWNlLgo+
Pj4KPj4+IEFsbCByZXZpZXdlZC9hY2tlZCwgYW5kIEkgdHJ1c3QgdGhlIGZhaWx1cmVzIHdpbGwg
YmUgZml4ZWQgaW4gdGltZSwgc28KPj4+IHB1c2hlZC4gVGhhbmtzLgo+Pj4gLUNocmlzCj4+Cj4+
Cj4+IEJ1dCB3aXRob3V0IHRlbGxpbmcgTWFydGluIHRvIGZpbGUgY2lidWdsb2cgZmlsdGVycyBm
b3Iga25vd24gaXNzdWVzPwo+IAo+IGZpLWljbC1ndWMgc2hvdWxkIHJlbWFpbiBzdXBwcmVzc2Vk
Lgo+IGZpLWFwbC1ndWMgc2hvdWxkIGJlIHJldGlyZWQuCgpUaGlzIGlzIHNvbWV0aGluZyB0byBi
ZSBkaXNjdXNzZWQgKmJlZm9yZSogbWVyZ2luZy4gSSBzdXBwcmVzc2VkIGFsbCB0aGUKZ3VjIHBs
YXRmb3JtcyAoYXBsLCBjZmwsIGljbCwga2JsLCBza2wpLgoKTGV0J3MgaG9wZSB0aGF0IGl0IGRv
ZXMgbm90IGFmZmVjdCB0aGUgc2hhcmRzLi4uCgpNYXJ0aW4KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
