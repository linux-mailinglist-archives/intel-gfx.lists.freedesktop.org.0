Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB7B6B17205
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Jul 2025 15:27:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4268F10E47C;
	Thu, 31 Jul 2025 13:27:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Mg0OMuyc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 152D410E48B;
 Thu, 31 Jul 2025 13:27:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753968455; x=1785504455;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=gb7SFajF9++Jz4Amm6XgIKrn4v+ozOuPrAbMMIn/iQ0=;
 b=Mg0OMuycA/MpaZIvW7dxzEkc4u33zEzsgybLmuRI+/QO+T/RJIPCV9XF
 AA/IW9/dcfjw07spiFI66Kxh75EZONnv1JjU1EEMSz3xuEeWTLhUsNhpc
 FiHpWMCY2surtFT6aTd5DUQ89Qvl49MMfn3iGUkrp4tuJQu5QXcZmX6AL
 t6RQtx7yjyVWR3kfQuPxm9762hh3Vt6/mhdxq+gkMZ+AM/H3X+CD+s6JD
 Qt4cNvEIwLQx1qUDL6HyVSA8Z3U2O3FgNbvbakAU2SNOSgxFF9HoX/L1+
 n3MEZVQ4VQeP+d2W67SPRhbIpmHAbhG9eC9muJ5CXJZS7w+xRaWk22fSN Q==;
