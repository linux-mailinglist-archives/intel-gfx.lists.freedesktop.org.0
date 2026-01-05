Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8059CF5173
	for <lists+intel-gfx@lfdr.de>; Mon, 05 Jan 2026 18:53:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BE2A10E23D;
	Mon,  5 Jan 2026 17:53:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W34/B7Qp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C82810E204;
 Mon,  5 Jan 2026 17:53:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767635613; x=1799171613;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=kEbRtNf45GLC7cge06+8WXBlWBNUHjr7cJIhlvaw4MY=;
 b=W34/B7QpnuhFGrd24lAT+Kq/GqyTGbtBubNwT5zsePCZJQNGsPGuDAuL
 RCM69rnlpSFvRVx6aH1VReYMP9/gEJG9Sgx5qOTAHI5CdC4UPgJoK99KY
 3TsVf87A13WwXZZGAqUBc1bPsiJQUfhriGUqKAPnqklJ27ac7zzW4xXLS
 yiAn6/me541WkY1LWci6Il5gAl6rofYmVs4hvnzqP5x2+DF1gkBOwqrxt
 aZai77KuZHxCykxGbewV5/UH0/togIbvKrW0U9iAXNpsoa07amVOKRPb3
 eMRL93tI6UxglHLizCS1eSkHt2K1HaQ4SeYAzD+ulxv3HaQVe0FRfOoGy w==;
X-CSE-ConnectionGUID: FW+bEUsqRLKEh0K1k3z1vw==
X-CSE-MsgGUID: sBwnSnNySq+4jJruXd7RtA==
X-IronPort-AV: E=McAfee;i="6800,10657,11662"; a="86591470"
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; d="scan'208";a="86591470"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 09:53:32 -0800
X-CSE-ConnectionGUID: 56PyaiQ1R3mHfyU3O6K3zA==
X-CSE-MsgGUID: Un2KdNqTR12sBDhaczSPbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; d="scan'208";a="202689581"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 09:53:33 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 5 Jan 2026 09:53:32 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 5 Jan 2026 09:53:32 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.31) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 5 Jan 2026 09:53:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lROEcJfexOTE8WrHcHF872+XJaUVt4zGa5+IVMac6UNc2lvvxiiCA6B4L9eVE2KoAqYyn78Bzlwq85gBEWdbKCoub6Do4chqULBvDaJBqF4ch/J1f4Z0YomhrG4sIDjninX4SOQIuj7np92CguxF+BLKbym70qnyobs0G6aMeyyLb5Qx2fViyPfruSfaAdoWuKXI1+u7tsiXtFMHeRJeOJtPv4MO9xvuamwnD5QuwOEDJJYV67a+OEu6QEqRO1WMiZZhX21RBtvRHSU9MA/sypCYzNzA60EK+j6/COtoNvKCSBsiG+KkVC+riGZmk1H9oUwu3JQqTnkDkvaNHTrmQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=E8/0HTiSu+7RpqsnZT48AUcVHNDOyENzbQlZ/NkteEI=;
 b=oFjfYeYni/uY3gNEUtfAVYSBy8ws1AP2a9CWp6mGphoscf5+0wyky7hglJRap6GBD9UpJ6CI5dYrCqqiIVm92Kf+zHRvNmlgwP0Nj0om6A1jB3WunK7u5GgRq0iNeVSk2xzwICoqi8/fQEoE2UtOqy38FENxMYVRcvpLBnJq8hgqsyJ89gsWBjmrXdroC9lnOHCUvUjjYXcEzfo8ncgSbtcr/5p9QH2r+CfFAnnR3uSoOdRvpryZWpCmQ86MFZcCsLdrSKJgSqf5qqxOwWe8FMxJP/N2Ac0OBpJWwDYkIRXhyoQS8r/08QYDowTbxz4hmPMUOKdPsquHh2rA5HNppg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SA1PR11MB8840.namprd11.prod.outlook.com (2603:10b6:806:469::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Mon, 5 Jan
 2026 17:53:30 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%3]) with mapi id 15.20.9478.004; Mon, 5 Jan 2026
 17:53:30 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <5f2fab48-06b8-4bc2-ac59-041f85bbe2ff@intel.com>
References: <20251222-xe3_lpd-no-cd2x-divider-v1-1-96f1e112baaa@intel.com>
 <5f2fab48-06b8-4bc2-ac59-041f85bbe2ff@intel.com>
