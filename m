Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F3338D039D
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2024 16:28:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92C6C10E924;
	Mon, 27 May 2024 14:28:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=amd.com header.i=@amd.com header.b="2qNMAeQj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B3E010E7BC
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2024 14:28:48 +0000 (UTC)
X-CSE-ConnectionGUID: 4unyQd32QgaJQ2G4x0eipA==
X-CSE-MsgGUID: VaMBlFqhS0eI/NDUBzivqg==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="35661250"
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="35661250"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 07:28:48 -0700
X-CSE-ConnectionGUID: 3qtDWZZwRry/E6DQ/4feZQ==
X-CSE-MsgGUID: fZNFlbpASHileqo06Axvyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="39774386"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.200])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 07:28:47 -0700
Resent-Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7,
 02160 Espoo
Resent-To: intel-gfx@lists.freedesktop.org
Resent-From: Jani Nikula <jani.nikula@intel.com>
Resent-Date: Mon, 27 May 2024 17:28:43 +0300
Resent-Message-ID: <87ed9nmiqs.fsf@intel.com>
X-Original-To: jani.nikula@linux.intel.com
Received: from fmviesa003.fm.intel.com (fmviesa003.fm.intel.com
 [10.60.135.143])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id E436D20BF42F;
 Mon, 27 May 2024 07:23:45 -0700 (PDT)
X-CSE-ConnectionGUID: 4YHkTMX+Q928Qq5XsWswQg==
X-CSE-MsgGUID: Hgc06dZ7Tv+AheAk49v+GQ==
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="39223901"
Received: from orvoesa102.jf.intel.com ([10.18.183.142])
 by fmviesa003-1.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 07:23:45 -0700
X-CSE-ConnectionGUID: MtFGRiBjQ8Ssg+hJi88rZw==
X-CSE-MsgGUID: 0bHQJWa/Qa67enSbHP2Xcg==
X-ThreatScanner-Verdict: Negative
X-IPAS-Result: =?us-ascii?q?A0EFAACQllRmkLHS/INaGgEBAQEBAQEBAQEDAQEBARIBA?=
 =?us-ascii?q?QEBAgIBAQEBgX0DAQEBAQsBgXFSGQFigQwBCk0diAYBhS6JB4tLjiSCWoEsg?=
 =?us-ascii?q?UAzGgEBAQEBAQEBAQgBLgsIAQIEAQEDBIFMjAECJjYHDQEBAgQBAQEBAwIBA?=
 =?us-ascii?q?gEBAQEBAQEBBgEBAQICAQEBAgEBBgMBAQEBAhABAQEBAQEgHhAOJ4UvRQ2CQ?=
 =?us-ascii?q?h6BJl5IAQEBAQEBAQEBAQEBAQEBAQEBAQEBFAINXAEBHwEBBAEBDxULAQ0BA?=
 =?us-ascii?q?QQKKQECAwECBgJEBAgDARw8AQ0FBR2CXgGCMAMxAwECAgyjCgGBQAKKKIF5M?=
 =?us-ascii?q?4EBggwBAQbbJA1sgWMDBoFIAYgPHgGEWIEkhEAnD4FVRHobgnlvgVJNK4g9j?=
 =?us-ascii?q?QmMIYhIizBKgQccA1khEwFVEw0KCz4dAhYDGxQEMA8JCyYqBjYCEgwGBgZZN?=
 =?us-ascii?q?AkEIwMIBANCAyBxEQMEGgQLB1AlgyUEE0QDgTcGiW2DEwIFISmBdYEignhLg?=
 =?us-ascii?q?goCgmeBaw5hhFWCUXNogQszgRGBKEFMLB1AAwsYDUgRLBYfBg4bBj5uB6Rwg?=
 =?us-ascii?q?0oOHyw1LCKVLIMhjDyCHZ98PDQHhBaBXAaKLY8uhXRNqjQBg1KHMo1fIIlcg?=
 =?us-ascii?q?3qEAZEigQ2EOgIEAgQFAg8BAQaBbA0mAoFacIM3UhcCD44hDBaDWIUUiikBv?=
 =?us-ascii?q?HxaOwIHCwEBAwmFRgEBgQOCVgEsgRwBAQ?=
