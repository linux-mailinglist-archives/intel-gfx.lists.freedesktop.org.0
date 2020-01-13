Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ECAF139087
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2020 13:00:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3F5D892F0;
	Mon, 13 Jan 2020 12:00:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0037A6E08C
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jan 2020 12:00:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jan 2020 04:00:04 -0800
X-IronPort-AV: E=Sophos;i="5.69,428,1571727600"; d="scan'208";a="224973188"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jan 2020 04:00:01 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20200109220547.23817-1-stanislav.lisovskiy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200109220547.23817-1-stanislav.lisovskiy@intel.com>
Date: Mon, 13 Jan 2020 13:59:58 +0200
Message-ID: <87o8v7murl.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: Bump up CDCLK to eliminate
 underruns on TGL
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAxMCBKYW4gMjAyMCwgU3RhbmlzbGF2IExpc292c2tpeSA8c3RhbmlzbGF2Lmxpc292
c2tpeUBpbnRlbC5jb20+IHdyb3RlOgo+IFRoZXJlIHNlZW1zIHRvIGJlIHNvbWUgdW5kb2N1bWVu
dGVkIGJhbmR3aWR0aAo+IGJvdHRsZW5lY2svZGVwZW5kZW5jeSB3aGljaCBzY2FsZXMgd2l0aCBD
RENMSywKPiBjYXVzaW5nIEZJRk8gdW5kZXJydW5zIHdoZW4gQ0RDTEsgaXMgdG9vIGxvdywKPiBl
dmVuIHdoZW4gaXQncyBjb3JyZWN0IGZyb20gQlNwZWMgcG9pbnQgb2Ygdmlldy4KPgo+IEN1cnJl
bnRseSBmb3IgVEdMIHBsYXRmb3JtcyB3ZSBjYWxjdWxhdGUKPiBtaW5fY2RjbGsgaW5pdGlhbGx5
IGJhc2VkIG9uIHBpeGVsX3JhdGUgZGl2aWRlZAo+IGJ5IDIsIGFjY291bnRpbmcgZm9yIGFsc28g
cGxhbmUgcmVxdWlyZW1lbnRzLAo+IGhvd2V2ZXIgaW4gc29tZSBjYXNlcyB0aGUgbG93ZXN0IHBv
c3NpYmxlIENEQ0xLCj4gZG9lc24ndCB3b3JrIGFuZCBjYXVzaW5nIHRoZSB1bmRlcnJ1bnMuCj4g
V2UndmUgZm91bmQgZXhwZXJpbWVudGFsbHkgdGhhdCByYWlzaW5nIGNkY2xrIHRvCj4gYXQgbGVh
c3QgIHBpeGVsX3JhdGUgKHJhdGhlciB0aGFuIHBpeGVsX3JhdGUvMikKPiBlbGltaW5hdGVzIHRo
ZXNlIHVuZGVycnVucywgc28gbGV0J3MgdXNlIHRoaXMgYXMgYQo+IHRlbXBvcmFyeSB3b3JrYXJv
dW5kIHVudGlsIHRoZSBoYXJkd2FyZSB0ZWFtCj4gY2FuIHN1Z2dlc3QgYSBtb3JlIHByZWNpc2Ug
cmVtZWR5Lgo+Cj4gRXhwbGljaXRseSBzdGF0aW5nIGhlcmUgdGhhdCB0aGlzIHNlZW1zIHRvIGJl
IGN1cnJlbnRseQo+IHJhdGhlciBhIEhhY2ssIHRoYW4gZmluYWwgc29sdXRpb24uCj4KPiB2Mjog
VXNlIGNsYW1wIG9wZXJhdGlvbiBpbnN0ZWFkIG9mIG1pbihNYXR0IFJvcGVyKQo+Cj4gdjM6IC0g
Rml4ZWQgY29tbWl0IG1lc3NhZ2UoTWF0dCBSb3BlcikKPiAgICAgLSBOb3cgdXNpbmcgcGl4ZWxf
cmF0ZSBpbnN0ZWFkIG9mIG1heF9jZGNsayhKYW5pIE5pa3VsYSkKPiAgICAgLSBTd2l0Y2hlZCB0
byBtYXggZnJvbSBjbGFtcChWaWxsZSBTeXJqw6Rsw6QpCj4gICAgIEhvcGVmdWxseSB0aGlzIGh5
YnJpZCBzYXRpc2ZpZXMgZXZlcnlvbmUgOikKPgo+IFJldmlld2VkLWJ5OiBNYXR0IFJvcGVyIDxt
YXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFN0YW5pc2xhdiBMaXNv
dnNraXkgPHN0YW5pc2xhdi5saXNvdnNraXlAaW50ZWwuY29tPgo+IENsb3NlczogaHR0cHM6Ly9n
aXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvNDAyCgpQdXNoZWQgdG8gZGlu
cSwgdGhhbmtzIGZvciB0aGUgcGF0Y2ggYW5kIHJldmlldy4KCkFuZCBub3cgdG8gZmlndXJlIG91
dCB0aGUgcGVybWFuZW50IGZpeCEKCkJSLApKYW5pLgoKCgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMgfCAxMiArKysrKysrKysrKysKPiAgMSBmaWxl
IGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2NkY2xrLmMKPiBpbmRleCA3ZDFhYjFlNWI3YzMuLjBjZTU5MjYwMDZjYSAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMKPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMKPiBAQCAtMjAw
NCw2ICsyMDA0LDE4IEBAIGludCBpbnRlbF9jcnRjX2NvbXB1dGVfbWluX2NkY2xrKGNvbnN0IHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQo+ICAJLyogQWNjb3VudCBmb3IgYWRk
aXRpb25hbCBuZWVkcyBmcm9tIHRoZSBwbGFuZXMgKi8KPiAgCW1pbl9jZGNsayA9IG1heChpbnRl
bF9wbGFuZXNfbWluX2NkY2xrKGNydGNfc3RhdGUpLCBtaW5fY2RjbGspOwo+ICAKPiArCS8qCj4g
KwkgKiBIQUNLLiBDdXJyZW50bHkgZm9yIFRHTCBwbGF0Zm9ybXMgd2UgY2FsY3VsYXRlCj4gKwkg
KiBtaW5fY2RjbGsgaW5pdGlhbGx5IGJhc2VkIG9uIHBpeGVsX3JhdGUgZGl2aWRlZAo+ICsJICog
YnkgMiwgYWNjb3VudGluZyBmb3IgYWxzbyBwbGFuZSByZXF1aXJlbWVudHMsCj4gKwkgKiBob3dl
dmVyIGluIHNvbWUgY2FzZXMgdGhlIGxvd2VzdCBwb3NzaWJsZSBDRENMSwo+ICsJICogZG9lc24n
dCB3b3JrIGFuZCBjYXVzaW5nIHRoZSB1bmRlcnJ1bnMuCj4gKwkgKiBFeHBsaWNpdGx5IHN0YXRp
bmcgaGVyZSB0aGF0IHRoaXMgc2VlbXMgdG8gYmUgY3VycmVudGx5Cj4gKwkgKiByYXRoZXIgYSBI
YWNrLCB0aGFuIGZpbmFsIHNvbHV0aW9uLgo+ICsJICovCj4gKwlpZiAoSVNfVElHRVJMQUtFKGRl
dl9wcml2KSkKPiArCQltaW5fY2RjbGsgPSBtYXgobWluX2NkY2xrLCAoaW50KWNydGNfc3RhdGUt
PnBpeGVsX3JhdGUpOwo+ICsKPiAgCWlmIChtaW5fY2RjbGsgPiBkZXZfcHJpdi0+bWF4X2NkY2xr
X2ZyZXEpIHsKPiAgCQlEUk1fREVCVUdfS01TKCJyZXF1aXJlZCBjZGNsayAoJWQga0h6KSBleGNl
ZWRzIG1heCAoJWQga0h6KVxuIiwKPiAgCQkJICAgICAgbWluX2NkY2xrLCBkZXZfcHJpdi0+bWF4
X2NkY2xrX2ZyZXEpOwoKLS0gCkphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGlj
cyBDZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
