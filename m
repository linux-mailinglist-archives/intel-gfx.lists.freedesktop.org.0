Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A85973DE5D
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jun 2023 14:02:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0057010E1E3;
	Mon, 26 Jun 2023 12:02:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85BAC10E1E3
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Jun 2023 12:02:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10752"; a="427243205"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="427243205"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2023 05:02:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10752"; a="829203211"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="829203211"
Received: from avhiruda-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.41.186])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2023 05:02:08 -0700
Resent-Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7,
 02160 Espoo
Resent-To: intel-gfx@lists.freedesktop.org
Resent-From: Jani Nikula <jani.nikula@intel.com>
Resent-Date: Mon, 26 Jun 2023 15:01:53 +0300
Resent-Message-ID: <87v8fav3da.fsf@intel.com>
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Mailbox Transport; Tue, 20 Jun 2023 23:20:09 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 20 Jun 2023 23:20:08 -0700
Received: from orsmga006.jf.intel.com (10.7.209.51) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 20 Jun 2023 23:20:08 -0700
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="691723523"
X-IronPort-AV: E=Sophos;i="6.00,259,1681196400"; d="scan'208";a="691723523"
Received: from orsmga106.jf.intel.com ([10.7.208.65])
 by orsmga006-1.jf.intel.com with ESMTP; 20 Jun 2023 23:20:08 -0700
Authentication-Results: mga18.intel.com; spf=None
 smtp.pra=rcampbell@nvidia.com; spf=Pass
 smtp.mailfrom=rcampbell@nvidia.com; spf=Pass
 smtp.helo=postmaster@NAM11-BN8-obe.outbound.protection.outlook.com;
 dkim=pass (signature verified) header.i=@Nvidia.com; dmarc=pass (p=reject
 dis=none) d=nvidia.com
IronPort-SDR: 64929697_c6fIUqixW2NLqvPtPW021XwxjhtIIfLU4MaEHwTrV8pJC0f
 3PQE2+T1CW9tj3p9B69fnNSTQ9WsPlRmm7dR+4Q==
X-IPAS-Result: =?us-ascii?q?A0EgAADalZJkhijsayhaHAEBAQEBAQcBARIBAQQEAQGBe?=
 =?us-ascii?q?wcBAQsBgWBSgU0rAwdPiB8BhE9fpRuBLIFAPg8BAQEBAQEBAQEHAQFEBAEBA?=
 =?us-ascii?q?wSBTIMzhgYfBgEEMAkNAQECAQIBAQEBAQMCAQIBAQEBAQEDAQEBAgIBAQECA?=
 =?us-ascii?q?QECBAIBAQEBAhABAQEBIBkHDhAnhWgNgjcpARFkSj4BAQEBAQEBAQEBAQEBA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEOAg17FiABDQEBNwGBPQENBSKCXIJdAwECAqMHAYFAA?=
 =?us-ascii?q?gKMT4EBgggBAQYEAwIDsQiBXwkJAYE4AYwVhgyBSUSBFYJ6b4RZhi2OKoVlB?=
 =?us-ascii?q?4tZgShvgR45Z3oCCQIRZ4EICF+Bc0ACDVQLC2OBHIJSAgIROhRSXxkbAwcDg?=
 =?us-ascii?q?QUQLwcEMigGCRgvJQZRBxcWJAkTFUEEg1gKgQ0/FQ4RgloiAj0/G1GBcjE3A?=
 =?us-ascii?q?wkDBwUsHUADCxgNSxEsNRQfBiYggQcXY4F2CiMkoz6BDhyBA4ICkipYglYBj?=
 =?us-ascii?q?hGgKIQSoQAaM6lYmBogo0GELwIEAgQFAg4BAQaBYzqBXE0jgzdPAxkPV41JD?=
 =?us-ascii?q?A0Jg1KQGSMyOwIHCwEBAwmLSAEB?=
