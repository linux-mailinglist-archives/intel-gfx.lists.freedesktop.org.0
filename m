Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oHCfCQWWw2ncrgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 09:00:05 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BEA6D3210C9
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 09:00:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2BF210E7D2;
	Wed, 25 Mar 2026 08:00:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="niEf8n18";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21CEE10E7D2;
 Wed, 25 Mar 2026 08:00:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774425602; x=1805961602;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Jvv07i3LVnJsP0pWOHuFZFW5w47FJ1TLa3S5pRWRVQ8=;
 b=niEf8n18PwK6K+omLoO7W+87bvMe2I2TZyThypphj4NsMVscluNrY5AZ
 AC+RIJ7LzbQ5tM8VyCqMz8eAQLVWD7gZcLNI6EVUVHyxSzt5CLT+4Sm98
 0tHuczcY9/KYMLpvsAyOvL+kygy+ZdOReqI7bTkS5JUG+Wco9u+kpXWwh
 wtSpy86OIPW7X8rLH2hWNBWgtnJTTrnmy3xCq8lyg8S6B3fcpHC7dWDAj
 yT82KYZN1/BDhVRiNSuPLlkLu1lhZ/+amNiWZE/7zL8P3wDf+ebhknHP6
 YyVuQZKLumk22NyjqB2tI9VCLTo+cm7ghso2CVRbi2p1gH/SGolpulFrF Q==;
X-CSE-ConnectionGUID: RJg3BmNDRxO3iMwzk5/pDA==
X-CSE-MsgGUID: XyqSzVyLQCmfBXWSGdSeHw==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="75339825"
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="75339825"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 01:00:02 -0700
X-CSE-ConnectionGUID: rghR3CC0Q6SbTIUrY3fT0w==
X-CSE-MsgGUID: A/WJ1JavTq+GSCpmTVj5WA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="219745239"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 01:00:01 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 01:00:00 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 25 Mar 2026 01:00:00 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.70) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 00:59:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Vi2MknaxPfVKq3vuTpFwTyRD64tIFUFfZWRDiHbwqP80TUGG1WnCBEaBHsfX8z/6Kx/lmvCn5+D1VeRp+hBB0MiMQnsatzXSzvMzbxI7VYRvEEZt0SDc55LgArrqcdjByEAFwaE+U7yeBAuLIU+pqsFJfOOrHNnWE7KomoLgm2uyVv5UDLhwjoJlYZFeptWtdCqcIS8N3zadPnTXf2SPFmUchlkdn1hfgOEtunNnJGyINr/lo++HvIPUO5zB3rlVO4TS3QK1wsNUXl0RqE0LKoNhq10QZFP+ia5vGVmuj1PygApzfGSTrEflFOzlnu4WN1LVmzV/9V6MF76D4LcbcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iK+kPlzgXFdmQyFMMF1CdY6y1Gi7qIPDugHqzwNEY9U=;
 b=jPsB9d7wSfKbh9dhoP7mWVXDiEjLziGU9Tal8GcyZHW98LZg0zKlx9khqyBqqSeHlrGEK5Pk+bDf6a2Y//PaXD81KybfSw1Hp+kf0bZ40RVpAlzTNLrOdWtSVV7xIhw74zgfb9zyL+VF34ZYl2fRZZ2XKongLEqWUN5ckkvF58ZbDIHdTAZ6+mYQ5iVFYqEM2zciuuCAdkY0OgbM0QIJVDEo22yCh9nqGYlwbjUYmkGQ5Ea+NGKuGeTyOg4k/LGxwcoWnzAbDT1fRqsSItFoxU7MqSMlqH7e4bTtb/QsEpYtmMGr4835DsFrwX+yX/GCXgDUC+4D+JqulF3L8S1Miw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ0PR11MB5056.namprd11.prod.outlook.com (2603:10b6:a03:2d5::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.20; Wed, 25 Mar
 2026 07:59:58 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9723.013; Wed, 25 Mar 2026
 07:59:58 +0000
Message-ID: <973454ab-080f-4f61-891c-7ac3ebecd80b@intel.com>
Date: Wed, 25 Mar 2026 13:29:49 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 04/19] drm/dp: Add DPCD for configuring AS SDP for PR + VRR
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <dri-devel@lists.freedesktop.org>, <jouni.hogander@intel.com>,
 <animesh.manna@intel.com>
