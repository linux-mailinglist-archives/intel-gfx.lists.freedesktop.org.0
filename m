Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90376B29981
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Aug 2025 08:15:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9192710E3C4;
	Mon, 18 Aug 2025 06:15:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="afMPJ/3N";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 170F610E3C4;
 Mon, 18 Aug 2025 06:15:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755497734; x=1787033734;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LvbRrXweOe08T1KPG7wsqLr5MsO0uBAzYvDsG5VsshY=;
 b=afMPJ/3NjWrIARsapPF7HO2DDTZ2J1vvu+Ib41bibclbWe8XqX9Q+dSE
 82nNKv+Syc8NAEOmHEYuw+OqUCJj93VdGSwoOyrXJDg7blYC4k4/KqyuA
 m4PSFd0Y3cB/FlFpIqYST9rhjoGxr8qdJpiTmpMSnU+wptb0TchXpN7dC
 uJSQJ4wU/2ZuN8AIONm7+9+FC1tMV5jOuOwZnfH2y0LzFAdJpqD2N0N07
 p97j3lMGxVFcx/4LXrrdW4JS3/+bNSIBzN13ViRyplBIOVUVdawz49SrW
 t4ssmJezlGJkGiukxE2rzKJXbjlsMRUhQIxRvyltR2RV5PgCfXTYDnpjI w==;
X-CSE-ConnectionGUID: sgQCGC7HTXO84XL4NWJyfA==
X-CSE-MsgGUID: IYfhoz0TQYWdP3OUb34Meg==
X-IronPort-AV: E=McAfee;i="6800,10657,11524"; a="57789739"
X-IronPort-AV: E=Sophos;i="6.17,293,1747724400"; d="scan'208";a="57789739"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2025 23:15:34 -0700
X-CSE-ConnectionGUID: RapwJAXNQJC59GMXrWxflg==
X-CSE-MsgGUID: 3v/KsAToSc2lTKkTJfnF7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,293,1747724400"; d="scan'208";a="167468371"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2025 23:15:34 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sun, 17 Aug 2025 23:15:33 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Sun, 17 Aug 2025 23:15:33 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.79)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sun, 17 Aug 2025 23:15:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sBEF6aRxuwKlbnPYcue/SBLiqHfclDNLRMjgllRLbJX4NJ5dHzNWBAwnjrxagBPfuCCpwSeJuLFaWN37zRqHmjImo4hTiSRYwDvaz/yuOcdZZX/+MY956C/v56umQy9znLxWpTdNL8BwASPI3USiXFkklKr54E4NnY0wctLwo9z4wJi38ttLrC12KxmcOP7/2pyDaSQWZLPqOYhYbiRqhux+U+Ys82jXMGk1l0tPWsiuuYSO0aGJn+N1cbO4gcCg6RjjTXMOWhUn4hgZWqOtcOvV2bn6mQp9wPPp47k8eSQlvd0sFbZBX2Ytq0nR7jPY0dIR0JVx4i71wEcv3dZDVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hqdvYe5zLBpZXoobapqfleqDvoPqLABpDLAdyHSrRNE=;
 b=dxu4wT/N1e92WJo+lHGgETf77DSxwKVyw7N+dA86IV0bFTL4hnQ07iueNmS4Gr7TlUUe7456iQCRCkTUQI+yG64ze4i3qMSV/VPF6FB6d5GrnwOxBolVPqP0ckU87Frpq3dROnh0gSNNmqP5yVar0ul+oXkEVHjvCS/x1JJ7sc63FHRwBJAtOS1lua7UjvdOw5qPVvDJXB4weQy0P9+MPTl+89zWmrVZZURbi301n4kn7DkXhRVbws6aZTKie/YHQBN7ONd/z6QcCyJQVfdFhhBnXdpY9dn5mYEQhx9lxufJGT8Sea6WuGSSTqo/CxNCvr86IStjc9cPKe/HrTuvRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CH3PR11MB8210.namprd11.prod.outlook.com (2603:10b6:610:163::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.24; Mon, 18 Aug
 2025 06:15:31 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.8989.018; Mon, 18 Aug 2025
 06:15:30 +0000
Message-ID: <85b808b8-20ff-4008-b4dd-16db25f7372f@intel.com>
Date: Mon, 18 Aug 2025 11:45:23 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 11/12] drm/i915/panel: Add helper to get highest fixed mode
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <ville.syrjala@linux.intel.com>, <mitulkumar.ajitkumar.golani@intel.com>
References: <20250807111548.1490624-1-ankit.k.nautiyal@intel.com>
 <20250807111548.1490624-12-ankit.k.nautiyal@intel.com>
 <80f4cf774713067ecb41abc14112c25ebaae4989@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <80f4cf774713067ecb41abc14112c25ebaae4989@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0004.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:176::16) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CH3PR11MB8210:EE_
