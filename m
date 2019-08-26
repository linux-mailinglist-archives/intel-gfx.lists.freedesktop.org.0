Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BC109C979
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2019 08:36:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 507106E17D;
	Mon, 26 Aug 2019 06:36:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EF6B6E17D
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Aug 2019 06:36:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Aug 2019 23:36:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,431,1559545200"; d="scan'208";a="174111965"
Received: from genxfsim-shark-bay-client-platform.iind.intel.com
 ([10.223.34.144])
 by orsmga008.jf.intel.com with ESMTP; 25 Aug 2019 23:36:29 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 26 Aug 2019 11:56:02 +0530
Message-Id: <1566800772-18412-1-git-send-email-swati2.sharma@intel.com>
X-Mailer: git-send-email 1.9.1
Subject: [Intel-gfx] [v8][PATCH 00/10] drm/i915: adding state checker for
 gamma lut value
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
Cc: jani.nikula@intel.com, daniel.vetter@ffwll.ch, ankit.k.nautiyal@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SW4gdGhpcyBwYXRjaCBzZXJpZXMsIGFkZGVkIHN0YXRlIGNoZWNrZXIgdG8gdmFsaWRhdGUgZ2Ft
bWEgKDhCSVQgYW5kIDEwQklUKS4KVGhpcyByZWFkcyBoYXJkd2FyZSBzdGF0ZSwgYW5kIGNvbXBh
cmVzIHRoZSBvcmlnaW5hbGx5IHJlcXVlc3RlZCBzdGF0ZShzL3cpIHRvIHRoZQpzdGF0ZSByZWFk
IGZyb20gdGhlIGhhcmR3YXJlLgpUaGlzIGlzIGRvbmUgZm9yIGxlZ2FjeSwgaTk2NSwgaWxrLCBn
bGsgYW5kIHRoZWlyIHZhcmlhbnQgcGxhdGZvcm1zLiAKCkludGVudGlvbmFsbHksIGV4Y2x1ZGVk
IGJkdyBhbmQgaXZiIHNpbmNlIHRoZXkgaGF2ZSBzcGlsdCBnYW1tYSBtb2RlOyBmb3IgCndoaWNo
IGRlZ2FtbWEgcmVhZCBvdXRzIGFyZSByZXF1aXJlZCAod2hpY2ggSSB0aGluayBzaG91bGRuJ3Qg
YmUgaW5jbHVkZWQgaW4gdGhpcwpwYXRjaCBzZXJpZXMpLiBXaWxsIGluY2x1ZGUgYWZ0ZXIgZGVn
YW1tYSBzdGF0ZSBjaGVja2VyIGlzIGNvbXBsZXRlZC4KCnYxOiAtSW1wbGVtZW50YXRpb24gZG9u
ZSBmb3IgbGVnYWN5IHBsYXRmb3JtcwogICAgIChyZW1vdmVkIGFsbCB0aGUgcGxhY2Vob2xkZXJz
KSAoSmFuaSkKdjI6IC1SZXN0cnVjdHVyZWQgY29kZSBhbmQgY3JlYXRlZCBwbGF0Zm9ybSBzcGVj
aWZpYyBwYXRjaCBzZXJpZXMgZm9yIAogICAgIGdhbW1hIHZhbGlkYXRpb24KdjM6IC1SZWJhc2UK
djQ6IC1NaW5vciBjaGFuZ2VzLWZ1bmN0aW9uIG5hbWUgY2hhbmdlcyBtYWlubHkKdjU6IC1BZGRl
ZCBkZWdhbW1hIHZhbGlkYXRpb24gKFZpbGxlKQp2NjogLVJlbW92ZWQgZGVnYW1tYSBjaGFuZ2Vz
LCBkZWJ1Z2dpbmcgd2FzIGJlY29taW5nIGRpZmZpY3VsdAogICAgLUFkZGVkIGZ1bmN0aW9uIHRv
IGFzc2lnbiBiaXRfcHJlY2lzaW9uIGZvciBnYW1tYS9kZWdhbW1hCiAgICAgbHV0IHZhbHVlcyAv
cGxhdGZvcm0KICAgIC1BZGRlZCBkZWJ1ZyBpbmZvIGludG8gaW50ZWxfZHVtcF9waXBlX2NvbmZp
ZygpIChKYW5pKQp2NzogLUFkZGVkIHBsYXRmb3JtIHNwZWNpZmljIGZ1bmN0aW9ucyB0byBjb21w
dXRlIGdhbW1hIGJpdCBwcmVjaXNpb24KICAgICBvbiB0aGUgYmFzaXMgb2YgR0FNTUFfTU9ERSAo
VmlsbGUpCiAgICAtQ29ycmVjdGVkIGNoZWNrcGF0Y2ggd2FybmluZ3MKdjg6IC1SZXN0cnVjdHVy
ZWQgY29kZQogICAgLVJlbW92ZWQgYmR3IGFuZCBpdmIgcGxhdGZvcm0gc3RhdGUgY2hlY2tlcgoK
U3dhdGkgU2hhcm1hICgxMCk6CiAgZHJtL2k5MTUvZGlzcGxheTogQWRkIGZ1bmMgdG8gZ2V0IGdh
bW1hIGJpdCBwcmVjaXNpb24KICBkcm0vaTkxNS9kaXNwbGF5OiBBZGQgZGVidWcgbG9nIGZvciBj
b2xvciBwYXJhbWV0ZXJzCiAgZHJtL2k5MTUvZGlzcGxheTogQWRkIGZ1bmMgdG8gY29tcGFyZSBo
dy9zdyBnYW1tYSBsdXQKICBkcm0vaTkxNS9kaXNwbGF5OiBBZGQgbWFjcm8gdG8gY29tcGFyZSBn
YW1tYSBody9zdyBsdXQKICBkcm0vaTkxNS9kaXNwbGF5OiBFeHRyYWN0IGk5eHhfcmVhZF9sdXRz
KCkKICBkcm0vaTkxL2Rpc3BsYXk6IEV4dHJhY3QgaTk2NV9yZWFkX2x1dHMoKQogIGRybS9pOTE1
L2Rpc3BsYXk6IEV4dHJhY3QgY2h2X3JlYWRfbHV0cygpCiAgZHJtL2k5MTUvZGlzcGxheTogRXh0
cmFjdCBpbGtfcmVhZF9sdXRzKCkKICBkcm0vaTkxNS9kaXNwbGF5OiBFeHRyYWN0IGdsa19yZWFk
X2x1dHMoKQogIEZPUl9URVNUSU5HX09OTFk6IFByaW50IHJnYiB2YWx1ZXMgb2YgaHcgYW5kIHN3
IGJsb2JzCgogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jICAgfCAz
NzAgKysrKysrKysrKysrKysrKysrKysrKysrKystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2NvbG9yLmggICB8ICAgNyArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYyB8ICAzNCArKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVn
LmggICAgICAgICAgICAgIHwgIDE1ICsrCiA0IGZpbGVzIGNoYW5nZWQsIDQyMyBpbnNlcnRpb25z
KCspLCAzIGRlbGV0aW9ucygtKQoKLS0gCjEuOS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
