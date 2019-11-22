Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55A3C1073CA
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Nov 2019 15:01:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FD286E33E;
	Fri, 22 Nov 2019 14:01:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57AEE6E33E
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Nov 2019 14:01:55 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Nov 2019 06:01:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,229,1571727600"; d="scan'208";a="238612453"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 22 Nov 2019 06:01:52 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 22 Nov 2019 16:01:51 +0200
Date: Fri, 22 Nov 2019 16:01:51 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Message-ID: <20191122140151.GM1208@intel.com>
References: <20191122134603.11496-1-kai.vehmanen@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191122134603.11496-1-kai.vehmanen@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/dp: fix DP audio for PORT_A on
 gen12+
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

T24gRnJpLCBOb3YgMjIsIDIwMTkgYXQgMDM6NDY6MDJQTSArMDIwMCwgS2FpIFZlaG1hbmVuIHdy
b3RlOgo+IFN0YXJ0aW5nIHdpdGggZ2VuMTIsIFBPUlRfQSBjYW4gYmUgY29ubmVjdGVkIHRvIGEg
dHJhbnNjb2Rlcgo+IHdpdGggYXVkaW8gc3VwcG9ydC4gTW9kaWZ5IHRoZSBleGlzdGluZyBsb2dp
YyB0aGF0IGRpc2FibGVkCj4gYXVkaW8gb24gUE9SVF9BIHVuY29uZGl0aW9uYWxseS4KPiAKPiBT
aWduZWQtb2ZmLWJ5OiBLYWkgVmVobWFuZW4gPGthaS52ZWhtYW5lbkBsaW51eC5pbnRlbC5jb20+
Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyB8IDIgKy0K
PiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+IGluZGV4IDBhMDIzZjNlNjMzYi4u
YzUwY2Y4MDliNDRjIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHAuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAu
Ywo+IEBAIC0yMzQxLDcgKzIzNDEsNyBAQCBpbnRlbF9kcF9jb21wdXRlX2NvbmZpZyhzdHJ1Y3Qg
aW50ZWxfZW5jb2RlciAqZW5jb2RlciwKPiAgCQlyZXR1cm4gcmV0Owo+ICAKPiAgCXBpcGVfY29u
ZmlnLT5oYXNfZHJycyA9IGZhbHNlOwo+IC0JaWYgKElTX0c0WChkZXZfcHJpdikgfHwgcG9ydCA9
PSBQT1JUX0EpCj4gKwlpZiAoSVNfRzRYKGRldl9wcml2KSB8fCAoSU5URUxfR0VOKGRldl9wcml2
KSA8IDEyICYmIHBvcnQgPT0gUE9SVF9BKSkKCkdldHRpbmcgYSBiaXQgbWVzc3kuCgpIb292ZXJp
bmcgdGhhdCBpbnRvIHNvbWV0aGluZyBsaWtlCnN0YXRpYyBib29sIGludGVsX2RwX3BvcnRfaGFz
X2F1ZGlvKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyKTsKb3IKc3RhdGljIGJvb2wgaW50
ZWxfZHBfcG9ydF9oYXNfYXVkaW8oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBl
bnVtIHBvcnQgcG9ydCk7Cm1pZ2h0IGJlIG5pY2UuCgoKPiAgCQlwaXBlX2NvbmZpZy0+aGFzX2F1
ZGlvID0gZmFsc2U7Cj4gIAllbHNlIGlmIChpbnRlbF9jb25uX3N0YXRlLT5mb3JjZV9hdWRpbyA9
PSBIRE1JX0FVRElPX0FVVE8pCj4gIAkJcGlwZV9jb25maWctPmhhc19hdWRpbyA9IGludGVsX2Rw
LT5oYXNfYXVkaW87Cj4gLS0gCj4gMi4xNy4xCgotLSAKVmlsbGUgU3lyasOkbMOkCkludGVsCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
