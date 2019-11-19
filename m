Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7532110198E
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2019 07:51:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 266296E09C;
	Tue, 19 Nov 2019 06:51:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 821976E02F;
 Tue, 19 Nov 2019 06:51:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Nov 2019 22:51:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,322,1569308400"; d="scan'208";a="204427239"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga007.fm.intel.com with ESMTP; 18 Nov 2019 22:51:38 -0800
Received: from fmsmsx155.amr.corp.intel.com (10.18.116.71) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 18 Nov 2019 22:51:38 -0800
Received: from shsmsx107.ccr.corp.intel.com (10.239.4.96) by
 FMSMSX155.amr.corp.intel.com (10.18.116.71) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 18 Nov 2019 22:51:37 -0800
Received: from shsmsx101.ccr.corp.intel.com ([169.254.1.213]) by
 SHSMSX107.ccr.corp.intel.com ([169.254.9.63]) with mapi id 14.03.0439.000;
 Tue, 19 Nov 2019 14:51:35 +0800
From: "Liu, Chuansheng" <chuansheng.liu@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH i-g-t] i915/pm_rps: install SIGTERM handler
 for loader_helper
Thread-Index: AdWepZ2GuR0vNPXyR0CwhamzFV/Cxw==
Date: Tue, 19 Nov 2019 06:51:35 +0000
Message-ID: <27240C0AC20F114CBF8149A2696CBE4A615D54E9@SHSMSX101.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNjkwMWYyMmMtMzgyZC00ZjI5LWEzNzUtN2E3OWE1ZjM3OTk4IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiaG9jMzlBdUtkUmxLS253XC82bEhZWEpoaWhYRTlVOGZndllYeStWdlp4OXhmRU41R3kzcHl2SGxZTmlMSEozenkifQ==
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/pm_rps: install SIGTERM handler for
 loader_helper
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
Cc: "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

