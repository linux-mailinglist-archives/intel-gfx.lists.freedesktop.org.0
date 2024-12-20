Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E98A79F9374
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2024 14:43:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9371710E393;
	Fri, 20 Dec 2024 13:43:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BvGJrB0w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B9FA10E393;
 Fri, 20 Dec 2024 13:43:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734702229; x=1766238229;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=5VPHjLGemrA4sKCdhkr1pPzrzK9yvHbfVEUomW2hoYw=;
 b=BvGJrB0wUfWkdcxojkRrvQ503nR5d1Q8p/uqcoLFrKWO3+wZxD/lWDt7
 0jKUoUqUMQjjpx88i1k5M/vUPwT0p4EHLpGeWK2x9I9J0R6aorivjsZxS
 PhNTEsQUOyvnGU4lnlAz87M6xz7/ySbKZWcNxYrNJpCuxRidqhjXVy8A/
 apjtQU+PembeWoKq75kCBSpJwd0anz4Zt1Nq9Oop5BSxE/dnWjIL9QhRO
 surXBOsq+Z6cM2YhB5g9qSw6gNgb3ecJ/jJy/Z9gxRh24Uz58Ju8lvP1h
 UgtfWW80d60X+ZNU2rZceUDU11XFAePjwbenZEifge1qVh5EJMfKs41bZ Q==;
X-CSE-ConnectionGUID: MorsWEsvQ+azri+Xr4Ga7g==
X-CSE-MsgGUID: AWIINdE/TuiNCdIH19NkIg==
X-IronPort-AV: E=McAfee;i="6700,10204,11292"; a="46629823"
X-IronPort-AV: E=Sophos;i="6.12,250,1728975600"; d="scan'208";a="46629823"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2024 05:43:49 -0800
X-CSE-ConnectionGUID: zn/NDOeeQHm7KlRCM875Xg==
X-CSE-MsgGUID: NHJM2hYoRcC7QxTyKIoQXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,250,1728975600"; d="scan'208";a="98297689"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Dec 2024 05:43:46 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 20 Dec 2024 05:43:47 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 20 Dec 2024 05:43:47 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.42) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 20 Dec 2024 05:43:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MLzDLv8NFPZ0idRleZRzSGWEnzaPizxaeOdymesh2ckZG/rVgmkfy7yksyEsOoK4LpZ0trD0/tab3VslWTKa9E4IpLgBPtRZw2DVKh96FGeIpXFkZJsp3rP1z26r1INsQYW/I+D9ZZwMxgQHdXHZqN7pDpiwqKcnQ3/AUwUeO/Ezpoejoh01+4oODssAQojdF8fdR8vTpiblARo3Omj1TqT9iXxZUJVEzncwarSpxneJ07C7BKOD7RB9uxKuOGhKuDVmZ9CCVvqZUElZmnUhLTcNuJVHk4vGh7ks5McFCVOzWts/x4rQaZjca8P4U2sXo4EChZ8nHA56hFOcQut9AQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6Xc8uo7bccatoeOXiL+i4VSL4yLY8U5/zeN9pApXsDo=;
 b=Af82b+V2X6kkhR9sxjGAuh7dsiHTDVDMSlaManHwQ06ZIrJftRf3uPK3KMWDpuUC/+Stw8k0/G6IbFEyKUKEENtyI15L3vuGhWEB/w1P/EbCUzyzJ3F4XihMxk6WQue8Ec7y75B3xSrNSZAr/jzJv1s5u1C43SkjQmw6rFEi4OKrddzLZvM7t3HbjXzcWZLz8HaZv+ldRiyQS3S+87XYnE0XNsAz//1GMq3y1UfgRcRyE5Ojdw8jqrjCkuWzoMJKaHFWsJBs+HQcHyB8DBCUSOUoRXNfCR7unL90slyaxSObgAn+PLW9wcZID8RF7lOch51RcQGHq31TQT5/bzALZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SJ0PR11MB4861.namprd11.prod.outlook.com (2603:10b6:a03:2ac::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8251.19; Fri, 20 Dec
 2024 13:43:44 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8272.005; Fri, 20 Dec 2024
 13:43:44 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CH0PR11MB544405C44E6E8B5D5620ED09E5062@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20241219214909.104869-1-gustavo.sousa@intel.com>
 <20241219214909.104869-3-gustavo.sousa@intel.com>
 <CH0PR11MB544405C44E6E8B5D5620ED09E5062@CH0PR11MB5444.namprd11.prod.outlook.com>
