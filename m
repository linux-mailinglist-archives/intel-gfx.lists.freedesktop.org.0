Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31F68A3349
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2019 10:59:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98A8D6E10A;
	Fri, 30 Aug 2019 08:59:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46BD26E10A
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Aug 2019 08:59:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Aug 2019 01:59:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,446,1559545200"; d="scan'208";a="183745677"
Received: from jlahtine-desk.ger.corp.intel.com ([10.251.91.1])
 by orsmga003.jf.intel.com with ESMTP; 30 Aug 2019 01:59:01 -0700
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
To: Intel graphics driver community testing & development
 <intel-gfx@lists.freedesktop.org>
Date: Fri, 30 Aug 2019 11:58:49 +0300
Message-Id: <20190830085849.12519-2-joonas.lahtinen@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190830085849.12519-1-joonas.lahtinen@linux.intel.com>
References: <20190830085849.12519-1-joonas.lahtinen@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Indent GuC/WOPCM documentation
 sections
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

SW5kZW50IEd1Qy9XT1BDTSBkb2N1bWVudGF0aW9uIGNvcnJlY3RseSB0byByZXNpZGUgdW5kZXIK
Ik1lbW9yeSBNYW5hZ2VtZW50IGFuZCBDb21tYW5kIFN1Ym1pc3Npb24iIHNlY3Rpb24gdG8gYXZv
aWQKaXQgZXNjYXBpbmcgdG8gdGhlIHVwcGVyIGxldmVsIG5hdmlnYXRpb24uCgpTaWduZWQtb2Zm
LWJ5OiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+CkNj
OiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KQ2M6IERhbmll
bGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+CkNjOiBD
aHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBEb2N1bWVudGF0aW9u
L2dwdS9pOTE1LnJzdCB8IDE0ICsrKysrKystLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNl
cnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZ3B1
L2k5MTUucnN0IGIvRG9jdW1lbnRhdGlvbi9ncHUvaTkxNS5yc3QKaW5kZXggN2QxZjY1NjEyODU2
Li5lMjQ5ZWE3YjBlYzcgMTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRpb24vZ3B1L2k5MTUucnN0Cisr
KyBiL0RvY3VtZW50YXRpb24vZ3B1L2k5MTUucnN0CkBAIC00MDcsMzEgKzQwNywzMSBAQCBPYmpl
Y3QgVGlsaW5nIElPQ1RMcwogICAgOmRvYzogYnVmZmVyIG9iamVjdCB0aWxpbmcKIAogV09QQ00K
LT09PT09CistLS0tLQogCiBXT1BDTSBMYXlvdXQKLS0tLS0tLS0tLS0tLQorfn5+fn5+fn5+fn5+
CiAKIC4uIGtlcm5lbC1kb2M6OiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF93b3BjbS5jCiAg
ICA6ZG9jOiBXT1BDTSBMYXlvdXQKIAogR3VDCi09PT0KKy0tLQogCiBGaXJtd2FyZSBMYXlvdXQK
LS0tLS0tLS0tLS0tLS0tLS0tLS0KK35+fn5+fn5+fn5+fn5+fgogCiAuLiBrZXJuZWwtZG9jOjog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZndfYWJpLmgKICAgIDpkb2M6IEZp
cm13YXJlIExheW91dAogCiBHdUMtc3BlY2lmaWMgZmlybXdhcmUgbG9hZGVyCi0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tCit+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+CiAKIC4uIGtl
cm5lbC1kb2M6OiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfZncuYwogICAg
OmludGVybmFsOgogCiBHdUMtYmFzZWQgY29tbWFuZCBzdWJtaXNzaW9uCi0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tCit+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+CiAKIC4uIGtlcm5l
bC1kb2M6OiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfc3VibWlzc2lvbi5j
CiAgICA6ZG9jOiBHdUMtYmFzZWQgY29tbWFuZCBzdWJtaXNzaW9uCkBAIC00NDAsNyArNDQwLDcg
QEAgR3VDLWJhc2VkIGNvbW1hbmQgc3VibWlzc2lvbgogICAgOmludGVybmFsOgogCiBHdUMgQWRk
cmVzcyBTcGFjZQotLS0tLS0tLS0tLS0tLS0tLS0KK35+fn5+fn5+fn5+fn5+fn5+CiAKIC4uIGtl
cm5lbC1kb2M6OiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWMuYwogICAgOmRv
YzogR3VDIEFkZHJlc3MgU3BhY2UKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
