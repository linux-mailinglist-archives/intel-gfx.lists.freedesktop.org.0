Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FC8F9D27C
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2019 17:17:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E1A86E181;
	Mon, 26 Aug 2019 15:17:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (mail-eopbgr770050.outbound.protection.outlook.com [40.107.77.50])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 643996E143;
 Mon, 26 Aug 2019 15:17:33 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DJ1TE8vZWYX4TKgUPHBw/phjt7BsQvFTZiJPfO6VgcLJExBquudHTChRjjMSno4RMzjyTJMLk1q59nPEOke0g76ErZIv6tGnYosIfBiEpFpY/76Jj9HmD8Xzv0ggT/8Mxgnq89Z8uHUUl5Qm8k0WNYgNp0ZH+DFhxenloPQgNxVTI3P53Mpj0cTZVNCtXV5/KbQuMS9EVR/qbVqgUisabP1j4vH3/xKPKyDwgZiLbyLt/x0/Mf+eq3aWL04W7salrOaagFQTvExOwsGBNPZyQO0HaoY8HvwCjoGaAeku7Jsb0NYIGJEPFaycVt0yTQE5vKpToUGrq3Dy/NVRUZNfag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ybGqdjEnP/Qtk+XTOS4rd2r5zmH/Rg1+UxiOHzAwvpQ=;
 b=kSiG1askDnb3oVZVB//MIljhVSwmthhJL2/sUOLfIgjHMtewPNeovhSYyRPOy75Y4S7nF0btEdRhmWTef3GenKlg52b8pAVH6jzCRa5oQd8oDpYsb2Hk1FABfr+nbm+zCqlSPU8IkO3GS++6Sy51zpisk5aB4JQEqCgASddX57spvEWX56cS4h+Vye4n67pSBXxS0oDjfLyPvMyKmeopXWM60uR508KvBtnISS4kCeZjPXVQ78lzLFUUmlLJng718BtNgH1O3SbayeBOIZvWJBDvSEIFpVTUmSNkroCYZaFugYFKqMfXAmi9vmUXbwntk27/Mg+s+0LooBe9wjihJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none (sender ip is
 165.204.84.17) smtp.rcpttodomain=lists.freedesktop.org smtp.mailfrom=amd.com; 
 dmarc=permerror action=none header.from=amd.com; dkim=none (message not
 signed); arc=none
