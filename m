Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 003D339F250
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jun 2021 11:29:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD5906EB59;
	Tue,  8 Jun 2021 09:29:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 184EF6EB59;
 Tue,  8 Jun 2021 09:29:02 +0000 (UTC)
IronPort-SDR: 2V0jOap7v/UWfPQ7w/BEIrtNmIW7mxoMjDoc/Jy2AXgogypNUDxr0k21hCKWlrd7a/qlLIcGbk
 iMlQ5vNm7WsA==
X-IronPort-AV: E=McAfee;i="6200,9189,10008"; a="226150947"
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="226150947"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 02:29:01 -0700
IronPort-SDR: c1It2S4T6CGXRNG48guOPZZYK00ToqM5IrkpWyooiPJIDplfWpSNSfUfsyewg7ss/DoxHo47op
 iQd+9nr3Yo9w==
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="551544329"
Received: from mkayyal-mobl.ger.corp.intel.com (HELO thellst-mobl1.intel.com)
 ([10.249.254.115])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 02:28:59 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Tue,  8 Jun 2021 11:28:37 +0200
Message-Id: <20210608092846.64198-1-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/9] Prereqs for TTM accelerated migration
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
Cc: matthew.auld@intel.com,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QSBjb3VwbGUgb2YgcGF0Y2hlcyBmcm9tIENocmlzIHdoaWNoIGltcGxlbWVudCBwaXBlbGluZWQg
bWlncmF0aW9uIGFuZApjbGVhcnMgYnkgYXRvbWljYWxseSB3cml0aW5nIHRoZSBQVEVzIGluIHBs
YWNlIGJlZm9yZSBwZXJmb3JtaW5nIHRoZQphY3R1YWwgYmxpdC4KClNvbWUgd3cgdXRpbGl0aWVz
IG1haW5seSBmb3IgdGhlIGFjY29tcGFueWluZyBzZWxmdGVzdHMgYWRkZWQgYnkgVGhvbWFzLAph
cyB3ZWxsIGFzIG1vZGlmaWVkIHRoZSBhYm92ZSBwYXRjaGVzIGZvciB3dyBsb2NraW5nLSBhbmQg
bG1lbSBzdXBwb3J0LgoKVGhlIGFjdHVhbCBob29rIHVwIHRvIHRoZSBpOTE1IHR0bSBiYWNrZW5k
IGlzIGJlaW5nIHdvcmtlZCBvbiBhbmQgbm90CmluY2x1ZGVkIHlldCwgc28gdGhpcyBpcyBjb25z
aWRlcmVkIHRvIGJlIGFuIGVhcmx5IHJldmlldyBvcHBvcnR1bml0eS4KCkNocmlzIFdpbHNvbiAo
Nik6CiAgZHJtL2k5MTUvZ3Q6IEFkZCBhbiBpbnNlcnRfZW50cnkgZm9yIGdlbjhfcHBndHQKICBk
cm0vaTkxNS9ndDogQWRkIGEgcm91dGluZSB0byBpdGVyYXRlIG92ZXIgdGhlIHBhZ2V0YWJsZXMg
b2YgYSBHVFQKICBkcm0vaTkxNS9ndDogRXhwb3J0IHRoZSBwaW5uZWQgY29udGV4dCBjb25zdHJ1
Y3RvcgogIGRybS9pOTE1L2d0OiBQaXBlbGluZWQgcGFnZSBtaWdyYXRpb24KICBkcm0vaTkxNS9n
dDogUGlwZWxpbmVkIGNsZWFyCiAgZHJtL2k5MTUvZ3Q6IFNldHVwIGEgZGVmYXVsdCBtaWdyYXRp
b24gY29udGV4dCBvbiB0aGUgR1QKClRob21hcyBIZWxsc3Ryw7ZtICgzKToKICBkcm0vaTkxNTog
UmVmZXJlbmNlIG9iamVjdHMgb24gdGhlIHd3IG9iamVjdCBsaXN0CiAgZHJtL2k5MTU6IEJyZWFr
IG91dCBkbWFfcmVzdiB3dyBsb2NraW5nIHV0aWxpdGllcyB0byBzZXBhcmF0ZSBmaWxlcwogIGRy
bS9pOTE1OiBJbnRyb2R1Y2UgYSB3dyB0cmFuc2FjdGlvbiBoZWxwZXIKCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9NYWtlZmlsZSAgICAgICAgICAgICAgICAgfCAgIDIgKwogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oICAgIHwgICA5ICstCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9nZW44X3BwZ3R0LmMgICAgICAgICAgfCAgNjggKysKIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2VuZ2luZS5oICAgICAgICB8ICAxMCArCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9lbmdpbmVfY3MuYyAgICAgfCAgMjEgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2dwdV9jb21tYW5kcy5oICB8ICAgMiArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9ndC5jICAgICAgICAgICAgfCAgIDQgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfZ3RfdHlwZXMuaCAgICAgIHwgICAzICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2d0dC5oICAgICAgICAgICB8ICAgNyArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9taWdyYXRlLmMgICAgICAgfCA2ODQgKysrKysrKysrKysrKysrKysrCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9taWdyYXRlLmggICAgICAgfCAgNjUgKysKIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX21pZ3JhdGVfdHlwZXMuaCB8ICAxNSArCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9yZW5kZXJzdGF0ZS5oICAgfCAgIDEgKwogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfcmluZy5oICAgICAgICAgIHwgICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L3NlbGZ0ZXN0X21pZ3JhdGUuYyAgICB8IDY3MSArKysrKysrKysrKysrKysrKwogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYyAgICAgICAgICAgICAgIHwgIDUyIC0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5oICAgICAgICAgICAgICAgfCAgMTIgLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9nZW1fd3cuYyAgICAgICAgICAgIHwgIDYzICsrCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2dlbV93dy5oICAgICAgICAgICAgfCAgNTAgKysKIC4uLi9kcm0vaTkx
NS9zZWxmdGVzdHMvaTkxNV9saXZlX3NlbGZ0ZXN0cy5oICB8ICAgMSArCiAuLi4vZHJtL2k5MTUv
c2VsZnRlc3RzL2k5MTVfcGVyZl9zZWxmdGVzdHMuaCAgfCAgIDEgKwogMjEgZmlsZXMgY2hhbmdl
ZCwgMTY2OSBpbnNlcnRpb25zKCspLCA3MyBkZWxldGlvbnMoLSkKIGNyZWF0ZSBtb2RlIDEwMDY0
NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9taWdyYXRlLmMKIGNyZWF0ZSBtb2RlIDEw
MDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9taWdyYXRlLmgKIGNyZWF0ZSBtb2Rl
IDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9taWdyYXRlX3R5cGVzLmgKIGNy
ZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9taWdyYXRl
LmMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV93dy5j
CiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fd3cuaAoK
LS0gCjIuMzEuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
Cg==
