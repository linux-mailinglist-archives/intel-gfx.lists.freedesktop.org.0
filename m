Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1D6E9C0F93
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 21:14:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E841C10E313;
	Thu,  7 Nov 2024 20:14:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MlvwLizx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF3B310E17F;
 Thu,  7 Nov 2024 20:14:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731010486; x=1762546486;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=27F+Qpvb9Ts1WHHnpVMZwq0NyFeRjCiS3G+KGKffgSM=;
 b=MlvwLizxJd2Dea4ZecYxG4qJzf67sZnSnR+5sJNMCN8PbzNhIi2aUUS4
 /xay6XjsLQpjS7feI7FEc8ZnU924+IGCVtv+jDYGFXd7/sx57++eYyGtY
 oSqWKO6s9DN8/HBAysKIBaVaAVM8444n+SwvlsF+nkbmZdyaUmen5+YeS
 OtdivQYRMnyWt6CL/gt2ZfNHL8matOpbap507s3q+hjUBMnD8l6Be9wbv
 kmAu5vDx228wzQY2c0c8alibHsf/4+N16lqj4Gfae54qaOM7sddA46T+9
 1g39tQXvXl2J75Y4mDqOMA4ZsWJPK9kaQ6FUrwEWcgxT0G5WRimRoVsnN w==;
X-CSE-ConnectionGUID: OJlrs8BCRDSgomKK9IupLQ==
X-CSE-MsgGUID: Mc4j2/TXR7OAnr+jsiEhcw==
X-IronPort-AV: E=McAfee;i="6700,10204,11249"; a="33722664"
X-IronPort-AV: E=Sophos;i="6.12,136,1728975600"; d="scan'208";a="33722664"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 12:14:44 -0800
X-CSE-ConnectionGUID: UBMiXYCWQj+74dFJbLW/ag==
X-CSE-MsgGUID: 5sTPfTaSRCGDw6Nuuea2Lw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,136,1728975600"; d="scan'208";a="90349871"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Nov 2024 12:14:45 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 7 Nov 2024 12:14:44 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 7 Nov 2024 12:14:44 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 7 Nov 2024 12:14:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dJdwvgjq6qJWBXLVppPnaqF1OIdQloBKZeBG1U6vzfD/nEdhoGhteWl1Jk6Pw3pUUhGq+YRg9ex2M8lM88nzuE+e85VhvJOVUQ62EACBfQM/hcfm8udAcKCM9S66qpHfgJbp8L8XgHFiiTFVFkd1azFLpbaTFe5j0eCqcbdBS3T1dCDZpnWVQcE3zt02Xt724tYDx7g58mEYrtvdA3V2yYsDZTjIwDaPOXGMEPSbQzScujv9PbB2PMnlmHUjGs2lXb/gafjZtD+lm0SfTb5ETakZVxqHzMO2EzaJb8sD9eN0BiQWCGOGie42tgbNpzz9qY6trojSMmU1rGaM5yW6Dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=w5qQBJ2VvJtCMLjmLoJSXNDMR6rNvuS1kz+ZFx9kpRc=;
 b=QoC5D8C8Mbfz9igUATOwc1tdZstZLbzSS4afAqItRK2YJ7m0ZJnyT/AphXYHF1cZwDuTl/VM7BW76J70tTcWn/lMllER/7AJBhIsgJRasdDhbVS2Qiq+Bhe5aYoy/i6t8qud8OtxK3EO+yFbRFzcpKTxgOsYfoQkli7n0UT1ZNucsq4zchdloM/T0s3+d9pgd9iCcKUbkL0pByOB0/3uO5SDm8A63IECx/jeEG4hvL4rthd5GbDCn+wJsurkb/cldIg+m9FJ2fcpqZn5aBZKEPlPOTxm0XBm+gpWEA4z1CQW18bRHFTz/VJOG8QquURW2XxQbYDvcMlopv0Kefoomw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by CY8PR11MB6819.namprd11.prod.outlook.com (2603:10b6:930:61::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.19; Thu, 7 Nov
 2024 20:14:41 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%5]) with mapi id 15.20.8114.028; Thu, 7 Nov 2024
 20:14:41 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <57edfe78f9da272e0312ad77ee8ff7060932ae8c.camel@coelho.fi>
