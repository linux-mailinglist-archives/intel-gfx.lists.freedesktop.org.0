Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DAEC3BBB38
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2019 20:23:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21BF36E998;
	Mon, 23 Sep 2019 18:23:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM01-SN1-obe.outbound.protection.outlook.com
 (mail-eopbgr820048.outbound.protection.outlook.com [40.107.82.48])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 965246E998;
 Mon, 23 Sep 2019 18:23:39 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c1hgbieq18sffSkZW21zgnaNlJSB2xZ4JekaBjJBF9omfqJZ2EJOYia5j2UhaDI1f9PIMv78Cj1jOKqu/DUtgQlH25F4wP/YoFzPPpLhkU6i5v1I9v52KGwjcAPSCGZ5on2o2mi4oVidHGB/QPnpsTPnkWOs5gSn6gDqaLiAWa/WbDvt+hDULmnIc220Qshzb+EoOUxwZ3DjhCaX9vw+EqsG9JnkeLfaTMnUol1auAFKpAA/ybwjtbbSYNLDlwxBt12IjmsEz/f7TFIFYh+h4Cb5335Pkj5+HZ8Jbbz49FLXt3vpEfLRyssiuNsssGqn2vTVTZlvDCDRyysdq/DNPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B1BybySet9uQR+bww40tmC9ciSsMofbD1uUAbvNVjVM=;
 b=cS21bv0zx+52OIMksaO6LLfDEZojxgnmx0Nm1WXwJGszJKVjvElXrQYhN/brceFPRzgwW7yJeTKi/BbgVJXOImMf2B0zVMAvw8wCPN16JqSQJFBvkr9upCF7Vt9pYM9lVTZoBrUJaEaWQb9vi+qjAKCw5oNqNxIByL8FLzfESLkL8tZdrFJwNNpybr80PfosHmzOgqmYzYZfIBqqdUEQggD+MncdB9pbXyugp0IC3I4U7jSl/U6GolgSPdK9wFDsZ0so1y433twIznkXutT6Yf5L2gbvH6rqr4ZAOCEKDNBoGbkkRMb4EGGshJvc+xrzcC8106TQ4rCciHR4ctjWOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none (sender ip is
 165.204.84.17) smtp.rcpttodomain=lists.freedesktop.org smtp.mailfrom=amd.com; 
 dmarc=permerror action=none header.from=amd.com; dkim=none (message not
 signed); arc=none
