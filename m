Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BEF43DA5CE
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2019 08:55:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B70CD6E44E;
	Thu, 17 Oct 2019 06:55:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C23C6E44E
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Oct 2019 06:55:35 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Oct 2019 23:55:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,306,1566889200"; d="scan'208";a="396158427"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.154])
 by fmsmga005.fm.intel.com with ESMTP; 16 Oct 2019 23:55:33 -0700
Date: Thu, 17 Oct 2019 12:25:38 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20191017065538.GA4730@intel.com>
References: <20191010145127.7487-1-ville.syrjala@linux.intel.com>
 <20191010145127.7487-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191010145127.7487-2-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915:
 s/hdcp2_hdmi_msg_data/hdcp2_hdmi_msg_timeout/
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

T24gMjAxOS0xMC0xMCBhdCAxNzo1MToyNCArMDMwMCwgVmlsbGUgU3lyamFsYSB3cm90ZToKPiBG
cm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+IAo+
IFRoZSBhcnJheSBpcyB0aGVyZSBvbmx5IGZvciB0aW1lb3V0LCAiZGF0YSIgZG9lc24ndCBtZWFu
IGFueXRoaW5nCj4gc28gbGV0J3MgcmVuYW1lIHRoZSB0aGluZyB0byBiZSBtb3JlIGRlc2NyaXB0
aXZlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+Ckxvb2tzIGdvb2QgdG8gbWUuCgpSZXZpZXdlZC1ieTogUmFtYWxpbmdh
bSBDIDxyYW1hbGluZ2FtLmNAaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2hkbWkuYyB8IDE0ICsrKysrKystLS0tLS0tCj4gIDEgZmlsZSBjaGFu
Z2VkLCA3IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMKPiBpbmRleCAwYTY4NDZjNWJhOTUuLjEzYzU4OGFl
ODhhNCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hk
bWkuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jCj4g
QEAgLTE1MjcsMTMgKzE1MjcsMTMgQEAgYm9vbCBpbnRlbF9oZG1pX2hkY3BfY2hlY2tfbGluayhz
dHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICppbnRlbF9kaWdfcG9ydCkKPiAgCXJldHVybiB0cnVl
Owo+ICB9Cj4gIAo+IC1zdHJ1Y3QgaGRjcDJfaGRtaV9tc2dfZGF0YSB7Cj4gK3N0cnVjdCBoZGNw
Ml9oZG1pX21zZ190aW1lb3V0IHsKPiAgCXU4IG1zZ19pZDsKPiAgCXUzMiB0aW1lb3V0Owo+ICAJ
dTMyIHRpbWVvdXQyOwo+ICB9Owo+ICAKPiAtc3RhdGljIGNvbnN0IHN0cnVjdCBoZGNwMl9oZG1p
X21zZ19kYXRhIGhkY3AyX21zZ19kYXRhW10gPSB7Cj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgaGRj
cDJfaGRtaV9tc2dfdGltZW91dCBoZGNwMl9tc2dfdGltZW91dFtdID0gewo+ICAJeyBIRENQXzJf
Ml9BS0VfSU5JVCwgMCwgMCB9LAo+ICAJeyBIRENQXzJfMl9BS0VfU0VORF9DRVJULCBIRENQXzJf
Ml9DRVJUX1RJTUVPVVRfTVMsIDAgfSwKPiAgCXsgSERDUF8yXzJfQUtFX05PX1NUT1JFRF9LTSwg
MCwgMCB9LAo+IEBAIC0xNTY0LDEyICsxNTY0LDEyIEBAIHN0YXRpYyBpbnQgZ2V0X2hkY3AyX21z
Z190aW1lb3V0KHU4IG1zZ19pZCwgYm9vbCBpc19wYWlyZWQpCj4gIHsKPiAgCWludCBpOwo+ICAK
PiAtCWZvciAoaSA9IDA7IGkgPCBBUlJBWV9TSVpFKGhkY3AyX21zZ19kYXRhKTsgaSsrKQo+IC0J
CWlmIChoZGNwMl9tc2dfZGF0YVtpXS5tc2dfaWQgPT0gbXNnX2lkICYmCj4gKwlmb3IgKGkgPSAw
OyBpIDwgQVJSQVlfU0laRShoZGNwMl9tc2dfdGltZW91dCk7IGkrKykKPiArCQlpZiAoaGRjcDJf
bXNnX3RpbWVvdXRbaV0ubXNnX2lkID09IG1zZ19pZCAmJgo+ICAJCSAgICAobXNnX2lkICE9IEhE
Q1BfMl8yX0FLRV9TRU5EX0hQUklNRSB8fCBpc19wYWlyZWQpKQo+IC0JCQlyZXR1cm4gaGRjcDJf
bXNnX2RhdGFbaV0udGltZW91dDsKPiAtCQllbHNlIGlmIChoZGNwMl9tc2dfZGF0YVtpXS5tc2df
aWQgPT0gbXNnX2lkKQo+IC0JCQlyZXR1cm4gaGRjcDJfbXNnX2RhdGFbaV0udGltZW91dDI7Cj4g
KwkJCXJldHVybiBoZGNwMl9tc2dfdGltZW91dFtpXS50aW1lb3V0Owo+ICsJCWVsc2UgaWYgKGhk
Y3AyX21zZ190aW1lb3V0W2ldLm1zZ19pZCA9PSBtc2dfaWQpCj4gKwkJCXJldHVybiBoZGNwMl9t
c2dfdGltZW91dFtpXS50aW1lb3V0MjsKPiAgCj4gIAlyZXR1cm4gLUVJTlZBTDsKPiAgfQo+IC0t
IAo+IDIuMjEuMAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
