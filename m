Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B5A7BDD494
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 10:02:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1968610E764;
	Wed, 15 Oct 2025 08:02:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QYCTgUky";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF2B310E763;
 Wed, 15 Oct 2025 08:02:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760515374; x=1792051374;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TelSy8HyFfIVlwUQMWegmXGZhyUIvJYiecpTjmw6Tto=;
 b=QYCTgUky43m0XsYWZPxVQbyq06YJS1JX+09Zcf7ZUr8b44PWxeUn6y7Y
 ybLvD6hGA8o+Ius2z3qiJof95hb6Z4ggMsdaqgOwcYTWWteK9cOQfDabK
 ILDIzigsLwgoC0vaefeO5HXJ/MowJTtN45DGIo7kMkSgW9osErQC30CK+
 Tb4WiBRNgqar4lTyEz9r0t9OPYx07vO48L6UNZsHATcNtLTtd0UVs1Qyv
 BAjNB3LlDYMj1aJoFtel615HC7Xz3Al0EmHQ6etEYp/V1pOpsu70avfz+
 M+cQO5QJ06ilZVOxuCRST3vI9/HAiOg9YewU6M3ka5lkNUHzkyqM7CF3R A==;
X-CSE-ConnectionGUID: ATBc6BqkTF+zIVY/1r5sIw==
X-CSE-MsgGUID: j89z8gg0S4aeAeJoHkbzRg==
X-IronPort-AV: E=McAfee;i="6800,10657,11582"; a="80316543"
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="80316543"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 01:02:54 -0700
X-CSE-ConnectionGUID: WUWX853EQo6vONNhnsxeow==
X-CSE-MsgGUID: ZXPRS7ELSp2qCfsBpaKpYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="182887469"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 01:02:54 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 01:02:54 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 15 Oct 2025 01:02:54 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.61) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 01:02:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=t91vqGO/mb1gDTG5ZZ6ZhOG4B7c3mbL7cNYWSAmkYizAfvMHcrLA73syy4cLIdfS7JSQzLEVLy2Hff5ga2JGCCylEgNBDmjUIKPo9wL+Cfi7ptH7Ht4PqGouJuECxf2hNmhII8vb0i1tNRbI8JfoFiTn57V8T1dJL+cJyuAM/68xxXb2QpeoWY6n0EUwwhzViCVm1i6pnbRAzTmnCOZvivs/YQ3v2EUUKiJK5Qnf6jZ5n9CdDEqTOUPldbxUiBxbv5uGDsK9xkAEBGEG5g6wQLfOsK1pbA8gtKbsfSmhY38nUqfXy2Gz39Li+HWGMxb1G/qNCZzzQoBUcTAR3R9fcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VacKwYxFCXsKtk908IG/P3FaYlsXnvVXtYpUzDAFDh4=;
 b=g3lQz2b0J/fFPPlarnhVa6VthjrmmSW+vzXsQn569Da1MfNboOoM4N6U2clsQrCFhFoJrA61rIXeiKojv6dAzvoOluIuN+lylYnrOlQVAWqdhoycIjN7GL091jTpMStXao4ZUu3ae4F7YxhZFxX0U8ROVGvxiH+emYoM/QcgIu6HFfSJy3+Ut17ACKAYbJXzvq7W6OHWyA+FyCVfiHD4j+CVSOoAq4EInAbQdopa6tvKDlwpJYSGZ48V/wCnsg4oPvSqKOU3f5nGlsBtS8DgTkwpq+CUv/MYBPkuzJYWn+WENsQouXzpc3tOrlRTmsbQlUq0K0gFF2F8npga0l8Arg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from LV8PR11MB8607.namprd11.prod.outlook.com (2603:10b6:408:1ec::18)
 by DS7PR11MB8806.namprd11.prod.outlook.com (2603:10b6:8:253::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.10; Wed, 15 Oct
 2025 08:02:51 +0000
Received: from LV8PR11MB8607.namprd11.prod.outlook.com
 ([fe80::55b1:592:df13:a9f3]) by LV8PR11MB8607.namprd11.prod.outlook.com
 ([fe80::55b1:592:df13:a9f3%5]) with mapi id 15.20.9203.009; Wed, 15 Oct 2025
 08:02:51 +0000
Message-ID: <907234da-a6a7-42d5-a7b9-bfbc713d4d0c@intel.com>
Date: Wed, 15 Oct 2025 13:32:40 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 30/32] drm/i915/wm: don't use method1 in Xe3p_LPD onwards
To: Gustavo Sousa <gustavo.sousa@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, =?UTF-8?Q?Jouni_H=C3=B6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Matt Roper <matthew.d.roper@intel.com>, "Ravi
 Kumar Vodapalli" <ravi.kumar.vodapalli@intel.com>, Sai Teja Pottumuttu
 <sai.teja.pottumuttu@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
 <20251015-xe3p_lpd-basic-enabling-v1-30-d2d1e26520aa@intel.com>
