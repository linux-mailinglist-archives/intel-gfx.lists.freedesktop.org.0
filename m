Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 91ECAD86F9
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2019 05:53:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC3CE6E88C;
	Wed, 16 Oct 2019 03:53:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D7E16E8B5
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2019 03:53:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Oct 2019 20:53:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,302,1566889200"; d="scan'208";a="220649880"
Received: from adaundka-mobl3.amr.corp.intel.com (HELO
 ldmartin-desk1.intel.com) ([10.254.71.151])
 by fmsmga004.fm.intel.com with ESMTP; 15 Oct 2019 20:53:32 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Oct 2019 20:38:41 -0700
Message-Id: <20191016033841.6888-5-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191016033841.6888-1-lucas.demarchi@intel.com>
References: <20191016033841.6888-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 5/5] drm/i915: prettify MST debug message
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

cy8/LzovIHNvIGl0IGdldHMgY29ycmVjdGx5IGNvbG9yZWQgYnkgZG1lc2cuCgpTaWduZWQtb2Zm
LWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KUmV2aWV3ZWQt
Ynk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ckxpbms6
IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC9tc2dpZC8yMDE5MTAxMTAx
MDkwNy4xMDMzMDktNy1sdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20KLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNl
cnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwLmMKaW5kZXggNjEwODBhYWViZjVlLi45YzEzMGUwZjk0NzIgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKQEAgLTQ0NTEsNyArNDQ1MSw3IEBAIGludGVsX2RwX2Nv
bmZpZ3VyZV9tc3Qoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkKIAkJJmRwX3RvX2RpZ19wb3J0
KGludGVsX2RwKS0+YmFzZTsKIAlib29sIHNpbmtfY2FuX21zdCA9IGludGVsX2RwX3NpbmtfY2Fu
X21zdChpbnRlbF9kcCk7CiAKLQlEUk1fREVCVUdfS01TKCJbRU5DT0RFUjolZDolc10gTVNUIHN1
cHBvcnQ/IHBvcnQ6ICVzLCBzaW5rOiAlcywgbW9kcGFyYW06ICVzXG4iLAorCURSTV9ERUJVR19L
TVMoIltFTkNPREVSOiVkOiVzXSBNU1Qgc3VwcG9ydDogcG9ydDogJXMsIHNpbms6ICVzLCBtb2Rw
YXJhbTogJXNcbiIsCiAJCSAgICAgIGVuY29kZXItPmJhc2UuYmFzZS5pZCwgZW5jb2Rlci0+YmFz
ZS5uYW1lLAogCQkgICAgICB5ZXNubyhpbnRlbF9kcC0+Y2FuX21zdCksIHllc25vKHNpbmtfY2Fu
X21zdCksCiAJCSAgICAgIHllc25vKGk5MTVfbW9kcGFyYW1zLmVuYWJsZV9kcF9tc3QpKTsKLS0g
CjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