IronPort-PHdr: A9a23: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
 NLBg9ed6w==
IronPort-Data: A9a23:7BwW8a2zz0TPsQBHtfbD5bl3kn2cJEfYwER7XKvMYLTBsI5bpz0Fm
 GRMWj+AM62LNzSmfY8iPYy08x4CvpGHmN5kT1BqqSg9HnlHgPSeOdnIdU2Y0wF+jyHgoOCLy
 +1HMoGowBUcFyeEzvuLGua/9SEUOYagH+OkWLOs1hhZHFIiEGF4z0o4w4bVu6Yy6fChGQSBp
 NjulMPWPV6hylZcP3kdg065gEoHUM/a5nVA7jTSWdgR5AWCzyRPU8pGTU2MByKQrrd8T7bSq
 9nrkenRElPxp38FFt6jm7DnRUwGKpa60d+m0SI+twCK23CulwRqukoJHKN0hXR/0l1lq+tMJ
 OBl7vRcfy9yZ/GRx75NO/VvO3oW0aVuoNcrKJUk2CCZ5xWun3DEmp2CAKytVGGxFyke7Wxmr
 JQlxD4xgh+rov6Y74i6YOtV1v84I4rrHoJP6mtS0mSMZRomacirr6Ti6tZS0XE+nM1DEfvFZ
 NYecXxodhuojx9nYwxOTshjxqHy3yG5KmIHwL6WjfJfD2z7wBZwlbTgLtfRP9aNWMNek12wo
 mPd43+/DAsXOdCS0jmZ9WrqgfXA9c/+cNlKSuDjr6cx6LGV7jQZKCQ0alL8mPDn1UO4YNh/E
 xYk8SV7+MDe82TyEoasDkTQTGS/ljcaV8BCHu98ywiG0rDT/B2aB0AATzhceJonstM7QXoh0
 Vrht9rlDDkptbyOW3mP/7S8qTK0JDhTLGkeaCtCRgwAi/Hqpo0yyAnPX8piOKq0iMDlXzD23
 z2O6iM5gt07hNQCyaS98RbGjz6lo4PEUhIkzgHWWH+1qAJ/eIOhIYev7DDz7/9LIYXfSlCep
 mkCnNef5/ImCZCLiTzLQeMREbXv7PGAWBXeiFhuWZ8g9Cmp8lanfIZN8Hd/IltkNoAPfjqBS
 E3avx5K9tlQJmm7dr1rZIywCOwuzK79BZLkUOzZapxFZZ0ZXA2A+ydnfgiU1mDxkU4hl4k7O
 JGGYYCtC2oXDeJsyz/eb+IU2r4mxGYmzH/eQZvp3heP1buYeW7TSLEZPV/IZec8hIuCoR/Q9
 McZO8KR4xFeVvDuJCjR7YMXa1sNKBATHoz/rc1McuecZAV8BXozCPb5xbInZpwjnqJJm+OO9
 Xa4MmdEz1/2nm+BLASRdnl/QLfuW4tv63M9ISEoe12v3hALf4er6KpZbIotf7Aj/cRnzPhpX
 78EfdmNBrJETTGv0yYdYJ/ssZNKcBWtmBLIPiy5bTx5dJllLzEl4ffrdwHisicUAye7uNA9v
 7q4kATBTvLvWjiOEu7zdNyA9VKbv0FNo/l9HEvqI4kDYnfzpd0CxzPKstc7JMQFKBPmzzSc1
 hqLDRpwmQUri9JvmDUurf3Zx7pFA9dD8lxm8343BIta2AHV92Cuh4FaXeuEcCveSGTsvqK4a
 o25Ls0Q0tVXwz6mUKIlTd6HKJ7SAfOy/de2KSw5QB32g6yDUO8IH5V/9ZAnWldx7rFYoxCqf
 UmE58NXP76EUOu8TwdPe1d8NLnaiKpK8tU30RjTCBigjMOQ1OfaOXi+wzHX4MCgBOUobdh7q
 QvfkJ5Hg+BAtvbaGo/a0XEFrgxg31QYVL87spgcDMfwlgM3xxlfZ53CBzXt4Y2eA+igwWF0S
 gJ4cJHq3uwGrmKbKipbPSaWh4J1289R0C2mOXdeezxlbPKe3KRmtPCQmBxrJjloIuJvirsrY
 TE7ZhwveM1jPV5A3aB+YoxlICkYbDWx80n9jVAOkQXko4OADwQh8EVV1S2xEIz1Po6SkvW3P
 F1V9Yo9bQvXQQ==