Content-Language: en-US
From: Shekhar Chauhan <shekhar.chauhan@intel.com>
In-Reply-To: <20251015-xe3p_lpd-basic-enabling-v1-30-d2d1e26520aa@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0086.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1d8::18) To LV8PR11MB8607.namprd11.prod.outlook.com
 (2603:10b6:408:1ec::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV8PR11MB8607:EE_|DS7PR11MB8806:EE_
X-MS-Office365-Filtering-Correlation-Id: 680ac73c-6789-4803-9c62-08de0bc13ce6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dUVzMkwrazdiLy9EeXhHbnM2dmhJL0ZxbmRpRE1sbU1JaFp5Q3JWNjZFR2F1?=
 =?utf-8?B?bEVabjIremlqckNtTnN2V3N4dEkrQmJIV3I2Z2pydmxLL1NaWU00TXBHbkFE?=
 =?utf-8?B?bzRRWklscVhZbVcxdXR2MExaUmozaHBMdUIxWElsU2N3YlM3L0toZDhyZVNI?=
 =?utf-8?B?UDF4bnlUWjlXWXh0UXk2bk1LM2RtT2NaSDJaQ0J4RGdZQXJsVmRuVExuR09w?=
 =?utf-8?B?MmVNT3BzaWhmMXlCdlhCVHQrTXVobWRNaDlvQ2pHRDBIR2I0Q2d1MHBIZlN6?=
 =?utf-8?B?cWRWL1FJdUY0Z2FKMXZpckZybWtyK3hHa1dqMGc3Vmw0cWdpWHRjRFBHMjFJ?=
 =?utf-8?B?MXVrSlE0YnA5Zk9zZVVodmN3eTlQYldTVmNPRnNKVUt6WVR1cG44T3dKbjBZ?=
 =?utf-8?B?VnVCQzZjSjNKRURTdHVwbHVrbHV1Mk1MeUo3bCtSaUEwRUhucEJUb2JPQWJ1?=
 =?utf-8?B?dFlqcDhQYnpqVm1NaFhNL2w3YXZOVzByNW84dHhyTVJnYlo4TE04SERIRWN3?=
 =?utf-8?B?THRtVjdYZXlHNDc1VHhzT2lzTmRsdHBXRDRnUkZGZE11dk5YdmEyd2hJZFla?=
 =?utf-8?B?OTZUbU5vNG56d0V4RmNTVXlzUEZ2MHNXc1FYZFJxTis2S21KVy83amx4STVz?=
 =?utf-8?B?NUpzR1ZjYnU4b1VqY1hCbEtBK3h4UE4vbktLVC9wSUdURThia2R5VEFFSzJq?=
 =?utf-8?B?eTBxazB6bzlXR3BIUStwOWRUc0JPaDRBc1Vjb2JNbk1YaDFqdlViSk9pWVB0?=
 =?utf-8?B?b1VLWnZtNXo5dzZDVHBycTlBWG5tM2c1SUZQd1phdmJaYlZ3djFWSjFmSmNP?=
 =?utf-8?B?cDBTQ2gvaXRCaUd6MzQzeFZZaE0rdjFQdjYwSzMxRlNuTEc1WHNaNENiSFlK?=
 =?utf-8?B?OUdPdEd2YVkrQ05tU1hlS0YvWjZ4aDBoVWpvOGkveXVrUURTUmRtZWlJUzlU?=
 =?utf-8?B?T0M5aThVSmFPbGxCS2tmdTFkcXZNS2ZkWlpjREdid2FqeDJ2cUlqd0VYZG03?=
 =?utf-8?B?WXRYSGpyekdudGtOSnppOW1KZWdQdSswRXZiNTY2bWdISXRUNEdwV3JWcTVV?=
 =?utf-8?B?ekxmdHVabFp3V2pQaXllWkptdDRXeFp2L0g4emY3eTdvZHVCNXp0NEtvUGNH?=
 =?utf-8?B?UkVCUkYrUFRDTndTWjhISjBjTkRFbXZFanRyVmpuYzNZaXY1MDJVWjlyNHpv?=
 =?utf-8?B?MGhiSWxNbkJSKzE4NDNqdWJhWk5XS2grclU1VXQ1b0hwb01zTHgwbVpXWEtt?=
 =?utf-8?B?TFZNaWtmdGVTVkhyOW41dXpiQ3dwd3d4eW5ISnYzOWVCSTRibXUzbk9hZ2lJ?=
 =?utf-8?B?UTZGUkFSTXpBYUhGa0crTGpheEVXR1IxQ3laSlIwdXF4bXhma09wMlU1VDlC?=
 =?utf-8?B?QllNMDNRY2J6L3AxK3lRRVAvYnJnb2VBdVB5eGhubC9GUE9QMkpiSFVNMWNC?=
 =?utf-8?B?SDlFUXdkZldEcXU0YmpoMGZEb01nRmVLcElXdHFVZEVOcFhqUjYvNHloRGNl?=
 =?utf-8?B?NjdQMGR2SlVRdHZSWFZlcGZvbXdGWmxjWWlBbVdzcG9pYlhRN3RmOWZ0TVR0?=
 =?utf-8?B?YlZodVhpdGJnRVFIUXJYZlVTbFkzN3ZVaCt1T1BDbjUyZDRZVnhsWkk0c3Vk?=
 =?utf-8?B?VHJSQkxaM1Nkd0xIVHN3MGEyM3drOFA5c1R5RnRIOFdlY0VnUDdtNGxoZlgw?=
 =?utf-8?B?Uk9lR0pJdDBydklmSGNsWUhMZUZNbmtXbmdWdDZoVG1IRklwT1VXZlU4UURL?=
 =?utf-8?B?NEVWOGFHZVdaZHY4VVY3MTBTUGNTem1nTXpWUk1iNFJwVTY1aWFZeVhPMGNv?=
 =?utf-8?B?OW1MLzVOdTJ5M21aczh1OC9GaWVnd2UwOFgyNS9TYWEvclpCL3ZOZy9uc29i?=
 =?utf-8?B?Mkx2NEc1Mk14b3RnTC9taXNJRjhaQzMyTzdQK0pRL1dweWVEcWhxY1hId1NS?=
 =?utf-8?Q?uV38mGKLjJEld6xIlhfcEwfnldfYaecM?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV8PR11MB8607.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VjdXNk9zSkdIQTVnQnNEbE5pb0hleklrTkxlREpDYlRCaS95M1c3bW5wdWs3?=
 =?utf-8?B?ai8yRndlaGRVRGJBRldicnIyNWZ3bHVKUW0zZHFQalB3KzFmQkhOb1lrNS9k?=
 =?utf-8?B?TEcwclJ6NC9KZGNTbGptemdPc2xtK1pwUzZ6OG40MDQ3OFNqMDBFS05xQ0Jv?=
 =?utf-8?B?WWpORGRBTXd3MjZFbmFOa3FBaXM4VVIwb1NMenRmUGFxQTUxbUNyMVpNYWM3?=
 =?utf-8?B?T2hUdUZmTnB4YTQ1UTNzbksyUjdmTDNhUUNxRi95N1hUV2RISFNZbnpPK0Fi?=
 =?utf-8?B?OWZOa1BuV0NUS3BTOXFJWk44M0JDSVNDVXZidDFDWXQyM2g5dkFlUm1KWlQ5?=
 =?utf-8?B?OWdvRm94VldJcjFudFNiUU5tUjkzeVpmWDVXV3dEUlRQQlRXd3ZaUXdJS2hL?=
 =?utf-8?B?UVdCcVYvVDVPcDNrRTFFSHNWb3FnQ1J2bXF1bTMwR01jWEtEa3liVUVNSlpz?=
 =?utf-8?B?alhpMkh0ZmlqQWxxZFJPa25wRmdrRFpodlZ6WnMwUTl2ZDdTR0E1NklCbWNC?=
 =?utf-8?B?aUlpd1BTdHNJRUxsNnZGTHB0Y21TRElHL01TK3NNN2FXM1E0Y0oyZjhjcVM4?=
 =?utf-8?B?S3FCU2c2R1hFMDV3cW9BSGxJUmFsZnZVdTZLYVV1dWUvY0ZWM1FqZUZNQVgw?=
 =?utf-8?B?L04wSGUvUlhGeWJORUo2eDh0K0t1K2RYMDZ6REZoRmhaWVpsbmNzMTFvemNu?=
 =?utf-8?B?a1hOTTVUN0NYSGJ4MzRCUHdxVDBrOHJQb1NlYis4Rk13VEpqblB0TUNoNEJU?=
 =?utf-8?B?WW5ZMHByMTI2QnFpRVZJczUyZWdQVmZOZVE0YWxXSkRLNzR4TjZLVHZoZUN4?=
 =?utf-8?B?Z2pKNmN2Z1Z2bDQ0eHkvZEI3cXlCYTJzYlJlY0huY0ZyS1hVUzdPYTc0UUww?=
 =?utf-8?B?QjFNQllQNmF1dmNNV3g0cmRTa01lOC9jRVd2ZGFlWU5ZYXBFTTZVNW83L2tL?=
 =?utf-8?B?Q2FUOXVSSXhqVllJb1NlS0JKNlN6aEpOc01yM1FJci9nRHh3aWl0WjZBMTVT?=
 =?utf-8?B?UTI1YkVQb3pKUVhmZTZMWGNBcHQxV2pzaFlTekFIZjlQWjU1Qm9ydkJwL3Bm?=
 =?utf-8?B?bTVOc1Y2UUJVVUlpcVlZNWlaaU9lSEh3V2hWWGpOeE5zWDNVRWloQmVmazBK?=
 =?utf-8?B?UlppdzVPSHUvWkZBVUlZWE5QU1lwVGxEVUpMRDZYVEVtSkF6eE4rL2I4bzBT?=
 =?utf-8?B?ei9JdnMvWHJtMDVvVXYrV2RYb3pHcUlBTE5HOUV5REFob29hMUdxQi9rRWV3?=
 =?utf-8?B?WFFJL0toNGpoeWlmcUI1RTloenNBN0xqc2VaZHFXOGprVHByWWVlUmV5RlNQ?=
 =?utf-8?B?THNXSlRjYzBRY3E0V1ZOVzNKQVhyNVAwcUx1VkEzbVBKR3paWTNoVnI3ZzFh?=
 =?utf-8?B?YXM4cVJPT0x1TWVnRkxwZHFqOHlYQlREQW5pdjZIMVFpMS9lc2phTU9YdDBi?=
 =?utf-8?B?QXFtdjlnK01RYS9LNGxndkI1SDNtV0JYUVVWVUpFQzlxSTNDcHVpMlZiZmJq?=
 =?utf-8?B?Q09wd2RONVl3MFBzdC9vOHhrZitWU1dOemJKRFYrbVY5SlB6eVVuSWlSTVhs?=
 =?utf-8?B?NnlNMUtocFFpTFVReUtBU092UGpyMVRzMDZ1TFJKOGpPWEhqNDRucUNUQ3pR?=
 =?utf-8?B?aWxmcS9lNzYxaGFOTjl2ZXF0c2lFaThSU0t5UFlwcy9CbmhUQVI3YTZUMW1x?=
 =?utf-8?B?dHlORDRndC9RdVdGM3FKR2Q4WEQ5Q21WVnRXcEswTnI3UnJ1L05FS1dTTURv?=
 =?utf-8?B?UGJWeHMrOGg1M0cwNndjMGV0R2t0b3RGMlI3Y3BTQWlVc0J2YU1icktVdjBj?=
 =?utf-8?B?czdPOTBkNEdRV3JUeFpudzFTRDNMVUYxY1JuOU1uMjgzeXRPMTdra1FQaXM5?=
 =?utf-8?B?RFpHTGlMeUFqWURadkFKdUdrdURRaTExNDdIL3ZkOTkydXBLODNYZVZzM2pT?=
 =?utf-8?B?ZlI5SWhhZ1dQOU5UOHhKYTJvbGhNNkt2eFEyMW80QVlzLzlpZzBqeThiemZ4?=
 =?utf-8?B?ZWp0MGJERGdPRm5rakYyWFZlYjljTFl5eXk2TTY5Q2tzNEZkV2hDdGlaN01O?=
 =?utf-8?B?N0FxcWRoL05CZUFWWDlTdEJ5QWJsRitmLzRmejczand2a2pkaWREZFNleHBj?=
 =?utf-8?B?LzdBaTBIcUVuRWJtT3JqUzNRam1vMm5nT2R1NkQ3bWdLWmFCYVlnSWZ0QXNQ?=
 =?utf-8?B?ZWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 680ac73c-6789-4803-9c62-08de0bc13ce6
X-MS-Exchange-CrossTenant-AuthSource: LV8PR11MB8607.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Oct 2025 08:02:51.5331 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EPYfnr5DKsL0A7J+3fX8YIcx+j7dIHZ9u8WNBQZslA7CVCqb9S2dqVmAa/xnRP08cZ1Eoic/f+tmGo0WEXcSgu0zDmxmM3rsf8ewPPKatKs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB8806
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


On 10/15/2025 8:45, Gustavo Sousa wrote:
> From: Luca Coelho <luciano.coelho@intel.com>
>
> Starting from display version 35, we don't need to use method1 to

In the patch title and this description, can we have something which 
explains what exactly is method1 or method2? Seems too vague.

-shekhar

> calculate the watermark values anymore, so skip it.
>
> Bspec: 68985
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>   drivers/gpu/drm/i915/display/skl_watermark.c | 2 ++
>   1 file changed, 2 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 88342d07727f..fba7448c4920 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -1809,6 +1809,8 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
>   
>   	if (wp->y_tiled) {
>   		selected_result = max_fixed16(method2, wp->y_tile_minimum);
> +	} else if (DISPLAY_VER(display) >= 35) {
> +		selected_result = method2;
>   	} else {
>   		if ((wp->cpp * crtc_state->hw.pipe_mode.crtc_htotal /
>   		     wp->dbuf_block_size < 1) &&
>