X-MS-Office365-Filtering-Correlation-Id: 0439aa75-64ae-431d-571e-08ddde1ea1e5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SWFGL3hhK2lkMkpjN04zcHh1OGgySzlKVFJwdzkzWXBLWVlzdWZod2F6U1F4?=
 =?utf-8?B?cDZIaUN2WTdWRDFPQzVUZUs0cTRrdzdLeEh4YWxCSS8zZlphVjhCSldMazdC?=
 =?utf-8?B?YWdTZC92YWRsMENQWTRnejhGWW1sVSt6dmVhMGs2N2lVSk9GTWZjMGtQTDFa?=
 =?utf-8?B?TkV1MktXdHdZc0UyWnJVWHhDN0ZaZWduQ3Q2dUlMK0xRMU5WU2FHT1NwS3p1?=
 =?utf-8?B?WjhFeU0va2kyenhZbzJQRWdsVzlrL1N2cm5JcUJlS0xULzZab09jdThEZTQv?=
 =?utf-8?B?SjRCeVlDQkxuZHpKYXRncHZjOGpvb0J5QkZJS1IrT2JMZ1hCcmZWdXpZNHVD?=
 =?utf-8?B?am9qWk1tQXVlWmJXNHlUSW5aRnBrY3ViUXU0eHRtKzNWbnN2dXVQaEJWQk1y?=
 =?utf-8?B?SVJncFRNUTNNRm5iVUx0RUtGR1V1V29YSlg0NnpncE9DT1NSVXR6VWd0b0Z2?=
 =?utf-8?B?ajU4NVZiK3VONnFsUS90TnBxMVNqenNlWVZrMDBGZXlDUXd3bEY3aE9DZFdE?=
 =?utf-8?B?MCtRY3FFUEg3d3lZSFFrRHIxNWNiSDJEOHU5b1h4Uks0d2RITTgyMlkxVUE0?=
 =?utf-8?B?WVQwbElrb1RqVFJJYUFBNDVMSkQwOXoxaG5zQkVFR0JvWVloNTZ1UWQyRjlM?=
 =?utf-8?B?SXMwWnVqRnYyY1g2VHBZc3RVcEpOcldKWWdUdEhhUi9mcjh4a0R6WE1JdUlL?=
 =?utf-8?B?bFE0eGpxRjR0MGo2M0RFSkQ0MmRxaTMrdWJ6dW0wWW9NMENGK3p1N2xPWFRQ?=
 =?utf-8?B?bkVsbjB0K2UrdkR4cmdxTmhLUkVXcGt2RFFBb1V2bFZWM3VPRitqbFhjWnI1?=
 =?utf-8?B?c0NWQzFkQ0NzNmlnRnJPbFJDYmlyWGNOY1NTOURLaEpodHJNckQwSmZvN3I3?=
 =?utf-8?B?OTFTM1laTXVlQjJTREpLamd0cFExVXRLZkc4RVI3WVdteEcweXdQM0RYSGhR?=
 =?utf-8?B?QzRhVWNSRWNKT0hFOGJ2R3dqdDZwRytOOE5FcThieDQrUFkwTUxPTm9WVFlq?=
 =?utf-8?B?djRjYWtGbCtWM2FhWHZLNmNaUzRQUklOZUo4WGtDUDZBblRPLzJNdGpMazd4?=
 =?utf-8?B?OTVJUjlXK1dQN0JLenZUdW5UZHA3ZjdEeDNSY3cyVytmZHNTb0hRdTNrUFRZ?=
 =?utf-8?B?QXBCVCsyejJzaVZ3RFF4R3JkTllYMWdXczZYK25rMmRyUEFJRlJtZm9zb2l5?=
 =?utf-8?B?S2hvVzM2RnhBa2VFZ0dvN1pxUkhzaW5aN3M3UFFMNU1ZaVdYaWRwZjhqTDdl?=
 =?utf-8?B?d2NTYytKY0w0K0NZTnEyUSsxdGxHcEl5a2tMZUVNYXRIQmJtNldvTUVDUGtz?=
 =?utf-8?B?VHRaSUZOWGdXY3diQXdZYks2L3RzR1VuUi9IdEJqNzYwU05aQlNraFU3UzY1?=
 =?utf-8?B?YStYMHE0OXhZSnF0dE4zOUZhZDlHZzBHdTUrM2EzTjE0ZW5uRHE5a0w3UzR6?=
 =?utf-8?B?eVBraXZxczZZdWZ4V3dUUnhBR0FFbUtEM1U1M2ZnT1JRR1U4U3lZeUZXOVVo?=
 =?utf-8?B?aUJXU2ZEMlJXR3hFQjMxUFp2V1RpbXJPV1JaVTdlTEt1LzF4THdVQ3lRSDIw?=
 =?utf-8?B?R3JmQnhBY1dtd3JINERaM0xhMHNqKzVSYkpaSDlRRHQ2V1NXS3NlcUlrV2VW?=
 =?utf-8?B?ZHpYR1pYWk0rSkxUL0hWc2V1d1k5OGdyWmNKbHErRVkzQ0pFWkpqOUZwNDZ2?=
 =?utf-8?B?dDJnamExTURzWG45azVGalNSUDA0c1dCai9RblloWU92OW0zVmd3NUpLMUJY?=
 =?utf-8?B?OW5sV0ZuY3NCQVgyWHowMTdSdWFYVHB0aGNGckhwUWRzaEs4akcvUWQrYU5N?=
 =?utf-8?B?YlJoMU5MelJMZ0JpVFNxNjdaSm9UZGo0NW1DZUJlOFNoY21uK0YyRHRoYjR1?=
 =?utf-8?B?Vnd6eEZjdXN2M0xoTnE2elBraVJJNzJBN2JxVmRaMy9pUFE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cXdkSXRLNHk4Qmo5T2phWXhrTEZheVFPMVEvNGxVODE2R09OU2pVWTIrMW5G?=
 =?utf-8?B?TTF0Ti9CTE11dW9vVVdTMitBVmJBTFdGalV6cGxpS2NvWCtjVS9SOWx5ZERI?=
 =?utf-8?B?UVQyZllDNE8xbzFIUUM1VWlqTWk3TExSS3cvQzFSRjNaeWhKajJ4VEN1dldT?=
 =?utf-8?B?alRXWGZQUklxTVNSbmlKVzBxSk1lTWxSUkZtMUU4VkhmQWhiRGkyMmVpMVpQ?=
 =?utf-8?B?a3ZvODhlaEZyVHUzZHhPZk9FRW9VL0VYZGVVWncrbStSd2Y2SjdrdC8zNHFN?=
 =?utf-8?B?Wm5INEc5eWpzd29qSzc3RlZvVTlnOG8vN1BUWmxVcU03RjR4OXFRUUFvTm5Y?=
 =?utf-8?B?TXFsMTI4MHpLZDhYY3huelFjaVlCcWtvL2RxWjN2NGhVdGFnaTJTMWgrbjBy?=
 =?utf-8?B?Zi9Gd0NiSkxsQUdmd3RsUEJCVmtSK3NmM3BNdm9pMFBpK3NyMEhZbnNJcERM?=
 =?utf-8?B?Tm5aSDUrV1RvL3Y2YWRWY28zNXRiWDlqRk9VTTdxU1AxYVFyb1VBL1pDN0ln?=
 =?utf-8?B?eUtrV2dmbEZCaEJMY2h5UWtJTlRlVHZPZmdDMjJBZHRMNndvU0c1N2QwV1Ri?=
 =?utf-8?B?eTZBNXV2QjlBMVNtLzcyV2RVUy8zYUJYR204MFh4Vm1rMEw4T3B6SzFjRURB?=
 =?utf-8?B?ZmVYUEo2aVRiem52S2d4ZUw4QnUzWGJ3TU5rNWJEaU9TNTRVZGwvdmRlZUcr?=
 =?utf-8?B?U1VzS0lsNWlqdm5oOW94QlpPUloxTHNjOXQzdjZjTDBRcVp4M0NzYWpaaGNx?=
 =?utf-8?B?Q1pHR3h6eGlQdVhkelpnV2V3OUJoUzNPd1BUaGNZY0V0cDJLK3NpZHVFM0xX?=
 =?utf-8?B?bXVPVFc1bk04dVFuL1dYK0JaRm54S2N0YmFXMzFjSWJnbXZ3Rzd0eGgxbFhr?=
 =?utf-8?B?eExMVXMwS01QQW1sWDRPTXB2SDkrWld4TGxIbG5mOFcyWlJyVFAwY21aZ2p2?=
 =?utf-8?B?MHdZTFM3TnQ3aUxvQXUyOFpBSTVpM1ZlMjRrVmo4UTFtZmdLSE9WQnBySlE4?=
 =?utf-8?B?RVNZYVJJbHBjc1R4R1djQkZBMWtCVTNiTThHTVhma3pqWHJ2L0NLUTk0YXZY?=
 =?utf-8?B?ZjBRK0txVzlYU2xaU0d1cjJoLzZPK0pXT05OdDdxT2V0aGpZYmVYS2svS3pI?=
 =?utf-8?B?Q3RTZ3drdDd1KzFJMjA0b1UwUUliMTJxdXY0L2R4OGY4UzdyYzJOZzZPVHBB?=
 =?utf-8?B?UmxkMUl0SG04UDM0WDZHVVJDWDFGOG1pV1FxYk9mTlcrZElmMTB6L2ExSDln?=
 =?utf-8?B?TVdyY25OU0RYMEJHSGlkTTN6U3k4d0ZFWWREQ1VGNlZ4WTV2TUszL2RFUU9Z?=
 =?utf-8?B?eDFPV2JUNVZYSHh6aEF0RVF4KzRJTU8vTjA5YUNSUEw4ZXNsRGRkN0ZzaklV?=
 =?utf-8?B?QkNhSU5ieGZqckpJNkR4bVV2MVRUZXlMUTZ1Y2RJRU5HZDNsMXp1eU9ScVNu?=
 =?utf-8?B?Z2hYOGpMcWVwdW1QWThFWGo4ZDBPUENpUXhxRllTMlpDclVrTkcvUFM3Q2FR?=
 =?utf-8?B?QjJJT2FmU3JUek5CdmZIOUsvT2R5ZTlTWlFUd2hMT3F6U1lQMnpQaThtYUg4?=
 =?utf-8?B?NWFzcmNTTXRaMHdReWI2N0t3QVE0Z05wbEFNeURIaTRjK1FVVW9GazZyUmZB?=
 =?utf-8?B?MW52M01sN3NLd0l0YVVsUVVNd2hXWmFuM2FkMk05TVFLME8vVkIwdTc4RTdN?=
 =?utf-8?B?S28rV3RvNWM4azREMitmZkFTVEtaUkdTV1o2bHN5aEZGV2w3cjFjOHJmcmgv?=
 =?utf-8?B?S3lsa25mdlk4VVlEWWRxenFGSVRJbzNvRUZHQTdzNzV0SFhnSXpPYXQxUnls?=
 =?utf-8?B?ODBxWUYrSW9PcVhmZ1VQL2J3dFh5WDVZRUJYb3B6clQwd3pQMGhMZkxkZGJl?=
 =?utf-8?B?dEhJNVcrSmhsdXNmcUlyeHc4NUorblhaeEltY0N1UDBMVk9vcHJNRjhGWUlW?=
 =?utf-8?B?QmhoOWxnTEJ0Y2pMVkZrRVdnMFlPTHRpY3FMYmpqZ0dTY3VSdGRPcy9XZ0ZW?=
 =?utf-8?B?QXdEQlVZdzJldytwMWdqT2I4YWVDU0tVWEhVb0YvRFdzbTBpK3VNTnhsNFYy?=
 =?utf-8?B?alRYM1dxU2FtUXM0UVJUUS9JZ1FXNS9GRmVVMk9qM1I5OVhZaXZiY0tGTWxs?=
 =?utf-8?B?alltY2piWDhRSFVLaVNTQW9nUU9iaGJ0ZmEzVXltbit6eFl0RjVrL2NZL3U0?=
 =?utf-8?B?MkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0439aa75-64ae-431d-571e-08ddde1ea1e5
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Aug 2025 06:15:30.6979 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PdC+NfzDCy9C0m4I0jnGeuiEfRFndEfnP5edGfrWGuwGmbannZZ0YVAiull4v483owUokuVNr1S9xUpts+zi1mCRzT7s6QKyLY6shiEq1Q4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8210
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


