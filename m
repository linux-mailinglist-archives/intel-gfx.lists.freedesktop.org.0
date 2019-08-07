Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8350585456
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2019 22:12:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E29C89130;
	Wed,  7 Aug 2019 20:12:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 992F589130
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Aug 2019 20:12:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Aug 2019 13:12:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,358,1559545200"; d="scan'208";a="349887042"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga005.jf.intel.com with ESMTP; 07 Aug 2019 13:12:28 -0700
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.145.136])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x77KCR74028874; Wed, 7 Aug 2019 21:12:27 +0100
To: "Kumar Valsan, Prathap" <prathap.kumar.valsan@intel.com>
References: <20190807170034.8440-1-michal.wajdeczko@intel.com>
 <20190807170034.8440-3-michal.wajdeczko@intel.com>
 <20190807202129.GD3842@intel.com>
Date: Wed, 07 Aug 2019 22:12:26 +0200
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.z55420b2xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <20190807202129.GD3842@intel.com>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH 2/7] drm/i915/uc: HuC firmware can't be
 supported without GuC
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAwNyBBdWcgMjAxOSAyMjoyMToyOSArMDIwMCwgS3VtYXIgVmFsc2FuLCBQcmF0aGFw
ICAKPHByYXRoYXAua3VtYXIudmFsc2FuQGludGVsLmNvbT4gd3JvdGU6Cgo+IE9uIFdlZCwgQXVn
IDA3LCAyMDE5IGF0IDA1OjAwOjI5UE0gKzAwMDAsIE1pY2hhbCBXYWpkZWN6a28gd3JvdGU6Cj4+
IFRoZXJlIGlzIG5vIHBvaW50IGluIHNlbGVjdGluZyBIdUMgZmlybXdhcmUgaWYgR3VDIGlzIHVu
c3VwcG9ydGVkCj4+IG9yIGl0IHdhcyBhbHJlYWR5IGRpc2FibGVkLCBhcyB3ZSBuZWVkIEd1QyB0
byBhdXRoZW50aWNhdGUgSHVDLgo+Pgo+Cj4gV2UgYXJlIGNhbGxpbmcgIGludGVsX3VjX2luaXQo
KSBpcnJlc3BjdGl2ZSBvZiAgCj4gaW50ZWxfdWNfZmV0Y2hfZmlybXdhcmVzKCkgaXMKPiBzdWNj
ZXNzZnVsLiBJcyB0aGlzIG9rPwoKTm8gbmVlZCB0byBjaGFuZ2UgdGhpcywgYXMgaW50ZWxfZ3Vj
X2luaXQgKGFuZCBpbnRlbF9odWNfaW5pdCkKd2lsbCBjYWxsIGludGVsX3VjX2Z3X2luaXQoKSB3
aGljaCB3aWxsIHdpdGggLUVOT0VYRUMgaWYgZmlybXdhcmUKaXMgbm90IGF2YWlsYWJsZSAoYWth
IGZldGNoZWQpCgpNaWNoYWwKCj4KPiBUaGFua3MsCj4gUHJhdGhhcAo+PiBXaGlsZSBhcm91bmQs
IG1ha2UgdWNfZndfaW5pdF9lYXJseSB3b3JrIHdpdGhvdXQgZGlyZWN0IGFjY2Vzcwo+PiB0byB3
aG9sZSBpOTE1LCBwYXNzIG9ubHkgbmVlZGVkIHBsYXRmb3JtL3JldiBpbmZvLgo+Pgo+PiBTaWdu
ZWQtb2ZmLWJ5OiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4K
Pj4gQ2M6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRl
bC5jb20+Cj4+IENjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IEludGVsLWdmeCBtYWls
aW5nIGxpc3QKPj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+PiBodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeApfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
