Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15104F2176
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2019 23:15:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E4B16E332;
	Wed,  6 Nov 2019 22:15:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 244B16EE34
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Nov 2019 22:15:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Nov 2019 14:15:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,275,1569308400"; d="scan'208";a="214396364"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga002.jf.intel.com with ESMTP; 06 Nov 2019 14:15:37 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: linux-firmware@kernel.org
Date: Wed,  6 Nov 2019 14:15:21 -0800
Message-Id: <20191106221521.20528-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] PR - i915 firmware updates (GuC and HuC for EHL and TGL)
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
Cc: jwboyer@kernel.org, intel-gfx@lists.freedesktop.org, kyle@kernel.org,
 ben@decadent.org.uk
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksCgpLaW5kbHkgYWRkIHRoZSBiZWxvdyBpOTE1IGNoYW5nZXMgdG8gbGludXgtZmlybXdhcmUu
Z2l0CgpUaGUgZm9sbG93aW5nIGNoYW5nZXMgc2luY2UgY29tbWl0IDExYmRjNTc4ZWM4NjFjNzc5
N2VjNjE0ZDYwNzM3YTA0NDhiNjgxOTU6CgogIHJ0dzg4OiBSVEw4NzIzRDogYWRkIGZpcm13YXJl
IGZpbGUgdjQ4ICgyMDE5LTExLTA0IDA2OjM3OjE2IC0wNTAwKQoKYXJlIGF2YWlsYWJsZSBpbiB0
aGUgR2l0IHJlcG9zaXRvcnkgYXQ6CgogIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2Ry
bS9kcm0tZmlybXdhcmUgZWhsX3RnbF9ndWNfaHVjCgpmb3IgeW91IHRvIGZldGNoIGNoYW5nZXMg
dXAgdG8gNGRlYmYyMTczODA0Mzk2NTQwZDE4OTBmYTIzNDdhZjc2ODljNDQyMDoKCiAgaTkxNTog
QWRkIEh1QyBmaXJtd2FyZSB2Ny4wLjMgZm9yIFRHTCAoMjAxOS0xMS0wNiAxMTo0Mjo0MiAtMDgw
MCkKCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0KRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyAoNCk6CiAgICAgIGk5MTU6IEFkZCBH
dUMgZmlybXdhcmUgdjMzLjAuNCBmb3IgRUhMCiAgICAgIGk5MTU6IEFkZCBIdUMgZmlybXdhcmUg
djkuMC4wIGZvciBFSEwKICAgICAgaTkxNTogQWRkIEd1QyBmaXJtd2FyZSB2MzUuMi4wIGZvciBU
R0wKICAgICAgaTkxNTogQWRkIEh1QyBmaXJtd2FyZSB2Ny4wLjMgZm9yIFRHTAoKIFdIRU5DRSAg
ICAgICAgICAgICAgICAgIHwgIDEyICsrKysrKysrKysrKwogaTkxNS9laGxfZ3VjXzMzLjAuNC5i
aW4gfCBCaW4gMCAtPiAzOTYyODggYnl0ZXMKIGk5MTUvZWhsX2h1Y185LjAuMC5iaW4gIHwgQmlu
IDAgLT4gNDk4ODgwIGJ5dGVzCiBpOTE1L3RnbF9ndWNfMzUuMi4wLmJpbiB8IEJpbiAwIC0+IDQx
NzcyOCBieXRlcwogaTkxNS90Z2xfaHVjXzcuMC4zLmJpbiAgfCBCaW4gMCAtPiA1MjE0MDggYnl0
ZXMKIDUgZmlsZXMgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKQogY3JlYXRlIG1vZGUgMTAwNjQ0
IGk5MTUvZWhsX2d1Y18zMy4wLjQuYmluCiBjcmVhdGUgbW9kZSAxMDA2NDQgaTkxNS9laGxfaHVj
XzkuMC4wLmJpbgogY3JlYXRlIG1vZGUgMTAwNjQ0IGk5MTUvdGdsX2d1Y18zNS4yLjAuYmluCiBj
cmVhdGUgbW9kZSAxMDA2NDQgaTkxNS90Z2xfaHVjXzcuMC4zLmJpbgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
