Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30843A980B2
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Apr 2025 09:26:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B92D010E42A;
	Wed, 23 Apr 2025 07:26:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="e0i5jx3N";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C94810E42A;
 Wed, 23 Apr 2025 07:26:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745393182; x=1776929182;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zYhwppFuA4jNjCZszeXad3B9lyS7Bn9tNRaxu1GcyGo=;
 b=e0i5jx3NSA9Q7kiSK3EmBvD44SHvb5rzdziVWpBUbk/JqNTTAjkbh8Lv
 hPlLWaT6vTw2YFSewjjcE05QNGGYcg0TfiPSX+btez6uYC7y4CTHpcrrA
 eOVq45oZehQRj93x+n/taxrY3lyYX5a93vmSAxBImaZCItdiYPKkufbtZ
 pgf0GfVvRAFR17xetf85y+/rA/8Mz/STpjwdXkzZYOvKPUCLndzxv4+Yb
 eah4EMGwl8palhDMLaXwVY3LKfdXRaXpe/d27WVWkINPeQUYgSREeI0hZ
 HROOzw8tqdzLADk00EkTpSsrVs2akDE/GEvoNtftIlsqzt4nkJmHRaY1c Q==;
X-CSE-ConnectionGUID: fgKnfuA5SK2pWY3cwIxt6g==
X-CSE-MsgGUID: MAMTj6kcSY+TDoXkPeBL0w==
X-IronPort-AV: E=McAfee;i="6700,10204,11411"; a="47100910"
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="47100910"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 00:26:21 -0700
X-CSE-ConnectionGUID: FeC6NihKSuaQtd3XiIbmYQ==
X-CSE-MsgGUID: 71lszX2nTC28NpmaCQ2rXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="132085024"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 00:26:20 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 23 Apr 2025 00:26:19 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 23 Apr 2025 00:26:19 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 23 Apr 2025 00:26:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hAE2OZ/PYc9o0+eWE6GBHkjbL5QD+cV6FdM31AROs2RReebJijihVkYizl+FqnG6pzZT5wIEJJJocDS1p5OroHir7wTqtRgvHPJzcRkLeyt5J968Iqcgrj2/EHJrNiHV7kJtU8GgVUIVSKQW+KKv1UvVKYSVWzX+SsSywXaZuUV6OaIkHSEFfGAgJVXgvtwzKJdxBXjoriZw1HkP8YA9sB10O24yharJZMhBAhoNAZbvW9LVhVp7nLE+/tFR5GVq70O/HQG1DTsHHajnqOLxWOoSeIGcBi8Fk0cTLg3F4TSgt349cSBsKZQrS3iIsst6UIwrMdjHmTrHnMmolpCxvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GXZg1mgfquc5ZeUjBzLW2kWvpd8cgo9Gmiefu0wqcII=;
 b=OeCoLFf7l/Op5uhXoX83m/Nvicxz5/XwL+iCMZaGgbjvq62Rq+aJDV81og0irG9Z2J3f/oh6GXb7J2U+0XmJ0fphuzwZZDwJjrm1smYb/vkImr8bvmbHjZ+qfSy+31bE37/o7YS/1oL/koYrcwJXLAlimUzPb59IJq4VVkDyJRIKkSI3BizSjvO1Bw2ZwKeq5rdoZNg8trJ1k3tO9k1+L3vHck5aUjIkfMHyuuKszsjl0780vc0Uw4A8jFJtVPY7ZPMLzhkFZ7yZx3BzAUD/CrNyqNE5so3Is0cJ0CpKf48iZ2vmIjmsz6ZV17FSrNkHFDw3GQAQdSBnXYJ/X6ilDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by BY1PR11MB8079.namprd11.prod.outlook.com (2603:10b6:a03:52e::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8655.35; Wed, 23 Apr
 2025 07:26:16 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%5]) with mapi id 15.20.8678.021; Wed, 23 Apr 2025
 07:26:16 +0000
