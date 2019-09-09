Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A2BEAD88F
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2019 14:11:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3D8B895C8;
	Mon,  9 Sep 2019 12:11:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0B03895C8
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2019 12:11:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Sep 2019 05:11:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,484,1559545200"; d="scan'208";a="359468872"
Received: from genxfsim-shark-bay-client-platform.iind.intel.com
 ([10.223.34.144])
 by orsmga005.jf.intel.com with ESMTP; 09 Sep 2019 05:11:38 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 Sep 2019 17:31:40 +0530
Message-Id: <1568030503-26747-1-git-send-email-swati2.sharma@intel.com>
X-Mailer: git-send-email 1.9.1
Subject: [Intel-gfx] [v2][PATCH 0/3] adding gamma state checker for CHV and
 i965
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
bWEgbHV0IHZhbHVlcwpmb3IgY2hlcnJ5dmlldyBhbmQgaTk2NSBwbGF0Zm9ybXMuIEl0J3MgZXh0
ZW5zaW9uIG9mIHRoZQpwYXRjaCBzZXJpZXMgaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Au
b3JnL3BhdGNoLzMyODI0Ni8/c2VyaWVzPTU4MDM5CndoaWNoIGVuYWJsZWQgdGhlIGJhc2ljIGlu
ZnJhc3RydWN0dXJlIGFuZCBzdGF0ZSBjaGVja2VyIGZvciAKZmV3IGxlZ2FjeSBwbGF0Zm9ybXMu
Cgp2MjogQWRkZWQgbGFzdCBpbmRleCByZ2IgbHV0IHZhbHVlIGZyb20gUElQRUdDTUFYIHRvIGgv
dyBibG9iIFtKYW5pXQoKU3dhdGkgU2hhcm1hICgzKToKICBkcm0vaTkxNS9kaXNwbGF5OiBBZGQg
Z2FtbWEgcHJlY2lzaW9uIGZ1bmN0aW9uIGZvciBDSFYKICBkcm0vaTkxNS9kaXNwbGF5OiBFeHRy
YWN0IGk5NjVfcmVhZF9sdXRzKCkKICBkcm0vaTkxNS9kaXNwbGF5OiBFeHRyYWN0IGNodl9yZWFk
X2x1dHMoKQoKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYyB8IDEx
OCArKysrKysrKysrKysrKysrKysrKysrKysrKystLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9yZWcuaCAgICAgICAgICAgIHwgICA3ICsrCiAyIGZpbGVzIGNoYW5nZWQsIDExOSBpbnNlcnRp
b25zKCspLCA2IGRlbGV0aW9ucygtKQoKLS0gCjEuOS4xCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