Subject: RE: [PATCH 2/3] drm/i915/display: Add infra to reduce global state
 funcs boilerplate
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Ville =?utf-8?b?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, "Nikula,
 Jani" <jani.nikula@intel.com>, "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Date: Fri, 20 Dec 2024 10:43:40 -0300
Message-ID: <173470222031.2440.16827632095141665520@intel.com>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR03CA0103.namprd03.prod.outlook.com
 (2603:10b6:303:b7::18) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SJ0PR11MB4861:EE_
X-MS-Office365-Filtering-Correlation-Id: 37eec5e9-2153-4f9d-fa9b-08dd20fc5247
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dFZ5R2JFSmlPNk1GakF5blNwTGpnL25WTGhKbkV2N1krWWRqb1BOSVZKcTZF?=
 =?utf-8?B?M2RiUTZwd3gzZzd1LzdGdklaaGhSc25kMHk4V2UvWWpPalU0ZXR6N3lmazFO?=
 =?utf-8?B?Z0VoeEMwNUdycjhKQ1FUNG15STRaaW9lRUhzV3lPbW5vSS9rbVkyUDlNZ211?=
 =?utf-8?B?TE52WXVmUHdDdndkQnAwNGdLdml1a0dPa3ZYeHRvOGJUQVV5Vmh2dnR5MzlW?=
 =?utf-8?B?QUZEaXAzWUYyOFpGN2dyOXZkaFhjTHA4TXVKOFFHcEdxalRkQVJiWThETUVO?=
 =?utf-8?B?QWdaVDRIQyt0K3h3UE9GeS85OVNHNzVuNG5HSFNlSSt1ajlzdDVIM2NEaUVQ?=
 =?utf-8?B?aDdzcW1WRkErekhlM25IY09IeDRBSzl4L21pS1hURlVBWTBQZHlzYXBOTGYv?=
 =?utf-8?B?Vng4Z3IvbGI0eCtJaXNINFpKM2cyK0FQR3F4MVlWN3drdWdRdis3bE9lY3Rj?=
 =?utf-8?B?a0RmWklnWjNpeGQvMW50ZmVvZ1p4cmdtcG5qS1hDN2x1NlBGS3l4b0h5YThK?=
 =?utf-8?B?cGxUOHlDanlrVFR3bm1iV20zUEY1amh0OUNKdXZwRy9FSEVHaWM0cm1CcWQ2?=
 =?utf-8?B?d3dqN3NlS3I4My9qd0RIa0dibzZGaEtRb3REdlppKzR6ckJNM05lNElYSEN6?=
 =?utf-8?B?NVJPVWF4djByVkl4UGl6Y09ZeGttd2FBWVdpN2xyV1pYY3RBRjJxeDdKdE1S?=
 =?utf-8?B?Z3RmNmtZTm8wQWZnYnJmK09tWUJtZ3FOVlFySjRvM3VvcFpta3RhVWVPbC9h?=
 =?utf-8?B?cFFwQWdjK2x6T2l0bDJzMzNsVjcwY2ErQ0N2MTFZQ2lvblh2a2phbGVZUThZ?=
 =?utf-8?B?Mkx0THoyM2VyMGlDRzlwMkF5cmtQOG9NU3Z2bTVXU0g5MVhSN3JyNlV5LzU3?=
 =?utf-8?B?aFNXMFhmMThvaWVHVGVsSTluQlFXU1BMaFVCS0xaZzZ4aWxIRmxNT2Y0a0tU?=
 =?utf-8?B?ZW8zNk9zNlNRYUFFNXdoT0RKK3pTQmpiWk14SW9nUzJqeDAxTnFiQXVIK215?=
 =?utf-8?B?M0dWSGRSRS9TWWZpaG1DMGtrOGZkcStxSFNoMjcveW85V2UvSFd5eFZpR3VB?=
 =?utf-8?B?SEpjNWFXNFlJc2pTTGpRYnBpZWxjbjAxRWlPR0lkaXBDcVRyQnJLZ05IeWhJ?=
 =?utf-8?B?S0doUFdxeVJKTytGSFJiQkpKRjRsOXhlZytOUkN4czQveVU1V242RThTWlBh?=
 =?utf-8?B?d1djSGhQejMxYzl3bHhtR1BsRjV1YkM4dTg5OUR0UU1pRmM4bjRIY3UrZS9h?=
 =?utf-8?B?VXJQckR4MTVyb000UlN1YUVHZis1R1o3YVdpbW16aS9ZYXFVNGFIMTBVR2ds?=
 =?utf-8?B?QktEMWhuSHErYlVOdjBOYklmM3ZLMGU0T3FMRUhIREdZV29wU3ZZRGJUTzVh?=
 =?utf-8?B?bzhFYnlWN0hzdHMzaFRBWktuT3Zuek5BL3pkUmpjRUcrdUtKa3dzUENSWG5s?=
 =?utf-8?B?bXlHTVZ2QnFscnc4bmJSYzd1WUxhdWJRS1orcUo0NEdqU3BTVDlFUU9sZUxK?=
 =?utf-8?B?T0hJUXZLYmpVWW40RllGNjRSOXE4akhqOVVPUk9IYnNUNlhaanUvdFVqRE5Y?=
 =?utf-8?B?MFZEU0FsVmQyaHZ5SjhaM01zdkxnb2RibnkrNFFBeFBYM2E0MDd3YzFhQUMv?=
 =?utf-8?B?TCtrazZvV05JNEk0VFgrZ291MS9GYkhlL3FHcnlZa0t5ZTR0TEdrZXpiWDhy?=
 =?utf-8?B?QUJtaXNsRmVjRG9XbTNKeVhJRUMrYksxb29JV0xNUFBVZFJOV1VidSt6aWxD?=
 =?utf-8?B?d0dvekJkc002Nit4VSt4dVB6Z1Vpak1wZllRN3JMNEM4TGl1eXZrbyt4dlIw?=
 =?utf-8?B?TFVXUGo5WTlLT3BZZWtHN2VpWDJsYkFWckpVWkROT2hSR0FmNGJCMW02ZjAz?=
 =?utf-8?Q?mjcVDNYfr3Sdu?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dnZTdWJZVEpTVUU4THJwdFhvaXdIbEtUU2h3azdGd0JBUVUrK0V6V1RwQ3hk?=
 =?utf-8?B?NWFsV3plT3dwQWQ4MWdQdVBjbjNsa3MzYk40SURYWE9kcXA1YWV4Q3Y5b3pK?=
 =?utf-8?B?eTUrMFFDbW02OHRFREFYRUJoRVBFSUU3YU56ekFRWVEzRklqdzl0RTArdnVl?=
 =?utf-8?B?ZS9jdTVkS1FtaGFzSUkwenY0OSttRkRsY1I2ZExCekg3MVF3MjA5RU8yd2JC?=
 =?utf-8?B?WVhSbU1uSnVJbStTbEtuT3hCSHJlalYrZDZsRTBEbU5RaXpoYXhzbjdKcU5x?=
 =?utf-8?B?VEppMWJIMmtyNzZLRTgwUUtpV2t2em0rYTFNMjJVcEl5ekVxU3lyWWw4c1RW?=
 =?utf-8?B?L2tBUWdYN3o5RjQwQlhwNG9rZW9FSVdqMXlJVU1RcEJDL1BkN2RqYmlVNWdy?=
 =?utf-8?B?S3MwbFd1dEJPS1NlZU03cFo0RytOVnpnMXdrZ3JHdm96MWJ1d1lxaEJJUVFC?=
 =?utf-8?B?ZUxFRThVblJBL1JvaVF0UUdWVE9HSTlseG1QMVZuY3l1QmZQMkNvRnhnQXA2?=
 =?utf-8?B?WkNnSUFDVXJyLzMyd016enRwR2huRVRQQVJSaHVzemhlUU5FbXJ2MjgzQ25w?=
 =?utf-8?B?RUdJZmxJeHZGc3VhZ1RWV1ptaERSMjZZTmpEWm1BVmpFTWwyUmdSclFXMGY3?=
 =?utf-8?B?Sm5OUlNSa0g5K1Bad1NEaTQ5b3pWbWQ5WGorSDRWZXNGbmovU3FyS0hTMS80?=
 =?utf-8?B?S1FKWnBHNWxHQUQ0azk4aDNSVTcvZTJLU2tRTnZMWFJkUWsvako4VUdRWmNL?=
 =?utf-8?B?V0k3R3JjSExjNWlSZ0tuNklLMEFkSUFpVHdVSm9MVEIrcHNDWktWWmYyQzh3?=
 =?utf-8?B?UktTb3pzamdWY0o3ZHFXZnJGVC9tdDBvSzJma1JERnJwWmcvbkwyOEROb21I?=
 =?utf-8?B?NTFXRytaRTlCeTE0WFFKdkg3cXVmSkdVaVhUNGsyTVpwaVY2NUlIdWNPU2Jq?=
 =?utf-8?B?N2hmbU51enRlOTRSZ1lTeTJCQXZvYmpZMGNkWDIzZ2YzUzAvZUZuWFlSaVht?=
 =?utf-8?B?R0txWC9sb2cyRWt5YnpDaDVWNTBvM2hpbGxYMlhBMGg4YloyaUJDcC9rU05X?=
 =?utf-8?B?UmJoS0RrVDBEVVJDcE9WQjhSaHBKblV6b1kxb1ZzYjF2K05MZzZvOTRTN2JL?=
 =?utf-8?B?TVdQV1ZQd2FWMHI5K2xrejU4S0VZb2tkcWNkS0ZHbGpBY1pKR1I2L2pyNzVu?=
 =?utf-8?B?OHNqU0xKaktzRFNxRE9mVVAxVkdJTnNSbkUxV00zV0NtRUlCb3FIU3p6dEZK?=
 =?utf-8?B?SGgzdjVzR1VyaWpVRVc3bCt0a2loV3dqUzYvUWFhYjl4WFFzUWhwS3pLVit2?=
 =?utf-8?B?M2NoNWhjOStnUm1zQ1k5clorMjVJYzhLK2YxR1EwYXRiSjZTcC93d3g3NXdw?=
 =?utf-8?B?WC9oUlBHVjRCVlN6blZER0pzYXcyckxYTStWOFdnaFkraFE5cTlJSklhWldt?=
 =?utf-8?B?SU5ZSUV1SjVGK0dCaFpzY3RnUzEzQTJPd3orVmVsS0l1V0plb2dUL3ZwTE12?=
 =?utf-8?B?ZGp4cUExTFBaQ1l3dDV6WHlScG1xK3pzZXMrNzJVWlpSNDlmYmJvNnZMc3JV?=
 =?utf-8?B?cS9iclRUMmI4TklzNHdNb21HeDlTL2JlOWZjUDRFYytLTDZHZ1duc2kyOGV4?=
 =?utf-8?B?aEw0SUJCSlpBalljZmNEZzJLZkhUTEtHOVJUWmNaZUxkREQ0cTA5SVY4RzU2?=
 =?utf-8?B?eEpSc1FxYUQvYlR3NEh4bW1DUXF6MWx5MDJ3V1lRbHpUMU4vN0hVQzA2U3BY?=
 =?utf-8?B?bkplMndrM3ZrYlJhdS84M28veVBkV0J1OW5xQ1cvYkFESnRsMFB6SC9RTFF6?=
 =?utf-8?B?VzJUc3habjY4Nyt3TVY1akVUQ0JSZTdVei9IeG9OUHZGazkzQlJ2VWhtZlF0?=
 =?utf-8?B?bndsamVhUjhMaEl5eFRqbmVVZ1JkYjNyd3oyUXdxWkhEcmtwUzJpelV2TEQ1?=
 =?utf-8?B?azhGdVBMMjVqOVhjM3BaNExZNlJaR002TE4rT2RXcVJyL2JYTEZmTU9CbnZ3?=
 =?utf-8?B?eDRGNGZqU1c0N0F0Z090RGUrZUo0SVBsRlkxSEFZamNmUE50Zit0ZU1ITzZG?=
 =?utf-8?B?VFZTNGhtMm9aQkNKdTVCK1ZOQUlVb21HaUppWktQanZVZEd2aFBiZDN5aXNR?=
 =?utf-8?B?ZlR2SnArOXRyUW5kUnRsVVFoZGllbEhyT2dUOFM3M3dYb2NFT3JHZlZJUFNz?=
 =?utf-8?B?Wnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 37eec5e9-2153-4f9d-fa9b-08dd20fc5247
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Dec 2024 13:43:44.3560 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: n/E21IAesb7dCLNCf2ih/yaeA+j/PFruTKQRWtI71Y97EeF8gUTiZCZPZK8I1QHsOVi4/V57+DwXgxox3XuJXg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4861
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