Received: from MN2PR12CA0034.namprd12.prod.outlook.com (2603:10b6:208:a8::47)
 by MWHPR12MB1280.namprd12.prod.outlook.com (2603:10b6:300:12::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2178.19; Mon, 26 Aug
 2019 15:17:32 +0000
Received: from DM3NAM03FT045.eop-NAM03.prod.protection.outlook.com
 (2a01:111:f400:7e49::204) by MN2PR12CA0034.outlook.office365.com
 (2603:10b6:208:a8::47) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2199.14 via Frontend
 Transport; Mon, 26 Aug 2019 15:17:32 +0000
Received-SPF: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
Received: from SATLEXCHOV01.amd.com (165.204.84.17) by
 DM3NAM03FT045.mail.protection.outlook.com (10.152.82.208) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2178.16 via Frontend Transport; Mon, 26 Aug 2019 15:17:31 +0000
Received: from localhost.localdomain (10.180.168.240) by SATLEXCHOV01.amd.com
 (10.181.40.71) with Microsoft SMTP Server id 14.3.389.1;
 Mon, 26 Aug 2019 10:17:30 -0500
From: David Francis <David.Francis@amd.com>
To: <dri-devel@lists.freedesktop.org>
Date: Mon, 26 Aug 2019 11:17:23 -0400
Message-ID: <20190826151728.19567-2-David.Francis@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190826151728.19567-1-David.Francis@amd.com>
References: <20190826151728.19567-1-David.Francis@amd.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:165.204.84.17; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(136003)(376002)(396003)(2980300002)(428003)(199004)(189003)(70586007)(426003)(11346002)(49486002)(336012)(316002)(50226002)(1076003)(50466002)(47776003)(48376002)(356004)(51416003)(16586007)(6666004)(2351001)(5660300002)(478600001)(86362001)(54906003)(186003)(76176011)(36756003)(2906002)(53936002)(126002)(476003)(2616005)(450100002)(305945005)(4326008)(70206006)(6916009)(81166006)(81156014)(8936002)(486006)(26005)(446003)(8676002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR12MB1280; H:SATLEXCHOV01.amd.com; FPR:;
 SPF:None; LANG:en; PTR:InfoDomainNonexistent; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ed2049f4-a861-46c8-fb13-08d72a388422
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328);
 SRVR:MWHPR12MB1280; 
X-MS-TrafficTypeDiagnostic: MWHPR12MB1280:
X-Microsoft-Antispam-PRVS: <MWHPR12MB12800EE1A12148D3909CB371EFA10@MWHPR12MB1280.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 01415BB535
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: TdpctTlsWOlE5ytciKq+tjkWqmaNheGlbkmTOjQ96Ky9m+7TZkpFBye7bVkwSxM332QhZ0wmJdNHu+0rMzAmRj7AaKrBlNVWYQPQmq+ef3KF0odEVZwR4mY/qz/cdez7D+tVEdaXesZ60ngft2PKOgFQvjQhwPGXDCyg5DFk1ySTyAIatCBiOW6ccX95hXCFoEKQJa27vakQaiJlqP4lmkJ2C7Vd/HmGOrGzC78HEzelXCS/7kNgDoVkRAVvw6BOwqik7mi2nWvfq5HWybE+8260kSkxxNePW3cbCrr/8n2n9d/kQ4C3GrqJSF0GeXJh1aBEygtHJnmgMeRUZZkP4h/AAwQW/Ja2GqQsNSP3G8WLoPiHf6TPhsU1ss8f7ZyH2d00BUow6vlyXBGbUxAV/jIhytLKopMMTx7Mw7RakIA=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Aug 2019 15:17:31.7412 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ed2049f4-a861-46c8-fb13-08d72a388422
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d; Ip=[165.204.84.17];
 Helo=[SATLEXCHOV01.amd.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR12MB1280
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amdcloud.onmicrosoft.com; s=selector2-amdcloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ybGqdjEnP/Qtk+XTOS4rd2r5zmH/Rg1+UxiOHzAwvpQ=;
 b=MeZ45sS78cD2Lrpcv8PbwvoBuMOuVXYcae3Zy3DX4QQ5buawzoV9P0QFblhtbCuZHvOIOsJOUFGBH3/oM/GEI0vp3juLWddWhs+f2D4MsM7HLNfKSmQAS6MPvoiE+Op4xkAtqlsSRzp419kCC+AhJAFsTGraGZ77d3ZRRyF1hJ4=
X-Mailman-Original-Authentication-Results: spf=none (sender IP is
 165.204.84.17)
 smtp.mailfrom=amd.com; lists.freedesktop.org; dkim=none (message not signed)
 header.d=none;lists.freedesktop.org; dmarc=permerror action=none
 header.from=amd.com;
Subject: [Intel-gfx] [PATCH v7 1/6] drm/dp_mst: Add PBN calculation for DSC
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
 intel-gfx@lists.freedesktop.org, amd-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2l0aCBEU0MsIGJwcCBjYW4gYmUgZnJhY3Rpb25hbCBpbiBtdWx0aXBsZXMgb2YgMS8xNi4KCkNo
YW5nZSBkcm1fZHBfY2FsY19wYm5fbW9kZSB0byByZWZsZWN0IHRoaXMsIGFkZGluZyBhIG5ldwpw
YXJhbWV0ZXIgYm9vbCBkc2MuIFdoZW4gdGhpcyBwYXJhbWV0ZXIgaXMgdHJ1ZSwgdHJlYXQgdGhl
CmJwcCBwYXJhbWV0ZXIgYXMgaGF2aW5nIHVuaXRzIG5vdCBvZiBiaXRzIHBlciBwaXhlbCwgYnV0
CjEvMTYgb2YgYSBiaXQgcGVyIHBpeGVsCgp2MjogRG9uJ3QgYWRkIHNlcGFyYXRlIGZ1bmN0aW9u
IGZvciB0aGlzCgpDYzogYW1kLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKQ2M6IG5vdXZlYXVA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCkNjOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
ClJldmlld2VkLWJ5OiBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29tPgpS
ZXZpZXdlZC1ieTogTHl1ZGUgUGF1bCA8bHl1ZGVAcmVkaGF0LmNvbT4KU2lnbmVkLW9mZi1ieTog
RGF2aWQgRnJhbmNpcyA8RGF2aWQuRnJhbmNpc0BhbWQuY29tPgotLS0KIC4uLi9hbWQvZGlzcGxh
eS9hbWRncHVfZG0vYW1kZ3B1X2RtX2hlbHBlcnMuYyAgICB8ICAyICstCiBkcml2ZXJzL2dwdS9k
cm0vZHJtX2RwX21zdF90b3BvbG9neS5jICAgICAgICAgICAgfCAxNiArKysrKysrKysrKystLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jICAgICAgfCAgMiAr
LQogZHJpdmVycy9ncHUvZHJtL25vdXZlYXUvZGlzcG52NTAvZGlzcC5jICAgICAgICAgIHwgIDIg
Ky0KIGRyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX2RwX21zdC5jICAgICAgICAgICB8ICAy
ICstCiBpbmNsdWRlL2RybS9kcm1fZHBfbXN0X2hlbHBlci5oICAgICAgICAgICAgICAgICAgfCAg
MyArLS0KIDYgZmlsZXMgY2hhbmdlZCwgMTcgaW5zZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9kaXNwbGF5L2FtZGdwdV9kbS9hbWRn
cHVfZG1faGVscGVycy5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9kaXNwbGF5L2FtZGdwdV9kbS9h
bWRncHVfZG1faGVscGVycy5jCmluZGV4IGEwZWQwMTU0YTlmMC4uYWJhZmI1MjIxYjQ0IDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2Rpc3BsYXkvYW1kZ3B1X2RtL2FtZGdwdV9kbV9o
ZWxwZXJzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9kaXNwbGF5L2FtZGdwdV9kbS9hbWRn
cHVfZG1faGVscGVycy5jCkBAIC0yMzUsNyArMjM1LDcgQEAgYm9vbCBkbV9oZWxwZXJzX2RwX21z
dF93cml0ZV9wYXlsb2FkX2FsbG9jYXRpb25fdGFibGUoCiAKIAkJLyogVE9ETyBuZWVkIHRvIGtu
b3cgbGluayByYXRlICovCiAKLQkJcGJuID0gZHJtX2RwX2NhbGNfcGJuX21vZGUoY2xvY2ssIGJw
cCk7CisJCXBibiA9IGRybV9kcF9jYWxjX3Bibl9tb2RlKGNsb2NrLCBicHAsIGZhbHNlKTsKIAog
CQlzbG90cyA9IGRybV9kcF9maW5kX3ZjcGlfc2xvdHMobXN0X21nciwgcGJuKTsKIAkJcmV0ID0g
ZHJtX2RwX21zdF9hbGxvY2F0ZV92Y3BpKG1zdF9tZ3IsIG1zdF9wb3J0LCBwYm4sIHNsb3RzKTsK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZHBfbXN0X3RvcG9sb2d5LmMgYi9kcml2
ZXJzL2dwdS9kcm0vZHJtX2RwX21zdF90b3BvbG9neS5jCmluZGV4IDgyYWRkNzM2ZTE3ZC4uM2U3
Yjc1NTNjZjRkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2RwX21zdF90b3BvbG9n
eS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZHBfbXN0X3RvcG9sb2d5LmMKQEAgLTM1MzQs
MTAgKzM1MzQsMTEgQEAgRVhQT1JUX1NZTUJPTChkcm1fZHBfY2hlY2tfYWN0X3N0YXR1cyk7CiAg
KiBkcm1fZHBfY2FsY19wYm5fbW9kZSgpIC0gQ2FsY3VsYXRlIHRoZSBQQk4gZm9yIGEgbW9kZS4K
ICAqIEBjbG9jazogZG90IGNsb2NrIGZvciB0aGUgbW9kZQogICogQGJwcDogYnBwIGZvciB0aGUg
bW9kZS4KKyAqIEBkc2M6IERTQyBtb2RlLiBJZiB0cnVlLCBicHAgaGFzIHVuaXRzIG9mIDEvMTYg
b2YgYSBiaXQgcGVyIHBpeGVsCiAgKgogICogVGhpcyB1c2VzIHRoZSBmb3JtdWxhIGluIHRoZSBz
cGVjIHRvIGNhbGN1bGF0ZSB0aGUgUEJOIHZhbHVlIGZvciBhIG1vZGUuCiAgKi8KLWludCBkcm1f
ZHBfY2FsY19wYm5fbW9kZShpbnQgY2xvY2ssIGludCBicHApCitpbnQgZHJtX2RwX2NhbGNfcGJu
X21vZGUoaW50IGNsb2NrLCBpbnQgYnBwLCBib29sIGRzYykKIHsKIAl1NjQga2JwczsKIAlzNjQg
cGVha19rYnBzOwpAQCAtMzU1NSwxMSArMzU1NiwxOCBAQCBpbnQgZHJtX2RwX2NhbGNfcGJuX21v
ZGUoaW50IGNsb2NrLCBpbnQgYnBwKQogCSAqIHBlYWtfa2JwcyAqPSAoMTAwNi8xMDAwKQogCSAq
IHBlYWtfa2JwcyAqPSAoNjQvNTQpCiAJICogcGVha19rYnBzICo9IDggICAgY29udmVydCB0byBi
eXRlcworCSAqCisJICogSWYgdGhlIGJwcCBpcyBpbiB1bml0cyBvZiAxLzE2LCBmdXJ0aGVyIGRp
dmlkZSBieSAxNi4gUHV0IHRoaXMKKwkgKiBmYWN0b3IgaW4gdGhlIG51bWVyYXRvciByYXRoZXIg
dGhhbiB0aGUgZGVub21pbmF0b3IgdG8gYXZvaWQKKwkgKiBpbnRlZ2VyIG92ZXJmbG93CiAJICov
CiAKIAludW1lcmF0b3IgPSA2NCAqIDEwMDY7CiAJZGVub21pbmF0b3IgPSA1NCAqIDggKiAxMDAw
ICogMTAwMDsKIAorCWlmIChkc2MpCisJCW51bWVyYXRvciAvPSAxNjsKKwogCWticHMgKj0gbnVt
ZXJhdG9yOwogCXBlYWtfa2JwcyA9IGRybV9maXhwX2Zyb21fZnJhY3Rpb24oa2JwcywgZGVub21p
bmF0b3IpOwogCkBAIC0zNTcwLDE5ICszNTc4LDE5IEBAIEVYUE9SVF9TWU1CT0woZHJtX2RwX2Nh
bGNfcGJuX21vZGUpOwogc3RhdGljIGludCB0ZXN0X2NhbGNfcGJuX21vZGUodm9pZCkKIHsKIAlp
bnQgcmV0OwotCXJldCA9IGRybV9kcF9jYWxjX3Bibl9tb2RlKDE1NDAwMCwgMzApOworCXJldCA9
IGRybV9kcF9jYWxjX3Bibl9tb2RlKDE1NDAwMCwgMzAsIGZhbHNlKTsKIAlpZiAocmV0ICE9IDY4
OSkgewogCQlEUk1fRVJST1IoIlBCTiBjYWxjdWxhdGlvbiB0ZXN0IGZhaWxlZCAtIGNsb2NrICVk
LCBicHAgJWQsIGV4cGVjdGVkIFBCTiAlZCwgYWN0dWFsIFBCTiAlZC5cbiIsCiAJCQkJMTU0MDAw
LCAzMCwgNjg5LCByZXQpOwogCQlyZXR1cm4gLUVJTlZBTDsKIAl9Ci0JcmV0ID0gZHJtX2RwX2Nh
bGNfcGJuX21vZGUoMjM0MDAwLCAzMCk7CisJcmV0ID0gZHJtX2RwX2NhbGNfcGJuX21vZGUoMjM0
MDAwLCAzMCwgZmFsc2UpOwogCWlmIChyZXQgIT0gMTA0NykgewogCQlEUk1fRVJST1IoIlBCTiBj
YWxjdWxhdGlvbiB0ZXN0IGZhaWxlZCAtIGNsb2NrICVkLCBicHAgJWQsIGV4cGVjdGVkIFBCTiAl
ZCwgYWN0dWFsIFBCTiAlZC5cbiIsCiAJCQkJMjM0MDAwLCAzMCwgMTA0NywgcmV0KTsKIAkJcmV0
dXJuIC1FSU5WQUw7CiAJfQotCXJldCA9IGRybV9kcF9jYWxjX3Bibl9tb2RlKDI5NzAwMCwgMjQp
OworCXJldCA9IGRybV9kcF9jYWxjX3Bibl9tb2RlKDI5NzAwMCwgMjQsIGZhbHNlKTsKIAlpZiAo
cmV0ICE9IDEwNjMpIHsKIAkJRFJNX0VSUk9SKCJQQk4gY2FsY3VsYXRpb24gdGVzdCBmYWlsZWQg
LSBjbG9jayAlZCwgYnBwICVkLCBleHBlY3RlZCBQQk4gJWQsIGFjdHVhbCBQQk4gJWQuXG4iLAog
CQkJCTI5NzAwMCwgMjQsIDEwNjMsIHJldCk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcF9tc3QuYwppbmRleCAyYzVhYzNkZDY0N2YuLjRmMTdmNjFmNDQ1MyAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jCkBAIC02MSw3ICs2MSw3
IEBAIHN0YXRpYyBpbnQgaW50ZWxfZHBfbXN0X2NvbXB1dGVfbGlua19jb25maWcoc3RydWN0IGlu
dGVsX2VuY29kZXIgKmVuY29kZXIsCiAJCWNydGNfc3RhdGUtPnBpcGVfYnBwID0gYnBwOwogCiAJ
CWNydGNfc3RhdGUtPnBibiA9IGRybV9kcF9jYWxjX3Bibl9tb2RlKGFkanVzdGVkX21vZGUtPmNy
dGNfY2xvY2ssCi0JCQkJCQkgICAgICAgY3J0Y19zdGF0ZS0+cGlwZV9icHApOworCQkJCQkJICAg
ICAgIGNydGNfc3RhdGUtPnBpcGVfYnBwLCBmYWxzZSk7CiAKIAkJc2xvdHMgPSBkcm1fZHBfYXRv
bWljX2ZpbmRfdmNwaV9zbG90cyhzdGF0ZSwgJmludGVsX2RwLT5tc3RfbWdyLAogCQkJCQkJICAg
ICAgcG9ydCwgY3J0Y19zdGF0ZS0+cGJuKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9u
b3V2ZWF1L2Rpc3BudjUwL2Rpc3AuYyBiL2RyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L2Rpc3BudjUw
L2Rpc3AuYwppbmRleCA1YzM2Yzc1MjMyZTYuLmM2ODc4M2MxZjNmYSAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL25vdXZlYXUvZGlzcG52NTAvZGlzcC5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9ub3V2ZWF1L2Rpc3BudjUwL2Rpc3AuYwpAQCAtNzgyLDcgKzc4Miw3IEBAIG52NTBfbXN0b19h
dG9taWNfY2hlY2soc3RydWN0IGRybV9lbmNvZGVyICplbmNvZGVyLAogCQkJY29uc3QgaW50IGJw
cCA9IGNvbm5lY3Rvci0+ZGlzcGxheV9pbmZvLmJwYyAqIDM7CiAJCQljb25zdCBpbnQgY2xvY2sg
PSBjcnRjX3N0YXRlLT5hZGp1c3RlZF9tb2RlLmNsb2NrOwogCi0JCQlhc3loLT5kcC5wYm4gPSBk
cm1fZHBfY2FsY19wYm5fbW9kZShjbG9jaywgYnBwKTsKKwkJCWFzeWgtPmRwLnBibiA9IGRybV9k
cF9jYWxjX3Bibl9tb2RlKGNsb2NrLCBicHAsIGZhbHNlKTsKIAkJfQogCiAJCXNsb3RzID0gZHJt
X2RwX2F0b21pY19maW5kX3ZjcGlfc2xvdHMoc3RhdGUsICZtc3RtLT5tZ3IsCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9kcF9tc3QuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9yYWRlb24vcmFkZW9uX2RwX21zdC5jCmluZGV4IDI5OTRmMDdmYmFkOS4uYzk5N2Y4ODIxOGYy
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9kcF9tc3QuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9kcF9tc3QuYwpAQCAtNTE0LDcgKzUxNCw3
IEBAIHN0YXRpYyBib29sIHJhZGVvbl9tc3RfbW9kZV9maXh1cChzdHJ1Y3QgZHJtX2VuY29kZXIg
KmVuY29kZXIsCiAKIAltc3RfZW5jID0gcmFkZW9uX2VuY29kZXItPmVuY19wcml2OwogCi0JbXN0
X2VuYy0+cGJuID0gZHJtX2RwX2NhbGNfcGJuX21vZGUoYWRqdXN0ZWRfbW9kZS0+Y2xvY2ssIGJw
cCk7CisJbXN0X2VuYy0+cGJuID0gZHJtX2RwX2NhbGNfcGJuX21vZGUoYWRqdXN0ZWRfbW9kZS0+
Y2xvY2ssIGJwcCwgZmFsc2UpOwogCiAJbXN0X2VuYy0+cHJpbWFyeS0+YWN0aXZlX2RldmljZSA9
IG1zdF9lbmMtPnByaW1hcnktPmRldmljZXMgJiBtc3RfZW5jLT5jb25uZWN0b3ItPmRldmljZXM7
CiAJRFJNX0RFQlVHX0tNUygic2V0dGluZyBhY3RpdmUgZGV2aWNlIHRvICUwOHggZnJvbSAlMDh4
ICUwOHggZm9yIGVuY29kZXIgJWRcbiIsCmRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9kcm1fZHBf
bXN0X2hlbHBlci5oIGIvaW5jbHVkZS9kcm0vZHJtX2RwX21zdF9oZWxwZXIuaAppbmRleCAyYmE2
MjUzZWE2ZDMuLjkxMTZiMmM5NTIzOSAxMDA2NDQKLS0tIGEvaW5jbHVkZS9kcm0vZHJtX2RwX21z
dF9oZWxwZXIuaAorKysgYi9pbmNsdWRlL2RybS9kcm1fZHBfbXN0X2hlbHBlci5oCkBAIC02MTAs
OCArNjEwLDcgQEAgYm9vbCBkcm1fZHBfbXN0X3BvcnRfaGFzX2F1ZGlvKHN0cnVjdCBkcm1fZHBf
bXN0X3RvcG9sb2d5X21nciAqbWdyLAogc3RydWN0IGVkaWQgKmRybV9kcF9tc3RfZ2V0X2VkaWQo
c3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3Rvciwgc3RydWN0IGRybV9kcF9tc3RfdG9wb2xv
Z3lfbWdyICptZ3IsIHN0cnVjdCBkcm1fZHBfbXN0X3BvcnQgKnBvcnQpOwogCiAKLWludCBkcm1f
ZHBfY2FsY19wYm5fbW9kZShpbnQgY2xvY2ssIGludCBicHApOwotCitpbnQgZHJtX2RwX2NhbGNf
cGJuX21vZGUoaW50IGNsb2NrLCBpbnQgYnBwLCBib29sIGRzYyk7CiAKIGJvb2wgZHJtX2RwX21z
dF9hbGxvY2F0ZV92Y3BpKHN0cnVjdCBkcm1fZHBfbXN0X3RvcG9sb2d5X21nciAqbWdyLAogCQkJ
ICAgICAgc3RydWN0IGRybV9kcF9tc3RfcG9ydCAqcG9ydCwgaW50IHBibiwgaW50IHNsb3RzKTsK
LS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
