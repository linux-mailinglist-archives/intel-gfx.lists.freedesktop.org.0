Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ABB42B2074
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Nov 2020 17:28:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8C096E56A;
	Fri, 13 Nov 2020 16:28:35 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C6EC6E56A;
 Fri, 13 Nov 2020 16:28:34 +0000 (UTC)
IronPort-SDR: +vIXwwjaE5NvLJlrHT64hpB/sqfvyIrnJB/panypwiBa8s8ZtEcyRO1VDtUiPHLSR+1BUfw94K
 qIE4DqqXMnew==
X-IronPort-AV: E=McAfee;i="6000,8403,9804"; a="232113235"
X-IronPort-AV: E=Sophos;i="5.77,476,1596524400"; d="scan'208";a="232113235"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2020 08:28:34 -0800
IronPort-SDR: 5enrfZNdAjcosZkgBJgrvPEEYYqjpyoFiuKaWpEMUJDxy/wbxiVaj+1FXmgu/FQVkOai4G6N1s
 ILC7cV5UpBcA==
X-IronPort-AV: E=Sophos;i="5.77,476,1596524400"; d="scan'208";a="474721244"
Received: from shalomzo-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.180.188])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2020 08:28:31 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri, 13 Nov 2020 16:27:33 +0000
Message-Id: <20201113162736.2434791-3-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201113162736.2434791-1-tvrtko.ursulin@linux.intel.com>
References: <20201113162736.2434791-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC i-g-t 2/5] lsgpu: User friendly device listing
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
dy5rZW1wY3p5bnNraUBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBaYmlnbmlldyBLZW1wY3p5xYRz
a2kgPHpiaWduaWV3LmtlbXBjenluc2tpQGludGVsLmNvbT4KLS0tCiB0b29scy9sc2dwdS5jIHwg
MTAgKysrKysrKystLQogMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS90b29scy9sc2dwdS5jIGIvdG9vbHMvbHNncHUuYwppbmRleCAy
NTQxZDFjMjRlNjYuLjNiMjM0YjczMzYxYSAxMDA2NDQKLS0tIGEvdG9vbHMvbHNncHUuYworKysg
Yi90b29scy9sc2dwdS5jCkBAIC03MCw2ICs3MCw3IEBACiAgKi8KIAogZW51bSB7CisJT1BUX1BS
SU5UX1NJTVBMRSAgID0gJ3MnLAogCU9QVF9QUklOVF9ERVRBSUwgICA9ICdwJywKIAlPUFRfTElT
VF9WRU5ET1JTICAgPSAndicsCiAJT1BUX0xJU1RfRklMVEVSUyAgID0gJ2wnLApAQCAtODUsNiAr
ODYsNyBAQCBzdGF0aWMgY2hhciAqaWd0X2RldmljZTsKIHN0YXRpYyBjb25zdCBjaGFyICp1c2Fn
ZV9zdHIgPQogCSJ1c2FnZTogbHNncHUgW29wdGlvbnNdXG5cbiIKIAkiT3B0aW9uczpcbiIKKwki
ICAtcywgLS1wcmludC1zaW1wbGUgICAgICAgICAgUHJpbnQgc2ltcGxlIChsZWdhY3kpIGRldmlj
ZSBkZXRhaWxzXG4iCiAJIiAgLXAsIC0tcHJpbnQtZGV0YWlscyAgICAgICAgIFByaW50IGRldmlj
ZXMgd2l0aCBkZXRhaWxzXG4iCiAJIiAgLXYsIC0tbGlzdC12ZW5kb3JzICAgICAgICAgIExpc3Qg
cmVjb2duaXplZCB2ZW5kb3JzXG4iCiAJIiAgLWwsIC0tbGlzdC1maWx0ZXItdHlwZXMgICAgIExp
c3QgcmVnaXN0ZXJlZCBkZXZpY2UgZmlsdGVycyB0eXBlc1xuIgpAQCAtMTUxLDYgKzE1Myw3IEBA
IHN0YXRpYyBjaGFyICpnZXRfZGV2aWNlX2Zyb21fcmModm9pZCkKIGludCBtYWluKGludCBhcmdj
LCBjaGFyICphcmd2W10pCiB7CiAJc3RhdGljIHN0cnVjdCBvcHRpb24gbG9uZ19vcHRpb25zW10g
PSB7CisJCXsicHJpbnQtc2ltcGxlIiwgICAgICBub19hcmd1bWVudCwgICAgICAgTlVMTCwgT1BU
X1BSSU5UX1NJTVBMRX0sCiAJCXsicHJpbnQtZGV0YWlsIiwgICAgICBub19hcmd1bWVudCwgICAg
ICAgTlVMTCwgT1BUX1BSSU5UX0RFVEFJTH0sCiAJCXsibGlzdC12ZW5kb3JzIiwgICAgICBub19h
cmd1bWVudCwgICAgICAgTlVMTCwgT1BUX0xJU1RfVkVORE9SU30sCiAJCXsibGlzdC1maWx0ZXIt
dHlwZXMiLCBub19hcmd1bWVudCwgICAgICAgTlVMTCwgT1BUX0xJU1RfRklMVEVSU30sCkBAIC0x
NjAsMTIgKzE2MywxNSBAQCBpbnQgbWFpbihpbnQgYXJnYywgY2hhciAqYXJndltdKQogCX07CiAJ
aW50IGMsIGluZGV4ID0gMDsKIAljaGFyICplbnZfZGV2aWNlID0gTlVMTCwgKm9wdF9kZXZpY2Ug
PSBOVUxMLCAqcmNfZGV2aWNlID0gTlVMTDsKLQllbnVtIGlndF9kZXZpY2VzX3ByaW50X3R5cGUg
cHJpbnR0eXBlID0gSUdUX1BSSU5UX1NJTVBMRTsKKwllbnVtIGlndF9kZXZpY2VzX3ByaW50X3R5
cGUgcHJpbnR0eXBlID0gSUdUX1BSSU5UX1VTRVI7CiAKLQl3aGlsZSAoKGMgPSBnZXRvcHRfbG9u
ZyhhcmdjLCBhcmd2LCAicHZsZDpoIiwKKwl3aGlsZSAoKGMgPSBnZXRvcHRfbG9uZyhhcmdjLCBh
cmd2LCAic3B2bGQ6aCIsCiAJCQkJbG9uZ19vcHRpb25zLCAmaW5kZXgpKSAhPSAtMSkgewogCQlz
d2l0Y2goYykgewogCisJCWNhc2UgT1BUX1BSSU5UX1NJTVBMRToKKwkJCXByaW50dHlwZSA9IElH
VF9QUklOVF9TSU1QTEU7CisJCQlicmVhazsKIAkJY2FzZSBPUFRfUFJJTlRfREVUQUlMOgogCQkJ
cHJpbnR0eXBlID0gSUdUX1BSSU5UX0RFVEFJTDsKIAkJCWJyZWFrOwotLSAKMi4yNS4xCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