References: <20260311113611.3393194-1-ankit.k.nautiyal@intel.com>
 <20260311113611.3393194-5-ankit.k.nautiyal@intel.com>
 <abP6czXUF_LuCBSi@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <abP6czXUF_LuCBSi@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0149.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1b9::14) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ0PR11MB5056:EE_
X-MS-Office365-Filtering-Correlation-Id: be882002-2605-4e24-dc60-08de8a4481c6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|18002099003|22082099003|56012099003; 
X-Microsoft-Antispam-Message-Info: FsHYylshTuc02mmWpDaEtQat6gq8/FccPbAdjXmZz9Rv5M//POGMXbbZAYPPrjy4HzG62diYMk64jakeNKTspaD76hLjkUOzRUydj5Wxt/tluGlODmxRdUhbPDtoFdoAyOp3Mlw0NAH6Jenkxug4l253jW0pa7wA4js+egqleQLjcjtZvqDodF0UFRxnQcuWZ39fPrnICB9OFtNsfbK02eNwOsE+WG6STZ/h34m3gt/QtBYw036hpWtnV350qtc4se2wnnb9QO94TUCxzd5v2V3Hg99cmWIJ9m1zdLMGXRekAIERMXCaMD+Rx8SU/FYPGYQh0dSyA9lC3+UVReK6Es0hEgu3jK26R9XdFoFY/cSr8HW5rrCV0IsuCLkmQgOt0dRw+pT+EpjRLtt86ZpghZ67mA0cZ4e88CQpTRD7Cza6HDlDHNZ4xJWuNhrtuGrqxSsL05DBFQXyboTwPtaGqXhVGBUnxATK31cpGxXsn8K1W35psbXcNfy7apJ44TbbjX3bJZeLxLQw6LPa1rCflErr2/PdNAasvfiElFGdM2Eok9bHkxhB1jwFHXcC0hF8mrZnuh5ok6nzdXp9O8KEKstgIi2D6eTAyHNvbiIeKwFmDaQoKfMNySvpKq+vFZM16lBSy2Gzu57//g7R2iCE5PDIQ3Cp5MNiIDArpjLSqfxvOZbHUEVAREcp9BAxcdJIJkBhR+Idl57nYLSa0ZrO8b7cbFYPxtUjWCkSlHWTDIg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NUxNeEx6elpmVDd0dzRvMFJ0OWVieS9SQ2FXYjIreE5QQVRrbUhwV0lSOVFv?=
 =?utf-8?B?NGN2SklYUzVXVk12UFI4M2JFQVJZNndDK0dSSTRrSEVPY3V4T1ZmekhveFNG?=
 =?utf-8?B?ekFtWkNvcDlDdG81MnJNNWdQb1k2eWlsMDZ1QWJ1S0RuNTBnTEUwYjhyOXhl?=
 =?utf-8?B?ZG53Q0hpamFORzhEQmdhOTRSSWNIMGcyWHg3aWpwTXVVNTJsOFBRR0ZRNi9P?=
 =?utf-8?B?SVU0bFg3Rzd6NmtieVFmS2JZK2E2dzJCL0VDZnJEWDBkVUhsYnZERTVlVWZt?=
 =?utf-8?B?MWFTUjFFNGpqM0QyOWVOTXhhamg2Z3JyM0JhR2diQ2NMRnp0KzlhWnN1RzRF?=
 =?utf-8?B?U0hWN3pxbkQvK2JWU3ZyNEFNYU1mR0VkZXNFSW4vTTZEcDduNE1WazVBM2hi?=
 =?utf-8?B?VU1DQ3gxZlVoM29Gc2Z0NWdlbkNGZHVmTWZqaCtMbUJ5emwvZzYweTBKU1cw?=
 =?utf-8?B?MExxOW04TjBVUjFlQnRyaW1WMVJESS81dWxwSnFJUzkwcmZMQXFSL0VTOTJI?=
 =?utf-8?B?SWh6ZjY0MkU1RVNtMkdCQzBma011YUhnQjBBUFdpWGRjK0FlUXphV001ZnNY?=
 =?utf-8?B?RUlrUGZBSVhsbmdjRGNpbkU1R29qbnJ5cnk0OGxUWnlpRGsrSzB5Vm1HcUxh?=
 =?utf-8?B?bVBoTUpSYmRQMmJ5ZEJZM3lqRSs3M0RIUGtqbCs1UEs5ZzVockJ0L1J0dTI0?=
 =?utf-8?B?V2NLMXNaQ0gzL21QdnhZMHBzYmhoek84cGQ1VFZwcUxmVDdaYy9IT2pUYnFO?=
 =?utf-8?B?RDlYeHVPUHU1Y2w4MWNtY2lkckVoWU9PWWZuWFZKZ1J4b1ZMOUJ5UnVoU3d1?=
 =?utf-8?B?V0VsYVNQVEd3cVBzU1N3U2pqYXhsRGRqdGNMbTJZWEZZMFFKWlo2N3VxWHdI?=
 =?utf-8?B?aW5VQUI3T0dkNzcyUDFqVmlvUS9kRTNGS05XQWw2cDBOdVVaY1I0ZUw2aXJP?=
 =?utf-8?B?WnYwTWlJNEhVYWh4ZC9mTmc0YU5Ia3F5SGN3RVJCbTJkODFMeVFIb1FmS0FI?=
 =?utf-8?B?Rno5ODllWVQ1NGVrT2t2T3BZMHY4Zk84VEI4WFgwWlFGWHA5UVgvYWFCb3Yw?=
 =?utf-8?B?MThTL1dwS2JKVWsyeTAyb1VNWmdrVUY3VjlaMmY5UmIyQU54eWlzMFZ4ZDFz?=
 =?utf-8?B?aEJMUTNRYUFuL0dPYXZPc3NOZXdkTS9oU2dpK3UyNnRTcmFuYi9IRnNkcDJL?=
 =?utf-8?B?S2c0c05Xb3RyY2puc2ZRRjlmVDRid0F1SmR2Ui8wYVg0eHE2ampuekVQa0g3?=
 =?utf-8?B?Y2VDN2NYTWwyYVU2UnRpNjN3dzB4dm1mSDJpbXFudVRnY1hhdFJadG03K1I5?=
 =?utf-8?B?b1gybGdUK3ByU2k3TU1jbCtmaDgzMFdHVWU4WEFyQ21LZ2FMNFl0MDhGUWJM?=
 =?utf-8?B?Ky9NMTNrUS8zbnhIOXg0dEFoWGxhTFdnR0RCNTBKQUJ0RGk2OTBxNlUyMG9E?=
 =?utf-8?B?WTZOcXExaDk1NDF6MGpHalovYTJqSjR2Ti95OVM3dmhCUThMYXhYZ1I4ZDV5?=
 =?utf-8?B?TmxxZk1VS1lyMjlmZlgrMlRZbUFLblZBSnpOVVQvSmpaSlJmd2Q4MkNndWdE?=
 =?utf-8?B?ZEU1ZUt3OERqeTluVG5UaUdDdktiNFMxbUxHVldRQTJJNmVvU3daNG9DVG9p?=
 =?utf-8?B?N1VFS3BkeitGbmxjaGt4RTViRThHSm1uVGFGK2JkaGJhTWpvekVreHJ4ZUxE?=
 =?utf-8?B?WFlEaHRPTzFCUkN3NFdiQm50V0lBWUhzbkF1SVBIc09BOFNweUNyZ25WNGdB?=
 =?utf-8?B?YlYvcVhtZEF3akpRWWhJYU9YZGFGeS82aWR4NGFPRmdQUXd5QkdSRm5YeHVB?=
 =?utf-8?B?VFBoZ0lGRVNKN0JiQ2pRdklkcCtLT3VBVWFNaFBmcFN1U2lUczlsSWY3ZXNJ?=
 =?utf-8?B?dVNkc0NTRnVMUnZYcFN4NzZza2czRWZyQjFjWjFiNUd3VGJPeHMxNWxnclV4?=
 =?utf-8?B?TVAwMlJOVVVnZVRnMXZ5d1JPVTlsbk1oMVlJQk8wcytnRE1TUXZmbXFVS1FV?=
 =?utf-8?B?WEQ0dnRVVmEwNFZhQk02bGJlbFQvOW53SDcxTlNmQ3g2U0Rtb2ZrbHZRZVpl?=
 =?utf-8?B?T3N6UlNGejFXcEFJMkpLUW9yNC9OK0o5NE15b0tCZTFJdGwyYVhDeGZQSlZT?=
 =?utf-8?B?WkJ5RXh5clRZSW0yYno1Rk56anVmaHROSDJ6MjNmVFhTNTFnQVNqRTJieWVq?=
 =?utf-8?B?SGozQUpHRkNNcXBBb2JxK3Z3dDVaQ2duV0lDdEVCL3lSWEFVRk42R0RCTGlS?=
 =?utf-8?B?QzNrTHBTYW95TEtmTWJFZUVPWnpqTy9vS0tCOGpoanNCUlp2ZDVlNThWeDJD?=
 =?utf-8?B?S0psMk9BUllSQVVreWRjYmJINmZ1NkYyNi82SVg3ZFZwZ2wxRWxJRmtFanJa?=
 =?utf-8?Q?PIemDhFf0B2Mh8kI=3D?=
