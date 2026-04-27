Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CK0cH04Z72mB6QAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2026 10:07:42 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFA9346EC28
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2026 10:07:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A6A710E5EB;
	Mon, 27 Apr 2026 08:07:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="auBtqGZX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 128BB10E5E8;
 Mon, 27 Apr 2026 08:07:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777277259; x=1808813259;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yUQE1Sfg6HB1I6fTkqOLi5TEwn4B4EaJswzHIx1AgtE=;
 b=auBtqGZXK+tDq81IgBFghZg7k+bJ01IMWZB/mYAGbonMDHLzdbQa/Lwy
 dJlFoaVXl/YBkHa4fTDK0cct5dkh9coG9ANqqWJxKbWF8X7a9TUuglWCt
 cnLJQ1o9jJiubl34YGL+Of6dAQGd6B9nD5LyAxZyk/QRuiohgH8tjFmBy
 MROAvumEN/V2+CO2wejQPtbEH6fmYu4NNAHj2UmoOkWHy/o1nl66jb6qj
 p3b74udN9/KznjoFFlqgVwKbra7hyzHED0p/RVw+aOmRI/cLwsNyrbQSX
 hcUY4mHyt11Az5lanE/TAzvLs4pDJ1OvfN/mfQIXkjUX/2hDZnDly+LX2 A==;
X-CSE-ConnectionGUID: OkjBeJfZQUW+FoWIyeoUhw==
X-CSE-MsgGUID: g53fjUKMTLqjp/eagj9wIQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11768"; a="89242106"
X-IronPort-AV: E=Sophos;i="6.23,201,1770624000"; d="scan'208";a="89242106"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2026 01:07:38 -0700
X-CSE-ConnectionGUID: FUfsyZJLR9Gpl1lWbdd/+w==
X-CSE-MsgGUID: x0wILWBSQru8QkE2+k8ulw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,201,1770624000"; d="scan'208";a="263976460"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2026 01:07:39 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 27 Apr 2026 01:07:38 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 27 Apr 2026 01:07:38 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.22) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 27 Apr 2026 01:07:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OHDDmbVQGXdtsZLAC9d9IP0b2fQ4YElxLn/DRY383f5X1vnx14401fSvhyD2vv79+JyIHkSTLUJZ3Hgj/1BPlJFJKC5BzEuXee5yAhZi3pIL4yyQEDwPrpbz4tbDX1RUutvH+e1JKG8arLcM8pjfKUsXxerMAmQvk64SJsvtSEktOsVOK93Ss2DEkiSiZwm8dt9l4BhAAmsNLyMXvPyygv1fAtgfcGYA58kdDysacQj2swnVm2H7X6SQK//9iVEC6+5A3ObIAXkhDGtdeeyopiL7gVTaPVkKUvfGcu4SYe4Ex+Hqcherzxic1IubMipeKiFe4+b2TlbGZk4U1fVRpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fgKtsX1SgSPY34C9ppreVkl+qWnP6j2SvKOXDxvUcuY=;
 b=nXx8JruzvCEIU13IvAZ7l/ukihaMxUeHk14kT4Jke33zdJyDWAzzlOVInm7KIfhFSyTO52X9BbZ0+QZliZX2jik2yKdUZ3YoBWz0CYcUTFXfDV9JLaTJzTzSk7O42QCzJavQaBQFxVCMe+Y6CWcWN6i6eNkB+hhuXkQbtXg1u3FxVzJuIks+AYsY6RcQ4LVQ8I/uXtwiz323JLo9DvZOP+YhcjHgdsr1G87W/kXl1PWyM+JVtYITu5AqIKgIlzkCqkdKf3UDdpSrxFQ8K/y/LM8wkNDCPd7MUUpJj6vYNPQ05/I+XYPhVrVC5oMNZqx12wMs6L6FUZdatC47XZuZpg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by PH7PR11MB6772.namprd11.prod.outlook.com (2603:10b6:510:1b6::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.16; Mon, 27 Apr
 2026 08:07:33 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b%3]) with mapi id 15.20.9870.013; Mon, 27 Apr 2026
 08:07:32 +0000
