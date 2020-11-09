Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62D9D2AB556
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Nov 2020 11:48:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF2C7898CE;
	Mon,  9 Nov 2020 10:48:32 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 806F3898CA;
 Mon,  9 Nov 2020 10:48:30 +0000 (UTC)
IronPort-SDR: VaMK+cCE1VwIU/14vCot+/GXI65UeMhrb/jgySHqicG1GU+D7fHKYgg0jyXQnTY7kn1EqbCALU
 RE5nv3/sJ1NA==
X-IronPort-AV: E=McAfee;i="6000,8403,9799"; a="254488951"
X-IronPort-AV: E=Sophos;i="5.77,463,1596524400"; d="scan'208";a="254488951"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2020 02:48:30 -0800
IronPort-SDR: d1JExY8hQb/2GsJVi6RM1GGNANdY00Sn92AFWNqwc/RkktFf/nAtB9mCYd9/Ov0YWcbmJLDkm+
 NYNJul5ZayiQ==
X-IronPort-AV: E=Sophos;i="5.77,463,1596524400"; d="scan'208";a="327227181"
Received: from staskuzm-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.255.196.231])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2020 02:48:27 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon,  9 Nov 2020 10:48:10 +0000
Message-Id: <20201109104811.3773962-3-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201109104811.3773962-1-tvrtko.ursulin@linux.intel.com>
References: <20201109104811.3773962-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 2/3] lsgpu: User friendly device listing
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCk5ldyBkZWZh
dWx0IHVzZXIgZnJpbmRseSBkZXZpY2UgbGlzdGluZyBtb2RlIHdoaWNoIHJlcGxhY2VzOgoKc3lz
Oi9zeXMvZGV2aWNlcy9wY2kwMDAwOjAwLzAwMDA6MDA6MDIuMC9kcm0vY2FyZDAKICAgIHN1YnN5
c3RlbSAgICAgICA6IGRybQogICAgZHJtIGNhcmQgICAgICAgIDogL2Rldi9kcmkvY2FyZDAKICAg
IHBhcmVudCAgICAgICAgICA6IHN5czovc3lzL2RldmljZXMvcGNpMDAwMDowMC8wMDAwOjAwOjAy
LjAKCnN5czovc3lzL2RldmljZXMvcGNpMDAwMDowMC8wMDAwOjAwOjAyLjAvZHJtL3JlbmRlckQx
MjgKICAgc3Vic3lzdGVtICAgICAgIDogZHJtCiAgIGRybSByZW5kZXIgICAgICA6IC9kZXYvZHJp
L3JlbmRlckQxMjgKICAgcGFyZW50ICAgICAgICAgIDogc3lzOi9zeXMvZGV2aWNlcy9wY2kwMDAw
OjAwLzAwMDA6MDA6MDIuMAoKc3lzOi9zeXMvZGV2aWNlcy9wY2kwMDAwOjAwLzAwMDA6MDA6MDIu
MAogICBzdWJzeXN0ZW0gICAgICAgOiBwY2kKICAgIGRybSBjYXJkICAgICAgICA6IC9kZXYvZHJp
L2NhcmQwCiAgICBkcm0gcmVuZGVyICAgICAgOiAvZGV2L2RyaS9yZW5kZXJEMTI4CiAgICB2ZW5k
b3IgICAgICAgICAgOiA4MDg2CiAgICBkZXZpY2UgICAgICAgICAgOiAxOTNCCgpXaXRoOgoKY2Fy
ZDAgICAgICAgICAgICAgICAgICAgODA4NjoxOTNCICAgIGRybTovZGV2L2RyaS9jYXJkMArilJTi
lIByZW5kZXJEMTI4ICAgICAgICAgICAgICAgICAgICAgICAgIGRybTovZGV2L2RyaS9yZW5kZXJE
MTI4CgpBZHZhbnRhZ2VzIGFyZSBtb3JlIGNvbXBhY3QsIG1vcmUgcmVhZGFibGUsIG9uZSBlbnRy
eSBwZXIgR1BVLgoKTGVnYWN5IGZvcm1hdCBjYW4gYmUgY2hvc2UgdXNpbmcgdGhlIC1zIC8gLS1w
cmludC1zaW1wbGUgY29tbWFuZCBsaW5lCnN3aXRjaGVzLgoKU2lnbmVkLW9mZi1ieTogVHZydGtv
IFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KQ2M6IFBldHJpIExhdHZhbGEgPHBl
dHJpLmxhdHZhbGFAaW50ZWwuY29tPgpDYzogWmJpZ25pZXcgS2VtcGN6ecWEc2tpIDx6Ymlnbmll
dy5rZW1wY3p5bnNraUBpbnRlbC5jb20+Ci0tLQogdG9vbHMvbHNncHUuYyB8IDEwICsrKysrKysr
LS0KIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvdG9vbHMvbHNncHUuYyBiL3Rvb2xzL2xzZ3B1LmMKaW5kZXggMjU0MWQxYzI0ZTY2
Li4zYjIzNGI3MzM2MWEgMTAwNjQ0Ci0tLSBhL3Rvb2xzL2xzZ3B1LmMKKysrIGIvdG9vbHMvbHNn
cHUuYwpAQCAtNzAsNiArNzAsNyBAQAogICovCiAKIGVudW0geworCU9QVF9QUklOVF9TSU1QTEUg
ICA9ICdzJywKIAlPUFRfUFJJTlRfREVUQUlMICAgPSAncCcsCiAJT1BUX0xJU1RfVkVORE9SUyAg
ID0gJ3YnLAogCU9QVF9MSVNUX0ZJTFRFUlMgICA9ICdsJywKQEAgLTg1LDYgKzg2LDcgQEAgc3Rh
dGljIGNoYXIgKmlndF9kZXZpY2U7CiBzdGF0aWMgY29uc3QgY2hhciAqdXNhZ2Vfc3RyID0KIAki
dXNhZ2U6IGxzZ3B1IFtvcHRpb25zXVxuXG4iCiAJIk9wdGlvbnM6XG4iCisJIiAgLXMsIC0tcHJp
bnQtc2ltcGxlICAgICAgICAgIFByaW50IHNpbXBsZSAobGVnYWN5KSBkZXZpY2UgZGV0YWlsc1xu
IgogCSIgIC1wLCAtLXByaW50LWRldGFpbHMgICAgICAgICBQcmludCBkZXZpY2VzIHdpdGggZGV0
YWlsc1xuIgogCSIgIC12LCAtLWxpc3QtdmVuZG9ycyAgICAgICAgICBMaXN0IHJlY29nbml6ZWQg
dmVuZG9yc1xuIgogCSIgIC1sLCAtLWxpc3QtZmlsdGVyLXR5cGVzICAgICBMaXN0IHJlZ2lzdGVy
ZWQgZGV2aWNlIGZpbHRlcnMgdHlwZXNcbiIKQEAgLTE1MSw2ICsxNTMsNyBAQCBzdGF0aWMgY2hh
ciAqZ2V0X2RldmljZV9mcm9tX3JjKHZvaWQpCiBpbnQgbWFpbihpbnQgYXJnYywgY2hhciAqYXJn
dltdKQogewogCXN0YXRpYyBzdHJ1Y3Qgb3B0aW9uIGxvbmdfb3B0aW9uc1tdID0geworCQl7InBy
aW50LXNpbXBsZSIsICAgICAgbm9fYXJndW1lbnQsICAgICAgIE5VTEwsIE9QVF9QUklOVF9TSU1Q
TEV9LAogCQl7InByaW50LWRldGFpbCIsICAgICAgbm9fYXJndW1lbnQsICAgICAgIE5VTEwsIE9Q
VF9QUklOVF9ERVRBSUx9LAogCQl7Imxpc3QtdmVuZG9ycyIsICAgICAgbm9fYXJndW1lbnQsICAg
ICAgIE5VTEwsIE9QVF9MSVNUX1ZFTkRPUlN9LAogCQl7Imxpc3QtZmlsdGVyLXR5cGVzIiwgbm9f
YXJndW1lbnQsICAgICAgIE5VTEwsIE9QVF9MSVNUX0ZJTFRFUlN9LApAQCAtMTYwLDEyICsxNjMs
MTUgQEAgaW50IG1haW4oaW50IGFyZ2MsIGNoYXIgKmFyZ3ZbXSkKIAl9OwogCWludCBjLCBpbmRl
eCA9IDA7CiAJY2hhciAqZW52X2RldmljZSA9IE5VTEwsICpvcHRfZGV2aWNlID0gTlVMTCwgKnJj
X2RldmljZSA9IE5VTEw7Ci0JZW51bSBpZ3RfZGV2aWNlc19wcmludF90eXBlIHByaW50dHlwZSA9
IElHVF9QUklOVF9TSU1QTEU7CisJZW51bSBpZ3RfZGV2aWNlc19wcmludF90eXBlIHByaW50dHlw
ZSA9IElHVF9QUklOVF9VU0VSOwogCi0Jd2hpbGUgKChjID0gZ2V0b3B0X2xvbmcoYXJnYywgYXJn
diwgInB2bGQ6aCIsCisJd2hpbGUgKChjID0gZ2V0b3B0X2xvbmcoYXJnYywgYXJndiwgInNwdmxk
OmgiLAogCQkJCWxvbmdfb3B0aW9ucywgJmluZGV4KSkgIT0gLTEpIHsKIAkJc3dpdGNoKGMpIHsK
IAorCQljYXNlIE9QVF9QUklOVF9TSU1QTEU6CisJCQlwcmludHR5cGUgPSBJR1RfUFJJTlRfU0lN
UExFOworCQkJYnJlYWs7CiAJCWNhc2UgT1BUX1BSSU5UX0RFVEFJTDoKIAkJCXByaW50dHlwZSA9
IElHVF9QUklOVF9ERVRBSUw7CiAJCQlicmVhazsKLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