IronPort-PHdr: A9a23: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
IronPort-Data: A9a23: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
IronPort-HdrOrdr: A9a23:x9MB36MxkR4p7MBcT+T155DYdb4zR+YMi2TDiHoddfUFSKalfp
 6V98jy1XfP+U8ssRYb6K690ci7MAPhHPtOjbX5Uo3SJzUO1FHYS72KjrGSvwEIeReOjNK1vJ
 0IG8cReb6Abyke/KLHDRGDc+rIqOP3gZxA7t2ut0uFIzsaDZ2I2z0JeDpzX3cGDjVuNN4cLt
 6x98BHrz2vdTA+adm6PGAMW6z5q9jChPvdEFc770pM0mizpALtzIS/PwmT3x8YXT8K66wl63
 L5nwvw4bjmm+2nyzfHvlWjrKh+qZ/E8J9uFcaMgs8aJnHHkQCzfrlsXLWEoXQcvPyv0lA3i9
 PByi1Qf/ib00mhPF1dnCGdlTUIkQxepEMK8GXozUcLdPaJBQ7TCKJ69PRkm1Ximg8dVepHod
 V2NlKixu9q5Cz77VDADqDzJmxXf2qP0DIfeL0o/jdieLpbT4AUi4sn509QLZErGSTn5ekcYZ
 pTJfCZw8l9d1SUb33UuXRuyNmtQ2RbJGb4fqFFgL3Z7wRr
X-Talos-CUID: 9a23:uBmZq2Dv/RaYk876E3VO/W85PPl6SybQ0WrcfV+YB0AzSZTAHA==
X-Talos-MUID: 9a23:mAZppATDHQVvTFm3RXT8ri5jCOdQ0Z2SJ0EriJI7kerYLCN/bmI=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="344820034"
X-IronPort-AV: E=Sophos;i="6.00,259,1681196400"; d="scan'208";a="344820034"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from mail-bn8nam11on2040.outbound.protection.outlook.com (HELO
 NAM11-BN8-obe.outbound.protection.outlook.com) ([40.107.236.40])
 by mga18.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Jun 2023
 23:19:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a5YPZAAoxtVF6Vk/UQa25L/Hq9Pp8U16HX6zxHgcPhkA/TTs6ncN2exI8IGwLxIbyZI2zeuDXZqmdw4Hb0QREIdmpOw324aIu8LfBZ7Vd06RSgZTvx34HGJ8gXcfCmBP3jxJQZHD82hHNGWUHcwdZ5CSCpAJhUc7opUW1kUGs0UjLLPFV8PD54KsG3bHmW/vqaRZzsrE1nXN6Q7vWYEkqyxoExDU+OHjk0t0urj6idDofDshYgArV8QVoaXNI15Y0F8Wi3auAKRYrZQAtB4F5BQ8QurKeu1FguW22b7oBZg6ggTrMhKrifZb3JWJsii5BgZX84aoSffIt4vuiXEQ8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P4PrwyniEukTYvPgE5ESkBr2G5YngTXPLJgj1TExeAM=;
 b=WhRvT1E05gI/XyCpNfR/IKZoKnDu9rSZybIpXOCTeZQI2h8feobNgU3V+IMwaMd7znxNlyDc1NrK1Phm1De7oKKpNiVxagOaxBahJLGd0Agcd7RP9x7Q8292LjLMHWenKf+fd9G/5UvSBGlasr73G/39zDWreTD3TOgojAziyrjdC2WPGjZ+VNxv0MRsbgAmMQ661rTNRyfzVZBN5M5WsurU05ZiMxH1J8qqD93ABOlLTy0it0maEkEqN2OXp58GMSWlr+nOq4BK6cLvVZpM7I1GdCKG/rzvtMT+ismUXsg3MAMhFcUT7TlDV2K+XqKi3Ur1+JeXDcNRHOCPSkI2xQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.118.233) smtp.rcpttodomain=lists.freedesktop.org
 smtp.mailfrom=nvidia.com; dmarc=pass (p=reject sp=reject pct=100) action=none
 header.from=nvidia.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P4PrwyniEukTYvPgE5ESkBr2G5YngTXPLJgj1TExeAM=;
 b=CilMzAGapSzZR1QYW5hlDTISuuscDZanNE+s8rTEI0f9y9oTWZJ+G8BAtK0xGCBE4Aeb5wN98/KttYeNQDoD5wKBdPQvdLiNDz9nAzxx/InBa1/66AJ2JVYioE6IzOREU7ZKE0G8aUccvZiARvBxZd51A1xNo4q1TFYwQUW+fb2lzgw5mdCp8LUUdj1nmxhvN7Pb1yYc5eORlqjYvCl5svuSltjENs1cBchgCZA5M5cGJdHjDPiTtHjfwf7ikQM7b3rCHATy/zbcEU4ZWp2AMGA0PrcC34wuBB+hgNu0rwxgAp7ms6X+VHGxprol2RRwz00FSIf5u5U/FFHaeY6SOg==
