Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D046339C44C
	for <lists+intel-gfx@lfdr.de>; Sat,  5 Jun 2021 02:21:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFC006E437;
	Sat,  5 Jun 2021 00:21:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01D216E436;
 Sat,  5 Jun 2021 00:20:58 +0000 (UTC)
IronPort-SDR: /E8YdxfUS6UW9yP8VP3Nk7oh68+N2mZ9olJtjV5y7AXvT6sqFBHKVtJcLGJlyty2pBDzIHvy5z
 i8n296vFaDNg==
X-IronPort-AV: E=McAfee;i="6200,9189,10005"; a="204369565"
X-IronPort-AV: E=Sophos;i="5.83,249,1616482800"; d="scan'208";a="204369565"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 17:20:58 -0700
IronPort-SDR: CtqDjBcYidukEhlgPPtYwvyv3qllyOrBvMVR6VKC0Fb40ObDiAWBrY8WRvlTyJDUln9KbBhm2U
 3Ic1T8gwaNkg==
X-IronPort-AV: E=Sophos;i="5.83,249,1616482800"; d="scan'208";a="446862419"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 17:20:58 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Fri,  4 Jun 2021 17:20:07 -0700
Message-Id: <20210605002007.4153933-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] dma-buf: fix build due to missing export
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 Sumit Semwal <sumit.semwal@linaro.org>, linaro-mm-sig@lists.linaro.org,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q29tbWl0IDBjNmI1MjJhYmMyYSAoImRtYS1idWY6IGNsZWFudXAgZG1hLXJlc3Ygc2hhcmVkIGZl
bmNlIGRlYnVnZ2luZyBhIGJpdCB2MiIpCnR1cm5lZCBkbWFfcmVzdl9yZXNldF9zaGFyZWRfbWF4
KCkgaW50byBhIGZ1bmN0aW9uIHdoZW4KQ09ORklHX0RFQlVHX01VVEVYRVMgaXMgc2V0LCBidXQg
Zm9yZ290IHRvIGV4cG9ydCBpdC4gVGhhdCByZXN1bHRlZCBpbiBhCmJyb2tlbiBidWlsZDoKCglF
UlJPUjogbW9kcG9zdDogImRtYV9yZXN2X3Jlc2V0X3NoYXJlZF9tYXgiIFtkcml2ZXJzL2dwdS9k
cm0vdmdlbS92Z2VtLmtvXSB1bmRlZmluZWQhCglFUlJPUjogbW9kcG9zdDogImRtYV9yZXN2X3Jl
c2V0X3NoYXJlZF9tYXgiIFtkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1LmtvXSB1bmRlZmluZWQh
CglFUlJPUjogbW9kcG9zdDogImRtYV9yZXN2X3Jlc2V0X3NoYXJlZF9tYXgiIFtkcml2ZXJzL2dw
dS9kcm0vYW1kL2FtZGdwdS9hbWRncHUua29dIHVuZGVmaW5lZCEKCUVSUk9SOiBtb2Rwb3N0OiAi
ZG1hX3Jlc3ZfcmVzZXRfc2hhcmVkX21heCIgW2RyaXZlcnMvZ3B1L2RybS90dG0vdHRtLmtvXSB1
bmRlZmluZWQhCglFUlJPUjogbW9kcG9zdDogImRtYV9yZXN2X3Jlc2V0X3NoYXJlZF9tYXgiIFtk
cml2ZXJzL2dwdS9kcm0vZHJtLmtvXSB1bmRlZmluZWQhCglFUlJPUjogbW9kcG9zdDogImRtYV9y
ZXN2X3Jlc2V0X3NoYXJlZF9tYXgiIFtkcml2ZXJzL2dwdS9kcm0vZHJtX3ZyYW1faGVscGVyLmtv
XSB1bmRlZmluZWQhCgltYWtlWzFdOiAqKiogW3NjcmlwdHMvTWFrZWZpbGUubW9kcG9zdDoxNTA6
IG1vZHVsZXMtb25seS5zeW12ZXJzXSBFcnJvciAxCgpGaXhlczogMGM2YjUyMmFiYzJhICgiZG1h
LWJ1ZjogY2xlYW51cCBkbWEtcmVzdiBzaGFyZWQgZmVuY2UgZGVidWdnaW5nIGEgYml0IHYyIikK
Q2M6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KQ2M6IERhbmll
bCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+CkNjOiBTdW1pdCBTZW13YWwgPHN1bWl0
LnNlbXdhbEBsaW5hcm8ub3JnPgpDYzogIkNocmlzdGlhbiBLw7ZuaWciIDxjaHJpc3RpYW4ua29l
bmlnQGFtZC5jb20+CkNjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IGRyaS1kZXZl
bEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
ZwpTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNv
bT4KLS0tCiBkcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYyB8IDEgKwogMSBmaWxlIGNoYW5nZWQs
IDEgaW5zZXJ0aW9uKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMg
Yi9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYwppbmRleCAzOTY0ZGY0Mzg1MDUuLjYxMzJiYTYz
MTk5MSAxMDA2NDQKLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMKKysrIGIvZHJpdmVy
cy9kbWEtYnVmL2RtYS1yZXN2LmMKQEAgLTIyNiw2ICsyMjYsNyBAQCB2b2lkIGRtYV9yZXN2X3Jl
c2V0X3NoYXJlZF9tYXgoc3RydWN0IGRtYV9yZXN2ICpvYmopCiAJCWZlbmNlLT5zaGFyZWRfbWF4
ID0gZmVuY2UtPnNoYXJlZF9jb3VudDsKIAl9CiB9CitFWFBPUlRfU1lNQk9MKGRtYV9yZXN2X3Jl
c2V0X3NoYXJlZF9tYXgpOwogI2VuZGlmCiAKIC8qKgotLSAKMi4zMS4xCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
