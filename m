Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B2BBF1092A8
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Nov 2019 18:13:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A109389C96;
	Mon, 25 Nov 2019 17:13:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5E6F89E5B
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Nov 2019 15:44:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Nov 2019 07:44:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,241,1571727600"; d="scan'208";a="220308828"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 25 Nov 2019 07:44:29 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 25 Nov 2019 17:44:28 +0200
Resent-From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Resent-Date: Mon, 25 Nov 2019 17:44:28 +0200
Resent-Message-ID: <20191125154428.GZ1208@intel.com>
Resent-To: intel-gfx@lists.freedesktop.org
X-Original-To: ville.syrjala@linux.intel.com
Delivered-To: ville.syrjala@linux.intel.com
Received: from linux.intel.com [10.54.29.200]
 by stinkbox.fi.intel.com with IMAP (fetchmail-6.3.26)
 for <vsyrjala@localhost> (single-drop); Mon, 18 Nov 2019 12:19:09 +0200 (EET)
Received: from fmsmga008.fm.intel.com (fmsmga008.fm.intel.com [10.253.24.58])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id C4190580104
 for <ville.syrjala@linux.intel.com>; Mon, 18 Nov 2019 02:19:04 -0800 (PST)
Received: from fmsmga103.fm.intel.com ([10.1.193.90])
 by fmsmga008-1.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Nov 2019 02:19:04 -0800
IronPort-PHdr: =?us-ascii?q?9a23=3AFu7VsxyMQ0BOInzXCy+O/D09IxM/srCxBTY7r5oq?=
 =?us-ascii?q?j7USLfaF1rG6YAnkw6woi1XEG4LG9/hDluza9bj6XnAN6oqAt3ZEd4FQUxgCio?=
 =?us-ascii?q?MdmAlyWZfZW32+F+bjamkBJOoHTEVsriOyNEQTE8H7NQWL8y+CqAUKExC6DjJb?=
 =?us-ascii?q?Y+H8G4rclcOyhrK7/pGVaAJN1mKw?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0F3AwAdb9Jdh1ZGayhlHQEBAQkBEQUFA?=
 =?us-ascii?q?YF+gUtQXoEIAwQ1h3KFO4U2ml6CUgMYPAkBAQEBAQEBAQEHAS8BAQKEPgKCQQU?=
 =?us-ascii?q?CBDQTAg4BAQEDAQEBAgECAwQCAhABAQEIDQkIKYU+DINHOTIBAQEBAQEBAQEBA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEFAoEMPgIBAxIVGQEBESYBD1FXBgE?=
 =?us-ascii?q?NBSKDAIJHAy4BAgKkAwKBOIhfAQGBczOCfgEBBYJJgjYYWIE/CQkBgSyHPIYxP?=
 =?us-ascii?q?4N1bIozjVqJSpcJB4ItcZRSJ5oRjkiaCAICAgIEBQIOAQEFgWmBezMaI4M8UBE?=
 =?us-ascii?q?UkRoMDgmDUIpgNjGOYAEB?=
X-IPAS-Result: =?us-ascii?q?A0F3AwAdb9Jdh1ZGayhlHQEBAQkBEQUFAYF+gUtQXoEIAwQ?=
 =?us-ascii?q?1h3KFO4U2ml6CUgMYPAkBAQEBAQEBAQEHAS8BAQKEPgKCQQUCBDQTAg4BAQEDA?=
 =?us-ascii?q?QEBAgECAwQCAhABAQEIDQkIKYU+DINHOTIBAQEBAQEBAQEBAQEBAQEBAQEBAQE?=
 =?us-ascii?q?BAQEBAQEBAQEBAQEBAQEFAoEMPgIBAxIVGQEBESYBD1FXBgENBSKDAIJHAy4BA?=
 =?us-ascii?q?gKkAwKBOIhfAQGBczOCfgEBBYJJgjYYWIE/CQkBgSyHPIYxP4N1bIozjVqJSpc?=
 =?us-ascii?q?JB4ItcZRSJ5oRjkiaCAICAgIEBQIOAQEFgWmBezMaI4M8UBEUkRoMDgmDUIpgN?=
 =?us-ascii?q?jGOYAEB?=
X-IronPort-AV: E=Sophos;i="5.68,319,1569308400"; d="scan'208";a="104489771"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from mail-eopbgr700086.outbound.protection.outlook.com (HELO
 NAM04-SN1-obe.outbound.protection.outlook.com) ([40.107.70.86])
 by mtab.intel.com with ESMTP/TLS/AES256-GCM-SHA384; 18 Nov 2019 02:19:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Eex8XJrPBMw7feISP6KOyMzvUjp4fDyQC9AD6OXqi4VnV3Ygi5gzyMfjnkXVdtBPjGtRwGXgmrBmEA/Ujt9IsjZZzOhOOdyPCdqrOjXeck97AWhby+RcjC/YPoAKtr40grHivhKfKigDVucwGFtXGVX7DlRbqzLTPxrgDkGAuqrsUFxnd7yQg1IV4LDUeF6DPuGzXnhJ516fe/UKLZ3TEJRjoYTBcyg6cxdbGCCNpQYbuMYJ1sfBVaVqKypLOpXUN2qaGnPe1WZNyWxPN1vf8P3vB0po4R+/n83Eaa5r3le35NYF58uGTjE0/glAvImSNcgiP4NpNt1jgfNe+kpcsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G3COM2ODV8XXa5dOCNSHyDpF20xE//Ly4I9KGiFFCJw=;
 b=JWUCv9kxlaLtufYSuaQsZrdrHePHemhOgocNnzPvg++izlghj4+wSnUTQJa4Mk55luJzRv5YSc3afCv3ZrB0OuPfw4da3qmdgWDUA1JT0nC5A0E00jDOLzFve7axmUwSQgK/lVfo5GbPBn5jts2bt6B2pAfjgcwmxv6CTtTWR/mRKm247nr8oCS3yKNOfJSN3AQotok+8YuzmMxZ+st1GR8EkrtgoM+Tegq8stYkaDPryCQnVpniUQEgPA+fuBR88KwP8nVXL96fYVaNZ/sy5guVPQtCfOAkCUZDXDjM+9gsVZGkRrKZBUhyo3eRbViJNAfzwyJKdimdUUo3io5LXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none (sender ip is
 165.204.84.17) smtp.rcpttodomain=lists.freedesktop.org smtp.mailfrom=amd.com; 
 dmarc=permerror action=none header.from=amd.com; dkim=none (message not
 signed); arc=none
Received: from DM3PR12CA0097.namprd12.prod.outlook.com (2603:10b6:0:55::17) by
 SN1PR12MB2349.namprd12.prod.outlook.com (2603:10b6:802:24::30) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.23; Mon, 18 Nov 2019 10:19:01 +0000