References: <20241107182921.102193-1-gustavo.sousa@intel.com>
 <20241107182921.102193-18-gustavo.sousa@intel.com>
 <57edfe78f9da272e0312ad77ee8ff7060932ae8c.camel@coelho.fi>
Subject: Re: [PATCH v3 17/18] drm/i915/dmc_wl: Do nothing until initialized
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Luca Coelho <luciano.coelho@intel.com>, Jani Nikula <jani.nikula@intel.com>
To: Luca Coelho <luca@coelho.fi>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Thu, 7 Nov 2024 17:14:36 -0300
Message-ID: <173101047610.92682.5793541337752745725@intel.com>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR03CA0050.namprd03.prod.outlook.com
 (2603:10b6:303:8e::25) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|CY8PR11MB6819:EE_
X-MS-Office365-Filtering-Correlation-Id: 8248b42b-3d81-4152-4eea-08dcff68d023
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|1800799024|376014|16122699012;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RWo0SkppL2xpMEluMEM3U0dGTEdsbU5vRlVzZUVnWXkyeG5VeTB4RTl6dVdl?=
 =?utf-8?B?UUFWN0VOT0VlU0ZOZmRTckNCTDlraEs5bjlFbzkwWkU3VWtWSlVxVytwU1Ns?=
 =?utf-8?B?L1hjN3haZExEQ0g5cVF6U0VkbkYxVlFvTGo3UmZ2MGVPN3o0ZHFiVmNjUmVl?=
 =?utf-8?B?QVJpNG54TkZWZ29ra1EyZnQ1cmJYYzNCTUhiMk5PaDcyUTZLL1dVU09BUVgz?=
 =?utf-8?B?Qjl5eUlJcXZSMGtxMWd4cWhFUWpKdU5pYTdOYWNqQnZURkJaR3VmVjUwTnpN?=
 =?utf-8?B?cmtjWTViRTlLWXhOYThlTVdLa1ZCVGZmWEpDVnBIakxZU0NvQ292RGxTVVRO?=
 =?utf-8?B?am15eWdaRjVkYzhtcWZ5UU5yd3VDbnFVSUFGUUJWWFZvNDNPTFMyc3BsVUtR?=
 =?utf-8?B?SlhLM2RZSm91Tm1mVzl4OHYxeDRRSWpCV21Vb3VIM1VCWHl6RmI4OEJQZzha?=
 =?utf-8?B?VTRwYjJGNkJtMnF1M2lHRjhVL0pIbFpuVjVjVXpyUzV4ZnZ0dmMvWGFVellN?=
 =?utf-8?B?UlF6a3ZTVFZ2c1ZRbXA5QkNxVkZ6K2xVL3o5ZElaRll4dGxOLzZmRGZpM0Zx?=
 =?utf-8?B?OVQ4WEZXTUpBYmdLTUFkMVc5Yy9SWWh1Vk91ZDhya0N4eERwb0dwRXFmblpn?=
 =?utf-8?B?WENVRzd2dFVOaFo2ekZJODlhNGxQOGVWR29hU2VBNG5rOFIybkJWWmpoQTI3?=
 =?utf-8?B?M3FYOC9EZE9iZzlUMU1zemJOVkxub3hERE9BU05oTDJ0cVc2SW9WQitqL21Z?=
 =?utf-8?B?bXRZL3UxVWkrdTh2SXhMYjdlQWlaaFkzb0d6Uk90VWxMM1J2M3hpQjRKZ3Vh?=
 =?utf-8?B?dit4MTM4bWFLZGt4S1NyS1dQMEFLWC9DaER5MkNsQmJ3VTNkZnZCQTBHT3Ry?=
 =?utf-8?B?aWR0MmJiU0Q2NUtwd3Qzby9GZERNSDdIY3huTERxRmE1TnkvRVBha2FXOWVl?=
 =?utf-8?B?SXF6R3ArSTUxUEdMMk1aY3l6dUdaa2tZMVVOTVRFS3dYU1dkTzFVblduT24x?=
 =?utf-8?B?UHRTTnJqenV6UG4ra2ZWc2l4dlhqVDJEUGZVSzIza2JIMlZQaFl6UU00OVJX?=
 =?utf-8?B?M290d0JyV3dOQXZnZDhpR0NFUmcrb3QvWmE0MExWdGJZTmRSSTJSa1hmeDg4?=
 =?utf-8?B?Z1kwTEdCREMxV1ZMYTNudjVIc0RGZzJMVjIyTmxNbHVPUGMrVGg2MTY0T1BE?=
 =?utf-8?B?a2RWdjhCc25ZSW5nTGdXZyttbXI3WlFvREtvL0N0N2pJSTNQdGp1YjNkbmNU?=
 =?utf-8?B?YnQ3RFo1TnVWMnJGVnZtL1NVK21Ia3d0MUNUUnN1b2Y4d1pIOWl1NjJsVVRC?=
 =?utf-8?B?dDQyYkdiY0M1SWdPTW5xZEdlSzdVa2kxemRQbFAxckl6T09xTEFpeUpXMUdF?=
 =?utf-8?B?SFNGSGd3L3F1VDBodEIzbXhZMVJlUEs4azV6aVJYQmlUbmhZa3R4WUMxN1Q1?=
 =?utf-8?B?eG9SMTVRNFFtWXpKQ3RhSGlLTHhZdkw5bnQyQkhlanR1NUdYQ0ZRSlpZL1lW?=
 =?utf-8?B?RUZFMGl1N2t5SEo3Uk1rTitmOWdwQldSUXFmM0ozUUZQeksxaHdndXlwSFVi?=
 =?utf-8?B?WU12anlDdFNJSmkyVlBDQkZJSEhrY1RRVGV2N1paMjFOWEFVR1NOOUJTU2t1?=
 =?utf-8?B?amc2aDFiQW1BSk9EN3h4RkQ1eGliTytLTkZjMlhFSXhLcU8ybE9KcW4wb1FK?=
 =?utf-8?B?dlpIMVlGMUx3cjlKQW1HQnlXZCtnQnZFT2FyNmJmVnd3NDluL0FRZ25sUXJ5?=
 =?utf-8?B?bmlTN2hjNHE0YW9WR2FjSlZ1WHhKTFI2ZlJ1ajRtZi9DS0NVcy9BYVpGMjZw?=
 =?utf-8?Q?0KC3J33CsgrmzLuNoraX02bxq4ZESM4c6O/Fc=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(16122699012); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bytBMGdIZkxvWGplWjJiSnZKQ3JKekdrVC9Yb2VYMUZma1JJblpLVDJlUURR?=
 =?utf-8?B?cWQ4NU5jT0dYWTZTaUloRWhHVXQ3MFFPSzFoYjFqbGx6MmhYUzJ5OTQrQ3Vv?=
 =?utf-8?B?c2JVQXZpakxJdFlWZDhSdlBaSUNRZlY4WG84RHVmZ0xHMjgzWDB0MTN0amgz?=
 =?utf-8?B?ZEJMTHNwS0FRM3NTRHZDdkRzRHExZUxCRWdXdGI1MWdSNURCM0hDWVdjUmlh?=
 =?utf-8?B?SXZRVGorRmZBOEFwUnJDYmFmSFgwVWtVa0JDdUI2eG9CQllwV0RIL21WcVZq?=
 =?utf-8?B?S2tZQlpTQm96RlAxdXVjZWJyY29MNStKYXNRYzVEZlMzU3FHMVdsNE9nNDZE?=
 =?utf-8?B?U0xsRDhQVFFIandRN2IzeVRRaFlOTlhvRDRGODJFNmV3WkVCNGpCQTM1VFFR?=
 =?utf-8?B?ejV3YmlPSkR5Q1djTEd3bVlWQ3BXdlF4NW5QOStWS002WmhNdCtDNnphL2lW?=
 =?utf-8?B?aXFWMjNzSnI4THhZN1hOSmZsS2FiajFkdFN2WHlHYkc4aW44WkpDdGp2bTRm?=
 =?utf-8?B?M1RqQUF5UHUvTlRmeW9BTEJ0WmdZYzdQcUIxV3VNcUZWM01TNVhhS1NKcTZO?=
 =?utf-8?B?Sno0cmY1bUhIMDYrcTJxQ2grTXFxRjVlcWs3bWlvL1BEbzRtQldDSGhjbklO?=
 =?utf-8?B?WFBUc3dMLzh1SlhzZUc0OXgvSTg1TUhPbitPWFRUdFl2alI2d2pqcmt0YnVL?=
 =?utf-8?B?QS9sRVczUFdTZWxNbmxrUlRmRjV3dFQ3VWhhWG8rSEliYXlXYlo1WjUzUm9y?=
 =?utf-8?B?N1lacGQwYXdlRGo0eGpCVDBQcXZhUXVZSkRySmNqUUhGV3BvQWhrZEZKZE9u?=
 =?utf-8?B?U3RRRnFVUHVKa2dMalZlZlZ5aXYxbHZ0OGZsUHNzMUl6WUtuNGpvNEFmcy90?=
 =?utf-8?B?ZWtPM203ZzRlUFBLTUgzWjExU09zbFBPcGRzd2xseDBzUjQvYkJ2SnVLOVpu?=
 =?utf-8?B?ZzVxS0JzbEM2QkEwbzB3TUEwT1BwOGFYMVhUUm5QaE4xdEJGbFhUVllHZG5B?=
 =?utf-8?B?K0RkeGhwZVo1TXNtQ3dnM21jL1ViSTRNQjdTbDd3SndJdS9qbmFQMHFIc0RM?=
 =?utf-8?B?QXZCaDExTysxZk0vYmdiR2JVdE1FeWlLeENROFB6OGZOYU1GV1R4ODNGRlZF?=
 =?utf-8?B?azlSYjNPdTk5cWNTL3Ftc3hmR2ZhOUhmODJwZ1JzUWZiTGlmZ3VWYkRwb0J4?=
 =?utf-8?B?VjZ0RW0zaVV1bWZJc0pIUmJLYUt4UmhSazdGckdaWGxWY2tkK2ZiWWNFZlFR?=
 =?utf-8?B?Y2lqQ00xV3lYb3NZczMxc0JIc00zdnF6YTRrUUFSaWoxVWhzN1M2cW9hRkVp?=
 =?utf-8?B?RDA1R3lTOHBGUjBZdFIvWHE5Nm5ERjdiQ2R4ZGtJa3c4VmpQZ28ySlByOHRL?=
 =?utf-8?B?YXFmYzJNOEZ3VVpPdnZka0RhVTFCWi9yMURZd0hNbDlFQXZXdEgxTjFadmhy?=
 =?utf-8?B?QnpQbFJzdFk2YkVrRmp1N0oyeTIrbjE4L0Uxc0xid3hLV0g3T2E2Vnlsa3M5?=
 =?utf-8?B?WnVqWVk0aUNuckZkem5helRsOFRHZURlUDZYNjRIbVA1aEk0TlFWWm91azdS?=
 =?utf-8?B?SWRQRkRocy9LbUNyR0VuUmxFWXZXNlJBa2ZqWFp4ZXd0VHJQZ2E4ZTgvQWQz?=
 =?utf-8?B?RjZHUW16RmpXQm5DT1RzM1U0SU1qS3lGQUw4d1drQ2RFVmRUaGkwSExTMFpI?=
 =?utf-8?B?Y0p3ZkR4ZUN4NmdPa0g3Z1ZaWHI1WGhvT09wVUVpZGM0TnVVZnJlTGlyVVJj?=
 =?utf-8?B?cXJMdWxDUFpnVUdvUGlrVXpYcFpONEthdncxdVFWSW5ScmJ1NFBHaVg5WlF4?=
 =?utf-8?B?V1Z2ZlRUSFlwalgvOFNjSlh5VTA2cFlWaTZvajg4M3A1dE1xdHE4WGVVUEd2?=
 =?utf-8?B?NGRQaWs4ajB1VjJLV0VVVnBKd081YncxcnorM0c2dDBEQmtRSnpxYi9QZHdY?=
 =?utf-8?B?dzU3bFd5OE5qL05wYWFKTldyZWVycmRKUEJkYTg3aWppTmxlUjVmbGhmZVBu?=
 =?utf-8?B?eWw4N28rZ2JTK3NYUTF6WjNOZnk2aXF3ekZ3K251dmdMTFVBM0ZnclFMVzBL?=
 =?utf-8?B?ckd4QTYxMy82YTl6Z0NqUGlJVHZpZjFaMzdBM3U1a1pha3g2QkUrM2RRZm9s?=
 =?utf-8?B?ZDA3N05uOXozcnROZ3RUV1BRVmtjVXhmUDBNanBNb0lSUzJYeHdRRjZ3dEdm?=
 =?utf-8?B?Mnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8248b42b-3d81-4152-4eea-08dcff68d023
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Nov 2024 20:14:41.6030 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: enSUCFNtXf8DKyfbdtZ/RUdlnhRjIvK4EVzFCAb31Hig9Zvb0r3/9MfDULYTOudD2DYZoKIgjdR3hCgxqEi8LQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6819
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

