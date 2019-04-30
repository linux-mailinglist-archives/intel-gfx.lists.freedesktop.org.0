Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FE4B10310
	for <lists+intel-gfx@lfdr.de>; Wed,  1 May 2019 01:06:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B92EC890BD;
	Tue, 30 Apr 2019 23:06:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3729E890A6
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2019 23:06:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Apr 2019 16:06:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,415,1549958400"; d="scan'208";a="320394787"
Received: from jssummer-desk.ra.intel.com ([10.54.134.159])
 by orsmga005.jf.intel.com with ESMTP; 30 Apr 2019 16:06:06 -0700
From: Stuart Summers <stuart.summers@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Apr 2019 16:06:00 -0700
Message-Id: <20190430230606.8421-1-stuart.summers@intel.com>
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
ZGUgZm9yIEVVIGRpdi1ieS04CgpTdHVhcnQgU3VtbWVycyAoNik6CiAgZHJtL2k5MTU6IFVzZSBs
b2NhbCB2YXJpYWJsZSBmb3IgU1NFVSBpbmZvIGluIEdFVFBBUkFNIGlvY3RsCiAgZHJtL2k5MTU6
IEFkZCBtYWNybyBmb3IgU1NFVSBzdHJpZGUgY2FsY3VsYXRpb24KICBkcm0vaTkxNTogTW92ZSBj
YWxjdWxhdGlvbiBvZiBzdWJzbGljZXMgcGVyIHNsaWNlIHRvIG5ldyBmdW5jdGlvbgogIGRybS9p
OTE1OiBNb3ZlIHNzZXUgaGVscGVyIGZ1bmN0aW9ucyB0byBpbnRlbF9zc2V1LmgKICBkcm0vaTkx
NTogUmVtb3ZlIGlubGluZSBmcm9tIHNzZXUgaGVscGVyIGZ1bmN0aW9ucwogIGRybS9pOTE1OiBF
eHBhbmQgc3Vic2xpY2UgbWFzawoKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2lu
ZV9jcy5jICAgIHwgICA2ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVf
dHlwZXMuaCB8ICAzMiArLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2hhbmdjaGVj
ay5jICAgIHwgICAzICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9zc2V1LmMgICAg
ICAgICB8ICA4NSArKysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfc3NldS5o
ICAgICAgICAgfCAgMzAgKystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJv
dW5kcy5jICB8ICAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMgICAg
ICAgICAgfCAgNTAgKysrLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgICAgICAg
ICAgICAgIHwgIDE1ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dwdV9lcnJvci5jICAg
ICAgICB8ICAgNSArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9xdWVyeS5jICAgICAgICAg
ICAgfCAgMTUgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMgICAg
IHwgMjA5ICsrKysrKysrKysrLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rl
dmljZV9pbmZvLmggICAgIHwgIDQ3IC0tLS0tCiAxMiBmaWxlcyBjaGFuZ2VkLCAzMDIgaW5zZXJ0
aW9ucygrKSwgMTk3IGRlbGV0aW9ucygtKQoKLS0gCjIuMjEuMC41LmdhZWI1ODJhOTgzCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