Message-ID: <360ef513-b97e-4bc7-8c3e-c78ad2b6c9aa@intel.com>
Date: Mon, 27 Apr 2026 13:37:20 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 01/13] drm/colorop: Add DRM_COLOROP_FIXED_MATRIX
To: Melissa Wen <mwen@igalia.com>, <dri-devel@lists.freedesktop.org>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <harry.wentland@amd.com>, <louis.chauvet@bootlin.com>,
 <contact@emersion.fr>, <alex.hung@amd.com>, <daniels@collabora.com>,
 <uma.shankar@intel.com>, <maarten.lankhorst@intel.com>,
 <pekka.paalanen@collabora.com>, <pranay.samala@intel.com>,
 <swati2.sharma@intel.com>
References: <20260408051514.608781-1-chaitanya.kumar.borah@intel.com>
 <20260408051514.608781-2-chaitanya.kumar.borah@intel.com>
 <c15ff4ca-79c3-4e65-bcc3-24e74adc2636@igalia.com>
 <e4eced80-8b22-473d-8add-7e4a517937f8@intel.com>
 <1483a913-dede-4daf-ac82-0329656a3d17@igalia.com>
 <0543a055-c910-407a-b26c-3ecb9908f52c@intel.com>
 <7149c957-43e9-4ad4-bfae-307d2eb5146b@igalia.com>
