Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 14DD03D3F0D
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jul 2021 19:43:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22EF46FBAE;
	Fri, 23 Jul 2021 17:43:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14AA66FB9C
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Jul 2021 17:42:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10054"; a="199127534"
X-IronPort-AV: E=Sophos;i="5.84,264,1620716400"; d="scan'208";a="199127534"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2021 10:42:51 -0700
X-IronPort-AV: E=Sophos;i="5.84,264,1620716400"; d="scan'208";a="463229081"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2021 10:42:50 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 23 Jul 2021 10:42:24 -0700
Message-Id: <20210723174239.1551352-16-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210723174239.1551352-1-matthew.d.roper@intel.com>
References: <20210723174239.1551352-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 15/30] drm/i915/dg2: DG2 uses the same sseu
 limits as XeHP SDV
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

REcyIHN1cHBvcnRzIGNvbXB1dGUgRFNTIGFuZCBoYXMgdGhlIHNhbWUgbWF4aW11bSBudW1iZXIg
b2YgRFNTIGFuZCBFVQphcyBYZUhQIFNEVi4KClNpZ25lZC1vZmYtYnk6IE1hdHQgUm9wZXIgPG1h
dHRoZXcuZC5yb3BlckBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBDYXogWW9rb3lhbWEgPGNhei55
b2tveWFtYUBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxq
b3NlLnNvdXphQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9z
c2V1LmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24o
LSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9zc2V1LmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9zc2V1LmMKaW5kZXggNWQzYjhkZmY0NjRjLi5l
YWZmMjIxZGI1YjAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Nz
ZXUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9zc2V1LmMKQEAgLTE3MSw3
ICsxNzEsNyBAQCBzdGF0aWMgdm9pZCBnZW4xMl9zc2V1X2luZm9faW5pdChzdHJ1Y3QgaW50ZWxf
Z3QgKmd0KQogCSAqIGFjcm9zcyB0aGUgZW50aXJlIGRldmljZS4gVGhlbiBjYWxjdWxhdGUgb3V0
IHRoZSBEU1MgZm9yIGVhY2gKIAkgKiB3b3JrbG9hZCB0eXBlIHdpdGhpbiB0aGF0IHNvZnR3YXJl
IHNsaWNlLgogCSAqLwotCWlmIChJU19YRUhQU0RWKGd0LT5pOTE1KSkgeworCWlmIChJU19ERzIo
Z3QtPmk5MTUpIHx8IElTX1hFSFBTRFYoZ3QtPmk5MTUpKSB7CiAJCWludGVsX3NzZXVfc2V0X2lu
Zm8oc3NldSwgMSwgMzIsIDE2KTsKIAkJc3NldS0+aGFzX2NvbXB1dGVfZHNzID0gMTsKIAl9IGVs
c2UgewotLSAKMi4yNS40CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZngK
