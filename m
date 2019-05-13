Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 62C351BEDB
	for <lists+intel-gfx@lfdr.de>; Mon, 13 May 2019 22:56:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE6E389238;
	Mon, 13 May 2019 20:56:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3889089232
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 May 2019 20:56:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 May 2019 13:56:44 -0700
X-ExtLoop1: 1
Received: from jssummer-desk.ra.intel.com ([10.54.134.159])
 by fmsmga007.fm.intel.com with ESMTP; 13 May 2019 13:56:44 -0700
From: Stuart Summers <stuart.summers@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 13 May 2019 13:56:38 -0700
Message-Id: <20190513205643.16488-1-stuart.summers@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a983
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/5] Refactor to expand subslice mask
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

VGhpcyBwYXRjaCBzZXJpZXMgY29udGFpbnMgYSBmZXcgY29kZSBjbGVhbi11cCBwYXRjaGVzLCBm
b2xsb3dlZApieSBhIHBhdGNoIHdoaWNoIGNoYW5nZXMgdGhlIHN0b3JhZ2Ugb2YgdGhlIHN1YnNs
aWNlIG1hc2sgdG8gYmV0dGVyCm1hdGNoIHRoZSB1c2Vyc3BhY2UgYWNjZXNzIHRocm91Z2ggdGhl
IEk5MTVfUVVFUllfVE9QT0xPR1lfSU5GTwppb2N0bC4gVGhlIGluZGV4IGludG8gdGhlIHN1YnNs
aWNlX21hc2sgYXJyYXkgaXMgdGhlbiBjYWxjdWxhdGVkOgogIHNsaWNlICogc3Vic2xpY2Ugc3Ry
aWRlICsgc3Vic2xpY2UgaW5kZXggLyA4Cgp2MjogZml4IGk5MTVfcG1fc3NldSB0ZXN0IGZhaWx1
cmUKdjM6IG5vIGNoYW5nZXMgdG8gcGF0Y2hlcyBpbiB0aGUgc2VyaWVzLCBqdXN0IHJlc2VuZGlu
ZyB0byBwaWNrIHVwCiAgICBpbiBDSSBjb3JyZWN0bHkKdjQ6IHJlYmFzZQp2NTogZml4IGhlYWRl
ciB0ZXN0CnY2OiBhZGRyZXNzIHJldmlldyBjb21tZW50cyBmcm9tIEphcmkKICAgIGFkZHJlc3Mg
bWlub3IgY2hlY2twYXRjaCB3YXJuaW5nIGluIGV4aXN0aW5nIGNvZGUKICAgIHVzZSBldV9zdHJp
ZGUgZm9yIEVVIGRpdi1ieS04CnY3OiBhbm90aGVyIHJlYmFzZQp2ODogYWRkcmVzcyByZXZpZXcg
Y29tbWVudHMgZnJvbSBUdnJ0a28gYW5kIERhbmllbGUKdjk6IGFkZHJlc3MgcmV2aWV3IGNvbW1l
bnRzIGZyb20gRGFuaWVsZQoKU3R1YXJ0IFN1bW1lcnMgKDUpOgogIGRybS9pOTE1OiBVc2UgbG9j
YWwgdmFyaWFibGUgZm9yIFNTRVUgaW5mbyBpbiBHRVRQQVJBTSBpb2N0bAogIGRybS9pOTE1OiBB
ZGQgbWFjcm8gZm9yIFNTRVUgc3RyaWRlIGNhbGN1bGF0aW9uCiAgZHJtL2k5MTU6IE1vdmUgY2Fs
Y3VsYXRpb24gb2Ygc3Vic2xpY2VzIHBlciBzbGljZSB0byBuZXcgZnVuY3Rpb24KICBkcm0vaTkx
NTogUmVmYWN0b3Igc3NldSBoZWxwZXIgZnVuY3Rpb25zCiAgZHJtL2k5MTU6IEV4cGFuZCBzdWJz
bGljZSBtYXNrCgogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMgICAg
fCAgMjQgKystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfdHlwZXMuaCB8
ICAzMCArKy0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9oYW5nY2hlY2suYyAgICB8
ICAgMyArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfc3NldS5jICAgICAgICAgfCAg
NjIgKysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfc3NldS5oICAgICAgICAg
fCAgMzYgKysrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyAg
fCAgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jICAgICAgICAgIHwg
IDQ2ICsrLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jICAgICAgICAgICAgICB8
ICAxNSArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9ncHVfZXJyb3IuYyAgICAgICAgfCAg
IDUgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcXVlcnkuYyAgICAgICAgICAgIHwgIDE1
ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jICAgICB8IDE3NiAr
KysrKysrKysrKy0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5m
by5oICAgICB8ICA0NyAtLS0tLQogMTIgZmlsZXMgY2hhbmdlZCwgMjgxIGluc2VydGlvbnMoKyks
IDE4MCBkZWxldGlvbnMoLSkKCi0tIAoyLjIxLjAuNS5nYWViNTgyYTk4MwoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
