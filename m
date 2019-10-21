Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F4BDDF630
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2019 21:43:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74C2C6E247;
	Mon, 21 Oct 2019 19:43:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM03-BY2-obe.outbound.protection.outlook.com
 (mail-eopbgr780079.outbound.protection.outlook.com [40.107.78.79])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CF546E245;
 Mon, 21 Oct 2019 19:43:12 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GRlQhwopnBBVdIOEKHhjgQSxHPqhSTKGedRe0hfQvktyxj2yp+oRtgf7ZTitvbOkejJ4h9b/YI2a6nxuzedvRJV1r23PWzKu7bisz/oNBE6BQgRm0c0GUkBbU545nRbIugyJclVPm2MNxh6UoRi+zEisahwY5xvyceQK1zml7agZCB8f50mJoInYjjvgTxARgO8nyxaml7tRZ9tbVjnehyFkxXo5zmXEtMK4PH5gg6ter9LBJOswsLCr8lsl76XeyuG1MCbufcKpwpyFlSFqtn7Emz/QitNgunUuIHBXYi8U9HqErC1TnwID6gIwud65vMMLRWf3BYG9ArV1fH0opg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=J2jHaHMF9cwNaSQS5lUvPvLQe756GRoF8HN9d7bOv5g=;
 b=FMKbCUeFrOx9iFSN+2nffZIY57Truurwpn54bdS4fFSmKv0WOD8xqPzK/g5BPNxvgR4zUL8mR4L/u0MZsWjqzcNMQWP4qXcfnTp3yIYy2m80fMXmlDiFQDlXvDV50Egxpqz+va07ViCFdKiPoeqftHNKb2TiR3E4fA3h+m6VZ1aKhk53dazpfebeG93R+63LRXhI868IeXsWyvor0NnMd8xoPCOdjAetVHLRRSvbq4fWIFblqNmmNQDiq6rPPJJKGo+dmosa8+M/9dT/vkXPfuhnVR8OyZrdtuRsd44o4Ayzx6bOKsw/TvaloON3ESzqAw6Morgw4y994D4uh8+LPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none (sender ip is
 165.204.84.17) smtp.rcpttodomain=lists.freedesktop.org smtp.mailfrom=amd.com; 
 dmarc=permerror action=none header.from=amd.com; dkim=none (message not
 signed); arc=none
