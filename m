Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E6881092AA
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Nov 2019 18:13:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B314D89C61;
	Mon, 25 Nov 2019 17:13:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CBA689E5B
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Nov 2019 15:44:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Nov 2019 07:44:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,241,1571727600"; d="scan'208";a="216953629"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 25 Nov 2019 07:44:26 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 25 Nov 2019 17:44:26 +0200
Resent-From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Resent-Date: Mon, 25 Nov 2019 17:44:26 +0200
Resent-Message-ID: <20191125154426.GY1208@intel.com>
Resent-To: intel-gfx@lists.freedesktop.org
X-Original-To: ville.syrjala@linux.intel.com
Delivered-To: ville.syrjala@linux.intel.com
Received: from linux.intel.com [10.54.29.200]
 by stinkbox.fi.intel.com with IMAP (fetchmail-6.3.26)
 for <vsyrjala@localhost> (single-drop); Mon, 18 Nov 2019 12:19:08 +0200 (EET)
Received: from fmsmga006.fm.intel.com (fmsmga006.fm.intel.com [10.253.24.20])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id ADD8458049A
 for <ville.syrjala@linux.intel.com>; Mon, 18 Nov 2019 02:19:02 -0800 (PST)
Received: from orsmga102-1.jf.intel.com (HELO mga09.intel.com) ([10.7.208.27])
 by fmsmga006-1.fm.intel.com with ESMTP; 18 Nov 2019 02:19:02 -0800
IronPort-PHdr: =?us-ascii?q?9a23=3AAdsNgRHelRlVUEL33rL4gp1GYnF76YWxBRYc798c?=
 =?us-ascii?q?s5wLar6qrsbrOUCZ7vJo3geQDNfrrslcgu+TiJjOHGkJ4JKPqncHIc5FUhNDgs?=
 =?us-ascii?q?ITzVR5XZy1THbjJfuvVBQUWcRPUFg5oCOdGG0NRIPFQQSXpXe/qzkPBh/4KAx5?=
 =?us-ascii?q?YPzvHZLfhNi20Ob0/IDPZwJPh3y2ZrYgdRg=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0E5BAAdb9Jdh0RGayhlHgELHINJUF4Td?=
 =?us-ascii?q?QMENYNqQINIhTuFNppeglIDGDwJAQEBAQEBAQEBBgEBIwwBAQKEPoJDBQIENBM?=
 =?us-ascii?q?CDgEBAQMBAQECAQIDBAICEAEBAQgNCQgphT4Mg0c5MgEBAQEBAQEBAQEBAQEBA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEBAQEBAQEBAQUCDVQrQBAGEQQLAQ0BAREmARgcAiYCXwE?=
 =?us-ascii?q?NBSKDAAGCRgMuAQICCpMVkGQCgTiIXwEBdH8zgn4BAQWBNAGBFII2GFiBPwMGC?=
 =?us-ascii?q?QGBBCiHPIYxP4ERgmRsh1WCXo1aiUqXCQeCLXGGKY4pJ5oRjkiIOJFQAgICAgQ?=
 =?us-ascii?q?FAg4BAQWBaYF7MxojUIJsUBEUkRoMDgmDUIUUhUw2MYwiK4ITAQE?=
X-IPAS-Result: =?us-ascii?q?A0E5BAAdb9Jdh0RGayhlHgELHINJUF4TdQMENYNqQINIhTu?=
 =?us-ascii?q?FNppeglIDGDwJAQEBAQEBAQEBBgEBIwwBAQKEPoJDBQIENBMCDgEBAQMBAQECA?=
 =?us-ascii?q?QIDBAICEAEBAQgNCQgphT4Mg0c5MgEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQE?=
 =?us-ascii?q?BAQEBAQEBAQEBAQUCDVQrQBAGEQQLAQ0BAREmARgcAiYCXwENBSKDAAGCRgMuA?=
 =?us-ascii?q?QICCpMVkGQCgTiIXwEBdH8zgn4BAQWBNAGBFII2GFiBPwMGCQGBBCiHPIYxP4E?=
 =?us-ascii?q?RgmRsh1WCXo1aiUqXCQeCLXGGKY4pJ5oRjkiIOJFQAgICAgQFAg4BAQWBaYF7M?=
 =?us-ascii?q?xojUIJsUBEUkRoMDgmDUIUUhUw2MYwiK4ITAQE?=
