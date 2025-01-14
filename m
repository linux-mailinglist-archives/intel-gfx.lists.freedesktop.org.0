Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8F69A10C4A
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jan 2025 17:31:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68ADD10E3F0;
	Tue, 14 Jan 2025 16:31:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lsYRgdGy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A33A10E3E3;
 Tue, 14 Jan 2025 16:31:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736872292; x=1768408292;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=/CPEIR8C7neXWEZdpUO4bnbcCp471y4X5RrMbrllV4I=;
 b=lsYRgdGyjnPe9L5OGOoO6I6PqslfcumbFimVvIzVmq9XAdB8xIqpl+t0
 0gYqLnW/knGfU4xDEwrtdCRi2yfKlnecCv/1PBQ3W3aMl9HZK7gn0flMj
 1TgO2SLqWsYrrj0ccDjpD/4w3yqEgJjY4LeaZgN+namXIrbdcZccDG2YX
 UR7oTKK4PbTp7EULJH4nlJ+8RJ1VenfS6i+zHC4eK9SppXDEYqA6ucd7A
 HMtPId5jClGxPvStzSr9SVqYJaBp8MGh4dt3CrxLIkBNYftXzGHSHHCI8
 6XgZHeVer33qYr8n6F0QCfd8VcKX3ZxJQJhXYuzXbAUN8PQfbauCT7WoR Q==;