Received: from DM5PR12CA0060.namprd12.prod.outlook.com (2603:10b6:3:103::22)
 by DM6PR12MB2745.namprd12.prod.outlook.com (2603:10b6:5:45::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2367.24; Mon, 21 Oct
 2019 19:43:10 +0000
Received: from DM3NAM03FT033.eop-NAM03.prod.protection.outlook.com
 (2a01:111:f400:7e49::200) by DM5PR12CA0060.outlook.office365.com
 (2603:10b6:3:103::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2367.21 via Frontend
 Transport; Mon, 21 Oct 2019 19:43:10 +0000
Received-SPF: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
Received: from SATLEXMB02.amd.com (165.204.84.17) by
 DM3NAM03FT033.mail.protection.outlook.com (10.152.82.204) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2367.14 via Frontend Transport; Mon, 21 Oct 2019 19:43:10 +0000
Received: from SATLEXMB03.amd.com (10.181.40.144) by SATLEXMB02.amd.com
 (10.181.40.143) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Mon, 21 Oct
 2019 14:43:09 -0500
Received: from SATLEXMB01.amd.com (10.181.40.142) by SATLEXMB03.amd.com
 (10.181.40.144) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Mon, 21 Oct
 2019 14:43:09 -0500
Received: from blakha.amd.com (10.180.168.240) by SATLEXMB01.amd.com
 (10.181.40.142) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Mon, 21 Oct 2019 14:43:09 -0500
From: Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>
To: <igt-dev@lists.freedesktop.org>
Date: Mon, 21 Oct 2019 15:42:59 -0400
Message-ID: <20191021194259.17052-1-Bhawanpreet.Lakha@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190923182325.24049-1-Bhawanpreet.Lakha@amd.com>
References: <20190923182325.24049-1-Bhawanpreet.Lakha@amd.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:165.204.84.17; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(39860400002)(136003)(346002)(396003)(428003)(199004)(189003)(305945005)(7696005)(51416003)(47776003)(76176011)(450100002)(4326008)(48376002)(16586007)(2906002)(54906003)(316002)(36756003)(50466002)(6916009)(478600001)(81156014)(81166006)(8936002)(8676002)(86362001)(11346002)(446003)(476003)(1076003)(50226002)(6666004)(356004)(53416004)(5660300002)(2616005)(26005)(14444005)(486006)(126002)(70206006)(426003)(70586007)(2351001)(186003)(336012)(41533002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR12MB2745; H:SATLEXMB02.amd.com; FPR:;
 SPF:None; LANG:en; PTR:InfoDomainNonexistent; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f1edbdd1-4abb-4a5b-f766-08d7565ee748
X-MS-TrafficTypeDiagnostic: DM6PR12MB2745:
X-Microsoft-Antispam-PRVS: <DM6PR12MB2745B501C63D824B71FB9970F9690@DM6PR12MB2745.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:337;
X-Forefront-PRVS: 0197AFBD92
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZOztlD3+/SdX4qapljYNgOx11AfbHGriHrHuNifdsm/fXEoAXGTvtNjYyVEpxYIrST/nyBudxTMF/l4S8VRU6uiezr+qhLSV/taAkhJHLfAZjFqIA5isfYkN/fAQQgXN0sue+7sXu1hxZq/IqtpNh2pizi25iA3waQwNDH6Tc2+O5yfp5bFuph7Zt/fM1CIsIdYXsPnNIALfgrbzZVpgLuTZ2K19fQ0+rz7yyNkrK0fHjR373rNwN19UIbDdQbunbrP1IsJf7y7rXULhM+g3EGkaUnJhTX/hEA1XS/7s82BLJsep3zrqRt0vU+g2pQIcWWV7B3nXwDTnFQXeV215UDUFEr5Qs+XFznpz5IShtuJmIoF+KaWFo0Ev9So1MWLdQ5bybaL1rQGtRtDIJ8PRsnqVy072W2wqqXjRqBskNS7El6eWjp+XM0/rWLMVPch5
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Oct 2019 19:43:10.2587 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f1edbdd1-4abb-4a5b-f766-08d7565ee748
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d; Ip=[165.204.84.17];
 Helo=[SATLEXMB02.amd.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB2745
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amdcloud.onmicrosoft.com; s=selector2-amdcloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=J2jHaHMF9cwNaSQS5lUvPvLQe756GRoF8HN9d7bOv5g=;
 b=GUlzvjulG4QqJRXNlsI8Z+T66ghjWDP4NRqxawRDZgKOIW7hra8uj2f/NfscRiM1OdzdsL30GFJ1+6oh2i632MPHLGzgfIANzPYe467JrPSdzay6da2jzGhfRbsAOkiCMncV/7DzPpYB7vjYV2q5Xd+QqLv2emvU5hM8KMGrLBU=
X-Mailman-Original-Authentication-Results: spf=none (sender IP is
 165.204.84.17)
 smtp.mailfrom=amd.com; lists.freedesktop.org; dkim=none (message not signed)
 header.d=none;lists.freedesktop.org; dmarc=permerror action=none
 header.from=amd.com;
Subject: [Intel-gfx] [PATCH i-g-t v2] tests/kms_content_protection: check
 i915 and generic debugfs name for HDCP caps
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
Cc: Bhawanpreet
 Lakha <Bhawanpreet.Lakha@amd.com>, intel-gfx@lists.freedesktop.org,
 harry.wentland@amd.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIGNvbnRlbnQgcHJvdGVjdGlvbiB0ZXN0cyBvbmx5IHN0YXJ0IGlmIHRoaXMgZGVidWdmcyBl
bnRyeSBleGlzdHMuClNpbmNlIHRoZSBuYW1lIGlzIHNwZWNpZmljIHRvIGludGVsIGRyaXZlciB0
aGVzZSB0ZXN0cyBjYW5ub3QgYmUgdXNlZCB3aXRoCm90aGVyIGRyaXZlcnMuIFNvIHdlIHNob3Vs
ZCBjaGVjayBnZW5lcmljIGRlYnVnZnMgbmFtZSBhbHNvCgp2MjogQ2hlY2sgaTkxNV8qIGlmIGRl
dmljZSBpcyBpOTE1LCBvdGhlcndpc2UgY2hlY2sgdGhlIGdlbmVyaWMgbmFtZS4KClNpZ25lZC1v
ZmYtYnk6IEJoYXdhbnByZWV0IExha2hhIDxCaGF3YW5wcmVldC5MYWtoYUBhbWQuY29tPgotLS0K
IHRlc3RzL2ttc19jb250ZW50X3Byb3RlY3Rpb24uYyB8IDEyICsrKysrKysrKystLQogMSBmaWxl
IGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
dGVzdHMva21zX2NvbnRlbnRfcHJvdGVjdGlvbi5jIGIvdGVzdHMva21zX2NvbnRlbnRfcHJvdGVj
dGlvbi5jCmluZGV4IGU2NzZiNjBiLi40MmZkYzQ1OSAxMDA2NDQKLS0tIGEvdGVzdHMva21zX2Nv
bnRlbnRfcHJvdGVjdGlvbi5jCisrKyBiL3Rlc3RzL2ttc19jb250ZW50X3Byb3RlY3Rpb24uYwpA
QCAtNTU0LDcgKzU1NCwxMSBAQCBzdGF0aWMgYm9vbCBzaW5rX2hkY3BfY2FwYWJsZShpZ3Rfb3V0
cHV0X3QgKm91dHB1dCkKIAlpZiAoZmQgPCAwKQogCQlyZXR1cm4gZmFsc2U7CiAKLQlkZWJ1Z2Zz
X3JlYWQoZmQsICJpOTE1X2hkY3Bfc2lua19jYXBhYmlsaXR5IiwgYnVmKTsKKwlpZiAoaXNfaTkx
NV9kZXZpY2UoZGF0YS5kcm1fZmQpKQorCQlkZWJ1Z2ZzX3JlYWQoZmQsICJpOTE1X2hkY3Bfc2lu
a19jYXBhYmlsaXR5IiwgYnVmKTsKKwllbHNlCisJCWRlYnVnZnNfcmVhZChmZCwgImhkY3Bfc2lu
a19jYXBhYmlsaXR5IiwgYnVmKTsKKwogCWNsb3NlKGZkKTsKIAogCWlndF9kZWJ1ZygiU2luayBj
YXBhYmlsaXR5OiAlc1xuIiwgYnVmKTsKQEAgLTU3MSw3ICs1NzUsMTEgQEAgc3RhdGljIGJvb2wg
c2lua19oZGNwMl9jYXBhYmxlKGlndF9vdXRwdXRfdCAqb3V0cHV0KQogCWlmIChmZCA8IDApCiAJ
CXJldHVybiBmYWxzZTsKIAotCWRlYnVnZnNfcmVhZChmZCwgImk5MTVfaGRjcF9zaW5rX2NhcGFi
aWxpdHkiLCBidWYpOworCWlmIChpc19pOTE1X2RldmljZShkYXRhLmRybV9mZCkpCisJCWRlYnVn
ZnNfcmVhZChmZCwgImk5MTVfaGRjcF9zaW5rX2NhcGFiaWxpdHkiLCBidWYpOworCWVsc2UKKwkJ
ZGVidWdmc19yZWFkKGZkLCAiaGRjcF9zaW5rX2NhcGFiaWxpdHkiLCBidWYpOworCiAJY2xvc2Uo
ZmQpOwogCiAJaWd0X2RlYnVnKCJTaW5rIGNhcGFiaWxpdHk6ICVzXG4iLCBidWYpOwotLSAKMi4x
Ny4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
