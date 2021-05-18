Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DCB43873EE
	for <lists+intel-gfx@lfdr.de>; Tue, 18 May 2021 10:27:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60FC06EAB4;
	Tue, 18 May 2021 08:27:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C1256EAB8;
 Tue, 18 May 2021 08:27:53 +0000 (UTC)
IronPort-SDR: OgFqPJmkTbEwuNG42FqT51dYEwoIsXsvR+wFZLslsH17stqQ1ea0ZsgFZ8SjTpqhhLPTbF0O53
 qnCrddcsPapA==
X-IronPort-AV: E=McAfee;i="6200,9189,9987"; a="180937232"
X-IronPort-AV: E=Sophos;i="5.82,309,1613462400"; d="scan'208";a="180937232"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 01:27:52 -0700
IronPort-SDR: tGvW710FPrVzdz5tzQ774NII7AWlRrXf8mPHHv2T9CgEQibA8yuekk4nDPHszqy+Y/I2HqYKgI
 JR0iBjpG0C+Q==
X-IronPort-AV: E=Sophos;i="5.82,309,1613462400"; d="scan'208";a="611892341"
Received: from cmutgix-mobl.gar.corp.intel.com (HELO thellst-mobl1.intel.com)
 ([10.249.254.195])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 01:27:37 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Tue, 18 May 2021 10:26:53 +0200
Message-Id: <20210518082701.997251-8-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210518082701.997251-1-thomas.hellstrom@linux.intel.com>
References: <20210518082701.997251-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 07/15] drm/ttm: Export ttm_bo_tt_destroy()
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rm9yIHRoZSB1cGNvbWluZyBrbWFwcGluZyBpOTE1IG1lbWNweV9tb3ZlLCBleHBvcnQgdHRtX2Jv
X3R0X2Rlc3Ryb3koKS4KQSBmdXR1cmUgY2hhbmdlIG1pZ2h0IGJlIHRvIG1vdmUgdGhlIG5ldyBt
ZW1jcHlfbW92ZSBpbnRvIHR0bSwgcmVwbGFjaW5nCnRoZSBvbGQgaW9yZW1hcHBpbmcgb25lLgoK
Q2M6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KU2lnbmVkLW9m
Zi1ieTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29t
PgotLS0KIGRyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2JvLmMgfCAxICsKIDEgZmlsZSBjaGFuZ2Vk
LCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2Jv
LmMgYi9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9iby5jCmluZGV4IGNhMWIwOThiNmE1Ni4uNDQ3
OWM1NWFhYTFkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9iby5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2JvLmMKQEAgLTEyMjEsMyArMTIyMSw0IEBAIHZvaWQg
dHRtX2JvX3R0X2Rlc3Ryb3koc3RydWN0IHR0bV9idWZmZXJfb2JqZWN0ICpibykKIAl0dG1fdHRf
ZGVzdHJveShiby0+YmRldiwgYm8tPnR0bSk7CiAJYm8tPnR0bSA9IE5VTEw7CiB9CitFWFBPUlRf
U1lNQk9MKHR0bV9ib190dF9kZXN0cm95KTsKLS0gCjIuMzEuMQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