X-IronPort-AV: E=Sophos;i="5.68,319,1569308400"; d="scan'208";a="107652842"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from mail-eopbgr700068.outbound.protection.outlook.com (HELO
 NAM04-SN1-obe.outbound.protection.outlook.com) ([40.107.70.68])
 by mtab.intel.com with ESMTP/TLS/AES256-GCM-SHA384; 18 Nov 2019 02:19:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OdFlrUy2oTMOOY2vnB4cjgd5Cnzu7KGMhDsRq5ftPHB2AsK9svsHb4BDstiCFCf/pIFBXOmL7hSu7VLYIQXsr4e4N2OPbKcUvfo/927dMZRor0LH401la9ZI10eMzddxh3pT0Au04/b1ANrmS4yEQVZALz5Bb9gYcu4dwSyabPao5VeX4m8GsnG6MLjEeKg4s3COagzQ9PsKl65W6tIGjAP4oXZE8rdG6k9BlH2hTSH50r6MTVExtqvVHWUlgCxyuMKu2K8jYnqbojEG0aXqOqFiWfgFh5QKP73mhJgHdkI5NntANJMdBOXR9cwgkzvT7FHk0QWb+Oc7LMGhiHKCxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T3tzqLP7TlwPrfuFSoVbzph3Vvyz7gTYj6y1QORXYaM=;
 b=BRDyrfOKiz824kV/WVg18taEwhlCZZsm6y7w3ZjfNIqHNkzDn98w9IKI0Jg6poWs78ciRMrOb6jz5y59vG71xgbyRaIbDrMFXRVMULNKqtCdQTXjYMDzFJVNWOU90tk0nA5957VYNWw30XXzvvIG2pO8uh2YqKZ0+QAI4+88J8EheMR70nmHMFAYiMYN1YdfFUE0kCAwR/YSRm/O4SZdgLAS0GNRtYN6Y5ngQHXz8FOSnXAhOK5oanlc4oUsZBJmx/CxGTHPVEmc4mGa4ULZgluoG4ZD8d0KnrcchX3M7ckC/VKwh2n4JLtrnXrrvUWWfW+0y2+Casel4JTFh95QrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none (sender ip is
 165.204.84.17) smtp.rcpttodomain=lists.freedesktop.org smtp.mailfrom=amd.com; 
 dmarc=permerror action=none header.from=amd.com; dkim=none (message not
 signed); arc=none
