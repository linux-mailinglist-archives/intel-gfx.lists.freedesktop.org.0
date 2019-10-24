Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 895F4E31F3
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 14:12:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2A7C6E334;
	Thu, 24 Oct 2019 12:12:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76C036E334
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 12:12:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Oct 2019 05:12:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,224,1569308400"; d="scan'208";a="398391137"
Received: from vslinko-mobl.ccr.corp.intel.com (HELO [10.252.56.7])
 ([10.252.56.7])
 by fmsmga005.fm.intel.com with ESMTP; 24 Oct 2019 05:12:48 -0700
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20191017132105.15528-5-maarten.lankhorst@linux.intel.com>
 <20191018081323.5836-1-maarten.lankhorst@linux.intel.com>
 <20191022181607.GQ1208@intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <642e2d68-bc7c-0301-3c19-f61ca8262a90@linux.intel.com>
Date: Thu, 24 Oct 2019 14:12:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191022181607.GQ1208@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Perform manual conversions for
 crtc uapi/hw split, v2.
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

T3AgMjItMTAtMjAxOSBvbSAyMDoxNiBzY2hyZWVmIFZpbGxlIFN5cmrDpGzDpDoKPiBPbiBGcmks
IE9jdCAxOCwgMjAxOSBhdCAxMDoxMzoyM0FNICswMjAwLCBNYWFydGVuIExhbmtob3JzdCB3cm90
ZToKPj4gaW50ZWxfZ2V0X2xvYWRfZGV0ZWN0X3BpcGUoKSBuZWVkcyB0byBzZXQgdWFwaSBhY3Rp
dmUsCj4+IHVhcGkgZW5hYmxlIGlzIHNldCBieSB0aGUgY2FsbCB0byBkcm1fYXRvbWljX3NldF9t
b2RlX2Zvcl9jcnRjKCksCj4+IHNvIHdlIGNhbiByZW1vdmUgaXQuCj4+Cj4+IGludGVsX3BpcGVf
Y29uZmlnX2NvbXBhcmUoKSBuZWVkcyB0byBsb29rIGF0IGh3IHN0YXRlLCBidXQgSSBkaWRuJ3QK
Pj4gY2hhbmdlIHNwYXRjaCB0byBsb29rIGF0IGl0LiBJdCdzIGVhc3kgZW5vdWdoIHRvIGRvIG1h
bnVhbGx5Lgo+Pgo+PiBpbnRlbF9hdG9taWNfY2hlY2soKSBkZWZpbml0ZWx5IG5lZWRzIHRvIGNo
ZWNrIGZvciB1YXBpIGVuYWJsZSwKPj4gb3RoZXJ3aXNlIGludGVsX21vZGVzZXRfcGlwZV9jb25m
aWcgY2Fubm90IGNvcHkgdWFwaSBzdGF0ZSB0byBody4KPiBXZSBzZWVtIHRvIGhhdmUgdGhyZWUg
dG90YWxseSBzZXBhcmF0ZSB0aGluZ3MgaW4gdGhpcyBvbmUgcGF0Y2guCgpUaGUgcGF0Y2ggaXMg
YWJvdXQgdGhlIG1hbnVhbCBjb252ZXJzaW9ucyB0aGF0IG5lZWQgdG8gYmUgZG9uZSBiZWNhdXNl
IHRoZSBhdXRvbWF0ZWQKCmNoZWNrcyBnZXQgdGhlbSB3cm9uZy4gU28gaXQgdG91Y2hlcyAzIHNw
b3RzIGJ1dCBkb2VzIDEgdGhpbmcsIGlmIHlvdSB3YW50IEkgY2FuIHNwbGl0IGl0IGludG8gMyBw
YXRjaGVzLgoKV2lsbCBkbyBzbyBpZiByZXF1aXJlZC4KCn5NYWFydGVuCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