IronPort-HdrOrdr: A9a23:2uHlg6sRY5Rhr3LzfByAu/FU7skCg4Mji2hC6mlwRA09TyXGra
 CTdaUgtCMc1gx+ZJhBo7q90KnpewKnyXcT2/hgAV7CZniUhILMFvAA0WKM+UydJ8SVzIJgPJ
 lbAvlD4bHLfCBHZSiT2njkLz4PqOP3r5xAr92ulEuEdGlRGv1dB+0QMHfELqQOfngdOXNbLu
 vs2iMknUveRZ1NVLXiOpBtZYGqzLK79uOCEHh2fiLL8DP+6g9Ax4SKQyRwtS1uLg+nr41Sil
 QsUmTCl+OeW6bR8G6o64bm1eUjpDKt8KoOOOW8zuwubhn8gAehY4psH5WEoTAOuemqrG0nld
 Hdyi1QdPiavxnqDwWIiCqo/zOl/Ccl6nfkx1Pdq2Dku9bFSDUzDNcErZ5FczPCgnBQ+e1U4e
 Zu5Sa0ppBXBRTPkGDW/N7TTSxnkUKyvD4LjfMTtXpCSoETAYUh77D3xHklVKvoIRiKqLzPUd
 MeTf003cwmP29yukqp/VWGw7SXLzwO91m9Mw8/U/euonFrdUBCvjwlLfMk7wE9HeoGOud5D2
 utCNUwqFhvdL5dUUsvPpZNfSLbMAHwqEX3QRCvyBLcZe46B04=
X-Talos-CUID: 9a23:YpPxpWPNtsAL3e5DfTVJ23QVMMIcIkbGwzTQAU7oWXxbV+jA
X-Talos-MUID: 9a23:JmBDeQnrn+hT7CxS/6pcdno6PudRwZunT3kEz8oLvfKOFRQqCzyS2WE=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="30653113"
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="30653113"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from gabe.freedesktop.org ([131.252.210.177])
 by mtab.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 May 2024
 07:23:44 -0700
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9273F10EED6;
 Mon, 27 May 2024 14:23:42 +0000 (UTC)