X-Exchange-RoutingPolicyChecked: m9ge6tw/PiuW7TRrr6vMKq6CY3VZ/mHo0z7S3Ir4sPq1JXKBDM6sHigytkYA/fMc8AblZXj+m1CRXkPdLaDPeiYKMwbjnV1z/eKHUFYMrYnMI+J4NNd0gXBWwUFBV74OxNDjVa3VeA1zHekV1/xNUnmKmueHjmYx5ogt31CxIKkAMFUcJjTSVe6vKlpee/VfkAu5L8rsHlCvpQgFOE1ex79rZogkznI5iyAOJjaj8lngArrMqgfHMBjGok7IlVuFwpmO9359ONwYqw9IqaZnlG9Ere8a5SXwDFFLR6EUZEJqONZFcHPLFqw/jKzLqE7MhiJ9rsaI6dgse7NSreMv4A==
X-MS-Exchange-CrossTenant-Network-Message-Id: be882002-2605-4e24-dc60-08de8a4481c6
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Mar 2026 07:59:57.9991 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5wPWH8sujhbMS29nistHDCfzlN6RB5Fe3sxCFtZyw8rKNtMFDgxhfo2lmr9QyqhzdyKshJFxGb5GsD1xi4l27dfuS4zb3158FYFffa+rqwU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5056
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: BEA6D3210C9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 3/13/2026 5:22 PM, Ville Syrjälä wrote:
> On Wed, Mar 11, 2026 at 05:05:56PM +0530, Ankit Nautiyal wrote:
>> Add additional DPCDs required to be configured to support VRR with Panel
>> Replay. These DPCDs are specifically required for configuring Adaptive Sync
>> SDP and are introduced in DP v2.1.
>>
>> v2:
>>   - Correct the shift for the bits. (Ville)
>>   - Add DP_PR_ prefix for the PR-related fields.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   include/drm/display/drm_dp.h | 9 +++++++++
>>   1 file changed, 9 insertions(+)
>>
>> diff --git a/include/drm/display/drm_dp.h b/include/drm/display/drm_dp.h
>> index 8d172863eba3..e6752a92d5dc 100644
>> --- a/include/drm/display/drm_dp.h
>> +++ b/include/drm/display/drm_dp.h
>> @@ -775,6 +775,15 @@
>>   # define DP_PANEL_REPLAY_SU_Y_GRANULARITY_EXTENDED_VAL_SEL_MASK  (0xf << 3)
>>   # define DP_PANEL_REPLAY_SU_REGION_SCANLINE_CAPTURE		 (1 << 7)
>>   
>> +#define PANEL_REPLAY_CONFIG3				0x11a /* DP 2.1 */
>> +# define DP_PR_AS_SDP_SETUP_TIME_SHIFT			6
>> +# define DP_PR_AS_SDP_SETUP_TIME_MASK			(3 << DP_PR_AS_SDP_SETUP_TIME_SHIFT)
>> +# define DP_PR_AS_SDP_SETUP_TIME_T1			0
>> +# define DP_PR_AS_SDP_SETUP_TIME_DYNAMIC		1 /* DP 2.1 Table 2-227 */
>> +# define DP_PR_AS_SDP_SETUP_TIME_T2			2
> The usual rule in drm_dp.h seems to be to define the values
> as already shifted.


Hmm.. I think I wanted to represent the 3 setup time config with 0, 1 ,2 
which I am using later in switch case.

But to be consistent with the file, I will define the values as already 
shifted, we can still use them in switch case I suppose.


Regards,

Ankit


>
>> +# define DP_PR_AS_SDP_SETUP_TIME(t)			(((t) << DP_PR_AS_SDP_SETUP_TIME_SHIFT) & \
>> +							 DP_PR_AS_SDP_SETUP_TIME_MASK)
>> +
>>   #define DP_PAYLOAD_ALLOCATE_SET		    0x1c0
>>   #define DP_PAYLOAD_ALLOCATE_START_TIME_SLOT 0x1c1
>>   #define DP_PAYLOAD_ALLOCATE_TIME_SLOT_COUNT 0x1c2
>> -- 
>> 2.45.2
