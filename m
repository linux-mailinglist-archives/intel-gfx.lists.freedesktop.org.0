Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A7C124C0FA
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Aug 2020 16:52:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5892B6E378;
	Thu, 20 Aug 2020 14:52:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BDB96E378;
 Thu, 20 Aug 2020 14:52:53 +0000 (UTC)
IronPort-SDR: 9dCwIdoS9IPSbHmrO9H0A4H4znEsaUa8UgBRueRRz9xr9uHRjqjaaUw0oTb0XdjgR2PgEiwo5V
 hBv3xBnLmj+w==
X-IronPort-AV: E=McAfee;i="6000,8403,9718"; a="240136115"
X-IronPort-AV: E=Sophos;i="5.76,333,1592895600"; d="scan'208";a="240136115"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2020 07:52:52 -0700
IronPort-SDR: /bwdiQaJVdDxEcxzWZ+ulV22G6wONdLWFbwoFjGzTa5COJ1HywWlA1De+BjXyJszJ20KZAcQmg
 Yp2142BJF+tg==
X-IronPort-AV: E=Sophos;i="5.76,333,1592895600"; d="scan'208";a="472679660"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2020 07:52:50 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Thu, 20 Aug 2020 16:52:01 +0200
Message-Id: <20200820145215.13238-6-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200820145215.13238-1-janusz.krzysztofik@linux.intel.com>
References: <20200820145215.13238-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v3 05/19] tests/core_hotunplug: Assert
 successful device filter application
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
Cc: =?UTF-8?q?Micha=C5=82=20Winiarski?= <michal.winiarski@intel.com>,
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UmV0dXJuIHZhbHVlIG9mIGlndF9kZXZpY2VfZmlsdGVyX2FkZCgpIHJlcHJlc2VudGluZyBhIG51
bWJlciBvZgpzdWNjZXNzZnVsbHkgaW5zdGFsbGVkIGRldmljZSBmaWx0ZXJzIGlzIG5vdyBpZ25v
cmVkLiAgRmFpbCBpZiBub3QgMS4KClNpZ25lZC1vZmYtYnk6IEphbnVzeiBLcnp5c3p0b2ZpayA8
amFudXN6LmtyenlzenRvZmlrQGxpbnV4LmludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IE1pY2hhxYIg
V2luaWFyc2tpIDxtaWNoYWwud2luaWFyc2tpQGludGVsLmNvbT4KLS0tCiB0ZXN0cy9jb3JlX2hv
dHVucGx1Zy5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0
aW9uKC0pCgpkaWZmIC0tZ2l0IGEvdGVzdHMvY29yZV9ob3R1bnBsdWcuYyBiL3Rlc3RzL2NvcmVf
aG90dW5wbHVnLmMKaW5kZXggNTA5MzIzM2Q3Li40NmY5YWQxMTggMTAwNjQ0Ci0tLSBhL3Rlc3Rz
L2NvcmVfaG90dW5wbHVnLmMKKysrIGIvdGVzdHMvY29yZV9ob3R1bnBsdWcuYwpAQCAtMTkzLDcg
KzE5Myw3IEBAIHN0YXRpYyB2b2lkIHNldF9maWx0ZXJfZnJvbV9kZXZpY2UoaW50IGZkKQogCWln
dF9hc3NlcnQocmVhbHBhdGgocGF0aCwgZHN0KSk7CiAKIAlpZ3RfZGV2aWNlX2ZpbHRlcl9mcmVl
X2FsbCgpOwotCWlndF9kZXZpY2VfZmlsdGVyX2FkZChmaWx0ZXIpOworCWlndF9hc3NlcnRfZXEo
aWd0X2RldmljZV9maWx0ZXJfYWRkKGZpbHRlciksIDEpOwogfQogCiAvKiBTdWJ0ZXN0cyAqLwot
LSAKMi4yMS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
