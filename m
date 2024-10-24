Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C17E29AE8B4
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 16:28:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3D9D10E94F;
	Thu, 24 Oct 2024 14:28:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Qm4fo7xq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94BB210E94F
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2024 14:28:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729780127; x=1761316127;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tvmsY/KMLepvd6oqGSwEQkgKoMzyD3Zn4O9sYqP+4Jo=;
 b=Qm4fo7xqpJXU5pq2Swg8FoyoppHPBJqXZmzQDy2A/1nABoDfyUja7CZ+
 V7OmOEi7reO9BryhNDg5CVSJ7BQgrv3HSwdYdcqZtM0nY7TjKwJAvqDAR
 QwQUT6/zV031n5gXarPf0qfcDjTe41piq0ehGQxnyQz2Cx5d8dN6Q4klc
 lqvNqxUZUt6Qiw/cX6kKFf6KTC9NZxY717wqd0UiOO3TkievK541vIhar
 2RHcKXHDnnwYYq9N7l2BzUSSgBT5Y9lpRL0dCEamH86wpM8bPEfj7Ftdr
 x5sm8Dxt0q/0kM3tnyHgtTMy7n6V7aDxEAQEGzQWKX0ZAyD5tmYlxfaBR A==;
X-CSE-ConnectionGUID: RKgCrCglTi2vjttnSKW4/Q==
X-CSE-MsgGUID: r4iNSTg2SFObVksKJPJPNg==
X-IronPort-AV: E=McAfee;i="6700,10204,11235"; a="29631204"
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="29631204"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 07:28:47 -0700
X-CSE-ConnectionGUID: piPCpjiKRxyrz4NTtsN4jw==
X-CSE-MsgGUID: XSWRd6/wR56bmrxTxq0hYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="84583297"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Oct 2024 07:28:47 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 24 Oct 2024 07:28:46 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 24 Oct 2024 07:28:46 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 24 Oct 2024 07:28:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SMmNBah5qwRU4ReVS7yJeCjPvT+dhpHEMwb1pSa3Dg2FF4Bmu5Ffrf5y7wNY7Fv31cSZ+BbAh1ONGO89j90G7Mjh1SGUiitXC+jV6p8quEJbHf5D8IiCgxN3UYNZBchn2abr3EvtALN4R8s+Zdxz0fjbeWKxLC73PSL0BO1T6EUDYMgCuDAlYUhcY9ZCMUsrN48akPG4Dh03cwZkyp6wz611eux0nt43gGuunibEntli4va6dcUms9l6EdJoMe6PIligrulUDSerTR7cHS08mLl+YkiOsPffgs/NGFsZEdQBXXUxfz8V6UydGTAZT5+uyt2X0o0DC8+GOOYi1UgwVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tvmsY/KMLepvd6oqGSwEQkgKoMzyD3Zn4O9sYqP+4Jo=;
 b=YyfaSDextr+V/TAT0EQeemoSYS1HiIWN93/NLoEadLln9+BLrhG+i6P7eiyWp9KI5Q6eJchTvfu7rFDS4qXYB1Y7FlXwShZrs1BJL5egDnIdCSFdHiyE6FlZrVBvrdAOWAGZcwEo1u6cpDBo8WyNjn1zYYvSH0szAeLDKsMwwtHkXcew5bfGdEDgBrWS5x0g+0UadWOUDUVpAIW9jpRnJM6rSmvvWgUHSWYCOw0jjSlS3jbvZHyheBfBFesvF3+9qe1MbgjynEpEeVkYLKyAk1oOFwN1ax3gj/0pUCcACjmDetTS4JJzmmM1UBbz8IyIOZpAf9JUHB/dPK1atQw8lA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by SJ0PR11MB8269.namprd11.prod.outlook.com (2603:10b6:a03:478::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.18; Thu, 24 Oct
 2024 14:28:38 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::df5a:a32c:8904:15f1]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::df5a:a32c:8904:15f1%5]) with mapi id 15.20.8093.014; Thu, 24 Oct 2024
 14:28:38 +0000
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Nilawar, Badal" <badal.nilawar@intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>
CC: Andi Shyti <andi.shyti@linux.intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "chris.p.wilson@linux.intel.com"
 <chris.p.wilson@linux.intel.com>, "Belgaumkar, Vinay"
 <vinay.belgaumkar@intel.com>
