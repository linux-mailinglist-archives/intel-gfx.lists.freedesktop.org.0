Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9131ABD780
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2019 06:55:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CABA18995F;
	Wed, 25 Sep 2019 04:55:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 485E58995F
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2019 04:55:22 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Sep 2019 21:55:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,546,1559545200"; d="scan'208";a="389098400"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.135])
 by fmsmga005.fm.intel.com with ESMTP; 24 Sep 2019 21:55:21 -0700
Date: Tue, 24 Sep 2019 21:55:31 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <20190925045531.GN1869@mdroper-desk1.amr.corp.intel.com>
References: <20190920114235.22411-1-maarten.lankhorst@linux.intel.com>
 <20190920114235.22411-9-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190920114235.22411-9-maarten.lankhorst@linux.intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH 09/23] drm/i915: Do not add all planes when
 checking scalers on glk+
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

T24gRnJpLCBTZXAgMjAsIDIwMTkgYXQgMDE6NDI6MjFQTSArMDIwMCwgTWFhcnRlbiBMYW5raG9y
c3Qgd3JvdGU6Cj4gV2UgY2Fubm90IHN3aXRjaCBiZXR3ZWVuIEhRIGFuZCBub3JtYWwgbW9kZSBv
biBHTEsrLCBzbyBvbmx5Cj4gYWRkIHBsYW5lcyBvbiBwbGF0Zm9ybXMgd2hlcmUgaXQgbWFrZXMg
c2Vuc2UuCj4gCj4gV2UgY291bGQgcHJvYmFibHkgcmVzdHJpY3QgaXQgZXZlbiBtb3JlIHRvIG9u
bHkgYWRkIHdoZW4gc2NhbGVyCj4gdXNlcnMgdG9nZ2xlcyBiZXR3ZWVuIDEgYW5kIDIsIGJ1dCBs
ZXRzIGp1c3QgbGVhdmUgaXQgZm9yIG5vdy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBNYWFydGVuIExh
bmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pYy5jIHwgNSArKysrKwo+ICAxIGZp
bGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2F0b21pYy5jCj4gaW5kZXggMTU4NTk0ZTY0YmI5Li5jNTBlMGIyMThiZDYg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWMu
Ywo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljLmMKPiBA
QCAtNDIxLDYgKzQyMSwxMSBAQCBpbnQgaW50ZWxfYXRvbWljX3NldHVwX3NjYWxlcnMoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+ICAJCQkgKi8KPiAgCQkJaWYgKCFwbGFuZSkg
ewo+ICAJCQkJc3RydWN0IGRybV9wbGFuZV9zdGF0ZSAqc3RhdGU7Cj4gKwo+ICsJCQkJLyogTm8g
bmVlZCB0byByZXByb2dyYW0sIHdlJ3JlIG5vdCBjaGFuZ2luZyBzY2FsaW5nIG1vZGUgKi8KPiAr
CQkJCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEwIHx8IElTX0dFTUlOSUxBS0UoZGV2X3By
aXYpKQo+ICsJCQkJCWNvbnRpbnVlOwo+ICsKCldlIGNvdWxkIHByb2JhYmx5IGp1c3QgY29tYmlu
ZSB0aGlzIGludG8gdGhlIGV4aXN0aW5nICFwbGFuZSBjb25kaXRpb24KYW5kIGVuaGFuY2UgdGhl
IGNvbW1lbnQgYWJvdmUgdGhhdCB0byBzYXkgIk5vdGUgdGhhdCBHTEsrIHNjYWxlcnMgZG9uJ3QK
aGF2ZSBhIEhRIG1vZGUgc28gdGhpcyBpc24ndCBuZWNlc3Nhcnkgb24gdGhvc2UgcGxhdGZvcm1z
LiIKCkVpdGhlciB3YXksCgpSZXZpZXdlZC1ieTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVy
QGludGVsLmNvbT4KCgo+ICAJCQkJcGxhbmUgPSBkcm1fcGxhbmVfZnJvbV9pbmRleCgmZGV2X3By
aXYtPmRybSwgaSk7Cj4gIAkJCQlzdGF0ZSA9IGRybV9hdG9taWNfZ2V0X3BsYW5lX3N0YXRlKGRy
bV9zdGF0ZSwgcGxhbmUpOwo+ICAJCQkJaWYgKElTX0VSUihzdGF0ZSkpIHsKPiAtLSAKPiAyLjIw
LjEKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+
IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngKCi0tIApNYXR0IFJvcGVyCkdyYXBoaWNzIFNvZnR3YXJlIEVuZ2luZWVyClZUVC1PU0dDIFBs
YXRmb3JtIEVuYWJsZW1lbnQKSW50ZWwgQ29ycG9yYXRpb24KKDkxNikgMzU2LTI3OTUKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