X-Original-To: dri-devel@lists.freedesktop.org
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10on2074.outbound.protection.outlook.com [40.107.93.74])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AA9810ED0D;
 Mon, 27 May 2024 14:23:35 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B7uorN/ISrpSUwgDQwvvnuVAEWU2p+tP8ay3HDkCxqET/NNA6bQrcb+2qqTnVWwHd3CY+RrXgA+6RRXLyIkd0FvTaFtYaLPlueSO1PJa+Kh+Hna9gBazyVkVb902QbL0IWq7Ug3Ojw1BH29nECww2UUEWglHFMC7HcG8LHuDVG49XKn19jeXqQd3FRksAs885I1NarpWwQgd5uCIN64PdW7XPA3w8rRQcmls4c185lDQJdRZsrAezokzPQeUN34kz37sDX6D1BPAGki9jEYqgzffRXcMgENNTGbW7sbaVhHQyjiLfDIX/GjJgGUCKSJhZCiWE5Iu82NRXm0pWYl5YA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=phMXJe+DHK3g7n6LlPjha+ZNbJvzU2d8pm1P7DmcJaU=;
 b=GrgaLY2sneYDSeyzjrN+g4aEQaqPYefwftmeK76NFw58tWIgoe3dckXJ+6SFT2cNcEZPvWsv+Xp9jBEotjEM4SFgYaPncsVnMVWfR1UaqRE8SaxxrBElm5wJfnbK9OpJpqhmaUl0cDgs7Z+yLgtVo8tRyJxs990v3mK94WhMEKVRqRItEIftAzgnE84g5DYDfLrJVx0UqWilIpN6DxfxVkp0oa0tkWTdUQf5+/gwohTe4BWES7LVPGHkTxaJiDoUeJ+h560tzOBwUArcBUenaRVuVz5KMm+RaQaNSvkC1jcQQy9lvr9lmvIPto8ijFujPDKgxO7utoUUSEEzpu180g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=temperror (sender ip
 is 165.204.84.17)
 smtp.rcpttodomain=lists.freedesktop.org
 smtp.mailfrom=amd.com; dmarc=temperror action=none header.from=amd.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=phMXJe+DHK3g7n6LlPjha+ZNbJvzU2d8pm1P7DmcJaU=;
 b=2qNMAeQjpuiHBT6YRYKUKoQsGCUZUwENAwHNeHpsF8gTLHopSvFYFI1IpwuE+w/pVoCTS0zaoiPovmUaeRPD36Dlj2ALgk9bQSbfWRBZ5oeoWhMP5o7w87MxZo1xZsRcbdrNKvmm6jlmUA8TMaMx4RxuBOoUp9ETU+hwzaE2FjM=
