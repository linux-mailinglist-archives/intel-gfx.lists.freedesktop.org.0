Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 631B19EA91
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2019 16:13:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CA4D89B78;
	Tue, 27 Aug 2019 14:13:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM05-BY2-obe.outbound.protection.outlook.com
 (mail-by2nam05on062c.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:fe52::62c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EAB78902B;
 Tue, 27 Aug 2019 14:13:35 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lYc2Mvkl7KjL8lyaHo5UW+lZIBxST3+loSR4RE6xqeEtwf8DaJJqNUVWipT588rj+agQ3n07u3fxM9k6yXm4gDGvXBRqRsKmvhBPPK2DU+5QXTXZF1DSfpV8AVDJN1IZ7Gci7c1SVq2W0Xp4PywPopJpACFyeZMrh1xgXwEUobu3/BXI27Xl3CKIS+dSsNTSSGIRkW49aRDOBpOGGXN5OvQIQrdA91VVOcnbo5vtLIG3o+gRqJu5knpwFUX6swpAytGNsPZ8keBOpvPfRKMEPWEYjp8BadPknITaIj8zLq/01X861sLD1prxoT5ThpY0mdKVMGCgHRDJGPcSBAgCsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FsVvmbVRtGqMzH2hisFDmk3OUGGWsXqdMtGVyaaGroc=;
 b=FfnzfCuTZUEpGwVXYX4cWnoGMlnzQWSncNvoHBs/JPOjJDfyNfbNiOTHnSJbYjhpoeOC3tOSZe5FA2VJZtaxaUDX0IbiD5XSzmlPF5cMx0L9aWxMM38FBU55m7+qWHxNpTD3XPRZtnNbL9UqxmgA8X9Vbumlr/aYXjzMqzda687sJwLDJMuGj4xPx09Ck3A7/J9mtBz98jA9hBtXV3m009Jzt6FHUJsoJpq8VA4gKRq1ktROUP8N3ysvaWKZ6FV51oI+8o0ljX/ji/+HLsKlpPfuvwJH82ul8BXG20UtvWngZiA0mYSAE3GWkwtuhNnyNmRhXt2FkHJpm3EreG8zcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none (sender ip is
 165.204.84.17) smtp.rcpttodomain=lists.freedesktop.org smtp.mailfrom=amd.com; 
 dmarc=permerror action=none header.from=amd.com; dkim=none (message not
 signed); arc=none
Received: from BN6PR1201CA0005.namprd12.prod.outlook.com
 (2603:10b6:405:4c::15) by BYAPR12MB2712.namprd12.prod.outlook.com
 (2603:10b6:a03:68::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2199.21; Tue, 27 Aug
 2019 14:13:33 +0000
Received: from DM3NAM03FT045.eop-NAM03.prod.protection.outlook.com
 (2a01:111:f400:7e49::205) by BN6PR1201CA0005.outlook.office365.com
 (2603:10b6:405:4c::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2199.17 via Frontend
 Transport; Tue, 27 Aug 2019 14:13:32 +0000
Received-SPF: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
Received: from SATLEXCHOV01.amd.com (165.204.84.17) by
 DM3NAM03FT045.mail.protection.outlook.com (10.152.82.208) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2178.16 via Frontend Transport; Tue, 27 Aug 2019 14:13:32 +0000
Received: from localhost.localdomain (10.180.168.240) by SATLEXCHOV01.amd.com
 (10.181.40.71) with Microsoft SMTP Server id 14.3.389.1;
 Tue, 27 Aug 2019 09:13:31 -0500
From: David Francis <David.Francis@amd.com>
To: <dri-devel@lists.freedesktop.org>
Date: Tue, 27 Aug 2019 10:13:24 -0400
Message-ID: <20190827141329.30767-2-David.Francis@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190827141329.30767-1-David.Francis@amd.com>
References: <20190827141329.30767-1-David.Francis@amd.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:165.204.84.17; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(396003)(39860400002)(346002)(136003)(2980300002)(428003)(189003)(199004)(26005)(51416003)(76176011)(186003)(6916009)(478600001)(70586007)(450100002)(2351001)(70206006)(81166006)(81156014)(8676002)(305945005)(50226002)(8936002)(48376002)(16586007)(54906003)(316002)(1076003)(4326008)(126002)(2906002)(476003)(50466002)(486006)(11346002)(336012)(446003)(49486002)(2616005)(356004)(426003)(36756003)(86362001)(6666004)(53936002)(47776003)(5660300002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR12MB2712; H:SATLEXCHOV01.amd.com; FPR:;
 SPF:None; LANG:en; PTR:InfoDomainNonexistent; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ab406a33-7c3d-4584-ef44-08d72af8be05
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328);
 SRVR:BYAPR12MB2712; 
X-MS-TrafficTypeDiagnostic: BYAPR12MB2712:
X-Microsoft-Antispam-PRVS: <BYAPR12MB2712D248AD5A51D5D74F0C0BEFA00@BYAPR12MB2712.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 0142F22657
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: lWpabPyiR2GbVDnvg1T6vV2+5ZM8/mq2MFw588BPe0nw0kYPniqttNsobbw537ojZk/3vQr+t8FiFrp7hRYeFSpMEy449dXztSw0wqA79f5MszlZYBV1y04uNaRglp9Jw89l/nwvVtINjmocejaX01BQ9FSuPLDHfTd+Z8r/2Mmm605ZkjlFjRv2ZNahp7R8I3X7D7CdBxqCkw0t4Z23lMSdg/Phvtt35c139BBDNyl94zPuZ100SwBpL5iRaVkIR9BMQy237PnOuMjphU0QMifbP8tkZhQSsh9C/s4jQv3XbgKXzYJnOj4IMIdm1g+nMmYsSaw4Gpjpr2GmkH0yGfmS2l+cgtiY0A1LsJzwbzNsfvBvXsqLDggTtotZ8aWpaxmw++8Vv3lw0MLtJ+q/usUW861uxi8yk1nOY/wSQmk=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Aug 2019 14:13:32.2318 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ab406a33-7c3d-4584-ef44-08d72af8be05
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d; Ip=[165.204.84.17];
 Helo=[SATLEXCHOV01.amd.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR12MB2712
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amdcloud.onmicrosoft.com; s=selector2-amdcloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FsVvmbVRtGqMzH2hisFDmk3OUGGWsXqdMtGVyaaGroc=;
 b=Dk2VxVsxx5+qE1BWAmQj0Gw4NCWxT6VAdhopLJNq3xboIpLNpiQ3xmloAgD12TScRCtO/R6SMhplGhzrc2WksQ5vrPLFT7Sao+8GGBsliktrVTiWtSIiG8AU9KzkM87jP7xnqx802GJkqV21GwlFh0h/Fn6nZ2/l5u0XaqnjytE=
X-Mailman-Original-Authentication-Results: spf=none (sender IP is
 165.204.84.17)
 smtp.mailfrom=amd.com; lists.freedesktop.org; dkim=none (message not signed)
 header.d=none;lists.freedesktop.org; dmarc=permerror action=none
 header.from=amd.com;
Subject: [Intel-gfx] [PATCH v9 1/6] drm/dp_mst: Add PBN calculation for DSC
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
ZXZpZXdlZC1ieTogTHl1ZGUgUGF1bCA8bHl1ZGVAcmVkaGF0LmNvbT4KUmV2aWV3ZWQtYnk6IEhh
cnJ5IFdlbnRsYW5kIDxoYXJyeS53ZW50bGFuZEBhbWQuY29tPgpTaWduZWQtb2ZmLWJ5OiBEYXZp
ZCBGcmFuY2lzIDxEYXZpZC5GcmFuY2lzQGFtZC5jb20+Ci0tLQogLi4uL2FtZC9kaXNwbGF5L2Ft
ZGdwdV9kbS9hbWRncHVfZG1faGVscGVycy5jICAgIHwgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9k
cm1fZHBfbXN0X3RvcG9sb2d5LmMgICAgICAgICAgICB8IDE2ICsrKysrKysrKysrKy0tLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMgICAgICB8ICAyICstCiBk
cml2ZXJzL2dwdS9kcm0vbm91dmVhdS9kaXNwbnY1MC9kaXNwLmMgICAgICAgICAgfCAgMiArLQog
ZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fZHBfbXN0LmMgICAgICAgICAgIHwgIDIgKy0K
IGluY2x1ZGUvZHJtL2RybV9kcF9tc3RfaGVscGVyLmggICAgICAgICAgICAgICAgICB8ICAzICst
LQogNiBmaWxlcyBjaGFuZ2VkLCAxNyBpbnNlcnRpb25zKCspLCAxMCBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2Rpc3BsYXkvYW1kZ3B1X2RtL2FtZGdwdV9k
bV9oZWxwZXJzLmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2Rpc3BsYXkvYW1kZ3B1X2RtL2FtZGdw
dV9kbV9oZWxwZXJzLmMKaW5kZXggYTBlZDAxNTRhOWYwLi5hYmFmYjUyMjFiNDQgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvZGlzcGxheS9hbWRncHVfZG0vYW1kZ3B1X2RtX2hlbHBl
cnMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2Rpc3BsYXkvYW1kZ3B1X2RtL2FtZGdwdV9k
bV9oZWxwZXJzLmMKQEAgLTIzNSw3ICsyMzUsNyBAQCBib29sIGRtX2hlbHBlcnNfZHBfbXN0X3dy
aXRlX3BheWxvYWRfYWxsb2NhdGlvbl90YWJsZSgKIAogCQkvKiBUT0RPIG5lZWQgdG8ga25vdyBs
aW5rIHJhdGUgKi8KIAotCQlwYm4gPSBkcm1fZHBfY2FsY19wYm5fbW9kZShjbG9jaywgYnBwKTsK
KwkJcGJuID0gZHJtX2RwX2NhbGNfcGJuX21vZGUoY2xvY2ssIGJwcCwgZmFsc2UpOwogCiAJCXNs
b3RzID0gZHJtX2RwX2ZpbmRfdmNwaV9zbG90cyhtc3RfbWdyLCBwYm4pOwogCQlyZXQgPSBkcm1f
ZHBfbXN0X2FsbG9jYXRlX3ZjcGkobXN0X21nciwgbXN0X3BvcnQsIHBibiwgc2xvdHMpOwpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9kcF9tc3RfdG9wb2xvZ3kuYyBiL2RyaXZlcnMv
Z3B1L2RybS9kcm1fZHBfbXN0X3RvcG9sb2d5LmMKaW5kZXggODJhZGQ3MzZlMTdkLi4zZTdiNzU1
M2NmNGQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZHBfbXN0X3RvcG9sb2d5LmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9kcF9tc3RfdG9wb2xvZ3kuYwpAQCAtMzUzNCwxMCAr
MzUzNCwxMSBAQCBFWFBPUlRfU1lNQk9MKGRybV9kcF9jaGVja19hY3Rfc3RhdHVzKTsKICAqIGRy
bV9kcF9jYWxjX3Bibl9tb2RlKCkgLSBDYWxjdWxhdGUgdGhlIFBCTiBmb3IgYSBtb2RlLgogICog
QGNsb2NrOiBkb3QgY2xvY2sgZm9yIHRoZSBtb2RlCiAgKiBAYnBwOiBicHAgZm9yIHRoZSBtb2Rl
LgorICogQGRzYzogRFNDIG1vZGUuIElmIHRydWUsIGJwcCBoYXMgdW5pdHMgb2YgMS8xNiBvZiBh
IGJpdCBwZXIgcGl4ZWwKICAqCiAgKiBUaGlzIHVzZXMgdGhlIGZvcm11bGEgaW4gdGhlIHNwZWMg
dG8gY2FsY3VsYXRlIHRoZSBQQk4gdmFsdWUgZm9yIGEgbW9kZS4KICAqLwotaW50IGRybV9kcF9j
YWxjX3Bibl9tb2RlKGludCBjbG9jaywgaW50IGJwcCkKK2ludCBkcm1fZHBfY2FsY19wYm5fbW9k
ZShpbnQgY2xvY2ssIGludCBicHAsIGJvb2wgZHNjKQogewogCXU2NCBrYnBzOwogCXM2NCBwZWFr
X2ticHM7CkBAIC0zNTU1LDExICszNTU2LDE4IEBAIGludCBkcm1fZHBfY2FsY19wYm5fbW9kZShp
bnQgY2xvY2ssIGludCBicHApCiAJICogcGVha19rYnBzICo9ICgxMDA2LzEwMDApCiAJICogcGVh
a19rYnBzICo9ICg2NC81NCkKIAkgKiBwZWFrX2ticHMgKj0gOCAgICBjb252ZXJ0IHRvIGJ5dGVz
CisJICoKKwkgKiBJZiB0aGUgYnBwIGlzIGluIHVuaXRzIG9mIDEvMTYsIGZ1cnRoZXIgZGl2aWRl
IGJ5IDE2LiBQdXQgdGhpcworCSAqIGZhY3RvciBpbiB0aGUgbnVtZXJhdG9yIHJhdGhlciB0aGFu
IHRoZSBkZW5vbWluYXRvciB0byBhdm9pZAorCSAqIGludGVnZXIgb3ZlcmZsb3cKIAkgKi8KIAog
CW51bWVyYXRvciA9IDY0ICogMTAwNjsKIAlkZW5vbWluYXRvciA9IDU0ICogOCAqIDEwMDAgKiAx
MDAwOwogCisJaWYgKGRzYykKKwkJbnVtZXJhdG9yIC89IDE2OworCiAJa2JwcyAqPSBudW1lcmF0
b3I7CiAJcGVha19rYnBzID0gZHJtX2ZpeHBfZnJvbV9mcmFjdGlvbihrYnBzLCBkZW5vbWluYXRv
cik7CiAKQEAgLTM1NzAsMTkgKzM1NzgsMTkgQEAgRVhQT1JUX1NZTUJPTChkcm1fZHBfY2FsY19w
Ym5fbW9kZSk7CiBzdGF0aWMgaW50IHRlc3RfY2FsY19wYm5fbW9kZSh2b2lkKQogewogCWludCBy
ZXQ7Ci0JcmV0ID0gZHJtX2RwX2NhbGNfcGJuX21vZGUoMTU0MDAwLCAzMCk7CisJcmV0ID0gZHJt
X2RwX2NhbGNfcGJuX21vZGUoMTU0MDAwLCAzMCwgZmFsc2UpOwogCWlmIChyZXQgIT0gNjg5KSB7
CiAJCURSTV9FUlJPUigiUEJOIGNhbGN1bGF0aW9uIHRlc3QgZmFpbGVkIC0gY2xvY2sgJWQsIGJw
cCAlZCwgZXhwZWN0ZWQgUEJOICVkLCBhY3R1YWwgUEJOICVkLlxuIiwKIAkJCQkxNTQwMDAsIDMw
LCA2ODksIHJldCk7CiAJCXJldHVybiAtRUlOVkFMOwogCX0KLQlyZXQgPSBkcm1fZHBfY2FsY19w
Ym5fbW9kZSgyMzQwMDAsIDMwKTsKKwlyZXQgPSBkcm1fZHBfY2FsY19wYm5fbW9kZSgyMzQwMDAs
IDMwLCBmYWxzZSk7CiAJaWYgKHJldCAhPSAxMDQ3KSB7CiAJCURSTV9FUlJPUigiUEJOIGNhbGN1
bGF0aW9uIHRlc3QgZmFpbGVkIC0gY2xvY2sgJWQsIGJwcCAlZCwgZXhwZWN0ZWQgUEJOICVkLCBh
Y3R1YWwgUEJOICVkLlxuIiwKIAkJCQkyMzQwMDAsIDMwLCAxMDQ3LCByZXQpOwogCQlyZXR1cm4g
LUVJTlZBTDsKIAl9Ci0JcmV0ID0gZHJtX2RwX2NhbGNfcGJuX21vZGUoMjk3MDAwLCAyNCk7CisJ
cmV0ID0gZHJtX2RwX2NhbGNfcGJuX21vZGUoMjk3MDAwLCAyNCwgZmFsc2UpOwogCWlmIChyZXQg
IT0gMTA2MykgewogCQlEUk1fRVJST1IoIlBCTiBjYWxjdWxhdGlvbiB0ZXN0IGZhaWxlZCAtIGNs
b2NrICVkLCBicHAgJWQsIGV4cGVjdGVkIFBCTiAlZCwgYWN0dWFsIFBCTiAlZC5cbiIsCiAJCQkJ
Mjk3MDAwLCAyNCwgMTA2MywgcmV0KTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwX21zdC5jCmluZGV4IDJjNWFjM2RkNjQ3Zi4uNGYxN2Y2MWY0NDUzIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMKQEAgLTYxLDcgKzYxLDcgQEAg
c3RhdGljIGludCBpbnRlbF9kcF9tc3RfY29tcHV0ZV9saW5rX2NvbmZpZyhzdHJ1Y3QgaW50ZWxf
ZW5jb2RlciAqZW5jb2RlciwKIAkJY3J0Y19zdGF0ZS0+cGlwZV9icHAgPSBicHA7CiAKIAkJY3J0
Y19zdGF0ZS0+cGJuID0gZHJtX2RwX2NhbGNfcGJuX21vZGUoYWRqdXN0ZWRfbW9kZS0+Y3J0Y19j
bG9jaywKLQkJCQkJCSAgICAgICBjcnRjX3N0YXRlLT5waXBlX2JwcCk7CisJCQkJCQkgICAgICAg
Y3J0Y19zdGF0ZS0+cGlwZV9icHAsIGZhbHNlKTsKIAogCQlzbG90cyA9IGRybV9kcF9hdG9taWNf
ZmluZF92Y3BpX3Nsb3RzKHN0YXRlLCAmaW50ZWxfZHAtPm1zdF9tZ3IsCiAJCQkJCQkgICAgICBw
b3J0LCBjcnRjX3N0YXRlLT5wYm4pOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL25vdXZl
YXUvZGlzcG52NTAvZGlzcC5jIGIvZHJpdmVycy9ncHUvZHJtL25vdXZlYXUvZGlzcG52NTAvZGlz
cC5jCmluZGV4IDVjMzZjNzUyMzJlNi4uYzY4NzgzYzFmM2ZhIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vbm91dmVhdS9kaXNwbnY1MC9kaXNwLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL25v
dXZlYXUvZGlzcG52NTAvZGlzcC5jCkBAIC03ODIsNyArNzgyLDcgQEAgbnY1MF9tc3RvX2F0b21p
Y19jaGVjayhzdHJ1Y3QgZHJtX2VuY29kZXIgKmVuY29kZXIsCiAJCQljb25zdCBpbnQgYnBwID0g
Y29ubmVjdG9yLT5kaXNwbGF5X2luZm8uYnBjICogMzsKIAkJCWNvbnN0IGludCBjbG9jayA9IGNy
dGNfc3RhdGUtPmFkanVzdGVkX21vZGUuY2xvY2s7CiAKLQkJCWFzeWgtPmRwLnBibiA9IGRybV9k
cF9jYWxjX3Bibl9tb2RlKGNsb2NrLCBicHApOworCQkJYXN5aC0+ZHAucGJuID0gZHJtX2RwX2Nh
bGNfcGJuX21vZGUoY2xvY2ssIGJwcCwgZmFsc2UpOwogCQl9CiAKIAkJc2xvdHMgPSBkcm1fZHBf
YXRvbWljX2ZpbmRfdmNwaV9zbG90cyhzdGF0ZSwgJm1zdG0tPm1nciwKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX2RwX21zdC5jIGIvZHJpdmVycy9ncHUvZHJtL3Jh
ZGVvbi9yYWRlb25fZHBfbXN0LmMKaW5kZXggMjk5NGYwN2ZiYWQ5Li5jOTk3Zjg4MjE4ZjIgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX2RwX21zdC5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX2RwX21zdC5jCkBAIC01MTQsNyArNTE0LDcgQEAg
c3RhdGljIGJvb2wgcmFkZW9uX21zdF9tb2RlX2ZpeHVwKHN0cnVjdCBkcm1fZW5jb2RlciAqZW5j
b2RlciwKIAogCW1zdF9lbmMgPSByYWRlb25fZW5jb2Rlci0+ZW5jX3ByaXY7CiAKLQltc3RfZW5j
LT5wYm4gPSBkcm1fZHBfY2FsY19wYm5fbW9kZShhZGp1c3RlZF9tb2RlLT5jbG9jaywgYnBwKTsK
Kwltc3RfZW5jLT5wYm4gPSBkcm1fZHBfY2FsY19wYm5fbW9kZShhZGp1c3RlZF9tb2RlLT5jbG9j
aywgYnBwLCBmYWxzZSk7CiAKIAltc3RfZW5jLT5wcmltYXJ5LT5hY3RpdmVfZGV2aWNlID0gbXN0
X2VuYy0+cHJpbWFyeS0+ZGV2aWNlcyAmIG1zdF9lbmMtPmNvbm5lY3Rvci0+ZGV2aWNlczsKIAlE
Uk1fREVCVUdfS01TKCJzZXR0aW5nIGFjdGl2ZSBkZXZpY2UgdG8gJTA4eCBmcm9tICUwOHggJTA4
eCBmb3IgZW5jb2RlciAlZFxuIiwKZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2RybV9kcF9tc3Rf
aGVscGVyLmggYi9pbmNsdWRlL2RybS9kcm1fZHBfbXN0X2hlbHBlci5oCmluZGV4IDJiYTYyNTNl
YTZkMy4uOTExNmIyYzk1MjM5IDEwMDY0NAotLS0gYS9pbmNsdWRlL2RybS9kcm1fZHBfbXN0X2hl
bHBlci5oCisrKyBiL2luY2x1ZGUvZHJtL2RybV9kcF9tc3RfaGVscGVyLmgKQEAgLTYxMCw4ICs2
MTAsNyBAQCBib29sIGRybV9kcF9tc3RfcG9ydF9oYXNfYXVkaW8oc3RydWN0IGRybV9kcF9tc3Rf
dG9wb2xvZ3lfbWdyICptZ3IsCiBzdHJ1Y3QgZWRpZCAqZHJtX2RwX21zdF9nZXRfZWRpZChzdHJ1
Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yLCBzdHJ1Y3QgZHJtX2RwX21zdF90b3BvbG9neV9t
Z3IgKm1nciwgc3RydWN0IGRybV9kcF9tc3RfcG9ydCAqcG9ydCk7CiAKIAotaW50IGRybV9kcF9j
YWxjX3Bibl9tb2RlKGludCBjbG9jaywgaW50IGJwcCk7Ci0KK2ludCBkcm1fZHBfY2FsY19wYm5f
bW9kZShpbnQgY2xvY2ssIGludCBicHAsIGJvb2wgZHNjKTsKIAogYm9vbCBkcm1fZHBfbXN0X2Fs
bG9jYXRlX3ZjcGkoc3RydWN0IGRybV9kcF9tc3RfdG9wb2xvZ3lfbWdyICptZ3IsCiAJCQkgICAg
ICBzdHJ1Y3QgZHJtX2RwX21zdF9wb3J0ICpwb3J0LCBpbnQgcGJuLCBpbnQgc2xvdHMpOwotLSAK
Mi4xNy4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