Content-Language: en-GB
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <7149c957-43e9-4ad4-bfae-307d2eb5146b@igalia.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0254.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1f1::9) To DM4PR11MB6141.namprd11.prod.outlook.com
 (2603:10b6:8:b3::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PR11MB6129:EE_|PH7PR11MB6772:EE_
X-MS-Office365-Filtering-Correlation-Id: 016491a3-bcbb-4960-42ca-08dea43407ef
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|1800799024|366016|18002099003|22082099003|56012099003;
X-Microsoft-Antispam-Message-Info: 02twWTGPEYmLKtqsI/DY8Rf2UlsC71zDMgIGC5MOQu5vrMfCvgQOewsuq1qv9Kwl5lmV+erEyx3SUGZszY1Nve0+wN7TI4mqs7Zg/kIcoMCDZtSaNiMMqySNVcpPDeOF0b0KOPPbQJPtsAeDBMdQVIEY3xbPkPHPO/XlNhwOIoct0Ohkq/bv9bsW+qV4rVF+kDyD7Hy6vjBJaJuu89wwpCQSq26XBEgmq9Erh8cD3XLQYWUR0owTQr/qNnOp2n/yTYbdKAkRTQSjiISEErIHpHRHZVd9T4f8TvYC4oM3yaCFQn3y9rAeuPatTNVtrOEioN2o3ICwbCPE3dyyEqpF5eQfjMWqfKRvo+Q5y5ewvB0+ifYezswoNA13c89KnzARCQrs/fCMOuWowKJccATqXQx4O9YdkYHqclpy360VAk0GUZq7gskY+HyGu/33t7qHNOeSp+mmGTnP5wTwd/RaCtE1Rc1yqeXDsZChXe0fSrETSvG4KVNYdV5a3XdrLcAtkvYgZvFW9tZ/pwE/s6N3WWa4mtqnlpqSbmCdrmEvmIvVh1/JYLByD+OspvP5IQWkf1LxzkyHqdOAj6chyf/S8RsZAjdPHhr6YWOz/xMvl8Z66QkC3zqKQniS8IHwJPnjcbg/VGzS25oedI655kpOD4tLgBtOW9tDvsWyZuYnNcY0C7rZcx7rcxliMmqYbjyrx+lmfn2fN4Fu/lhw9drAYSTFOM9AQTED1XixjIfrZXtLWvjZ+uo9egsDB2zNYvDe
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N0F6U2RMMlE0N3N4OXI3QzJmM2VGUDVFWGlnQXQyS2tZMmJUdG14OHVubzlk?=
 =?utf-8?B?STd5eDJueGhnYm9FYWM2OCsvN2psem44MnVURG5VVjJZUVBSYjJyOGM3RVFW?=
 =?utf-8?B?eG15cTd1R2hYazRFTjgvMGJKWjlRdHB1OSs4aitNSnUvK0N1NHQraWdtUzZT?=
 =?utf-8?B?bmt4M2VCR3puZkVJcjgvSXA2bjNyYmROQ2hlL0dNd3NYTDdSTGVEdVY1YWgr?=
 =?utf-8?B?UmpJay9UKzdQc1duTGdlSG1ObzRkVVFHWVo0cGFtc3pXS2UxZmlydk5ZcVVG?=
 =?utf-8?B?OTdueUxycEJndlBFQkp2LzhzeTZDRXdPMCtIYjZPaTlCWk5YLzMrSW1ibW4z?=
 =?utf-8?B?Ky95a2wrc2NXSFV3N0lUOC9zU1JiZXFuRkVTaU9FRWFKUWI0czlSSDF0MTN5?=
 =?utf-8?B?aTBRc3hsUkFsdk9PTVMxeG9samlaVzZZcjVXN1NRMkpHbTJLemdFMzMxcEpC?=
 =?utf-8?B?bWlWZ3V6SXZXYlEzUEFZbVJTVnMweWlpN2hqZ1I3MHk3em9XUXJBd213ZFo1?=
 =?utf-8?B?Uk9BUXJ4b1ZNb3lMajhHVzVMRzFRaHRUWXhQbXMySHduZlExbU5UOXdtNTEx?=
 =?utf-8?B?aWFBbkR0bHFXT29ubEJ3TVd2L2RleFVaSEdnRmpWOHFadEx6M0ZvcmpHTjlt?=
 =?utf-8?B?d1llQnFxVURWZkhNT3hIVVBNbmtPTUlOY3JzTlM3bWlzaXl1V2ZqanpHaFY3?=
 =?utf-8?B?alIveFlYbmdOdlZDeG9MekFSYjNNY01VQlJDeEQvc1gvTW4yYTNsQ1g0Y2VY?=
 =?utf-8?B?ZnllcVFXV0NTckVEc2k1ZXZzMmVkUlFacUlWK3YyYThVb1dnWkJ5QUFYMGd4?=
 =?utf-8?B?NEtZVkJ4d2pHM2ZSTGVvYVhzZ1ExeFpoeW02WFUvTG4zS3RLWDdlRkRubk5l?=
 =?utf-8?B?cDk5ZlExaVQwRm1NNDFxZG4yamJETWdyKzFPamhpRlBhcUphZVl4VHVpRE1j?=
 =?utf-8?B?STAxKzhUSEhqTEZTTHZub0dPWUxqTEI0VTNESWZBbW9WNmxBeXo1VGczRVhV?=
 =?utf-8?B?ZnVoMHBjWHJTR2lncm54dUN3UGkxbFZaNG11bVZFY0ZTWEcxREtteUlSWkNZ?=
 =?utf-8?B?bDZsb3RDdnZ4SDFydk40QjhQdmN1Z2dVRGdUWDdoWGFHdUEzVlV5Qzk2eDk3?=
 =?utf-8?B?T3dmYU1CdU53a21mc3JLZ1lMVk1xK1M1UzBsa2hsTU9LL1piL3I3Qi9nN0Ry?=
 =?utf-8?B?T0VEUDlwUTc0REp6WG5mK2tCcFdNb0dMdGdJSDN4SEY4WFoxM3JZY3lldEZC?=
 =?utf-8?B?NlI5TjFYaWFUWlBZcGxXYmtPZm1sa1V3ZXhFcU83WGdrVmNUaWdWK1dLMmF3?=
 =?utf-8?B?eTAzdFMwTFRZL0Q0aUFoK3FQYWdWMzY4N3ZLQ05KUUhKbWNtb0pHNlVxdzhl?=
 =?utf-8?B?UWRmVG00S3J3SEVCSUNyOFJBRm1VV0lqQlhVa3FtSCt4cERhU3JxaTRYM2t5?=
 =?utf-8?B?cERGNDAwbDM2YXI3Nk1Ed1l3cERZbGtZZXB3eFdUSko2d2d5Wk1jSEk2OXRw?=
 =?utf-8?B?SURubWpCYjBXRHVvYm80N3hOYnh5U1VUZEliYVpBYy8rdGRKT21Od2NSdDdP?=
 =?utf-8?B?R2t4S1JwT1J0WGp6bndTbzhHaXRyQU9Sd2d6UjY2MlVVK3c4L2VId1RvQmxL?=
 =?utf-8?B?VzdwaUZrOGZYUytYcDNBYjgxQzBGcVhLL2YyaythcXM0OWNhenVyLzlEQkRq?=
 =?utf-8?B?blFXSHhZN2dIMnd3RDFqUEZha0pJM3hXVWxBS1FrcGdNWDhZRUJVUVBkNDZJ?=
 =?utf-8?B?ZXRyK1BaMVR2VnpaeFhTQzlkVy9oZFJKZXQ0T2txUDU0WmpmNkR3Sjl6L3JY?=
 =?utf-8?B?SjAwcjBUWXpEM0k2dnU0UWhZV0g2TXpONDNic2o1eHNrZnhLckEzYVVoZTds?=
 =?utf-8?B?Tzc5b05uVUVNdVRnZHRTMW5JRWVlZCtyMEpOc1RBRk8xNWJBamtVdHgzMUp0?=
 =?utf-8?B?VXZTakN0REtPcmZUdmJSOFFLeWpwK2x6NGI5TlpJcS9qcVpYUllsTkN6Vm9K?=
 =?utf-8?B?UUpxdHVYRkU3NlBTYU5EZXMrUWlseWhvK040WG9leDhzK2pZcTR0SkRsZVMr?=
 =?utf-8?B?R2x1YVB5VlZwR1N3a0FOTnRTY1lwVVJpdVdSTnRTR0JEd1h2WEh2azVnQU1H?=
 =?utf-8?B?NkZIc21kbzMvSDFFc0tBc1JqQ3dOQWhGdVZ2aWk2ZXRNWnVOZnJ4WjhEcWNn?=
 =?utf-8?B?V0pETzFjb2xtdHJtLzNTNWNSaWhNREl1Rlozd016cDNCL0ZtSnNtMUh5YWxh?=
 =?utf-8?B?OXh5MVJkL1QraCsrd2hJT3RkU2d6dW0rMUxFNmVaNlNpOFRBUGphUjJHNTFQ?=
 =?utf-8?B?OXFsQWFBVGhyRUhrOCtrdko1YzFET1pCL2ZQdWpVeGhrZ2tZckhieHEvd0xL?=
 =?utf-8?Q?1QXrrLaNGubwB3qE=3D?=
X-Exchange-RoutingPolicyChecked: vgWKlULNpF/jLkqanhnhDjIHnLKIqpT/17xpRrBgI2ht4/lrIMMJpb78AFMebLKUDF9ARoisxkt7NtEdiQArYpnk73p4sGSpAR6ZuniBsqanHMT7UFEBsDU0E1RP+yg9TYxxVz40g0O9C2eYTGwEN3tg7Zam27KcXaj8sZs3h5E3mSA84b/Wx3J3NcAs72pvsnlCk9s261g3es7zql0DnKPvwbJGb2SqFtp7HE5I1LGLHX2g4HCNiHv2TJxHNPvhrQZzmY0KirppfTt6t5ovLYACTZ0j9LLweCxS8XOmOlvBO4RELDjRmYb1fZ0l3BKrZwX2Ww9IxnazUV41TJnOcQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 016491a3-bcbb-4960-42ca-08dea43407ef
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6141.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Apr 2026 08:07:32.3446 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cf9QH6ByL1ODp2unbw5Q9HgVhpvZJqY7xqYYGhgxlbfhDLvbmx10swJxtuS7HmtAsYkZm9Dj8kiPAHqsFMq/PkN3Ec9Zrv0OIisRmcPIxR0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6772
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
X-Rspamd-Queue-Id: EFA9346EC28
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_SEVEN(0.00)[9];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:mid];
	RCPT_COUNT_TWELVE(0.00)[14];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]



On 4/24/2026 8:19 PM, Melissa Wen wrote:
> On 23/04/2026 06:38, Borah, Chaitanya Kumar wrote:
>> Regarding the IGTs they are yet to be upstreamed with this version of 
>> the series as we are still working out how to use CRC matching for 
>> pass criteria. (As i915/xe does not have writeback hooked up yet)
> 
> Out of curiousity, are you working on adding writeback support to them?


It is currently a work in progress.

https://lore.kernel.org/dri-devel/20260316083008.87466-1-suraj.kandpal@intel.com/

https://lore.kernel.org/intel-gfx/20260325110744.1096786-1-suraj.kandpal@intel.com/

==
Chaitanya
