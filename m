Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA92910A6CD
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 23:51:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3F6A6E1B4;
	Tue, 26 Nov 2019 22:51:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 664766E1B4
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 22:51:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 14:51:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,247,1571727600"; d="scan'208";a="260831817"
Received: from ldmartin1-desk.jf.intel.com ([10.54.74.64])
 by FMSMGA003.fm.intel.com with ESMTP; 26 Nov 2019 14:51:18 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Nov 2019 14:51:07 -0800
Message-Id: <20191126225110.8127-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/3] bios: dot not discard address space
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

djQgb2YgaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82OTc5MC8KCkFk
ZCBtaXNzaW5nIHVubWFwIGluIHBhdGNoIDIgYW5kIHVwZGF0ZSAzcmQgcGF0Y2ggdG8gdGhlIGJh
cmUgbWluaW11bS4KCkx1Y2FzIERlIE1hcmNoaSAoMyk6CiAgZHJtL2k5MTUvYmlvczogZG8gbm90
IGRpc2NhcmQgYWRkcmVzcyBzcGFjZQogIGRybS9pOTE1L2Jpb3M6IGZvbGQgcGNpIHJvbSBtYXAv
dW5tYXAgaW50byBjb3B5IGZ1bmN0aW9uCiAgZHJtL2k5MTUvYmlvczogYXNzdW1lIHZidCBpcyA0
LWJ5dGUgYWxpZ25lZCBpbnRvIG9wcm9tCgogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9iaW9zLmMgfCA3NSArKysrKysrKysrKysrKystLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQs
IDUxIGluc2VydGlvbnMoKyksIDI0IGRlbGV0aW9ucygtKQoKLS0gCjIuMjQuMAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