Received: from BN8PR12CA0018.namprd12.prod.outlook.com (2603:10b6:408:60::31)
 by DM6PR12MB3291.namprd12.prod.outlook.com (2603:10b6:5:186::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2451.30; Mon, 18 Nov
 2019 10:18:56 +0000
Received: from BN8NAM11FT012.eop-nam11.prod.protection.outlook.com
 (2a01:111:f400:7eae::208) by BN8PR12CA0018.outlook.office365.com
 (2603:10b6:408:60::31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2451.23 via Frontend
 Transport; Mon, 18 Nov 2019 10:18:55 +0000
Received: from SATLEXMB01.amd.com (165.204.84.17) by
 BN8NAM11FT012.mail.protection.outlook.com (10.13.177.55) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2451.23 via Frontend Transport; Mon, 18 Nov 2019 10:18:55 +0000
Received: from SATLEXMB01.amd.com (10.181.40.142) by SATLEXMB01.amd.com
 (10.181.40.142) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Mon, 18 Nov
 2019 04:18:55 -0600
Received: from wayne-System-Product-Name.amd.com (10.180.168.240) by
 SATLEXMB01.amd.com (10.181.40.142) with Microsoft SMTP Server id 15.1.1713.5
 via Frontend Transport; Mon, 18 Nov 2019 04:18:54 -0600
From: Wayne Lin <Wayne.Lin@amd.com>
To: <dri-devel@lists.freedesktop.org>, <amd-gfx@lists.freedesktop.org>
Date: Mon, 18 Nov 2019 18:18:31 +0800
Message-ID: <20191118101832.15487-1-Wayne.Lin@amd.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:165.204.84.17; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(979002)(4636009)(346002)(376002)(396003)(39860400002)(136003)(428003)(189003)(199004)(1076003)(966005)(4326008)(305945005)(47776003)(70586007)(70206006)(336012)(426003)(2906002)(2870700001)(126002)(476003)(6306002)(53416004)(50466002)(478600001)(50226002)(54906003)(316002)(110136005)(2616005)(356004)(6666004)(5820100001)(186003)(8936002)(23676004)(7696005)(486006)(5660300002)(8676002)(26005)(36756003)(81156014)(81166006)(86362001)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR12MB3291; H:SATLEXMB01.amd.com; FPR:;
 SPF:None; LANG:en; PTR:InfoDomainNonexistent; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5089cbaa-df84-4feb-95b2-08d76c10b7f0
X-MS-TrafficTypeDiagnostic: DM6PR12MB3291:
X-MS-Exchange-PUrlCount: 1
X-Microsoft-Antispam-PRVS: <DM6PR12MB3291EBAB62E3266CFA93E05AFC4D0@DM6PR12MB3291.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-Forefront-PRVS: 0225B0D5BC
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 221/8ND6zxP+pxCRKE8j/KfcaBH2g+wFPpnoRSjzTDV3rhC/o5bvFwzl7Gg4oqEwTNXsMs5duBm7k8T5QiXgqQrz45gdhiU2lhRsNb3nszrBzMy5R5MNwfB5BIl1W0mN9Z6d8d3oU/MRU0iEws6hfJ1w4kCq2vPIDj5ymmfyzqEmcdFvNakFDc43dz8xpbTyjNoH6zWk7/EtOfRj1kvK+7QF70nA6X1+vYdsElfFtAa/v5mILdygWdRM0BpSu4wwtiBlCa3gt7sK/W4l0BgGXu+15rw4Kif+Ht2k0VGWD7+BGerwBxohfRJD24C+rG41yP4tWpNf8RH/GYZVZh0TV7K1+q1w0OLhCQtvj9Hku8Ut+izHj3KwzUbxxsYdmNc3Lmldhiu5qMRsI9ytNdidY992d373tRAslqS8Z2yU0ju3rB+K7DyrqxQihoR6UrPNa+gL+HTU0GpPY5yRspH8e1P8PMNxVk971HtTpZkckHM=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Nov 2019 10:18:55.7058 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5089cbaa-df84-4feb-95b2-08d76c10b7f0
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d; Ip=[165.204.84.17];
 Helo=[SATLEXMB01.amd.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB3291
X-Mailman-Approved-At: Mon, 25 Nov 2019 17:13:20 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amdcloud.onmicrosoft.com; s=selector2-amdcloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T3tzqLP7TlwPrfuFSoVbzph3Vvyz7gTYj6y1QORXYaM=;
 b=j57lRK4bdt+fC8mMaz1ZO2sU6U8/siQP/halZ0qn0tT5UsaKj062hRjtAc5qoHq4bBvMSy7uQ22FxamfDiQqcHq8vfAEO0BpwuZbezyhQ29DM0JXebFEr7BU+1/inpUYhjjYs3kbga60tkq9vz/WFKb8GpvgOL6YXB0dngznkyo=
X-Mailman-Original-Authentication-Results: mtab.intel.com;
 spf=None smtp.pra=Wayne.Lin@amd.com; spf=None smtp.mailfrom=Wayne.Lin@amd.com;
 spf=Pass smtp.helo=postmaster@NAM04-SN1-obe.outbound.protection.outlook.com;
 dkim=pass (signature verified) header.i=@amdcloud.onmicrosoft.com
Subject: [Intel-gfx] [PATCH V2 1/2] drm/edid: Add aspect ratios to HDMI 4K
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
Cc: Wayne Lin <Wayne.Lin@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

W1doeV0KSERNSSAyLjAgYWRkcyBhc3BlY3QgcmF0aW8gYXR0cmlidXRlIHRvIGRpc3Rpbmd1aXNo
IGRpZmZlcmVudAo0ayBtb2Rlcy4gQWNjb3JkaW5nIHRvIEFwcGVuZGl4IEUgb2YgSERNSSAyLjAg
c3BlYywgc291cmNlIHNob3VsZAp1c2UgVlNJRiB0byBpbmRpY2F0ZSB2aWRlbyBtb2RlIG9ubHkg
d2hlbiB0aGUgbW9kZSBpcyBvbmUgZGVmaW5lZAppbiBIRE1JIDEuNGIgNEsgbW9kZXMuIE90aGVy
d2lzZSwgdXNlIEFWSSBpbmZvZnJhbWVzIHRvIGNvbnZleSBWSUMuCgpDdXJyZW50IGNvZGUgZG9l
c24ndCB0YWtlIGFzcGVjdCByYXRpbyBpbnRvIGNvbnNpZGVyYXRpb24gd2hpbGUKY29uc3RydWN0
aW5nIGF2aSBpbmZvZnJhbWUuIFNob3VsZCBtb2RpZnkgdGhhdC4KCltIb3ddCkluaGVyaXQgVmls
bGUgU3lyasOkbMOkJ3Mgd29yawoiZHJtL2VkaWQ6IFByZXAgZm9yIEhETUkgVklDIGFzcGVjdCBy
YXRpbyIgYXQKaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wYXRjaC8xMTE3NDYzOS8KCkFk
ZCBwaWN0dXJlX2FzcGVjdF9yYXRpbyBhdHRyaWJ1dGVzIHRvIGVkaWRfNGtfbW9kZXNbXSBhbmQK
Y29uc3RydWN0IFZJQyBhbmQgSERNSV9WSUMgYnkgdGFraW5nIGFzcGVjdCByYXRpbyBpbnRvCmNv
bnNpZGVyYXRpb24uCgp2MjogQ29ycmVjdCBtaXNzaW5nIGluaXRpYWxpemVyIGVycm9yIGF0IGFk
ZGluZyBhc3BlY3QgcmF0aW8gb2YgClNNUFRFIG1vZGUuCgpTaWduZWQtb2ZmLWJ5OiBXYXluZSBM
aW4gPFdheW5lLkxpbkBhbWQuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9kcm1fZWRpZC5jIHwg
NDUgKysrKysrKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2Vk
LCAzNSBpbnNlcnRpb25zKCspLCAxMCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vZHJtX2VkaWQuYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZWRpZC5jCmluZGV4IDc3
YTM5ZmM3NjA0NS4uMDMwN2NhZDM2ZjE0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJt
X2VkaWQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2VkaWQuYwpAQCAtMTI4OCwyNSArMTI4
OCwyNSBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9kaXNwbGF5X21vZGUgZWRpZF80a19tb2Rl
c1tdID0gewogCQkgICAzODQwLCA0MDE2LCA0MTA0LCA0NDAwLCAwLAogCQkgICAyMTYwLCAyMTY4
LCAyMTc4LCAyMjUwLCAwLAogCQkgICBEUk1fTU9ERV9GTEFHX1BIU1lOQyB8IERSTV9NT0RFX0ZM
QUdfUFZTWU5DKSwKLQkgIC52cmVmcmVzaCA9IDMwLCB9LAorCSAgLnZyZWZyZXNoID0gMzAsIC5w
aWN0dXJlX2FzcGVjdF9yYXRpbyA9IEhETUlfUElDVFVSRV9BU1BFQ1RfMTZfOSwgfSwKIAkvKiAy
IC0gMzg0MHgyMTYwQDI1SHogKi8KIAl7IERSTV9NT0RFKCIzODQweDIxNjAiLCBEUk1fTU9ERV9U
WVBFX0RSSVZFUiwgMjk3MDAwLAogCQkgICAzODQwLCA0ODk2LCA0OTg0LCA1MjgwLCAwLAogCQkg
ICAyMTYwLCAyMTY4LCAyMTc4LCAyMjUwLCAwLAogCQkgICBEUk1fTU9ERV9GTEFHX1BIU1lOQyB8
IERSTV9NT0RFX0ZMQUdfUFZTWU5DKSwKLQkgIC52cmVmcmVzaCA9IDI1LCB9LAorCSAgLnZyZWZy
ZXNoID0gMjUsIC5waWN0dXJlX2FzcGVjdF9yYXRpbyA9IEhETUlfUElDVFVSRV9BU1BFQ1RfMTZf
OSwgfSwKIAkvKiAzIC0gMzg0MHgyMTYwQDI0SHogKi8KIAl7IERSTV9NT0RFKCIzODQweDIxNjAi
LCBEUk1fTU9ERV9UWVBFX0RSSVZFUiwgMjk3MDAwLAogCQkgICAzODQwLCA1MTE2LCA1MjA0LCA1
NTAwLCAwLAogCQkgICAyMTYwLCAyMTY4LCAyMTc4LCAyMjUwLCAwLAogCQkgICBEUk1fTU9ERV9G
TEFHX1BIU1lOQyB8IERSTV9NT0RFX0ZMQUdfUFZTWU5DKSwKLQkgIC52cmVmcmVzaCA9IDI0LCB9
LAorCSAgLnZyZWZyZXNoID0gMjQsIC5waWN0dXJlX2FzcGVjdF9yYXRpbyA9IEhETUlfUElDVFVS
RV9BU1BFQ1RfMTZfOSwgfSwKIAkvKiA0IC0gNDA5NngyMTYwQDI0SHogKFNNUFRFKSAqLwogCXsg
RFJNX01PREUoIjQwOTZ4MjE2MCIsIERSTV9NT0RFX1RZUEVfRFJJVkVSLCAyOTcwMDAsCiAJCSAg
IDQwOTYsIDUxMTYsIDUyMDQsIDU1MDAsIDAsCiAJCSAgIDIxNjAsIDIxNjgsIDIxNzgsIDIyNTAs
IDAsCiAJCSAgIERSTV9NT0RFX0ZMQUdfUEhTWU5DIHwgRFJNX01PREVfRkxBR19QVlNZTkMpLAot
CSAgLnZyZWZyZXNoID0gMjQsIH0sCisJICAudnJlZnJlc2ggPSAyNCwgLnBpY3R1cmVfYXNwZWN0
X3JhdGlvID0gSERNSV9QSUNUVVJFX0FTUEVDVF8yNTZfMTM1LCB9LAogfTsKIAogLyoqKiBEREMg
ZmV0Y2ggYW5kIGJsb2NrIHZhbGlkYXRpb24gKioqLwpAQCAtMzExMCw2ICszMTEwLDExIEBAIHN0
YXRpYyBlbnVtIGhkbWlfcGljdHVyZV9hc3BlY3QgZHJtX2dldF9jZWFfYXNwZWN0X3JhdGlvKGNv
bnN0IHU4IHZpZGVvX2NvZGUpCiAJcmV0dXJuIGVkaWRfY2VhX21vZGVzW3ZpZGVvX2NvZGVdLnBp
Y3R1cmVfYXNwZWN0X3JhdGlvOwogfQogCitzdGF0aWMgZW51bSBoZG1pX3BpY3R1cmVfYXNwZWN0
IGRybV9nZXRfaGRtaV9hc3BlY3RfcmF0aW8oY29uc3QgdTggdmlkZW9fY29kZSkKK3sKKwlyZXR1
cm4gZWRpZF80a19tb2Rlc1t2aWRlb19jb2RlXS5waWN0dXJlX2FzcGVjdF9yYXRpbzsKK30KKwog
LyoKICAqIENhbGN1bGF0ZSB0aGUgYWx0ZXJuYXRlIGNsb2NrIGZvciBIRE1JIG1vZGVzICh0aG9z
ZSBmcm9tIHRoZSBIRE1JIHZlbmRvcgogICogc3BlY2lmaWMgYmxvY2spLgpAQCAtMzEzNiw2ICsz
MTQxLDkgQEAgc3RhdGljIHU4IGRybV9tYXRjaF9oZG1pX21vZGVfY2xvY2tfdG9sZXJhbmNlKGNv
bnN0IHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICp0b18KIAlpZiAoIXRvX21hdGNoLT5jbG9jaykK
IAkJcmV0dXJuIDA7CiAKKwlpZiAodG9fbWF0Y2gtPnBpY3R1cmVfYXNwZWN0X3JhdGlvKQorCQlt
YXRjaF9mbGFncyB8PSBEUk1fTU9ERV9NQVRDSF9BU1BFQ1RfUkFUSU87CisKIAlmb3IgKHZpYyA9
IDE7IHZpYyA8IEFSUkFZX1NJWkUoZWRpZF80a19tb2Rlcyk7IHZpYysrKSB7CiAJCWNvbnN0IHN0
cnVjdCBkcm1fZGlzcGxheV9tb2RlICpoZG1pX21vZGUgPSAmZWRpZF80a19tb2Rlc1t2aWNdOwog
CQl1bnNpZ25lZCBpbnQgY2xvY2sxLCBjbG9jazI7CkBAIC0zMTcxLDYgKzMxNzksOSBAQCBzdGF0
aWMgdTggZHJtX21hdGNoX2hkbWlfbW9kZShjb25zdCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAq
dG9fbWF0Y2gpCiAJaWYgKCF0b19tYXRjaC0+Y2xvY2spCiAJCXJldHVybiAwOwogCisJaWYgKHRv
X21hdGNoLT5waWN0dXJlX2FzcGVjdF9yYXRpbykKKwkJbWF0Y2hfZmxhZ3MgfD0gRFJNX01PREVf
TUFUQ0hfQVNQRUNUX1JBVElPOworCiAJZm9yICh2aWMgPSAxOyB2aWMgPCBBUlJBWV9TSVpFKGVk
aWRfNGtfbW9kZXMpOyB2aWMrKykgewogCQljb25zdCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAq
aGRtaV9tb2RlID0gJmVkaWRfNGtfbW9kZXNbdmljXTsKIAkJdW5zaWduZWQgaW50IGNsb2NrMSwg
Y2xvY2syOwpAQCAtNTExOCw2ICs1MTI5LDcgQEAgZHJtX2hkbWlfYXZpX2luZm9mcmFtZV9mcm9t
X2Rpc3BsYXlfbW9kZShzdHJ1Y3QgaGRtaV9hdmlfaW5mb2ZyYW1lICpmcmFtZSwKIAkJCQkJIGNv
bnN0IHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICptb2RlKQogewogCWVudW0gaGRtaV9waWN0dXJl
X2FzcGVjdCBwaWN0dXJlX2FzcGVjdDsKKwl1OCB2aWMsIGhkbWlfdmljOwogCWludCBlcnI7CiAK
IAlpZiAoIWZyYW1lIHx8ICFtb2RlKQpAQCAtNTEzMCw3ICs1MTQyLDggQEAgZHJtX2hkbWlfYXZp
X2luZm9mcmFtZV9mcm9tX2Rpc3BsYXlfbW9kZShzdHJ1Y3QgaGRtaV9hdmlfaW5mb2ZyYW1lICpm
cmFtZSwKIAlpZiAobW9kZS0+ZmxhZ3MgJiBEUk1fTU9ERV9GTEFHX0RCTENMSykKIAkJZnJhbWUt
PnBpeGVsX3JlcGVhdCA9IDE7CiAKLQlmcmFtZS0+dmlkZW9fY29kZSA9IGRybV9tb2RlX2NlYV92
aWMoY29ubmVjdG9yLCBtb2RlKTsKKwl2aWMgPSBkcm1fbW9kZV9jZWFfdmljKGNvbm5lY3Rvciwg
bW9kZSk7CisJaGRtaV92aWMgPSBkcm1fbW9kZV9oZG1pX3ZpYyhjb25uZWN0b3IsIG1vZGUpOwog
CiAJZnJhbWUtPnBpY3R1cmVfYXNwZWN0ID0gSERNSV9QSUNUVVJFX0FTUEVDVF9OT05FOwogCkBA
IC01MTQ0LDExICs1MTU3LDE1IEBAIGRybV9oZG1pX2F2aV9pbmZvZnJhbWVfZnJvbV9kaXNwbGF5
X21vZGUoc3RydWN0IGhkbWlfYXZpX2luZm9mcmFtZSAqZnJhbWUsCiAKIAkvKgogCSAqIFBvcHVs
YXRlIHBpY3R1cmUgYXNwZWN0IHJhdGlvIGZyb20gZWl0aGVyCi0JICogdXNlciBpbnB1dCAoaWYg
c3BlY2lmaWVkKSBvciBmcm9tIHRoZSBDRUEgbW9kZSBsaXN0LgorCSAqIHVzZXIgaW5wdXQgKGlm
IHNwZWNpZmllZCkgb3IgZnJvbSB0aGUgQ0VBL0hETUkgbW9kZSBsaXN0cy4KIAkgKi8KIAlwaWN0
dXJlX2FzcGVjdCA9IG1vZGUtPnBpY3R1cmVfYXNwZWN0X3JhdGlvOwotCWlmIChwaWN0dXJlX2Fz
cGVjdCA9PSBIRE1JX1BJQ1RVUkVfQVNQRUNUX05PTkUpCi0JCXBpY3R1cmVfYXNwZWN0ID0gZHJt
X2dldF9jZWFfYXNwZWN0X3JhdGlvKGZyYW1lLT52aWRlb19jb2RlKTsKKwlpZiAocGljdHVyZV9h
c3BlY3QgPT0gSERNSV9QSUNUVVJFX0FTUEVDVF9OT05FKSB7CisJCWlmICh2aWMpCisJCQlwaWN0
dXJlX2FzcGVjdCA9IGRybV9nZXRfY2VhX2FzcGVjdF9yYXRpbyh2aWMpOworCQllbHNlIGlmICho
ZG1pX3ZpYykKKwkJCXBpY3R1cmVfYXNwZWN0ID0gZHJtX2dldF9oZG1pX2FzcGVjdF9yYXRpbyho
ZG1pX3ZpYyk7CisJfQogCiAJLyoKIAkgKiBUaGUgaW5mb2ZyYW1lIGNhbid0IGNvbnZleSBhbnl0
aGluZyBidXQgbm9uZSwgNDozCkBAIC01MTU2LDEyICs1MTczLDIwIEBAIGRybV9oZG1pX2F2aV9p
bmZvZnJhbWVfZnJvbV9kaXNwbGF5X21vZGUoc3RydWN0IGhkbWlfYXZpX2luZm9mcmFtZSAqZnJh
bWUsCiAJICogd2UgY2FuIG9ubHkgc2F0aXNmeSBpdCBieSBzcGVjaWZ5aW5nIHRoZSByaWdodCBW
SUMuCiAJICovCiAJaWYgKHBpY3R1cmVfYXNwZWN0ID4gSERNSV9QSUNUVVJFX0FTUEVDVF8xNl85
KSB7Ci0JCWlmIChwaWN0dXJlX2FzcGVjdCAhPQotCQkgICAgZHJtX2dldF9jZWFfYXNwZWN0X3Jh
dGlvKGZyYW1lLT52aWRlb19jb2RlKSkKKwkJaWYgKHZpYykgeworCQkJaWYgKHBpY3R1cmVfYXNw
ZWN0ICE9IGRybV9nZXRfY2VhX2FzcGVjdF9yYXRpbyh2aWMpKQorCQkJCXJldHVybiAtRUlOVkFM
OworCQl9IGVsc2UgaWYgKGhkbWlfdmljKSB7CisJCQlpZiAocGljdHVyZV9hc3BlY3QgIT0gZHJt
X2dldF9oZG1pX2FzcGVjdF9yYXRpbyhoZG1pX3ZpYykpCisJCQkJcmV0dXJuIC1FSU5WQUw7CisJ
CX0gZWxzZSB7CiAJCQlyZXR1cm4gLUVJTlZBTDsKKwkJfQorCiAJCXBpY3R1cmVfYXNwZWN0ID0g
SERNSV9QSUNUVVJFX0FTUEVDVF9OT05FOwogCX0KIAorCWZyYW1lLT52aWRlb19jb2RlID0gdmlj
OwogCWZyYW1lLT5waWN0dXJlX2FzcGVjdCA9IHBpY3R1cmVfYXNwZWN0OwogCWZyYW1lLT5hY3Rp
dmVfYXNwZWN0ID0gSERNSV9BQ1RJVkVfQVNQRUNUX1BJQ1RVUkU7CiAJZnJhbWUtPnNjYW5fbW9k
ZSA9IEhETUlfU0NBTl9NT0RFX1VOREVSU0NBTjsKLS0gCjIuMTcuMQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