Subject: Re: [PATCH] drm/i915/cdclk: Incorporate Xe3_LPD changes for CD2X
 divider
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Mon, 5 Jan 2026 14:53:25 -0300
Message-ID: <176763560584.9480.18038205129249216011@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: SJ0PR13CA0121.namprd13.prod.outlook.com
 (2603:10b6:a03:2c6::6) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SA1PR11MB8840:EE_
X-MS-Office365-Filtering-Correlation-Id: 5d02a0ad-4d4d-4fe2-9686-08de4c835603
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZFA5MnJkRkhoRTltb01rdUMxdWpMbFJEc2RDU3AwTWphYlRsaGlIWnBLYStQ?=
 =?utf-8?B?bklLU0VJdnYxcElMbXVXT3BnUHhHOXZodXFuUmhBRGppQnBhRC9KTkVpdFlQ?=
 =?utf-8?B?NVd5N2xFK1pjRVkycnBDaXdHaVMzaFl0NitoNGhSS3BEMTcxTmFvUklBaHd1?=
 =?utf-8?B?Vi9KWkgvK0gxdWdiSWtiaHAvYklKcCtVMkRkMlNhakh0SDY4R3YrbWNzeCtk?=
 =?utf-8?B?d0JoMy9COUx6NFNGVVdDUWQ1YjVwQW12SHJ2aGIzcWhVTEhQTWlZSHNOdVB3?=
 =?utf-8?B?b3ZESW1ydWYxQVdNNG9rc3pRV3lnU3JqQVZBTktmYkg4N1pYSUpHcDJNVUtM?=
 =?utf-8?B?VFFxaldVQlFjQVZUZjNKNG9saHlIM2hxMi9NZ2ZNQU1MdW1HR0JLTEt2OHhh?=
 =?utf-8?B?R0tLQmZwUTllYnpCcWdtanpPbTFSZDhtTnVQNTMwZ3pzb0NWdG5rakxWSllU?=
 =?utf-8?B?bjVWWDVndUlGaSt5VnBBbXcraW1HZjNDQlU2N2NORW1xRGdWRmFBOWMzdzBF?=
 =?utf-8?B?WjNvVklUMXF0YVJOZHZyTWNidFJ3T3VNK3RiUmhqZ3IzVUtYdDlpYlZuMHVK?=
 =?utf-8?B?M01Dd09uZFFiRXhuUGxzRHdxQ1RJejM1TmwycHJScnJ1VWxLQmpFRzBXYVhl?=
 =?utf-8?B?aXJMVzU3REF3T293YjNPTy9jeHpLckRFVlhsMXdic2t0TXBzRXpTL3N1ZnND?=
 =?utf-8?B?ZkdGdTJtSTlJZm1xWE1KWGVwVnNSL2dKQ1BOdFJGY0lPK3NuL0tGNlpRanJH?=
 =?utf-8?B?OVdOenpHci95VHBpaTVGWHg5NlZreG1URlF0N283ZUxhbU4vM25kMGZYbXlo?=
 =?utf-8?B?b3FGUE42eFVTK3pvb0dzTy9yNHBwZE9wcGlMa2JEK0VDU21mUXpYbXVFeUxk?=
 =?utf-8?B?QzlROU5xSEsvUkpMVXBtMjU5ZWYwWXZSWU4yRWRTWVE2dllNWXptd3VKY1RI?=
 =?utf-8?B?dGxyckpaMnB1UkVPMFl0VTN0Z1c2ZC8zbWtVZk1pc0JtdjA4aUhnUlFEWlE4?=
 =?utf-8?B?Z2dyWHNEUlZFRWwzS2E4N1VNTEJvU2ZZYlM5N1BoVWtCTWRyZU5nb3BLakN4?=
 =?utf-8?B?Uy9tSDJPUE84WDFYcWhzdlNxQWVycENwNEw3UmhtcmMrNVZQMEVTc25LcVVm?=
 =?utf-8?B?Q3BnVFdWVXhaRGlGZzhpeVFnZlF6aVBIM0YvQVdZREdtYzZQdXg4bjNZS1Y4?=
 =?utf-8?B?QkcvMTRxVmRUdXJOdTN2enJ6R2Q3bytNRU5HSlJLLzcvYjdKT1h3M2Z4a0ZP?=
 =?utf-8?B?Q3BSTWNQRWFEZGNhNnUvMVVYQkFZRWhIdG5kbEtJaUpPSXAvcjZRV2Q5d2tX?=
 =?utf-8?B?LzRkN09FaVZjakpIbStTVk5zNnBxbFpVaFdYazEzNmtHazFjSU1PLzBvUzF0?=
 =?utf-8?B?bWV0R1FmT2lqeXhXMm4wTkFTY0kxWXBPNXRTY01Vc1ZKdmZHTlRDQ3IvNy95?=
 =?utf-8?B?bTBiWEh2Y2pPejMrWjJzdFFtb3lRekFuRDEyeDZZZW5OQ1J4Y2p5T1VjbTFC?=
 =?utf-8?B?SHNLQ3F1Sm4zdVZWY1Nvdk4rbU1qVEZIaFhnN2lTZDYvSTR2czdDL3V0N3h1?=
 =?utf-8?B?Y0dJU1dxTVA1ZFRTVCtQQTFwdkNQWnFpc0UzVXBySnVkOHhJYktsT0ZFelV6?=
 =?utf-8?B?SnY3b0JPbUd1aFhaY0tKeXkvN0ttbnpTdXpoUFBrclFFdUh3SHR0Ym1FZzY2?=
 =?utf-8?B?eDl5REgwWUxidVpmZnI2YXZiRXN1N3NTOUp1Y1VaeXlMTy95cFcwMUg2Sm92?=
 =?utf-8?B?eiswdU1KVU1XLzQzUzg4RStyaUlDb2U1OWpjam91cmFzTXJSRWhQc0JpdXBn?=
 =?utf-8?B?dFRzNXRnT2tQMVcvbnV0cEYzbXpiaGpZY05Mekx1M2FZR1Y1SnF4QWRlSzdy?=
 =?utf-8?B?UnZ0SUZSZXVGM01oN2VxQ20wS2grZ2ErUWowSzRBa2xQcjF1MjYvS0ZwT1NW?=
 =?utf-8?Q?jDBDSnYyORV8F2MLNYihxpgfhvRdcI5T?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UysrOHo2ajluSVRFYXlKaWlRZHlUQmJFdDdMMEdLNVh3WkxPVWFaQlJFdVNo?=
 =?utf-8?B?Tmx2Tmh3d2hwd0hWQ09oSGpEWnRhTU42R091MTRIR0NRTlYvbHJOUEc5Um1P?=
 =?utf-8?B?d3hZcUI3VkNxUmlRYlM0bUF4bWwzUjlJNGhXOG42OXBnbkZDZHYrZUJ5a2Qy?=
 =?utf-8?B?V2tJVGlFNFNuZ3g3empEK0NpcnBFc2pzV0N4bzNhSC9LQTNlYnVkNUtHY0M3?=
 =?utf-8?B?MmVOYkJFYWlPNHVmSnd2eVJJN0x3ZS8ybWlDUmdNd2YwQWFaWGJIVW9COU9k?=
 =?utf-8?B?bVlwNFc5V3E5VnRiVU5GNHVBUVVqOXZmL1hlTVo5R2kzVDIxMmk4cEpWVStT?=
 =?utf-8?B?MW1JU09kcHcveEtaWnlRUnRRWFpQQVlpWU5iaFEwQ083ZXo2TXNhYVZvUGJv?=
 =?utf-8?B?TEdBNWQ5cndRUU5XL25oMEsyVE85eTZoQ2Y5dUdNVnIxRmY4RVhVRnBZeEho?=
 =?utf-8?B?dDZvVkY2RjFnRkR6b1hVVzRFaGRhd3d2aUFyaG42bFZITjg4ZGk1TFliNDlL?=
 =?utf-8?B?UUp1Skx0UStPLzhraFcyVVVOREVrS3hMeFZpQmZtS3pEMG1zalI5U0g1VW5i?=
 =?utf-8?B?dHdwQnlveW5lbWg4NkdwU0xDU09RMTJRNWx3ZVVRaGJEZ3pGaXltTnlUcXhh?=
 =?utf-8?B?U3JuSlNJRk5XVWtYQzlsd0ZCRnJTa3RUVzZPTXR2Z21TSkdVZXh1QkFLbVJy?=
 =?utf-8?B?aUVkb2N2Q09pR1A5bngrYktkZzhhQUkwRVMyUWZpeDNMNjFIZHdUUWVBN0Rh?=
 =?utf-8?B?R0tzQ2RQdit3MTl2Njd2YWhacFBzWXVmVy9kMmV6b2pVK0RoTEVCNXhRQzBM?=
 =?utf-8?B?VUdQSGxqT1BTdXFWT3FwOFNEYVN3MGpLaFcxRmFqL0J3Uk1RN1ExNkR2a05J?=
 =?utf-8?B?R1QwMXl2eUZLVFdRejgrZ0JKUDFvZDBZeXRhdUdHU2J3VjZrK0JnTEhTcVlI?=
 =?utf-8?B?cGRwQkd3SjJCWUdsMVJhQUJnekNOYlQvM2hTdFd1YXh1ZC9DZTBCWXIwam5W?=
 =?utf-8?B?ZHplTVJaZDI1aW5qVVB4NDZZcWZwUlJHdk1hRnlzY1p3ZjJmL0pDRWdOOTZH?=
 =?utf-8?B?amtPTnRyalp5TThMR0UxVzJGK0dMcHBzdDgweXBGdkROSmFOQTVEbHVjSjVX?=
 =?utf-8?B?V0NUN3Q0WG1nRzd6eGZjTnV3czlmN2FvMXVLK2tCY2VsMzRHcDNkbjhDMFo1?=
 =?utf-8?B?eWxsMXpWTEZycERScW15eXd0dVRYVm9sU1kvY0lBOEY3ajFwZXpSVDZqSFFR?=
 =?utf-8?B?ajhWOFN2amVGdW01Y1gwWHhoZ2wwcU84aTVMUnJaZG53SXBnSDkvQlJVcFR0?=
 =?utf-8?B?R0FQMFJBRUpyVVBPVHhQaVNUZGlUcGl3MEh6azNreENhaTVWVWk1VkY3SFJS?=
 =?utf-8?B?WWorcnlQQ0tZQnFiYUVSVkFoQWF3SWRkSjc0WGZZdE5kYTFMMW9mRGZ2YWJ2?=
 =?utf-8?B?bTRic1lWNkQzNVdoSmNISXNUaHNTT2xlRnZWb2t4MlJXNm5Bb1UyV08vOG5D?=
 =?utf-8?B?ZDVvbHVkSS9SVm1YNTlFN3c4NmMxdnh5ZEhybXgzZjYzb3dEUW1RL0hCU1pF?=
 =?utf-8?B?OUU0K255clMyVlhPeXI0OWZYTDQ1MlFVSW5KckxIdUtPNnFMK3htQjJYY0Nn?=
 =?utf-8?B?VnJSSTlTRVU2dTB3eDRQSC8vazhvS1pMVHBSVDhCeWFINytTaGVlWThiRHk2?=
 =?utf-8?B?N3dKWFZoNklIUVNHcmttQnRkZFRGaGpidjJJYjl2Vk1LU0p6b0hIcTd6VGs4?=
 =?utf-8?B?a3ptSG45Nml2N2FXd01sZGFVaGdsR0tIOFR5TlY5WUc4MkZVTnFqWVZTT2U3?=
 =?utf-8?B?NGkrQ09wdXdTODBnSXU5enE4cHpNMW5JS253TWZKdVl2Y25zS3pCVHM3dXBj?=
 =?utf-8?B?WVYxb0UxN2FPbnFUdzhxKy9SYThLR0tBZjRGdmhwczdWRFhIaDNWS20vMGFC?=
 =?utf-8?B?MW9DQXpRWGVYOGppUUtEMUZERlhNQ1pBUlR2bndQT2hzL2ljZWNkaTFCbWJq?=
 =?utf-8?B?NkhQSDI1RlZkZklnSXFsN3NibW96cjI0TXZSVjN6cTg2VHdURDJHTEJCdlBu?=
 =?utf-8?B?RnhGd1JYQjZHQTJ4RTJRQURPMFhVckZXdWNjejRjYzdVNlR2WWpMZWlJZERw?=
 =?utf-8?B?a0w2bURLOWNtdmNFZTA0b1BleTFwSjF6WHZpMGU0Q1ZvdlRlL0xGcUVvamsy?=
 =?utf-8?B?MFM0TU82dDlSeStzeG45OGVvZDdpOEdpVmJlRkdiVHowelF4dlIvWjhCV3or?=
 =?utf-8?B?RVRaV0FPa3gxZ2psNHc4ei85bUJvUjJTM29aQUVrcitCa0ZhMTBTS1d2dUJH?=
 =?utf-8?B?OHhvVFlaeEthWnFuS3JlZ2p3K0l2d3BWcCtlWnhSQWpHVmxQc25WZz09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d02a0ad-4d4d-4fe2-9686-08de4c835603
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jan 2026 17:53:30.1721 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yVr3d+MiiGCZLMulbBHUb9RdJelOU0N6G8f0PdZNfVED0RvZZMIxw8dXntF9CPMp7fQ5DJvnbRlrEwJ71Abkpg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8840
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