ClRoZSBpc3N1ZSB3ZSBoaXQgaXMgdGhlIEdQVSBrZWVwcyB2ZXJ5IGhpZ2ggbG9hZCBhZnRlciBy
dW5uaW5nCnRoZSBzdWJ0ZXN0IG1pbi1tYXgtY29uZmlnLWxvYWRlZC4KClNvbWUgYmFja2dyb3Vu
ZCBvZiB0aGUgaXNzdWU6CkN1cnJlbnRseSB0aGUgcnBzIGlzIG5vdCBmdWxseSBlbmFibGVkIHll
dCBvbiBUR0wsIGFuZCBydW5uaW5nCnRoZSBzdWJ0ZXN0IG1pbi1tYXgtY29uZmlnLWxvYWRlZCB3
aWxsIGhpdCBiZWxvdyBhc3NlcnRpb246Cj09CihpOTE1X3BtX3JwczoxMjYxKSBDUklUSUNBTDog
VGVzdCBhc3NlcnRpb24gZmFpbHVyZSBmdW5jdGlvbiBsb2FkZWRfY2hlY2ssIGZpbGUgLi4vdGVz
dHMvaTkxNS9pOTE1X3BtX3Jwcy5jOjUwNToKKGk5MTVfcG1fcnBzOjEyNjEpIENSSVRJQ0FMOiBG
YWlsZWQgYXNzZXJ0aW9uOiBmcmVxc1tNQVhdIDw9IGZyZXFzW0NVUl0KKGk5MTVfcG1fcnBzOjEy
NjEpIENSSVRJQ0FMOiBMYXN0IGVycm5vOiAyLCBObyBzdWNoIGZpbGUgb3IgZGlyZWN0b3J5Cj09
Cgp3aXRoIGlndCBzdHJlc3MgdGVzdCwgd2UgZmluZCB0aGUgR1Qga2VlcHMgYnVzeSBhZnRlciBy
dW5uaW5nCnRoaXMgc3VidGVzdCwgaXQgaXMgZHVlIHRvIHRoZSBpZ3Rfc3Bpbl9lbmQoKSBpcyBu
b3QgY2FsbGVkCnJhbmRvbWx5LgoKVGhlIHJvb3QgY2F1c2UgYW5hbHlzaXMgaXM6CldoZW4gdGhl
IG1haW4gcHJvY2VzcyBpOTE1X3BtX3JwcyBmb3IgcnVubmluZyB0aGUgc3VidGVzdAptaW4tbWF4
LWNvbmZpZy1sb2FkZWQgaGl0cyB0aGUgYXNzZXJ0aW9uLCB0aGUgbWFpbiBwcm9jZXNzIHdpbGwK
dHJ5IHRvIHNlbmQgc2lnbmFsIFNJR1RFUk0gdG8gdGhlIGNoaWxkIHByb2Nlc3MgbG9hZGVyX2hl
bHBlcgp3aGljaCBpcyBjcmVhdGVkIGJ5IG1haW4gcHJvY2VzcyBmb3Igc3RhcnRpbmcgR1QgbG9h
ZCwgdGhlbiB0aGUKbWFpbiBwcm9jZXNzIGl0c2VsZiB3aWxsIGV4aXQuCgpUaGUgU0lHVEVSTSBo
YW5kbGVyIGZvciBsb2FkZXJfaGVscGVyIGlzIHRoZSBkZWZhdWx0IG9uZSwgd2hpY2gKd2lsbCBj
YXVzZSB0aGUgbG9hZGVyX2hlbHBlciBleGl0cyBkaXJlY3RseS4gVGhhdCBpcyB1bnNhZmUsIHdl
CmFsd2F5cyBleHBlY3QgdGhlIGlndF9zcGluX2VuZCgpIGlzIGNhbGxlZCBiZWZvcmUgbG9hZGVy
X2hlbHBlcgpwcm9jZXNzIGV4aXRzLCB3aGljaCBpcyB1c2VkIHRvIHN0b3AgdGhlIGxvYWQgb2Yg
R1QuCgpGdXJ0aGVybW9yZSwgaW4gbm9ybWFsIHNjZW5hcmlvLCBiZWZvcmUgbWFpbiBwcm9jZXNz
IGV4aXRzLAppdCB3aWxsIHNlbmQgU0lHVVNSMSB0byBjaGlsZCBwcm9jZXNzIGZvciBzdG9wcGlu
ZyBHVCBsb2FkaW5nCmluIHNhZmUgd2F5LgoKU28gaGVyZSB3ZSBpbnN0YWxsIHRoZSBwcm9wZXIg
aGFuZGxlciBmb3Igc2lnbmFsIFNJR1RFUk0gaW4gdGhlCnNpbWlsYXIgd2F5LiBXaXRob3V0IHRo
aXMgcGF0Y2gsIHRoZSBHVCBtYXkga2VlcCBidXN5IGFmdGVyCnJ1bm5pbmcgdGhpcyBzdWJ0ZXN0
LiBFbmFibGluZyBycHMgc2hvdWxkIGJlIHRyYWNrZWQgb24gdGhlCm90aGVyIHNpZGUuCgpTaWdu
ZWQtb2ZmLWJ5OiBDaHVhbnNoZW5nIExpdSA8Y2h1YW5zaGVuZy5saXVAaW50ZWwuY29tPgotLS0K
IHRlc3RzL2k5MTUvaTkxNV9wbV9ycHMuYyB8IDEgKwogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0
aW9uKCspCgpkaWZmIC0tZ2l0IGEvdGVzdHMvaTkxNS9pOTE1X3BtX3Jwcy5jIGIvdGVzdHMvaTkx
NS9pOTE1X3BtX3Jwcy5jCmluZGV4IGVmNjI3YzBiLi44YzcxYzFhMSAxMDA2NDQKLS0tIGEvdGVz
dHMvaTkxNS9pOTE1X3BtX3Jwcy5jCisrKyBiL3Rlc3RzL2k5MTUvaTkxNV9wbV9ycHMuYwpAQCAt
MjUyLDYgKzI1Miw3IEBAIHN0YXRpYyB2b2lkIGxvYWRfaGVscGVyX3J1bihlbnVtIGxvYWQgbG9h
ZCkKCiAgICAgICAgICAgICAgICBzaWduYWwoU0lHVVNSMSwgbG9hZF9oZWxwZXJfc2lnbmFsX2hh
bmRsZXIpOwogICAgICAgICAgICAgICAgc2lnbmFsKFNJR1VTUjIsIGxvYWRfaGVscGVyX3NpZ25h
bF9oYW5kbGVyKTsKKyAgICAgICAgICAgICAgIHNpZ25hbChTSUdURVJNLCBsb2FkX2hlbHBlcl9z
aWduYWxfaGFuZGxlcik7CgogICAgICAgICAgICAgICAgaWd0X2RlYnVnKCJBcHBseWluZyAlcyBs
b2FkLi4uXG4iLCBsaC5sb2FkID8gImhpZ2giIDogImxvdyIpOwoKLS0KMi4yMC4xCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