Message-ID: <6cfee19c-9447-4d2a-a7ac-ac79fc3ef244@intel.com>
Date: Wed, 23 Apr 2025 12:56:10 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 12/13] drm/i915/display: Prepare state checker for dc
 balance enable
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <ville.syrjala@linux.intel.com>
References: <20250421154900.2095202-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250421154900.2095202-13-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250421154900.2095202-13-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0070.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ad::15) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|BY1PR11MB8079:EE_
X-MS-Office365-Filtering-Correlation-Id: 63bf9397-1954-4946-3a3f-08dd82382275
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SHI4Wm9TVTNGOUNidVBWbHpNK3EwZkZCVkdpVDl5V0RqVGZKS09nY2Mwak52?=
 =?utf-8?B?MjlYQXl3cFI3OVJ2RTJBT2RFWkJiNzg1TXhQa2ZFZnVHWDNoTjZWSnlMd1dz?=
 =?utf-8?B?T3ZzWHg2YzFZTEVvOWhLYWR5MFJ6REl2SGErOWNsNFUwaVBxdXhIaTBwQVht?=
 =?utf-8?B?RUdPSHEyS25sYnRSeVVjR09kYWhmNVRtbVV6TUM5SEliR2RHakVaUE96T1B4?=
 =?utf-8?B?cUpQNDVCSTRIdTVJdjZ0NEorWEl4WVlQZFZZT080UjBqL3RxbXovUW1KSldB?=
 =?utf-8?B?VVV1Y0xwdEFzOVYvLytxbWpoTi8yd0JOZm1LalNuM2pTbXdwdkpxKzRpSDJQ?=
 =?utf-8?B?VUZyd1VRME00Sis2MjhyTmtGL3lwY2JJYlJSclIwR3JPVlc4ZDY1bDNjRWx2?=
 =?utf-8?B?TU4rUVJlbTVsZ0F5UGVEQjA0R25jWkY2VEQxTFhkZzlRY29vNWQrSmNhb1lx?=
 =?utf-8?B?ZkdkTnBJckc0aVNxRStQc2dxWllUaXFid1pOSjVZT0hqbSt5VUlncjgrVXdC?=
 =?utf-8?B?b0JrcDB1WWdpeUlvNHdnUG9NWVFKaElScWxvUUNET0hJSjhsVTB5ZmZJa0tx?=
 =?utf-8?B?WTRKL2pvb01KRWF4NEhwM2xRcTEzWWVYUU1XSlZPWkxyYjNzYTBjcXIyQ1VJ?=
 =?utf-8?B?dElCSnRMNkFacU1oR0VqUkFHREZ5dXZ5dllKQnovdE41eTBaVFJDWDZyYTdp?=
 =?utf-8?B?cXpnOXFPWU10a0hkT09SWnRTSThiN2h6RHEwVWxyUmI0NFYxZmRxdkpETU9O?=
 =?utf-8?B?VXlRSExZWHV4RVZkeGxMNkZsbU04akdCb0tKRlJLM2dyKy9pY09lS2duMHdQ?=
 =?utf-8?B?UkpnTVBHOG9ERU03d24wb3VBbERtUFppRGhIUFQxZEplVFJYdW9zNnV3WGVk?=
 =?utf-8?B?ajJndzZlZ3dWeUlsbjNiZmhHM0R2YnNMK0Y3VFBKbkFoU1pDSXBUdjNveDhV?=
 =?utf-8?B?VnFhWEx2Sm56Y1M0ekY2N3dhQ3hjZko1WSsxOElTMHNJNnZFTHgrMGlRTGln?=
 =?utf-8?B?RWRyZVh5S1IrTCsyME1OeVFxalNlV0xmVElRZ1NkU05LZzJoR1M5MXlwWTcy?=
 =?utf-8?B?QUpjQkhVMHZmb2FheFRUMTFNQktxRGdxaWVMck0yQjNCZ2FxK213U3R1WmVu?=
 =?utf-8?B?YStSeUI2UlJYZ2NaQmJEL0x4QTNpWFJSSXBZaWV4Z2U2VlJCakJkcFQzVnU1?=
 =?utf-8?B?VnJTSFNwN0tpQ1RQZXM3dEFyNUhiaTFHdmxYUjFCZ1ROb2RXS2R4NGdzRnJp?=
 =?utf-8?B?dE5veE9KYmVqaXYxRnZrQVA2SjBFV0ZGU1oyN0FxRldIaDJ6NXp2OHlOR0tl?=
 =?utf-8?B?UWVITjhoVytLblFIWmJrT3VpLzA2aitVWWJkY3JOWUNCSlFnMVc3TW0vOTJT?=
 =?utf-8?B?dDdyNDlqWEVYc3VITC8zRWc4YmU5Z0hTUUJaTkZ2b0RtS0Zsb3duMFpFc0dy?=
 =?utf-8?B?TDJ5YUdGMkg2RmFiSVQ3Z2xGb3VOVkNwdkVvTmFlcnZqQTY0L0hBZEUvalNo?=
 =?utf-8?B?bld4VTVqbDZBS2tWYUZiUU9oc2xhTGV0UUhxcWxQZ3dMNHRNamF4RGYzTGRU?=
 =?utf-8?B?b2NscWt4NFpUL1dzMDQwTzZ2KytvK3pYSkRiZm0rd1JZbEVTZXk5QzdsNlFm?=
 =?utf-8?B?L2FWNlRYTEJ2MkxVQ3VGcUc4WllyQWZucGJ1Z1NxaGtKNnNCZG9xOWFLOFFi?=
 =?utf-8?B?RkZKYmM4NkpvbEc3dlF0Q3RmRnlqVWk2NFhQbnhIMGZBbDNqc09hMzA0dlBh?=
 =?utf-8?B?N0pwUlhHK2xZQUozTFlVVllDRUhmNURFbE5NSE9BRlczNEcwQ096SUtHR2tV?=
 =?utf-8?B?dUpZNE44RG9UbDlMOXNpRTJRZG0vU09XSXBMOHBnOWdvRlBDaFlVdzFVNVFW?=
 =?utf-8?B?UG5MWUlPK3lZT2h5U2JkTlFKVWJsRVgwenhxWHVWa05wZndKendXRnczSFd2?=
 =?utf-8?Q?ScCVynBR5DM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bDJrbkFBR1RBS1hzTXRXOVY2Yy9id01hTmNqWkkzNWlKY2xjSWZ1NkFMNllq?=
 =?utf-8?B?QUNOSSs2ak4vTHZOaGxUOUw0NjIzcnM0REF1Q1o3WVhJcm9XaFlZWC9CeW9Z?=
 =?utf-8?B?TmlQa1ZIRTdLVnRQeVNabE92TFJZZHRNNGNQZTZQTzJHcCtVRjR5S2RTMWdS?=
 =?utf-8?B?cEE0bVBhOWU0RW1QRVh6QStYVEh6WUpBMU83bm0ycmdSV1dkMVNsbGNTalhV?=
 =?utf-8?B?cVRld3JnQzBXY3hjaGhKSlgzOUVFSEVpSkFKRkpWTS9yOERTOTdSbEJTNHI4?=
 =?utf-8?B?RXRoRlFQMHlkdFF5RkFxYS9GYkh6dUFpeGJUZURrMzJFVEpPMGxsbUdOQjZz?=
 =?utf-8?B?bTlSNnl6a2J3TGZ4Z2FTaGh0RTVLaVErQ3djWmNBaDRPK1lZaWt3TU5GR0Iv?=
 =?utf-8?B?RXhZRnkrV2pFdDArQm1Xbks1UDkxcVJWRWd5MFJtRWdoS2tScGxsUFBrelVG?=
 =?utf-8?B?cDRVYjg5Ylk0ek03NVpCTXpFQU84aTVEM2lGS0xxMDg5aEtJbXlmaWMxa29B?=
 =?utf-8?B?QlQvNVBlVDY0WW9lUmRyaldKaFpqK1d5dG5mNU91SkRRSWIrb0lTb0psM2cy?=
 =?utf-8?B?YUlpSFFkTUhzZUNUbnBDWkNwem84UEVqd2Q3cGJDMXpJYjBJQ1cvVG5rSkQv?=
 =?utf-8?B?SjRwekwrdnpsenNFY05uNTZ5emxnaVdESWZBSVV1YVFsNDRDTlNESDg2dVBK?=
 =?utf-8?B?blJNcHRNMzcrU1BVU045b2p4cXFKRzVDWS9RVXNvOGE4RmhnVXFTZjZFM0pt?=
 =?utf-8?B?T1lnYjkyQ0NWL00rTU9YZ056RFpYTStCL3RlRDZiSWUwNDNLZURIbnlrNXJk?=
 =?utf-8?B?bUJDL2lUTW9abitnMWtoR1BBZDRQQVZCaWs2TUFSZGxuQ2tMbVFPQjhOK0ll?=
 =?utf-8?B?dDJGYVk0QkFKd1hmSkRLUUc4ZDhYRDZLNlNMaS9aZEFFOE5DaURhQk5LUHNj?=
 =?utf-8?B?NFZhSW1pZ3B3YkVvbUpCK2lEYmtwQ0l2RGtXUEJHK1hPcXkwS25OckcxRXF1?=
 =?utf-8?B?RThvM3dHZFFSdFkveU5PZFI3MnJYQmZpb0VzL2grRlpWNzZsTThjV3FtUzcx?=
 =?utf-8?B?Ym1Hd0libXcvWkpkWTZkek5aRUJ5NkNOWkl5UW9FVzJaZGR5WHU0TUZEemxj?=
 =?utf-8?B?dFNwMmVMYis0UkJBSE1LNXYvRmQwM3NTbkh1dTI4Z0RORGNxZi9EMXQxYlNQ?=
 =?utf-8?B?YzNXdUkrMUZPc2R3cXZnM3BiaGI5Z3lBdWxtZ1pqSEU3QVFENVkwc0RzQVE3?=
 =?utf-8?B?RlN1bUdKb2NiUnVqanNTeHFwWGo3MUx6MUVkN3h4R1JLRVF1SWk1VFRRemt1?=
 =?utf-8?B?NU40eVkvbXNybDlSR1NVazNYTW90V2dvNVZHV25EWHVBU2p5cEp5WjJWVCtn?=
 =?utf-8?B?Z3JaTWFEWUVPS0RRTy9wT1FYMVhYb2Rtd1V3NkQxTFhxWkt0VUJoRm9aUWNL?=
 =?utf-8?B?UmEwUTV4TzJ4ZTR6KzVKY2xtRk5xMm5Sek1xNGgyOWZrQXlXTkhkbEg3V251?=
 =?utf-8?B?R1FtcnRvVVFJZUZRR1BZTERqZXIwTVQ4K3k3UklZYkhyVTFOTXNhbkJCcnZ1?=
 =?utf-8?B?ODc0bTBuM244M002K1ZEZlowUFRkMGovQVE0OU9BV3NPUHVNdTFIZGExUndp?=
 =?utf-8?B?ZS81Rk02Sk9EN1pIZmMyaUxRdmszNGRUK0NBUGtGSEo2b28rVUVqQytHd2pm?=
 =?utf-8?B?Y3IyWWM5RXQ4dGpUMTJBN1FwVjRKWTgxSEZQQ3RNUHQwbkJlVjUyZ25MY1E3?=
 =?utf-8?B?dTE0U1JxSTNIWCtDemRkOEV2Y0hINTJUc3J3WHZ6MTNmeENXbWpnQms3bitq?=
 =?utf-8?B?S2REc1BuNWNSK0MzL1RoM3RSeGpWM0xEUGRtSXhyNHB2ekRua0wvaWZON25H?=
 =?utf-8?B?ZHJOenpqZmIvckZyYzdpZWFUT1ljb1V5SzBlZU1NZStXeW1xUHlGUkhDZEJa?=
 =?utf-8?B?RlVUVUpZNDE4cXRJUDk1dWhKNjJZYVJvMXE2RGpReUZ5SVZDOWx1dG1BZUd2?=
 =?utf-8?B?NmFsTWdFWWZaaCtnbWI0WXQrY1o3MVdXQ2g2bUQ0b0kvWW1pV3NsbWVZMjBu?=
 =?utf-8?B?UjFOYnR5T2RvQVk3ZGk2RFpjVjFQcWJSMUFFL2wrdWlqRStWUGt0VlU5UUN6?=
 =?utf-8?B?QTF4MC90enE2Zmx4WEVtdDRLQVBzYlJPQWVBTm5kSkdUUDFJR0ZiVE9SV1V1?=
 =?utf-8?B?N0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 63bf9397-1954-4946-3a3f-08dd82382275
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Apr 2025 07:26:16.7850 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: h0AeTSVDUaKeSKHP2jCb4k/THUsV2VU6wlHUJdLi/JOQWxXVkrvWKS4qLfEv/Ce3A7iGBOcQwmhK2w8/++YsfrhZoa9zMqv+SHrJadRZyJc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8079
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


