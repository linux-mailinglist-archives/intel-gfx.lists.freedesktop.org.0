Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A886229B49
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2019 17:40:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 045B46E0B7;
	Fri, 24 May 2019 15:40:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DE5D89FC5
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2019 15:40:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 May 2019 08:40:23 -0700
X-ExtLoop1: 1
Received: from jssummer-desk.ra.intel.com ([10.54.134.159])
 by orsmga005.jf.intel.com with ESMTP; 24 May 2019 08:40:23 -0700
From: Stuart Summers <stuart.summers@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 May 2019 08:40:17 -0700
Message-Id: <20190524154022.13575-1-stuart.summers@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a983
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 0/5] Refactor to expand subslice mask
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
bnRzIGZyb20gRGFuaWVsZQp2MTA6IGFkZCByZXZpZXdlZC1ieSBvbiBsYXN0IHBhdGNoIHdpdGgg
bWlub3Igc3VnZ2VzdGVkIGNoYW5nZSwKICAgICByZWJhc2UsIGFuZCByZXBvc3QgZm9yIENJCgpT
dHVhcnQgU3VtbWVycyAoNSk6CiAgZHJtL2k5MTU6IFVzZSBsb2NhbCB2YXJpYWJsZSBmb3IgU1NF
VSBpbmZvIGluIEdFVFBBUkFNIGlvY3RsCiAgZHJtL2k5MTU6IEFkZCBtYWNybyBmb3IgU1NFVSBz
dHJpZGUgY2FsY3VsYXRpb24KICBkcm0vaTkxNTogTW92ZSBjYWxjdWxhdGlvbiBvZiBzdWJzbGlj
ZXMgcGVyIHNsaWNlIHRvIG5ldyBmdW5jdGlvbgogIGRybS9pOTE1OiBSZWZhY3RvciBzc2V1IGhl
bHBlciBmdW5jdGlvbnMKICBkcm0vaTkxNTogRXhwYW5kIHN1YnNsaWNlIG1hc2sKCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYyAgICB8ICAyNCArKy0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV90eXBlcy5oIHwgIDMwICsrLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2hhbmdjaGVjay5jICAgIHwgICAzICstCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9zc2V1LmMgICAgICAgICB8ICA2MiArKysrKysrCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9zc2V1LmggICAgICAgICB8ICAzNSArKystCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jICB8ICAgMiArLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMgICAgICAgICAgfCAgNDYgKystLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgICAgICAgICAgICAgIHwgIDE1ICstCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2dwdV9lcnJvci5jICAgICAgICB8ICAgNSArLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9xdWVyeS5jICAgICAgICAgICAgfCAgMTUgKy0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMgICAgIHwgMTc2ICsrKysrKysrKysrLS0tLS0tLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmggICAgIHwgIDQ3IC0tLS0t
CiAxMiBmaWxlcyBjaGFuZ2VkLCAyODAgaW5zZXJ0aW9ucygrKSwgMTgwIGRlbGV0aW9ucygtKQoK
LS0gCjIuMjEuMC41LmdhZWI1ODJhOTgzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
