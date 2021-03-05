Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B2D232E3E1
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Mar 2021 09:46:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC9D66EB16;
	Fri,  5 Mar 2021 08:46:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C8686EB16
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Mar 2021 08:46:02 +0000 (UTC)
IronPort-SDR: yciSZ18NB1fvQzKZwoxZ3/9d3paR19s6pwC4A7U053seMrU511bzWHe/t4OonZ2/O25TvlgvjC
 fq6iUoOzh7Pw==
X-IronPort-AV: E=McAfee;i="6000,8403,9913"; a="248994076"
X-IronPort-AV: E=Sophos;i="5.81,224,1610438400"; d="scan'208";a="248994076"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2021 00:45:55 -0800
IronPort-SDR: dU/2YYwbNvh8XKD5B4xwNYZpom8tO/KWEMpMsve0aX7FjZn9ZZ8NUz2TKyEdijCW5Vmjt58qk0
 FhOHzRLDpLmQ==
X-IronPort-AV: E=Sophos;i="5.81,224,1610438400"; d="scan'208";a="408214514"
Received: from jvonlan-mobl.ger.corp.intel.com (HELO localhost) ([10.249.40.2])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2021 00:45:50 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20210304170421.10901-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210304170421.10901-1-ville.syrjala@linux.intel.com>
Date: Fri, 05 Mar 2021 10:45:47 +0200
Message-ID: <87im66ng3o.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 0/4] drm/i915: Silence pipe tracepoint WARNs
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
Cc: Steven Rostedt <rostedt@goodmis.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAwNCBNYXIgMjAyMSwgVmlsbGUgU3lyamFsYSA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+IHdyb3RlOgo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+Cj4KPiBJIGJlbGlldmUgdGhpcyBzaG91bGQgc2lsZW5jZSB0aGUgV0FS
TiBzcGV3IGZyb20gdGhlCj4gcGlwZSBkaXNhYmxlIHRyYWNlcG9pbnQgU3RldmUgcmVwb3J0ZWQu
IEFuZCBJIHRvc3NlZCBpbgo+IGEgZmV3IG90aGVyIG1pbm9yIGltcHJvdmVtZW50cyBhcyB3ZWxs
LgoKT24gc29tZSBvZiB0aGUgcGF0Y2hlcyBJJ2xsIGp1c3QgaGF2ZSB0byB0YWtlIHlvdXIgd29y
ZCBmb3Igd2hhdCBpdCBzYXlzCmluIHRoZSBjb21taXQgbWVzc2FnZXMsIGJ1dCB0aGUgcGF0Y2hl
cyBkbyB3aGF0IHRoZXkgc2F5LiBPbiB0aGUgc2VyaWVzLAoKUmV2aWV3ZWQtYnk6IEphbmkgTmlr
dWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+CgoKPgo+IENjOiBTdGV2ZW4gUm9zdGVkdCA8cm9z
dGVkdEBnb29kbWlzLm9yZz4KPgo+IFZpbGxlIFN5cmrDpGzDpCAoNCk6Cj4gICBkcm0vaTkxNTog
TW92ZSBwaXBlIGVuYWJsZS9kaXNhYmxlIHRyYWNlcG9pbnRzIHRvCj4gICAgIGludGVsX2NydGNf
dmJsYW5rX3tvbixvZmZ9KCkKPiAgIGRybS9pOTE1OiBEb24ndCB0cnkgdG8gcXVlcnkgdGhlIGZy
YW1lIGNvdW50ZXIgZm9yIGRpc2FibGVkIHBpcGVzCj4gICBkcm0vaTkxNTogUmV0dXJuIHplcm8g
YXMgdGhlIHNjYW5saW5lIGNvdW50ZXIgZm9yIGRpc2FibGVkIHBpcGVzCj4gICBkcm0vaTkxNTog
Rml4IERTSSBURSBtYXhfdmJsYW5rX2NvdW50IGhhbmRsaW5nCj4KPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jcnRjLmMgICAgfCAyNCArKysrKysrKysrKysrKysrKy0tLQo+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8ICA4ICstLS0t
LS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyAgICAgICAgICAgICAgfCAgMiAr
LQo+ICAzIGZpbGVzIGNoYW5nZWQsIDIzIGluc2VydGlvbnMoKyksIDExIGRlbGV0aW9ucygtKQoK
LS0gCkphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
