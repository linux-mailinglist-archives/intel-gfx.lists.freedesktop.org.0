Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5552E388371
	for <lists+intel-gfx@lfdr.de>; Wed, 19 May 2021 02:07:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE4876E139;
	Wed, 19 May 2021 00:06:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 998116E123
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 May 2021 00:06:53 +0000 (UTC)
IronPort-SDR: GLTmch83wA9O/14rDwfz6jnf0r8D+4U/JgK5ZoRrv6D+fDyrFCkf80v4HjGJFDZKqtWUJJi7//
 Zw9o/CSKwnxQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9988"; a="264768400"
X-IronPort-AV: E=Sophos;i="5.82,310,1613462400"; d="scan'208";a="264768400"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 17:06:51 -0700
IronPort-SDR: QbkoAyTBBFR86y/v9wdS2umzKTe9RdwM2xA6WYZ3IybYKs+acgQXKWrvXdAI7os0RFvFiuS5pD
 pv/Vc1z3on/w==
X-IronPort-AV: E=Sophos;i="5.82,310,1613462400"; d="scan'208";a="473214742"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 17:06:51 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 May 2021 17:06:08 -0700
Message-Id: <20210519000625.3184321-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 00/17] ADL-P: more reviewed patches
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

Tm93IGp1c3QgYSBmZXcgcmVtYWluaW5nIGZyb20gdGhlIG9yaWdpbmFsIGJhdGNoIG9mIHBhdGNo
ZXMgdG8gc3VwcG9ydApBREwtUC4KCkFudXNoYSBTcml2YXRzYSAoNCk6CiAgZHJtL2k5MTUvYWRs
X3A6IFNldHVwIHBvcnRzL3BoeXMKICBkcm0vaTkxNS9hZGxfcDogQWRkIFBMTCBTdXBwb3J0CiAg
ZHJtL2k5MTUvYWRscDogQWRkIFBJUEVfTUlTQzIgcHJvZ3JhbW1pbmcKICBkcm0vaTkxNS9hZGxf
cDogVXBkYXRlIG1lbW9yeSBiYW5kd2lkdGggcGFyYW1ldGVycwoKR3dhbi1neWVvbmcgTXVuICgy
KToKICBkcm0vaTkxNS9kaXNwbGF5OiBSZXBsYWNlIGRjM2NvX2VuYWJsZWQgd2l0aCBkYzNjb19l
eGl0bGluZSBvbgogICAgaW50ZWxfcHNyIHN0cnVjdAogIGRybS9pOTE1L2Rpc3BsYXk6IEFkZCBQ
U1IgaW50ZXJydXB0IGVycm9yIGNoZWNrIGZ1bmN0aW9uCgpJbXJlIERlYWsgKDEpOgogIGRybS9p
OTE1L2FkbF9wOiBQcm9ncmFtIERQL0hETUkgbGluayByYXRlIHRvIERESV9CVUZfQ1RMCgpKb3PD
qSBSb2JlcnRvIGRlIFNvdXphICgyKToKICBkcm0vaTkxNS9hZGxfcDogSW1wbGVtZW50IFRDIHNl
cXVlbmNlcwogIGRybS9pOTE1L2FkbF9wOiBEb24ndCBjb25maWcgTUJVUyBhbmQgREJVRiBkdXJp
bmcgZGlzcGxheQogICAgaW5pdGlhbGl6YXRpb24KCk1hdHQgUm9wZXIgKDEpOgogIGRybS9pOTE1
L2FkbF9wOiBBZGQgZGVkaWNhdGVkIFNBR1Ygd2F0ZXJtYXJrcwoKTWlrYSBLYWhvbGEgKDIpOgog
IGRybS9pOTE1L2FkbF9wOiBUeCBlc2NhcGUgY2xvY2sgd2l0aCBEU0kKICBkcm0vaTkxNS9hZGxf
cDogRGVmaW5lIGFuZCB1c2UgQURMLVAgc3BlY2lmaWMgRFAgdHJhbnNsYXRpb24gdGFibGVzCgpW
YW5kaXRhIEt1bGthcm5pICg0KToKICBkcm0vaTkxNS94ZWxwZDogQ2FsY3VsYXRlIFZEU0MgUkMg
cGFyYW1ldGVycwogIGRybS9pOTE1L3hlbHBkOiBBZGQgcmNfcXBfdGFibGUgZm9yIHJjcGFyYW1z
IGNhbGN1bGF0aW9uCiAgZHJtL2k5MTUvYWRsX3A6IEFkZCBkZGIgYWxsb2NhdGlvbiBzdXBwb3J0
CiAgZHJtL2k5MTUvYWRsX3A6IE1CVVMgcHJvZ3JhbW1pbmcKClZpbGxlIFN5cmrDpGzDpCAoMSk6
CiAgZHJtL2k5MTU6IEludHJvZHVjZSBNQlVTIHJlbGF0aXZlIGRidWYgb2Zmc2V0cwoKIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlICAgICAgICAgICAgICAgICB8ICAgMSArCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYyAgICAgICAgfCAgMjEgKy0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljLmMgICB8ICAyMCArKwogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWMuaCAgIHwgICAxICsKIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYyAgICAgICB8ICAgMiArLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyAgICAgIHwgIDQzICsrLQogLi4uL2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGRpX2J1Zl90cmFucy5jICAgIHwgIDUzICsrKwogLi4uL2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGRpX2J1Zl90cmFucy5oICAgIHwgICA0ICsKIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jICB8ICA2OSArKystCiAuLi4vZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMgICAgfCAgIDYgKwogLi4uL2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oICAgIHwgICAyICstCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMgfCAgNjkgKysrLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyAgICAgIHwgIDU1ICsrLS0KIC4uLi9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9xcF90YWJsZXMuYyAgICB8IDMwOSArKysrKysrKysrKysrKysrKysK
IC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9xcF90YWJsZXMuaCAgICB8ICAxNCArCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMgICAgICAgfCAxMzIgKysrKysr
Ky0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5jICAgICB8IDEwNSAr
KysrKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgICAgICB8ICAg
MiArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgICAgfCAxMjQg
KysrKystLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyAgICAgICAgICAgICAgIHwg
MzAzICsrKysrKysrKysrKysrKystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5oICAg
ICAgICAgICAgICAgfCAgIDIgKy0KIDIxIGZpbGVzIGNoYW5nZWQsIDEyMzEgaW5zZXJ0aW9ucygr
KSwgMTA2IGRlbGV0aW9ucygtKQogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfcXBfdGFibGVzLmMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3FwX3RhYmxlcy5oCgotLSAKMi4zMS4xCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
