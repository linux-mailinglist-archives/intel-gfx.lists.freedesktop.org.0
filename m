Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ED789532F
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2019 03:18:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 608476E4FB;
	Tue, 20 Aug 2019 01:18:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB0026E581
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 01:18:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Aug 2019 18:18:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,407,1559545200"; d="scan'208";a="180540228"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga003.jf.intel.com with ESMTP; 19 Aug 2019 18:18:09 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 19 Aug 2019 18:18:11 -0700
Message-Id: <20190820011811.32140-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.22.0
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

Rmlyc3QgZmlybXdhcmUgcmVsZWFzZSBmb3IgRUhMLgoKVGhlIGZvbGxvd2luZyBjaGFuZ2VzIHNp
bmNlIGNvbW1pdCAwN2I5MjViNDUwYmZiNGNmM2UxNDFjNjEyZWM1YjEwNDY1OGNkMDIwOgoKICBJ
bnN0YWxsIG9ubHkgbGlzdGVkIGZpcm13YXJlIGZpbGVzICgyMDE5LTA4LTE1IDA3OjQ2OjUzIC0w
NDAwKQoKYXJlIGF2YWlsYWJsZSBpbiB0aGUgR2l0IHJlcG9zaXRvcnkgYXQ6CgogIGh0dHBzOi8v
Y2dpdC5mcmVlZGVza3RvcC5vcmcvZHJtL2RybS1maXJtd2FyZS8gZWhsX2Zpcm13YXJlcwoKZm9y
IHlvdSB0byBmZXRjaCBjaGFuZ2VzIHVwIHRvIGIxMTVmYWI0NmM3ODJkNDc3ODNhN2VjYjVmYzRi
MTgyMTI5Y2FlYmY6CgogIGk5MTU6IEFkZCBIdUMgZmlybXdhcmUgdjkuMC4wIGZvciBFSEwgKDIw
MTktMDgtMTkgMTc6MjY6MDYgLTA3MDApCgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCkRhbmllbGUgQ2VyYW9sbyBTcHVyaW8g
KDIpOgogICAgICBpOTE1OiBBZGQgR3VDIGZpcm13YXJlIHYzMy4wLjQgZm9yIEVITAogICAgICBp
OTE1OiBBZGQgSHVDIGZpcm13YXJlIHY5LjAuMCBmb3IgRUhMCgogV0hFTkNFICAgICAgICAgICAg
ICAgICAgICB8ICAgNiArKysrKysKIGk5MTUvZWhsX2d1Y18zMy4wLjQuYmluICAgfCBCaW4gMCAt
PiAzOTYyODggYnl0ZXMKIGk5MTUvZWhsX2h1Y192ZXI5XzBfMC5iaW4gfCBCaW4gMCAtPiA0OTg4
ODAgYnl0ZXMKIDMgZmlsZXMgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspCiBjcmVhdGUgbW9kZSAx
MDA2NDQgaTkxNS9laGxfZ3VjXzMzLjAuNC5iaW4KIGNyZWF0ZSBtb2RlIDEwMDY0NCBpOTE1L2Vo
bF9odWNfdmVyOV8wXzAuYmluCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