Quoting Bhadane, Dnyaneshwar (2025-12-31 08:54:21-03:00)
>
>
>On 23-Dec-25 3:43 AM, Gustavo Sousa wrote:
>> On Xe3_LPD, there is no instruction to program the CD2X divider anymore
>> and the hardware is expected to always use the default value of 0b00,
>> meaning "divide by 1".
>>=20
>> With that, the CDCLK_CTL register was changed so that:
>>=20
>>    (1) The field "CD2X Divider Select" became a debug-only field.
>>        Because we are programming CDCLK_CTL with a direct write instead
>>        of read-modify-write operation, we still need to program "CD2X
>>        Divider Select" in order to keep the field from deviating from it=
s
>>        default value.  Let's, however, throw a warning if we encounter a
>>        CDCLK value that would result in an unexpected value for that
>>        field.
>>=20
>>    (2) The field "CD2X Pipe Select" has been removed. In fact, some
>>        debugging in a PTL machine showed that such field comes back as
>>        zero after writing a non-zero value to it.  As such, do not
>>        program it starting with Xe3_LPD.
>>=20
>> Bspec: 68864, 69090
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_cdclk.c | 27 ++++++++++++++++++++++=
-----
>>   1 file changed, 22 insertions(+), 5 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/dr=
m/i915/display/intel_cdclk.c
>> index 0aa59d624095..684b8437951b 100644
>> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>> @@ -1933,6 +1933,8 @@ static u32 bxt_cdclk_cd2x_pipe(struct intel_displa=
y *display, enum pipe pipe)
>>   static u32 bxt_cdclk_cd2x_div_sel(struct intel_display *display,
>>                                     int cdclk, int vco, u16 waveform)
>>   {
>> +        u32 ret;
>> +
>>           /* cdclk =3D vco / 2 / div{1,1.5,2,4} */
>>           switch (cdclk_divider(cdclk, vco, waveform)) {
>>           default:
>> @@ -1941,14 +1943,27 @@ static u32 bxt_cdclk_cd2x_div_sel(struct intel_d=
isplay *display,
>>                   drm_WARN_ON(display->drm, vco !=3D 0);
>>                   fallthrough;
>>           case 2:
>> -                return BXT_CDCLK_CD2X_DIV_SEL_1;
>> +                ret =3D BXT_CDCLK_CD2X_DIV_SEL_1;
>> +                break;
>>           case 3:
>> -                return BXT_CDCLK_CD2X_DIV_SEL_1_5;
>> +                ret =3D BXT_CDCLK_CD2X_DIV_SEL_1_5;
>> +                break;
>>           case 4:
>> -                return BXT_CDCLK_CD2X_DIV_SEL_2;
>> +                ret =3D BXT_CDCLK_CD2X_DIV_SEL_2;
>> +                break;
>>           case 8:
>> -                return BXT_CDCLK_CD2X_DIV_SEL_4;
>> +                ret =3D BXT_CDCLK_CD2X_DIV_SEL_4;
>> +                break;
>>           }
>> +
>> +        /*
>> +         * On Xe3_LPD onward, the expectation is to always have
>> +         * BXT_CDCLK_CD2X_DIV_SEL_1 as the default.
>> +         */
>> +        if (DISPLAY_VER(display) >=3D 30)
>> +                drm_WARN_ON(display->drm, ret !=3D BXT_CDCLK_CD2X_DIV_S=
EL_1);
>> +
>> +        return ret;
>>   }
>>  =20
>>   static u16 cdclk_squash_waveform(struct intel_display *display,
>> @@ -2136,7 +2151,9 @@ static u32 bxt_cdclk_ctl(struct intel_display *dis=
play,
>>  =20
>>           waveform =3D cdclk_squash_waveform(display, cdclk);
>>  =20
>> -        val =3D bxt_cdclk_cd2x_div_sel(display, cdclk, vco, waveform) |
>> +        val =3D bxt_cdclk_cd2x_div_sel(display, cdclk, vco, waveform);
>> +
>> +        if (DISPLAY_VER(display) < 30)
>>                   bxt_cdclk_cd2x_pipe(display, pipe);
>Hey Gustavo,
>Please update this line, function=E2=80=99s return value should be ORed wi=
th val.
>
>i.e.        val |=3D bxt_cdclk_cd2x_pipe(display, pipe);

Oops... Thanks for catching that!

--
Gustavo Sousa

>
>BR,
>Dnyaneshwar
>>  =20
>>           /*
>>=20
>> ---
>> base-commit: f2a0e58c77845e1a5cb6c549dc02b2670042e588
>> change-id: 20251222-xe3_lpd-no-cd2x-divider-48f9f0972f98
>>=20
>> Best regards,
>> --
>> Gustavo Sousa <gustavo.sousa@intel.com>
>>=20
>
