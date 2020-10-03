Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF843281FA9
	for <lists+intel-gfx@lfdr.de>; Sat,  3 Oct 2020 02:18:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26D646E9F6;
	Sat,  3 Oct 2020 00:18:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B02B86E9F9
 for <intel-gfx@lists.freedesktop.org>; Sat,  3 Oct 2020 00:18:51 +0000 (UTC)
IronPort-SDR: /KxRE6RiWrMrY5A/NqNwt4mR2E4OGQZYceXenSu7NZVmi89yMOk2X2wdPgIzX9zZmwz3dSF57u
 Jc413Flv/N3w==
X-IronPort-AV: E=McAfee;i="6000,8403,9762"; a="143102188"
X-IronPort-AV: E=Sophos;i="5.77,329,1596524400"; d="scan'208";a="143102188"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2020 17:18:49 -0700
IronPort-SDR: HZmTKz+KaGX8pAHolRrXBwRnFyoFHkd1GumK+5E83bvKmuf2YbB65xWbUndnQI+yJCKkdwrM2r
 LD8I0IwLCyFQ==
X-IronPort-AV: E=Sophos;i="5.77,329,1596524400"; d="scan'208";a="511239165"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2020 17:18:48 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  3 Oct 2020 03:18:41 +0300
Message-Id: <20201003001846.1271151-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/5] drm/i915/tgl: Fix Combo PHY DPLL fractional
 divider for 38.4MHz ref clock
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

VGhpcyBwYXRjaHNldCByZXBsYWNlcyBbMV0uIFRoYXQgdmVyc2lvbidzIHNvbHV0aW9uIHRvIHdv
cmsgYXJvdW5kCmJyb2tlbiBUR0wgQSBCSU9TZXMgdHVybmVkIG91dCB0byBiZSBwYXBlcmluZyBv
dmVyIHNvbWV0aGluZy4gVGhlIHJlYWwKcm9vdCBjYXVzZSB3YXMgdGhlIGxhY2sgb2YgYSBmdWxs
IGVuY29kZXIgcmVjb21wdXRlL21vZGVzZXQgZHVyaW5nIHRoZQppbml0aWFsIGNvbW1pdCBhbmQg
bGVha2luZyB0aGUgaW5jb3JyZWN0IGxpbmsgcmF0ZSBpbnRvIHRoZSBQTEwKZnJlcXVlbmN5IGNh
bGN1bGF0aW9uIGNvZGUuIFNvIGluc3RlYWQgb2YgbWFraW5nIHRoZSBQTEwgY29kZSBhd2FyZSBv
ZgppbmNvcnJlY3QgbGluayByYXRlcywgdGhpcyBwYXRjaHNldCBmb3JjZXMgYSBmdWxsIG1vZGVz
ZXQgd2hpY2ggd2lsbApyZWNvbXB1dGUgdGhlIGNvcnJlY3QgbGluayByYXRlLgoKQ2M6IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CgpbMV0gaHR0cHM6Ly9w
YXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy84MjE3My8KCkltcmUgRGVhayAoNSk6CiAg
ZHJtL2k5MTUvc2tsOiBXb3JrIGFyb3VuZCBpbmNvcnJlY3QgQklPUyBXUlBMTCBQRElWIHByb2dy
YW1taW5nCiAgZHJtL2k5MTU6IE1vdmUgdGhlIGluaXRpYWwgZmFzdHNldCBjb21taXQgY2hlY2sg
dG8gZW5jb2RlciBob29rcwogIGRybS9pOTE1OiBDaGVjayBmb3IgdW5zdXBwb3J0ZWQgRFAgbGlu
ayByYXRlcyBkdXJpbmcgaW5pdGlhbCBjb21taXQKICBkcm0vaTkxNTogQWRkIGFuIGVuY29kZXIg
aG9vayB0byBzYW5pdGl6ZSBpdHMgc3RhdGUgZHVyaW5nIGluaXQvcmVzdW1lCiAgZHJtL2k5MTUv
dGdsOiBGaXggQ29tYm8gUEhZIERQTEwgZnJhY3Rpb25hbCBkaXZpZGVyIGZvciAzOC40TUh6IHJl
ZgogICAgY2xvY2sKCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYyAgICAg
ICAgfCAxNCArKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jICAg
ICAgfCAxOCArKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMgIHwgMzMgKysrKystLS0tLQogLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90
eXBlcy5oICAgIHwgMTUgKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHAuYyAgICAgICB8IDY1ICsrKysrKysrKysrKysrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHAuaCAgICAgICB8ICA1ICsrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwX21zdC5jICAgfCAyMCArKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYyB8IDU1ICsrKysrKysrKysrLS0tLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgICAgICB8ICAxICsKIDkgZmlsZXMgY2hh
bmdlZCwgMTk0IGluc2VydGlvbnMoKyksIDMyIGRlbGV0aW9ucygtKQoKLS0gCjIuMjUuMQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