Quoting Cavitt, Jonathan (2024-12-19 19:44:12-03:00)
>-----Original Message-----
>From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Gus=
tavo Sousa
>Sent: Thursday, December 19, 2024 1:49 PM
>To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>Cc: Ville Syrj=EF=BF=BDl=EF=BF=BD <ville.syrjala@linux.intel.com>; Nikula,=
 Jani <jani.nikula@intel.com>
>Subject: [PATCH 2/3] drm/i915/display: Add infra to reduce global state fu=
ncs boilerplate
>>=20
>> If we look at how the members of struct intel_global_state_funcs, we see
>> a common pattern repeating itself. Let's add the necessary
>> infra-structure to allow reducing the boilerplate. We do that by
>> adding common generic implementations for each member and adding a macro
>> INTEL_GLOBAL_STATE_DEFAULTS() to be used when initializing an instance
>> of struct intel_global_state_funcs.
>>=20
>> That way, a global state that does not need custom behavior can have
>> its funcs structure be initialized as in the following example,
>>=20
>>     static const struct intel_global_state_funcs <prefix>_funcs =3D {
>>            INTEL_GLOBAL_STATE_DEFAULTS(struct <prefix>_state, <base_memb=
er_name>),
>>     };
>>=20
>> , without the need to implementing the functions.
>>=20
>> That doesn't come without cost - we will need to store two size_t
>> members -, but that cost is arguably justified by the simplification
>> gained.
>>=20
>> In an upcoming change we will put that infra into action on existing
>> users.
>>=20
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  .../gpu/drm/i915/display/intel_global_state.c | 41 ++++++++++++++++++-
>>  .../gpu/drm/i915/display/intel_global_state.h | 15 +++++++
>>  2 files changed, 54 insertions(+), 2 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_global_state.c b/drivers=
/gpu/drm/i915/display/intel_global_state.c
>> index cbcd1e91b7be..4b4c33fa99fb 100644
>> --- a/drivers/gpu/drm/i915/display/intel_global_state.c
>> +++ b/drivers/gpu/drm/i915/display/intel_global_state.c
>> @@ -59,7 +59,10 @@ static void __intel_atomic_global_state_free(struct k=
ref *kref)
>> =20
>>          commit_put(obj_state->commit);
>> =20
>> -        obj->funcs->atomic_destroy_state(obj, obj_state);
>> +        if (obj->funcs->atomic_destroy_state)
>
>This is good, though I think it's standard practice as a part of
>these kinds of sanity checks to assert that the functions pointer
>also exists before attempting to dereference into a function itself.
>
>Or, in simpler terms, I think we want to check obj->funcs here,
>in addition to the atomic_destroy_state:
>"""
>        If (obj->funcs && obj->funcs->atomic_destroy_state)
>"""
>Though maybe obj->funcs has some guarantee associated with
>it that ensures it always exists, making this sanity check unnecessary?
>Much like the guarantee obj exists?  I'm not familiar enough with the
>display driver one way or the other to make that declaration, so I
>won't block on this.

