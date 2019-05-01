Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 284BA10A20
	for <lists+intel-gfx@lfdr.de>; Wed,  1 May 2019 17:34:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5462F892D8;
	Wed,  1 May 2019 15:34:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84A13892BD
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 May 2019 15:34:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 May 2019 08:34:51 -0700
X-ExtLoop1: 1
Received: from jssummer-desk.ra.intel.com ([10.54.134.159])
 by orsmga002.jf.intel.com with ESMTP; 01 May 2019 08:34:50 -0700
From: Stuart Summers <stuart.summers@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 May 2019 08:34:44 -0700
Message-Id: <20190501153450.30494-1-stuart.summers@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a983
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/6] Refactor to expand subslice mask
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
ZGUgZm9yIEVVIGRpdi1ieS04CnY3OiBhbm90aGVyIHJlYmFzZQoKU3R1YXJ0IFN1bW1lcnMgKDYp
OgogIGRybS9pOTE1OiBVc2UgbG9jYWwgdmFyaWFibGUgZm9yIFNTRVUgaW5mbyBpbiBHRVRQQVJB
TSBpb2N0bAogIGRybS9pOTE1OiBBZGQgbWFjcm8gZm9yIFNTRVUgc3RyaWRlIGNhbGN1bGF0aW9u
CiAgZHJtL2k5MTU6IE1vdmUgY2FsY3VsYXRpb24gb2Ygc3Vic2xpY2VzIHBlciBzbGljZSB0byBu
ZXcgZnVuY3Rpb24KICBkcm0vaTkxNTogTW92ZSBzc2V1IGhlbHBlciBmdW5jdGlvbnMgdG8gaW50
ZWxfc3NldS5oCiAgZHJtL2k5MTU6IFJlbW92ZSBpbmxpbmUgZnJvbSBzc2V1IGhlbHBlciBmdW5j
dGlvbnMKICBkcm0vaTkxNTogRXhwYW5kIHN1YnNsaWNlIG1hc2sKCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYyAgICB8ICAgNiArLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfZW5naW5lX3R5cGVzLmggfCAgMzIgKy0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9oYW5nY2hlY2suYyAgICB8ICAgMyArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfc3NldS5jICAgICAgICAgfCAgODUgKysrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX3NzZXUuaCAgICAgICAgIHwgIDMwICsrLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyAgfCAgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZGVidWdmcy5jICAgICAgICAgIHwgIDUwICsrKy0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2Rydi5jICAgICAgICAgICAgICB8ICAxNSArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9ncHVfZXJyb3IuYyAgICAgICAgfCAgIDUgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcXVlcnkuYyAgICAgICAgICAgIHwgIDE1ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9kZXZpY2VfaW5mby5jICAgICB8IDIwOSArKysrKysrKysrKy0tLS0tLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5oICAgICB8ICA0NyAtLS0tLQogMTIgZmlsZXMg
Y2hhbmdlZCwgMzAyIGluc2VydGlvbnMoKyksIDE5NyBkZWxldGlvbnMoLSkKCi0tIAoyLjIxLjAu
NS5nYWViNTgyYTk4MwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
