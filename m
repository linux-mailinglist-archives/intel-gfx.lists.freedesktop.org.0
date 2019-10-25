Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E793E568A
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Oct 2019 00:42:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0B166EBB9;
	Fri, 25 Oct 2019 22:42:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CB376EBB9
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2019 22:42:18 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Oct 2019 15:42:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,230,1569308400"; d="scan'208";a="210863572"
Received: from ldmartin-desk1.jf.intel.com ([10.7.200.70])
 by orsmga002.jf.intel.com with ESMTP; 25 Oct 2019 15:42:17 -0700
Date: Fri, 25 Oct 2019 15:42:15 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: =?utf-8?B?Sm9zw6k=?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20191025224215.nysh4ftke7ywpmsv@ldmartin-desk1.jf.intel.com>
References: <20191021223408.87344-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191021223408.87344-1-jose.souza@intel.com>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20180716
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tc: Clear DKL_TX_PMD_LANE_SUS
 before program voltage swing
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

T24gTW9uLCBPY3QgMjEsIDIwMTkgYXQgMDM6MzQ6MDhQTSAtMDcwMCwgSm9zZSBTb3V6YSB3cm90
ZToKPlRoaXMgc2VxdWVuY2Ugd2FzIHJlY2VudGx5IGFkZGVkIHRvIGZpeCBpbnRlcm5hbCBIVyBz
ZXF1ZW5jZXMgdG8KPnJlc2V0IFRDIHBvcnRzLgo+Cj5IU0RFUzogMTUwNzI4NzYxNAo+SFNERVM6
IDE0MDEwMDcxNDQ3Cj5CU3BlYzogNDkyOTIKPkNjOiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRl
bWFyY2hpQGludGVsLmNvbT4KPlNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEg
PGpvc2Uuc291emFAaW50ZWwuY29tPgoKUmV2aWV3ZWQtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVj
YXMuZGVtYXJjaGlAaW50ZWwuY29tPgoKTHVjYXMgRGUgTWFyY2hpCgo+LS0tCj4gZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyB8IDIgKysKPiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlZy5oICAgICAgICAgIHwgNiArKysrKysKPiAyIGZpbGVzIGNoYW5nZWQsIDgg
aW5zZXJ0aW9ucygrKQo+Cj5kaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kZGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMK
PmluZGV4IDliYTc5NGNiOWI0Zi4uNzRjZmRkOGRmZWM0IDEwMDY0NAo+LS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwo+KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kZGkuYwo+QEAgLTI4MzgsNiArMjgzOCw4IEBAIHRnbF9ka2xfcGh5
X2RkaV92c3dpbmdfc2VxdWVuY2Uoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsIGludCBs
aW5rX2Nsb2NrLAo+IAlmb3IgKGxuID0gMDsgbG4gPCAyOyBsbisrKSB7Cj4gCQlJOTE1X1dSSVRF
KEhJUF9JTkRFWF9SRUcodGNfcG9ydCksIEhJUF9JTkRFWF9WQUwodGNfcG9ydCwgbG4pKTsKPgo+
KwkJSTkxNV9XUklURShES0xfVFhfUE1EX0xBTkVfU1VTKHRjX3BvcnQpLCAwKTsKPisKPiAJCS8q
IEFsbCB0aGUgcmVnaXN0ZXJzIGFyZSBSTVcgKi8KPiAJCXZhbCA9IEk5MTVfUkVBRChES0xfVFhf
RFBDTlRMMCh0Y19wb3J0KSk7Cj4gCQl2YWwgJj0gfmRwY250X21hc2s7Cj5kaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcmVnLmgKPmluZGV4IDg1NWRiODg4NTE2Yy4uNzY3ODkxYzAzMzJiIDEwMDY0NAo+LS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZWcuaAo+QEAgLTEwMjQ5LDYgKzEwMjQ5LDEyIEBAIGVudW0gc2tsX3Bvd2VyX2dh
dGUgewo+IAkJCQkJCSAgICAgX0RLTF9QSFkyX0JBU0UpICsgXAo+IAkJCQkJCSAgICAgX0RLTF9U
WF9GV19DQUxJQikKPgo+KyNkZWZpbmUgX0RLTF9UWF9QTURfTEFORV9TVVMJCQkJMHhEMDAKPisj
ZGVmaW5lIERLTF9UWF9QTURfTEFORV9TVVModGNfcG9ydCkgX01NSU8oX1BPUlQodGNfcG9ydCwg
XAo+KwkJCQkJCQkgIF9ES0xfUEhZMV9CQVNFLCBcCj4rCQkJCQkJCSAgX0RLTF9QSFkyX0JBU0Up
ICsgXAo+KwkJCQkJCQkgIF9ES0xfVFhfUE1EX0xBTkVfU1VTKQo+Kwo+ICNkZWZpbmUgX0RLTF9U
WF9EVzE3CQkJCQkweERDNAo+ICNkZWZpbmUgREtMX1RYX0RXMTcodGNfcG9ydCkgX01NSU8oX1BP
UlQodGNfcG9ydCwgXAo+IAkJCQkJCSAgICAgX0RLTF9QSFkxX0JBU0UsIFwKPi0tIAo+Mi4yMy4w
Cj4KPl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj5JbnRl
bC1nZnggbWFpbGluZyBsaXN0Cj5JbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj5odHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeApfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
