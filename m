Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A5A2E56FE
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Oct 2019 01:19:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB9DE6EBCA;
	Fri, 25 Oct 2019 23:19:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9ECAE6EBCA
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2019 23:19:40 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Oct 2019 16:19:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,230,1569308400"; d="scan'208";a="192687097"
Received: from ldmartin-desk1.jf.intel.com ([10.7.200.70])
 by orsmga008.jf.intel.com with ESMTP; 25 Oct 2019 16:19:35 -0700
Date: Fri, 25 Oct 2019 16:19:33 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20191025231933.xfjp6ut4p364ngjx@ldmartin-desk1.jf.intel.com>
References: <20191025230623.27829-1-matthew.d.roper@intel.com>
 <20191025230623.27829-5-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191025230623.27829-5-matthew.d.roper@intel.com>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20180716
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915: Provide more information on
 DP AUX failures
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBPY3QgMjUsIDIwMTkgYXQgMDQ6MDY6MjJQTSAtMDcwMCwgTWF0dCBSb3BlciB3cm90
ZToKPldlJ3JlIHNlZWluZyBzb21lIGZhaWx1cmVzIHdoZXJlIGFuIGF1eCB0cmFuc2FjdGlvbiBz
dGlsbCBzaG93cyBhcwo+J2J1c3knIHdlbGwgYWZ0ZXIgdGhlIHRpbWVvdXQgbGltaXQgdGhhdCB0
aGUgaGFyZHdhcmUgaXMgc3VwcG9zZWQgdG8KPmVuZm9yY2UuICBJbXByb3ZlIHRoZSBlcnJvciBt
ZXNzYWdlIHNvIHRoYXQgd2UgY2FuIHNlZSBleGFjdGx5IHdoaWNoIGF1eAo+Y2hhbm5lbCB0aGlz
IGVycm9yIGhhcHBlbmVkIG9uIGFuZCB3aGF0IHRoZSBzdGF0dXMgYml0cyB3ZXJlIGR1cmluZyB0
aGlzCj5jYXNlIHRoYXQgaXNuJ3Qgc3VwcG9zZWQgdG8gaGFwcGVuLgo+Cj5TaWduZWQtb2ZmLWJ5
OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgo+LS0tCj4gZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIHwgMyArKy0KPiAxIGZpbGUgY2hhbmdlZCwg
MiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4KPmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwLmMKPmluZGV4IDY1YmFiNDZmN2I0My4uMmI0OTE1YjVjZjUyIDEwMDY0NAo+
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCj4rKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKPkBAIC0xMTkwLDcgKzExOTAsOCBA
QCBpbnRlbF9kcF9hdXhfd2FpdF9kb25lKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApCj4gCXRy
YWNlX2k5MTVfcmVnX3J3KGZhbHNlLCBjaF9jdGwsIHN0YXR1cywgc2l6ZW9mKHN0YXR1cyksIHRy
dWUpOwo+Cj4gCWlmICghZG9uZSkKPi0JCURSTV9FUlJPUigiZHAgYXV4IGh3IGRpZCBub3Qgc2ln
bmFsIHRpbWVvdXQhXG4iKTsKPisJCURSTV9FUlJPUigiJXMgZGlkIG5vdCBjb21wbGV0ZSBvciB0
aW1lb3V0IHdpdGhpbiAxMG1zIChzdGF0dXMgMHglMDh4KVxuIiwKPisJCQkgIGludGVsX2RwLT5h
dXgubmFtZSA/OiAiQVVYIiwgc3RhdHVzKTsKCm1heWJlIGEgImNvbnN0IHRpbWVvdXRfbXNlYyA9
IDEwIiBhbmQgdXNlIGl0IGJvdGggaGVyZSBhbmQgYWJvdmUgdG8KYXZvaWQgbWlzbWF0Y2ggaW4g
ZnV0dXJlPyBIb3dldmVyIEknbSBub3Qgc3VyZSBpdCdzIHdvcnRoLi4uIHVwIHRvIHlvdS4KCmlu
dGVsX2RwX2F1eF9pbml0IHNldCBhdXgubmFtZSB0byBrYXNwcmludGYoKSBhbmQgd2UgY2FuJ3Qg
cG9zc2libHkKaW5pdGlhdGUgYXV4IHRyYW5zYWN0aW9ucyBiZWZvcmUgdGhhdCBpbml0LgppbnRl
bF9kcF9jb25uZWN0b3JfcmVnaXN0ZXIoKSBhbHNvIGRvZXNuJ3QgaGFuZGxlIGF1eC5uYW1lID09
IE5VTEwsIHNvCndoYXkgYXJlIHdlIGNoZWNraW5nIGl0IGhlZXJlPwoKTHVjYXMgRGUgTWFyY2hp
Cgo+ICN1bmRlZiBDCj4KPiAJcmV0dXJuIHN0YXR1czsKPi0tIAo+Mi4yMS4wCj4KPl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj5JbnRlbC1nZnggbWFpbGlu
ZyBsaXN0Cj5JbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj5odHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeApfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
