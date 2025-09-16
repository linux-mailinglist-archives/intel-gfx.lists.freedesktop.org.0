Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F452B58E76
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Sep 2025 08:33:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DE7310E674;
	Tue, 16 Sep 2025 06:33:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XXezbibz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29A2A10E674
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Sep 2025 06:33:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758004392; x=1789540392;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=uw8eT3sBkn87G3vdBdQBvRrnu0ivgLsuHB5Hb+41QyE=;
 b=XXezbibzpQbZJD/fEmKI01skZG3Yp6Cy8sG7BTYfBIUvb9dxwkIGUKzk
 fiLhNtFgVVVdpXPJc1xFZWmNLDNBos8F79pz2fhDUrfFJ5BSIIAZP4U8g
 1o814yTKo9TZD9mpljC4ljbKqLmG8TAonj5n9yrnp0knVlLaZXLuy19gs
 UXYXtGYrzMNq2Zmds2a7eQPDOS7WChSJPFlNHs95s2/K/MKXnueeCIPX7
 vVIdxG0UgywdRaUTwsLUcGAQuHIZVaxGKbujtTCjryCoSK+6xCwY0ftUu
 /l1SkK/HHVnJ1HvCRfm6sNuevRNpZJgnKzCUZ4jYsgE9ucqkNxrpU136L g==;
X-CSE-ConnectionGUID: UZA0+Cp6Tm2nZa+/m8fyFA==
X-CSE-MsgGUID: HEjsN8rrT4SaYr5/oiNWvw==
X-IronPort-AV: E=McAfee;i="6800,10657,11554"; a="71642715"
X-IronPort-AV: E=Sophos;i="6.18,268,1751266800"; d="scan'208";a="71642715"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 23:33:12 -0700
X-CSE-ConnectionGUID: 0zD/AAJHT8e99AAbp2QJLg==
X-CSE-MsgGUID: 9xcIg0yjSx260dn2767FdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,268,1751266800"; d="scan'208";a="198531152"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 23:33:11 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 15 Sep 2025 23:33:10 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 15 Sep 2025 23:33:10 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.39) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 15 Sep 2025 23:33:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=s3/OCDU9n3EooJcYwfn69eGR6ouI0ZiN8/nzAmkG4Q3PE/TOBDsuNm6WTOfQAvDW3NcQRUNNO+y5g615bSRqjuHkZJ+l1dKIy/aNApSf/s/Aw9VQlH0tLmjqMtZYqAACOKXaJs3rBPD67dUWajcCY9FvmXpi8bq0h1+f40EhdlOdr61Sl2PtbUib1+fOIeCcFW5CJy5ZrtPsBkrdEqDRLWRmZ7kMAJsc46aEgDQOdJkCVsTk1QBguTBFwEbxlGYxbOcGR9WBhwEIV+FL+/wMnKlmOVgpbwI76PYdv6EsVTKK9CkXq6vLsT5ld6VXVyXDL/Xza92U9w5NqT4u7rZrCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V6DSKPgFpCxCCkWSQFCQMs1j0fJ8aMSDdblarBXgVzU=;
 b=HfvzrL0WHZpx9bY7P/4/+mBiKlrvYCYY6YR2cSbV5dtP5Kn5mXLnsAOtxsVzPY6WAbnEbqboEMa5QWCUNuA09yjpICSpjVcmGwG9LyBtBQ9p3lWM7Iy1qU1tk1SST6uqhSTxJaz/oio1M7p4MJN5E7Tyn/tNRQ0z+mbMQLVaqXAbm4Jw/+E1pfgyhDSo1UOek1KmFqlifJhGRK2p+GF287lvZdQFdfux4+ian5x5KaK5h8l+EPCRj6FuZ8x+GlZ/1J5GhEuU62kKe2I6/tmmLy43/DIfSe+FTcJef1j1AjiQAmibIjDHJ/u/Rvp9BhUzlDFPqSZA2KBsHa0d0jqw5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by MW4PR11MB5823.namprd11.prod.outlook.com (2603:10b6:303:186::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.19; Tue, 16 Sep
 2025 06:33:06 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9115.020; Tue, 16 Sep 2025
 06:33:06 +0000
Date: Tue, 16 Sep 2025 06:33:00 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Jani Nikula <jani.nikula@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH v3 1/5] drm: Avoid suspicious operations in
 drm_fb_dma_get_gem_addr()