Received: from BY5PR13CA0024.namprd13.prod.outlook.com (2603:10b6:a03:180::37)
 by BY5PR12MB4228.namprd12.prod.outlook.com (2603:10b6:a03:20b::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.30; Mon, 27 May
 2024 14:23:30 +0000
Received: from SJ1PEPF00002316.namprd03.prod.outlook.com
 (2603:10b6:a03:180:cafe::5b) by BY5PR13CA0024.outlook.office365.com
 (2603:10b6:a03:180::37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.16 via Frontend
 Transport; Mon, 27 May 2024 14:23:30 +0000
X-MS-Exchange-Authentication-Results: spf=temperror (sender IP is
 165.204.84.17) smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=temperror action=none header.from=amd.com;
Received: from SATLEXMB04.amd.com (165.204.84.17) by
 SJ1PEPF00002316.mail.protection.outlook.com (10.167.242.170) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.7633.15 via Frontend Transport; Mon, 27 May 2024 14:23:29 +0000
Received: from AUS-P9-MLIMONCI.amd.com (10.180.168.240) by SATLEXMB04.amd.com
 (10.181.40.145) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.35; Mon, 27 May
 2024 09:23:27 -0500
From: Mario Limonciello <mario.limonciello@amd.com>
To: <dri-devel@lists.freedesktop.org>, <amd-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard
 <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie
 <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
CC: <linux-kernel@vger.kernel.org>, Mario Limonciello
 <mario.limonciello@amd.com>, Alex Deucher <alexander.deucher@amd.com>, "Chris
 Bainbridge" <chris.bainbridge@gmail.com>
Subject: [PATCH] drm/client: Detect when ACPI lid is closed during
 initialization
Date: Mon, 27 May 2024 09:23:11 -0500
Message-ID: <20240527142311.3053-1-mario.limonciello@amd.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.180.168.240]
X-ClientProxiedBy: SATLEXMB03.amd.com (10.181.40.144) To SATLEXMB04.amd.com
 (10.181.40.145)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PEPF00002316:EE_|BY5PR12MB4228:EE_
X-MS-Office365-Filtering-Correlation-Id: 61704e10-a7bd-4a3d-5dce-08dc7e5894e3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230031|36860700004|376005|82310400017|1800799015; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?tztx4y1ickvl4tjpOt27ld5+/szlep+iKC13uDGobgcjqLm4Ojy19/9ROWuY?=
 =?us-ascii?Q?0U0ZiXFKoEuWyExehVvbtt9kNq1MHArsvg8evkinflqwVfRBqr9f8ahRObEK?=
 =?us-ascii?Q?nJ/cmEZGA2Z58O6kUr7ddNIl9jFElvVCs+L6xLVoiHR9aX8CNc2GQVJCPRnO?=
 =?us-ascii?Q?8a5nVnk/6752WcTrfsc+0svksEVOQviFy2ggjN+WCprqKubJHBzzTPVBZ35R?=
 =?us-ascii?Q?uSzGf6QZLQmCekGtB+FXCcsrz2PKuUqkOE9Se777FeJaKMUWnxyVZABICisR?=
 =?us-ascii?Q?TXCiRe59VoG86YRhPhAihspULXdYtVXA+WvWxP8AtCT1YBiZmb+iS5WEWytw?=
 =?us-ascii?Q?iuKCJUMXtlhQ6m0xj0k0hZJkPIftJrmolPm+J7f6zQmNK/Hm+nLwtWChj49I?=
 =?us-ascii?Q?nmDPpIEmwRla4Pyq0ifVd3999J7QMkO1IY8FmOCOM6sCjNnAM2oKEC/UtxIp?=
 =?us-ascii?Q?XjtLuDqTLjeOVcjQeBTwZwHosLdMGvjmWg3rPdfxovps10x9isiqdqnIqfCQ?=
 =?us-ascii?Q?O1xtKeuEfy2Z90brcX/31GR/V+grJQdE1x1XjIgDdzl03V+uxsaqKjbTvWYx?=
 =?us-ascii?Q?MJPtR4DM1l7wwsEVNHbUuNW2ObAgDjh5zBp6QXlvOOwgTBBcklMcxoouC/GY?=
 =?us-ascii?Q?F8nu8FKalI7aYJms/HSxVLl+d8MRU+Q8qACMHEggl7DvtBJs6fX+m6DULnfr?=
 =?us-ascii?Q?ogu9gtci6BDD4KPSUEiNAtdbPB1bOudUmPPODTfUTaEjCIrhgSMnRkxtVaJI?=
 =?us-ascii?Q?Q9ClpVd/GdbtaheBLbPPQmOR1swanp0esmZlVhxR+USNKdJqg//shqmKzM60?=
 =?us-ascii?Q?wwvKA7FmfJz0lq8nSYUEIl9DrmupRhb1nyq62G1L1iPIUipvvErKLL9Jj1rp?=
 =?us-ascii?Q?guTN3dG43mgvAzW/OgNrcLmOxwExRtVHd0gDXiTOF7SLI0rPe46QBRHCAeeo?=
 =?us-ascii?Q?NuP4P9aEkezbsjz7MfcWeCTcwkFT6qdzoJy+cAGnmRvKXU1opITlWaBbrbYd?=
 =?us-ascii?Q?H5JblxC9dfk8Vvin4SZUEonzNo7/v0p9h+bFka3C5ubbUPPfgVIN1tIdt0Wb?=
 =?us-ascii?Q?m6RizSkvH5UmURKzVONRBpDdGQjOaVroMQ/N5eokGTRpjfdDJVn089+wVtVR?=
 =?us-ascii?Q?KSPSMOj9bk9RP3CxHd7Z31j4zyhZBOi4edcqNH7RIiXVayjM7zKLdySdA6Nj?=
 =?us-ascii?Q?rep9K0FsNvN70CT3fWqNeM++TAkgkqdcS+YzTHlht+3Zd0Ti8dInq2UL0010?=
 =?us-ascii?Q?poVv0Aatk/r8fyr7M6i9iBtvbgr0lTtggvjTorWqKTNrSbsqpsPmzB2XoRX6?=
 =?us-ascii?Q?9l6m+mVGHpjYwtcj1yI1EKsD?=
X-Forefront-Antispam-Report: CIP:165.204.84.17; CTRY:US; LANG:en; SCL:1; SRV:; 
 IPV:CAL; SFV:NSPM; H:SATLEXMB04.amd.com;
 PTR:InfoDomainNonexistent; CAT:NONE; 
 SFS:(13230031)(36860700004)(376005)(82310400017)(1800799015); DIR:OUT;
 SFP:1101; 
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 May 2024 14:23:29.8668 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 61704e10-a7bd-4a3d-5dce-08dc7e5894e3
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d; 
 Ip=[165.204.84.17];
 Helo=[SATLEXMB04.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: SJ1PEPF00002316.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR12MB4228
X-BeenThere: dri-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
X-TUID: oSSIAz9P27zj
X-BeenThere: intel-gfx@lists.freedesktop.org
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If the lid on a laptop is closed when eDP connectors are populated
then it remains enabled when the initial framebuffer configuration
is built.

When creating the initial framebuffer configuration detect the ACPI
lid status and if it's closed disable any eDP connectors.

Suggested-by: Alex Deucher <alexander.deucher@amd.com>
Reported-by: Chris Bainbridge <chris.bainbridge@gmail.com>
Closes: https://gitlab.freedesktop.org/drm/amd/-/issues/3349
Signed-off-by: Mario Limonciello <mario.limonciello@amd.com>
---
 drivers/gpu/drm/drm_client_modeset.c | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/drivers/gpu/drm/drm_client_modeset.c b/drivers/gpu/drm/drm_client_modeset.c
index 31af5cf37a09..b76438c31761 100644
--- a/drivers/gpu/drm/drm_client_modeset.c
+++ b/drivers/gpu/drm/drm_client_modeset.c
@@ -8,6 +8,7 @@
  */
 
 #include "drm/drm_modeset_lock.h"
+#include <acpi/button.h>
 #include <linux/module.h>
 #include <linux/mutex.h>
 #include <linux/slab.h>
@@ -257,6 +258,27 @@ static void drm_client_connectors_enabled(struct drm_connector **connectors,
 		enabled[i] = drm_connector_enabled(connectors[i], false);
 }
 
+static void drm_client_match_edp_lid(struct drm_device *dev,
+				     struct drm_connector **connectors,
+				     unsigned int connector_count,
+				     bool *enabled)
+{
+	int i;
+
+	for (i = 0; i < connector_count; i++) {
+		struct drm_connector *connector = connectors[i];
+
+		if (connector->connector_type != DRM_MODE_CONNECTOR_eDP || !enabled[i])
+			continue;
+
+		if (!acpi_lid_open()) {
+			drm_dbg_kms(dev, "[CONNECTOR:%d:%s] lid is closed, disabling\n",
+				    connector->base.id, connector->name);
+			enabled[i] = false;
+		}
+	}
+}
+
 static bool drm_client_target_cloned(struct drm_device *dev,
 				     struct drm_connector **connectors,
 				     unsigned int connector_count,
@@ -844,6 +866,7 @@ int drm_client_modeset_probe(struct drm_client_dev *client, unsigned int width,
 		memset(crtcs, 0, connector_count * sizeof(*crtcs));
 		memset(offsets, 0, connector_count * sizeof(*offsets));
 
+		drm_client_match_edp_lid(dev, connectors, connector_count, enabled);
 		if (!drm_client_target_cloned(dev, connectors, connector_count, modes,
 					      offsets, enabled, width, height) &&
 		    !drm_client_target_preferred(dev, connectors, connector_count, modes,
-- 
2.43.0

