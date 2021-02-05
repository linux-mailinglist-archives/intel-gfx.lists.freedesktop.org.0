Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 79D0C3110B3
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Feb 2021 20:07:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9000D6F4AA;
	Fri,  5 Feb 2021 19:07:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A08B26F4AA
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Feb 2021 19:07:47 +0000 (UTC)
IronPort-SDR: y7R4jc3QDIgIMJlCywIe9zZ3+QponFIS69C006OeuPy0GN+BnLqOs/RgeGXd5i6qwIDrg+MwP2
 5wxbE9Mo5VdA==
X-IronPort-AV: E=McAfee;i="6000,8403,9886"; a="177971280"
X-IronPort-AV: E=Sophos;i="5.81,155,1610438400"; d="scan'208";a="177971280"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2021 11:07:47 -0800
IronPort-SDR: nKLDv/Q4RkhvHBc7O2+Jjjb862cgnPjeeW7LyfgO1KZ4ayZujoxvDwU9UFz3+cvxYl8AMu5+I6
 Yb8ttAYskHUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,155,1610438400"; d="scan'208";a="397581070"
Received: from kialmah1-desk.jf.intel.com ([10.23.15.164])
 by orsmga007.jf.intel.com with ESMTP; 05 Feb 2021 11:07:46 -0800
From: Khaled Almahallawy <khaled.almahallawy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  5 Feb 2021 11:09:36 -0800
Message-Id: <20210205190936.3172458-1-khaled.almahallawy@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210205064531.3158292-1-khaled.almahallawy@intel.com>
References: <20210205064531.3158292-1-khaled.almahallawy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915: Add link rate and lane count to
 i915_display_info
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

TGluayByYXRlIGFuZCBsYW5lIGNvdW50IGluZm9ybWF0aW9uIGFyZSBtb3JlIGVhc2llciBhbmQg
ZmFzdGVyIHRvIGNoZWNrIGluIGk5MTVfZGlzcGxheV9pbmZvCnRoYW4gY2hlY2tpbmcga2VybmVs
IGxvZ3MgZm9yIHBlb3BsZSBub3QgZmFtaWxpYXIgd2l0aCBpOTE1IGluIHRoZSBmb2xsb3dpbmcg
c2NlbmFyaW9zOgoqIERlYnVnZ2luZyBEUCB0dW5uZWwgYmFuZHdpZHRoIHVzYWdlIGluIFRodW5k
ZXJib2x0IGRyaXZlci4KKiBJbiBVU0I0IGNlcnRpZmljYXRpb24sIGl0IGlzIGEgcmVxdWlyZW1l
bnQgdG8ga25vdyB3aGljaCBsaW5rIHJhdGUgdXNlZCBieQogIG1vbml0b3IgdG8gcHJvdmUgdGhh
dCBEUCB0dW5uZWwgaGFuZGxlIHVwIHRvIEhCUjMKKiBJbiBQSFkgQ29tcGxpYW5jZSwgd2hlbiB0
aGUgY29ubmVjdG9yIHByb3BlcyBhcmUgbm90IG1vdW50ZWQgY29ycmVjdGx5LAogIHNvbWUgZGlz
cGxheSBsYW5lcyB3aWxsIG5vdCBzaG93IHVwIGluIHRoZSBEUCBPc2NpbGxvc2NvcGUgYW5kIHdp
bGwgZmFpbCBDVFMuCiAgSnVzdCBnaXZlIHRoZSB0ZXN0ZXIgYW4gZWFzeSB3YXkgdG8gaWRlbnRp
Znkgd2hlcmUgdGhlIHByb2JsZW0gaXMuCgp2MihWaWxsZSk6IFVuaWZvcm0gc3R5bGUgZm9yICc9
JyBhbmQgdXNlICdwb3J0IGNsb2NrJyBpbnN0ZWFkIG9mICdsaW5rIHJhdGUnCgpDYzogSW1yZSBE
ZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4KQ0M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291
emFAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBLaGFsZWQgQWxtYWhhbGxhd3kgPGtoYWxlZC5h
bG1haGFsbGF3eUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5X2RlYnVnZnMuYyB8IDUgKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2Vy
dGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RlYnVnZnMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZWJ1Z2ZzLmMKaW5kZXggZDYyYjE4ZDVlY2Q4Li5jYjA4
OGEwYTI2ZjMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV9kZWJ1Z2ZzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5X2RlYnVnZnMuYwpAQCAtOTkwLDkgKzk5MCwxMCBAQCBzdGF0aWMgdm9pZCBpbnRl
bF9jcnRjX2luZm8oc3RydWN0IHNlcV9maWxlICptLCBzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykK
IAkJCSAgIHllc25vKGNydGNfc3RhdGUtPmh3LmFjdGl2ZSksCiAJCQkgICBEUk1fTU9ERV9BUkco
JmNydGNfc3RhdGUtPmh3LmFkanVzdGVkX21vZGUpKTsKIAotCQlzZXFfcHJpbnRmKG0sICJcdHBp
cGUgc3JjIHNpemU9JWR4JWQsIGRpdGhlcj0lcywgYnBwPSVkXG4iLAorCQlzZXFfcHJpbnRmKG0s
ICJcdHBpcGUgc3JjIHNpemU9JWR4JWQsIGRpdGhlcj0lcywgYnBwPSVkLCBwb3J0IGNsb2NrPSVk
LCBsYW5lIGNvdW50PSVkXG4iLAogCQkJICAgY3J0Y19zdGF0ZS0+cGlwZV9zcmNfdywgY3J0Y19z
dGF0ZS0+cGlwZV9zcmNfaCwKLQkJCSAgIHllc25vKGNydGNfc3RhdGUtPmRpdGhlciksIGNydGNf
c3RhdGUtPnBpcGVfYnBwKTsKKwkJCSAgIHllc25vKGNydGNfc3RhdGUtPmRpdGhlciksIGNydGNf
c3RhdGUtPnBpcGVfYnBwLAorCQkJICAgY3J0Y19zdGF0ZS0+cG9ydF9jbG9jaywgY3J0Y19zdGF0
ZS0+bGFuZV9jb3VudCk7CiAKIAkJaW50ZWxfc2NhbGVyX2luZm8obSwgY3J0Yyk7CiAJfQotLSAK
Mi4yNS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
