Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AE8710C7BB
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2019 12:05:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05CA5896FA;
	Thu, 28 Nov 2019 11:05:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70A8A896FA;
 Thu, 28 Nov 2019 11:05:47 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Nov 2019 03:05:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,253,1571727600"; d="scan'208";a="410660342"
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.68.154])
 by fmsmga006.fm.intel.com with ESMTP; 28 Nov 2019 03:05:45 -0800
Received: from platvala by thrakatuluk with local (Exim 4.91)
 (envelope-from <petri.latvala@intel.com>)
 id 1iaHcF-0002Xk-HP; Thu, 28 Nov 2019 13:05:43 +0200
Date: Thu, 28 Nov 2019 13:05:43 +0200
From: Petri Latvala <petri.latvala@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191128110543.GQ25209@platvala-desk.ger.corp.intel.com>
References: <20191128083451.3782143-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191128083451.3782143-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH i-g-t 1/2] Remove i915/gem_cpu_reloc
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBOb3YgMjgsIDIwMTkgYXQgMDg6MzQ6NTBBTSArMDAwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IFRoZSB0ZXN0IGRvZXMgbm90IGRvIHdoYXQgaXMgb24gdGhlIHRpbiBzaW5jZSB0aGUg
a2VybmVsIHNtYXJ0bHkKPiByZXBsYWNlcyB0aGUgc3RhbGxzIHdpdGggZ3B1IHJlbG9jYXRpb25z
LCBhbmQgYWxsIHRoZSB0ZXN0IGlzIHByb3ZpZGluZwo+IGlzIGEgdHJpdmlhbCBhbW91bnQgb2Yg
c3RyZXNzIGJleW9uZCBnZW1fZXhlY19yZWxvYy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBX
aWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiAtLS0KPiAgdGVzdHMvTWFrZWZpbGUu
c291cmNlcyAgICAgfCAgIDMgLQo+ICB0ZXN0cy9pOTE1L2dlbV9jcHVfcmVsb2MuYyB8IDMwOSAt
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gIHRlc3RzL21lc29uLmJ1aWxk
ICAgICAgICAgIHwgICAxIC0KClJlbW92ZSBpZ3RAZ2VtX2NwdV9yZWxvY0BiYXNpYyBmcm9tIGZh
c3QtZmVlZGJhY2sudGVzdGxpc3QgdG9vLgoKCi0tIApQZXRyaSBMYXR2YWxhCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
