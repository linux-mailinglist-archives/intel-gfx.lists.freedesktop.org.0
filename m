Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C74B65289
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 09:35:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98CDF6E138;
	Thu, 11 Jul 2019 07:34:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CFA36E138
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 07:34:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jul 2019 00:34:58 -0700
X-IronPort-AV: E=Sophos;i="5.63,476,1557212400"; d="scan'208";a="159991296"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jul 2019 00:34:55 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Date: Thu, 11 Jul 2019 09:31:52 +0200
Message-Id: <20190711073155.10926-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 0/5] drm/i915: Rename functions to match
 their entry points
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TmVlZCBmb3IgdGhpcyB3YXMgaWRlbnRpZmllZCB3aGlsZSB3b3JraW5nIG9uIHNwbGl0IG9mIGRy
aXZlciB1bmJpbmQKcGF0aCBpbnRvIF9yZW1vdmUoKSBhbmQgX3JlbGVhc2UoKSBwYXJ0cy4gIENv
bnNpc3RlbmN5IGluIGZ1bmN0aW9uCm5hbWluZyBoYXMgYmVlbiByZWNvZ25pemVkIGFzIGhlbHBm
dWwgd2hlbiB0cnlpbmcgdG8gd29yayBvdXQgd2hpY2gKcGhhc2UgdGhlIGNvZGUgaXMgaW4uCgp2
MjogKiBlYXJseV9wcm9iZSBwYWlycyBiZXR0ZXIgd2l0aCBsYXRlX3JlbGVhc2UgKENocmlzKSwK
ICAgICogZXhjbHVkZSBwYXRjaCA2LzYgImRybS9pOTE1OiBSZW5hbWUgImluamVjdF9sb2FkX2Zh
aWx1cmUiIG1vZHVsZQogICAgICBwYXJhbWV0ZXIiIGZvciBub3csIGl0IHJlcXVpcmVzIHVwZGF0
ZXMgb24gdXNlciAoSUdUKSBzaWRlCiAgICAqIHJlYmFzZSBvbiB0b3Agb2YgImRybS9pOTE1OiBE
cm9wIGV4dGVybiBxdWFsaWZpZXJzIGZyb20gaGVhZGVyCiAgICAgIGZ1bmN0aW9uIHByb3RvdHlw
ZXMiCgpKYW51c3ogS3J6eXN6dG9maWsgKDUpOgogIGRybS9pOTE1OiBSZW5hbWUgIl9sb2FkIi8i
X3VubG9hZCIgdG8gbWF0Y2ggUENJIGVudHJ5IHBvaW50cwogIGRybS9pOTE1OiBSZXBsYWNlICJf
bG9hZCIgd2l0aCAiX3Byb2JlIiBjb25zZXF1ZW50bHkKICBkcm0vaTkxNTogUHJvcGFnYXRlICJf
cmVsZWFzZSIgZnVuY3Rpb24gbmFtZSBzdWZmaXggZG93bgogIGRybS9pOTE1OiBQcm9wYWdhdGUg
Il9yZW1vdmUiIGZ1bmN0aW9uIG5hbWUgc3VmZml4IGRvd24KICBkcm0vaTkxNTogUHJvcGFnYXRl
ICJfcHJvYmUiIGZ1bmN0aW9uIG5hbWUgc3VmZml4IGRvd24KCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Jpb3MuYyAgICAgfCAgIDQgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfYmlvcy5oICAgICB8ICAgMiArLQogLi4uL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Nvbm5lY3Rvci5jICAgIHwgICAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYyAgfCAgIDIgKy0KIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfcG93ZXIuYyAgICB8ICAgNiArLQogLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheV9wb3dlci5oICAgIHwgICAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9lbmdpbmVfY3MuYyAgICAgfCAgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZHJ2LmMgICAgICAgICAgICAgICB8IDEwNyArKysrKysrKystLS0tLS0tLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgICAgICB8ICAyMCArKy0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2dlbS5jICAgICAgICAgICAgICAgfCAgMTIgKy0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jICAgICAgICAgICB8ICAgNCArLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmggICAgICAgICAgIHwgICAyICstCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3BjaS5jICAgICAgICAgICAgICAgfCAgIDYgKy0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX2d2dC5jICAgICAgICAgICAgICB8ICAgNyArLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfZ3Z0LmggICAgICAgICAgICAgIHwgICA1ICstCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9ydW50aW1lX3BtLmMgICAgICAgfCAgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX3J1bnRpbWVfcG0uaCAgICAgICB8ICAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfdW5jb3JlLmMgICAgICAgICAgIHwgICAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF93b3BjbS5jICAgICAgICAgICAgfCAgIDIgKy0KIDE5IGZpbGVzIGNoYW5nZWQsIDk3
IGluc2VydGlvbnMoKyksIDk0IGRlbGV0aW9ucygtKQoKLS0gCjIuMjEuMAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
