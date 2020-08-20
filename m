Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 402CB24C0F4
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Aug 2020 16:52:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 280FA6E0D5;
	Thu, 20 Aug 2020 14:52:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A34D86E0D5;
 Thu, 20 Aug 2020 14:52:41 +0000 (UTC)
IronPort-SDR: E7PxdTk8NBDE1WnMryLJ77qaUX4wy619aszJ2GW1/0vGuGMHya1fR0dheO60+t97dZGIJzmsVP
 VrB5b8Mt+dtg==
X-IronPort-AV: E=McAfee;i="6000,8403,9718"; a="240136028"
X-IronPort-AV: E=Sophos;i="5.76,333,1592895600"; d="scan'208";a="240136028"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2020 07:52:39 -0700
IronPort-SDR: xlSoDIijhUvDGNAtJsBnD/teYCQpQZ2tnYtZYqaRy06LWzevXFxj9aGqtk20qCA3UcpFCR0tRG
 Hr1EJCJL2r6Q==
X-IronPort-AV: E=Sophos;i="5.76,333,1592895600"; d="scan'208";a="472679553"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2020 07:52:37 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Thu, 20 Aug 2020 16:51:56 +0200
Message-Id: <20200820145215.13238-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v3 00/19] tests/core_hotunplug: Fixes and
 enhancements
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
Cc: =?UTF-8?q?Micha=C5=82=20Winiarski?= <michal.winiarski@intel.com>,
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q2xlYW4gdXAgdGhlIHRlc3QgY29kZSwgYWRkIHNvbWUgbmV3IGJhc2ljIHN1YnRlc3RzLCB0aGVu
IHVuYmxvY2sKdW5iaW5kIHRlc3QgdmFyaWFudHMuCgpPbmUgcGF0Y2ggaGFzIGJlZW4gcmVuYW1l
ZCwgdGhyZWUgbmV3IHBhdGNoZXMgYWRkZWQgdG8gdGhlIHNlcmllcywgYW5kCm9uZSBtb3JlIHBh
dGNoIGZvcm0gYSBmb3JtZXJseSBzdWJtaXR0ZWQgc2VyaWVzIHdpdGggbmV3IHN1YnRlc3RzCmlu
Y2x1ZGVkLgoKQE1pY2hhxYI6IFNpbmNlIG1vc3QgdjIvdjMgdXBkYXRlcyBhcmUgdHJpdmlhbCwg
SSd2ZSBwcmVzZXJ2ZWQgeW91cgp2MS92MiBSZXZpZXdkLWJ5OiBleGNlcHQgZm9yIGEgZmV3IHBh
dGNoZXMgd2l0aCBub24tdHJpdmlhbCBjaGFuZ2VzLAp3aGVyZSBJIG1hcmtlZCB5b3VyIFItYiBh
cyB2MS92MiBhcHBsaWNhYmxlLiAgUGxlYXNlIGhhdmUgYSBsb29rIGFuZApjb25maXJtIGlmIHlv
dSBhcmUgc3RpbGwgT0sgd2l0aCB0aGVtLgoKQFR2cnRrbzogUGxlYXNlIHN1cHBvcnQgbXkgYXR0
ZW1wdCB0byByZW1vdmUgdGhlIHVuYmluZCB0ZXN0IHZhcmlhbnRzCmZyb20gdGhlIGJsb2NrbGlz
dC4KCkBQZXRyaSwgQE1hcnRpbjogUGxlYXNlIGdpdmUgbWUgeW91ciBncmVlbiBsaXRlIGZvciBt
ZXJnaW5nIHRoaXMKc2VyaWVzIGlmIHlvdSBoYXZlIG5vIG9iamVjdGlvbnMuCgpUaGFua3MsCkph
bnVzegoKSmFudXN6IEtyenlzenRvZmlrICgxOSk6CiAgdGVzdHMvY29yZV9ob3R1bnBsdWc6IFVz
ZSBpZ3RfYXNzZXJ0X2ZkKCkKICB0ZXN0cy9jb3JlX2hvdHVucGx1ZzogQ29uc3RpZnkgZGV2X2J1
c19hZGRyIHN0cmluZwogIHRlc3RzL2NvcmVfaG90dW5wbHVnOiBDbGVhbiB1cCBkZXZpY2Ugb3Bl
biBlcnJvciBoYW5kbGluZwogIHRlc3RzL2NvcmVfaG90dW5wbHVnOiBDb25zb2xpZGF0ZSBkdXBs
aWNhdGVkIGRlYnVnIG1lc3NhZ2VzICMgbmV3CiAgdGVzdHMvY29yZV9ob3R1bnBsdWc6IEFzc2Vy
dCBzdWNjZXNzZnVsIGRldmljZSBmaWx0ZXIgYXBwbGljYXRpb24KICB0ZXN0cy9jb3JlX2hvdHVu
cGx1ZzogTWFpbnRhaW4gYSBzaW5nbGUgZGF0YSBzdHJ1Y3R1cmUgaW5zdGFuY2UKICB0ZXN0cy9j
b3JlX2hvdHVucGx1ZzogUGFzcyBlcnJvcnMgdmlhIGEgZGF0YSBzdHJ1Y3R1cmUgZmllbGQKICB0
ZXN0cy9jb3JlX2hvdHVucGx1ZzogSGFuZGxlIGRldmljZSBjbG9zZSBlcnJvcnMKICB0ZXN0cy9j
b3JlX2hvdHVucGx1ZzogUHJlcGFyZSBpbnZhcmlhbnQgZGF0YSBvbmNlIHBlciB0ZXN0IHJ1bgog
IHRlc3RzL2NvcmVfaG90dW5wbHVnOiBTa2lwIHNlbGVjdGl2ZWx5IG9uIHN5c2ZzIGNsb3NlIGVy
cm9ycwogIHRlc3RzL2NvcmVfaG90dW5wbHVnOiBSZWNvdmVyIGZyb20gc3VidGVzdCBmYWlsdXJl
cyAjIHJlbmFtZWQKICB0ZXN0cy9jb3JlX2hvdHVucGx1ZzogRmFpbCBzdWJ0ZXN0cyBvbiBkZXZp
Y2UgY2xvc2UgZXJyb3JzCiAgdGVzdHMvY29yZV9ob3R1bnBsdWc6IExldCB0aGUgZHJpdmVyIHRp
bWUgb3V0IGVzc2VudGlhbCBzeXNmcyBvcGVyYXRpb25zICMgbmV3CiAgdGVzdHMvY29yZV9ob3R1
bnBsdWc6IFByb2Nlc3MgcmV0dXJuIHZhbHVlcyBvZiBzeXNmcyBvcGVyYXRpb25zCiAgdGVzdHMv
Y29yZV9ob3R1bnBsdWc6IEFzc2VydCBleHBlY3RlZCBkZXZpY2UgcHJlc2VuY2UvYWJzZW5jZQog
IHRlc3RzL2NvcmVfaG90dW5wbHVnOiBFeHBsaWNpdGx5IGlnbm9yZSB1bnVzZWQgcmV0dXJuIHZh
bHVlcwogIHRlc3RzL2NvcmVfaG90dW5wbHVnOiBNb3JlIHRob3JvdWdoIGk5MTUgaGVhbHRoY2hl
Y2sgYW5kIHJlY292ZXJ5ICMgbmV3CiAgdGVzdHMvY29yZV9ob3R1bnBsdWc6IEFkZCAnbGF0ZWNs
b3NlIGJlZm9yZSByZXN0b3JlJyB2YXJpYW50cyAjIGluY2x1ZGVkCiAgdGVzdHMvY29yZV9ob3R1
bnBsdWc6IFVuLWJsb2NrbGlzdCAqYmluZCogc3VidGVzdHMKCiB0ZXN0cy9jb3JlX2hvdHVucGx1
Zy5jICAgICAgIHwgNTI1ICsrKysrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tCiB0ZXN0
cy9pbnRlbC1jaS9ibGFja2xpc3QudHh0IHwgICAyICstCiAyIGZpbGVzIGNoYW5nZWQsIDM5NiBp
bnNlcnRpb25zKCspLCAxMzEgZGVsZXRpb25zKC0pCgotLSAKMi4yMS4xCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
