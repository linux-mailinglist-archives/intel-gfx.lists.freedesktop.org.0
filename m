Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE8FE82D98
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2019 10:17:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64C716E32A;
	Tue,  6 Aug 2019 08:17:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A7216E32A
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Aug 2019 08:17:09 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Aug 2019 01:07:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,352,1559545200"; d="scan'208";a="325566291"
Received: from aquilante.fi.intel.com (HELO intel.intel) ([10.237.72.186])
 by orsmga004.jf.intel.com with ESMTP; 06 Aug 2019 01:07:11 -0700
Date: Tue, 6 Aug 2019 11:07:10 +0300
From: Andi Shyti <andi.shyti@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190806080710.GA30053@intel.intel>
References: <20190806074219.11043-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190806074219.11043-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Use drm_i915_private directly
 from drv_get_drvdata()
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

SGkgQ2hyaXMsCgpPbiBUdWUsIEF1ZyAwNiwgMjAxOSBhdCAwODo0MjoxOUFNICswMTAwLCBDaHJp
cyBXaWxzb24gd3JvdGU6Cj4gQXMgd2Ugc3RvcmUgYSBwb2ludGVyIHRvIGk5MTUgaW4gdGhlIGRy
dmRhdGEgZmllbGQgKGFzIHRoZSBwb2ludGVyIGlzIGJvdGgKPiBhbiBhbGlhcyB0byB0aGUgZHJt
X2RldmljZSBhbmQgZHJtX2k5MTVfcHJpdmF0ZSksIHdlIGNhbiB1c2UgdGhlIHN0b3JlZAo+IHBv
aW50ZXIgZGlyZWN0bHkgYXMgdGhlIGk5MTUgZGV2aWNlLgo+IAo+IHYyOiBTdG9yZSBhbmQgdXNl
IGk5MTUgaW5zaWRlIGRydl9nZXRfZHJ2ZGF0YSgpCj4gdjM6IE9ubHkgZXhwZWN0IGk5MTUgaW5z
aWRlIGRydl9nZXRfZHJ2ZGF0YSgpIHNvIGRyb3AgdGhlIGFzc3VtZWQKPiBpOTE1L2RybSBlcXVp
dmFsZW5jZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4KPiBDYzogQW5kaSBTaHl0aSA8YW5kaS5zaHl0aUBpbnRlbC5jb20+CgpSZXZp
ZXdlZC1ieTogQW5kaSBTaHl0aSA8YW5kaS5zaHl0aUBpbnRlbC5jb20+CgpUaGFua3MsCkFuZGkK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