It is a bug obj->funcs to be NULL. The funcs member is initialized
with intel_atomic_global_obj_init(), which must be called for every
tracked global object.

Furthermore, checking (obj->funcs && obj->funcs->atomic_destroy_state)
would be problematic because
intel_atomic_global_duplicate_state_common() relies on obj->funcs being
a valid pointer (as does all of the global state logic).

--
Gustavo Sousa

>
>> +                obj->funcs->atomic_destroy_state(obj, obj_state);
>> +        else
>> +                intel_atomic_global_destroy_state_common(obj, obj_state=
);
>>  }
>> =20
>>  static void intel_atomic_global_state_put(struct intel_global_state *ob=
j_state)
>> @@ -164,7 +167,11 @@ intel_atomic_get_global_obj_state(struct intel_atom=
ic_state *state,
>>          index =3D state->num_global_objs;
>>          memset(&state->global_objs[index], 0, sizeof(*state->global_obj=
s));
>> =20
>> -        obj_state =3D obj->funcs->atomic_duplicate_state(obj);
>> +        if (obj->funcs->atomic_duplicate_state)
>
>Same comment as above, except with atomic_duplicate_state
>instead of atomic_destroy_state.
>
>> +                obj_state =3D obj->funcs->atomic_duplicate_state(obj);
>> +        else
>> +                obj_state =3D intel_atomic_global_duplicate_state_commo=
n(obj);
>> +
>>          if (!obj_state)
>>                  return ERR_PTR(-ENOMEM);
>> =20
>> @@ -382,3 +389,33 @@ intel_atomic_global_state_commit_done(struct intel_=
atomic_state *state)
>>                  complete_all(&commit->done);
>>          }
>>  }
>> +
>> +struct intel_global_state *
>> +intel_atomic_global_duplicate_state_common(struct intel_global_obj *obj=
)
>
>I personally prefer these kinds of functions to be defined before their
>first usage when possible, as it mirrors how we need to define static
>functions before their first uses.  However, I recognize that because
>this function is defined in intel_global_state.h, it's not necessary to
>maintain that kind of function ordering and, in fact, it's more
>important to maintain function ordering parity with the header
>file.  So I'll leave that kind of change to your discretion.
>
>> +{
>> +        void *state_wrapper;
>> +
>> +        if (WARN_ON(obj->funcs->state_size =3D=3D 0))
>> +                return NULL;
>> +
>> +        state_wrapper =3D (void *)obj->state - obj->funcs->base_offset;
>> +
>> +        state_wrapper =3D kmemdup(state_wrapper, obj->funcs->state_size=
, GFP_KERNEL);
>> +        if (!state_wrapper)
>> +                return NULL;
>> +
>> +        return state_wrapper + obj->funcs->base_offset;
>> +}
>> +
>> +void intel_atomic_global_destroy_state_common(struct intel_global_obj *=
obj,
>> +                                              struct intel_global_state=
 *state)
