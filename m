Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EBDA66B9D
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 13:28:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD0246E34C;
	Fri, 12 Jul 2019 11:28:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 146DC6E34C
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jul 2019 11:28:56 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jul 2019 04:28:55 -0700
X-IronPort-AV: E=Sophos;i="5.63,482,1557212400"; d="scan'208";a="171532082"
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com) ([10.7.196.65])
 by orsmga006-auth.jf.intel.com with
 ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Jul 2019 04:28:55 -0700
Date: Fri, 12 Jul 2019 04:29:31 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Michal Wajdeczko <michal.wajdeczko@intel.com>
Message-ID: <20190712112931.GD12992@intel.com>
References: <20190712111445.21040-1-michal.wajdeczko@intel.com>
 <20190712111445.21040-3-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190712111445.21040-3-michal.wajdeczko@intel.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/guc: Turn on GuC/HuC auto mode
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBKdWwgMTIsIDIwMTkgYXQgMTE6MTQ6NDVBTSArMDAwMCwgTWljaGFsIFdhamRlY3pr
byB3cm90ZToKPiBVc2luZyAiZW5hYmxlX2d1YyIgbW9kcGFyYW0gYXV0byBtb2RlICgtMSkgd2ls
bCBsZXQgZHJpdmVyCj4gZGVjaWRlIG9uIHdoaWNoIHBsYXRmb3JtcyBhbmQgaW4gd2hpY2ggY29u
ZmlndXJhdGlvbiB3ZSB3YW50Cj4gdG8gdXNlIEd1Qy9IdUMgZmlybXdhcmVzLgo+IAo+IFRvZGF5
IGRyaXZlciB3aWxsIGVuYWJsZSBIdUMgZmlybXdhcmUgYXV0aGVudGljYXRpb24gYnkgR3VDCj4g
b25seSBvbiBHZW4xMSsgcGxhdGZvcm1zIGFzIEh1QyBmaXJtd2FyZSBpcyByZXF1aXJlZCB0byB1
bmxvY2sKPiBhZHZhbmNlZCB2aWRlbyBjb2RlY3MgaW4gbWVkaWEgZHJpdmVyLgo+IAo+IExlZ2Fj
eSBwbGF0Zm9ybXMgd2l0aCBHdUMvSHVDIGFyZSBub3QgYWZmZWN0ZWQgYnkgdGhpcyBjaGFuZ2UK
PiBhcyBmb3IgdGhlbSBkcml2ZXIgc3RpbGwgZGVmYXVsdHMgdG8gZGlzYWJsZWQoMCkgaW4gYXV0
byBtb2RlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpk
ZWN6a29AaW50ZWwuY29tPgo+IENjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29t
Pgo+IENjOiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+
Cj4gQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KPiBDYzogQ2hyaXMg
V2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IERhbmllbGUgQ2VyYW9sbyBT
cHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+CgpSZXZpZXdlZC1ieTogUm9k
cmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgoKPiAtLS0KPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9wYXJhbXMuaCB8IDIgKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0
aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcGFyYW1zLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5oCj4g
aW5kZXggZDI5YWRlM2I3ZGU2Li41NzM2YzU1Njk0ZmUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9wYXJhbXMuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcGFyYW1zLmgKPiBAQCAtNTQsNyArNTQsNyBAQCBzdHJ1Y3QgZHJtX3ByaW50ZXI7Cj4gIAlw
YXJhbShpbnQsIGRpc2FibGVfcG93ZXJfd2VsbCwgLTEpIFwKPiAgCXBhcmFtKGludCwgZW5hYmxl
X2lwcywgMSkgXAo+ICAJcGFyYW0oaW50LCBpbnZlcnRfYnJpZ2h0bmVzcywgMCkgXAo+IC0JcGFy
YW0oaW50LCBlbmFibGVfZ3VjLCAwKSBcCj4gKwlwYXJhbShpbnQsIGVuYWJsZV9ndWMsIC0xKSBc
Cj4gIAlwYXJhbShpbnQsIGd1Y19sb2dfbGV2ZWwsIC0xKSBcCj4gIAlwYXJhbShjaGFyICosIGd1
Y19maXJtd2FyZV9wYXRoLCBOVUxMKSBcCj4gIAlwYXJhbShjaGFyICosIGh1Y19maXJtd2FyZV9w
YXRoLCBOVUxMKSBcCj4gLS0gCj4gMi4xOS4yCj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
