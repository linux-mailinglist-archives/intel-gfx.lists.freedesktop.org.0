Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 42BCD7245C
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2019 04:22:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F65C6E346;
	Wed, 24 Jul 2019 02:22:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E12146E346
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jul 2019 02:22:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jul 2019 19:22:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,300,1559545200"; d="scan'208";a="160422004"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga007.jf.intel.com with ESMTP; 23 Jul 2019 19:22:14 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 23 Jul 2019 19:21:45 -0700
Message-Id: <20190724022153.8927-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 0/8] uC fw path unification + misc clean-up
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

Q29tcGFyZWQgdG8gdjEgSSd2ZSBwdXNoZWQgYSBiaXRoIGZ1cnRoZXIgd2l0aCB0aGUgZmUgc2Vs
ZWN0aW9uCnVuaWZpY2F0aW9uLCBtb3ZpbmcgdG8gYSB1bmlmaWVkIGxpc3QgZm9yIGJvdGggR3VD
IGFuZCBIdUMuIENoZWNrcGF0Y2gKaXNuJ3QgaG93ZXZlciB0b28gaGFwcHkgd2l0aCB0aGUgbWFj
cm9zIGludm9sdmVkIQoKQXBhcnQgZm9yIHRoZSBhYm92ZSBJJ3ZlIG1haW5seSBhZGRyZXNzZWQg
cmV2aWV3IGZlZWRiYWNrLgoKQ2M6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29A
aW50ZWwuY29tPgpDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CgpE
YW5pZWxlIENlcmFvbG8gU3B1cmlvICg4KToKICBkcm0vaTkxNS91YzogVW5pZnkgdUMgcGxhdGZv
cm0gY2hlY2sKICBkcm0vaTkxNS91YzogVW5pZnkgdUMgRlcgc2VsZWN0aW9uCiAgZHJtL2k5MTUv
dWM6IFVuaWZ5IHVjX2Z3IHN0YXR1cyB0cmFja2luZwogIGRybS9pOTE1L3VjOiBNb3ZlIHhmZXIg
cnNhIGxvZ2ljIHRvIGNvbW1vbiBmdW5jdGlvbgogIGRybS9pOTE1L2h1YzogQ29weSBodWMgcnNh
IG9ubHkgb25jZQogIGRybS9pOTE1L2d1YzogU2V0IEd1QyBpbml0IHBhcmFtcyBvbmx5IG9uY2UK
ICBkcm0vaTkxNS91YzogUGx1bWIgdGhlIGd0IHRocm91Z2ggZndfdXBsb2FkCiAgZHJtL2k5MTUv
dWM6IFVuaWZ5IHVDIGZpcm13YXJlIHVwbG9hZAoKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX3Jlc2V0LmMgICAgICAgICB8ICAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMv
aW50ZWxfZ3VjLmMgICAgICAgIHwgMTQzICsrKystLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC91Yy9pbnRlbF9ndWMuaCAgICAgICAgfCAgIDkgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L3VjL2ludGVsX2d1Y19mdy5jICAgICB8IDIxNSArKy0tLS0tLS0tLQogLi4uL2dwdS9kcm0vaTkx
NS9ndC91Yy9pbnRlbF9ndWNfc3VibWlzc2lvbi5jIHwgICAyICstCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC91Yy9pbnRlbF9odWMuYyAgICAgICAgfCAgMzUgKy0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L3VjL2ludGVsX2h1Yy5oICAgICAgICB8ICAgNiArLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvdWMvaW50ZWxfaHVjX2Z3LmMgICAgIHwgMTcwICstLS0tLS0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYyAgICAgICAgIHwgIDE0ICstCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5jICAgICAgfCAzNDIgKysrKysrKysrKysrKystLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5oICAgICAgfCAgOTIgKyst
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL3NlbGZ0ZXN0X2d1Yy5jICAgICB8ICAgNCAr
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMgICAgICAgICAgIHwgICA2ICst
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAgICAgICAgfCAgMTUgKy0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1X2Vycm9yLmMgICAgICAgICB8ICAgNCArLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyAgICAgICAgICAgICAgIHwgICAyICstCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jICAgICAgICAgICAgICAgfCAgIDQgKy0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmggICAgICB8ICAgMiArLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyAgICAgICAgICAgICAgIHwgICA0ICstCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF93b3BjbS5jICAgICAgICAgICAgfCAgIDQgKy0KIDIwIGZp
bGVzIGNoYW5nZWQsIDUwMSBpbnNlcnRpb25zKCspLCA1NzQgZGVsZXRpb25zKC0pCgotLSAKMi4y
Mi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
