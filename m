Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4737B1149E4
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Dec 2019 00:30:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65A376F924;
	Thu,  5 Dec 2019 23:30:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM05-CO1-obe.outbound.protection.outlook.com
 (mail-eopbgr720055.outbound.protection.outlook.com [40.107.72.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CD8D6E945;
 Wed,  4 Dec 2019 18:03:20 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mFYqUEwx6rZTSPPCF81var3sKhHBkbdLS5/MyKiKmqhBdhnUyWdVx9HQjnb3g/Nb1PS+1/TQo5Nx7TyRE7EhhS43g2YXI462tlndHV3fjZ/ShIfTJvd7m+nSb1tqHIkbGp1UwwLX12U3QU6Va64HdWbCYw1aSvCl5i8Dnrc3EJxidrGO6uBnejQaoPAw2RqhFqIfSCVV5k3vsOblbVC0XIoKAvqod4TLa1SXcx3ylGKYH2x4TdK+cgHCJ8mm2yEtj/B0lbPB/lkZV0+TghIp4N6OHdPAP2/uyd0ecrV3P8+XTGA9c++YQD24Co96XZLRdmWg8s3O3fhr2/uD5GwENQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x7gX5ghB9Ts/wQW7NP34oUGtPLdEI0H25opVoNE5g3g=;
 b=UOLKMx4nxuE35bUESFubUkvwX1TgxKu/5gZylMq1nVvbVvao4EY3uND1SIGv3XlMFoLgqEdjtoSkXPw/E7Pbsv5GZKf07TxREitjRJ/z/b/od72htT2KgShWyIq/p92DxLIV0O9LyI4YTGHr7glmg2WCywLQa95B39bpMxmxxkiS7NtKCQ1LaQJecKWbcROolmcdrbHbrycT+Xnoq7dpQ6cUkPlEis2HFMwMfUqaA3XdnImcWkOJV7NfDgQlWhHpWwOihMFAtYBLSYmJ38+SXgkeT9Z185rNpGgWAte8VBEKcMn+X6h90vySfCok+eyu+gL5UfBk2rN1ksKSxsmYNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none (sender ip is
 165.204.84.17) smtp.rcpttodomain=lists.freedesktop.org smtp.mailfrom=amd.com; 
 dmarc=permerror action=none header.from=amd.com; dkim=none (message not
 signed); arc=none
Received: from CY4PR1201CA0013.namprd12.prod.outlook.com
 (2603:10b6:910:16::23) by DM5PR12MB1884.namprd12.prod.outlook.com
 (2603:10b6:3:10d::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2495.22; Wed, 4 Dec
 2019 18:03:19 +0000
Received: from BN8NAM11FT008.eop-nam11.prod.protection.outlook.com
 (2a01:111:f400:7eae::201) by CY4PR1201CA0013.outlook.office365.com
 (2603:10b6:910:16::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2516.13 via Frontend
 Transport; Wed, 4 Dec 2019 18:03:18 +0000
Received-SPF: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
Received: from SATLEXMB02.amd.com (165.204.84.17) by
 BN8NAM11FT008.mail.protection.outlook.com (10.13.177.95) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2451.23 via Frontend Transport; Wed, 4 Dec 2019 18:03:18 +0000
Received: from SATLEXMB01.amd.com (10.181.40.142) by SATLEXMB02.amd.com
 (10.181.40.143) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Wed, 4 Dec 2019
 12:03:18 -0600
Received: from jzuo-linux.amd.com (10.180.168.240) by SATLEXMB01.amd.com
 (10.181.40.142) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Wed, 4 Dec 2019 12:03:16 -0600
From: "Jerry (Fangzhi) Zuo" <Jerry.Zuo@amd.com>
To: <intel-gfx@lists.freedesktop.org>, <dri-devel@lists.freedesktop.org>,
 <amd-gfx@lists.freedesktop.org>
Date: Wed, 4 Dec 2019 13:02:58 -0500
Message-ID: <20191204180258.3906-1-Jerry.Zuo@amd.com>
X-Mailer: git-send-email 2.14.1
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:165.204.84.17; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(39860400002)(396003)(136003)(428003)(199004)(189003)(6666004)(316002)(51416003)(305945005)(81156014)(8676002)(70586007)(70206006)(7696005)(14444005)(50466002)(2201001)(86362001)(5660300002)(2906002)(50226002)(16586007)(356004)(336012)(81166006)(2616005)(53416004)(8936002)(4326008)(110136005)(48376002)(36756003)(426003)(478600001)(186003)(1076003)(54906003)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR12MB1884; H:SATLEXMB02.amd.com; FPR:;
 SPF:None; LANG:en; PTR:InfoDomainNonexistent; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 18112ec1-0408-4b5d-6e2d-08d778e43e38
X-MS-TrafficTypeDiagnostic: DM5PR12MB1884:
X-Microsoft-Antispam-PRVS: <DM5PR12MB18842FB4248BBEA0F79BEB55E55D0@DM5PR12MB1884.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:261;
X-Forefront-PRVS: 0241D5F98C
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +33cxQQk3dduV5jK3QKei0Opl+Lbi8Nab+l0HWRwPKk23KFAuUillEbj28ER+lzztz+QNWlVImtaqfEhxpaNYbvErShhvokGpISjw7R6fmO2SVRJU+0rw0o4Miij78KUpqoRw4/tqJJIhEIAcMJKn/M05HP7vvvMbnel0UUvbIuquMoYzeHQ+5vHxrXTjeIfaX5JQagqdcZhQH4JjNniLS2b4+JtSGo2/n1H8z+KxxW84qGmoYMlfAyeYIFtNzLfAgm0Q8pFWHl6Ll7OLSPau7fACH0hvhrUpnm5DcJCBLm/O8qgax+2Wxp1447snEoX9J4eefXM0O9iBqIowTWEYSHdDjcSg5pTlBETFH2wBNzYXVQBGWGr/qihvSfSVofwqnffLiYuNUTk+HC2D2U4xTQkS2QyaoFedTwfq9QvvFE31WCmKTGCTama53TRkXGC
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Dec 2019 18:03:18.7546 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 18112ec1-0408-4b5d-6e2d-08d778e43e38
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d; Ip=[165.204.84.17];
 Helo=[SATLEXMB02.amd.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR12MB1884
X-Mailman-Approved-At: Thu, 05 Dec 2019 23:30:13 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amdcloud.onmicrosoft.com; s=selector2-amdcloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x7gX5ghB9Ts/wQW7NP34oUGtPLdEI0H25opVoNE5g3g=;
 b=VdKC1NktMkBV0i3tV8ROBmwiWE6ZPMQL/YAnEEMNXccMQbClYxJ6BjIp5sxaUqnuzgPBOftZLgUS9tyb5tMkHJeK4CJE0aLrm0swHKnFqzJqgYj2l0G5EaeYJEh9STjPuuInhf7mnPaSff/UeS3IjuC6ZC+OOhCQrZGftwlpEFM=
X-Mailman-Original-Authentication-Results: spf=none (sender IP is
 165.204.84.17)
 smtp.mailfrom=amd.com; lists.freedesktop.org; dkim=none (message not signed)
 header.d=none;lists.freedesktop.org; dmarc=permerror action=none
 header.from=amd.com;
Subject: [Intel-gfx] [PATCH v4] drm: Add support for DP 1.4 Compliance edid
 corruption test
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
Cc: rodrigo.siqueira@amd.com, "Jerry \(Fangzhi\)
 Zuo" <Jerry.Zuo@amd.com>, Alexander.Deucher@amd.com, harry.wentland@amd.com,
 nicholas.kazlauskas@amd.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VW5saWtlIERQIDEuMiBlZGlkIGNvcnJ1cHRpb24gdGVzdCwgRFAgMS40IHJlcXVpcmVzIHRvIGNh
bGN1bGF0ZQpyZWFsIENSQyB2YWx1ZSBvZiB0aGUgbGFzdCBlZGlkIGRhdGEgYmxvY2ssIGFuZCB3
cml0ZSBpdCBiYWNrLgpDdXJyZW50IGVkaWQgQ1JDIGNhbGN1bGF0ZXMgcm91dGluZSBhZGRzIHRo
ZSBsYXN0IENSQyBieXRlLAphbmQgY2hlY2sgaWYgbm9uLXplcm8uCgpUaGlzIGJlaGF2aW9yIGlz
IG5vdCBhY2N1cmF0ZTsgYWN0dWFsbHksIHdlIG5lZWQgdG8gcmV0dXJuCnRoZSBhY3R1YWwgQ1JD
IHZhbHVlIHdoZW4gY29ycnVwdGlvbiBpcyBkZXRlY3RlZC4KVGhpcyBjb21taXQgY2hhbmdlcyB0
aGlzIGlzc3VlIGJ5IHJldHVybmluZyB0aGUgY2FsY3VsYXRlZCBDUkMsCmFuZCBpbml0aWF0ZSB0
aGUgcmVxdWlyZWQgc2VxdWVuY2UuCgpDaGFuZ2Ugc2luY2UgdjMKLSBGaXggYSBtaW5vciB0eXBv
LgoKQ2hhbmdlIHNpbmNlIHYyCi0gUmV3cml0ZSBjaGVja3N1bSBjb21wdXRhdGlvbiByb3V0aW5l
IHRvIGF2b2lkIGR1cGxpY2F0ZWQgY29kZS4KLSBSZW5hbWUgdG8gYXZvaWQgY29uZnVzaW9uLgoK
Q2hhbmdlIHNpbmNlIHYxCi0gSGF2ZSBzZXBhcmF0ZSByb3V0aW5lIGZvciByZXR1cm5pbmcgcmVh
bCBDUkMuCgpTaWduZWQtb2ZmLWJ5OiBKZXJyeSAoRmFuZ3poaSkgWnVvIDxKZXJyeS5adW9AYW1k
LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vZHJtX2RwX2hlbHBlci5jIHwgMzUgKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9kcm1fZWRpZC5jICAg
ICAgfCAyMyArKysrKysrKysrKysrKysrKysrLS0tLQogaW5jbHVkZS9kcm0vZHJtX2Nvbm5lY3Rv
ci5oICAgICB8ICA2ICsrKysrKwogaW5jbHVkZS9kcm0vZHJtX2RwX2hlbHBlci5oICAgICB8ICAz
ICsrKwogNCBmaWxlcyBjaGFuZ2VkLCA2MyBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZHBfaGVscGVyLmMgYi9kcml2ZXJzL2dw
dS9kcm0vZHJtX2RwX2hlbHBlci5jCmluZGV4IDJjNzg3MGFlZjQ2OS4uYzU5ZjdjOTRlYmYxIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2RwX2hlbHBlci5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9kcm1fZHBfaGVscGVyLmMKQEAgLTM1MSw2ICszNTEsNDEgQEAgaW50IGRybV9kcF9k
cGNkX3JlYWRfbGlua19zdGF0dXMoc3RydWN0IGRybV9kcF9hdXggKmF1eCwKIH0KIEVYUE9SVF9T
WU1CT0woZHJtX2RwX2RwY2RfcmVhZF9saW5rX3N0YXR1cyk7CiAKKy8qKgorICAqIGRybV9kcF9z
ZW5kX3JlYWxfZWRpZF9jaGVja3N1bSgpIC0gc2VuZCBiYWNrIHJlYWwgZWRpZCBjaGVja3N1bSB2
YWx1ZQorICAqIEBhdXg6IERpc3BsYXlQb3J0IEFVWCBjaGFubmVsCisgICogQHJlYWxfZWRpZF9j
aGVja3N1bTogcmVhbCBlZGlkIGNoZWNrc3VtIGZvciB0aGUgbGFzdCBibG9jaworICAqCisgICog
UmV0dXJucyB0cnVlIG9uIHN1Y2Nlc3MKKyAgKi8KK2Jvb2wgZHJtX2RwX3NlbmRfcmVhbF9lZGlk
X2NoZWNrc3VtKHN0cnVjdCBkcm1fZHBfYXV4ICphdXgsCisJCQkJCXU4IHJlYWxfZWRpZF9jaGVj
a3N1bSkKK3sKKwl1OCBsaW5rX2VkaWRfcmVhZCA9IDAsIGF1dG9fdGVzdF9yZXEgPSAwLCB0ZXN0
X3Jlc3AgPSAwOworCisJZHJtX2RwX2RwY2RfcmVhZChhdXgsIERQX0RFVklDRV9TRVJWSUNFX0lS
UV9WRUNUT1IsICZhdXRvX3Rlc3RfcmVxLCAxKTsKKwlhdXRvX3Rlc3RfcmVxICY9IERQX0FVVE9N
QVRFRF9URVNUX1JFUVVFU1Q7CisKKwlkcm1fZHBfZHBjZF9yZWFkKGF1eCwgRFBfVEVTVF9SRVFV
RVNULCAmbGlua19lZGlkX3JlYWQsIDEpOworCWxpbmtfZWRpZF9yZWFkICY9IERQX1RFU1RfTElO
S19FRElEX1JFQUQ7CisKKwlpZiAoIWF1dG9fdGVzdF9yZXEgfHwgIWxpbmtfZWRpZF9yZWFkKSB7
CisJCURSTV9ERUJVR19LTVMoIlNvdXJjZSBEVVQgZG9lcyBub3Qgc3VwcG9ydCBURVNUX0VESURf
UkVBRFxuIik7CisJCXJldHVybiBmYWxzZTsKKwl9CisKKwlkcm1fZHBfZHBjZF93cml0ZShhdXgs
IERQX0RFVklDRV9TRVJWSUNFX0lSUV9WRUNUT1IsICZhdXRvX3Rlc3RfcmVxLCAxKTsKKworCS8q
IHNlbmQgYmFjayBjaGVja3N1bSBmb3IgdGhlIGxhc3QgZWRpZCBleHRlbnNpb24gYmxvY2sgZGF0
YSAqLworCWRybV9kcF9kcGNkX3dyaXRlKGF1eCwgRFBfVEVTVF9FRElEX0NIRUNLU1VNLCAmcmVh
bF9lZGlkX2NoZWNrc3VtLCAxKTsKKworCXRlc3RfcmVzcCB8PSBEUF9URVNUX0VESURfQ0hFQ0tT
VU1fV1JJVEU7CisJZHJtX2RwX2RwY2Rfd3JpdGUoYXV4LCBEUF9URVNUX1JFU1BPTlNFLCAmdGVz
dF9yZXNwLCAxKTsKKworCXJldHVybiB0cnVlOworfQorRVhQT1JUX1NZTUJPTChkcm1fZHBfc2Vu
ZF9yZWFsX2VkaWRfY2hlY2tzdW0pOworCiAvKioKICAqIGRybV9kcF9kb3duc3RyZWFtX21heF9j
bG9jaygpIC0gZXh0cmFjdCBicmFuY2ggZGV2aWNlIG1heAogICogICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBwaXhlbCByYXRlIGZvciBsZWdhY3kgVkdBCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vZHJtX2VkaWQuYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZWRpZC5jCmluZGV4
IDViMzNiN2NmZDY0NS4uMGUzNTQwNWVjYzc0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
ZHJtX2VkaWQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2VkaWQuYwpAQCAtMTQ1MCwxMSAr
MTQ1MCwyMiBAQCBzdGF0aWMgaW50IHZhbGlkYXRlX2Rpc3BsYXlpZCh1OCAqZGlzcGxheWlkLCBp
bnQgbGVuZ3RoLCBpbnQgaWR4KTsKIHN0YXRpYyBpbnQgZHJtX2VkaWRfYmxvY2tfY2hlY2tzdW0o
Y29uc3QgdTggKnJhd19lZGlkKQogewogCWludCBpOwotCXU4IGNzdW0gPSAwOwotCWZvciAoaSA9
IDA7IGkgPCBFRElEX0xFTkdUSDsgaSsrKQorCXU4IGNzdW0gPSAwLCBjcmMgPSAwOworCisJZm9y
IChpID0gMDsgaSA8IEVESURfTEVOR1RIIC0gMTsgaSsrKQogCQljc3VtICs9IHJhd19lZGlkW2ld
OwogCi0JcmV0dXJuIGNzdW07CisJY3JjID0gMHgxMDAgLSBjc3VtOworCisJcmV0dXJuIGNyYzsK
K30KKworc3RhdGljIGJvb2wgZHJtX2VkaWRfYmxvY2tfY2hlY2tzdW1fZGlmZihjb25zdCB1OCAq
cmF3X2VkaWQsIHU4IHJlYWxfY2hlY2tzdW0pCit7CisJaWYgKHJhd19lZGlkW0VESURfTEVOR1RI
IC0gMV0gIT0gcmVhbF9jaGVja3N1bSkKKwkJcmV0dXJuIHRydWU7CisJZWxzZQorCQlyZXR1cm4g
ZmFsc2U7CiB9CiAKIHN0YXRpYyBib29sIGRybV9lZGlkX2lzX3plcm8oY29uc3QgdTggKmluX2Vk
aWQsIGludCBsZW5ndGgpCkBAIC0xNTEyLDcgKzE1MjMsNyBAQCBib29sIGRybV9lZGlkX2Jsb2Nr
X3ZhbGlkKHU4ICpyYXdfZWRpZCwgaW50IGJsb2NrLCBib29sIHByaW50X2JhZF9lZGlkLAogCX0K
IAogCWNzdW0gPSBkcm1fZWRpZF9ibG9ja19jaGVja3N1bShyYXdfZWRpZCk7Ci0JaWYgKGNzdW0p
IHsKKwlpZiAoZHJtX2VkaWRfYmxvY2tfY2hlY2tzdW1fZGlmZihyYXdfZWRpZCwgY3N1bSkpIHsK
IAkJaWYgKGVkaWRfY29ycnVwdCkKIAkJCSplZGlkX2NvcnJ1cHQgPSB0cnVlOwogCkBAIC0xNjUz
LDYgKzE2NjQsNyBAQCBzdGF0aWMgdm9pZCBjb25uZWN0b3JfYmFkX2VkaWQoc3RydWN0IGRybV9j
b25uZWN0b3IgKmNvbm5lY3RvciwKIAkJCSAgICAgICB1OCAqZWRpZCwgaW50IG51bV9ibG9ja3Mp
CiB7CiAJaW50IGk7CisJdTggbnVtX29mX2V4dCA9IGVkaWRbMHg3ZV07CiAKIAlpZiAoY29ubmVj
dG9yLT5iYWRfZWRpZF9jb3VudGVyKysgJiYgIWRybV9kZWJ1Z19lbmFibGVkKERSTV9VVF9LTVMp
KQogCQlyZXR1cm47CkBAIC0xNjc1LDYgKzE2ODcsOSBAQCBzdGF0aWMgdm9pZCBjb25uZWN0b3Jf
YmFkX2VkaWQoc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciwKIAkJCSAgICAgICBwcmVm
aXgsIERVTVBfUFJFRklYX05PTkUsIDE2LCAxLAogCQkJICAgICAgIGJsb2NrLCBFRElEX0xFTkdU
SCwgZmFsc2UpOwogCX0KKworCS8qIENhbGN1bGF0ZSByZWFsIGNoZWNrc3VtIGZvciB0aGUgbGFz
dCBlZGlkIGV4dGVuc2lvbiBibG9jayBkYXRhICovCisJY29ubmVjdG9yLT5yZWFsX2VkaWRfY2hl
Y2tzdW0gPSBkcm1fZWRpZF9ibG9ja19jaGVja3N1bShlZGlkICsgbnVtX29mX2V4dCAqIEVESURf
TEVOR1RIKTsKIH0KIAogLyogR2V0IG92ZXJyaWRlIG9yIGZpcm13YXJlIEVESUQgKi8KZGlmZiAt
LWdpdCBhL2luY2x1ZGUvZHJtL2RybV9jb25uZWN0b3IuaCBiL2luY2x1ZGUvZHJtL2RybV9jb25u
ZWN0b3IuaAppbmRleCA1ZjhjMzM4OWQ0NmYuLjg2ZmM5ZjYwM2ZiYyAxMDA2NDQKLS0tIGEvaW5j
bHVkZS9kcm0vZHJtX2Nvbm5lY3Rvci5oCisrKyBiL2luY2x1ZGUvZHJtL2RybV9jb25uZWN0b3Iu
aApAQCAtMTM0OSw2ICsxMzQ5LDEyIEBAIHN0cnVjdCBkcm1fY29ubmVjdG9yIHsKIAkgKiByZXYx
LjEgNC4yLjIuNgogCSAqLwogCWJvb2wgZWRpZF9jb3JydXB0OworCS8qKgorCSogQHJlYWxfZWRp
ZF9jaGVja3N1bTogcmVhbCBlZGlkIGNoZWNrc3VtIHZhbHVlIGZvciBjb3JydXB0ZWQgZWRpZCBi
bG9jay4KKwkqIFJlcXVpcmVkIGluIERpc3BsYXlwb3J0IDEuNCBjb21wbGlhbmNlIHRlc3RpbmcK
KwkqIHJldjEuMSA0LjIuMi42CisJKi8KKwl1aW50OF90IHJlYWxfZWRpZF9jaGVja3N1bTsKIAog
CS8qKiBAZGVidWdmc19lbnRyeTogZGVidWdmcyBkaXJlY3RvcnkgZm9yIHRoaXMgY29ubmVjdG9y
ICovCiAJc3RydWN0IGRlbnRyeSAqZGVidWdmc19lbnRyeTsKZGlmZiAtLWdpdCBhL2luY2x1ZGUv
ZHJtL2RybV9kcF9oZWxwZXIuaCBiL2luY2x1ZGUvZHJtL2RybV9kcF9oZWxwZXIuaAppbmRleCA1
MWVjYjUxMTJlZjguLjFmOWJkNjg4ZjkwZSAxMDA2NDQKLS0tIGEvaW5jbHVkZS9kcm0vZHJtX2Rw
X2hlbHBlci5oCisrKyBiL2luY2x1ZGUvZHJtL2RybV9kcF9oZWxwZXIuaApAQCAtMTQ1NSw2ICsx
NDU1LDkgQEAgc3RhdGljIGlubGluZSBzc2l6ZV90IGRybV9kcF9kcGNkX3dyaXRlYihzdHJ1Y3Qg
ZHJtX2RwX2F1eCAqYXV4LAogaW50IGRybV9kcF9kcGNkX3JlYWRfbGlua19zdGF0dXMoc3RydWN0
IGRybV9kcF9hdXggKmF1eCwKIAkJCQkgdTggc3RhdHVzW0RQX0xJTktfU1RBVFVTX1NJWkVdKTsK
IAorYm9vbCBkcm1fZHBfc2VuZF9yZWFsX2VkaWRfY2hlY2tzdW0oc3RydWN0IGRybV9kcF9hdXgg
KmF1eCwKKwkJCQkJdTggcmVhbF9lZGlkX2NoZWNrc3VtKTsKKwogaW50IGRybV9kcF9kb3duc3Ry
ZWFtX21heF9jbG9jayhjb25zdCB1OCBkcGNkW0RQX1JFQ0VJVkVSX0NBUF9TSVpFXSwKIAkJCQlj
b25zdCB1OCBwb3J0X2NhcFs0XSk7CiBpbnQgZHJtX2RwX2Rvd25zdHJlYW1fbWF4X2JwYyhjb25z
dCB1OCBkcGNkW0RQX1JFQ0VJVkVSX0NBUF9TSVpFXSwKLS0gCjIuMTQuMQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
