Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CD1D923EA19
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Aug 2020 11:21:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 124346E999;
	Fri,  7 Aug 2020 09:21:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C8076E994;
 Fri,  7 Aug 2020 09:21:50 +0000 (UTC)
IronPort-SDR: 2LIJf/l9HcGSK+lmUFW7Ui3n6AJ8XXiCk2z29YLtaRW6Vze2qlF/gelUbD6LEC6RvJbU6cI+rD
 33VwGGGPbOpQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9705"; a="171106835"
X-IronPort-AV: E=Sophos;i="5.75,445,1589266800"; d="scan'208";a="171106835"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2020 02:21:40 -0700
IronPort-SDR: m5G3uvXRjrtnVATY4xrG1JQoMHxvzpjLthTleWa8uCrrHQe0qmddqE0P3NDkHsBHTd8wm0DM7C
 C5T0BGmwnZLw==
X-IronPort-AV: E=Sophos;i="5.75,445,1589266800"; d="scan'208";a="333492052"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2020 02:21:38 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri,  7 Aug 2020 11:19:46 +0200
Message-Id: <20200807092002.32350-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v2 00/16] tests/core_hotunplug: Fixes and
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
Cc: intel-gfx@lists.freedesktop.org,
 =?UTF-8?q?Micha=C5=82=20Winiarski?= <michal.winiarski@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q2xlYW4gdXAgdGhlIHRlc3QgY29kZSBhbmQgdW5ibG9jayB1bmJpbmQgdmFyaWFudHMuCgpATWlj
aGHFgjogU2luY2UgbW9zdCB2MiB1cGRhdGVzIGFyZSB0cml2aWFsLCBJJ3ZlIHByZXNlcnZlZCB5
b3VyClJldmlld2QtYnk6IGV4Y2VwdCBmb3IgcGF0Y2ggMTEvMTYgIkZvbGxvdyBmYWlsZWQgc3Vi
dGVzdHMgd2l0aCBoZWFsdGgKY2hlY2tzIiAtIHBsZWFzZSBoYXZlIGEgbG9vayBhbmQgY29uZmly
bSBpZiB5b3UgYXJlIHN0aWxsIE9LIHdpdGggaXQuCgpUaGFua3MsCkphbnVzegoKSmFudXN6IEty
enlzenRvZmlrICgxNik6CiAgdGVzdHMvY29yZV9ob3R1bnBsdWc6IFVzZSBpZ3RfYXNzZXJ0X2Zk
KCkKICB0ZXN0cy9jb3JlX2hvdHVucGx1ZzogQ29uc3RpZnkgZGV2X2J1c19hZGRyIHN0cmluZwog
IHRlc3RzL2NvcmVfaG90dW5wbHVnOiBDb25zb2xpZGF0ZSBkdXBsaWNhdGVkIGRlYnVnIG1lc3Nh
Z2VzCiAgdGVzdHMvY29yZV9ob3R1bnBsdWc6IEFzc2VydCBzdWNjZXNzZnVsIGRldmljZSBmaWx0
ZXIgYXBwbGljYXRpb24KICB0ZXN0cy9jb3JlX2hvdHVucGx1ZzogRml4IG1pc3NpbmcgbmV3bGlu
ZQogIHRlc3RzL2NvcmVfaG90dW5wbHVnOiBNYWludGFpbiBhIHNpbmdsZSBkYXRhIHN0cnVjdHVy
ZSBpbnN0YW5jZQogIHRlc3RzL2NvcmVfaG90dW5wbHVnOiBQYXNzIGVycm9ycyB2aWEgYSBkYXRh
IHN0cnVjdHVyZSBmaWVsZAogIHRlc3RzL2NvcmVfaG90dW5wbHVnOiBIYW5kbGUgZGV2aWNlIGNs
b3NlIGVycm9ycwogIHRlc3RzL2NvcmVfaG90dW5wbHVnOiBQcmVwYXJlIGludmFyaWFudCBkYXRh
IG9uY2UgcGVyIHRlc3QgcnVuCiAgdGVzdHMvY29yZV9ob3R1bnBsdWc6IFNraXAgc2VsZWN0aXZl
bHkgb24gc3lzZnMgY2xvc2UgZXJyb3JzCiAgdGVzdHMvY29yZV9ob3R1bnBsdWc6IEZvbGxvdyBm
YWlsZWQgc3VidGVzdHMgd2l0aCBoZWFsdGggY2hlY2tzCiAgdGVzdHMvY29yZV9ob3R1bnBsdWc6
IEZhaWwgc3VidGVzdHMgb24gZGV2aWNlIGNsb3NlIGVycm9ycwogIHRlc3RzL2NvcmVfaG90dW5w
bHVnOiBQcm9jZXNzIHJldHVybiB2YWx1ZXMgb2Ygc3lzZnMgb3BlcmF0aW9ucwogIHRlc3RzL2Nv
cmVfaG90dW5wbHVnOiBBc3NlcnQgZXhwZWN0ZWQgZGV2aWNlIHByZXNlbmNlL2Fic2VuY2UKICB0
ZXN0cy9jb3JlX2hvdHVucGx1ZzogRXhwbGljaXRseSBpZ25vcmUgdW51c2VkIHJldHVybiB2YWx1
ZXMKICB0ZXN0cy9jb3JlX2hvdHVucGx1ZzogVW4tYmxvY2tsaXN0ICp1bmJpbmQqIHN1YnRlc3Rz
CgogdGVzdHMvY29yZV9ob3R1bnBsdWcuYyAgICAgICB8IDMzNCArKysrKysrKysrKysrKysrKysr
KystLS0tLS0tLS0tLS0tLQogdGVzdHMvaW50ZWwtY2kvYmxhY2tsaXN0LnR4dCB8ICAgMiArLQog
MiBmaWxlcyBjaGFuZ2VkLCAyMDQgaW5zZXJ0aW9ucygrKSwgMTMyIGRlbGV0aW9ucygtKQoKLS0g
CjIuMjEuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
