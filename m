Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 90DB7518D4
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jun 2019 18:39:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 026E1899D5;
	Mon, 24 Jun 2019 16:39:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D71C0896D8
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jun 2019 16:39:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jun 2019 09:39:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,412,1557212400"; d="scan'208";a="336552470"
Received: from tlim24-mobl1.gar.corp.intel.com (HELO [10.252.23.133])
 ([10.252.23.133])
 by orsmga005.jf.intel.com with ESMTP; 24 Jun 2019 09:39:42 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190624141630.11015-1-chris@chris-wilson.co.uk>
 <c3bd9bbe-5b4a-a07c-6a70-b5fbb0261ca7@intel.com>
 <156139201917.15678.143825887310833064@skylake-alporthouse-com>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <cfdec0ac-a437-2347-6779-a6621858e242@intel.com>
Date: Mon, 24 Jun 2019 17:39:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <156139201917.15678.143825887310833064@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Clear read/write domains for
 GPU clear
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

T24gMjQvMDYvMjAxOSAxNzowMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgTWF0dGhl
dyBBdWxkICgyMDE5LTA2LTI0IDE2OjUwOjQ4KQo+PiBPbiAyNC8wNi8yMDE5IDE1OjE2LCBDaHJp
cyBXaWxzb24gd3JvdGU6Cj4+PiBVcGRhdGUgdGhlIGRvbWFpbnMgZm9yIHRoZSB3cml0ZSB2aWEg
dGhlIEdQVSBzbyB0aGF0IHdlIGRvIG5vdAo+Pj4gc2hvcnRjaXJjdWl0IGFueSBzZXQtZG9tYWlu
IHdhaXQgYWZ0ZXJ3YXJkcy4KPj4KPj4gSSdtIGxvc3QuIEhvdyBkbyB3ZSBzaG9ydC1jaXJjdWl0
IHRoZSBzZXQtZG9tYWluIHdhaXQ/Cj4gCj4gSWYgd2UgbmV2ZXIgY2hhbmdlIHRoZSByZWFkX2Rv
bWFpbiwgdGhlbiB3ZSBtYXkgc2tpcCB0aGUgY2xmbHVzaCBvbgo+IHNldF9jcHVfZG9tYWluIHRo
dXMgbWlzc2luZyB0aGUgdXBkYXRlZCBjb250ZW50cyBvbiAhbGxjLgo+IAo+IFNvIHMvd2FpdC9j
bGZsdXNoLyB0byBiZSBwcmVjaXNlCgpSZXZpZXdlZC1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3
LmF1bGRAaW50ZWwuY29tPgoKPiAtQ2hyaXMKPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