Received: from BN8NAM11FT068.eop-nam11.prod.protection.outlook.com
 (2a01:111:f400:7eae::200) by DM3PR12CA0097.outlook.office365.com
 (2603:10b6:0:55::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2451.23 via Frontend
 Transport; Mon, 18 Nov 2019 10:19:01 +0000
Received: from SATLEXMB02.amd.com (165.204.84.17) by
 BN8NAM11FT068.mail.protection.outlook.com (10.13.177.69) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2451.23 via Frontend Transport; Mon, 18 Nov 2019 10:19:01 +0000
Received: from SATLEXMB01.amd.com (10.181.40.142) by SATLEXMB02.amd.com
 (10.181.40.143) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Mon, 18 Nov
 2019 04:19:00 -0600
Received: from wayne-System-Product-Name.amd.com (10.180.168.240) by
 SATLEXMB01.amd.com (10.181.40.142) with Microsoft SMTP Server id 15.1.1713.5
 via Frontend Transport; Mon, 18 Nov 2019 04:18:58 -0600
From: Wayne Lin <Wayne.Lin@amd.com>
To: <dri-devel@lists.freedesktop.org>, <amd-gfx@lists.freedesktop.org>
Date: Mon, 18 Nov 2019 18:18:32 +0800
Message-ID: <20191118101832.15487-2-Wayne.Lin@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191118101832.15487-1-Wayne.Lin@amd.com>
References: <20191118101832.15487-1-Wayne.Lin@amd.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:165.204.84.17; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(396003)(346002)(39860400002)(136003)(428003)(199004)(189003)(110136005)(36756003)(70206006)(76176011)(26005)(7696005)(51416003)(54906003)(5660300002)(356004)(6666004)(47776003)(316002)(70586007)(86362001)(50466002)(48376002)(16586007)(1076003)(2906002)(426003)(478600001)(486006)(50226002)(8936002)(126002)(2616005)(446003)(336012)(476003)(4326008)(8676002)(53416004)(186003)(305945005)(81156014)(81166006)(11346002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN1PR12MB2349; H:SATLEXMB02.amd.com; FPR:;
 SPF:None; LANG:en; PTR:InfoDomainNonexistent; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bc6f68e1-4de6-4551-b7a5-08d76c10bb27
X-MS-TrafficTypeDiagnostic: SN1PR12MB2349:
X-Microsoft-Antispam-PRVS: <SN1PR12MB2349E22C2D8E02C901D2B373FC4D0@SN1PR12MB2349.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-Forefront-PRVS: 0225B0D5BC
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ELFtq5JSikGJo2AGDqIryOIZuUyYuPMfEFNUr3Bx688HvADuvaq3J01iFe/ojBfkT6jKeUVh+Xv523bRbpFclT64B4/FScHa83ZCzI2tMlIm4bMj++20On+zTlFWvNJ2i+sotHGaWqSoCOZhffqa+6ztrNPiEGSsiKHuROXeD/7Vbrh0VulKcxmUYAeshE2lZOYhNJDKpk5yfDUymB9WQx0YxWe+47/hQKJSKzEa4OEIBW/y1zXDDj6Y/s6FKcNoMgc0T3waeFHB9h4bk829I1ovuFyE1ZqGQDh2z4n6okWVlg2dOB3i+1K8oFV//48Sipr8mTP7uUVvyrW2nvsekyjoR/zPZjJtDeTlo1N/dFZAgQwWIg3sC+zfvEJsfFLUYMgYp8TWwGvqoC9VqwmHSXcocY7gmNScGtLI5K/KcnUMEjtBy8evXaeEKjNq138J
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Nov 2019 10:19:01.1003 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: bc6f68e1-4de6-4551-b7a5-08d76c10bb27
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d; Ip=[165.204.84.17];
 Helo=[SATLEXMB02.amd.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN1PR12MB2349
X-Mailman-Approved-At: Mon, 25 Nov 2019 17:13:20 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amdcloud.onmicrosoft.com; s=selector2-amdcloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G3COM2ODV8XXa5dOCNSHyDpF20xE//Ly4I9KGiFFCJw=;
 b=osmL0W1PbZQAvXEJv2Xvfsz+c9c7v+hCoPLMk5i/EHVvI6ENF16Hc0y8c8ln5rasgr+5vAZEdBpyCdPHUxi81q0jq2INtDrODkw8/li2X6YqdOZUiy3XF+1qzJ8xIjLMJivMFizwmzzt43crJf/AiORb1TroG4TeChoQQB+pZrY=
X-Mailman-Original-Authentication-Results: mtab.intel.com;
 spf=None smtp.pra=Wayne.Lin@amd.com; spf=None smtp.mailfrom=Wayne.Lin@amd.com;
 spf=Pass smtp.helo=postmaster@NAM04-SN1-obe.outbound.protection.outlook.com;
 dkim=pass (signature verified) header.i=@amdcloud.onmicrosoft.com
Subject: [Intel-gfx] [PATCH V2 2/2] drm/edid: Add alternate clock for SMPTE
 4K
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

W1doeV0KSW4gaGRtaV9tb2RlX2FsdGVybmF0ZV9jbG9jaygpLCBpdCBhZGRzIGFuIGV4Y2VwdGlv
biBmb3IgVklDIDQKbW9kZSAoNDA5NngyMTYwQDI0KSBkdWUgdG8gdGhlcmUgaXMgbm8gYWx0ZXJu
YXRlIGNsb2NrIGRlZmluZWQgZm9yCnRoYXQgbW9kZSBpbiBIRE1JMS40Yi4gQnV0IEhETUkyLjAg
YWRkcyAyMy45OEh6IGZvciB0aGF0IG1vZGUuCgpbSG93XQpSZW1vdmUgdGhlIGV4Y2VwdGlvbgoK
djI6IEFkanVzdCB0aGUgY29tbWVudCBkZXNjcmlwdGlvbiBvZiBoZG1pX21vZGVfYWx0ZXJuYXRl
X2Nsb2NrKCkKZHVlIHRvIHRoZXJlIGlzIG5vIG1vcmUgZXhjZXB0aW9uIGZvciBWSUMgNCBtb2Rl
LgoKU2lnbmVkLW9mZi1ieTogV2F5bmUgTGluIDxXYXluZS5MaW5AYW1kLmNvbT4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vZHJtX2VkaWQuYyB8IDcgLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDcgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9lZGlkLmMgYi9kcml2
ZXJzL2dwdS9kcm0vZHJtX2VkaWQuYwppbmRleCAwMzA3Y2FkMzZmMTQuLmU2MzY4YzNjNDQ3MSAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9lZGlkLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2RybV9lZGlkLmMKQEAgLTMxMTgsMTcgKzMxMTgsMTAgQEAgc3RhdGljIGVudW0gaGRtaV9w
aWN0dXJlX2FzcGVjdCBkcm1fZ2V0X2hkbWlfYXNwZWN0X3JhdGlvKGNvbnN0IHU4IHZpZGVvX2Nv
ZGUpCiAvKgogICogQ2FsY3VsYXRlIHRoZSBhbHRlcm5hdGUgY2xvY2sgZm9yIEhETUkgbW9kZXMg
KHRob3NlIGZyb20gdGhlIEhETUkgdmVuZG9yCiAgKiBzcGVjaWZpYyBibG9jaykuCi0gKgotICog
SXQncyBhbG1vc3QgbGlrZSBjZWFfbW9kZV9hbHRlcm5hdGVfY2xvY2soKSwgd2UganVzdCBuZWVk
IHRvIGFkZCBhbgotICogZXhjZXB0aW9uIGZvciB0aGUgVklDIDQgbW9kZSAoNDA5NngyMTYwQDI0
SHopOiBubyBhbHRlcm5hdGUgY2xvY2sgZm9yIHRoaXMKLSAqIG9uZS4KICAqLwogc3RhdGljIHVu
c2lnbmVkIGludAogaGRtaV9tb2RlX2FsdGVybmF0ZV9jbG9jayhjb25zdCBzdHJ1Y3QgZHJtX2Rp
c3BsYXlfbW9kZSAqaGRtaV9tb2RlKQogewotCWlmIChoZG1pX21vZGUtPnZkaXNwbGF5ID09IDQw
OTYgJiYgaGRtaV9tb2RlLT5oZGlzcGxheSA9PSAyMTYwKQotCQlyZXR1cm4gaGRtaV9tb2RlLT5j
bG9jazsKLQogCXJldHVybiBjZWFfbW9kZV9hbHRlcm5hdGVfY2xvY2soaGRtaV9tb2RlKTsKIH0K
IAotLSAKMi4xNy4xCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