X-CSE-ConnectionGUID: e7H/edOWQHeaYR7JQpFh6w==
X-CSE-MsgGUID: 6PBbUYsNQeqKGJExxj8vsg==
X-IronPort-AV: E=McAfee;i="6800,10657,11508"; a="43896471"
X-IronPort-AV: E=Sophos;i="6.17,353,1747724400"; d="scan'208";a="43896471"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 06:27:35 -0700
X-CSE-ConnectionGUID: 8tG9684qTFqaTpFl2dluqw==
X-CSE-MsgGUID: J55gJGuiQ/W+WzxWZ5/vZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,353,1747724400"; d="scan'208";a="163283035"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 06:27:35 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 31 Jul 2025 06:27:34 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 31 Jul 2025 06:27:34 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.55) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 31 Jul 2025 06:27:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LUgRpvSm4Si7AwjTWP8wCuhGT919tidzQSPIoW/QPQVDjAoFJ+PYb8TYe85gOlpZJeFXCO7wIW2O7SZkOeuBL+SP8RI7vaQepGC6rh+Bzt6VaHA6yLjmpXxAWkmk2RtnBrZ9MfvzbdR/gmA5ZnWdUJ7hUj4TuLrEr4Bpzy5RLB91bcpd8+EbjjK5yVfAZLyiR90WFbsZDEaqXPssPGwoPfmMxbSSnCrXZy6TV3ckR6ouk0NkHUuLTaLPIqEMOPG7OslakrVTlHMG/Vd52X1QR/MEUOFUM5e/HLtIvsVfpGx4CVRu7WrT6cZc2sluO/RarWY8oLmRfeQcJx4TCBJ0nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4jS4suYn5hc6aa3PpsRfC3B/NfmsEKPs3Wteg2fAv8g=;
 b=OwgOeA3KaPodJwnlIoCER66Xt9tFTyEbhC0zAb+r1v8s9wnHT8spQmVo+dNLselMXiEb5oIbwst7UBQO4ddTiMBXXyWVvzIAwbBpI6Jd2lEUKNeJzoYaBHt8GgFWfPQIdz/lYgi7iRDSScwcdIjti5R4YVBv+VoXOe3ChJKP7RZcruGxxziB1a7/k3DCo8QCvnVrDf3ZuEh0LL8J1EdskPNNcWbHwXJ6ZQvyUJo/5qk8zzTjMahuGg/qZDB+yKDX+CEHu0m2YUlU6XBED6PneAYmQ6wIf9d8uqgkkIpc2nkwNE97+kdCvLEz3JTlUA8cFclbxovOGy2PwO9kOhU9Kg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by PH8PR11MB6997.namprd11.prod.outlook.com (2603:10b6:510:223::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.14; Thu, 31 Jul
 2025 13:27:31 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8964.023; Thu, 31 Jul 2025
 13:27:31 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <67e0afa2c0c5ad39b9108af15d0496394e674518.1753956266.git.jani.nikula@intel.com>
References: <cover.1753956266.git.jani.nikula@intel.com>
 <67e0afa2c0c5ad39b9108af15d0496394e674518.1753956266.git.jani.nikula@intel.com>
Subject: Re: [PATCH v2 6/7] drm/i915/pch: use intel_de_wait_custom() instead
 of wait_for_us()
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Thu, 31 Jul 2025 10:27:27 -0300
Message-ID: <175396844704.2011.2171397066782049225@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW3PR05CA0010.namprd05.prod.outlook.com
 (2603:10b6:303:2b::15) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|PH8PR11MB6997:EE_
X-MS-Office365-Filtering-Correlation-Id: aa720ea8-f6eb-47e2-d0d8-08ddd0360083
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bXRjSlF4WHE3VUh4VS8yVitvSHlMRUxZcDU0RGxidUJqWnBQWTBpbGFaalI4?=
 =?utf-8?B?RUEzN2JwczdZL1pvSFNhRnVydFZJOTZPN241TGhYRFNYOEVZV2lHVG9aUTBF?=
 =?utf-8?B?M1dTdFJHdW5QQ1BDTDA1Slp0UXJlR21iZDZaVFlVcXRVcnJzdjhlcFZMTkxF?=
 =?utf-8?B?cmtGU0U5MUtqd2JSTzhBWjBXa1NkaVJReUg4MCtBQTRxbnZsZktlZXovZlM1?=
 =?utf-8?B?WFJaMDBtNlBlVExVUUVscnhMVmNYZ2NPWHdUU2IzZnd5M3BlYVZnbElDVXBh?=
 =?utf-8?B?T00xN3NkRDVZUCtQaWZUcUtnSHRFUzFuYWh3NURWT0dHYWtaODdKejJPcmZt?=
 =?utf-8?B?RlIxOEFIalRySG5XcVdnK1FySkg5ZUJZb01wRi9GZ2tlRkZwbjRSN0srbys3?=
 =?utf-8?B?c1NuRVpBRkc4aVdZZnI5V0cyZkx5Y3NHVHdwOVFUMisxMUl2bXpUeE9EODIz?=
 =?utf-8?B?RnpTMmtWa28zMEZkdytqZndJbU1seTF0NFJ0OXRuM2JtTlBlVFg5amExQm1z?=
 =?utf-8?B?N0RJbXBHcVA0dG9HL1BHdi9sMW1ienM2b2lrNjlYbnlQb1dzMFR5RFVxV1Vx?=
 =?utf-8?B?QTZqWW1DREdLTzlRZFh4UEZFUUd3TWRVc0hLTnU3bHVWY0VvWXpnM210RmFy?=
 =?utf-8?B?QXVnNTdpYmRqcXJpWDZyZkowNDNEVlZGd2pjS0xRblY1OFZBRXoyYXB2eXJG?=
 =?utf-8?B?aitRMFZ6RkoyL2dFSUVpMWI1MzlLMGxyRUVhQUp2RzQ2T2pCdFFoWFN5ZlYz?=
 =?utf-8?B?YXZrcjltOXdCaUk1SVNlTjBvdEIvSzF2SnVkVEJpY1RlTDMwRUdFc2lyY2Q5?=
 =?utf-8?B?d1o2WXRhbjhPVC9oWWJ5cmdKK3YrRnZQM2tqakREczVhYS9wVm5JZmUxbkpI?=
 =?utf-8?B?SFhsa2N0YXNJSFVmaDJmdThnS3VhSG9BbzRINldkaEFNUkpKMUZjSDdKK0Ex?=
 =?utf-8?B?c0tUZFhIWFNwNnBNbW9pRG5vRThxMkx6NDBtUldmOC9JZG4ralNxNHo5R2po?=
 =?utf-8?B?Z0ZpcmhjM1FmOUZVZWdpQk0vRVgvNExnWHk3bDYzZysybkFBVWNTbjVxU3Yx?=
 =?utf-8?B?eGxMMTl0V1FQOVFid0Y4OUl3TkthdlRQQjBvVEJYallqZlRSYk5jOXlUaGdp?=
 =?utf-8?B?dVdpdDdCbi9oV05acTNuUGVLN0EwR2NvS2lzVDltRXc0aGhia2pNdXNmYmhT?=
 =?utf-8?B?K1pXRmdxOHBsUzlra0MrbTVTcVQ4bXBPVGlMN3Z2azlmZkVwL09zSUI3azAr?=
 =?utf-8?B?ZEV0V2ZHWFFjN2FOQkUrZXZlWDNwNlJseThlK1FtSXVaRVJ4Vm05VS9vZWN1?=
 =?utf-8?B?a0RFbzFSalNRSUpWWHhITFByZkgwdE56VHd4RGtLSzJRbkJHWGQvV2U3SDhV?=
 =?utf-8?B?SDdVK3dRZElVR01Bckp0N0JnVkEwNkJjR3hKRWRsdWZNNUpGZG1oMlkrdGM2?=
 =?utf-8?B?eHBSL1NTY3dLM21tbHN3ZE5DcnVQNDR3RHp0RjV5dVZsb2FPTVpxVmtOakJZ?=
 =?utf-8?B?VFlXNEt6eVJDUytLS3o3WlpCaXBBMTNTYmhoakd3QWZ1eUNqekc5OHRBMTN6?=
 =?utf-8?B?S3pqY2J1YU9kMVhUQU01NEdWakwvSTVaSEZpTFJOYVh1Ymg5a0JYNGZxdUtv?=
 =?utf-8?B?TnVZWjNRckJ2R3dleDJXUVpYVVo4VG0zQVBZblQ2eis3U0tWdVBpZno2RjJn?=
 =?utf-8?B?ZDBiSHZhMVh3ZEJrVVUyY2dlQXFjSHZ6dm9VeVgrZG81WVJENGRMYnNpejN1?=
 =?utf-8?B?YUdiZ0ZsdnZuNHArMVVrbFhMTGJKZXJYcDZQQkpHUnN2Z00reHZaZ0M2bEwr?=
 =?utf-8?B?MitkWTBYVjhsY21OSytucXJmR2xzYjdOT3psck1QTjJDS2tzV3NIeWFNMlNB?=
 =?utf-8?B?YWo4ank4VjV4RmJpSm5GZmppYkl0S0VEYzBlSjZ0ekd0UkVXWHdlaXdlNCtD?=
 =?utf-8?Q?6O35455cWbI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MkVBNHhzM0R4NzhuRnBlRkJmR09SYkgwSHBXOUVZOEpxRWd4VnRCaUxHN0py?=
 =?utf-8?B?N0M5dlFRRnNkNy9XQ0RHREs1SS90UTBIMDlzL0tDV2RiZlk2WDJIajd0cW9s?=
 =?utf-8?B?WlB6dGxwMFptL0c1cllITm94VXdCRElkdlZDRG9tTlcvaVhBV1ZqT3ZKdC81?=
 =?utf-8?B?ZVdOaXVDK2FWdEpOajluZTNsemRUZ04vVkZKYnpyOHJRNTRLV3U1aGU2SG5y?=
 =?utf-8?B?OWEyUGhTWUl6SElKSk5nL0pWTlJQMDdXTE84RGsxNzQ3SmNhaGFmSGZ6TFRS?=
 =?utf-8?B?bVpSemlPYU01ZVdqY1FQK21URjVUSUhiclFDRmlJOC9mTTlVQUxhQXYwb1Vn?=
 =?utf-8?B?S1ZQdkYrb1ZIVFcrb0R0QkpDZmZ5T3NoMmtUZmFBL2dJOGxlc2tQcERxMWhr?=
 =?utf-8?B?SmY0cHVkeEdWV2VrNG9sd3Vhb3JGNUMyU012Nkw2SzJ4OE5FY3h6MFBPRjNq?=
 =?utf-8?B?K2hkLzM1WnRUbWlNUXFObWg5WTREUHFBRGwzOUQydDJocEFjVDJIUzdWWUF6?=
 =?utf-8?B?S09icWtjSDNURG95dWFMc3YwWUFkUC9wNHo4L2lPRVRTODExWFhVa2VwU1U0?=
 =?utf-8?B?aDQ3a2NxLzFwSGdJL3J1d09jSUZIVkdKTldkNnpBK0JWUkowcjlsWkpvWW9N?=
 =?utf-8?B?ejBRZkcwWHVFc1pZSWR1NjNzL2M5TTV0blJVK2FpL2pUalRPY2FTK0drQUZl?=
 =?utf-8?B?dzlEanpkSGlUdGpHdlBxR1doSC9PZXYzQlVNR2JSQ1F3ZXJoSXh0ZTZ1SDl1?=
 =?utf-8?B?MGg1ektqOHpTTjFpQURIVjZTdFJhT2VNM1gyNTRwZ2dyZGRjYnc5ZVpxNDIr?=
 =?utf-8?B?RWJtbC9IZE9yUktHd1lSQmlnSmNqVmNQUkpZSWZrRXF1U0hNWXRFSmIxSy9I?=
 =?utf-8?B?OTBFTEVIdzdIL0p5MmU2OHJaSzJwTWFjRmRyOEdmRERsU216cHk2c1llZStj?=
 =?utf-8?B?T2h2RlFiQml4emZCK0pUc1pSL3NIeHJyMlNmUlJzbUV3SDAwR3V4NVdoaFIy?=
 =?utf-8?B?NVV4RnBxNW5IN2l3REdxRHRmUGFjS1JLZWE4S2RrZUdQbFVhSEgzSUlUZU0v?=
 =?utf-8?B?d3ovZEY3bUpWQ1I1N0oyYVNoU002NFJJVzVBd0NYdGNweDczcjR5b1hNbGxL?=
 =?utf-8?B?Z1NDY09xK0RHZ1NHbFR5MWJ0aFp2dG9FZkpvRjEyMzNJV08rRWJpRGpBMXhZ?=
 =?utf-8?B?L0FIUy9tT1RORWJzZXRGSWZwMERpRFNrdW9CSEUxaE53cjhDMnR3V2tRM0J2?=
 =?utf-8?B?anh1Yjl4cllrdzN4K0tDUjJEb3RmdThlTG8yR1FHa2QvNVFncVBqcFY1TFc4?=
 =?utf-8?B?WldqSkdGenhhb0JOVDBXcHVNRkt6a3RQaGxsL1RldjFpdWJKcW9BMUtpNHR5?=
 =?utf-8?B?QUNlcnZlaUZad2dnaGsyUVlWSzVJbUR4ejdBQ1RNc1h0citsYTgzd1hqOFRL?=
 =?utf-8?B?eDFORnBILzR5WXc5eGpTNm9rMWtWdWxXc3M3UGpCM0hiNGNLNVJ4c0FteEhH?=
 =?utf-8?B?ZVI2aDNxcXF2aW1hM2hzTUdGUDY2d3ovVGRRWkxHU0xUU3YrLzRZK1VEWGJl?=
 =?utf-8?B?MTdlV2o2VzBIeUNwdTlLbWg5S0Y0MlBFOWYxK0lTbS82TDl6bmNFN3duMlVJ?=
 =?utf-8?B?aXU3eHdhaDdBUzZQNGJRUFBVdVp2NmlWaFdXYjN5eFh0UC8yLzVQOWR0eHJS?=
 =?utf-8?B?T2NXSUxvTHZlY1l5VWRtcW43RVdjUXJ5dkJpR1hGcWZ4K2RGVzlVVk9Mb1F3?=
 =?utf-8?B?WEtBSUhCWHpBMXI1Yy96RCtscTVtK3RraW5pRXNWaUxBQ2VWQnJ3MWRLUjRM?=
 =?utf-8?B?Znd2L2UvbUo3ZGRKQlBiQWQxQWQxbDdPRWtlenBjYlpGK2xrMTE1VGw3MmlM?=
 =?utf-8?B?V0tLdXhSV0x3Z1hqLzhGZnNMZFMzOEUxaVBuL2Y2eGZ6aTFLMncvS0FXY1Rt?=
 =?utf-8?B?Z0NFUjJ5bzZlalIybXVyaFUzUTVJVi9UVDZpRlNidWhTUFc5aDZkNlh0MW1l?=
 =?utf-8?B?eFpRM3FNbm0veStDeE1zejRjV2ZaUVN6M2YwUi9EVk1mUGF1dkFjYUVPU1Mw?=
 =?utf-8?B?QTNZNEZQbS9HWmFRbG1ZQnNlTUFOUUg1YWQzam9pZktzaFo0NDRhQS9jazUr?=
 =?utf-8?B?amw0aWpYRkVQMGhnaVNVT2hrR0ZFbHljWFlRY3hWa005cjl3eU0vcHo5ZXda?=
 =?utf-8?B?b0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: aa720ea8-f6eb-47e2-d0d8-08ddd0360083
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jul 2025 13:27:31.3409 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0W9G6Gi80On6YGUYqgBOGIUV4kwlzBdYzpP3zNf5KjFrE2vH0OmIDo0HZ9ZN+JXndatnnkJilRKLZAkNKfM21A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6997
X-OriginatorOrg: intel.com
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Jani Nikula (2025-07-31 07:05:13-03:00)
>Prefer the register read specific wait function over i915 wait_for_us().
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/intel_pch_refclk.c | 14 ++++++++++----
> 1 file changed, 10 insertions(+), 4 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_pch_refclk.c b/drivers/gpu=
/drm/i915/display/intel_pch_refclk.c
>index d3c5255bf1a8..9ae53679a041 100644
>--- a/drivers/gpu/drm/i915/display/intel_pch_refclk.c
>+++ b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
>@@ -17,16 +17,22 @@
>=20
> static void lpt_fdi_reset_mphy(struct intel_display *display)
> {
>+        int ret;
>+
>         intel_de_rmw(display, SOUTH_CHICKEN2, 0, FDI_MPHY_IOSFSB_RESET_CT=
L);
>=20
>-        if (wait_for_us(intel_de_read(display, SOUTH_CHICKEN2) &
>-                        FDI_MPHY_IOSFSB_RESET_STATUS, 100))
>+        ret =3D intel_de_wait_custom(display, SOUTH_CHICKEN2,
>+                                   FDI_MPHY_IOSFSB_RESET_STATUS, FDI_MPHY=
_IOSFSB_RESET_STATUS,
>+                                   100, 0, NULL);
>+        if (ret)
>                 drm_err(display->drm, "FDI mPHY reset assert timeout\n");
>=20
>         intel_de_rmw(display, SOUTH_CHICKEN2, FDI_MPHY_IOSFSB_RESET_CTL, =
0);
>=20
>-        if (wait_for_us((intel_de_read(display, SOUTH_CHICKEN2) &
>-                         FDI_MPHY_IOSFSB_RESET_STATUS) =3D=3D 0, 100))
>+        ret =3D intel_de_wait_custom(display, SOUTH_CHICKEN2,
>+                                   FDI_MPHY_IOSFSB_RESET_STATUS, 0,
>+                                   100, 0, NULL);
>+        if (ret)
>                 drm_err(display->drm, "FDI mPHY reset de-assert timeout\n=
");
> }
>=20
>--=20
>2.39.5
>