On 8/11/2025 8:52 PM, Jani Nikula wrote:
> On Thu, 07 Aug 2025, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>> Add intel_panel_highest_fixed_mode() to return the fixed mode with the
>> highest pixel clock. Unlike intel_panel_highest_mode(), this function
>> does not fall back to the adjusted mode and returns NULL if no fixed
>> modes are available.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_panel.c | 13 +++++++++++++
>>   drivers/gpu/drm/i915/display/intel_panel.h |  2 ++
>>   2 files changed, 15 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
>> index 2a20aaaaac39..ea4351d11e63 100644
>> --- a/drivers/gpu/drm/i915/display/intel_panel.c
>> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
>> @@ -158,6 +158,19 @@ intel_panel_highest_mode(struct intel_connector *connector,
>>   	return best_mode;
>>   }
>>   
>> +const struct drm_display_mode *
>> +intel_panel_highest_fixed_mode(struct intel_connector *connector)
>> +{
>> +	const struct drm_display_mode *fixed_mode, *highest_mode = NULL;
>> +
>> +	list_for_each_entry(fixed_mode, &connector->panel.fixed_modes, head) {
>> +		if (!highest_mode || fixed_mode->clock > highest_mode->clock)
>> +			highest_mode = fixed_mode;
>> +	}
>> +
>> +	return highest_mode;
>> +}
> The difference in naming here does not adequately describe the
> difference in the functions.
>
> Or you could just make the single user of intel_panel_highest_mode()
> fall back to adjusted mode when the return value is NULL, and avoid that
> problem altogether.

