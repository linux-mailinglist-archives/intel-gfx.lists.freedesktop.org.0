Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E3DA10A536
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 21:15:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCE9B6E192;
	Tue, 26 Nov 2019 20:15:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8B556E192
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 20:15:10 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 12:15:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,246,1571727600"; d="scan'208";a="202833807"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 26 Nov 2019 12:15:07 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 26 Nov 2019 22:15:06 +0200
Date: Tue, 26 Nov 2019 22:15:06 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20191126201506.GH1208@intel.com>
References: <20191123005459.155383-1-jose.souza@intel.com>
 <20191123005459.155383-4-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191123005459.155383-4-jose.souza@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 4/7] drm/i915/dp: Power down sink before
 disable pipe/transcoder clock
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBOb3YgMjIsIDIwMTkgYXQgMDQ6NTQ6NTZQTSAtMDgwMCwgSm9zw6kgUm9iZXJ0byBk
ZSBTb3V6YSB3cm90ZToKPiBEaXNhYmxpbmcgcGlwZS90cmFuc2NvZGVyIGNsb2NrIGJlZm9yZSBw
b3dlciBkb3duIHNpbmsgY291bGQgY2F1c2UKPiBzaW5rIGxvc3Qgc2lnbmFsLCBjYXVzaW5nIGl0
IHRvIHRyaWdnZXIgYSBob3RwbHVnIHRvIG5vdGlmeSBzb3VyY2UKPiB0aGF0IGxpbmsgc2lnbmFs
IHdhcyBsb3N0Lgo+IAo+IENjOiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVs
LmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXph
QGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
ZGkuYyB8IDIgKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9u
KC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGRpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCj4gaW5kZXgg
ZDJmMGQzOTNkM2VlLi43ZDNhNmUzYzdmNTcgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGRpLmMKPiBAQCAtMzgwOCwxMiArMzgwOCwxMiBAQCBzdGF0aWMgdm9pZCBp
bnRlbF9kZGlfcG9zdF9kaXNhYmxlX2RwKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAo+
ICAJZW51bSBwaHkgcGh5ID0gaW50ZWxfcG9ydF90b19waHkoZGV2X3ByaXYsIGVuY29kZXItPnBv
cnQpOwo+ICAKPiAgCWlmICghaXNfbXN0KSB7Cj4gLQkJaW50ZWxfZGRpX2Rpc2FibGVfcGlwZV9j
bG9jayhvbGRfY3J0Y19zdGF0ZSk7Cj4gIAkJLyoKPiAgCQkgKiBQb3dlciBkb3duIHNpbmsgYmVm
b3JlIGRpc2FibGluZyB0aGUgcG9ydCwgb3RoZXJ3aXNlIHdlIGVuZAo+ICAJCSAqIHVwIGdldHRp
bmcgaW50ZXJydXB0cyBmcm9tIHRoZSBzaW5rIG9uIGRldGVjdGluZyBsaW5rIGxvc3MuCj4gIAkJ
ICovCj4gIAkJaW50ZWxfZHBfc2lua19kcG1zKGludGVsX2RwLCBEUk1fTU9ERV9EUE1TX09GRik7
Cj4gKwkJaW50ZWxfZGRpX2Rpc2FibGVfcGlwZV9jbG9jayhvbGRfY3J0Y19zdGF0ZSk7Cj4gIAl9
CgpUaGUgc3BlYyBzZWVtcyB0byBzYXkgdGhhdCB3ZSBzaG91bGQgZG8gdGhpcyBhZnRlciB0dXJu
aW5nIG9mZgpERElfQlVGX0NUTCBvbiB0Z2wrLgoKPiAgCj4gIAlpbnRlbF9kaXNhYmxlX2RkaV9i
dWYoZW5jb2Rlciwgb2xkX2NydGNfc3RhdGUpOwo+IC0tIAo+IDIuMjQuMAo+IAo+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdAo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAoKLS0gClZpbGxlIFN5
cmrDpGzDpApJbnRlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
