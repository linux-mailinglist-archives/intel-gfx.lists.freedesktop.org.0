Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 020078AC432
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Apr 2024 08:29:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E07A1127DF;
	Mon, 22 Apr 2024 06:29:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a7LuCy//";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 965EB1127DD
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Apr 2024 06:29:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713767366; x=1745303366;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=e+0AMEWx2szhrOgI9wONezEsqQ/1jwj23ApB1QsKZBo=;
 b=a7LuCy//7sU0jyqdwaFLYqG42f/ZV+J8y3+cyeb/Z3e6DbdR1VUpj2iu
 pUqTTTRnrTyUiLH7DAmg78cHfwjgQNYjbT09XmncHg0xykPtLzOepVhrZ
 hAShkXGIPQGCPec86KOSdNbLHC9U1VQEUFGb4YzBphDCn09khFiQYdfwV
 c+omomqH+my5gWZZ8pinCNfAk1mS4GUOe2H7CMTbITbjXp66N1CB+S/13
 XGqlbDx4dBWDxAXD2SiNmMu734OZGYszdtqqB0ajQFk4fWftcDaCFx8Rx
 79bVrQ7XhKPAjRIkjMBrBYOnK6XIa0wZUkI6UKw0eoZc2SQ1S+a7aWspE w==;
X-CSE-ConnectionGUID: c7y9brpJQ4iYlQHLftyZNg==
X-CSE-MsgGUID: FOxR1/qTTiiHRf2rImLCSA==
X-IronPort-AV: E=McAfee;i="6600,9927,11051"; a="9509313"
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; 
   d="scan'208";a="9509313"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2024 23:29:21 -0700