Agreed. I can refactor the existing function and fix the caller to check 
for NULL.

Also there is a fix me in the caller where we are using mode->clock 
instead of mode->crtc_clock which can be fixed with the above refactor.

With the refactor if highest fixed mode is found, mode->clock can be 
used, otherwise adjusted_mode->crtc_clock can be used.

Regards,

Ankit


>
> BR,
> Jani.
>
>> +
>>   int intel_panel_get_modes(struct intel_connector *connector)
>>   {
>>   	const struct drm_display_mode *fixed_mode;
>> diff --git a/drivers/gpu/drm/i915/display/intel_panel.h b/drivers/gpu/drm/i915/display/intel_panel.h
>> index 56a6412cf0fb..60f6873cdbaa 100644
>> --- a/drivers/gpu/drm/i915/display/intel_panel.h
>> +++ b/drivers/gpu/drm/i915/display/intel_panel.h
>> @@ -39,6 +39,8 @@ intel_panel_downclock_mode(struct intel_connector *connector,
>>   const struct drm_display_mode *
>>   intel_panel_highest_mode(struct intel_connector *connector,
>>   			 const struct drm_display_mode *adjusted_mode);
>> +const struct drm_display_mode *
>> +intel_panel_highest_fixed_mode(struct intel_connector *connector);
>>   int intel_panel_get_modes(struct intel_connector *connector);
>>   enum drrs_type intel_panel_drrs_type(struct intel_connector *connector);
>>   enum drm_mode_status