Received: from PH0PR07CA0046.namprd07.prod.outlook.com (2603:10b6:510:e::21)
 by BL1PR12MB5804.namprd12.prod.outlook.com (2603:10b6:208:394::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.23; Wed, 21 Jun
 2023 06:19:32 +0000
Received: from SA2PEPF000015C8.namprd03.prod.outlook.com
 (2603:10b6:510:e:cafe::29) by PH0PR07CA0046.outlook.office365.com
 (2603:10b6:510:e::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.21 via Frontend
 Transport; Wed, 21 Jun 2023 06:19:31 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.118.233)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received: from mail.nvidia.com (216.228.118.233) by
 SA2PEPF000015C8.mail.protection.outlook.com (10.167.241.198) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6521.19 via Frontend Transport; Wed, 21 Jun 2023 06:19:30 +0000
Received: from drhqmail203.nvidia.com (10.126.190.182) by mail.nvidia.com
 (10.127.129.6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.5; Tue, 20 Jun 2023
 23:19:21 -0700
Received: from drhqmail203.nvidia.com (10.126.190.182) by
 drhqmail203.nvidia.com (10.126.190.182) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.37; Tue, 20 Jun 2023 23:19:21 -0700
Received: from rcampbell-dev.nvidia.com (10.127.8.9) by mail.nvidia.com
 (10.126.190.182) with Microsoft SMTP Server id 15.2.986.37 via Frontend
 Transport; Tue, 20 Jun 2023 23:19:21 -0700
From: Ralph Campbell <rcampbell@nvidia.com>
To: <dri-devel@lists.freedesktop.org>, <linux-kernel@vger.kernel.org>
Date: Tue, 20 Jun 2023 23:19:03 -0700
Message-ID: <20230621061903.3422648-1-rcampbell@nvidia.com>
X-Mailer: git-send-email 2.40.1
X-NVConfidentiality: public
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-NV-OnPremToCloud: ExternallySecured
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA2PEPF000015C8:EE_|BL1PR12MB5804:EE_
X-MS-Office365-Filtering-Correlation-Id: 3780a8ec-7f01-4b2a-1ff0-08db721f797e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jMsmffO5he3+HW6W/WzlYc1OusKVQJWUuU4qzIbjDYjS4Oqsy+c5jI95HKzYGMTMQwXxrr6xTYgWI8N1Z9+CeQhRTwe81BeyPQhgsKKvNYC3J5oaMHR8SCOR1A4XaEL1GEF5tpxQYrkY6z6DYMG2E0xjAdv2b3mWuJYdI/lKJFEyl3tPsunl81AnQxeF2ifkFAEt3clzix9VVpL0Y5kbpT2H8kfkj9NdoWrvbvLPs3N0lGEjYdBIjIJSRX+QrL6QilUW76sdDMds8ZEFBh65++Pn9PPp94XWlr4LMzcqsuWZlDR3tjc2N11LaPIQlebSoNgHznyj4cvXwKCjRT+VdLyZegx26kqcaH65yibw5wouS5D4imjti/vpXKEBZJm1F8qRULDlcO5cSSNC1Kcu+pRb4ngjlGQa68sFuuG1P23HihvHY+MVn/LwNXX4BhN7mhBra2Yj2MwaCxiY2XMb7W/fnpcxC2HnjT0NbDh/cBA54XusXaKY1yI1VOhAfo4G9C9vXKYjlru/YAOpHVt2XHfs5qbl+Uw8pPCRlkMEZI/s62UnJ2UinI+7rTCTUXXYmCmQyWufP8uYeDFj8L+Hvx9+ojVhajkoAU0UJLI3vGpZ9Pr75kQRH7UPMa/s1RIsjUUvk1AhDxkqS6B3IPCPuuRiC1MirceXqVfuV3fJaQuRgkPxx7vVXFiavAFr7mrWV//mlM0Teycr8r3dNleliW1eeeAJDoPGXRPfUWIFJrYpTsLhhsIOPutzg2vykklq
X-Forefront-Antispam-Report: CIP:216.228.118.233; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc7edge2.nvidia.com; CAT:NONE;
 SFS:(13230028)(4636009)(39860400002)(376002)(396003)(346002)(136003)(451199021)(46966006)(36840700001)(40470700004)(478600001)(6666004)(4326008)(54906003)(110136005)(7696005)(1076003)(107886003)(186003)(26005)(70586007)(2906002)(82310400005)(8676002)(8936002)(41300700001)(70206006)(316002)(5660300002)(7636003)(82740400003)(356005)(40460700003)(86362001)(36756003)(40480700001)(47076005)(2616005)(426003)(336012)(36860700001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jun 2023 06:19:30.9668 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 3780a8ec-7f01-4b2a-1ff0-08db721f797e
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.118.233];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: SA2PEPF000015C8.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR12MB5804
X-MS-Exchange-Organization-Network-Message-Id: b5c5a792-4fb3-4d22-2a99-08db721f9014
X-MS-Exchange-Organization-AVStamp-Enterprise: 1.0
X-MS-Exchange-Organization-AuthSource: fmsmsx602.amr.corp.intel.com
X-MS-Exchange-Organization-AuthAs: Anonymous
X-MS-Exchange-Transport-EndToEndLatency: 00:00:00.6049693
X-MS-Exchange-Processed-By-BccFoldering: 15.01.2507.023
MIME-Version: 1.0
X-TUID: NvRVTxMC399q
Subject: [Intel-gfx] [PATCH v2] drm/edid: Add quirk for OSVR HDK 2.0
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
Cc: Ralph Campbell <rcampbell@nvidia.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, Jani Nikula <jani.nikula@intel.com>,
 Maxime Ripard <mripard@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The OSVR virtual reality headset HDK 2.0 uses a different EDID
vendor and device identifier than the HDK 1.1 - 1.4 headsets.
Add the HDK 2.0 vendor and device identifier to the quirks table so
that window managers do not try to display the desktop screen on the
headset display.

Signed-off-by: Ralph Campbell <rcampbell@nvidia.com>
Tested-by: Ralph Campbell <rcampbell@nvidia.com>
---
 drivers/gpu/drm/drm_edid.c | 1 +
 1 file changed, 1 insertion(+)

I don't know how many of these VR headsets are still around but I have a
working one and I saw an entry for HDK 1.x so I thought it would be good
to add HDK 2.0.

v2: The vendor ID was byte swapped.
I'm not sure how I missed that in v1.

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index 0454da505687..3b8cc1fe05e8 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -230,6 +230,7 @@ static const struct edid_quirk {
 
 	/* OSVR HDK and HDK2 VR Headsets */
 	EDID_QUIRK('S', 'V', 'R', 0x1019, EDID_QUIRK_NON_DESKTOP),
+	EDID_QUIRK('A', 'U', 'O', 0x1111, EDID_QUIRK_NON_DESKTOP),
 };
 
 /*
-- 
2.40.1

