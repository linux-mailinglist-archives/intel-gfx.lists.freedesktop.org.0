Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 947728F1A8
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Aug 2019 19:12:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E80626EA00;
	Thu, 15 Aug 2019 17:12:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05E1D6EA00
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Aug 2019 17:12:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Aug 2019 10:12:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,389,1559545200"; d="scan'208";a="167804187"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga007.jf.intel.com with ESMTP; 15 Aug 2019 10:12:31 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.129.244])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x7FHCU6i030661; Thu, 15 Aug 2019 18:12:30 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 15 Aug 2019 17:12:23 +0000
Message-Id: <20190815171228.31920-1-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/5] More WOPCM fixes
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

TW9yZSBXT1BDTSBmaXhlcwoKTWljaGFsIFdhamRlY3prbyAoNCk6CiAgZHJtL2k5MTUvd29wY206
IENoZWNrIFdPUENNIGxheW91dCBzZXBhcmF0ZWx5IGZyb20gY2FsY3VsYXRpb25zCiAgZHJtL2k5
MTUvd29wY206IFRyeSB0byB1c2UgYWxyZWFkeSBsb2NrZWQgV09QQ00gbGF5b3V0CiAgZHJtL2k5
MTUvd29wY206IFVwZGF0ZSBlcnJvciBtZXNzYWdlcwogIGRybS9pOTE1L3dvcG1jOiBGaXggU1BE
WCB0YWcgbG9jYXRpb24KCk1pY2hhxYIgV2luaWFyc2tpICgxKToKICBkcm0vaTkxNS91YzogTW92
ZSBGVyBzaXplIHNhbml0eSBjaGVjayBiYWNrIHRvIGZldGNoCgogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvdWMvaW50ZWxfdWNfZncuYyB8ICAxMSArKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
dWMvaW50ZWxfdWNfZncuaCB8ICAgNyArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfd29w
Y20uYyAgICAgICB8IDE5MSArKysrKysrKysrKysrKystLS0tLS0tLQogMyBmaWxlcyBjaGFuZ2Vk
LCAxNDMgaW5zZXJ0aW9ucygrKSwgNjYgZGVsZXRpb25zKC0pCgotLSAKMi4xOS4yCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
