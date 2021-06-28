Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 675003B5CE2
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Jun 2021 13:01:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 921646E429;
	Mon, 28 Jun 2021 11:01:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8C206E424;
 Mon, 28 Jun 2021 11:01:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10028"; a="206105459"
X-IronPort-AV: E=Sophos;i="5.83,305,1616482800"; d="scan'208";a="206105459"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2021 04:01:04 -0700
X-IronPort-AV: E=Sophos;i="5.83,305,1616482800"; d="scan'208";a="454465495"
Received: from danielmi-mobl2.ger.corp.intel.com (HELO [10.249.254.242])
 ([10.249.254.242])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2021 04:01:02 -0700
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
References: <20210628092106.55270-1-thomas.hellstrom@linux.intel.com>
 <15bf15c2-3a0c-00b2-e1bc-7b329964e60b@intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <f9cd5da7-ffa5-a9ee-c0b9-d826b0c81cc4@linux.intel.com>
Date: Mon, 28 Jun 2021 13:01:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <15bf15c2-3a0c-00b2-e1bc-7b329964e60b@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: Reinstate the mmap ioctl for
 some platforms
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDYvMjgvMjEgMTI6NTkgUE0sIE1hdHRoZXcgQXVsZCB3cm90ZToKPiBPbiAyOC8wNi8yMDIx
IDEwOjIxLCBUaG9tYXMgSGVsbHN0csO2bSB3cm90ZToKPj4gUmVpbnN0YXRlIHRoZSBtbWFwIGlv
Y3RsIGZvciBhbGwgY3VycmVudCBpbnRlZ3JhdGVkIHBsYXRmb3Jtcy4KPj4gVGhlIGludGVudGlv
biB3YXMgcmVhbGx5IHRvIGhhdmUgaXQgZGlzYWJsZWQgZm9yIGRpc2NyZXRlIGdyYXBoaWNzCj4+
IHdoZXJlIHdlIGVuZm9yY2UgYSBzaW5nbGUgbW1hcCBtb2RlLgo+Pgo+PiBUaGlzIGZpeGVzIG1l
ZGlhIG9uIHJrbC9hZGwuCj4+Cj4+IHYyOgo+PiAtIEFkZGVkIGEgUi1CLgo+PiAtIEZpeGVkIHVw
IHRoZSBjb2RlIGNvbW1lbnQgYSBiaXQuCj4+IHYzOgo+PiAtIEFkZGVkIGFuIEEtQi4KPj4gLSBQ
b2ludCBvdXQgaW4gdGhlIGNvbW1pdCBtZXNzYWdlIHRoYXQgdGhlcmUgd2FzIGFuIGlzc3VlIHdp
dGggbWVkaWEgb24KPj4gwqDCoCBya2wvYWRsLgo+Pgo+PiBGaXhlczogMzVjYmQ5MWViNTQxICgi
ZHJtL2k5MTU6IERpc2FibGUgbW1hcCBpb2N0bCBmb3IgZ2VuMTIrIikKPj4gU2lnbmVkLW9mZi1i
eTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPgo+
PiBSZXZpZXdlZC1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgo+PiBB
Y2tlZC1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KPgo+IEkgYWxy
ZWFkeSBwdXNoZWQgdjIgb2YgdGhpcyBsYXN0IHdlZWsgd2l0aCB0aGUgZm9sbG93aW5nIGFtZW5k
ZWQ6Cj4KPiAiVGhpcyB3YXMgcmVwb3J0ZWQgdG8gYnJlYWsgQURMLVAgd2l0aCB0aGUgbWVkaWEg
c3RhY2ssIHdoaWNoIHdhcyBub3QgCj4gdGhlIGludGVudGlvbi4gQWx0aG91Z2ggbG9uZ2VyIHRl
cm0gd2UgZG8gc3RpbGwgcGxhbiB0byBzdW5zZXQgdGhpcyAKPiBpb2N0bCBldmVuIGZvciBpbnRl
Z3JhdGVkLCBpbiBmYXZvdXIgb2YgdXNpbmcgbW1hcF9vZmZzZXQgaW5zdGVhZC4iCj4KQWgsIE9L
LgoKVGhhbmtzLgoKVGhvbWFzCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4Cg==