Received: from DM5PR12CA0057.namprd12.prod.outlook.com (2603:10b6:3:103::19)
 by MWHPR1201MB0269.namprd12.prod.outlook.com (2603:10b6:301:5b::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2284.23; Mon, 23 Sep
 2019 18:23:37 +0000
Received: from CO1NAM03FT057.eop-NAM03.prod.protection.outlook.com
 (2a01:111:f400:7e48::204) by DM5PR12CA0057.outlook.office365.com
 (2603:10b6:3:103::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2284.20 via Frontend
 Transport; Mon, 23 Sep 2019 18:23:36 +0000
Received-SPF: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
Received: from SATLEXCHOV01.amd.com (165.204.84.17) by
 CO1NAM03FT057.mail.protection.outlook.com (10.152.81.124) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2284.20 via Frontend Transport; Mon, 23 Sep 2019 18:23:36 +0000
Received: from blakha.amd.com (10.180.168.240) by SATLEXCHOV01.amd.com
 (10.181.40.71) with Microsoft SMTP Server id 14.3.389.1; Mon, 23 Sep 2019
 13:23:34 -0500
From: Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>
To: <igt-dev@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
Date: Mon, 23 Sep 2019 14:23:25 -0400
Message-ID: <20190923182325.24049-1-Bhawanpreet.Lakha@amd.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:165.204.84.17; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(346002)(136003)(39860400002)(376002)(428003)(199004)(189003)(186003)(316002)(5660300002)(4326008)(70586007)(51416003)(8936002)(476003)(126002)(26005)(50226002)(2616005)(486006)(426003)(2906002)(81166006)(81156014)(14444005)(53416004)(36756003)(16586007)(70206006)(7696005)(8676002)(48376002)(356004)(305945005)(50466002)(478600001)(86362001)(6666004)(47776003)(110136005)(1076003)(450100002)(336012)(41533002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR1201MB0269; H:SATLEXCHOV01.amd.com; FPR:;
 SPF:None; LANG:en; PTR:InfoDomainNonexistent; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 128bff91-c8e3-47e4-5826-08d740532651
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(4618075)(2017052603328);
 SRVR:MWHPR1201MB0269; 
X-MS-TrafficTypeDiagnostic: MWHPR1201MB0269:
X-Microsoft-Antispam-PRVS: <MWHPR1201MB0269AE5B8B81F8EF90F96281F9850@MWHPR1201MB0269.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:327;
X-Forefront-PRVS: 0169092318
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: qZZ6KIXS7a0wQK8AL36cg0XgsicmDyDPDUHh5bmokdBpHLUBgdcv7cUo/Z5W4xU4rQApO+E+mCHr36POreXaSO99ESHSHvqM7b7oDsjaUP+AQEB/x9CUeLimo+euRniC4AH2vgNBKVPRmhpQfziRtNiXp4+s6ldb4wFO5fiTi/WwACRvuC8zqzujRK7KEFNQJqkurZZeVXrVbRPXARToZBB/VxrupGDcJiLWRwjsoorYHz1IhrEmoGavLQVX2+EYBHqEdBZiSHZUxjmD9ETLZil+CaRmk/3uHakwPijYYz/CZ6Kgyg4N4SXzGbZM8VDRRkhxBV7bFzAQRE5L6umFEVlyWhy47B0E73Ns96uoJbjdq+ZmPcl4MJxLHyN2/FrivnRZmL+WwE23o+O4m2gror0ArDjPTwrMgpwXKngobc0=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Sep 2019 18:23:36.3531 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 128bff91-c8e3-47e4-5826-08d740532651
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d; Ip=[165.204.84.17];
 Helo=[SATLEXCHOV01.amd.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1201MB0269
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amdcloud.onmicrosoft.com; s=selector2-amdcloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B1BybySet9uQR+bww40tmC9ciSsMofbD1uUAbvNVjVM=;
 b=z1QRNw8yc/LpHni1bpnuiFnCOymKhPnexLFbUk4xgvLGt/JLVKPlOjjBj1hptWhONUFUFgoNtwU95a7rANLrEoyOjHx7IBF6+pAoCT9ow5lcNtNg3jXNeEaexNCmqKY8TXCRRbqMA3jqNEv5krkOS/0wyYFjZXUPETuIniGBZyA=
X-Mailman-Original-Authentication-Results: spf=none (sender IP is
 165.204.84.17)
 smtp.mailfrom=amd.com; lists.freedesktop.org; dkim=none (message not signed)
 header.d=none;lists.freedesktop.org; dmarc=permerror action=none
 header.from=amd.com;
Subject: [Intel-gfx] [PATCH] test/kms_content_protection: Use generic
 debugfs name for HDCP caps
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
Cc: Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UmVuYW1lICJpOTE1X2hkY3Bfc2lua19jYXBhYmlsaXR5IiB0byAiaGRjcF9zaW5rX2NhcGFiaWxp
dHkiCgpUaGUgY29udGVudCBwcm90ZWN0aW9uIHRlc3RzIG9ubHkgc3RhcnQgaWYgdGhpcyBkZWJ1
Z2ZzIGVudHJ5IGV4aXN0cy4KU2luY2UgdGhlIG5hbWUgaXMgc3BlY2lmaWMgdG8gaW50ZWwgZHJp
dmVyIHRoZXNlIHRlc3RzIGNhbm5vdCBiZSB1c2VkIHdpdGgKb3RoZXIgZHJpdmVycy4KClJlbW92
ZSAiaTkxNSIgc28gdGhlIGRlYnVnZnMgbmFtZSBpcyBnZW5lcmljLgoKU2lnbmVkLW9mZi1ieTog
Qmhhd2FucHJlZXQgTGFraGEgPEJoYXdhbnByZWV0Lkxha2hhQGFtZC5jb20+Ci0tLQogdGVzdHMv
a21zX2NvbnRlbnRfcHJvdGVjdGlvbi5jIHwgNCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNl
cnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3Rlc3RzL2ttc19jb250ZW50
X3Byb3RlY3Rpb24uYyBiL3Rlc3RzL2ttc19jb250ZW50X3Byb3RlY3Rpb24uYwppbmRleCBlNjc2
YjYwYi4uYTEwNWM1ZGUgMTAwNjQ0Ci0tLSBhL3Rlc3RzL2ttc19jb250ZW50X3Byb3RlY3Rpb24u
YworKysgYi90ZXN0cy9rbXNfY29udGVudF9wcm90ZWN0aW9uLmMKQEAgLTU1NCw3ICs1NTQsNyBA
QCBzdGF0aWMgYm9vbCBzaW5rX2hkY3BfY2FwYWJsZShpZ3Rfb3V0cHV0X3QgKm91dHB1dCkKIAlp
ZiAoZmQgPCAwKQogCQlyZXR1cm4gZmFsc2U7CiAKLQlkZWJ1Z2ZzX3JlYWQoZmQsICJpOTE1X2hk
Y3Bfc2lua19jYXBhYmlsaXR5IiwgYnVmKTsKKwlkZWJ1Z2ZzX3JlYWQoZmQsICJoZGNwX3Npbmtf
Y2FwYWJpbGl0eSIsIGJ1Zik7CiAJY2xvc2UoZmQpOwogCiAJaWd0X2RlYnVnKCJTaW5rIGNhcGFi
aWxpdHk6ICVzXG4iLCBidWYpOwpAQCAtNTcxLDcgKzU3MSw3IEBAIHN0YXRpYyBib29sIHNpbmtf
aGRjcDJfY2FwYWJsZShpZ3Rfb3V0cHV0X3QgKm91dHB1dCkKIAlpZiAoZmQgPCAwKQogCQlyZXR1
cm4gZmFsc2U7CiAKLQlkZWJ1Z2ZzX3JlYWQoZmQsICJpOTE1X2hkY3Bfc2lua19jYXBhYmlsaXR5
IiwgYnVmKTsKKwlkZWJ1Z2ZzX3JlYWQoZmQsICJoZGNwX3NpbmtfY2FwYWJpbGl0eSIsIGJ1Zik7
CiAJY2xvc2UoZmQpOwogCiAJaWd0X2RlYnVnKCJTaW5rIGNhcGFiaWxpdHk6ICVzXG4iLCBidWYp
OwotLSAKMi4xNy4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