Message-ID: <af178bcb6408ec6395b1102a1429ad49f6bc9f1b.1757576103.git.krzysztof.karas@intel.com>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <cover.1757576103.git.krzysztof.karas@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <cover.1757576103.git.krzysztof.karas@intel.com>
X-ClientProxiedBy: DB7PR02CA0026.eurprd02.prod.outlook.com
 (2603:10a6:10:52::39) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|MW4PR11MB5823:EE_
X-MS-Office365-Filtering-Correlation-Id: d838c97a-1b2d-419a-52a4-08ddf4eae517
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?b1UyTWlGSy91QUVINS9XMkdqaHcrUERXVlJoWkVZNEZ4ZjUxZEp3U2xwcytK?=
 =?utf-8?B?Y3pDMGJkWEdsMW91VXlNdFpoY3RZNmF5KzFsdml3V0E0NjgxTGp0cnB6NmRz?=
 =?utf-8?B?dHpRTmRlU2hRUWIrWkxMRXZpVlNIU3ZVTmJRTEsxWEJhSFF4eUh6ei9HMXVY?=
 =?utf-8?B?aDl0blJaM0ErM3pEWThyUFZWcUZaUml3bVNOeFdVUlJyWXFnOGR3dUpja1JW?=
 =?utf-8?B?Z2NTeUx3bForUDlwQ2xkaHRJcll1a3FqdVMvdHg2VWVRWkhMYmdSREE0dUto?=
 =?utf-8?B?elhRRWozb1VpV2M2UDhvcVZKK1NWZktlZmhXS0IrYVpQdExrZXk2aDZlY0Rz?=
 =?utf-8?B?aXIxenBRTWgzRklnUU5sUmhuUnAxbjEvYWlyUmtqa1RaQmw3NnJOdVU0SmVx?=
 =?utf-8?B?eUN3Nlo0d0xjZ2Z4clBERHp5cUg1eVFNSE9tdHA4WlNvRWJRRndpU2tuUlgz?=
 =?utf-8?B?T2xpTVFHbFpxdTV6QWVoSk1SN3pGYXpvYy9Vd2NqRmoydm43V1Nhdk1tZWlz?=
 =?utf-8?B?Y2Rjc3JlZmdMWHNkK3M4dEdWT1ZtUFRiT1A1TStxSHZWcmNzSGRaUG9yU0Fj?=
 =?utf-8?B?VVZndGN6M1Y4TVQ5Z1RUSWxiaHN5dzZLbGwwaUQxSlh2Ym9tQWlaaTVPZ0J3?=
 =?utf-8?B?WkFrS3V6aTdITVBBYUdSbGJPYU5mVEtiY0Q1Rno4Sm0xRDZvdC93QmZYRVVo?=
 =?utf-8?B?M3NmU2ZiaHZMVlpDSjZVbEszdEt2bjVhaWc2dERrSmJpRHltY1l0Ky94dnJT?=
 =?utf-8?B?T1dNRlQ1ZmEreWloMUhyT0lBaDlXWDBSRXdFcndZRFlHQXBXd2U4OE5pOXJN?=
 =?utf-8?B?Z09vMG1VeXN2eVdFRmNCMDNjcDRWaGlpSWIzdkIvZ2MwU1VrUG42NFozdU9L?=
 =?utf-8?B?TFJDZUQ0aGpBVDIyUTEyZytLQUJadlQ3ZGVSMkROS2NMbTNqd0RsL0FNVnZX?=
 =?utf-8?B?VUJKcmVzMkFWb2V2KzhxcEVLcmg1WHZscW9zZXZQaHJuWlRVeVJZWW9PTkdh?=
 =?utf-8?B?cCtTd1YvZUVUTTFid1ZhS0NjZVZPbVg0bXFOQ3YvYkxudEFOZW1wOGJoR0xv?=
 =?utf-8?B?dFRLNWxzNlB0S3E5elArWnZheWEySW5McGZlbEhENjYyejN2N0VQRmgwaUdG?=
 =?utf-8?B?MmJid1F5cnI3OThzVlpWRGVyOUdQNHNuT1NHcVl3VXkzM1AyT1YwSGRMTFUx?=
 =?utf-8?B?MmUxSCt4MlZCVU5Rc2h0RHp0czRuUWx0a29CMUVYdVRBeUtidk1ubDVxcm0v?=
 =?utf-8?B?bUpyOFI0WC81ODVKc0hBZTR3Y0gyUXJKQ2ZrNUVUZVNHRDNZcVk3VkRTQlBG?=
 =?utf-8?B?WStJWFRjYlpMM0pDZkRldmhsSnlDcWNETVdYbGMzRDY1WVA0Q2R4MFhYVHFy?=
 =?utf-8?B?c2swTkErL0M0Yys0QzRiMkpxM0IrdWM3OTUzbFlBZ0I2MWljenRMdFFmMVRa?=
 =?utf-8?B?ZVR6QUxtKzlFeG5BNVNGcFJibGdWNExGV2k5TmVhK1lIOHVZVTRtM3lmYTFy?=
 =?utf-8?B?VWs0b0NDbU9KWDlFV1hEaDArUCtSb3dURmdBMzBNRC9uUFloQWt5TG0yQ3Nt?=
 =?utf-8?B?VS9LVlJxU29KSHNQSm5qMmh4VTNnSGY4SGhJTTMwU2dTcElWelB4TEFOMnlF?=
 =?utf-8?B?S2xBelMvb3BjMEhiSjVOWW9mTXlRUzhleThtK0lBdUlvNDdyQm5mVmlaaWdO?=
 =?utf-8?B?SUJWNCtOanBSUXdQb2pvRFJXRFhqRGlHUmNoZ3NaVG1nVXZKdmhGQlFSNXhY?=
 =?utf-8?B?eHozaXJkb3djV2U1S0ZjZzZndGJ0UWMwVHJ6WXJrL0dVY0ROQjk1Z28zRU94?=
 =?utf-8?B?Y2M2TmxoeWRLa1Azd25QTmdLUjhjTWpzQzRzMGN0U280ZEk1TnZLaGN2SEVp?=
 =?utf-8?B?QjVrK3NXRjY2eG5NSU9zVFhiME4vbzlvMnAwN3ZVbzZmSmYrTzFEb0ttZ251?=
 =?utf-8?Q?CKl4hh4JpMI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MmhmUXptckNCT01rczg5SWdmTTZKUzlQRHl6MWdUbk1XT0l1OFR5SklxdWc5?=
 =?utf-8?B?Kzc0T2NmVnBpL3RpcjMvQ3llbU96VlgrMSswRTJYczF4V0VHckgwZnZHQW9M?=
 =?utf-8?B?N2dVVDRaaEpPQUNXRTlyZEJLdzhTRUxSNzYxZDA3cUo0NW9BaG1aSjhUZjY3?=
 =?utf-8?B?cXIvMG9kdFErdWY4ajdXMnZaeG9VZmhiVTdHM21Sa2JacDAxVHh4Vm5WTVVC?=
 =?utf-8?B?dnZMaUhoS1JneUF3blJTdXlNRGhYK0lYMm52NnhNczFaTUVDcEdKWVk4bVRj?=
 =?utf-8?B?VS93OGlhVmJOY3Vya2gzUVF2RURFNTV3a09pQ2hDQXZhbG1aUGUyTGs0Yzk3?=
 =?utf-8?B?MUQ2b2REYXVEemlxNWVLdmY1WDh6VzY2ZUIyc2RkL2RveG1SY25FZmNjTmQ2?=
 =?utf-8?B?YWhWMWZ4VjZGYm54VFl0dk9wMzZFTmcxdExLMGlPYThzVVVqUkRGOU1tWFdo?=
 =?utf-8?B?VDBJRzZjaEEwcDRvc0pscCtxaGNtK1M0a0RuN3pEMlBFYk5aSVJ1L3Y5bmV6?=
 =?utf-8?B?TTlhRy9nVlF1MndKamVkUFpUY2NmTlNRaW5taE1PSzZaOUh5ZG00bzA4SzNE?=
 =?utf-8?B?VTltUmY0R1hCaEgzczZPYzNnYVBnT0tvUzE3ZWRGUGkyQWNBMzRZVXRGbEd5?=
 =?utf-8?B?aytiSzljSDZkQnE3aFVJNmdUMDVvS3RMN3ZOcmtJc3RlQnpjZ2toNlp1cjA2?=
 =?utf-8?B?QVh1OXRIYmZjOFpveTNMYzduZVBRTDdmbjI1TlJDTStaOHJ3aVBnSmM5djdZ?=
 =?utf-8?B?bEIwOTc0UzZ2Z21JMG1BVGE1ZUxSTUsrTFJGMzVUY1VaZ2NsOU1QRk5EdEV3?=
 =?utf-8?B?WGNKL1dWRldiUmtqZzN3TTh3TXc5RE05S3Jxam5QSlpndzZLanhqUjZLNUE0?=
 =?utf-8?B?bXl3b09qNTgrZmZNbEFaVkZ2NzNIc1laeVlTaWNDRWdYaTNPbFhPVEN2TDVi?=
 =?utf-8?B?d0tvOE1MMlVTWkFuTmFMSllHdFNuVWRmM3RmL2xVRlVwYlF6TFl3QXhzS0cz?=
 =?utf-8?B?VXRyQ2pSWURMYkl6cExDRVhocVZqdHdONWRwWWVTc3BBQXpnY05hWWw1WjQw?=
 =?utf-8?B?SW40L1NMZVJGSzZhd3AvWTE2SjBnRHBTMk53Z3k1M2owVmNuejlzbVhISkgz?=
 =?utf-8?B?UkQvSnFQMzgrUW1DSlpTK0xCcGhwV3c3d0d1cWVjbFhXNGp2UnVjL0xJckxp?=
 =?utf-8?B?RlZTZGtPZnJ2ZC96T01yQjFpMldJTWlLM0JOblpJRVlQbFJadytzeXZ1STdP?=
 =?utf-8?B?WE5WazFNbzcybXpna0dhTllWbHZWWS9NdDNBeXFUU0hyNmcwdFlTY0dNamdZ?=
 =?utf-8?B?eVNZa0p2bzlHRjNsRHR0bUtkSGo1RnMwZkpCazl2ZTBnQkZxTUlTcWowNnZo?=
 =?utf-8?B?S1NiNUhBMDBTODhHS203c1J2Z1lHNThkb0JBRURXeEpEL252YTkvNnEwdVVs?=
 =?utf-8?B?M2ZublVHU1VSSGxTVGFETlBlYURIV3ZiMEtYRFdHcUZoNmlQY2RVVENQMFVK?=
 =?utf-8?B?ZitPTGtNVzIwQUhVM1NUNTZ1YnVMY3RaeVBlTldjWk5IaFdTazkwYk5CWTht?=
 =?utf-8?B?MnZZVThzL0VjLzFzeU93a1JSVWNyT1pJQXlETTNqVWJ6YkJ2TVRFRVAwTUln?=
 =?utf-8?B?bllDckw5U2EwclhQQm5Dcy9DaFZsRHhvMlIxb0hTbWpsNmN0c2pnUlFrTjJG?=
 =?utf-8?B?aVRKZjFraVc5cDFqM1hCcWVtUlZJTm1MQnV6NVdLWTh2SHgyUGgzMzR1eFAz?=
 =?utf-8?B?WmZZTGdsWS9PRHhqbnYwZVVqV0l0aHpzVVcyUTlBelIrZVBhdGVmTURvWmhy?=
 =?utf-8?B?SzdiQU5nK2pCSXdVSlpRZHZqWTFVLy9naFI2Yy8wWDY4bUNTK1dSZUFWY2Q3?=
 =?utf-8?B?VTA4aGluY1diaUZZWFdtZHFqYkl0RzJHbjRrREhPV0MrSzY1QVVGRlA3UWVG?=
 =?utf-8?B?cHk4NHM1dHoxUnRzU3lQbWVubytXc2lGZ0dibGsyRDhiSnF6ZURYMG51ZGdY?=
 =?utf-8?B?ZWFrYnhjWDF3NVNPSm40QkxteTBEeGhsZDM5MG05UytZWnBpdmQxN2VPUmFC?=
 =?utf-8?B?dHlCYmJDNmFpODA1ZkNlbWV4M25rY1pVdlB3aUVSRExQR0Y0S1JFWGVXMDlN?=
 =?utf-8?B?QjRuZFBlVEFrKzdNTjZub2ZYZHJFNVRGeThSR1ZXZ3pCbS9Mai9IRkcxb1NR?=
 =?utf-8?B?L2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d838c97a-1b2d-419a-52a4-08ddf4eae517
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Sep 2025 06:33:06.0672 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nekd7VTYWtAIxzjJwUDoH23RQ/v5U4gPiECad9Ko/FgunuzQX6Bah7C98RBNhQNbVTQG19wm1rCnluA34jEFtVZ6E2snbx+1wS8UaVoVV7M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5823
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

