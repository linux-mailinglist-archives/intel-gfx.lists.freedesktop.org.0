Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80425BE679
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2019 22:33:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF70E6FB54;
	Wed, 25 Sep 2019 20:33:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7312F6FB64
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2019 20:33:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Sep 2019 13:33:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,549,1559545200"; d="scan'208";a="389356132"
Received: from jausmus-gentoo-dev6.jf.intel.com (HELO jausmus-gentoo-dev6)
 ([10.54.75.43])
 by fmsmga005.fm.intel.com with SMTP; 25 Sep 2019 13:33:19 -0700
Received: by jausmus-gentoo-dev6 (sSMTP sendmail emulation);
 Wed, 25 Sep 2019 13:33:58 -0700
From: James Ausmus <james.ausmus@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Sep 2019 13:33:49 -0700
Message-Id: <20190925203352.9827-1-james.ausmus@intel.com>
X-Mailer: git-send-email 2.22.1
MIME-Version: 1.0
Subject: [Intel-gfx] Add support for TGL in SAGV code paths
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

RXZlbiB0aG91Z2ggd2UgY2FuJ3QgYWN0dWFsbHkgdHVybiBvbiBTQUdWIGZvciBUR0wgdW50aWwg
SFNERVMKMTQwOTU0Mjg5NSBpcyByZXNvbHZlZCwgdGhlc2UgcGF0Y2hlcyBwcmVwYXJlIHRoZSBj
b2RlIGZvciBlbmFibGluZwpTQUdWLCBzbyB0aGF0IG9uY2UgdGhlIEhTREVTIGlzIHJlc29sdmVk
LCBhbGwgd2UgaGF2ZSB0byBkbyBpcyByZXZlcnQKOGZmYTQzOTJhMzJlICgiZHJtL2k5MTUvdGds
OiBkaXNhYmxlIFNBR1YgdGVtcG9yYXJpbHkiKSB0byB0dXJuIGl0IG9uLgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
