Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0DE3A70594
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Mar 2025 16:53:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1E5410E599;
	Tue, 25 Mar 2025 15:53:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UH0hP4bO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D48310E599;
 Tue, 25 Mar 2025 15:53:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742918026; x=1774454026;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5h5kmoiVBWYCyCWhTZI7nfI08h6h3CKN9G+JsSIlspQ=;
 b=UH0hP4bOqP5qhB2zYMST3j81YdsJ0s+kAN4SCnrf41/YNX/7NBqLP0ru
 oIFuQjRu2xJMFgPDV0u36MoR8n/8Uka6/L/pKHL6UM8oJGfaT79LVvlym
 IJhuxbEytkTbavUy03FNFCYZzag/qfvG0aL1+lFrn5Y34hpOT0sC/SIM0
 waM8w5fN6Kwrgn64Q+zQpp3XcRb6qQV4xJdUKQTKuGr7Sri/Sn/O3aymh
 KdeGyRY6HnHfPyzVJlnul0fkO4fHpDHcSjCpPvQGTkBeY5nfLAPCnVTA5
 gnfNmmxnRJ+fqXvP+St5atdZaF1gSaM99Sn6rNnLKeO/uEJKaHeVzlj+E Q==;
X-CSE-ConnectionGUID: 7pVa9SzJS8aJh0PG2W1UGQ==
X-CSE-MsgGUID: esJRCUSAQWKUX+0E18DBQQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11384"; a="47824496"
X-IronPort-AV: E=Sophos;i="6.14,275,1736841600"; d="scan'208";a="47824496"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2025 08:53:45 -0700
X-CSE-ConnectionGUID: bF+KJqRqTmm7nmpqWOU6pw==
X-CSE-MsgGUID: onSypMBaR2yNWB4olWqebg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,275,1736841600"; d="scan'208";a="124456739"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Mar 2025 08:53:45 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 25 Mar 2025 08:53:44 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 25 Mar 2025 08:53:44 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 25 Mar 2025 08:53:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ww2NSb0+jAuncGiCBb9TjMk6uUzkvIsZmpQgE4MKbkAYxzX/1hSPpu7YB7eCBJhfECUxJWz2LNqRgZ3N0PAFu3q/AWMaMsv4zAEadA1UVq0HvuSZ/PsaN1yQZ29lnUfAREoiyjJnG9eZePygBPvw2bbBWAH/JFSIUf5yS+P0kK1FWKsPbhDiYDEXyBwd9QmWPfL+43r2yyzEpvA8n36b6mpq95YwnaW4wJcsh00CRhBz6pBK0LI6TjKc390uRrEicZSScc36t32z+XDJZSBfuWslopNC5yQXT9cxatXAGeEGqGKHZhnNEtg/X+1nqQPteQQS4qMX5o5mWLtCeOxJOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bQ9CaYsdqYLSbimUWzopFNeK8h51qduPAeLHS8cisV0=;
 b=SaD3gLE7DGZlORUHpnMIafffnKtECYg91xFRmInVQKPgZrTYmsjFMF9928BHhLTyNMxhkV5Q/PC95ACmF+ZLXgupRqQnaB/eXGDt1sfYDGfXRa3BS/7IcqDx/aEeXu1o0Titi30buPr9w+U/HwJfIKHfUeTe6DQSIZsgihMmgpxqZ0zcAgjVuHokR4oTLsXWc+fs0dbMNMzfis4+6Oi+9rqpeM1b+dGp3tT6PnXi0boAP2NsXfWK2ziEeO9pI2OEbXs75GEWLqZU19FaSejtqz8Q9SVzan4D4RCIon1375z7IFaHXLWZjD1zzr7VQRdoqODkBPPZ+yqc1GqLBTV3+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by BL4PR11MB8798.namprd11.prod.outlook.com (2603:10b6:208:5a6::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.43; Tue, 25 Mar
 2025 15:53:42 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%4]) with mapi id 15.20.8534.040; Tue, 25 Mar 2025
 15:53:42 +0000
Message-ID: <55cb4b81-dfc6-4e89-90c9-13750777a658@intel.com>
Date: Tue, 25 Mar 2025 21:23:35 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 15/16] drm/i915/display: Separate out functions to get/set
 VTOTAL register
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <mitulkumar.ajitkumar.golani@intel.com>
References: <20250324133248.4071909-1-ankit.k.nautiyal@intel.com>
 <20250324133248.4071909-16-ankit.k.nautiyal@intel.com>
 <Z-GeIi5I0R9U4EGS@intel.com> <28b1b129-f84d-4d15-97b0-3ef3e05002d5@intel.com>
 <Z-Kze5WxTVVs5bbi@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Z-Kze5WxTVVs5bbi@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0067.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ad::13) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|BL4PR11MB8798:EE_
