Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 20BD937AC7A
	for <lists+intel-gfx@lfdr.de>; Tue, 11 May 2021 18:52:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE3FD6EAA8;
	Tue, 11 May 2021 16:52:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 881FB6EA9F;
 Tue, 11 May 2021 16:51:59 +0000 (UTC)
IronPort-SDR: IBlbF/VgdjU6xSdhQGhhSMef02KiXS5pBdG74D11Qu0dnt2W2VymWrKVyQwvGxA6zgd7gX5OmA
 +RlDQzOktShw==
X-IronPort-AV: E=McAfee;i="6200,9189,9981"; a="199544285"
X-IronPort-AV: E=Sophos;i="5.82,291,1613462400"; d="scan'208";a="199544285"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2021 09:51:59 -0700
IronPort-SDR: jOXngmyc/gCNjsp7UIGELDjm+IOTf3TsJflEZYSqDQ452ZfssR1aNZMY2F+9apto20jIk+Kb/4
 3qh0Hn1QjAVg==
X-IronPort-AV: E=Sophos;i="5.82,291,1613462400"; d="scan'208";a="537104910"
Received: from rdavies-mobl.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.2.133])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2021 09:51:56 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Tue, 11 May 2021 17:51:17 +0100
Message-Id: <20210511165117.428062-13-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210511165117.428062-1-matthew.auld@intel.com>
References: <20210511165117.428062-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 12/12] tests/i915/gem_exec_basic/dg1:
 Iterate over all memory regions
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
Cc: Vanshidhar Konda <vanshidhar.r.konda@intel.com>,
 thomas.hellstrom@linux.intel.com,
 Dominik Grzegorzek <dominik.grzegorzek@intel.com>,
 Janulgue Abdiel <abdiel.janulgue@intel.com>, intel-gfx@lists.freedesktop.org,
 "Kalamarz, Lukasz" <lukasz.kalamarz@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogIkthbGFtYXJ6LCBMdWthc3oiIDxsdWthc3oua2FsYW1hcnpAaW50ZWwuY29tPgoKQXMg
YSBwYXJ0IG9mIGxvY2FsIG1lbW9yeSBlZmZvcnQgd2UgbmVlZCB0byBtYWtlIHN1cmUsIHRoYXQK
ZXZlcnkgYXZhaWxhYmxlIG1lbW9yeSByZWdpb24gaXMgY292ZXJlZC4gVGhpcyBwYXRjaCBpcyBh
biBhdHRlbXB0CmZvciB0aGlzIHByb2JsZW0uIElmIGl0IHdpbGwgYmUgYWNjZXB0ZWQgaXQgd2ls
bCBiZSByZXBsaWNhdGVkIG9uCmVhY2ggdGVzdCB0aGF0IGNhbiBhY3R1YWxseSBiZW5lZml0IGZy
b20gaXQuCgpTaWduZWQtb2ZmLWJ5OiBEb21pbmlrIEdyemVnb3J6ZWsgPGRvbWluaWsuZ3J6ZWdv
cnpla0BpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEx1a2FzeiBLYWxhbWFyeiA8bHVrYXN6Lmth
bGFtYXJ6QGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogVmluYXkgQmVsZ2F1bWthciA8dmluYXku
YmVsZ2F1bWthckBpbnRlbC5jb20+CkNjOiBKYW51bGd1ZSBBYmRpZWwgPGFiZGllbC5qYW51bGd1
ZUBpbnRlbC5jb20+CkNjOiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+CkNj
OiBLYXRhcnp5bmEgRGVjIDxrYXRhcnp5bmEuZGVjQGludGVsLmNvbT4KQ2M6IFZhbnNoaWRoYXIg
S29uZGEgPHZhbnNoaWRoYXIuci5rb25kYUBpbnRlbC5jb20+CkNjOiBTdHVhcnQgU3VtbWVycyA8
c3R1YXJ0LnN1bW1lcnNAaW50ZWwuY29tPgpDYzogWmJpZ25pZXcgS2VtcGN6ecWEc2tpIDx6Ymln
bmlldy5rZW1wY3p5bnNraUBpbnRlbC5jb20+Ci0tLQogdGVzdHMvaTkxNS9nZW1fZXhlY19iYXNp
Yy5jIHwgMyArKy0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24o
LSkKCmRpZmYgLS1naXQgYS90ZXN0cy9pOTE1L2dlbV9leGVjX2Jhc2ljLmMgYi90ZXN0cy9pOTE1
L2dlbV9leGVjX2Jhc2ljLmMKaW5kZXggOGJjNGRjNTIuLjg3MmIxZDNiIDEwMDY0NAotLS0gYS90
ZXN0cy9pOTE1L2dlbV9leGVjX2Jhc2ljLmMKKysrIGIvdGVzdHMvaTkxNS9nZW1fZXhlY19iYXNp
Yy5jCkBAIC01Niw3ICs1Niw4IEBAIGlndF9tYWluCiAJCWlndF9hc3NlcnQocXVlcnlfaW5mbyk7
CiAKIAkJc2V0ID0gZ2V0X21lbW9yeV9yZWdpb25fc2V0KHF1ZXJ5X2luZm8sCi0JCQkJCSAgICBJ
OTE1X1NZU1RFTV9NRU1PUlkpOworCQkJCQkgICAgSTkxNV9TWVNURU1fTUVNT1JZLAorCQkJCQkg
ICAgSTkxNV9ERVZJQ0VfTUVNT1JZKTsKIAl9CiAKIAlpZ3Rfc3VidGVzdF93aXRoX2R5bmFtaWMo
ImJhc2ljIikgewotLSAKMi4yNi4zCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngK
