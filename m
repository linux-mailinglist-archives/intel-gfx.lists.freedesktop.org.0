Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CAFCB6F3A
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 00:09:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2C3C7AB0F;
	Wed, 18 Sep 2019 22:09:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM04-CO1-obe.outbound.protection.outlook.com
 (mail-eopbgr690088.outbound.protection.outlook.com [40.107.69.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CF2B72AE5;
 Wed, 18 Sep 2019 20:27:27 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GBiBZdhYqPVT3Opgr+CZG+sktuFWWC4wocgEUZmryzDR/I3BBjaQoIhw/7QkPLaZSwfobEJFrI0f/694SqPIYlzqvVx+Y8ePPttzQ0+uMpmfcvodKYV4F7/RBEROhzPlYDmvz7gj+Pt5SvYe50zGJbRYuN78UbROGduhZm+sVFOKvwtWtLpIp4IUwpyv9X3NGJM0rJkC8oZicbH2OQZf0yHEkPvvYTJIMw2aSJ4LbQB8E9YdAeGz4BgxqGMtby87LB+rf0evsYbIyVGFADabqu9o5AVFqg+gWWYv5cBrkG0ibx8V96P/Trr6nTMBtZMs8xV7w58V2tVqpTIUQFuhlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RXWQkGWTbDLvZrjIGuEBHb2ozpdKEgmwfkoU4uzEno0=;
 b=XwKaP3Kb8og6ZxWmLxzf9F4yXifsv8tzTDa9KYggzAjPTrgb+sVESq/7K/qZawfxK+V2YkMj5y/PER+uVP6ApWqd0i34yj/dN3fjKoMDUh9GryAkPFJJ3M9PpG5cyvbb3R868Cz+z51ejLnieOAEWFCvGBdMJ5BEjo5SwiFztdXBRCWCaW5+9IzwgSj0fTZ9u6eM2PHT8b7UA1sbnJcV8g5Pyk1burlxOcNbBT4s4stbW4+FrJNlF3PqE/KbjZqx4pCRGiPwVxg7n/j1goyQa3A9m9Reovc46iRgEFeH3pAR13+hMtFm+yJKU6o1URKXpSt25C/qDIAB4+4fGUhSeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none (sender ip is
 165.204.84.17) smtp.rcpttodomain=lists.freedesktop.org smtp.mailfrom=amd.com; 
 dmarc=permerror action=none header.from=amd.com; dkim=none (message not
 signed); arc=none
Received: from CH2PR12CA0006.namprd12.prod.outlook.com (2603:10b6:610:57::16)
 by BN8PR12MB2851.namprd12.prod.outlook.com (2603:10b6:408:9f::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2263.17; Wed, 18 Sep
 2019 20:27:24 +0000
Received: from DM3NAM03FT014.eop-NAM03.prod.protection.outlook.com
 (2a01:111:f400:7e49::204) by CH2PR12CA0006.outlook.office365.com
 (2603:10b6:610:57::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2284.20 via Frontend
 Transport; Wed, 18 Sep 2019 20:27:24 +0000
Received-SPF: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
Received: from SATLEXCHOV01.amd.com (165.204.84.17) by
 DM3NAM03FT014.mail.protection.outlook.com (10.152.82.81) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2263.14 via Frontend Transport; Wed, 18 Sep 2019 20:27:24 +0000
Received: from mlipski-pc.amd.com (10.180.168.240) by SATLEXCHOV01.amd.com
 (10.181.40.71) with Microsoft SMTP Server id 14.3.389.1; Wed, 18 Sep 2019
 15:27:18 -0500
From: <mikita.lipski@amd.com>
To: <amd-gfx@lists.freedesktop.org>
Date: Wed, 18 Sep 2019 16:26:41 -0400
Message-ID: <5f2d4764a4fee659d69e625618eded34a7dbe312.1568833906.git.mikita.lipski@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1568833906.git.mikita.lipski@amd.com>
References: <cover.1568833906.git.mikita.lipski@amd.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:165.204.84.17; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(136003)(39860400002)(346002)(428003)(199004)(189003)(6666004)(426003)(478600001)(2616005)(48376002)(186003)(11346002)(2906002)(7696005)(4326008)(36756003)(51416003)(2876002)(316002)(47776003)(50466002)(2351001)(450100002)(81156014)(356004)(486006)(16586007)(26005)(50226002)(476003)(5660300002)(70206006)(81166006)(70586007)(76176011)(54906003)(446003)(6916009)(8936002)(118296001)(305945005)(126002)(336012)(53416004)(8676002)(86362001)(16060500001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN8PR12MB2851; H:SATLEXCHOV01.amd.com; FPR:;
 SPF:None; LANG:en; PTR:InfoDomainNonexistent; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f3df800d-f047-463a-bd7e-08d73c769d7d
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328);
 SRVR:BN8PR12MB2851; 
X-MS-TrafficTypeDiagnostic: BN8PR12MB2851:
X-Microsoft-Antispam-PRVS: <BN8PR12MB2851E4887723F39C7581D929E48E0@BN8PR12MB2851.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 01644DCF4A
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: dhfq6C815jKAjLis3PcgVlP+esDFcqZ0GNgq5rFgkbQucVeIJ044shmI5BZV9L8LoK0BVREKDexm/BnWF4qUmVzmz8IMpJ13+yeyqOZaVNh8I5KTkatxGZCMh9HDfjc0Ts5o6zycGCxfVDgksGkbfjMnxJdGxDvaxz9saTLjNorzwohp31+sZ42Ru91A+RXups5qCYwyCWmcnJLxRIW16iPrWoc5ejBdASf18t69x/1Gk2+2/arwbReRqb7hpDU7EU3gHxnKfvqJe/7I6S2Hiqx6ZTHMlrnIYGRbEGRZKq0/02ww3IlZQYGvL2sUblrLpCKMELGicn0Y5U7L/tNYGuFYrTdqDiAGZCaYunOVu2HcaA1KWFB0uG+6u1BvPOXgPfnJcBz6obhKga7ZzMIwZuVUr1KnEMjsnfKEi18AuFk=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Sep 2019 20:27:24.1354 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f3df800d-f047-463a-bd7e-08d73c769d7d
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d; Ip=[165.204.84.17];
 Helo=[SATLEXCHOV01.amd.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR12MB2851
X-Mailman-Approved-At: Wed, 18 Sep 2019 22:09:43 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amdcloud.onmicrosoft.com; s=selector2-amdcloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RXWQkGWTbDLvZrjIGuEBHb2ozpdKEgmwfkoU4uzEno0=;
 b=lk/Usu0afLw9gPcvOihg12E5BxwduRymYhnCg/yaBU/RHR9Qx07OCFk6zdImzseBp8QUDsePgo3XBqemSgNVFPq2g9aOzjRBWLyEEyPxjt1+LZHYILNjcFcfQ9wXXLo68d3ZLLiAdcHWICiNnS79p+X0ZMEZBWxDJDoudBzSSUE=
X-Mailman-Original-Authentication-Results: spf=none (sender IP is
 165.204.84.17)
 smtp.mailfrom=amd.com; lists.freedesktop.org; dkim=none (message not signed)
 header.d=none;lists.freedesktop.org; dmarc=permerror action=none
 header.from=amd.com;
Subject: [Intel-gfx] [PATCH 04/15] drm/dp_mst: Add PBN calculation for DSC
 modes
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
Cc: nouveau@lists.freedesktop.org, David Francis <David.Francis@amd.com>,
 Mikita Lipski <mikita.lipski@amd.com>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogRGF2aWQgRnJhbmNpcyA8RGF2aWQuRnJhbmNpc0BhbWQuY29tPgoKV2l0aCBEU0MsIGJw
cCBjYW4gYmUgZnJhY3Rpb25hbCBpbiBtdWx0aXBsZXMgb2YgMS8xNi4KCkNoYW5nZSBkcm1fZHBf
Y2FsY19wYm5fbW9kZSB0byByZWZsZWN0IHRoaXMsIGFkZGluZyBhIG5ldwpwYXJhbWV0ZXIgYm9v
bCBkc2MuIFdoZW4gdGhpcyBwYXJhbWV0ZXIgaXMgdHJ1ZSwgdHJlYXQgdGhlCmJwcCBwYXJhbWV0
ZXIgYXMgaGF2aW5nIHVuaXRzIG5vdCBvZiBiaXRzIHBlciBwaXhlbCwgYnV0CjEvMTYgb2YgYSBi
aXQgcGVyIHBpeGVsCgp2MjogRG9uJ3QgYWRkIHNlcGFyYXRlIGZ1bmN0aW9uIGZvciB0aGlzCgpD
aGFuZ2UtSWQ6IEkzM2VmNmY1M2M0NGRjMzJhYTg2OWFhOTc0MWJhMDMzOWFhZjVlNTRmCkNjOiBh
bWQtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpDYzogbm91dmVhdUBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKQ2M6IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKUmV2aWV3ZWQtYnk6IE1h
bmFzaSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBMeXVk
ZSBQYXVsIDxseXVkZUByZWRoYXQuY29tPgpSZXZpZXdlZC1ieTogSGFycnkgV2VudGxhbmQgPGhh
cnJ5LndlbnRsYW5kQGFtZC5jb20+ClNpZ25lZC1vZmYtYnk6IERhdmlkIEZyYW5jaXMgPERhdmlk
LkZyYW5jaXNAYW1kLmNvbT4KU2lnbmVkLW9mZi1ieTogTWlraXRhIExpcHNraSA8bWlraXRhLmxp
cHNraUBhbWQuY29tPgotLS0KIC4uLi9ncHUvZHJtL2FtZC9kaXNwbGF5L2FtZGdwdV9kbS9hbWRn
cHVfZG0uYyAgICB8ICA4ICsrKysrKystCiAuLi4vYW1kL2Rpc3BsYXkvYW1kZ3B1X2RtL2FtZGdw
dV9kbV9oZWxwZXJzLmMgICAgfCAgMiArLQogZHJpdmVycy9ncHUvZHJtL2RybV9kcF9tc3RfdG9w
b2xvZ3kuYyAgICAgICAgICAgIHwgMTYgKysrKysrKysrKysrLS0tLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfZHBfbXN0LmMgICAgICAgICAgICAgIHwgIDMgKystCiBkcml2ZXJzL2dwdS9k
cm0vbm91dmVhdS9kaXNwbnY1MC9kaXNwLmMgICAgICAgICAgfCAgMyArKy0KIGRyaXZlcnMvZ3B1
L2RybS9yYWRlb24vcmFkZW9uX2RwX21zdC5jICAgICAgICAgICB8ICAyICstCiBpbmNsdWRlL2Ry
bS9kcm1fZHBfbXN0X2hlbHBlci5oICAgICAgICAgICAgICAgICAgfCAgMyArLS0KIDcgZmlsZXMg
Y2hhbmdlZCwgMjYgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2FtZC9kaXNwbGF5L2FtZGdwdV9kbS9hbWRncHVfZG0uYyBiL2RyaXZl
cnMvZ3B1L2RybS9hbWQvZGlzcGxheS9hbWRncHVfZG0vYW1kZ3B1X2RtLmMKaW5kZXggMzljMjM5
YTA4NjMzLi4xMTMwMjk4YzY5MzAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvZGlz
cGxheS9hbWRncHVfZG0vYW1kZ3B1X2RtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9kaXNw
bGF5L2FtZGdwdV9kbS9hbWRncHVfZG0uYwpAQCAtNDQ4Miw3ICs0NDgyLDEzIEBAIHN0YXRpYyBp
bnQgZG1fZW5jb2Rlcl9oZWxwZXJfYXRvbWljX2NoZWNrKHN0cnVjdCBkcm1fZW5jb2RlciAqZW5j
b2RlciwKIAogCWJwcCAqPSAzOwogCWNsb2NrID0gYWRqdXN0ZWRfbW9kZS0+Y2xvY2s7Ci0JcGJu
ID0gZHJtX2RwX2NhbGNfcGJuX21vZGUoY2xvY2ssIGJwcCk7CisjaWZkZWYgQ09ORklHX0RSTV9B
TURfRENfRFNDX1NVUFBPUlQKKwlpZiAoYWNvbm5lY3Rvci0+ZGNfc2luayAmJgorCSAgICBhY29u
bmVjdG9yLT5kY19zaW5rLT5zaW5rX2RzY19jYXBzLmRzY19kZWNfY2Fwcy5pc19kc2Nfc3VwcG9y
dGVkKQorCQlwYm4gPSBkcm1fZHBfY2FsY19wYm5fbW9kZShjbG9jaywgYnBwLCB0cnVlKTsKKwll
bHNlCisjZW5kaWYKKwkJcGJuID0gZHJtX2RwX2NhbGNfcGJuX21vZGUoY2xvY2ssIGJwcCwgZmFs
c2UpOwogCXNsb3RzID0gZHJtX2RwX2F0b21pY19maW5kX3ZjcGlfc2xvdHMoc3RhdGUsCiAJCQkJ
CQltc3RfbWdyLAogCQkJCQkJbXN0X3BvcnQsCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
YW1kL2Rpc3BsYXkvYW1kZ3B1X2RtL2FtZGdwdV9kbV9oZWxwZXJzLmMgYi9kcml2ZXJzL2dwdS9k
cm0vYW1kL2Rpc3BsYXkvYW1kZ3B1X2RtL2FtZGdwdV9kbV9oZWxwZXJzLmMKaW5kZXggNTU1YWY0
YThjMGVmLi5iMTUxYTVhNTFhOTQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvZGlz
cGxheS9hbWRncHVfZG0vYW1kZ3B1X2RtX2hlbHBlcnMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
YW1kL2Rpc3BsYXkvYW1kZ3B1X2RtL2FtZGdwdV9kbV9oZWxwZXJzLmMKQEAgLTIzNSw3ICsyMzUs
NyBAQCBib29sIGRtX2hlbHBlcnNfZHBfbXN0X3dyaXRlX3BheWxvYWRfYWxsb2NhdGlvbl90YWJs
ZSgKIAogCQkvKiBUT0RPIG5lZWQgdG8ga25vdyBsaW5rIHJhdGUgKi8KIAotCQlwYm4gPSBkcm1f
ZHBfY2FsY19wYm5fbW9kZShjbG9jaywgYnBwKTsKKwkJcGJuID0gZHJtX2RwX2NhbGNfcGJuX21v
ZGUoY2xvY2ssIGJwcCwgZmFsc2UpOwogCiAJCXNsb3RzID0gZHJtX2RwX2ZpbmRfdmNwaV9zbG90
cyhtc3RfbWdyLCBwYm4pOwogCQlyZXQgPSBkcm1fZHBfbXN0X2FsbG9jYXRlX3ZjcGkobXN0X21n
ciwgbXN0X3BvcnQsIHBibiwgc2xvdHMpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2Ry
bV9kcF9tc3RfdG9wb2xvZ3kuYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZHBfbXN0X3RvcG9sb2d5
LmMKaW5kZXggMzk4ZTczMTRlYThiLi42NTkwOTkzNjZmOGIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9kcm1fZHBfbXN0X3RvcG9sb2d5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9k
cF9tc3RfdG9wb2xvZ3kuYwpAQCAtMzUzMSwxMCArMzUzMSwxMSBAQCBFWFBPUlRfU1lNQk9MKGRy
bV9kcF9jaGVja19hY3Rfc3RhdHVzKTsKICAqIGRybV9kcF9jYWxjX3Bibl9tb2RlKCkgLSBDYWxj
dWxhdGUgdGhlIFBCTiBmb3IgYSBtb2RlLgogICogQGNsb2NrOiBkb3QgY2xvY2sgZm9yIHRoZSBt
b2RlCiAgKiBAYnBwOiBicHAgZm9yIHRoZSBtb2RlLgorICogQGRzYzogRFNDIG1vZGUuIElmIHRy
dWUsIGJwcCBoYXMgdW5pdHMgb2YgMS8xNiBvZiBhIGJpdCBwZXIgcGl4ZWwKICAqCiAgKiBUaGlz
IHVzZXMgdGhlIGZvcm11bGEgaW4gdGhlIHNwZWMgdG8gY2FsY3VsYXRlIHRoZSBQQk4gdmFsdWUg
Zm9yIGEgbW9kZS4KICAqLwotaW50IGRybV9kcF9jYWxjX3Bibl9tb2RlKGludCBjbG9jaywgaW50
IGJwcCkKK2ludCBkcm1fZHBfY2FsY19wYm5fbW9kZShpbnQgY2xvY2ssIGludCBicHAsIGJvb2wg
ZHNjKQogewogCXU2NCBrYnBzOwogCXM2NCBwZWFrX2ticHM7CkBAIC0zNTUyLDExICszNTUzLDE4
IEBAIGludCBkcm1fZHBfY2FsY19wYm5fbW9kZShpbnQgY2xvY2ssIGludCBicHApCiAJICogcGVh
a19rYnBzICo9ICgxMDA2LzEwMDApCiAJICogcGVha19rYnBzICo9ICg2NC81NCkKIAkgKiBwZWFr
X2ticHMgKj0gOCAgICBjb252ZXJ0IHRvIGJ5dGVzCisJICoKKwkgKiBJZiB0aGUgYnBwIGlzIGlu
IHVuaXRzIG9mIDEvMTYsIGZ1cnRoZXIgZGl2aWRlIGJ5IDE2LiBQdXQgdGhpcworCSAqIGZhY3Rv
ciBpbiB0aGUgbnVtZXJhdG9yIHJhdGhlciB0aGFuIHRoZSBkZW5vbWluYXRvciB0byBhdm9pZAor
CSAqIGludGVnZXIgb3ZlcmZsb3cKIAkgKi8KIAogCW51bWVyYXRvciA9IDY0ICogMTAwNjsKIAlk
ZW5vbWluYXRvciA9IDU0ICogOCAqIDEwMDAgKiAxMDAwOwogCisJaWYgKGRzYykKKwkJbnVtZXJh
dG9yIC89IDE2OworCiAJa2JwcyAqPSBudW1lcmF0b3I7CiAJcGVha19rYnBzID0gZHJtX2ZpeHBf
ZnJvbV9mcmFjdGlvbihrYnBzLCBkZW5vbWluYXRvcik7CiAKQEAgLTM1NjcsMTkgKzM1NzUsMTkg
QEAgRVhQT1JUX1NZTUJPTChkcm1fZHBfY2FsY19wYm5fbW9kZSk7CiBzdGF0aWMgaW50IHRlc3Rf
Y2FsY19wYm5fbW9kZSh2b2lkKQogewogCWludCByZXQ7Ci0JcmV0ID0gZHJtX2RwX2NhbGNfcGJu
X21vZGUoMTU0MDAwLCAzMCk7CisJcmV0ID0gZHJtX2RwX2NhbGNfcGJuX21vZGUoMTU0MDAwLCAz
MCwgZmFsc2UpOwogCWlmIChyZXQgIT0gNjg5KSB7CiAJCURSTV9FUlJPUigiUEJOIGNhbGN1bGF0
aW9uIHRlc3QgZmFpbGVkIC0gY2xvY2sgJWQsIGJwcCAlZCwgZXhwZWN0ZWQgUEJOICVkLCBhY3R1
YWwgUEJOICVkLlxuIiwKIAkJCQkxNTQwMDAsIDMwLCA2ODksIHJldCk7CiAJCXJldHVybiAtRUlO
VkFMOwogCX0KLQlyZXQgPSBkcm1fZHBfY2FsY19wYm5fbW9kZSgyMzQwMDAsIDMwKTsKKwlyZXQg
PSBkcm1fZHBfY2FsY19wYm5fbW9kZSgyMzQwMDAsIDMwLCBmYWxzZSk7CiAJaWYgKHJldCAhPSAx
MDQ3KSB7CiAJCURSTV9FUlJPUigiUEJOIGNhbGN1bGF0aW9uIHRlc3QgZmFpbGVkIC0gY2xvY2sg
JWQsIGJwcCAlZCwgZXhwZWN0ZWQgUEJOICVkLCBhY3R1YWwgUEJOICVkLlxuIiwKIAkJCQkyMzQw
MDAsIDMwLCAxMDQ3LCByZXQpOwogCQlyZXR1cm4gLUVJTlZBTDsKIAl9Ci0JcmV0ID0gZHJtX2Rw
X2NhbGNfcGJuX21vZGUoMjk3MDAwLCAyNCk7CisJcmV0ID0gZHJtX2RwX2NhbGNfcGJuX21vZGUo
Mjk3MDAwLCAyNCwgZmFsc2UpOwogCWlmIChyZXQgIT0gMTA2MykgewogCQlEUk1fRVJST1IoIlBC
TiBjYWxjdWxhdGlvbiB0ZXN0IGZhaWxlZCAtIGNsb2NrICVkLCBicHAgJWQsIGV4cGVjdGVkIFBC
TiAlZCwgYWN0dWFsIFBCTiAlZC5cbiIsCiAJCQkJMjk3MDAwLCAyNCwgMTA2MywgcmV0KTsKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwX21zdC5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfZHBfbXN0LmMKaW5kZXggODgzOWVhZWE4MzcxLi4yYTY5MmMyMTQx
YmYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwX21zdC5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwX21zdC5jCkBAIC01OCw3ICs1OCw4IEBAIHN0
YXRpYyBpbnQgaW50ZWxfZHBfbXN0X2NvbXB1dGVfbGlua19jb25maWcoc3RydWN0IGludGVsX2Vu
Y29kZXIgKmVuY29kZXIsCiAJCWNydGNfc3RhdGUtPnBpcGVfYnBwID0gYnBwOwogCiAJCWNydGNf
c3RhdGUtPnBibiA9IGRybV9kcF9jYWxjX3Bibl9tb2RlKGFkanVzdGVkX21vZGUtPmNydGNfY2xv
Y2ssCi0JCQkJCQkgICAgICAgY3J0Y19zdGF0ZS0+cGlwZV9icHApOworCQkJCQkJICAgICAgIGNy
dGNfc3RhdGUtPnBpcGVfYnBwLAorCQkJCQkJICAgICAgIGZhbHNlKTsKIAogCQlzbG90cyA9IGRy
bV9kcF9hdG9taWNfZmluZF92Y3BpX3Nsb3RzKHN0YXRlLCAmaW50ZWxfZHAtPm1zdF9tZ3IsCiAJ
CQkJCQkgICAgICBwb3J0LCBjcnRjX3N0YXRlLT5wYm4pOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL25vdXZlYXUvZGlzcG52NTAvZGlzcC5jIGIvZHJpdmVycy9ncHUvZHJtL25vdXZlYXUv
ZGlzcG52NTAvZGlzcC5jCmluZGV4IDRiMTY1MGY1MTk1NS4uZWM4YmI0OTFlNTc2IDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vbm91dmVhdS9kaXNwbnY1MC9kaXNwLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL25vdXZlYXUvZGlzcG52NTAvZGlzcC5jCkBAIC03NzMsNyArNzczLDggQEAgbnY1
MF9tc3RvX2F0b21pY19jaGVjayhzdHJ1Y3QgZHJtX2VuY29kZXIgKmVuY29kZXIsCiAJaWYgKCFz
dGF0ZS0+ZHVwbGljYXRlZCkKIAkJYXN5aC0+ZHAucGJuID0KIAkJCWRybV9kcF9jYWxjX3Bibl9t
b2RlKGNydGNfc3RhdGUtPmFkanVzdGVkX21vZGUuY2xvY2ssCi0JCQkJCSAgICAgY29ubmVjdG9y
LT5kaXNwbGF5X2luZm8uYnBjICogMyk7CisJCQkJCSAgICAgY29ubmVjdG9yLT5kaXNwbGF5X2lu
Zm8uYnBjICogMywKKwkJCQkJICAgICBmYWxzZSk7CiAKIAlpZiAoZHJtX2F0b21pY19jcnRjX25l
ZWRzX21vZGVzZXQoY3J0Y19zdGF0ZSkpIHsKIAkJc2xvdHMgPSBkcm1fZHBfYXRvbWljX2ZpbmRf
dmNwaV9zbG90cyhzdGF0ZSwgJm1zdG0tPm1nciwKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9yYWRlb24vcmFkZW9uX2RwX21zdC5jIGIvZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb25f
ZHBfbXN0LmMKaW5kZXggOGQ4NTU0MGJiYjQzLi4zODRkMGM5MzczYzQgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX2RwX21zdC5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9yYWRlb24vcmFkZW9uX2RwX21zdC5jCkBAIC01MTMsNyArNTEzLDcgQEAgc3RhdGljIGJvb2wg
cmFkZW9uX21zdF9tb2RlX2ZpeHVwKHN0cnVjdCBkcm1fZW5jb2RlciAqZW5jb2RlciwKIAogCW1z
dF9lbmMgPSByYWRlb25fZW5jb2Rlci0+ZW5jX3ByaXY7CiAKLQltc3RfZW5jLT5wYm4gPSBkcm1f
ZHBfY2FsY19wYm5fbW9kZShhZGp1c3RlZF9tb2RlLT5jbG9jaywgYnBwKTsKKwltc3RfZW5jLT5w
Ym4gPSBkcm1fZHBfY2FsY19wYm5fbW9kZShhZGp1c3RlZF9tb2RlLT5jbG9jaywgYnBwLCBmYWxz
ZSk7CiAKIAltc3RfZW5jLT5wcmltYXJ5LT5hY3RpdmVfZGV2aWNlID0gbXN0X2VuYy0+cHJpbWFy
eS0+ZGV2aWNlcyAmIG1zdF9lbmMtPmNvbm5lY3Rvci0+ZGV2aWNlczsKIAlEUk1fREVCVUdfS01T
KCJzZXR0aW5nIGFjdGl2ZSBkZXZpY2UgdG8gJTA4eCBmcm9tICUwOHggJTA4eCBmb3IgZW5jb2Rl
ciAlZFxuIiwKZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2RybV9kcF9tc3RfaGVscGVyLmggYi9p
bmNsdWRlL2RybS9kcm1fZHBfbXN0X2hlbHBlci5oCmluZGV4IDJiYTYyNTNlYTZkMy4uOTExNmIy
Yzk1MjM5IDEwMDY0NAotLS0gYS9pbmNsdWRlL2RybS9kcm1fZHBfbXN0X2hlbHBlci5oCisrKyBi
L2luY2x1ZGUvZHJtL2RybV9kcF9tc3RfaGVscGVyLmgKQEAgLTYxMCw4ICs2MTAsNyBAQCBib29s
IGRybV9kcF9tc3RfcG9ydF9oYXNfYXVkaW8oc3RydWN0IGRybV9kcF9tc3RfdG9wb2xvZ3lfbWdy
ICptZ3IsCiBzdHJ1Y3QgZWRpZCAqZHJtX2RwX21zdF9nZXRfZWRpZChzdHJ1Y3QgZHJtX2Nvbm5l
Y3RvciAqY29ubmVjdG9yLCBzdHJ1Y3QgZHJtX2RwX21zdF90b3BvbG9neV9tZ3IgKm1nciwgc3Ry
dWN0IGRybV9kcF9tc3RfcG9ydCAqcG9ydCk7CiAKIAotaW50IGRybV9kcF9jYWxjX3Bibl9tb2Rl
KGludCBjbG9jaywgaW50IGJwcCk7Ci0KK2ludCBkcm1fZHBfY2FsY19wYm5fbW9kZShpbnQgY2xv
Y2ssIGludCBicHAsIGJvb2wgZHNjKTsKIAogYm9vbCBkcm1fZHBfbXN0X2FsbG9jYXRlX3ZjcGko
c3RydWN0IGRybV9kcF9tc3RfdG9wb2xvZ3lfbWdyICptZ3IsCiAJCQkgICAgICBzdHJ1Y3QgZHJt
X2RwX21zdF9wb3J0ICpwb3J0LCBpbnQgcGJuLCBpbnQgc2xvdHMpOwotLSAKMi4xNy4xCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