X-MS-Office365-Filtering-Correlation-Id: 3ca82808-65ad-481e-b8ae-08dd6bb53793
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UGtHMjNBejRIUks0dE9NblpOWXhoSXltRjljWEVvTHA3ZVVGNDI0azhQaXhU?=
 =?utf-8?B?Z1NRR1BWbzMzQ0FtbUZBU09uTHVjYndjd3lEaURSaUhyZS84TFdkbVBzdkFy?=
 =?utf-8?B?UDZRL1lHRDNIcnpua2JCYnVDVk5GWEFNajVWNGpld1Z4MHdNb3hSd3RUdkkw?=
 =?utf-8?B?TVZ1dHV5V0ZPZGc3NktuQy9CMStGM3VQS1J4OHZvTHpReWZTRjM4WlRKbkhi?=
 =?utf-8?B?bGNqSkxFb1V0YjRlZjlnckw4dU1HTTZOUmtVVzZsS2prclFuRjhybzBkU2p2?=
 =?utf-8?B?SmI4NFZRT0VjaVdYQ1ZRZnh1ZU1mZjIvL0ZpS0RJb1d2SDluL2RvTVpXbS9z?=
 =?utf-8?B?OWN3T1ZGN25EcDVKdmxkVTZtWlVIMXdZVzJLcGVoc0RBRVFkYXFleFIzZ2hY?=
 =?utf-8?B?RVVEOGc4MXBnZjlldk5ENGZQVTJjLzcwVk9BWEpCSFh5OWxuYjZWc0FXaVRn?=
 =?utf-8?B?eEtiQmR5elJsVkEwbmtCNkFPTXdoM3NNVEY4T3FtZE9zR1h6VGVWcXNQTGwv?=
 =?utf-8?B?U002bHdSa3lzTHJoazZpSE9lb0RhWHMyV0JNUHdGRXNyU0VSMnV0enJQQlIw?=
 =?utf-8?B?aTB3TnhLWVNVMnNsdTRiZlFRSnkwR1dzZnY2cHdRMjhCZmlUU2NEekttaUVP?=
 =?utf-8?B?TFdBL1cvY1Fhclo0bFZWLzBJOXc1YWpOaHgwdFR0c0RRcnpjeE5EQ2FLcWpL?=
 =?utf-8?B?VWo0RTJiV25Sd1VOSjJrTEZrOVBVZkhkNkpoOGR3MXJ2cHBxWTJYU2RkUjQ2?=
 =?utf-8?B?VkdzVlovM0FSOUhUOXRPWGN0RUhnOE1ncHZWQWhxbjVNQVFPdjBVdFByUEJj?=
 =?utf-8?B?TEtuODNONzlUV3RRUkZaTHR1Qk5ZY1ZMMVRhMjROUy9wMFF6d3BLM243SGdB?=
 =?utf-8?B?QkJORlNzTXFzZkMydDZ2S2M3YWVFSVE3dUgvTGc2MytBYkswWjZZejFTcklQ?=
 =?utf-8?B?WWZTYjdFK3czZWtzeTVFRkMwbDArbXRtV2gwdUpXb0lYa2R0eWJmenNkVzll?=
 =?utf-8?B?YUtwSXdUcS95R2VtTHRqT0pWa0lDZUx5aVlOeFVpaVQ2d01sUk5ja2ZBZUJB?=
 =?utf-8?B?NWV4VFpzZmV6ekxIZE9ZYkVIeVhPVG1ybWwybGEzUnBFcHYxUnZNTFNQaXE4?=
 =?utf-8?B?R3B5cTZhcEhibWNmaGtBaVZISWRTdlJCK0hKdEM5NGhyT3FHdkZRNmdJejB6?=
 =?utf-8?B?SGlZQ2Z3SnNzSTlyNGxtRzBZQmFTbjFKTmc5Y3FFL3dzTDRhS1ZPbHkxWFhY?=
 =?utf-8?B?cDgwZWowbUZPK1lDdlpvTGZTWGNoTUxHaUo1ZkJqSi9Kb2hOZ1FwZzVMaFJK?=
 =?utf-8?B?OU9PVklud3NrWkdNclpvRFp5ajJxRHdVQWJNQ2RQZ2hJNHJHcEhRZTdWNWMr?=
 =?utf-8?B?Y1FFbU14SDJOOG1GV2FLSm9CNU5KeU8vcFFDYUxaUC9HUHF1Vmsva01kYisr?=
 =?utf-8?B?QzRwYWNvMWpFWkhhckNuVnYwbkZtZXAvSmdWaHZXMk5JTUJ3dCtrbTlZSHh1?=
 =?utf-8?B?TzRvMFo2UTBmdzNheStWMkJ1ZGxYbVRKRHBieWlMZjAzcnVwcE5UYVN1TkZY?=
 =?utf-8?B?TEpIbUdBWUIvNFhuRThRSVFwUFFHN3RScG9xMmNMMWtEVks2UXIyM2dhNWs5?=
 =?utf-8?B?VXgzZ2oxWjBRaWxuTzk0VXQ3Mm5oTG5jVysvMnhQSHNERHpoS1V4eldtWnlO?=
 =?utf-8?B?cHpwTDJnaGRWLy9MNDIvNmRpa2tkYXdMSm9RbDJleHdCNjZsaTZpRk02WHVy?=
 =?utf-8?B?Nzd4ZGtNNzA3TjZiRmhZWGpDdkprVnpVdnlGYUF4ampEMDFIMEdFQTdRN0tS?=
 =?utf-8?B?Vy9yK2F4VVJuSEl5T3dneUNIYURqdkwwYm1idWpiRnd4NjlwSm1rZVlyWW1J?=
 =?utf-8?Q?IvkPIg7swFcBB?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cWJiQ1c1Sk5INEhRMG9vMGhvUDgxQ05LOTkxalJ5QW9BczRvSGJ0UTJjcUZl?=
 =?utf-8?B?SG9aVFlwcW5Za3FoVHdkZEsvK05xUlZZcmd1eHRwU1FlSldtQ1VDUUdoS3BE?=
 =?utf-8?B?SzZZOFdpRWxtNDRrUVpla3JxajMwUjBmT2s3TFpBNVpoenV2dUljSGVSSEZC?=
 =?utf-8?B?dmdIbWxPcncyY2M2eTZpekhFWXB3L0pTSXRBM2NMSS85V2h6N1lrNGNYRDQ2?=
 =?utf-8?B?UlhVVzQ5a2QydjJIQnJHT1Z1azdPSGdwdWovRmhNTURTVHNxTHNFcWNCa0tn?=
 =?utf-8?B?NTg1MGZJQno4d3JITnlhN1dGWXZtNHZaR1EwSlB5NEViQXB0aVdiZjFjMUtS?=
 =?utf-8?B?TXVnSWhzaDBndWNoMWNQWm5hLzBJOXpLSG5QbktzYXNiQ01FUWZOVGp2RzQw?=
 =?utf-8?B?QTZpK01YUnNkS09wRUxNTW13dnQwd0MxcHVXMUJuNFdaclIzMUJjdUtGNXZ1?=
 =?utf-8?B?dkYzaG9LZnNUNXE3Ny9nZXBqMmhzd2ZXVGZmVHh1dzZUdkZXQ3BOUGZ4L3Uy?=
 =?utf-8?B?dU5xWlFQWkpuSHhJRkRzMXhEaitoajJZd3puODRDTFBrNFQ5cXFza2trdjFD?=
 =?utf-8?B?Lzlqd3BET1Fxb3FUUkNYSkRQbHFxNjgrUmsxMWQwNmRJTW9BOC9MWlQ1T2ts?=
 =?utf-8?B?NFhNM1NuWEMxMVNyTWRGWWFJYmh6Z1FGMjVKTnpVL0thSTBIb3g4c05ad0ZF?=
 =?utf-8?B?bEZLb2VXWHpzQy9LUWtXbzkzRWtZTUVIWEdnWW5neVM4d0FzOWhWbkFsaDJv?=
 =?utf-8?B?c3lrQXhXY0VuaE5keWFkSENNTER6THZWL3h6WDU0Y0RVOXQwMUFUeVd6Y3pm?=
 =?utf-8?B?RmgrUk5vVEpwVnVpMGNPdmJpNjV0UE1PUGVBeU10UXlweWkzNjJFR0RaOXZM?=
 =?utf-8?B?cERGTm42WC9CRGRqbXBOQm44bi9EMno4N2d0eG9tUlBudmV6QjBNUzFQalJ0?=
 =?utf-8?B?emdUMTA0bWYvVHplN3dBY0JpcSs1R2NRSnNqK3ZLQms3L2ZLODdXeWQ0VXEz?=
 =?utf-8?B?c0d0TmYvaTNPMFhYM1NONGt6b2NwZzVZcDRJcU83Q1JmK2FONXR1ejhwOXhN?=
 =?utf-8?B?eFd0NkpnZGV5TE5aN3FLZHFqdFk5UGY5R2lWRlU5Z1l5cGhRWDNqOFpTV0lD?=
 =?utf-8?B?N05xSHp1ZWV2ZHpkY3pLeEdVU0gwbFBwMkhJNnh5Mm1IVENwaTZSOE84OXVQ?=
 =?utf-8?B?TkRhM1greklTU0Z3b1JnZi9rQ2ZsS0tFVitoMWw4SGRQTnpabCtUNFV5WFZo?=
 =?utf-8?B?ZXFFaFpKWUNDaTl3cXg1S1VpZEl6UzJxeWxrRFgvS2Jvbm5uaXVoWGw5N3dE?=
 =?utf-8?B?ZXJSMjEyQ0hoM2txZGpjSi9SakFHcTN3Wm5IbDNlQkluRzBOWURER1dYSkNM?=
 =?utf-8?B?QnczRm4wN0VzeDJTT21vSFJBV29raFVVWHZCSXVlSm41eDF3V3JNOGFvNEJH?=
 =?utf-8?B?VHFaOEFwMnVESnhiMlcyMmRFY0d1cE5hNC9VK0t3S2hPeTF0VmVXanBxaFJU?=
 =?utf-8?B?ZGRGRGFSUUVYdThuS2NvSDI5LzhzcXF1T1VjejltMVdvN0hld0N2ay9sMmZM?=
 =?utf-8?B?SlVJV1loeHRYaVgwOXRpRWxDZWlYY09GYm9WRUkzQ0M4MjcwZk1jem56d3hV?=
 =?utf-8?B?SmZoZGFRZmZNQTRJZ2ZMelJhMlpuSm1DQ2dQR3V1S0w5cDN3UThYbWR6Z0xr?=
 =?utf-8?B?UUhQRVhYbEFLSjkyTjMrbmZwRC9IL3RGeW4wdUo2aTJ1eW5Dcnk2M2dGVkt5?=
 =?utf-8?B?VFF2eGJ2Vyt0b2E5WWIwYzd3WEVNTTYvVndPREJRTTkvU3NQckwybTNGeWRX?=
 =?utf-8?B?cnhKb2pKOXI4NmNXbVAwTjNsN3d4K1NJUHYwTDhESzBISWlYbXdnc0VETnlm?=
 =?utf-8?B?MS9VRHMvbnBSNERiSWdjaFBmQ0d4VFRTLzR5VG16S0I4aG1hOWlURnhwR29t?=
 =?utf-8?B?MFBnZGIzWjFsb0dqY2M2ZkQ0ZVVOOGpMNGxwdU1vV0tobDlSMUs1MjBlYjNz?=
 =?utf-8?B?SHM3UmdCUGF5ZWFENThSbm1nSC9SaFUxa3hnanR1Vm1xL2Zvdi9WdDIyVE1H?=
 =?utf-8?B?MEZnZGVENmw4WWdNZ0hsemY4QWtBL1hCMGxxNklCWlZ2dGNINDhaYmV2djd2?=
 =?utf-8?B?MVFuTzBnblZheUMrZWVrL1lmMkFkaS8wQXcyRU9xR0s4MnYwRy81Q09hRzd0?=
 =?utf-8?B?dHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ca82808-65ad-481e-b8ae-08dd6bb53793
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Mar 2025 15:53:42.3589 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: a1rtj8Zw3fu+wsCcMdkx7yTY9+fwWpYk+7xWJO2dIZtcHNULx/HfhR1UpYbkjxlvWqNvmgJqz+O1k6c3jUve5mjhUfT9v3FAz+KQolOOO/o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL4PR11MB8798
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


