Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E9413A4472
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Jun 2021 16:55:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1F246EE9D;
	Fri, 11 Jun 2021 14:55:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAB186E53E;
 Fri, 11 Jun 2021 14:55:12 +0000 (UTC)
IronPort-SDR: LPA0DCtln+SSwCZ0vGhNcDjKQEn3IuzKL71vWccZb4Z2K8ayAt2Dr5HtSqKh8W9Xxq6jMu1GCV
 apanCELNlwZg==
X-IronPort-AV: E=McAfee;i="6200,9189,10012"; a="269387726"
X-IronPort-AV: E=Sophos;i="5.83,265,1616482800"; d="scan'208";a="269387726"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2021 07:55:11 -0700
IronPort-SDR: SypMaBZgBNd9Ejn8Oa5UWNWR0nmYU7RIC7ax/1/bJ9YzgneTi+Cih8UwBS5wAnLpRNI11+7u71
 NgiWbryVazAA==
X-IronPort-AV: E=Sophos;i="5.83,265,1616482800"; d="scan'208";a="450783206"
Received: from delmer-mobl.ger.corp.intel.com (HELO thellst-mobl1.intel.com)
 ([10.249.254.23])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2021 07:55:10 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Fri, 11 Jun 2021 16:54:55 +0200
Message-Id: <20210611145459.8576-1-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 0/4] drm/i915: Move system memory to TTM for
 discrete
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RWFybHkgaW1wbGVtZW50YXRpb24gb2YgbW92aW5nIHN5c3RlbSBtZW1vcnkgZm9yIGRpc2NyZXRl
IGNhcmRzIG92ZXIgdG8KVFRNLiBXZSBmaXJzdCBhZGQgdGhlIG5vdGlvbiBvZiBvYmplY3RzIGJl
aW5nIG1pZ3JhdGFibGUgdW5kZXIgdGhlIG9iamVjdApsb2NrIHRvIGk5MTUgZ2VtLCBhbmQgYWRk
IHNvbWUgYXNzZXJ0cyB0byB2ZXJpZnkgdGhhdCBvYmplY3RzIGFyZSBlaXRoZXIKbG9ja2VkIG9y
IHBpbm5lZCB3aGVuIHRoZSBwbGFjZW1lbnQgaXMgY2hlY2tlZCBieSB0aGUgZ2VtIGNvZGUuCgpQ
YXRjaCAyIGFuZCAzIGRlYWxzIHdpdGggdXBkYXRpbmcgdGhlIGk5MTUgZ2VtIGJvb2trZWVwaW5n
IGFmdGVyIGEgVFRNIG1vdmUsClBhdGNoIDQgbW92ZXMgc3lzdGVtIG92ZXIgZnJvbSBzaG1lbSB0
byBUVE0gZm9yIGRpc2NyZXRlCgpOb3RlIHRoYXQgdGhlIG1vY2sgZGV2aWNlIGRvZXNuJ3QgY29u
c2lkZXIgaXRzZWxmIGRpc2NyZXRlIHNvIHRoZSBUVE0Kc3lzdGVtIHBhdGggaXMgbm90IGNoZWNr
ZWQgYnkgdGhlIG1vY2sgc2VsZnRlc3RzLgoKdjI6Ci0gU3R5bGUgZml4ZXMgKHJlcG9ydGVkIGJ5
IE1hdHRoZXcgQXVsZCkKLSBEcm9wIHRoZSBsYXN0IHBhdGNoIChtaWdyYXRpb24pIEl0IG5lZWRz
IHNlbGZ0ZXN0cyBhbmQgc29tZSBhZGRpdGlvbmFsIHdvcmsuCi0gVW5jb25kaXRpb25hbGx5IGFk
ZCBWTV9JTyBhdCBtbWFwIHRpbWUuCgpUaG9tYXMgSGVsbHN0csO2bSAoNCk6CiAgZHJtL2k5MTU6
IFVwZGF0ZSBvYmplY3QgcGxhY2VtZW50IGZsYWdzIHRvIGJlIG11dGFibGUKICBkcm0vaTkxNS90
dG06IEFkanVzdCBnZW0gZmxhZ3MgYW5kIGNhY2hpbmcgc2V0dGluZ3MgYWZ0ZXIgYSBtb3ZlCiAg
ZHJtL2k5MTUvdHRtOiBDYWxjdWxhdGUgdGhlIG9iamVjdCBwbGFjZW1lbnQgYXQgZ2V0X3BhZ2Vz
IHRpbWUKICBkcm0vaTkxNS90dG06IFVzZSBUVE0gZm9yIHN5c3RlbSBtZW1vcnkKCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1faW50ZXJuYWwuYyAgfCAgIDQgKy0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMgICAgICB8ICAxMiArLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jICAgIHwgIDM4ICsrKwogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oICAgIHwgIDE0ICstCiAuLi4vZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3RfdHlwZXMuaCAgfCAgMjAgKy0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9wYWdlcy5jICAgICB8ICAgMiArLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BoeXMuYyAgICAgIHwgICAyICstCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fc2htZW0uYyAgICAgfCAgMTAgKy0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV90dG0uYyAgICAgICB8IDIyNCArKysrKysrKysrKysrKy0tLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV91c2VycHRyLmMgICB8ICAgNCArLQog
Li4uL2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaHVnZV9nZW1fb2JqZWN0LmMgIHwgICA0ICstCiAu
Li4vZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaHVnZV9wYWdlcy5jICAgfCAgIDUgKy0KIC4u
Li9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX21tYW4uYyAgICB8ICAgNCArLQogLi4u
L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fcGh5cy5jICAgIHwgICAzICstCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAgICAgICAgfCAgIDMgLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfbWVtb3J5X3JlZ2lvbi5jICAgIHwgICA3ICstCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9tZW1vcnlfcmVnaW9uLmggICAgfCAgIDggKwogZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfcmVnaW9uX3R0bS5jICAgICAgIHwgICA4ICstCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9yZWdpb25fdHRtLmggICAgICAgfCAgIDIgKwogMTkgZmlsZXMgY2hh
bmdlZCwgMjc4IGluc2VydGlvbnMoKyksIDk2IGRlbGV0aW9ucygtKQoKLS0gCjIuMzEuMQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
