Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D334FA3348
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2019 10:59:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB8896E105;
	Fri, 30 Aug 2019 08:59:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19B776E105
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Aug 2019 08:59:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Aug 2019 01:58:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,446,1559545200"; d="scan'208";a="183745654"
Received: from jlahtine-desk.ger.corp.intel.com ([10.251.91.1])
 by orsmga003.jf.intel.com with ESMTP; 30 Aug 2019 01:58:58 -0700
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
To: Intel graphics driver community testing & development
 <intel-gfx@lists.freedesktop.org>
Date: Fri, 30 Aug 2019 11:58:48 +0300
Message-Id: <20190830085849.12519-1-joonas.lahtinen@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Remove link to missing
 "Batchbuffer Pools" documentation
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIHJlZmVyZW5jZWQgZG9jdW1lbnRhdGlvbiBzZWN0aW9uIGhhcyBiZWVuIHJlbW92ZWQuIFJl
bW92ZSB0aGUKbGluayB0byBhdm9pZCB3YXJuaW5nIHdoZW4gYnVpbGRpbmcgdGhlIGRvY3VtZW50
YXRpb24uCgpTaWduZWQtb2ZmLWJ5OiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBs
aW51eC5pbnRlbC5jb20+CkNjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4KQ2M6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KLS0tCiBEb2N1bWVu
dGF0aW9uL2dwdS9pOTE1LnJzdCB8IDkgLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgOSBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2dwdS9pOTE1LnJzdCBiL0RvY3Vt
ZW50YXRpb24vZ3B1L2k5MTUucnN0CmluZGV4IDM0MTUyNTVhZDNkYy4uN2QxZjY1NjEyODU2IDEw
MDY0NAotLS0gYS9Eb2N1bWVudGF0aW9uL2dwdS9pOTE1LnJzdAorKysgYi9Eb2N1bWVudGF0aW9u
L2dwdS9pOTE1LnJzdApAQCAtMzU4LDE1ICszNTgsNiBAQCBCYXRjaGJ1ZmZlciBQYXJzaW5nCiAu
LiBrZXJuZWwtZG9jOjogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9jbWRfcGFyc2VyLmMKICAg
IDppbnRlcm5hbDoKIAotQmF0Y2hidWZmZXIgUG9vbHMKLS0tLS0tLS0tLS0tLS0tLS0tCi0KLS4u
IGtlcm5lbC1kb2M6OiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9iYXRjaF9wb29sLmMK
LSAgIDpkb2M6IGJhdGNoIHBvb2wKLQotLi4ga2VybmVsLWRvYzo6IGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZ2VtX2JhdGNoX3Bvb2wuYwotICAgOmludGVybmFsOgotCiBVc2VyIEJhdGNoYnVm
ZmVyIEV4ZWN1dGlvbgogLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KIAotLSAKMi4yMC4xCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