On 4/21/2025 9:18 PM, Mitul Golani wrote:
> Prepare state check param for enabling dc balance enable bit.

This patch can be squashed into the previous patch.

Regards,

Ankit

>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display.c | 1 +
>   drivers/gpu/drm/i915/display/intel_vrr.c     | 1 +
>   2 files changed, 2 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 4a21acb88aa7..0bb39134f52d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5402,6 +5402,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>   		PIPE_CONF_CHECK_LLI(cmrr.cmrr_m);
>   		PIPE_CONF_CHECK_LLI(cmrr.cmrr_n);
>   		PIPE_CONF_CHECK_BOOL(cmrr.enable);
> +		PIPE_CONF_CHECK_BOOL(vrr.dc_balance.enable);
>   		PIPE_CONF_CHECK_I(vrr.dc_balance.vmin);
>   		PIPE_CONF_CHECK_I(vrr.dc_balance.vmax);
>   		PIPE_CONF_CHECK_I(vrr.dc_balance.guardband);
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index e8802348e5fa..7c09f384a684 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -804,6 +804,7 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>   
>   	if (HAS_DC_BALANCE(display)) {
>   		dcb_ctl = intel_de_read(display, PIPEDMC_DCB_CTL(display, cpu_transcoder));
> +		crtc_state->vrr.dc_balance.enable = dcb_ctl & PIPEDMC_ADAPTIVE_DCB_ENABLE;
>   		crtc_state->vrr.dc_balance.vmin =
>   			intel_de_read(display, PIPEDMC_DCB_VMIN(display, cpu_transcoder)) + 1;
>   		crtc_state->vrr.dc_balance.vmax =
