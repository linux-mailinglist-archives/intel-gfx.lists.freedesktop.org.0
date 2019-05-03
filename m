Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 23F80134E4
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2019 23:30:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D2788982F;
	Fri,  3 May 2019 21:30:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACBEC8982E
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2019 21:30:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 May 2019 14:30:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,427,1549958400"; d="scan'208";a="167474010"
Received: from jssummer-desk.ra.intel.com ([10.54.134.159])
 by fmsmga004.fm.intel.com with ESMTP; 03 May 2019 14:30:20 -0700
From: Stuart Summers <stuart.summers@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  3 May 2019 14:30:15 -0700
Message-Id: <20190503213020.25628-1-stuart.summers@intel.com>
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
Y29tbWVudHMgZnJvbSBUdnJ0a28gYW5kIERhbmllbGUKClN0dWFydCBTdW1tZXJzICg1KToKICBk
cm0vaTkxNTogVXNlIGxvY2FsIHZhcmlhYmxlIGZvciBTU0VVIGluZm8gaW4gR0VUUEFSQU0gaW9j
dGwKICBkcm0vaTkxNTogQWRkIG1hY3JvIGZvciBTU0VVIHN0cmlkZSBjYWxjdWxhdGlvbgogIGRy
bS9pOTE1OiBNb3ZlIGNhbGN1bGF0aW9uIG9mIHN1YnNsaWNlcyBwZXIgc2xpY2UgdG8gbmV3IGZ1
bmN0aW9uCiAgZHJtL2k5MTU6IFJlZmFjdG9yIHNzZXUgaGVscGVyIGZ1bmN0aW9ucwogIGRybS9p
OTE1OiBFeHBhbmQgc3Vic2xpY2UgbWFzawoKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2VuZ2luZV9jcy5jICAgIHwgIDI0ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9l
bmdpbmVfdHlwZXMuaCB8ICAzMCArLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2hh
bmdjaGVjay5jICAgIHwgICAzICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9zc2V1
LmMgICAgICAgICB8ICA1OCArKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfc3Nl
dS5oICAgICAgICAgfCAgMzYgKystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3Jr
YXJvdW5kcy5jICB8ICAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMg
ICAgICAgICAgfCAgNDYgKystLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyAgICAg
ICAgICAgICAgfCAgMTUgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1X2Vycm9yLmMg
ICAgICAgIHwgICA1ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3F1ZXJ5LmMgICAgICAg
ICAgICB8ICAxNSArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYyAg
ICAgfCAyNDYgKysrKysrKysrKysrLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
ZGV2aWNlX2luZm8uaCAgICAgfCAgNDcgLS0tLQogMTIgZmlsZXMgY2hhbmdlZCwgMzI3IGluc2Vy
dGlvbnMoKyksIDIwMCBkZWxldGlvbnMoLSkKCi0tIAoyLjIxLjAuNS5nYWViNTgyYTk4MwoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
