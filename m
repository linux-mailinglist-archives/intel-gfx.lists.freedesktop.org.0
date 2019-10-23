Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 80D5EE1303
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2019 09:24:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 723076E970;
	Wed, 23 Oct 2019 07:24:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95CA16E96C
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Oct 2019 07:24:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Oct 2019 00:24:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,219,1569308400"; d="scan'208";a="201050738"
Received: from hchegond-ivm1.jf.intel.com ([10.54.81.127])
 by orsmga003.jf.intel.com with ESMTP; 23 Oct 2019 00:24:40 -0700
From: Harish Chegondi <harish.chegondi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Oct 2019 00:24:39 -0700
Message-Id: <cover.1571813756.git.harish.chegondi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <55619dbe3b3399292d86420725a0138ced488cca.1557985315.git.harish.chegondi@intel.com>
References: <55619dbe3b3399292d86420725a0138ced488cca.1557985315.git.harish.chegondi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 0/1] Invalid CRCs causing CRC mismatch test
 failures
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

SGVsbG8sCgpUaGUgZmlyc3QgdmVyc2lvbiBvZiB0aGlzIHBhdGNoIGhhcyBiZWVuICJBY2tlZC1i
eSIgYnV0IHdhc24ndCAiUmV2aWV3ZWQtYnkiIGFzIHRoZSBwYXRjaCBhZGRzIGFub3RoZXIgd29y
a2Fyb3VuZCBvbiB0b3Agb2YgYW4gYWxyZWFkeSBleGlzdGluZyB3b3JrYXJvdW5kLiBUaGUgcGF0
Y2ggZG9lc24ndCBmaXggdGhlIGNhdXNlIG9mIGludmFsaWQgQ1JDcyBiZWluZyBnZW5lcmF0ZWQg
d2hpY2ggc3RpbGwgbmVlZHMgdG8gYmUgaW52ZXN0aWdhdGVkIGFuZCBmaXhlZC4gSSBhbSByZWJh
c2luZyBhbmQgcmVzZW5kaW5nIHRoZSBwYXRjaCB0byBzZWVrIGZlZWRiYWNrIG9uIGhvdyB0byBt
b3ZlIGZ1cnRoZXIgd2l0aCB0aGlzIHBhdGNoLgoKVGhhbmsgWW91CkhhcmlzaCBDaGVnb25kaSAo
MSk6CiAgZHJtL2k5MTU6IHNraXAgdGhlIHNlY29uZCBDUkMgZXZlbiBmb3IgR0VOIDcgR1BVcwoK
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMgfCA0ICsrLS0KIDEgZmlsZSBjaGFuZ2Vk
LCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgotLSAKMi4yMS4wCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