There are two unsafe scenarios in that function:
 1) drm_format_info_block_width/height() may return 0 and cause
division by 0 down the line. Return early if any of these values
are 0.
 2) dma_addr calculations are carried out using 32-bit
arithmetic, which could cause a truncation of the values
before they are extended to 64 bits. Cast one of the operands
to dma_addr_t, so 64-bit arithmetic is used.

Fixes: 8c30eecc6769 ("drm/gem: rename struct drm_gem_dma_object.{paddr => dma_addr}")
Cc: Danilo Krummrich <dakr@redhat.com>
Cc: <stable@vger.kernel.org> # v6.1+
Reviewed-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
 drivers/gpu/drm/drm_fb_dma_helper.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/drm_fb_dma_helper.c b/drivers/gpu/drm/drm_fb_dma_helper.c
index fd71969d2fb1..00aaad648a33 100644
--- a/drivers/gpu/drm/drm_fb_dma_helper.c
+++ b/drivers/gpu/drm/drm_fb_dma_helper.c
@@ -85,6 +85,9 @@ dma_addr_t drm_fb_dma_get_gem_addr(struct drm_framebuffer *fb,
 	u32 block_start_y;
 	u32 num_hblocks;
 
+	if (block_w == 0 || block_h == 0)
+		return 0;
+
 	obj = drm_fb_dma_get_gem_obj(fb, plane);
 	if (!obj)
 		return 0;
@@ -101,8 +104,8 @@ dma_addr_t drm_fb_dma_get_gem_addr(struct drm_framebuffer *fb,
 	block_start_y = (sample_y / block_h) * block_h;
 	num_hblocks = sample_x / block_w;
 
-	dma_addr += fb->pitches[plane] * block_start_y;
-	dma_addr += block_size * num_hblocks;
+	dma_addr += (dma_addr_t)fb->pitches[plane] * block_start_y;
+	dma_addr += (dma_addr_t)block_size * num_hblocks;
 
 	return dma_addr;
 }
-- 
2.34.1


-- 
Best Regards,
Krzysztof
