Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 202033D3814
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jul 2021 11:52:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82BCF6E02D;
	Fri, 23 Jul 2021 09:52:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 939826E02D
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Jul 2021 09:52:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10053"; a="297420303"
X-IronPort-AV: E=Sophos;i="5.84,263,1620716400"; d="scan'208";a="297420303"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2021 02:52:31 -0700
X-IronPort-AV: E=Sophos;i="5.84,263,1620716400"; d="scan'208";a="415795275"
Received: from ajaykum1-mobl2.amr.corp.intel.com (HELO rdvivi-mobl4.intel.com)
 ([10.212.7.214])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2021 02:52:29 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 23 Jul 2021 05:52:25 -0400
Message-Id: <20210723095225.562913-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915/bios: Fix ports mask
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Christoph Hellwig <hch@infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UE9SVF9BIHRvIFBPUlRfRiBhcmUgcmVndWxhciBpbnRlZ2VycyBkZWZpbmVkIGluIHRoZSBlbnVt
IHBvcnQsCndoaWxlIGZvcl9lYWNoX3BvcnRfbWFza2VkIHJlcXVpcmVzIGEgYml0IG1hc2sgZm9y
IHRoZSBwb3J0cy4KCkN1cnJlbnQgZ2l2ZW4gbWFzazogMGIxMTEKRGVzaXJlZCBtYXNrOiAwYjEx
MTExMQoKSSBub3RpY2VkIHRoaXMgd2hpbGUgQ2hyaXN0b3BoIHdhcyByZXBvcnRpbmcgYSBidWcg
Zm91bmQgb24gaGVhZGxlc3MKR1ZUIGNvbmZpZ3VyYXRpb24gd2hpY2ggYmlzZWN0IGJsYW1lZCBj
b21taXQgM2FlMDRjMGM3ZTYzICgiZHJtL2k5MTUvYmlvczoKbGltaXQgZGVmYXVsdCBvdXRwdXRz
IHRvIHBvcnRzIEEgdGhyb3VnaCBGIikKCnYyOiBBdm9pZCB1bm5lY2Vzc2FyeSBsaW5lIGNvbnRp
bnVhdGlvbnMgYXMgcG9pbnRlZCBieSBDSSBhbmQgQ2hyaXN0b3BoCgpDYzogQ2hyaXN0b3BoIEhl
bGx3aWcgPGhjaEBpbmZyYWRlYWQub3JnPgpGaXhlczogM2FlMDRjMGM3ZTYzICgiZHJtL2k5MTUv
YmlvczogbGltaXQgZGVmYXVsdCBvdXRwdXRzIHRvIHBvcnRzIEEgdGhyb3VnaCBGIikKQ2M6IEx1
Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpDYzogVmlsbGUgU3lyasOk
bMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IEphbmkgTmlrdWxhIDxqYW5p
Lm5pa3VsYUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52
aXZpQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uu
c291emFAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1h
cmNoaUBpbnRlbC5jb20+ClRlc3RlZC1ieTogQ2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBpbmZyYWRl
YWQub3JnPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jIHwg
MyArKy0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jCmluZGV4IDViNjkyMmUyOGVm
Mi4uYWE2NjdmYTcxMTU4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Jpb3MuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jp
b3MuYwpAQCAtMjE2Niw3ICsyMTY2LDggQEAgc3RhdGljIHZvaWQKIGluaXRfdmJ0X21pc3Npbmdf
ZGVmYXVsdHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiB7CiAJZW51bSBwb3J0IHBv
cnQ7Ci0JaW50IHBvcnRzID0gUE9SVF9BIHwgUE9SVF9CIHwgUE9SVF9DIHwgUE9SVF9EIHwgUE9S
VF9FIHwgUE9SVF9GOworCWludCBwb3J0cyA9IEJJVChQT1JUX0EpIHwgQklUKFBPUlRfQikgfCBC
SVQoUE9SVF9DKSB8CisJCSAgICBCSVQoUE9SVF9EKSB8IEJJVChQT1JUX0UpIHwgQklUKFBPUlRf
Rik7CiAKIAlpZiAoIUhBU19EREkoaTkxNSkgJiYgIUlTX0NIRVJSWVZJRVcoaTkxNSkpCiAJCXJl
dHVybjsKLS0gCjIuMzEuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cg==
