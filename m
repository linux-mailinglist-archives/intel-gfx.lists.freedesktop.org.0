Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9494D9B519
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 19:08:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0A236ECFD;
	Fri, 23 Aug 2019 17:08:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02AB16ECFD
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 17:08:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Aug 2019 10:08:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,422,1559545200"; d="scan'208";a="208604537"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by fmsmga002.fm.intel.com with ESMTP; 23 Aug 2019 10:08:17 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 23 Aug 2019 10:08:21 -0700
Message-Id: <20190823170821.9286-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] PR for EHL GuC/HuC binaries
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

Rmlyc3QgZmlybXdhcmUgcmVsZWFzZSBmb3IgRUhMLCBub3cgd2l0aCB0aGUgY29ycmVjdCByZXBv
IGxpbmsuCgpUaGUgZm9sbG93aW5nIGNoYW5nZXMgc2luY2UgY29tbWl0IDA3YjkyNWI0NTBiZmI0
Y2YzZTE0MWM2MTJlYzViMTA0NjU4Y2QwMjA6CgogIEluc3RhbGwgb25seSBsaXN0ZWQgZmlybXdh
cmUgZmlsZXMgKDIwMTktMDgtMTUgMDc6NDY6NTMgLTA0MDApCgphcmUgYXZhaWxhYmxlIGluIHRo
ZSBHaXQgcmVwb3NpdG9yeSBhdDoKCiAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZHJt
L2RybS1maXJtd2FyZSBlaGxfZmlybXdhcmVzCgpmb3IgeW91IHRvIGZldGNoIGNoYW5nZXMgdXAg
dG8gYjExNWZhYjQ2Yzc4MmQ0Nzc4M2E3ZWNiNWZjNGIxODIxMjljYWViZjoKCiAgaTkxNTogQWRk
IEh1QyBmaXJtd2FyZSB2OS4wLjAgZm9yIEVITCAoMjAxOS0wOC0xOSAxNzoyNjowNiAtMDcwMCkK
Ci0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0KRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyAoMik6CiAgICAgIGk5MTU6IEFkZCBHdUMg
ZmlybXdhcmUgdjMzLjAuNCBmb3IgRUhMCiAgICAgIGk5MTU6IEFkZCBIdUMgZmlybXdhcmUgdjku
MC4wIGZvciBFSEwKCiBXSEVOQ0UgICAgICAgICAgICAgICAgICAgIHwgICA2ICsrKysrKwogaTkx
NS9laGxfZ3VjXzMzLjAuNC5iaW4gICB8IEJpbiAwIC0+IDM5NjI4OCBieXRlcwogaTkxNS9laGxf
aHVjX3ZlcjlfMF8wLmJpbiB8IEJpbiAwIC0+IDQ5ODg4MCBieXRlcwogMyBmaWxlcyBjaGFuZ2Vk
LCA2IGluc2VydGlvbnMoKykKIGNyZWF0ZSBtb2RlIDEwMDY0NCBpOTE1L2VobF9ndWNfMzMuMC40
LmJpbgogY3JlYXRlIG1vZGUgMTAwNjQ0IGk5MTUvZWhsX2h1Y192ZXI5XzBfMC5iaW4KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
