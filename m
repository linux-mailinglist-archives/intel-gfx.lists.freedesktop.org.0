Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9382DAE73F
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2019 11:44:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58E666E8A8;
	Tue, 10 Sep 2019 09:44:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC08F6E8A7
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2019 09:44:11 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Sep 2019 02:44:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,489,1559545200"; d="scan'208";a="214242792"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 10 Sep 2019 02:44:09 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 Sep 2019 12:44:08 +0300
Date: Tue, 10 Sep 2019 12:44:08 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <20190910094408.GD7482@intel.com>
References: <20190821133221.29456-1-maarten.lankhorst@linux.intel.com>
 <20190821133221.29456-9-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190821133221.29456-9-maarten.lankhorst@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 08/10] drm/i915: Do not add all planes when
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

T24gV2VkLCBBdWcgMjEsIDIwMTkgYXQgMDM6MzI6MTlQTSArMDIwMCwgTWFhcnRlbiBMYW5raG9y
c3Qgd3JvdGU6Cj4gV2UgY2Fubm90IHN3aXRjaCBiZXR3ZWVuIEhRIGFuZCBub3JtYWwgbW9kZSBv
biBHTEsrLCBzbyBvbmx5Cj4gYWRkIHBsYW5lcyBvbiBwbGF0Zm9ybXMgd2hlcmUgaXQgbWFrZXMg
c2Vuc2UuCj4gCj4gV2UgY291bGQgcHJvYmFibHkgcmVzdHJpY3QgaXQgZXZlbiBtb3JlIHRvIG9u
bHkgYWRkIHdoZW4gc2NhbGVyCj4gdXNlcnMgdG9nZ2xlcyBiZXR3ZWVuIDEgYW5kIDIsIGJ1dCBs
ZXRzIGp1c3QgbGVhdmUgaXQgZm9yIG5vdy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBNYWFydGVuIExh
bmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pYy5jIHwgNSArKysrKwo+ICAxIGZp
bGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2F0b21pYy5jCj4gaW5kZXggZDI2N2RkMzk0NzVkLi5jNDQyZTk3NjJjZTcg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWMu
Ywo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljLmMKPiBA
QCAtNDE4LDYgKzQxOCwxMSBAQCBpbnQgaW50ZWxfYXRvbWljX3NldHVwX3NjYWxlcnMoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+ICAJCQkgKi8KPiAgCQkJaWYgKCFwbGFuZSkg
ewo+ICAJCQkJc3RydWN0IGRybV9wbGFuZV9zdGF0ZSAqc3RhdGU7Cj4gKwo+ICsJCQkJLyogTm8g
bmVlZCB0byByZXByb2dyYW0sIHdlJ3JlIG5vdCBjaGFuZ2luZyBzY2FsaW5nIG1vZGUgKi8KPiAr
CQkJCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEwIHx8IElTX0dFTUlOSUxBS0UoZGV2X3By
aXYpKQo+ICsJCQkJCWNvbnRpbnVlOwo+ICsKClRoaXMgd2hvbGUgZnVuY3Rpb24gaXMga2luZGEg
bmFzdHkuIFNob3VsZCBwcm9iYWJseQpyZXdyaXRlIHRoZSB3aG9sZSB0aGluZy4uLgoKYWRkX2Fj
dGl2ZV9wbGFuZXMoKSB7Cglmb3JfZWFjaF9wbGFuZV9vbl9jcnRjKCkgewoJCWlmICghYWN0aXZl
KQoJCQljb250aW51ZTsKCQlnZXRfcGxhbmVfc3RhdGUoKTsKCQl1cGRhdGVfcGxhbmVzIHw9IHBs
YW5lOwoJfQp9Cgp1cGRhdGVfc2NhbGVycygpCnsKCWlmIChjYW5fdXNlX2hxKG9sZCkgIT0gY2Fu
X3VzZV9ocShuZXcpKQoJCWFkZF9hY3RpdmVfcGxhbmVzKCk7CgoJc2V0dXBfc2NhbGVyKGNydGMp
OwoKCWZvcl9lYWNoX3BsYW5lX2luX3N0YXRlKCkKCQlzZXR1cF9zY2FsZXIocGxhbmUpOwp9Cgpv
ciBzb21ldGhpbmcgbGlrZSB0aGF0PwoKU3RpbGwgZG9pbmcgdGhlIHNldHVwX3NjYWxlcigpIHBl
cmhhcHMgYSBiaXQgbmVlZGxlc3NseSBzb21ldGltZXMKYnV0IG1heWJlIGl0J2QgYmUgZ29vZCBl
bm91Z2guCgpBbHNvIGxvb2tzIGxpa2UgdGhlIGN1cnJlbnQgY29kZSBpcyBtaXNzaW5nIHRoZSB1
cGRhdGVfcGxhbmVzCmJpdG1hc2sgdXBkYXRlPwoKCj4gIAkJCQlwbGFuZSA9IGRybV9wbGFuZV9m
cm9tX2luZGV4KCZkZXZfcHJpdi0+ZHJtLCBpKTsKPiAgCQkJCXN0YXRlID0gZHJtX2F0b21pY19n
ZXRfcGxhbmVfc3RhdGUoZHJtX3N0YXRlLCBwbGFuZSk7Cj4gIAkJCQlpZiAoSVNfRVJSKHN0YXRl
KSkgewo+IC0tIAo+IDIuMjAuMQo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IEludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeAoKLS0gClZpbGxlIFN5cmrDpGzDpApJbnRlbApfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
