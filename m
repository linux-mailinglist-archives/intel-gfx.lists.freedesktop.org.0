Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 269EEB48846
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Sep 2025 11:25:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACE1E10E4C2;
	Mon,  8 Sep 2025 09:25:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bGKtf/Tm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3259910E4AA
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Sep 2025 09:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757323505; x=1788859505;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Ce38iK5CwoCyHxuHv8oEAEhll0sQ8t+hNXbVounJh8w=;
 b=bGKtf/TmVH3FXfouBsU0+BSkn917Lhx46QyyY5Iyw3EIrOSnxON/ZX9u
 Z07hPyTaXgglVQf4DTAl3k5DT/6dkCcB28UkZJonzDPqK7aCRo1Qn0F1X
 9VOuDPwZKcDibN/W+7Dz5eXhEpEhdHzRgEcw/V1oDH1w9LVH6ojp3Usi/
 huK41IetvI3X8XcS9eCRbEtRiKJQfDM5pi3ogdfHm0fSpBPHzZO0Y1oTf
 Re7SNhdxblkHixRA/9oyQ+A3VScCc9MnD93x5uMwxeTGe+/bc79aEZOhU
 x5eQgB/YBu1EuONd9vxwz0fmsrWrtV44cBOmepUUfOr9bsv3UkFJRnfaN w==;
X-CSE-ConnectionGUID: EywavU09RhqiGvjSZBi11g==
X-CSE-MsgGUID: 7G9BCTgiRHyJWHoWG2aAOw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="59529769"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="59529769"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 02:25:05 -0700
X-CSE-ConnectionGUID: +KG10cXgTdaBaI3A0hA0+w==
X-CSE-MsgGUID: eGhVSt1nQoyFIkR2E1reGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,248,1751266800"; d="scan'208";a="171918151"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 02:25:05 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 8 Sep 2025 02:25:04 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 8 Sep 2025 02:25:04 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.72)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 8 Sep 2025 02:25:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pKpgaFsEZTmPpqACza+Wqc6VCa9qYRBlxzo2piT4shSvFt1jq8P8jqOB0hN/OIjmTbaK2BDJg/w+IToYwvMWsM2Tqh4J9Fu3IwEkaIe2EzEQ4xUEeUOgMSMJW6J1nOqzC5PCpMsZrUKG3DSmeuE+oV1GaDQ7lrbF+/hx2ajWj8B5CKV+MaPrKgd0HYzhaQYow2I1j3aexexbnOMgOKd2DcQnkz8BQV8GYmCocwWk8f9lkZzp7NP5Dz87QE7m2KYmIm2SoI1YgfPHIU20K4kKUy7umKA9iGUrYxuGXjfbV/UHP9UXYUbRa8v88MFrZcLZ8dAFM+IlASQUYzZG7u406Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aIpL366wjkHwH/S6ybPCUEcuTx/aZq6RrF+HqNZtBgo=;
 b=MCq2CwOX8et8tmCRKE8neu6UpADVtpDJE1iI2U/dT5UF1frc7RD5NWZTZY1ROy1Jr8LdFj+pB12i2nii3xT6E2lHX3aEJLGxEx+EGDlx0OCAu/ZPO+GxYd/V5OuSUVarTR0i7yWNjO36dlaV8W4b5Pmqo0cI8hQ2dsVe9+7KKG0zbKK9FIZgPNhlXT1HwUjOHMqQ6kgpbxjTItW2XU+Z63r9Ilc/cLSPtCLUngoa52zFfarqIhQkz+nOeFdbj21ZpLs2tEdfMnb07zm52gsI7cMQeu6BLbwz17mXkBHRa2QXOseArWMnfJYc8XQ7auqr+TgsEedCiGnzETDtNVzuDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by PH8PR11MB7990.namprd11.prod.outlook.com (2603:10b6:510:259::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.19; Mon, 8 Sep
 2025 09:25:02 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9094.018; Mon, 8 Sep 2025
 09:25:02 +0000
Date: Mon, 8 Sep 2025 09:24:56 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Simona Vetter <simona.vetter@ffwll.ch>, Andi Shyti
 <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH 3/6] drm: Remove drm_modeset_backoff() return code
