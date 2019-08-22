Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 789D899123
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2019 12:44:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46C8989F6D;
	Thu, 22 Aug 2019 10:44:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E67B89F6D
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Aug 2019 10:44:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Aug 2019 03:44:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,416,1559545200"; d="scan'208";a="208114814"
Received: from jlahtine-desk.ger.corp.intel.com (HELO localhost)
 ([10.252.27.127])
 by fmsmga002.fm.intel.com with ESMTP; 22 Aug 2019 03:43:59 -0700
MIME-Version: 1.0
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
In-Reply-To: <20190816080503.28594-34-lucas.demarchi@intel.com>
References: <20190816080503.28594-1-lucas.demarchi@intel.com>
 <20190816080503.28594-34-lucas.demarchi@intel.com>
Message-ID: <156647063874.10396.5015522475144891007@jlahtine-desk.ger.corp.intel.com>
User-Agent: alot/0.7
Date: Thu, 22 Aug 2019 13:43:58 +0300
Subject: Re: [Intel-gfx] [PATCH 33/39] drm/i915/perf: add a parameter to
 control the size of OA buffer
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBMdWNhcyBEZSBNYXJjaGkgKDIwMTktMDgtMTYgMTE6MDQ6NTcpCj4gRnJvbTogTGlv
bmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29tPgo+IAo+IFRoZSB3
YXkgb3VyIGhhcmR3YXJlIGlzIGRlc2lnbmVkIGRvZXNuJ3Qgc2VlbSB0byBsZXQgdXMgdXNlIHRo
ZQo+IE1JX1JFQ09SRF9QRVJGX0NPVU5UIGNvbW1hbmQgd2l0aG91dCBzZXR0aW5nIHVwIGEgY2ly
Y3VsYXIgYnVmZmVyLgo+IAo+IEluIHRoZSBjYXNlIHdoZXJlIHRoZSB1c2VyIGRpZG4ndCByZXF1
ZXN0IE9BIHJlcG9ydHMgdG8gYmUgYXZhaWxhYmxlCj4gdGhyb3VnaCB0aGUgaTkxNSBwZXJmIHN0
cmVhbSwgd2UgY2FuIHNldCB0aGUgT0EgYnVmZmVyIHRvIHRoZSBtaW5pbXVtCj4gc2l6ZSB0byBh
dm9pZCBjb25zdW1pbmcgbWVtb3J5IHdoaWNoIHdvbid0IGJlIHVzZWQgYnkgdGhlIGRyaXZlci4K
PiAKPiBDYzogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29t
Pgo+IENjOiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cj4gU2lnbmVkLW9m
Zi1ieTogTGlvbmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29tPgo+
IFNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29t
Pgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYyB8IDk4ICsrKysrKysr
KysrKysrKysrKysrKy0tLS0tLS0tLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVn
LmggIHwgIDIgKwo+ICBpbmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJtLmggICAgICB8ICA3ICsrKwoK
QW55IHBhdGNoIHRvdWNoaW5nIGk5MTVfZHJtLmggc2hvdWxkIGhhdmUgYSBsaW5rIHRvIHRoZSBj
b3JyZXNwb25kaW5nCnVzZXJzcGFjZSBzZXJpZXMuCgpSZWdhcmRzLCBKb29uYXMKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