On 3/25/2025 7:15 PM, Ville Syrjälä wrote:
> On Tue, Mar 25, 2025 at 11:52:24AM +0530, Nautiyal, Ankit K wrote:
>> On 3/24/2025 11:32 PM, Ville Syrjälä wrote:
>>> On Mon, Mar 24, 2025 at 07:02:47PM +0530, Ankit Nautiyal wrote:
>>>> Introduce helpers to get and set TRANS_VTOTAL registers.
>>>> This will pave way to avoid reading/writing VTOTAL.Vtotal bits for
>>>> platforms that always use VRR timing generator.
>>>>
>>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>> ---
>>>>    drivers/gpu/drm/i915/display/intel_display.c | 41 +++++++++++++-------
>>>>    1 file changed, 27 insertions(+), 14 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>>>> index ae1dc32044fb..fa9c6793357e 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>>>> @@ -2638,6 +2638,15 @@ void intel_cpu_transcoder_set_m2_n2(struct intel_crtc *crtc,
>>>>    		      PIPE_LINK_N2(display, transcoder));
>>>>    }
>>>>    
>>>> +static void intel_crtc_set_vtotal(struct intel_display *display,
>>>> +				  enum transcoder cpu_transcoder,
>>>> +				  u32 crtc_vdisplay, u32 crtc_vtotal)
>>>> +{
>>>> +	intel_de_write(display, TRANS_VTOTAL(display, cpu_transcoder),
>>>> +		       VACTIVE(crtc_vdisplay - 1) |
>>>> +		       VTOTAL(crtc_vtotal - 1));
>>>> +}
>>>> +
>>>>    static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>>>>    {
>>>>    	struct intel_display *display = to_intel_display(crtc_state);
>>>> @@ -2702,9 +2711,8 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
>>>>    		       HSYNC_START(adjusted_mode->crtc_hsync_start - 1) |
>>>>    		       HSYNC_END(adjusted_mode->crtc_hsync_end - 1));
>>>>    
>>>> -	intel_de_write(display, TRANS_VTOTAL(display, cpu_transcoder),
>>>> -		       VACTIVE(crtc_vdisplay - 1) |
>>>> -		       VTOTAL(crtc_vtotal - 1));
>>>> +	intel_crtc_set_vtotal(display, cpu_transcoder, crtc_vdisplay, crtc_vtotal);
>>>> +
>>>>    	intel_de_write(display, TRANS_VBLANK(display, cpu_transcoder),
>>>>    		       VBLANK_START(crtc_vblank_start - 1) |
>>>>    		       VBLANK_END(crtc_vblank_end - 1));
>>>> @@ -2718,9 +2726,8 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
>>>>    	 * bits. */
>>>>    	if (display->platform.haswell && cpu_transcoder == TRANSCODER_EDP &&
>>>>    	    (pipe == PIPE_B || pipe == PIPE_C))
>>>> -		intel_de_write(display, TRANS_VTOTAL(display, pipe),
>>>> -			       VACTIVE(crtc_vdisplay - 1) |
>>>> -			       VTOTAL(crtc_vtotal - 1));
>>>> +		intel_crtc_set_vtotal(display, (enum transcoder)pipe,
>>>> +				      crtc_vdisplay, crtc_vtotal);
>>>>    }
>>>>    
>>>>    static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc_state)
>>>> @@ -2766,9 +2773,7 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
>>>>    	 * The double buffer latch point for TRANS_VTOTAL
>>>>    	 * is the transcoder's undelayed vblank.
>>>>    	 */
>>>> -	intel_de_write(display, TRANS_VTOTAL(display, cpu_transcoder),
>>>> -		       VACTIVE(crtc_vdisplay - 1) |
>>>> -		       VTOTAL(crtc_vtotal - 1));
>>>> +	intel_crtc_set_vtotal(display, cpu_transcoder, crtc_vdisplay, crtc_vtotal);
>>> Not really a fan of special casing this that much. I think we should
>>> probably handle it the same way we deal with the VBLANK_START vs.
>>> TRANS_SET_CONTEXT_LATENCY.
>> Hmm I can do away with the helper, and avoid having VTOTAL.Vtotal bits
>> set for specific cases in intel_vrr_set_transcoder_{timings, timings_lrr}.
>>> The readount should perhaps just be handled in intel_vrr_get_config().
>> I can try this out.
>>
>>
>>> But I think we'll need somehting like transcoder_has_vrr() to exclude
>>> the DSI transcoders in a consistent way.
>> If I understand correctly you mean that wherever we are avoiding VRR
>> related register read/write for DSI, use trans_has_vrr() instead of
>> !transcoder_is_dsi(),
>>
>> with trans_has_vrr having call to transcoder_is_dsi()?
> Yeah something like that.
>
>> Will perhaps add this as a separate patch.
> These two last patches aren't needed to get this stuff actually
> working right? Or is the GOP leaving TRANS_VOTAL.vtotal unset?
> So yeah, if not needed right now probably best to leave this
> stuff for a seaprate series.

Yes we can have a separate series for the last one.

though, I have sent new revision, we can get the patches-1-14 merge as 
suggested.

Thanks Ville!

Regards,

Ankit

>
