Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D86EEC42C
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2019 15:04:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63EC86F7F7;
	Fri,  1 Nov 2019 14:04:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4427E6F7F7
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Nov 2019 14:04:56 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Nov 2019 07:04:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,255,1569308400"; d="scan'208";a="190967244"
Received: from aquilante.fi.intel.com (HELO intel.intel) ([10.237.72.186])
 by orsmga007.jf.intel.com with ESMTP; 01 Nov 2019 07:04:51 -0700
Date: Fri, 1 Nov 2019 16:04:50 +0200
From: Andi Shyti <andi.shyti@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191101140450.GC4215@intel.intel>
References: <20191030103827.2413-1-chris@chris-wilson.co.uk>
 <20191030103827.2413-2-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191030103827.2413-2-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.12.2 (2019-09-21)
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915/gt: Call intel_gt_sanitize()
 directly
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

SGkgQ2hyaXMsCgpPbiBXZWQsIE9jdCAzMCwgMjAxOSBhdCAxMDozODoyNEFNICswMDAwLCBDaHJp
cyBXaWxzb24gd3JvdGU6Cj4gQXNzdW1lIGFsbCByZXNwb25zaWJpbGl0eSBmb3Igb3BlcmF0aW5n
IG9uIHRoZSBIVyB0byBzYW5pdGl6ZSB0aGUgR1QKPiBzdGF0ZSB1cG9uIGxvYWQvcmVzdW1lIGlu
IGludGVsX2d0X3Nhbml0aXplKCkgaXRzZWxmLgo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgoKTG9va3MgY29ycmVjdCwgVGhhbmtzIAoK
UmV2aWV3ZWQtYnk6IEFuZGkgU2h5dGkgPGFuZGkuc2h5dGlAaW50ZWwuY29tPgoKQW5kaQoKUFMg
ZXZlbiB0aG91Z2ggSSBzZW50IHlvdSBteSByb2IgaW4gdGhlIHJldmVyc2Ugb3JkZXIsIEkgcmVh
ZAp0aGVtIGluIHRoZSBjb3JyZWN0IG9yZGVyIDpQCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