Quoting Luca Coelho (2024-11-07 16:23:06-03:00)
>On Thu, 2024-11-07 at 15:27 -0300, Gustavo Sousa wrote:
>> There is a bit of a chicken and egg situation where we depend on runtime
>> info to know that DMC and wakelock are supported by the hardware, and
>> such information is grabbed via display MMIO functions, which in turns
>> call intel_dmc_wl_get() and intel_dmc_wl_put() as part of their regular
>> flow.
>
>s/which in turns call/which in turn calls/

Thanks!

I'll do

  s/which in turns call/which in turn call/

as the subject for "call" is "display MMIO functions".

>
>
>> Since we do not expect DC states (and consequently the wakelock
>> mechanism) to be enabled until DMC and DMC wakelock software structures
>> are initialized, a simple and safe solution to this is to turn
>> intel_dmc_wl_get() and intel_dmc_wl_put() into no-op until we have
>> properly initialized.
>
>
>About "safe" here... Can we be sure this will be race-free?

The initialization is done only once, during driver load. The wakelock
will be enabled only at a later moment. So, we are good in that regard.

However, now that you mentioned, yeah, we should also consider that that
we do concurrent work during initialization (e.g. loading the DMC).
Based on that, we will need to protect "initialized", which means:

- initializing the lock early together with the other ones;
- always going for the lock, even for hardware that does not support the
  wakelock.

