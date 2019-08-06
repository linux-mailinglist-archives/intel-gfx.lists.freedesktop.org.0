Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1717582C12
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2019 08:53:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74FA589D43;
	Tue,  6 Aug 2019 06:53:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from condef-03.nifty.com (condef-03.nifty.com [202.248.20.68])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1344089D43
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Aug 2019 06:53:18 +0000 (UTC)
Received: from conuserg-12.nifty.com ([10.126.8.75])by condef-03.nifty.com
 with ESMTP id x766e3On021018; Tue, 6 Aug 2019 15:40:03 +0900
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-12.nifty.com with ESMTP id x766dO7n002982;
 Tue, 6 Aug 2019 15:39:25 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-12.nifty.com x766dO7n002982
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: linux-kbuild@vger.kernel.org
Date: Tue,  6 Aug 2019 15:39:18 +0900
Message-Id: <20190806063923.1266-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nifty.com; s=dec2015msa; t=1565073565;
 bh=MYQWxBB4Al3Ia8pPRHpnmEigf5BHQKgKU8ZUvXIRiBM=;
 h=From:To:Cc:Subject:Date:From;
 b=iVbShB/JEzOl6DiDFu2PZU1LMIDOpQwQPZD9czJrvH5MjNlXB/C65CAktESwXz3ES
 iNBfhy2nCmOOaB0B6nnJEAPSdtmfdcBdFPw7tBpd0ajCIgKVcFUR/0ECw9Mxey36qn
 Ef231RdG6wDVean/w6XBJkTwB/DZhfbkP7SgxhNVpp6LzdK47ME9AGmVqT7C4ry5Ok
 9f8k3ofhlitJrfRFMBUUqiOpBC9ozgwS4XdFxEn0Gu7bq9+rgdkb0TpnxNg0kdbpDZ
 g7UrzH5AqnHb5rFkyq/mVSNWhIn4zMNAwy/wZr+Mugm/HPuDrWWmWy0sRIy+4bsDrA
 I6ioAhnUPXFUA==
Subject: [Intel-gfx] [PATCH 0/5] kbuild: allow big modules to sub-divide
 Makefiles
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
Cc: David Airlie <airlied@linux.ie>, Michal Marek <michal.lkml@markovi.net>,
 dri-devel@lists.freedesktop.org, Jani Nikula <jani.nikula@intel.com>,
 intel-gvt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Masahiro Yamada <yamada.masahiro@socionext.com>,
 Sam Ravnborg <sam@ravnborg.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

ClJlY2VudGx5LCBKYW5pIE5pa3VsYSByZXF1ZXN0cyBhIGJldHRlciBidWlsZCBzeXN0ZW0gc3Vw
cG9ydApmb3IgZHJpdmVycyBzcGFubmluZyBtdWx0aXBsZSBkaXJlY3Rvcmllcy4KKGJldHRlciBr
YnVpbGQgc3VwcG9ydCBmb3IgZHJpdmVycyBzcGFubmluZyBtdWx0aXBsZSBkaXJlY3Rvcmllcz8p
CgpJIGltcGxlbWVudGVkIGl0LCBzbyBwbGVhc2UgdGFrZSBhIGxvb2sgYXQgaXQuCgpOb3RlOgpU
aGUgc2luZ2xlIHRhcmdldHMgZG8gbm90IHdvcmsgY29ycmVjdGx5LgoKVGhlIHNpbmdsZSB0YXJn
ZXRzIGhhdmUgbmV2ZXIgd29ya2VkIGNvcnJlY3RseToKClsxXSBGb3IgaW5zdGFuY2UsICJtYWtl
IGRyaXZlcnMvZm9vL2Jhci9iYXoubyIgd2lsbCBkZXNjZW5kIGludG8KICAgIGRyaXZlcnMvZm9v
L2Jhci9NYWtlZmlsZSwgd2hpY2ggbWF5IG5vdCBuZWNlc3NhcmlseSBzcGVjaWZ5CiAgICB0aGUg
YnVpbGQgcnVsZSBvZiBiYXoubwoKICAgIEl0IGlzIHBvc3NpYmxlIGZvciBkcml2ZXJzL2Zvby9N
YWtlZmlsZSBoYXZpbmcKICAgICAgICBvYmotJChDT05GSUdfQkFaKSArPSBiYXIvYmF6Lm8KClsy
XSBzdWJkaXItY2NmbGFncy15IGRvZXMgbm90IHdvcmsuCgogICAgVGhlIHNpbmdsZSB0YXJnZXRz
IGRpcmVjdGx5IGRlc2NlbmQgaW50byB0aGUgZGlyZWN0b3J5IG9mCiAgICB0aGF0IGZpbGUgcmVz
aWRlcy4KCiAgICBJdCBtaXNzZWQgc3ViZGlyLWNjZmxhZ3MteSBpZiBpdCBpcyBzcGVjaWZpZXMg
aW4gcGFyZW50CiAgICBNYWtlZmlsZXMuCgpQZXJoYXBzLCBJIHdpbGwgaGF2ZSB0byBtYW5hZ2Ug
Y29ycmVjdCBpbXBsZW1lbnRhdGlvbiBvZiBzaW5nbGUgdGFyZ2V0cy4KCgoKTWFzYWhpcm8gWWFt
YWRhICg1KToKICBrYnVpbGQ6IHRyZWF0IGFuIG9iamVjdCBhcyBtdWx0aS11c2VkIHdoZW4gJChm
b28tKSBpcyBzZXQKICBrYnVpbGQ6IGNsZWFuIHVwIG1vZG5hbWUgY2FsY3VsYXRpb24KICBrYnVp
bGQ6IHJlbmFtZSBjbWRfYXJfYnVpbHRpbiB0byBjbWRfYXJfbm9fc3ltCiAga2J1aWxkOiBzdXBw
b3J0IGNvbXBvc2l0ZSBvYmplY3RzIHNwYW5uaW5nIGFjcm9zcyBtdWx0aXBsZSBNYWtlZmlsZXMK
ICBkcm06IGk5MTU6IGhpZXJhY2hpemUgTWFrZWZpbGVzCgogZHJpdmVycy9ncHUvZHJtL2k5MTUv
TWFrZWZpbGUgICAgICAgICAgICAgICB8IDEyNiArKy0tLS0tLS0tLS0tLS0tLS0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9NYWtlZmlsZSAgICAgICB8ICA2NCArKysrKysrKysrCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vTWFrZWZpbGUgICAgICAgICAgIHwgIDI3ICsrKysrCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL01ha2VmaWxlIHwgICAzICsKIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L01ha2VmaWxlICAgICAgICAgICAgfCAgMTYgKysrCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndnQvTWFrZWZpbGUgICAgICAgICAgIHwgIDMyICsrKystCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvTWFrZWZpbGUgICAgIHwgICA5ICsrCiBzY3JpcHRzL01h
a2VmaWxlLmJ1aWxkICAgICAgICAgICAgICAgICAgICAgIHwgIDM5ICsrKy0tLQogc2NyaXB0cy9N
YWtlZmlsZS5saWIgICAgICAgICAgICAgICAgICAgICAgICB8ICA2NiArKysrKystLS0tCiA5IGZp
bGVzIGNoYW5nZWQsIDIxOCBpbnNlcnRpb25zKCspLCAxNjQgZGVsZXRpb25zKC0pCiBjcmVhdGUg
bW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9NYWtlZmlsZQog
Y3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9NYWtlZmls
ZQoKLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
