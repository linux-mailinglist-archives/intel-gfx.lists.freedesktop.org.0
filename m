Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 47747E64F6
	for <lists+intel-gfx@lfdr.de>; Sun, 27 Oct 2019 20:01:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 761456E2BE;
	Sun, 27 Oct 2019 19:01:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F01F6E095;
 Sun, 27 Oct 2019 19:01:20 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Oct 2019 12:01:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,237,1569308400"; d="scan'208";a="282754944"
Received: from rnyamang-mobl.ger.corp.intel.com (HELO intel.intel)
 ([10.252.2.244])
 by orsmga001.jf.intel.com with ESMTP; 27 Oct 2019 12:01:17 -0700
Date: Sun, 27 Oct 2019 21:01:17 +0200
From: Andi Shyti <andi.shyti@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191027184427.GA12997@intel.intel>
References: <20191026193456.19445-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191026193456.19445-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH i-g-t 1/2] lib: Restore i915.reset before
 testing it in igt_allow_hang()
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

SGkgQ2hyaXMsCgpPbiBTYXQsIE9jdCAyNiwgMjAxOSBhdCAwODozNDo1NVBNICswMTAwLCBDaHJp
cyBXaWxzb24gd3JvdGU6Cj4gaWd0X2FsbG93X2hhbmcoKSBjaGVja3MgdGhhdCB0aGUgR1BVIGNh
biBiZSByZXNldCBiZWZvcmUgYWxsb3dpbmcgdGhlCj4gdGVzdCB0byBjYXVzZSBhIEdQVSBoYW5n
ICh3aGljaCB3b3VsZCBuZWVkIHRoZSByZXNldCB0byByZWNvdmVyKS4KPiBIb3dldmVyLCBvdXIg
Y2hlY2tpbmcgZm9yIGFsbG93aW5nIGEgaGFuZyBkZXBlbmRzIG9uIGk5MTUucmVzZXQgd2hpY2gg
d2UKPiBsYXRlciByZXN0b3JlLiBEbyB0aGF0IHJlc3RvcmF0aW9uIGJlZm9yZSB0aGUgY2hlY2sg
c28gdGhhdCB0aGlzIHRlc3QgaXMKPiBub3QgYWZmZWN0ZWQgYnkgZWFybGllciBmYWlscy4KPiAK
PiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4K
CkFja2VkLWJ5OiBBbmRpIFNoeXRpIDxhbmRpLnNoeXRpQGludGVsLmNvbT4KCkFuZGkKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
