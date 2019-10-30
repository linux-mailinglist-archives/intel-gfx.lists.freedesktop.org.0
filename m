Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B033FE9B98
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2019 13:34:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E91FC6E9C4;
	Wed, 30 Oct 2019 12:34:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72BD36E9C4
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2019 12:34:41 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Oct 2019 05:34:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,247,1569308400"; d="scan'208";a="230428818"
Received: from aquilante.fi.intel.com (HELO intel.intel) ([10.237.72.186])
 by fmsmga002.fm.intel.com with ESMTP; 30 Oct 2019 05:34:39 -0700
Date: Wed, 30 Oct 2019 14:34:38 +0200
From: Andi Shyti <andi.shyti@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191030123438.GA2901@intel.intel>
References: <20191030103827.2413-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191030103827.2413-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/gt: Always track callers to
 intel_rps_mark_interactive()
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

SGkgQ2hyaXMsCgpPbiBXZWQsIE9jdCAzMCwgMjAxOSBhdCAxMDozODoyM0FNICswMDAwLCBDaHJp
cyBXaWxzb24gd3JvdGU6Cj4gRHVyaW5nIHN0YXJ0dXAsIHdlIG1heSBmaW5kIG91cnNlbHZlcyBp
biBhbiBpbnRlcmVzdGluZyBwb3NpdGlvbiB3aGVyZQo+IHdlIGhhdmVuJ3QgZnVsbHkgZW5hYmxl
ZCBSUFMgYmVmb3JlIHRoZSBkaXNwbGF5IHN0YXJ0cyB0cnlpbmcgdG8gdXNlIGl0Lgo+IFRoaXMg
bWF5IGxlYWQgdG8gYW4gaW1iYWxhbmNlIGluIG91ciAiaW50ZXJhY3RpdmUiIGNvdW50ZXI6Cgp5
ZXMsIG1ha2VzIHNlbnNlISBUaGFua3MhCgpBY2tlZC1ieTogQW5kaSBTaHl0aSA8YW5kaS5zaHl0
aUBpbnRlbC5jb20+CgpBbmRpCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