X-CSE-ConnectionGUID: 1wxZc2xGSXaXTwSnwZ2IYg==
X-CSE-MsgGUID: QJnqyp5YRpqHcLFuA7zGwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="23965416"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Apr 2024 23:29:21 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 21 Apr 2024 23:29:20 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 21 Apr 2024 23:29:19 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sun, 21 Apr 2024 23:29:19 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sun, 21 Apr 2024 23:29:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IRbFt1hUMWyRtIAUM7N6v9NWEk20Vhnu7VYW0sDlJ12/hCVK8Rn+jJDqwONN7yZi54rSXdiPXB3m0ljRWodv9016uKE8R0VjJk0b3F1uqN9EzyXmzTsQwIqYolVBstVNdrk8aWVCSChHnvpwUwfuHF7tIIOIz2Ec/peUzFDd3D5C2M/to5WftvHTPx6gMHHfBrYKZRC/en5JBMmc7oPnW8bRErVNiD3awDP0bYAQllMYPY3Vnd52blXkJ9flJ2nxsf9tNFxNmk/97PPGFs+cxLma5ahjHBcv9lMB1S9Rf7WaDxCY3ZfpemjOrlVFlH5xBivMfDB+d/FQhH0l8dOFXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X6tv97Dc5kC5VqHPkaWCPKL8u3pWBdGnqzoLByMM92o=;
 b=Kzm7JJINNz8c4iNbg+9zFWc6+jOtcQlBcMw0ftAbx9UJoAn+O36Brg/QlaPDuZELJ0XvqITGZUFsiibPs1h1i5LUf9r5EPZL5QrNrqneSaoqHCxRMF3tozCbhYS9UtiJNdQNm8L10+7nyfGnCDOMJgFOef25V5eDfb/vlYHNzvOoI7IOuaiPlw4DFaCWS3O/Mh79KaIGQtM6ftc/UIGQxknJNp1Wpa9ZBnt8If9A0tEAj2k9BqKfQrRsTNqZ8fxfGbDt5FkUdOtO573bmQqPleUJDlJFjhWGRv8RhyYSverjRGByFD/gAMbcLXP7tC4LhENzyISorXsutYrhTww6dw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB6974.namprd11.prod.outlook.com (2603:10b6:510:225::16)
 by SA1PR11MB6687.namprd11.prod.outlook.com (2603:10b6:806:25a::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.12; Mon, 22 Apr
 2024 06:29:18 +0000
Received: from PH8PR11MB6974.namprd11.prod.outlook.com
 ([fe80::24aa:9b79:84d9:c426]) by PH8PR11MB6974.namprd11.prod.outlook.com
 ([fe80::24aa:9b79:84d9:c426%5]) with mapi id 15.20.7519.018; Mon, 22 Apr 2024
 06:29:18 +0000
Date: Mon, 22 Apr 2024 11:59:01 +0530
From: "Vivekanandan, Balasubramani" <balasubramani.vivekanandan@intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <saurabhg.gupta@intel.com>, <John.C.Harrison@intel.com>,
 <chris.p.wilson@linux.intel.com>, <andi.shyti@linux.intel.com>,
 <nirmoy.das@intel.com>
Subject: Re: [PATCH] drm/i915/gem: Downgrade stolen lmem setup warning
Message-ID: <ZiYDrR6uUEqNFeSn@bvivekan-mobl2>
References: <20240419212643.3915745-1-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20240419212643.3915745-1-jonathan.cavitt@intel.com>
X-ClientProxiedBy: SG2PR01CA0192.apcprd01.prod.exchangelabs.com
 (2603:1096:4:189::21) To PH8PR11MB6974.namprd11.prod.outlook.com
 (2603:10b6:510:225::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB6974:EE_|SA1PR11MB6687:EE_
X-MS-Office365-Filtering-Correlation-Id: 22186162-9c64-4829-ec3a-08dc62958994
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WG1ta3VnTi85NE56QVdaUkVQYWFBd1NjWTdsQ29yZzhGWjMreTg4VGNIZU4z?=
 =?utf-8?B?Y0lTWTJDZXZyUkE2Skk0Z0pMeHo0TngwUnR0bGJCeDJxb1UwTUFTYlhzTTMy?=
 =?utf-8?B?MFV1V2tDUDM3TWZvWGxTS3lXOE5vZnFQbGlFNnlBZkgzdllrYVVWR3FzRHdI?=
 =?utf-8?B?OXJyZWdtTURqNFk2bTZoUmRWYmVDbHYvQ01UdmFCQ1V5T2pTM1RsVWtlK3o2?=
 =?utf-8?B?Wjd0RjZHNkRYNnd2VEEwT3FFS1UzUjZ4UitMeStaaVFDNnUxZDVJSmR3ektT?=
 =?utf-8?B?cUJuSmdxT3NwU0NQYVJkVEtUZGc5MWNocmtQaTViSlVaY1NEaGwwQ1lrY3do?=
 =?utf-8?B?VDQ3ODBMMk80S0pSeStPdUEzbG12My8wNHp2M1hhYmFuRG9KaXp3Z0JWZHN5?=
 =?utf-8?B?ZE43MzJ3ZnlNUDZ2dDNDaXNWUE8vTXJFQjZqR25SMEcva2lKRUNCODlBckd4?=
 =?utf-8?B?SHpleHkxY2tMVWFMS3dkaVppOGpZYlFLblFaSDJQL3QzYTN5SDkxK0VXV01F?=
 =?utf-8?B?NVFiY1Iyek91WXRsSk9NZ1R5WUtmVmpSK2w3YllLVGZaOVhIRUFDY0Z6bVFv?=
 =?utf-8?B?eXRZZkpIK0lQUjQvWlNOM2c3QnhhKzVaM095RGRWMlFHSVEzNlFhcVBYUldl?=
 =?utf-8?B?UjBWbTBwZThmUmhNbjBHTVlWaEwrdjBaK0hMZkEwYVFpcFpuNTRGSHk0a29Z?=
 =?utf-8?B?MjQyQnFxYTJsMS9VWkVTQ0VVNU8rellsS2EzODZXbXNEY09GbTEraTc5c1ZZ?=
 =?utf-8?B?dTZCNURCSkd3T2M0eURTRzRaenVwNWphbjFqTlBadEJ6ZTRmTDc2emVTbDZY?=
 =?utf-8?B?ejg2ZGpDcUhlT1dIaEhmUFJUOHAzUGJiQjBFUUdlRUhicGhIQVNjZnFkU2Y2?=
 =?utf-8?B?Ukt4RzBwYlhRdzJ2dTZ0cGlVTUVYRUIvNE5LL0Y4bmh5ZmQxLzQvRDhnRTVM?=
 =?utf-8?B?Q0JXbDFUS1o5elQxUVBGd0hqQ0oxR1Y5YXZnWjMxT0RqclhHREFVejNNeTA1?=
 =?utf-8?B?Ym02ck1iZGZlb2ZDQWZyK1JPR2VrL1VPb005bS9zbFVHR0twM3QvSGJtODEx?=
 =?utf-8?B?dHpOTkVmMWtoREs2U09TSXNSaWozcklkUGR2eE1tbktkZFUwQkd2WGpWTU90?=
 =?utf-8?B?U2ZNeE9GU0FPSDhPWkJ6dDZHTmpubU9ZTEpwOGY2dElCTkxqTC9PWHJ3RWFl?=
 =?utf-8?B?UzhjaDBFL0kvRE5CQVFFcnIyMGNMaCsvcmRnOXcvTk4wTFZGbEV2Vmdvd2Yy?=
 =?utf-8?B?b1BnVDFPNzE0cmlMRWFVSDF5dDBuQVRkTEJBWjIvV2JqaDdGRnVRQlJnQmx4?=
 =?utf-8?B?K0E1MkFFUjYzQnovV2c2UlowSTZEMGdFcitxaVIza2U1SklndGxpZGdtTG1u?=
 =?utf-8?B?dzRoZ3hWZHIxVE5vOThFa2ZtakNPRitqYmFZenJ3SExaZVlROWE2bmtwNEpw?=
 =?utf-8?B?dE8zN3FTNUgvMlI4YkFaMzdQUFo0TnhvMjFWZVZ5NW1nU1gwWlA0Znd6YmJI?=
 =?utf-8?B?VG1JbFk0ekN1ZC9Qc013TzVaVHVWUjNId1BDM25vWUVRTmsrR0srTFc0R1Fx?=
 =?utf-8?B?bnRYaGFRUTFtRDBXb0JKQ21McEh3OEVPSHltVFM4MWRqOW9GNXZacm11VzJh?=
 =?utf-8?Q?Nyccml7saKhUzKVHbo6hqOXC8ManNOU/ylvYt3/25aTY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB6974.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VWQraHI4T1kwb0hMb2Rpa2ZRZ0Vyd3hrZGlMZnprTHYzYi9jZ1RwQ2MwMGw4?=
 =?utf-8?B?YVUrRnJqRzdUOHJXeVFmSUJIMHlCM2FwUFdKOE5UY3BZNVU1SVNoaTZGcjIw?=
 =?utf-8?B?YzBKbTJNMHcxT1BpNUlFNVpodk4yY2YxdGRrRjBUM2UrMnI4K3hacnZReFFL?=
 =?utf-8?B?OFpSajJXWUw2NjNka1NsZVFqK1pxYzRSb2lIaHZvYWRiTjhLQTZ4eGJteVFY?=
 =?utf-8?B?N3kxS3JOUWJ1SUZ6NW42OUYrL2VRNmgvRXVmZzZoNWJ1WE82WTFUT0FYTER6?=
 =?utf-8?B?SmJLUVZsOGFRbEVjYVROMWhUTmFTa0tLVGRtNERBVVZDYjdlSmkzQStJcVQr?=
 =?utf-8?B?aEcyYmtscUt3NDhuR1N3VHVXZitwVE5KVEc3UnFtd3NXZXJCRWRGTVFDQklp?=
 =?utf-8?B?UmdSRytTTGdMemlYY2tmVnM0K1FWK1R4ejAyNmdGMDJ1R0lFR3JCS0kwb001?=
 =?utf-8?B?MzlwQ3VRNGJhM3lWUE9yR09jWStVRXJacHhlQk5IdGtLYnI4Sk1OWGRISktW?=
 =?utf-8?B?NkJyQnpuKzN5SHlsZjY0ZFVRQUozbkJOdW1hei82SnNnSzgvN05rUDVsUlQ3?=
 =?utf-8?B?cUJXQmoxeHhlVDRMUjVmTFo4Q0hSSlB3YnVvVEJCNEFWSCtuNFVzL1pRMS9E?=
 =?utf-8?B?ZkhPN2J2NzhyZHJvaXVGMWRDSGErSUVzUE84clQzaXRlc1YrTjJhdVRsYTcy?=
 =?utf-8?B?NVh0MWRtUWczbVpyMjJHeFpLOEU1M0x3YUVzK1pVaDVOUjZZZUZMQnhUSzJt?=
 =?utf-8?B?WVV0VXBHdnNFYzVEeXlZWGJNMlY5V0pQbzdZOGkrbm8rMjZ0SXkwdUxPTWlH?=
 =?utf-8?B?ZGp4Ty9DVWxmbkpadXJSYzdxNS9lcGJaNTVnNm5ONG1ZWGdMeEE4OEdtSXQ3?=
 =?utf-8?B?b1U5dkdoY29mQS85anBNdC83eUErVE9WSDZmdVpPSTZBYnFSVmtTSG1RWTUy?=
 =?utf-8?B?dEFkc3REa2FPVkRJSHM3N210aHVMZURNMm0rYUlHUnJEOVlhaXU5akpXbDVL?=
 =?utf-8?B?MVR4UVlhc2tBQ3RRVHNlR1NHS0d6NjZFdDdZY1MzWlNGYkRXeStoSUY5ZFF6?=
 =?utf-8?B?TDJqNVdwdlU5ME5wN2tVUjB6VFpBMUVpbXdMdmIwNHlTS1YyU2hYRlI5RGhn?=
 =?utf-8?B?d1VGcldncittUjArMzFGRW5jRUE5a3hTbXU5US9ENTNXL0NXdGlJcnd4YUFr?=
 =?utf-8?B?ZXkwYWMxNGowNzJXOVUyMUEzOXFkSmhNdFQyVFFISEczK0MzRXpPdEFPZVJO?=
 =?utf-8?B?ZDQzOG1BRWJISytKMEU2b0RVcTQ3MHlIUHIwaHMySE5tMmxEbTVnbDliUlF1?=
 =?utf-8?B?bUxWeU1JR2hJOTZXKy84TjBuZWZSMW94WjJOQnlyd1JUK1poZm5RZGxUNUMz?=
 =?utf-8?B?dTN4TlF5TzViNUluSitybGdNTHRwS2hjQmVmN1Mxcit5S1hjaktWem04aUla?=
 =?utf-8?B?WW1vdDFJSVBneHBzZVZTamEweDFOdVVTTTlCeFRaWXg5KzFOVjRCeGMrSGVC?=
 =?utf-8?B?SWFmeHZJRm01bGNTTzkvL0c0TDFRenFqcVhPTG9vTjRtY2Y2cVIwNmRBSmE0?=
 =?utf-8?B?UTgvZ1JuV1hWYTdRRi9raUNVOURwakNYYnVHQmdxKzdHSnloWk1Rd3JlWXBh?=
 =?utf-8?B?MjZqYk1GZDdpczgwMG81eG5zSi9XQk1wUFRFQ0xVaEFQbnIwSEl1L1ZucTdt?=
 =?utf-8?B?OXpESElZR0NjR2ZsdFREbzBpU2QxU2xCM2Z1UnVPOUJTRHJObGFNY2xlSFJP?=
 =?utf-8?B?Q01keGtrbjNwRlJKNVU5RkQzb0tHL1VjY1VkSWVUcENHWGluR2NlYzE5UzE5?=
 =?utf-8?B?bm5xdGtMYlFsV3V2RXB5R0xTeG5HM2NYSDlPWDJoWmp3RW5Za2JqMmRXcUM2?=
 =?utf-8?B?Q1B6T1pPcXZ3V05mdk1wdFpadmN5UHBZOGVXQ2IxOGlsTlovUGxJMGRCeUMv?=
 =?utf-8?B?MHp5ZHV1Sm1BQyszOEphbmxHZlV2aTJUZmd5cGxiMWhkelorVGNCWlZMNkhy?=
 =?utf-8?B?Y2xlbTBoU2w1R09Bb0VaNTBYRWJ4a3BCZk9SaTlGcDQ5ZHl2NnRkeEw2UEEw?=
 =?utf-8?B?UVZCcEh4U1ZmakRWS0g0K3NjTUJMbzNpUysvakk4RGkwS204SGFBMm9LUWtJ?=
 =?utf-8?B?Qnc2N3FTWDRqYXowaElZTUV0eHk5YXhSRmdtY0pnV0lhbUtLblprdEdDVGdZ?=
 =?utf-8?Q?FY4fEepWmKzOfR72rlFB2Fg=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 22186162-9c64-4829-ec3a-08dc62958994
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB6974.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Apr 2024 06:29:18.0014 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IipljL4kRfeU0YiEx+T4uXpSV8kK7h6pHIEd+KEeenkbkT82bYgIo6zR2KZcDUu3GYXaxWum1Lv7AP9q7apnzlLPYyZqvxfWgnp8Qx2+mV8uwTgPH2oV3vHWLA0FEgK7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6687
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

On 19.04.2024 14:26, Jonathan Cavitt wrote:
> In the case where lmem_size < dsm_base, hardware is reporting that
> stolen lmem is unusable.  In this case, instead of throwing a warning,
> we can continue execution as normal by disabling stolen LMEM support.
> For example, this change will allow the following error report from
> ATS-M to no longer apply:
> 
> <6> [144.859887] pcieport 0000:4b:00.0: bridge window [mem 0xb1000000-0xb11fffff]
> <6> [144.859900] pcieport 0000:4b:00.0: bridge window [mem 0x3bbc00000000-0x3bbc17ffffff 64bit pref]
> <6> [144.859917] pcieport 0000:4c:01.0: PCI bridge to [bus 4d-4e]
> <6> [144.859932] pcieport 0000:4c:01.0: bridge window [mem 0xb1000000-0xb11fffff]
> <6> [144.859945] pcieport 0000:4c:01.0: bridge window [mem 0x3bbc00000000-0x3bbc17ffffff 64bit pref]
> <6> [144.859984] i915 0000:4d:00.0: [drm] BAR2 resized to 256M
> <6> [144.860640] i915 0000:4d:00.0: [drm] Using a reduced BAR size of 256MiB. Consider enabling 'Resizable BAR' or similar, if available in the BIOS.
> <4> [144.860719] -----------[ cut here ]-----------
> <4> [144.860727] WARNING: CPU: 17 PID: 1815 at drivers/gpu/drm/i915/gem/i915_gem_stolen.c:939 i915_gem_stolen_lmem_setup+0x38c/0x430 [i915]
> <4> [144.861430] Modules linked in: i915 snd_intel_dspcfg snd_hda_codec snd_hwdep snd_hda_core snd_pcm vgem drm_shmem_helper prime_numbers i2c_algo_bit ttm video drm_display_helper drm_buddy fuse x86_pkg_temp_thermal coretemp kvm_intel kvm ixgbe mdio irqbypass ptp crct10dif_pclmul crc32_pclmul ghash_clmulni_intel pps_core i2c_i801 mei_me i2c_smbus mei wmi acpi_power_meter [last unloaded: i915]
> <4> [144.861611] CPU: 17 PID: 1815 Comm: i915_module_loa Tainted: G U 6.8.0-rc5-drmtip_1515-g78f49af27723+ #1
> <4> [144.861624] Hardware name: Intel Corporation WHITLEY/WHITLEY, BIOS SE5C6200.86B.0020.P41.2109300305 09/30/2021
> <4> [144.861632] RIP: 0010:i915_gem_stolen_lmem_setup+0x38c/0x430 [i915]
> <4> [144.862287] Code: ff 41 c1 e4 05 e9 ac fe ff ff 4d 63 e4 48 89 ef 48 85 ed 74 04 48 8b 7d 08 48 c7 c6 10 a3 7b a0 e8 e9 90 43 e1 e9 ee fd ff ff <0f> 0b 49 c7 c4 ed ff ff ff e9 e0 fd ff ff 0f b7 d2 48 c7 c6 00 d9
> <4> [144.862299] RSP: 0018:ffffc90005607980 EFLAGS: 00010207
> <4> [144.862315] RAX: fffffffffff00000 RBX: 0000000000000003 RCX: 0000000000000000
> 
> Fixes: https://gitlab.freedesktop.org/drm/intel/-/issues/10833
> 
> Suggested-by: Chris Wilson <chris.p.wilson@linux.intel.com>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_stolen.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> index ad6dd7f3259bc..efa632a9e61c6 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> @@ -936,8 +936,12 @@ i915_gem_stolen_lmem_setup(struct drm_i915_private *i915, u16 type,
>  	} else {
>  		/* Use DSM base address instead for stolen memory */
>  		dsm_base = intel_uncore_read64(uncore, GEN6_DSMBASE) & GEN11_BDSM_MASK;
> -		if (WARN_ON(lmem_size < dsm_base))
> +		if (lmem_size < dsm_base) {
> +			drm_dbg(&i915->drm,
> +				"Disabling stolen memory support due to OOB placement: lmem_size = %lli vs dsm_base = %lli\n",
> +				lmem_size, dsm_base);
>  			return ERR_PTR(-ENODEV);
The patch is still returning an error and aborting initialization. Only the
warning is eliminated. But as per the commit description, the execution
should continue as normal after disabling stolen lmem support.

Regards,
Bala

> +		}
>  		dsm_size = ALIGN_DOWN(lmem_size - dsm_base, SZ_1M);
>  	}
>  
> -- 
> 2.25.1
> 