>> +{
>> +        void *state_wrapper;
>> +
>> +        if (WARN_ON(obj->funcs->state_size =3D=3D 0))
>> +                return;
>> +
>> +        state_wrapper =3D (void *)state - obj->funcs->base_offset;
>> +
>> +        kfree(state_wrapper);
>> +}
>> diff --git a/drivers/gpu/drm/i915/display/intel_global_state.h b/drivers=
/gpu/drm/i915/display/intel_global_state.h
>> index 6506a8e32972..e47e007225cc 100644
>> --- a/drivers/gpu/drm/i915/display/intel_global_state.h
>> +++ b/drivers/gpu/drm/i915/display/intel_global_state.h
>> @@ -8,6 +8,8 @@
>> =20
>>  #include <linux/kref.h>
>>  #include <linux/list.h>
>> +#include <linux/stddef.h>
>> +#include <linux/types.h>
>> =20
>>  struct drm_i915_private;
>>  struct intel_atomic_state;
>> @@ -15,6 +17,10 @@ struct intel_global_obj;
>>  struct intel_global_state;
>> =20
>>  struct intel_global_state_funcs {
>> +        /* state_size and base_offset are initialized by INTEL_GLOBAL_S=
TATE_DEFAULTS() */
>> +        size_t state_size;
>> +        size_t base_offset;
>> +
>>          struct intel_global_state *(*atomic_duplicate_state)(struct int=
el_global_obj *obj);
>>          void (*atomic_destroy_state)(struct intel_global_obj *obj,
>>                                       struct intel_global_state *state);
>> @@ -26,6 +32,10 @@ struct intel_global_obj {
>>          const struct intel_global_state_funcs *funcs;
>>  };
>> =20
>> +#define INTEL_GLOBAL_STATE_DEFAULTS(type, base_member) \
>> +        .state_size =3D sizeof(type), \
>> +        .base_offset =3D offsetof(type, base_member)
>> +
>>  #define intel_for_each_global_obj(obj, dev_priv) \
>>          list_for_each_entry(obj, &(dev_priv)->display.global.obj_list, =
head)
>> =20
>> @@ -96,4 +106,9 @@ int intel_atomic_global_state_wait_for_dependencies(s=
truct intel_atomic_state *s
>> =20
>>  bool intel_atomic_global_state_is_serialized(struct intel_atomic_state =
*state);
>> =20
>> +struct intel_global_state *
>> +intel_atomic_global_duplicate_state_common(struct intel_global_obj *obj=
);
>> +void intel_atomic_global_destroy_state_common(struct intel_global_obj *=
obj,
>> +                                              struct intel_global_state=
 *state);
>> +
>
>I have no major complaints.  Just some notes above.
>Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
>-Jonathan Cavitt
>
>>  #endif
>> --=20
>> 2.47.1
>>=20
>>