X-CSE-ConnectionGUID: 0eL+nYz6TxOZdCaTPQ0GQw==
X-CSE-MsgGUID: 1yaYfOpqT3GZn4PfBXd8gw==
X-IronPort-AV: E=McAfee;i="6700,10204,11315"; a="40856069"
X-IronPort-AV: E=Sophos;i="6.12,314,1728975600"; d="scan'208";a="40856069"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2025 08:31:31 -0800
X-CSE-ConnectionGUID: BSIE/wQpSJe4470pK7Ow1g==
X-CSE-MsgGUID: kWXuzhVmSgKpbw1ohHLu1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="109840388"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Jan 2025 08:31:31 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 14 Jan 2025 08:31:30 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 14 Jan 2025 08:31:30 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 14 Jan 2025 08:31:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oU2nzGndn79d1S9mgTXZK1cZl/NGXYB+bg1WeoFZMTRcWejpPVCWKH8j1+r4OlL0HoEDPiBRiQsfecbVAOeQIu0I7kO5uS8XP/K3ttg/R1jdt8wFbgassUpntwxrAmeoGPkxUYxQdnzoxTUg76cVmT2eVHJdyddWdHRCrfzpYUWZ7ji2AR1cT8mIV04cBbYw9JIBjhMCowXFIc30zLv/BcsvcV7XY9/ZC9hxKTX0tEoABLflIajcDzdimVgBc/SZeo+FZ7PvUy7Uw6VCO/+OoXQt8AGukNe+nLF6tu5gG8AUZy3ebqComtMHtYMAx71/KzMBwCyuYqmrt5OYnoHEdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5PeRPAY+3sdlWLVdrdkTEyy76WdQ2PSPwgF5Ej5n/5g=;
 b=SzHsT39XY5Ykx3kfpSS4ffcaokF3O154Mk4TveVmxafKvnY/EEgM7VOPXoz19OgzCwHxuA52PvulyVuqgYFM3J6Eie6/hTvgah9xZRjAM6X/8CcP3jCwGalJxDS/CdGz9oXdzA5wC2DnWe3Yd4lMYXGCb4YquNUyT71SiPLPi99RP7fb8+KJJiHkESnZuk04HsmhqSWnW+cQflYBCRAxykrMYS/SVQhha1p5GZlFtMXqrqfSQ08DfcO8nVhzMqJPvh/zsebq6uEstOrfysoaoPRuXI4WuhnjdEJzpUNWOsFu4+O08tJzlr219J7MBwe8S+W7Nu7KbNx3MGXXZ43PNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DS7PR11MB7737.namprd11.prod.outlook.com (2603:10b6:8:e1::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.13; Tue, 14 Jan
 2025 16:31:26 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.8335.017; Tue, 14 Jan 2025
 16:31:26 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <87msfth14h.fsf@intel.com>
References: <20250113204815.114019-1-gustavo.sousa@intel.com>
 <87msfth14h.fsf@intel.com>
Subject: Re: [PATCH v5] drm/i915/cmtg: Disable the CMTG
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Tue, 14 Jan 2025 13:31:20 -0300
Message-ID: <173687228001.2823.13065824358956469360@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR03CA0259.namprd03.prod.outlook.com
 (2603:10b6:303:b4::24) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DS7PR11MB7737:EE_
X-MS-Office365-Filtering-Correlation-Id: cd33b0e6-07a3-42d9-0550-08dd34b8e3c1
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TVRwYXV2bkdiSHJVWThDczFUV00vSDExWENUWnRYOGVqMUVzWVJickg2SDBn?=
 =?utf-8?B?amZwbXpOaHhzeXZreFdYaHNOZklmbVJQN3VpblFVNjhZbW1nYkJLZ1RxRGZQ?=
 =?utf-8?B?ZU5Ud25lZGpCRFptT3JYSnlIQWVQcUtGMFIxSlZSS0pzZ2NFVFlaaVRxcnZ0?=
 =?utf-8?B?eVRIa2hKWDlkS1RXT2hDSm93Y3RBZ1I0TVEzSzFFdDVZWnBxZ0h6UVpKa3pE?=
 =?utf-8?B?aUp1TWtveEd3d1kxVHVLVnhvRlU2MmtKUzBsZlYxaEMyMWhWSXcyayt2ckZ4?=
 =?utf-8?B?ZTYrb04wZ0JKS0lSMm41aTdWano3SFZhRlhjTkIvaUlzWWYwMUw4TkJhTFAx?=
 =?utf-8?B?U0J0L3Z6MmRkKzRPajY3cWlQN2VMSmFPbVJZZzFOTEYxQWwydk5zQnp4dVVJ?=
 =?utf-8?B?UmREQWR6OXhKaXVjMTdLb0RucUM2MUVNVzExS1NUNVh1ZVJVQ2Fsd25ydlN4?=
 =?utf-8?B?SmRTdEx6RUl6RnVMS1lLcUdFZk1CekZFN1dZTzZRdVBTTFBYMGpDVlVXbWhR?=
 =?utf-8?B?dmJTcXo0ZUZGUHV6S3pWSWdJS2VxcGp1WUlVYS9YNHYvMlVna1pyb3ZRVmxj?=
 =?utf-8?B?TjRuL09Gdi96b0hUWWh5Z3NMYjdGRGlUMk12UmVCS2cvdDVRNzVGaGFtZ1Ji?=
 =?utf-8?B?OXJuUjZDQ09DTWFJeC9LUjVYQzR3QW5sTHZGVFIwekJrazNTVmFqTm1kK09X?=
 =?utf-8?B?NDNTb3owR0JDSHdpY0lxc3BMazhmNEM5YTV6QStCcmlnbU9IZlBEbWNNVFNy?=
 =?utf-8?B?bGNIWlVxYmdZcWFZTU9CZGVIRnBsSjIzanczcVBtc3BGMHZ6YVpydkVndUVL?=
 =?utf-8?B?YnR1Z1RMOGp2N1ZEWXdqUWg0V25aRnZlckJxM2lqQldhMVRXL2d1Um9tSWdH?=
 =?utf-8?B?Tlp1aUlSSDdqRytMNFRtZ1N1RW0rYlA3VmZjQkZxdDRST0FBVldhZXdIcHp5?=
 =?utf-8?B?T2FjQ1VKYkxSY0pVdlh0Sy9CWXpsd3k0RTVUSHY4UzFJSTE3V2plU2lRK0Rw?=
 =?utf-8?B?eEJkMVUrZmhUYi9uNGpmcnI1SC8waFh1dURFNUxYMzVOK3hlaGhOZ1FTQ3VB?=
 =?utf-8?B?cU1xMUFyQVVrdklzZ3duUWI0OXV0dFhaTWlaTFpZVSsyd0RXVzk1YXVmbjJY?=
 =?utf-8?B?TGxpcG5DVWxMSUtxRFFFMXhvbGhVVFUyOG4walhsZXdLZ2xIbE5xWHJkdXdH?=
 =?utf-8?B?a2Z1eUdVYWlMSnlTVFR0TmZSWjNSc2hLRUNlU0djQkZjY2xEcFpCUmZzaWZB?=
 =?utf-8?B?R0ZwRGlYYjZWbzZ3YTg3U1BSc2hnNE9VcW02TXU4SEExTmJVV1F0eERvOUFM?=
 =?utf-8?B?RFpsSW50bTBMd1VWOG9kKzhHMEY2ckd0L21SL3VQVVUwdm5oNk5iSFpOcU1D?=
 =?utf-8?B?TXJ2MjNkd1NRcldmVFYxMVN0SEpjQ2JIUTlJR3dJTkNZd0pHSkcySGZ6Q1Vr?=
 =?utf-8?B?SURVUWVQVllSMURCUEdOY3pmRElXaFZMSkxraGlkYWg0SVJYYjFoV3RjSzBY?=
 =?utf-8?B?QkdKZ0JDd01Fc255MEluUmVNc1E5K0xMZTgrc3lOYjJyZEkvVUtGY0paZXVQ?=
 =?utf-8?B?a3JKT3p6eitaNHQrQjFKaGNsUzNGRVQ1TWZ5aFZSa2NLWjdLMklGRkNUT1RB?=
 =?utf-8?B?VG1mRHJsVU04MWhhMWxOZVh5dm5ReVYyRE5ONDBUVkFDb0lRQnhLaGU4dUI5?=
 =?utf-8?B?TlptU0lBMXRocWJ2TWtrdEFOR3RoU0w0VGxpdVJncjRHZGUyc3VsbU0zSm9R?=
 =?utf-8?B?dWJEczFBTlBOek5Cc2ZleExtT2pjUXpyMTNsYU5ZSjBCU1VkcU9uY0RHcTly?=
 =?utf-8?B?N0dmVUZWc1dxQXBwUU9hVFN0dWdpYlY0THpVRkVFNWlUNjVQeVF2MnI4aVow?=
 =?utf-8?Q?7/ILsci7uHA1x?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?elUvR2YzQlg4L3g0VFNuQ0dSbXJoU0Y3MVg0OEhkK3lFTjkzdnV3dmJ4a3pv?=
 =?utf-8?B?QjBMK0dRVSsyRVJMd1ZyZWUvbVptZ042S3JEMkpEQndDcVlJaFJzOVdZNGZF?=
 =?utf-8?B?WExwMVk4NlJtejVQdklReUJZenRIdmtwOE5wYnZaQVRvSk9ITzBRZnhaSGxK?=
 =?utf-8?B?MW13UFUxOUVGdnRLeXA3ZS8zWmtGM3ZLUTJQSmhqT2plQVFQbUdmMysreFg1?=
 =?utf-8?B?MGJ4SW1hTzE5RFF0K0x3ZTMveU1aUTBhK3dHaFNQYVJDMzdFcDIvaldsVWNQ?=
 =?utf-8?B?T3dkR3hUckVzc2ZMZGwzY01oTlNjZ0tjRHhlbE9FeGN3ZDZSREJFaHc3UUp1?=
 =?utf-8?B?NWYwYjllaTBKNW9PTHFmendscW1zMGNtYnJFNEtoWFBnZXFVQStwdmIzWllK?=
 =?utf-8?B?UlZ2Ty9PeVcvQWRMNEhDK1c5SHluU01ZVU4xRmtBMytuOFNpUU8vNVkvWFNs?=
 =?utf-8?B?TnU0TzlWcVY5cHRRdFJ0Y3pXc0JrOStjMXEySjJZSG54MmF0LzhySjdhN3A2?=
 =?utf-8?B?MEVPaEVweGdXeXRlZHduOWxXWmRDYUVmL2puRkRRbXdjakhGWml3YW12WnNT?=
 =?utf-8?B?emVVSkdRZVdyaVAremVxSXVtUVVMaUdLbWd4dmdaOVN2eHcwbi9JZEdjOSs0?=
 =?utf-8?B?YjdZN25uS1Jqd1grY29mMms1Sytaa0VjV1ZvNDNNU0xTODlMeVV4Y043Sy9Y?=
 =?utf-8?B?VFc2VWU3R2srd3lYMWdCbjBYZzYzcEpQakhFL2ZIZmJGNW1laFJhRFZ1WjV4?=
 =?utf-8?B?Nk9yWTY4amdTZjlsMTRIQTVPTStNbmxZenJkZFN6enFoaGJSa2g0UnFicUxM?=
 =?utf-8?B?cTVJTU90a05lQ3dZaVMrSUNKYmUrQVNTWHZUelR0L2F5MmdIYmFxQ0Rwbzg3?=
 =?utf-8?B?bnpqcmRaN3J3cWdxdStBWkNlaElyaDBpdGRJYUgrelZ0M1BIcm00bDdwUmNB?=
 =?utf-8?B?elNYQTJwR2J0M0R5ZlQzQ1JxaVN3VDRIUXJMWVZ2aXhTMTl6QXE3b0FFZXpU?=
 =?utf-8?B?YWErSmxjUnU0TFg4bkVBNlZabStKKzZSajNYMEJJbE1LaEp0c0UxTzVYaWRW?=
 =?utf-8?B?QnV0OEQvQVUrQWRIbG9TVGVKYkRBclIzcHRVYUxvY0tIWnJPRmxZaERDT01n?=
 =?utf-8?B?TVFsdUxoS2NMdXpFT1dYSHJxRzROVzdlNlZFNFFvcVVROHhqSHh6MkFNcE5u?=
 =?utf-8?B?Vjk1SVNWNXd5ODhMcWxXZEZ5OGhuaVdtaTIzVTRJS0t5RjNQdkQzdmN2cGIy?=
 =?utf-8?B?dHRiMWk4Yk1OK2VVcEtSN21QUzZJUmp5Z2dPY1pRYlBJUVI1M2gzUENLaWxH?=
 =?utf-8?B?OWtyZEJxRm9YOTdKN0ZGVExBbXV4dFl4ZjhOZ3VCeDBKTE14RkpVYnVOUk9H?=
 =?utf-8?B?Mzk5NFMxRTVSbE41SGJab1ROM0FLQXMwazNYYzJYcDhFdFBxYzQrR2pZL0xP?=
 =?utf-8?B?OTZOV0F2anA3WnF5QXl0ZVZkNjVyc2JUZGNVK3pZTThEVzAyNWRTWUh4L2Zl?=
 =?utf-8?B?dVNoM1p6T252bEpWUmFiV0dCZElGTXdYV0RQVjl4cEpwaGpxcDBJdWJjcnJW?=
 =?utf-8?B?bWsraHhBazRhU3drY0N4VkUxSi9lcW10RGdXMlhQMTV4SnR1Rm9qMGpLeDV4?=
 =?utf-8?B?eXJhZFhHVk90TmZ1SWxQUTBtS0ZqTVZUdFJnc2xTd0VuSjAwclVJZ2tQV2VG?=
 =?utf-8?B?Y1h4Z09CZE42WGthTXM3TFdIWWRLd2dyVElidXhYN2toV3h3clBhblhqVjJi?=
 =?utf-8?B?eGhaQjdtVXRKamplQ3V5Q01pSkFPempkejRVZ0JyWUppTm5NRHVVN2lqY0xS?=
 =?utf-8?B?YXpvQTloOGZreEF4ejBCaStNaWpEWU5oK05OeklLUjZOcjcrSUdhTkovaExq?=
 =?utf-8?B?ckdlN0s3N050Y3hVS2RWZFExOHVPdzBpR1NYK0w3T2wzY1RJdnEvRmRqUEp0?=
 =?utf-8?B?NXFicnFubUhOL21TRmk1MDlYOXZLV0hwMktnVzNndi9tb3grWjlNYURWVkZX?=
 =?utf-8?B?OHZhdW1UMERlKzV1YVB5RWVWREU1d20zek96bk0yVVpoN3RudVl0aFh3S3Vq?=
 =?utf-8?B?WkdIRWtkd2J0STJwRmJYaEtaQkJaVE5raUs4SWp5bmJpcW1BS0xvRitYQkxZ?=
 =?utf-8?B?aldDdk85eVE2Z3RXbUJJMElzZEsxTTBDcjVjVjdhUmo2eldlWmNjTEJtUm9Z?=
 =?utf-8?B?QWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cd33b0e6-07a3-42d9-0550-08dd34b8e3c1
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jan 2025 16:31:26.0014 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eeBb7nIMe+r387GrGU8LJzyxU/r6QlXFCcnAo1PWZhnlz1urx4T125FKcSzrGJEmZV/9V59RhGJk1N9K0AVing==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7737
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

Quoting Jani Nikula (2025-01-14 12:21:50-03:00)
>On Mon, 13 Jan 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> The CMTG is a timing generator that runs in parallel with transcoders
>> timing generators and can be used as a reference for synchronization.
>>
>> On PTL (display Xe3_LPD), we have observed that we are inheriting from
>> GOP a display configuration with the CMTG enabled. Because our driver
>> doesn't currently implement any CMTG sequences, the CMTG ends up still
>> enabled after our driver takes over.
>>
>> We need to make sure that the CMTG is not enabled if we are not going to
>> use it. For that, let's add a partial implementation in our driver that
>> only cares about disabling the CMTG if it was found enabled during
>> initial hardware readout. In the future, we can also implement sequences
>> for enabling CMTG if that becomes a needed feature.
>
>Doesn't this patch disable the CRTC, not the CMTG?

It disables the CMTG and that's it for LNL and PTL.

For platforms prior to LNL, disabling the CMTG requires a modeset;
specifically for those, the CRTC is also disabled during the
sanitization process (not sure if there is a clean way of forcing a
modeset from the sanitization routine).

>
>Can we switch off CMTG without a modeset? If not, I think we'd need to
>force a modeset for takeover.

As mentioned above, we can switch it off without a modeset for recent
platforms (starting with LNL).

My previous approach (see patch #1 of v4) would disable the CMTG as part
of the initial commit and, in that flow, a modeset would be performed
for pre-LNL displays.

Is there a way of flagging the need for a modeset during the
sanitization?

--
Gustavo Sousa

>
>BR,
>Jani.
>
>
>
>
>>
>> For completeness, we do not only cover Xe3_LPD but also all previous
>> display IPs that provide the CMTG.
>>
>> v2:
>>  - DG2 does not have the CMTG. Update HAS_CMTG() accordingly.
>>  - Update logic to force disabling of CMTG only for initial commit.
>> v3:
>>  - Add missing changes for v2 that were staged but not committed.
>> v4:
>>  - Avoid if/else duplication in intel_cmtg_dump_state() by using "n/a"
>>    for CMTG B enabled/disabled string for platforms without it. (Jani)
>>  - Prefer intel_cmtg_readout_hw_state() over intel_cmtg_readout_state().
>>    (Jani)
>>  - Use display struct instead of i915 as first parameter for
>>    TRANS_DDI_FUNC_CTL2(). (Jani)
>>  - Fewer continuation lines in variable declaration/initialization for
>>    better readability. (Jani)
>>  - Coding style improvements. (Jani)
>>  - Use drm_dbg_kms() instead of drm_info() for logging the disabling
>>    of the CMTG.
>>  - Make struct intel_cmtg_state entirely private to intel_cmtg.c.
>> v5:
>>  - Do the disable sequence as part of the sanitization step after
>>    hardware readout instead of initial modeset commit. (Jani)
>>  - Adapt to commit 15133582465f ("drm/i915/display: convert global state
>>    to struct intel_display") by using a display struct instead of i915
>>    as argument for intel_atomic_global_obj_init().
>>
>> Cc: Jani Nikula <jani.nikula@intel.com>
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/Makefile                 |   1 +
>>  drivers/gpu/drm/i915/display/intel_cmtg.c     | 250 ++++++++++++++++++
>>  drivers/gpu/drm/i915/display/intel_cmtg.h     |  18 ++
>>  .../gpu/drm/i915/display/intel_cmtg_regs.h    |  21 ++
>>  .../gpu/drm/i915/display/intel_display_core.h |   4 +
>>  .../drm/i915/display/intel_display_device.h   |   1 +
>>  .../drm/i915/display/intel_display_driver.c   |   5 +
>>  .../drm/i915/display/intel_modeset_setup.c    |  20 +-
>>  drivers/gpu/drm/i915/i915_reg.h               |   1 +
>>  drivers/gpu/drm/xe/Makefile                   |   1 +
>>  10 files changed, 317 insertions(+), 5 deletions(-)
>>  create mode 100644 drivers/gpu/drm/i915/display/intel_cmtg.c
>>  create mode 100644 drivers/gpu/drm/i915/display/intel_cmtg.h
>>  create mode 100644 drivers/gpu/drm/i915/display/intel_cmtg_regs.h
>>
>> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefi=
le
>> index 3dda9f0eda82..7e7414453765 100644
>> --- a/drivers/gpu/drm/i915/Makefile
>> +++ b/drivers/gpu/drm/i915/Makefile
>> @@ -231,6 +231,7 @@ i915-y +=3D \
>>          display/intel_bo.o \
>>          display/intel_bw.o \
>>          display/intel_cdclk.o \
>> +        display/intel_cmtg.o \
>>          display/intel_color.o \
>>          display/intel_combo_phy.o \
>>          display/intel_connector.o \
>> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm=
/i915/display/intel_cmtg.c
>> new file mode 100644
>> index 000000000000..6ce8b979009a
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
>> @@ -0,0 +1,250 @@
>> +// SPDX-License-Identifier: MIT
>> +/*
>> + * Copyright (C) 2024 Intel Corporation
>> + */
>> +
>> +#include <linux/string.h>
>> +#include <linux/string_choices.h>
>> +#include <linux/types.h>
>> +
>> +#include "i915_drv.h"
>> +#include "i915_reg.h"
>> +#include "intel_crtc.h"
>> +#include "intel_cmtg.h"
>> +#include "intel_cmtg_regs.h"
>> +#include "intel_de.h"
>> +#include "intel_display_device.h"
>> +#include "intel_display_types.h"
>> +#include "intel_global_state.h"
>> +
>> +/**
>> + * DOC: Common Primary Timing Generator (CMTG)
>> + *
>> + * The CMTG is a timing generator that runs in parallel to transcoders =
timing
>> + * generators (TG) to provide a synchronization mechanism where CMTG ac=
ts as
>> + * primary and transcoders TGs act as secondary to the CMTG. The CMTG o=
utputs
>> + * its TG start and frame sync signals to the transcoders that are conf=
igured
>> + * as secondary, which use those signals to synchronize their own timin=
g with
>> + * the CMTG's.
>> + *
>> + * The CMTG can be used only with eDP or MIPI command mode and supports=
 the
>> + * following use cases:
>> + *
>> + * - Dual eDP: The CMTG can be used to keep two eDP TGs in sync when on=
 a
>> + *   dual eDP configuration (with or without PSR/PSR2 enabled).
>> + *
>> + * - Single eDP as secondary: It is also possible to use a single eDP
>> + *   configuration with the transcoder TG as secondary to the CMTG. Tha=
t would
>> + *   allow a flow that would not require a modeset on the existing eDP =
when a
>> + *   new eDP is added for a dual eDP configuration with CMTG.
>> + *
>> + * - DC6v: In DC6v, the transcoder might be off but the CMTG keeps runn=
ing to
>> + *   maintain frame timings. When exiting DC6v, the transcoder TG then =
is
>> + *   synced back the CMTG.
>> + *
>> + * Currently, the driver does not use the CMTG, but we need to make sur=
e that
>> + * we disable it in case we inherit a display configuration with it ena=
bled.
>> + */
>> +
>> +/*
>> + * We describe here only the minimum state required to allow us to prop=
erly
>> + * disable the CMTG if necessary.
>> + */
>> +struct intel_cmtg_state {
>> +        struct intel_global_state base;
>> +
>> +        bool cmtg_a_enable;
>> +        /*
>> +         * Xe3_LPD adds a second CMTG that can be used for dual eDP asy=
nc mode.
>> +         */
>> +        bool cmtg_b_enable;
>> +        bool trans_a_secondary;
>> +        bool trans_b_secondary;
>> +};
>> +
>> +static struct intel_cmtg_state *to_intel_cmtg_state(struct intel_global=
_state *obj_state)
>> +{
>> +        return container_of(obj_state, struct intel_cmtg_state, base);
>> +}
>> +
>> +static struct intel_global_state *
>> +intel_cmtg_duplicate_state(struct intel_global_obj *obj)
>> +{
>> +        struct intel_cmtg_state *cmtg_state =3D to_intel_cmtg_state(obj=
->state);
>> +
>> +        cmtg_state =3D kmemdup(cmtg_state, sizeof(*cmtg_state), GFP_KER=
NEL);
>> +        if (!cmtg_state)
>> +                return NULL;
>> +
>> +        return &cmtg_state->base;
>> +}
>> +
>> +static void intel_cmtg_destroy_state(struct intel_global_obj *obj,
>> +                                     struct intel_global_state *state)
>> +{
>> +        kfree(state);
>> +}
>> +
>> +static const struct intel_global_state_funcs intel_cmtg_state_funcs =3D=
 {
>> +        .atomic_duplicate_state =3D intel_cmtg_duplicate_state,
>> +        .atomic_destroy_state =3D intel_cmtg_destroy_state,
>> +};
>> +
>> +static bool intel_cmtg_has_cmtg_b(struct intel_display *display)
>> +{
>> +        return DISPLAY_VER(display) >=3D 20;
>> +}
>> +
>> +static bool intel_cmtg_has_clock_sel(struct intel_display *display)
>> +{
>> +        return DISPLAY_VER(display) >=3D 14;
>> +}
>> +
>> +static bool intel_cmtg_requires_modeset(struct intel_display *display)
>> +{
>> +        return DISPLAY_VER(display) < 20;
>> +}
>> +
>> +static void intel_cmtg_dump_state(struct intel_display *display,
>> +                                  struct intel_cmtg_state *cmtg_state)
>> +{
>> +        drm_dbg_kms(display->drm,
>> +                    "CMTG state readout: CMTG A: %s, CMTG B: %s, Transc=
oder A secondary: %s, Transcoder B secondary: %s\n",
>> +                    str_enabled_disabled(cmtg_state->cmtg_a_enable),
>> +                    intel_cmtg_has_cmtg_b(display) ? str_enabled_disabl=
ed(cmtg_state->cmtg_b_enable) : "n/a",
>> +                    str_yes_no(cmtg_state->trans_a_secondary),
>> +                    str_yes_no(cmtg_state->trans_b_secondary));
>> +}
>> +
>> +int intel_cmtg_init(struct intel_display *display)
>> +{
>> +        struct intel_cmtg_state *cmtg_state;
>> +
>> +        cmtg_state =3D kzalloc(sizeof(*cmtg_state), GFP_KERNEL);
>> +        if (!cmtg_state)
>> +                return -ENOMEM;
>> +
>> +        intel_atomic_global_obj_init(display, &display->cmtg.obj,
>> +                                     &cmtg_state->base,
>> +                                     &intel_cmtg_state_funcs);
>> +
>> +        return 0;
>> +}
>> +
>> +void intel_cmtg_readout_hw_state(struct intel_display *display)
>> +{
>> +        struct intel_cmtg_state *cmtg_state =3D to_intel_cmtg_state(dis=
play->cmtg.obj.state);
>> +        u32 val;
>> +
>> +        if (!HAS_CMTG(display))
>> +                return;
>> +
>> +        val =3D intel_de_read(display, TRANS_CMTG_CTL_A);
>> +        cmtg_state->cmtg_a_enable =3D val & CMTG_ENABLE;
>> +
>> +        if (intel_cmtg_has_cmtg_b(display)) {
>> +                val =3D intel_de_read(display, TRANS_CMTG_CTL_B);
>> +                cmtg_state->cmtg_b_enable =3D val & CMTG_ENABLE;
>> +        }
>> +
>> +        if (intel_crtc_for_pipe(display, PIPE_A)) {
>> +                val =3D intel_de_read(display, TRANS_DDI_FUNC_CTL2(disp=
lay, TRANSCODER_A));
>> +                cmtg_state->trans_a_secondary =3D val & CMTG_SECONDARY_=
MODE;
>> +        }
>> +
>> +        if (intel_crtc_for_pipe(display, PIPE_B)) {
>> +                val =3D intel_de_read(display, TRANS_DDI_FUNC_CTL2(disp=
lay, TRANSCODER_B));
>> +                cmtg_state->trans_b_secondary =3D val & CMTG_SECONDARY_=
MODE;
>> +        }
>> +
>> +        intel_cmtg_dump_state(display, cmtg_state);
>> +}
>> +
>> +static bool intel_cmtg_state_changed(struct intel_cmtg_state *old_cmtg_=
state,
>> +                                     struct intel_cmtg_state *new_cmtg_=
state)
>> +{
>> +        if (!new_cmtg_state)
>> +                return false;
>> +
>> +        return old_cmtg_state->cmtg_a_enable !=3D new_cmtg_state->cmtg_=
a_enable ||
>> +                old_cmtg_state->cmtg_b_enable !=3D new_cmtg_state->cmtg=
_b_enable ||
>> +                old_cmtg_state->trans_a_secondary !=3D new_cmtg_state->=
trans_a_secondary ||
>> +                old_cmtg_state->trans_b_secondary !=3D new_cmtg_state->=
trans_b_secondary;
>> +}
>> +
>> +static void intel_cmtg_state_set_disabled(struct intel_cmtg_state *cmtg=
_state)
>> +{
>> +        cmtg_state->cmtg_a_enable =3D false;
>> +        cmtg_state->cmtg_b_enable =3D false;
>> +        cmtg_state->trans_a_secondary =3D false;
>> +        cmtg_state->trans_b_secondary =3D false;
>> +}
>> +
>> +static void intel_cmtg_disable(struct intel_display *display,
>> +                               struct intel_cmtg_state *old_cmtg_state,
>> +                               struct intel_cmtg_state *new_cmtg_state)
>> +{
>> +        if (!intel_cmtg_state_changed(old_cmtg_state, new_cmtg_state))
>> +                return;
>> +
>> +        drm_dbg_kms(display->drm, "Disabling CMTG\n");
>> +
>> +        intel_de_rmw(display, TRANS_DDI_FUNC_CTL2(display, TRANSCODER_A=
), CMTG_SECONDARY_MODE, 0);
>> +        intel_de_rmw(display, TRANS_DDI_FUNC_CTL2(display, TRANSCODER_B=
), CMTG_SECONDARY_MODE, 0);
>> +
>> +        intel_de_rmw(display, TRANS_CMTG_CTL_A, CMTG_ENABLE, 0);
>> +
>> +        if (intel_cmtg_has_cmtg_b(display))
>> +                intel_de_rmw(display, TRANS_CMTG_CTL_B, CMTG_ENABLE, 0)=
;
>> +
>> +        if (intel_cmtg_has_clock_sel(display)) {
>> +                u32 clk_sel_clr =3D CMTG_CLK_SEL_A_MASK;
>> +                u32 clk_sel_set =3D CMTG_CLK_SEL_A_DISABLED;
>> +
>> +                if (intel_cmtg_has_cmtg_b(display)) {
>> +                        clk_sel_clr |=3D CMTG_CLK_SEL_B_MASK;
>> +                        clk_sel_set |=3D CMTG_CLK_SEL_B_DISABLED;
>> +                }
>> +
>> +                intel_de_rmw(display, CMTG_CLK_SEL, clk_sel_clr, clk_se=
l_set);
>> +        }
>> +}
>> +
>> +static u32 intel_cmtg_modeset_crtc_mask(struct intel_display *display,
>> +                                        struct intel_cmtg_state *old_cm=
tg_state,
>> +                                        struct intel_cmtg_state *new_cm=
tg_state)
>> +{
>> +        u32 crtc_mask;
>> +
>> +        if (intel_cmtg_requires_modeset(display))
>> +                return 0;
>> +
>> +        crtc_mask =3D 0;
>> +
>> +        if (old_cmtg_state->trans_a_secondary !=3D new_cmtg_state->tran=
s_a_secondary)
>> +                crtc_mask |=3D drm_crtc_mask(&intel_crtc_for_pipe(displ=
ay, PIPE_A)->base);
>> +
>> +        if (old_cmtg_state->trans_b_secondary !=3D new_cmtg_state->tran=
s_b_secondary)
>> +                crtc_mask |=3D drm_crtc_mask(&intel_crtc_for_pipe(displ=
ay, PIPE_B)->base);
>> +
>> +        return crtc_mask;
>> +}
>> +
>> +/*
>> + * Disable CMTG if enabled and return a mask of pipes that need to be d=
isabled
>> + * (for platforms where disabling the CMTG requires a modeset).
>> + */
>> +u32 intel_cmtg_sanitize_state(struct intel_display *display)
>> +{
>> +        struct intel_cmtg_state *cmtg_state =3D to_intel_cmtg_state(dis=
play->cmtg.obj.state);
>> +        struct intel_cmtg_state old_cmtg_state;
>> +
>> +        if (!HAS_CMTG(display))
>> +                return 0;
>> +
>> +        old_cmtg_state =3D *cmtg_state;
>> +        intel_cmtg_state_set_disabled(cmtg_state);
>> +        intel_cmtg_disable(display, &old_cmtg_state, cmtg_state);
>> +
>> +        return intel_cmtg_modeset_crtc_mask(display, &old_cmtg_state, c=
mtg_state);
>> +}
>> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h b/drivers/gpu/drm=
/i915/display/intel_cmtg.h
>> new file mode 100644
>> index 000000000000..3c51e144aa3f
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
>> @@ -0,0 +1,18 @@
>> +/* SPDX-License-Identifier: MIT */
>> +/*
>> + * Copyright (C) 2024 Intel Corporation
>> + */
>> +
>> +#ifndef __INTEL_CMTG_H__
>> +#define __INTEL_CMTG_H__
>> +
>> +#include <linux/types.h>
>> +
>> +struct intel_display;
>> +struct intel_global_state;
>> +
>> +int intel_cmtg_init(struct intel_display *display);
>> +void intel_cmtg_readout_hw_state(struct intel_display *display);
>> +u32 intel_cmtg_sanitize_state(struct intel_display *display);
>> +
>> +#endif /* __INTEL_CMTG_H__ */
>> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h b/drivers/gp=
u/drm/i915/display/intel_cmtg_regs.h
>> new file mode 100644
>> index 000000000000..082f96cad284
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
>> @@ -0,0 +1,21 @@
>> +/* SPDX-License-Identifier: MIT */
>> +/*
>> + * Copyright (C) 2024 Intel Corporation
>> + */
>> +
>> +#ifndef __INTEL_CMTG_REGS_H__
>> +#define __INTEL_CMTG_REGS_H__
>> +
>> +#include "i915_reg_defs.h"
>> +
>> +#define CMTG_CLK_SEL                        _MMIO(0x46160)
>> +#define CMTG_CLK_SEL_A_MASK                REG_GENMASK(31, 29)
>> +#define CMTG_CLK_SEL_A_DISABLED                REG_FIELD_PREP(CMTG_CLK_=
SEL_A_MASK, 0)
>> +#define CMTG_CLK_SEL_B_MASK                REG_GENMASK(15, 13)
>> +#define CMTG_CLK_SEL_B_DISABLED                REG_FIELD_PREP(CMTG_CLK_=
SEL_B_MASK, 0)
>> +
>> +#define TRANS_CMTG_CTL_A                _MMIO(0x6fa88)
>> +#define TRANS_CMTG_CTL_B                _MMIO(0x6fb88)
>> +#define  CMTG_ENABLE                        REG_BIT(31)
>> +
>> +#endif /* __INTEL_CMTG_REGS_H__ */
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers=
/gpu/drm/i915/display/intel_display_core.h
>> index 554870d2494b..d0b039114e2d 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>> @@ -354,6 +354,10 @@ struct intel_display {
>>                  unsigned int skl_preferred_vco_freq;
>>          } cdclk;
>> =20
>> +        struct {
>> +                struct intel_global_obj obj;
>> +        } cmtg;
>> +
>>          struct {
>>                  struct drm_property_blob *glk_linear_degamma_lut;
>>          } color;
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drive=
rs/gpu/drm/i915/display/intel_display_device.h
>> index 9a333d9e6601..a126247eb6b8 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
>> @@ -145,6 +145,7 @@ struct intel_display_platforms {
>>  #define HAS_BIGJOINER(__display)        (DISPLAY_VER(__display) >=3D 11=
 && HAS_DSC(__display))
>>  #define HAS_CDCLK_CRAWL(__display)        (DISPLAY_INFO(__display)->has=
_cdclk_crawl)
>>  #define HAS_CDCLK_SQUASH(__display)        (DISPLAY_INFO(__display)->ha=
s_cdclk_squash)
>> +#define HAS_CMTG(__display)                (!(__display)->platform.dg2 =
&& DISPLAY_VER(__display) >=3D 13)
>>  #define HAS_CUR_FBC(__display)                (!HAS_GMCH(__display) && =
IS_DISPLAY_VER(__display, 7, 13))
>>  #define HAS_D12_PLANE_MINIMIZATION(__display)        ((__display)->plat=
form.rocketlake || (__display)->platform.alderlake_s)
>>  #define HAS_DBUF_OVERLAP_DETECTION(__display)        (DISPLAY_RUNTIME_I=
NFO(__display)->has_dbuf_overlap_detection)
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drive=
rs/gpu/drm/i915/display/intel_display_driver.c
>> index 1aa0b298c278..758cf8b4fb32 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
>> @@ -25,6 +25,7 @@
>>  #include "intel_bios.h"
>>  #include "intel_bw.h"
>>  #include "intel_cdclk.h"
>> +#include "intel_cmtg.h"
>>  #include "intel_color.h"
>>  #include "intel_crtc.h"
>>  #include "intel_display_debugfs.h"
>> @@ -267,6 +268,10 @@ int intel_display_driver_probe_noirq(struct intel_d=
isplay *display)
>>          if (ret)
>>                  goto cleanup_vga_client_pw_domain_dmc;
>> =20
>> +        ret =3D intel_cmtg_init(display);
>> +        if (ret)
>> +                goto cleanup_vga_client_pw_domain_dmc;
>> +
>>          intel_init_quirks(display);
>> =20
>>          intel_fbc_init(display);
>> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/driver=
s/gpu/drm/i915/display/intel_modeset_setup.c
>> index 9a2bea19f17b..091459244ab5 100644
>> --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
>> +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
>> @@ -15,6 +15,7 @@
>>  #include "i9xx_wm.h"
>>  #include "intel_atomic.h"
>>  #include "intel_bw.h"
>> +#include "intel_cmtg.h"
>>  #include "intel_color.h"
>>  #include "intel_crtc.h"
>>  #include "intel_crtc_state_dump.h"
>> @@ -475,10 +476,12 @@ static void intel_sanitize_fifo_underrun_reporting=
(const struct intel_crtc_state
>>  }
>> =20
>>  static bool intel_sanitize_crtc(struct intel_crtc *crtc,
>> -                                struct drm_modeset_acquire_ctx *ctx)
>> +                                struct drm_modeset_acquire_ctx *ctx,
>> +                                u32 force_off_crtc_mask)
>>  {
>>          struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
>>          struct intel_crtc_state *crtc_state =3D to_intel_crtc_state(crt=
c->base.state);
>> +        u32 crtc_mask =3D drm_crtc_mask(&crtc->base);
>>          bool needs_link_reset;
>> =20
>>          if (crtc_state->hw.active) {
>> @@ -509,7 +512,8 @@ static bool intel_sanitize_crtc(struct intel_crtc *c=
rtc,
>>           * Adjust the state of the output pipe according to whether we =
have
>>           * active connectors/encoders.
>>           */
>> -        if (!needs_link_reset && intel_crtc_has_encoders(crtc))
>> +        if (!(crtc_mask & force_off_crtc_mask) &&
>> +            !needs_link_reset && intel_crtc_has_encoders(crtc))
>>                  return false;
>> =20
>>          intel_crtc_disable_noatomic(crtc, ctx);
>> @@ -527,7 +531,8 @@ static bool intel_sanitize_crtc(struct intel_crtc *c=
rtc,
>>  }
>> =20
>>  static void intel_sanitize_all_crtcs(struct drm_i915_private *i915,
>> -                                     struct drm_modeset_acquire_ctx *ct=
x)
>> +                                     struct drm_modeset_acquire_ctx *ct=
x,
>> +                                     u32 force_off_crtc_mask)
>>  {
>>          struct intel_crtc *crtc;
>>          u32 crtcs_forced_off =3D 0;
>> @@ -547,7 +552,7 @@ static void intel_sanitize_all_crtcs(struct drm_i915=
_private *i915,
>>                          if (crtcs_forced_off & crtc_mask)
>>                                  continue;
>> =20
>> -                        if (intel_sanitize_crtc(crtc, ctx))
>> +                        if (intel_sanitize_crtc(crtc, ctx, force_off_cr=
tc_mask))
>>                                  crtcs_forced_off |=3D crtc_mask;
>>                  }
>>                  if (crtcs_forced_off =3D=3D old_mask)
>> @@ -909,6 +914,8 @@ static void intel_modeset_readout_hw_state(struct dr=
m_i915_private *i915)
>>          }
>> =20
>>          intel_pmdemand_init_pmdemand_params(display, pmdemand_state);
>> +
>> +        intel_cmtg_readout_hw_state(display);
>>  }
>> =20
>>  static void
>> @@ -967,6 +974,7 @@ void intel_modeset_setup_hw_state(struct drm_i915_pr=
ivate *i915,
>>          struct intel_encoder *encoder;
>>          struct intel_crtc *crtc;
>>          intel_wakeref_t wakeref;
>> +        u32 force_off_crtc_mask;
>> =20
>>          wakeref =3D intel_display_power_get(i915, POWER_DOMAIN_INIT);
>> =20
>> @@ -1009,7 +1017,9 @@ void intel_modeset_setup_hw_state(struct drm_i915_=
private *i915,
>>           */
>>          intel_modeset_update_connector_atomic_state(i915);
>> =20
>> -        intel_sanitize_all_crtcs(i915, ctx);
>> +        force_off_crtc_mask =3D intel_cmtg_sanitize_state(display);
>> +
>> +        intel_sanitize_all_crtcs(i915, ctx, force_off_crtc_mask);
>> =20
>>          intel_dpll_sanitize_state(i915);
>> =20
>> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915=
_reg.h
>> index 765e6c0528fb..b34bccfb1ccc 100644
>> --- a/drivers/gpu/drm/i915/i915_reg.h
>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>> @@ -3565,6 +3565,7 @@ enum skl_power_gate {
>>  #define _TRANS_DDI_FUNC_CTL2_DSI1        0x6bc04
>>  #define TRANS_DDI_FUNC_CTL2(dev_priv, tran)        _MMIO_TRANS2(dev_pri=
v, tran, _TRANS_DDI_FUNC_CTL2_A)
>>  #define  PORT_SYNC_MODE_ENABLE                        REG_BIT(4)
>> +#define  CMTG_SECONDARY_MODE                        REG_BIT(3)
>>  #define  PORT_SYNC_MODE_MASTER_SELECT_MASK        REG_GENMASK(2, 0)
>>  #define  PORT_SYNC_MODE_MASTER_SELECT(x)        REG_FIELD_PREP(PORT_SYN=
C_MODE_MASTER_SELECT_MASK, (x))
>> =20
>> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
>> index 5c97ad6ed738..cd0e25fce14b 100644
>> --- a/drivers/gpu/drm/xe/Makefile
>> +++ b/drivers/gpu/drm/xe/Makefile
>> @@ -199,6 +199,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) +=3D \
>>          i915-display/intel_bios.o \
>>          i915-display/intel_bw.o \
>>          i915-display/intel_cdclk.o \
>> +        i915-display/intel_cmtg.o \
>>          i915-display/intel_color.o \
>>          i915-display/intel_combo_phy.o \
>>          i915-display/intel_connector.o \
>
>--=20
>Jani Nikula, Intel