Ugh... I don't like the latter very much... But, with those provided, I
believe we should be safe.

Thoughts?

>
>
>> Let's implement that via a new field "initialized". Not that, since we
>> expect __intel_dmc_wl_supported() to be used for most non-static DMC
>> wakelock functions, let's add a drm_WARN_ONCE() there for when it is
>> called prior to initialization.
>
>
>s/not that/note that/

Thanks!

>
>
>> The only exception of functions that can be called before initialization
>> are intel_dmc_wl_get() and intel_dmc_wl_put(), so we bail before
>> calling __intel_dmc_wl_supported() if not initialized.
>>=20
>> An alternative solution would be to revise MMIO-related stuff in the
>> whole driver initialization sequence, but that would possibly come with
>> the cost of some added ordering dependencies and complexity to the
>> source code.
>
>I think this can be kept out of the commit message.  It's not very
>clear what you mean and it sounds much more complex than the solution
>you implemented.  Unless race can really be an issue here, but then the
>whole commit message should be changed to an eventual more complex
>solution.

I meant that we would need to revise the initialization code and find
the correct place to put the DMC Wakelock software initialization call.
That might also come with changes in some places where we do probe the
hardware for info:

  - We need our initialization to happen before
    intel_display_device_info_runtime_init(), because we want to check
    HAS_DMC().

  - Currently, __intel_display_device_info_runtime_init() is using
    intel_re_read(), which in turn uses
    intel_dmc_wl_get()/intel_dmc_wl_put().

  - The alternative solution to using the "initialized" flag would be to
    make sure that function does not use the MMIO functions that take
    the DMC wakelock path.

  - However, __intel_display_device_info_runtime_init() is not necessary
    the only function that would need to be changed, but rather
    basically everything that does MMIO before the initialization!

I hope it is clearer now :-)

--
Gustavo Sousa