Subject: RE: [PATCH] drm/i915/rc6: Disable RPG during workload execution
Thread-Topic: [PATCH] drm/i915/rc6: Disable RPG during workload execution
Thread-Index: AQHbJILFH2OHZeKX8EShc0Q9h07vMrKSw5uAgAA9nwCAANAQgIAAmtCAgAAUmoCAAALWAIABcg0g
Date: Thu, 24 Oct 2024 14:28:38 +0000
Message-ID: <CY5PR11MB6211F54A4FF6B214B71CC52E954E2@CY5PR11MB6211.namprd11.prod.outlook.com>
References: <20241022132226.1110383-1-badal.nilawar@intel.com>
 <Zxeoi1baLtbqDKIr@ashyti-mobl2.lan> <ZxfcPLgi8tmLiomr@intel.com>
 <c94a44fc-0211-4b83-9faa-cb8d0765f76e@intel.com> <ZxkMo6BVeb7xvhs2@intel.com>
 <3416b828-2040-4deb-8df7-e5a0e7db51b4@intel.com>
 <1f218b09-8385-4bc2-9296-28f7ec4ed2e8@intel.com>
In-Reply-To: <1f218b09-8385-4bc2-9296-28f7ec4ed2e8@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: rodrigo.vivi@intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6211:EE_|SJ0PR11MB8269:EE_
x-ms-office365-filtering-correlation-id: c51d8138-4427-4b1a-e6f0-08dcf438269a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?UTRxZ1FYY2g0MkVuaFRYZXZBQWhRUzdXOHJ5R2dLQ1FmL2xWUGpsS0Y4WDJE?=
 =?utf-8?B?bFdDNlNnZXFIOXlLS2JjNDdKOW9TWlcrTHlhSmkvR0FWTWlqZ1kzcTJtNExT?=
 =?utf-8?B?bnd6ZnhQdjZjSmZoTnFZdFN0N1pDYTlwUWtlUnBqdWVOeU9Ba0ExUE51cWtP?=
 =?utf-8?B?SDF4OVExVUFKY0lwSjRNN2RuSE5hVU9DRm5lbEtoVHM4YnE2Z2Uwc0NRTkUy?=
 =?utf-8?B?bVR2NStqK2ZRQ2Q2cnZRanV3ZWFTbno3VmFvRjFZVU10WTRoZXFWL25UbThY?=
 =?utf-8?B?RFVOWFF4QUlPVEhoUzF2T01TZGlBNDNORzkvcmhVSzFuSTZaZ1FFVHk0cTFa?=
 =?utf-8?B?UzY0b2lSR2tSWTdsR0IweFRGeU1WU2pqUXlSRjU4WkljNS9PYnRFc3ZBc1M0?=
 =?utf-8?B?UlQ4ai9XVk1VY1c4TENsMThKNFJUc29tQ3diOW9Jc3NubVlnMlIyMXpjdGNW?=
 =?utf-8?B?NHNySUd6OEI4SVVLdDhpeGh0bjEvS3JBbHl4bko0RytGSHA2V1BFajVTb2dR?=
 =?utf-8?B?azc1d09xMUpYWGdqbHRLTitNZFpaM1Q5SlJJcjlkQ2VpZlE5U084Uk1IV2Rw?=
 =?utf-8?B?MHl2VHBBeUhrVW8wbmZJbnBOeXo4MmFLZVNmRjVCMmdCeUlBMWNmRXNSb2xq?=
 =?utf-8?B?cURjUGJYeDI5dVRYbWFmVk5naDlNcCtBZm5XemIwbStuRDR6dlkvZFJVMTR6?=
 =?utf-8?B?WnBJd041bEw4ditLUnpEZW9ZdnAxY2toRGJmY1FZY1VHbm9udEkzcTBZNjkv?=
 =?utf-8?B?elYvbVpPa3ZtNVprZ1ZVZm1yK1RwUFVoaTZMa0FqTUN4YUVRWHVSNG9RLzBt?=
 =?utf-8?B?QmNOamgxYy9yRmVoejRPNEZBYUhGTDN3R2Q0SjJkLy8zdWFSamIxRWgxVTRn?=
 =?utf-8?B?ckxyU05Mc1pJc3NLNUlGeS81SzZOUzlZL0F4R1NkWnorTE5NMVNQdnRVUklG?=
 =?utf-8?B?SFBGcGxiMUwxeWlHdzNZelBnQWxNSXdkVHNtNFZxYmJNVWlPNEN2Q3VYb01v?=
 =?utf-8?B?MEJoSlAzcHZkbmNDU1hudFhoeTlNdmdEekZoV2pJZWZjcDhPaXpqbnZRVW5C?=
 =?utf-8?B?QjZzNnpBRENzQ0lzT3gxWVRDTHlEOWJWUG1vZEtjcENyN3lLYk1hMkNIRGZS?=
 =?utf-8?B?QUI0alU5cnFIK2MvZGhCUFZ0ejJlNTRYT0tzczhONGNwYm82ZlFCK0xEL1Ro?=
 =?utf-8?B?VlBaUnhQdTY5R09zZkpMVTMyN0R6Z01sa0JhR1ZFNUczRkUrWkpFd3NmcEJS?=
 =?utf-8?B?WEo2NUwwRlVrVXhZem96bmQxS1VVZkFBSHdOaTlzZjhwS1ZGYjlnQVB1NXY2?=
 =?utf-8?B?Q1N3dGF6NWJzRE01YkFva3VRNkRKbHl4U1VlRjBvQ3dvRWd2a1RLRUtXRVFk?=
 =?utf-8?B?NFhrT09XdXhJR2FFdjQrdUwvOVJlNzE3cjdhaUNxd0hTM1o2bFFaZjJ5WjlT?=
 =?utf-8?B?UXQrbWgzRnFnbE1mdXUrbXBZRVVob1NrcHhQd1VNSExNdTN5SHBrYnNWaTN3?=
 =?utf-8?B?SWE4K1ZiMlFBWFkxTUxZTm9kc0xSRXI3bFVkS28wRDFzKzVneElFVGxya3Yy?=
 =?utf-8?B?SFlNdGJXWHBKeGgwMStsU2NTNk5vUmJkYlgvVkhTRXp0Y2VSeGpPOWN3aVBx?=
 =?utf-8?B?bnpOWU5Scng3V3lsVHRzSndQb1IrNHVWVVB2UE9tT2dpVldqczRCYW5ucVF0?=
 =?utf-8?B?aVBHNkVBZ2FENXBXbUZFalNlTkRwNmk4MlpVNDVqWG5RNFY1eENON3RHWVVp?=
 =?utf-8?B?K29XVGZialNyMUFnbmlRelJZUkdGdG8rYjdCdzFrakZtbkxCMGVoWklvMlN2?=
 =?utf-8?Q?asxUr46KiAsPgfMHHigvxx7e5iWuVzVgpu1N8=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TDAxN0NZWHhKQ1ZXZjNtMTFacWNRYU9IOE01NS9xckRibFIwOGtTRml4Vk9O?=
 =?utf-8?B?U3VkNmdSL3Mxa3ZIckh6RUJ0QVNhZFczeGZaNVBBb01KUnp6UzFxZnI1TXRH?=
 =?utf-8?B?NG5jdGM3TVJHdWJ5bm1aT1NWcyt5ZTI0bk1ZcTROOFlkT1hsdkJsRzFqVkVy?=
 =?utf-8?B?Q1FpZDk4UTl1MUZQYk1jMVNCbGduVTBJSUZkQWF1SUhLYTIyYlIrNXJIWnJt?=
 =?utf-8?B?T2dwMUorMXFiVTVvcGVLUTNESldUSHFKQ0psY1k4dElGanZ5aGc1VTZjVlhM?=
 =?utf-8?B?R0MyLzdxNmo4VHRVY0taZHlOeE5HK2JCN0Rsalo2Z3BmL0RoMXJJbmJRTnlq?=
 =?utf-8?B?b2pOam02V2VEN1owbmhuTUlJcFZnTU1Wd29HQXJDS1pXMWduWHZ6blB0NTBO?=
 =?utf-8?B?cGxvWjlabHhkUDNyWHdkK1NxeEQxcmR4STZPWEJpUjV0eW96eCtzTFNlTkZh?=
 =?utf-8?B?VUVCeUNEWTR6eVRKdkR6V0hJREtabEsrSUVIcWFPMi9lNm5oenJORHI2RlJR?=
 =?utf-8?B?ZTB0RVBZUE1tNVV6Z1IyaVVYUGg0Z1hjbWFpZ0NpSTRVWVFNK00rSHdQSTh5?=
 =?utf-8?B?cWFTZXQ3V1pLbmxSV2NQKytLbUdhMGF5QkxvSSt5TFBrYkRrSTBoczdwMkNa?=
 =?utf-8?B?eDRmeUM4ZDRKVHBNQW9jNVU0QVhnRFBpQ0t4blB6WXRYRjdSWkVyR09jUWtN?=
 =?utf-8?B?VTR5dW9HREdmN0pkN2p6V1JZL3lRSC9EMXVOVjNtVG9ZUE01NUdPdlM1MWRV?=
 =?utf-8?B?dWp0SmIyNTljWEMwVzJVQWVGcjljWkd5WWN2NllzZWNsYTBpd2Z2dnJ0S0FO?=
 =?utf-8?B?ekRmeTd6ZzNuUW5iTU9ER0g0a0xOWFllQmJ2SlQxUk02OUdwYWhwUk1uRzBW?=
 =?utf-8?B?d3ord0NDZVpzRkl1ZWR3T1JOWlVBZHZnUjlpdXN4WDNjZ2d5ZHJjOHllTjJy?=
 =?utf-8?B?enVZRjZleFVxWmxXelFucDAzek1GM3gyY0lSVHoyM0FjR2prK2ttRkdDczdM?=
 =?utf-8?B?VXI1dXZkeTcvMkNlSDIyZ25scUlTcGVaOG5CTFIzRDRPalQxT243OHR2NmRE?=
 =?utf-8?B?SXhRTTh0aXRoVDZKRXVWTnkxV1BLSkVqUmJYRklxSG9yNzdseTZuNUtyRGxV?=
 =?utf-8?B?M3BpWDFqR3dUMTRzc1RxU3NNcHY4bEMvU0VFYzNpTmhEOHU0YkU2WFVxVmRY?=
 =?utf-8?B?VE95QnZicmFiTjZEUDBIWDh2OUs5aHZuSVNGaktESGovTnc0WWpJcEJodldZ?=
 =?utf-8?B?VjRBbDhkcXUwZFdmZjlFQStBWUVTMXBtOG95dVE0TStQK0V4TmRsWEYvZjBT?=
 =?utf-8?B?bkJyWGhidUd0d0NveVhRR3VYbFNBdXdaK29KREhvTmJNK1VqN1lMUTM1V3V5?=
 =?utf-8?B?OElncXJkdFNYSmYyS0picXpzRkRVODNmcHA3N1JzYVVrYU9uT2xlLzEyZG9T?=
 =?utf-8?B?N3dKT3pnbUIrNnUrQnlrb3p6ZzNhS1h6NzR5YjlBcDlHckhaNkxESHM1Umhp?=
 =?utf-8?B?VzFBQW1OOE4ya3BnTmp3MGdXYW44eWd6b3IwUXpSamsvQ1R0WlNLTnZ2dzJa?=
 =?utf-8?B?Z05Ka2hoUzdid2JiRXAveVFFQzUreHJuZGxsS0ZpOE9MSXdoUTQxbXJVZjZx?=
 =?utf-8?B?bzB0STNCaHhJVC9DSGRuUmFPa0puZU5ZNDJuMm85T2Y5ZE9VQ3FrOHFudVAz?=
 =?utf-8?B?dWZTL1ZFaXNRTktTR1dvN3dFejRSTUtWbWw4dk14VURVbHdsZlFORm9sSTVW?=
 =?utf-8?B?TVVkL2pNTWRiVWJYM2tNNEszVnI5TzNXK0FocFl0RGdpck15UFhBRHQxY1k2?=
 =?utf-8?B?Ni9oSmF3MDZJRWt2OXdPZ1lIQWtXNWtiVGZBQnNNWUM5WkdGMnJHVTdxNzIw?=
 =?utf-8?B?cWowYXVHelQxR01EM1FSZktYNTJKalVCNEVCME1WZFVUNlF4YU5KaWZPbm1m?=
 =?utf-8?B?Sm0xQUFrNEtnbE5OSG9seVkwV1lKcThDbHR5TmpkU0YrdS9BaWE4L2g4Mkt0?=
 =?utf-8?B?MlhuQng1dmgyR1JidmIveFRiV3RxMUZ4b0FVVE9TTVlscjZRa0pMcW5wc0JF?=
 =?utf-8?B?d1ovcmd5RzRKK0M4YUEvMExZaEFKMnc1QnlBUmRPTEJ3OEpGZWtITE92b3Fz?=
 =?utf-8?B?cC9SUTBtakhsZnh6eDZTcnhzaFJCN2lMRWJLK1U4TUJzWi9UWm5IbzFxNW9h?=
 =?utf-8?B?ZXc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c51d8138-4427-4b1a-e6f0-08dcf438269a
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Oct 2024 14:28:38.2387 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nHX++WKSro8Us24JHkVYGcHYF+eEopvbtquXvFlWPhXth+CaL0fmcvjIvzrR5wvak66NQrspaJrABcXuL9mLY7oIFJp4ffT17pX1FNCggwA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB8269
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTmlsYXdhciwgQmFkYWwg
PGJhZGFsLm5pbGF3YXJAaW50ZWwuY29tPg0KPiBTZW50OiBXZWRuZXNkYXksIE9jdG9iZXIgMjMs
IDIwMjQgOTo0MiBQTQ0KPiBUbzogVml2aSwgUm9kcmlnbyA8cm9kcmlnby52aXZpQGludGVsLmNv
bT4NCj4gQ2M6IEFuZGkgU2h5dGkgPGFuZGkuc2h5dGlAbGludXguaW50ZWwuY29tPjsgaW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsNCj4gR3VwdGEsIEFuc2h1bWFuIDxhbnNodW1hbi5n
dXB0YUBpbnRlbC5jb20+Ow0KPiBjaHJpcy5wLndpbHNvbkBsaW51eC5pbnRlbC5jb20NCj4gU3Vi
amVjdDogUmU6IFtQQVRDSF0gZHJtL2k5MTUvcmM2OiBEaXNhYmxlIFJQRyBkdXJpbmcgd29ya2xv
YWQgZXhlY3V0aW9uDQo+IA0KPiANCj4gDQo+IE9uIDIzLTEwLTIwMjQgMjE6MzEsIE5pbGF3YXIs
IEJhZGFsIHdyb3RlOg0KPiA+DQo+ID4NCj4gPiBPbiAyMy0xMC0yMDI0IDIwOjE4LCBSb2RyaWdv
IFZpdmkgd3JvdGU6DQo+ID4+IE9uIFdlZCwgT2N0IDIzLCAyMDI0IGF0IDExOjAzOjU3QU0gKzA1
MzAsIE5pbGF3YXIsIEJhZGFsIHdyb3RlOg0KPiA+Pj4NCj4gPj4+DQo+ID4+PiBPbiAyMi0xMC0y
MDI0IDIyOjM5LCBSb2RyaWdvIFZpdmkgd3JvdGU6DQo+ID4+Pj4gT24gVHVlLCBPY3QgMjIsIDIw
MjQgYXQgMDM6Mjg6NDNQTSArMDIwMCwgQW5kaSBTaHl0aSB3cm90ZToNCj4gPj4+Pj4gSGkgQmFk
YWwsDQo+ID4+Pj4+DQo+ID4+Pj4+IE9uIFR1ZSwgT2N0IDIyLCAyMDI0IGF0IDA2OjUyOjI2UE0g
KzA1MzAsIEJhZGFsIE5pbGF3YXIgd3JvdGU6DQo+ID4+Pj4+PiBFbmNvdW50ZXJpbmcgZm9yY2V3
YWtlIGVycm9ycyByZWxhdGVkIHRvIHJlbmRlciBwb3dlciBnYXRpbmc7DQo+ID4+Pj4+DQo+ID4+
Pj4+IENhbiB5b3UgcGxlYXNlIGV4cGFuZCB5b3VyIGV4cGxhbmF0aW9uIGhlcmU/DQo+ID4+Pj4N
Cj4gPj4+PiB5ZWFwLiBNb3JlIGV4cGxhbmF0aW9uIHBsZWFzZS4gQWxsIHBsYXRmb3Jtcz8gcmVh
bGx5Pw0KPiA+Pj4NCj4gPj4+IFdlIGFyZSBzZWVpbmcgUmVuZGVyIGZvcmNld2FrZSB0aW1lb3V0
cyBvbiBBRExQLCBBRExNLCBBRExOLCBUV0wsDQo+ID4+PiBERzEsIHJwbC4NCj4gPj4NCj4gPj4g
SXMgdGhpcyBhIHJlZ3Jlc3Npb24/IG9yIGEgbmV3IGlzc3VlPw0KPiA+DQo+ID4gVGhpcyBpcyBv
bGQgaXNzdWUsIGZpcnN0IHJlcG9ydGVkIHllYXIgYmFjay4NCj4gPg0KPiA+Pg0KPiA+PiBJcyB0
aGlzIGhhcHBlbmluZyB3aXRoIFhlIG9uIHRoZXNlIHBsYXRmb3Jtcz8gb3IgaTkxNSBvbmx5Pw0K
PiA+DQo+ID4gaTkxNSBvbmx5LiBUaGlzIGlzIG5vdCByZXBvcnRlZCBvbiBYZSBrbWQuDQo+ID4N
Cj4gPj4NCj4gPj4+IElzc3VlIGRpc2FwcGVhcnMgYWZ0ZXIgZGlzYWJsaW5nIFJQRy4gSW5zdGVh
ZCBvZiBmdWxseSBkaXNhYmxpbmcgUlBHDQo+ID4+PiBJIGFtIGRpc2FibGluZyBpdCBkdXJpbmcg
YWN0aXZlIHN1Ym1pc3Npb25zIGkuZS4gZHVyaW5nIHVucGFyay4NCj4gPj4+IEZvciBNVEwgYW5k
IEFSTCBSUEcgaXMgYWxyZWFkeSBkaXNhYmxlZCBwZXJtYW5lbnRseS4NCklNTyB0aGlzIHBhdGNo
IHNob3VsZCBiZSBleHRlbmRlZCBmb3IgTVRMIGFuZCBBUkwgYXMgd2VsbC4NCkRvbid0IGRpc2Fi
bGUgdGhlIFJQRyBjb21wbGV0ZWx5LCBvbmx5IGRpc2FibGUgaXQgZHVyaW5nIHdvcmtsb2FkIHN1
Ym1pc3Npb24uDQpUaGF0IHNob3VsZCBzYXZlIHBvd2VyIG9uIGJvdGggTVRMIGFuZCBBUkwgcGxh
dGZvcm1zLCBhbmQgcmlnaHQgdGhpbmcgdG8gZG8uDQpBbmQgcGF0Y2ggc2hvdWxkIGFkZCB0aGUg
Rml4ZXMgdGFnIGFjY29yZGluZ2x5IHRvIHRoZSBjb21taXQgd2hpY2ggZGlzYWJsZXMgdGhlIFJQ
RyBvbiBNVEwuDQpAVml2aSwgUm9kcmlnbyB3aGF0IGlzIHlvdXIgb3BpbmlvbiBvbiBhYm92ZSA/
IGl0IHNlZW1zIGJvdGggTVRMIGFuZCBBREwgaXNzdWVzIGFyZSBzYW1lIHNpZ25hdHVyZS4NCk1U
TCBpc3N1ZSBnb3QgZGlzYXBwZWFyIGFzIFJQRyBpcyBkaXNhYmxlZCBnbG9iYWxseSBidXQgdGhh
dCB3aWxsIGJ1cm4gcG93ZXIuDQpJZiB3aW5kb3cgZG9lcyBub3QgaGF2ZSB0aGlzIGlzc3VlIHRo
ZW4gaXQgaXMgYWx3YXlzIGRpZmZpY3VsdCB0byBnZXQgcHJvcGVyIFNWIHN1cHBvcnQuICANCkJ1
dCBPUyBsaWtlIHdpbmRvdyBtYXkgbm90IGNhdGNoIHRoZXNlIGtpbmQgb2YgaXNzdWVzIGFzIHRo
ZXkgZG9uJ3QgcmVsb2FkIHRoZSB0aGVpciBncmFwaGljcyBkcml2ZXIgbGlrZQ0KTGludXggcmVs
b2FkIG1vZHVsZSBtdWx0aXBsZSB0aW1lcyBkdXJpbmcgc2VsZnRlc3QgZXhlY3V0aW9uLiBFdmVu
IGNocm9tZS1vcyBkb2VzIG5vdCBkbyB0aGF0Lg0KTm90IGEgcmVhbCB3b3JsZCB1c2UgY2FzZS4N
ClRoYW5rcywNCkFuc2h1bWFuLg0KPiA+Pg0KPiA+PiB1aG0uIEludGVyZXN0aW5nLiBXaHkgdGhh
dCBpcyBkaXNhYmxlZCBvbiB0aGVzZSBwbGF0Zm9ybXM/DQo+ID4NCj4gPiAgRnJvbSBjb21taXQg
bG9nIGl0cyB0ZW1wb3Jhcnkgd2EgdG8gYXZvaWQgZncgdGltZW91dHMuDQo+ID4NCj4gPiBwZXJo
YXBzIHdlIHNob3VsZCBiZQ0KPiA+PiBkb2luZyB0aGUgc2FtZSBmb3IgYWxsIEd1QyBlbmFibGVk
IHBsYXRmb3Jtcz8NCj4gPg0KPiA+IEkgdGhpbmsgc28gYXMgdGVtcG9yYXJ5IFdhLg0KPiANCj4g
Q29ycmVjdGlvbiwgREcxIHdlIGFyZSBub3Qgc2VlaW5nIHRoaXMuIEkgdGhpbmsgd2UgY2FuIGdv
IHdpdGggcGxhdGZvcm0gY2hlY2suDQo+IA0KPiBSZWdhcmRzLA0KPiBCYWRhbA0KDQo=