Message-ID: <875e9a8b71dd3dfe7b865acb489755b4a205a55a.1756995162.git.krzysztof.karas@intel.com>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <cover.1756995162.git.krzysztof.karas@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <cover.1756995162.git.krzysztof.karas@intel.com>
X-ClientProxiedBy: WA2P291CA0015.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::28) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|PH8PR11MB7990:EE_
X-MS-Office365-Filtering-Correlation-Id: 1e5a3d62-0a7d-4b6b-daf2-08ddeeb99688
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Q09wN3paN05SN0w0Ti9VTjBsUmRGN1c2SXdlMmlCVXVaMHIvSnVQMm1NdElN?=
 =?utf-8?B?ekVBS2wwQXFrcVdldHZqVFhXUi9GdFZNeE0zakhVa1BRbGM3RHdtN0QvTWNU?=
 =?utf-8?B?V0xFSjdpTnBSUEFMNmh2eS9zU0dRZ1EwdXhvcHlKRkt6SCsvU0dEUXcrSmNv?=
 =?utf-8?B?eDFpL3prWHQzelBOdnV0ZWxsQUZ6bk1QOTZNZGV2STJmeHRvRGladEdvTnFF?=
 =?utf-8?B?Nmg5SCt5Z2lxbEgwNTV2c2UxcWllMHNKSE1hUW5ockxldXNXV1BjMGprb1c1?=
 =?utf-8?B?bFRKNmV2czN4MTh0bzFtUkdOaWlrRHVEMUFaNktCZ05lVjFSVnJZd1VUZEYr?=
 =?utf-8?B?ZmZQemdHdVRvclF1dVNSZlVOZXNYVVJRZlhwdW8yeW9RRmlSaE01NDFUNnM4?=
 =?utf-8?B?U0V4a2ZIcGJlSUhBbTJoM2dYNHRpS0hSZFFnNDl4dmdyK2MwMng1bWZYNGZR?=
 =?utf-8?B?cUlzUUdRWHdDTnNBcWF5alVlUnVEZm1DY2hiM1N3SlpUU29wMzhkWnhPVEtG?=
 =?utf-8?B?cnBXeXFqYkNkM2VNTEdWOW5nNi9UK29pWXVxUkRTdFFMTGhDMGZVRk11Rno2?=
 =?utf-8?B?TFpwZVB5OVMzRVl2VkQvVXlqUkdUMkQxOTZFTlp5T2NIQnBjd08zMzJleEU1?=
 =?utf-8?B?ZWlEQ2RlSWs3WlJzL0V0b0VxWkJBS2VpeExPVHRnbXFvOGtMWTZVQStXOVc1?=
 =?utf-8?B?Y0ZNVjlFM2hadjlRU1hxYjVoeGpIM1JhK01Td2I4ajVXTXpYMzFpWGJiUkFN?=
 =?utf-8?B?UXFibXdnTE1DQVdaTzQ5NTlOd0tHRjhtckJBUDJaOVN1UzFidHhnVjZ0WU5S?=
 =?utf-8?B?M3BKTTJKR1Rqc1JEL0Z4UEZKUE9ON0Z4WVp2cnlEd2VJTTJLZm1TUC9EZHoz?=
 =?utf-8?B?dzFubFlTR3BpRlJBcGdPNGw5QllhUjc2MU5UNDdKM2poOW9BTDB4NGM0Nmh4?=
 =?utf-8?B?Q25HV05XMVQ5S3VIWnpTbGNSdWFrNWs2aXUxMDBwN0ZyaGxSdnZWbGxEamxQ?=
 =?utf-8?B?Ly9VaWVOaEhKTngyNzZkUWpwdzNqUlBYRnRrOFpkbWVLd2xBMVRrUWlnOVVY?=
 =?utf-8?B?MVhIVC9FRmp2eGw4T01IMUJVOXZUaEo2QnZadUdhTWNTWnlQa1JFYmFJVGR0?=
 =?utf-8?B?ajFBVzMwNGdCekFrRUEzTzZKVTBsdnJvcm9QcXdmTzllNHcrWnFCZGRKR1Fq?=
 =?utf-8?B?TEphWmxza2J5UjlqNnZ1QXFlS3dXUXNXOXVaMHJyT0xwYXZNL2gzMm0vNkJ6?=
 =?utf-8?B?cDdEbnc2MDY4cTN4VjVaRlRRaHBDZ1RxeFlXbFR4ZkFKMlRsUVY1a21QWTF5?=
 =?utf-8?B?SmNTYUVTVnMveEVQWGcreU5VbzdGNlFkb2txanYyTlJiVWw2aHZGZlhSeEE0?=
 =?utf-8?B?ckxIb0d2RndhL3I3MGM5UUx4MUtPenBkdHFNWnJlSnZzWU5FSW53elpHM0Rt?=
 =?utf-8?B?TzJOaTNhaUw0b0ZGTjZmbXZCdnhQR2RhajU2aFBtWnFCVzRWRytJNU5JL1pE?=
 =?utf-8?B?bmtpSldlRnVkNlB2OHk3d1IxREEvaTNzVEhVREFjeTBIa01OdWttam8xSWcw?=
 =?utf-8?B?T0RuWGR1VzJ2RFVaczlRNEZseU9PY1VUSXF2Z3dJbTk5YXJTczNiblpkMGw3?=
 =?utf-8?B?ZFpqMjZJSDl2TldaU2E3L3ljYXh3VThRL1B4bkJzc05idFdXL3ppU1IxM2tp?=
 =?utf-8?B?aVhMSU15ZG5QMkxCZ3lzNitiOTNFRzVzYi95NlBFSnlYeVFBZUo1bk9DbzNZ?=
 =?utf-8?B?b052TDhWMjdtclNic25vRlMvK3RiMklTV0tldFVJQ2w4T0xKenRDMzhwbDVq?=
 =?utf-8?B?SWFnYzVlZzdKN05KR3JFNStGT1hSNjc4UmJRVXh4Um1VbzR3cVdoQkZnSDkv?=
 =?utf-8?B?VlJaN2JsdW4wN3l3UzkxNnR6azRIanFnUTNmK1AxSG05R1FoK3IwZ3l0bkNW?=
 =?utf-8?Q?5uTaYuzC0tc=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WWhBYXZUZnFFa3R0dmlDUCtyRkF1ckVxeGdDdUlvUTZWcnpwR1pPQ0g5bXpk?=
 =?utf-8?B?MkZ6YWt0YU5kZmtXS3BwazRBTTZ1ekpTWEgyZDJCUC94bDAvUENlUGl2ZnpC?=
 =?utf-8?B?Ym5jekVFdjdQZTdQcVRqd0ZJRWUyWkFyMlpvQVQ3NzVGd3N5ZDBPQUhDQ3hw?=
 =?utf-8?B?eG5jMHkrVkF6TTdlK2JndVFrUmlnWXZGQ0V3S3dJK01odTJDeU9yYUFXRUlJ?=
 =?utf-8?B?WnpnaEp0VERES3ZSaDNtSU1NUXNER0ZGdEVRWndrNE01aG1uSmhuSFZrVDlE?=
 =?utf-8?B?aVFZcU5XNHZoeHZZbUQ5YjdxSVRtUUtWczhKUnczNStZZVdYdHJjREs1azh5?=
 =?utf-8?B?NWYyM2VPMDN5OCtLVmY5QURIaGU5dTNuTE83M2hUcnBRMEEyNGZYNUNJYlpk?=
 =?utf-8?B?TUNoeFdhZzhsaVlxMEpQNDBCYUloYnRTUGhwRGdiSGpmV0xsTnBjNjh0WDlX?=
 =?utf-8?B?NldDZ1NFbHhiVkEvdnlGMmthaE93L0dGbXNYY1Z0YVl4Zjc3SWRJei9wV0Vz?=
 =?utf-8?B?Mmlzb3BwcS93akZNTVoxM3cvemhnQ21NVE0xZ3YwU1hNdStPc2N0MVdPamp1?=
 =?utf-8?B?NzdtbTNaYllCWDR4SGEreDNFRmwzZ1ZFK08wcDZ1OSthYnZpVlJvM3h0Y0h6?=
 =?utf-8?B?c0hVWXFKNnRCZHRHUkYxZDE5R0F2OFZ1VmRsUEo2WTUxdzUvazBhdG9HV3R6?=
 =?utf-8?B?cm83YkFjcXdHUWNFWEd2NWFjWDQ5RHVydThNWE8zRndleHgrdU5hN0d2dEd6?=
 =?utf-8?B?NHpvaVBnY2hPZDJPanMvdnE0Y0lHSmxGYVF5VDJzTFhYSVNYdTZBSk1mY2g2?=
 =?utf-8?B?cXdvRk9sRUU0U1lSdW5aVGtFTjRwNlQ3OXFSQzNwaFUrR1AxVXFnTUozdkMw?=
 =?utf-8?B?L1NUR1ZCUDMreHFEMjRiMW5kWXFsY2xrd09ydkF0bDdxTjNrMk1qc05jRlll?=
 =?utf-8?B?TVEzMVJjY0FhS0tQOXkzZm9aL0VIYWRLSWZRUGhncUxDOEdOZUNnWGJsNHR6?=
 =?utf-8?B?eWpER3V2MGNnR2g1Rll4eWdmdDY3cXVyODB4SUZuVXowNHdZSzZUTHNtdkR0?=
 =?utf-8?B?YlZYeUpORkcwbGsvUFAzNjJDQ0F2ZjRMTWdvWU9XOVhjYitxWWtkOXRSc1hN?=
 =?utf-8?B?c0Z0elIyQWIzaFJTaW5MSUpPcW5zYzY2Q2E3aXdyRjNmUlZiK0hvaGlncC9C?=
 =?utf-8?B?M2NOZHBJejE2b2hMcjNyTC9nSWM5aXZhb0MzUjUyZDRuMlRpcWV6Qnp0ejdI?=
 =?utf-8?B?aCt6TkNQcWFaOFJDd0MxTSs0WDQ1bmZKbGNaNDA4dlpsUkhsQVB6TnpGZWxH?=
 =?utf-8?B?TjRGNVhTWjBFdU9INTNSQTJZNk1EL2VxcCtCM0hpQ1V3UEZIUEtqT3ZKSXZJ?=
 =?utf-8?B?elZNemNOZHhiRkxvR1pkM1ZNdFFCdkVGd1liVDB0R2hhdTh5NjlxVjlkdHJr?=
 =?utf-8?B?YlJkMHlscEFCSjROUjN4UldYZnZCWitiTzdpY2VrSXF6MkN6VDVoUHJwR29V?=
 =?utf-8?B?MzU1WURDYVgvSzc5cGNTNmtGVDM4VXdKRzlTTmJGZjZRT3FGQ1E2dkM3ZmdV?=
 =?utf-8?B?M2MwcHZUQmZtME9JTUlETURJVDFOREZ6dHRhSm1zaXdHZm9tdHhGdUNEWFhr?=
 =?utf-8?B?b0M1ZTQralZJdTFzeVZJc0lITkxNUU4xOW5qQmNTN2o3M28yWit5S05UaUQ3?=
 =?utf-8?B?Nm5zTHNlZmRoYVZNOTdDek1nRHJTeEJ1Tkh5dXpqd253WUY2NWVIQy9Rbk45?=
 =?utf-8?B?Snh6QVNWamVmaWRYR01Jbngwc3RqS3M5RXJYcERPYWxrNDJkc2JTTSszZ1Ji?=
 =?utf-8?B?Qmh5M2JBaFFKN3lRcHg5YXRJM2hsR013R0NkY0pYR0lqSFdFbWcvUFBmaU5k?=
 =?utf-8?B?eHhSNnRKTEMrdVlGYkh3RkttV2xrWVFiV2lZUlZpTXcvK2g3YnVIMWhBR0xX?=
 =?utf-8?B?OWVrMGE2RjVXMFo3UjJHWWdkdE91cmMxOXN2cHVISUY1dDBqYlppVkZUQ0c3?=
 =?utf-8?B?Q0Y5ZCtGSTNXMlRzRXIvbjFPL1N3bDR0UHVZTU40MGtydmYvLy96SFRPK3BV?=
 =?utf-8?B?YU1MVGdXQ1BmVExWdW1jcmx3UlNvQmREanhxbXBRWVZPbUc2cWNrajVpK1Zn?=
 =?utf-8?B?Sm1YcFVWd2thWmtmMG1EcWxmVFNGbDk4NHY1TldKbTJVaFphZ3hNN1VuRmtV?=
 =?utf-8?B?YlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e5a3d62-0a7d-4b6b-daf2-08ddeeb99688
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Sep 2025 09:25:01.9597 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VFQZF1Z98g9Ob8E0s0dL0hKzXbEFvu3ffX4Qj21SVOpC0suc0WCiaLFxWJQdpo/v0m9biDereM27gTyVpnMpxt8LDJ5x++1rxy5zhPL87J8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7990
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

We do not care about the value returned from that function
during initialization.

Cc: Simona Vetter <simona.vetter@ffwll.ch>
Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
 drivers/gpu/drm/drm_mode_config.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/drm_mode_config.c b/drivers/gpu/drm/drm_mode_config.c
index 25f376869b3a..69a923e1bdfe 100644
--- a/drivers/gpu/drm/drm_mode_config.c
+++ b/drivers/gpu/drm/drm_mode_config.c
@@ -471,7 +471,7 @@ int drmm_mode_config_init(struct drm_device *dev)
 		ret = drm_modeset_lock(&dev->mode_config.connection_mutex,
 				       &modeset_ctx);
 		if (ret == -EDEADLK)
-			ret = drm_modeset_backoff(&modeset_ctx);
+			drm_modeset_backoff(&modeset_ctx);
 
 		might_fault();
 
-- 
2.34.1


-- 
Best Regards,
Krzysztof
