Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35A17E7066
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2019 12:30:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B4846E5FC;
	Mon, 28 Oct 2019 11:30:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 636B36E530
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2019 11:30:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Oct 2019 04:30:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,239,1569308400"; d="scan'208";a="229659129"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 28 Oct 2019 04:30:40 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 28 Oct 2019 13:30:39 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Oct 2019 13:30:32 +0200
Message-Id: <20191028113036.27553-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191028113036.27553-1-ville.syrjala@linux.intel.com>
References: <20191028113036.27553-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/6] drm/i915: Fix max cursor size for i915g/gm
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkFw
cGFyZW50bHkgdGhlIDEyOHgxMjggYW5kIDI1NngyNTYgQVJHQiBjdXJzb3IgbW9kZXMgd2VyZQpv
bmx5IGFkZGVkIG9uIExQVC9DU1QuCgpXaGlsZSB0aGUgZGlzcGxheSBzZWN0aW9uIG9mIGJzcGVj
IGlzbid0IHN1cGVyIGNsZWFyIG9uIHRoZQpzdWJqZWN0LCBpdCBkb2VzIGhpZ2hsaWdodCB0aGVz
ZSB0d28gbW9kZXMgaW4gYSBkaWZmZXJlbnQKY29sb3IsIGhhcyBhIGZldyBjaGFuZ2xvZyBlbnRy
aWVzIGluZGljYXRpbmcgdGhlIDI1NngyNTYgbW9kZQp3YXMgYWRkZWQgZm9yIGEgTFBUIERDTiwg
YW5kIHRoYXQgdGhlIDEyOHgxMjggbW9kZSB3YXMgYWxzbwphZGRlZCBsYXRlciAodGhvdWdoIG5v
IERDTi9wbGF0Zm9ybSBub3RlIHRoZXJlKS4KClRoZSAiZGV2aWNlIGRlcGVuZGVuY2llcyIgYnNw
ZWMgc2VjdGlvbiBkb2VzIGxpc3QgdGhlIDI1NngyNTZ4MzIKYXMgYSBuZXcgZmVhdHVyZSBmb3Ig
TFBUL0NTVCwgYW5kIGdvZXMgb24gdG8gbWVudGlvbiB0aGF0IGN1cnJlbnQKaHcgb25seSBoYXMg
dGhlIDY0eDY0eDMyIG1vZGUgKHdoaWNoIHJlaW5mb3JjZXMgdGhlIG5vdGlvbiB0aGF0CnRoZSAx
Mjh4MTI4IG1vZGUgd2FzIGFsc28gYWRkZWQgYXQgdGhlIHNhbWUgdGltZSkuCgpUZXN0aW5nIG9u
IGFjdHVhbCBoYXJkd2FyZSBjb25maXJtcyBhbGwgb2YgdGhpcy4gQ0kgc2hvd3MgYWxsCnRoZSAx
Mjh4MTI4IGFuZCAyNTZ4MjU2IHRlc3RzIGZhaWxpbmcgb24gR0RHLCBhbmQgbXkgQUxWCmRlZmlu
aXRlbHkgZG9lc24ndCBsaWtlIHRoZW0uCgpTbyB3ZSBzaGFsbCBsaW1pdCBHREcvQUxWIHRvIDY0
eDY0IG9ubHkuIEFuZCB3aGlsZSBhdCBpdApsZXQncyBhZGp1c3QgdGhlIG1vYmlsZSBnZW4yIGNh
c2UgdG8gbGlzdCB0aGUgdHdvIHBsYXRmb3JtcwpleHBsaWNpdGx5IHNvIHRoYXQgdGhlIGlmLWxh
ZGRlciBsb29rcyByZWFzb25hYmx5IHVuaWZvcm0uCgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJq
w6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMyArKy0KIDEgZmlsZSBjaGFuZ2VkLCAy
IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IDQ3YTNhZWYwZmI2MS4uYzU2NGNlZWZlMmNhIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtMTY4
MDksNyArMTY4MDksOCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9tb2RlX2NvbmZpZ19pbml0KHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogCWlmIChJU19JODQ1RyhpOTE1KSB8fCBJU19JODY1
RyhpOTE1KSkgewogCQltb2RlX2NvbmZpZy0+Y3Vyc29yX3dpZHRoID0gSVNfSTg0NUcoaTkxNSkg
PyA2NCA6IDUxMjsKIAkJbW9kZV9jb25maWctPmN1cnNvcl9oZWlnaHQgPSAxMDIzOwotCX0gZWxz
ZSBpZiAoSVNfR0VOKGk5MTUsIDIpKSB7CisJfSBlbHNlIGlmIChJU19JODMwKGk5MTUpIHx8IElT
X0k4NVgoaTkxNSkgfHwKKwkJICAgSVNfSTkxNUcoaTkxNSkgfHwgSVNfSTkxNUdNKGk5MTUpKSB7
CiAJCW1vZGVfY29uZmlnLT5jdXJzb3Jfd2lkdGggPSA2NDsKIAkJbW9kZV9jb25maWctPmN1cnNv
cl9oZWlnaHQgPSA2NDsKIAl9IGVsc2UgewotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
