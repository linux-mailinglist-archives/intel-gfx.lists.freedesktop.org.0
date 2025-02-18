Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D181A3901A
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2025 02:02:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C56C610E2DA;
	Tue, 18 Feb 2025 01:02:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XBPVuMnZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 327B410E2D1;
 Tue, 18 Feb 2025 01:02:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739840558; x=1771376558;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=JaZXgVczNGJVz20Q426pNB0eXZmtexFwT/aTFLNfTDs=;
 b=XBPVuMnZVgmwGCKbfHimqFFLqfx8eYhbKS0CZo2LxVUl6mAOWH1DBDh5
 vevxVdKBE7Fel4yBOFFN/OpJPA9a1AePgCR9n9iWLQz9V0anKBMNjQt/t
 2AzOJWHISTZvUtCj2hvhuO5Q1W1MG2G8puVrRiKAcrGA2LlS7YUl1GHVj
 ksDHbQYLEKJuS7OcSnBz/Yy/Z7eiUv6usTlXwgbaQ49w1LN+eNZrqNlyM
 9gOYzbmF5TzAsRxG6icfhDL+phPSeQr6872decWq7Dj3TovrlbaKMaqEz
 Dv3d/EhffaTw7T6S+sH1w1HnUWoBrAYpvGR8ACsbcmdONQWxYnY4akoeR A==;
X-CSE-ConnectionGUID: RKFnTy3nRn+ErCda3MULIw==
X-CSE-MsgGUID: ofFPVbw5TweRzoMPlW+qSA==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="40383671"
X-IronPort-AV: E=Sophos;i="6.13,294,1732608000"; d="scan'208";a="40383671"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2025 17:02:36 -0800
X-CSE-ConnectionGUID: 7sDGFA9QTsaBhfhYyiu+rA==
X-CSE-MsgGUID: bbkeoVZVQW+Mj47CIly0jQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,294,1732608000"; d="scan'208";a="114175308"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Feb 2025 17:02:35 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 17 Feb 2025 17:02:35 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 17 Feb 2025 17:02:35 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 17 Feb 2025 17:02:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ew/wUYNGYoFW3ThN3UhZoZfHv8dOz+lUKJkea9Jx4HhoTgxOSJGBIg/AkOPn6vgfUW+zUP0jveXVYVlY59LYtpBc0tecIq1SlX4gLIQ6SmoMvx1lNXhyrIBPUWb9r+LvaKZi1fHltyfYMtNdj+XIbGswSPV+cn0dlyLY7LeL0wGDdZ/YC4fKkarqYORz9f74n+F7/iFhAI1+4ws/cLbKl8yBvF5INvD73RPUjqMeGYUOycnf6u/LxenHzAmseKc5GZ1klL64/1Y3LwmZmy5wSndfNz/VA72C3JGPQF9Fv+RYUXXD8tXlRWIUK3mkJYU5sYsYUcb87Wvj7MlLDW5URA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=deQJH/asjzscXIBo9gMtaO40YcEpBJKWwLBwNyUzQjw=;
 b=hFbWhhaaSlCo6xbAyGmV/mlAGO78oeLiBq2r+OBZO16pudNJGDxTjjANmvxuWFDTVnuBnqnHDyZTCpuqJ8QddYooCFXKLfyEvuHzownSTvqbcvvx9Ba5iiVdVW0Px6/oIlKYKHGUQli428LFyqSiku8hRFq/THjbNr/eQGMbp98hLtOv9g/pSISt+jQaJ4KV+L0uoMfEVfkH/KYHnEl9G5h027m9+1bg1g+2UwVAMjtDR5mo0OFfT/bWj0loTyq0asBIl65afjW3TmOSj6u9d6nol2Dec3Hz/6m0kuiOklU5AP/UlWM4CgzSi25/kiHI2WDR5VShgT9rSS3N1hhpYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7SPRMB0046.namprd11.prod.outlook.com (2603:10b6:510:1f6::20)
 by IA1PR11MB6075.namprd11.prod.outlook.com (2603:10b6:208:3d5::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.17; Tue, 18 Feb
 2025 01:02:31 +0000
Received: from PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc]) by PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc%4]) with mapi id 15.20.8422.015; Tue, 18 Feb 2025
 01:02:30 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH 1/2] drm/{i915,xe}: Move intel_pch under display
Date: Mon, 17 Feb 2025 20:02:21 -0500
Message-ID: <20250218010224.761209-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.48.1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW3PR05CA0027.namprd05.prod.outlook.com
 (2603:10b6:303:2b::32) To PH7SPRMB0046.namprd11.prod.outlook.com
 (2603:10b6:510:1f6::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7SPRMB0046:EE_|IA1PR11MB6075:EE_
X-MS-Office365-Filtering-Correlation-Id: 512efeab-e054-4146-97a6-08dd4fb7eaa2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dE1JMnpZRWJ1OUlqQ1F2czg2NDlyREcxRyt6T0lQcWl0cHA5b2E0YTlZL3ZE?=
 =?utf-8?B?QXF5dlhWekQ1eHhURnZBVmxiaE0zTzVVelZYZFJDNy9pUGQ3eVN2NGRUaGE3?=
 =?utf-8?B?RTlmYXEyR2o3ejNNbDAzdXhLS0lKYzBjQWptWk13NGFWczcwUmRyYlptSVpL?=
 =?utf-8?B?R3UrKzBZTkJQUzNtK1JsSmRQWENrM1hIZURVVFBFWnVXSG12RXpVSWtoTCsx?=
 =?utf-8?B?TVYyQytFbEJDVWNWeld0RVFFdm8wQkxDSDkwRG5QeUhrYVc4eExHdmZuT2Vz?=
 =?utf-8?B?cm9DUEJUemo1OXY4UDZCUktHbU5hN2ozcFRSYTlkbWpmYmhmVllEVi9DR0Vm?=
 =?utf-8?B?U3QyaUN4UEdLem1JNmdGaGFvR3dIeEt3WlpRR0s1UG1XTlh5ei96aHlYZUlm?=
 =?utf-8?B?SzVJbnp4SHUrOGt0c0YxQXoxTVVnVVRoc09NVnlpeFpJQ2FWelgyZHF4K0ti?=
 =?utf-8?B?YmhUSmlsTmpNQTFiT21IVVN6alpaUitvWmcwM1RUaE1mSlpoZkRLYnVMOEpy?=
 =?utf-8?B?UnR5N1Q4dUl2RTFWVGpGaW4vYlQ1MldTWmZkdElGSzMzM05peVBCQ1ZxVTJy?=
 =?utf-8?B?bTI5Q251L2xMN2c5aS9pblJidm9rUDVnRm5STzFLZlFuVXd0QXI1QmgrNTg2?=
 =?utf-8?B?ZmlJWGJpMVpnQ3FiWDJSa3VSVkRnVW42VFM5WUNUb1o3NG1IV3VtanVQcnhF?=
 =?utf-8?B?SVVjbXAxNlAwV2dkVndzb3dRZUQ3eVovNUE5QlNWcG50dzNUWUVZODdMUVZX?=
 =?utf-8?B?Mk16dTFjV3pPMDA0VWVJN3dYemlDVzI5T2srUHFvb1oxeXVvcE0wOHBGdFhE?=
 =?utf-8?B?UmUxYm5RdDl3RUNCVExxOFcvNy9DcmZvU3BUUHNZSG5venNSSlVjaS83Q0tX?=
 =?utf-8?B?Uy9ZVFE4YW91ZzZZUGZnVStoeXJZMW8vWkJYN0xJUjJSV1JtbFhyckMzVzlR?=
 =?utf-8?B?YXJ6VXdtaUxlUVArZ2YyWkh0U0tydTNFdHRETWV1ajFYdDVUSmNia0d5aWdq?=
 =?utf-8?B?WC96dzJOZUM2bWZMZ29rSitLOGtvUklWUG9KQ0FGaU5PTnRGcFZuMVpiS3pF?=
 =?utf-8?B?enlmRnA1K2UyWkZPeFJIdGV5WVBCNHE1SDhIUlpFaTdER1NlMmpGamF6ZjRG?=
 =?utf-8?B?c0owTXdUMmg0VkI4VW5xaG9wR0FzNXlHODE0ZDNQMHRKaFlZWk5XVFpGdHlF?=
 =?utf-8?B?aFh4dDNaVkkzQUhUSTVvQ2FVcVZoMm8ybnUzQ1ovdnV4c3hnLzYyUmt6N2lF?=
 =?utf-8?B?MitmdTI4bUdlUFJaNllXUXZpektPeXY2Q0pFMnNUM1dNV2RMU2o4RFZtSnNo?=
 =?utf-8?B?QjFuZFd4UnJncWo4cWt3MjgzbEY5RXJ3QlgxVitwb1lmQUFLLzNMTjZlRHQ5?=
 =?utf-8?B?UWtPck1OQmdOVjcwMC9wV1BmNG1MR05OV0MyeG5jTlFkTUJuQUc1cVJ3OE84?=
 =?utf-8?B?Q291dHFBcFRNbkJZcXJIRGczWGRndjcrUnhXbEw2OTIyV0gzN1djZ0g5Q0NT?=
 =?utf-8?B?WFgxT3UyY1FjNkJ6UkVnM2tpTWRXM2Q2ZVZGYTliSWVnMTJrQy83SVFFSjNn?=
 =?utf-8?B?UmYvdHV1WUFiWVRkOVVxaUJyQ2Q5MmxobjhVaXVuY3RjZXZ6T2RMRU5YQU1M?=
 =?utf-8?B?Zzc4eUoySnZ2SzJuSjh1aUFVZ2xrV1g5MTNkcFdBaitBN1VXL1I0ai91R0Ft?=
 =?utf-8?B?b3BZTndEQ1hVK2ltbDkyN0dITHQwaXNrM3Q5Yjdnc2VNVi9LbFZ0L2lVTlNo?=
 =?utf-8?B?dnFvWFptb052SlFKQytaemRWek44WkM0b0c4Qi9CLzJBb0lyazM3Q0ZvV2JJ?=
 =?utf-8?B?TkJpK1hSZDhJMTMzTkViaG9MSDdSc0dmbHFsNmF4Tm9qa2NyUDRlZHB6aXM0?=
 =?utf-8?Q?SGvEkKU9qpMzv?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7SPRMB0046.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b0FkRjA2LzV2bFhUL0lyMHRqMHlVMmMxMHBqOGFia2srYmtzQmc3ZGlmR2Fq?=
 =?utf-8?B?dTNVZ2xrNGlKbzN5RlYrNzBGTktKQnBOZ090RmtnWHdqRHRGTm5SM3ovSk1K?=
 =?utf-8?B?bmlvZTdwNnZFeHI2SGlOcHNFNkdvSkpWWW4xZ2hDdkkwZDlGZlBNNHFWZXVm?=
 =?utf-8?B?Vk5QTUFVc2RDeG5SOWplbVNjdEJzNXFST2lVQUEzYWJiallYS2hLUVcwalRJ?=
 =?utf-8?B?YWVRczNNSmdoR3Q4YkpxbFN4S0RPRVUra3RxcWZ0M1p5OTByNFVLUzBlTHph?=
 =?utf-8?B?MXJwVmpUVUZIOGxYeXUyckRSUTJ6ZE9iV2NrWHI2bWhlZEZja2pCUEpQMXJM?=
 =?utf-8?B?Z1JmSmNqZGpjaWUwU0o3MEw2Yy9selZQbkJMa2wwckJ0TEJDQmVDVTJ0R3BV?=
 =?utf-8?B?clZRTCtLWVJ2enlqN21FQlhrd1B3Vko4ZE1iMTNZa0YrMVcrL1gzOWF6b0tP?=
 =?utf-8?B?RU5zNXg1WWpVVUlXNG5nUmVsY1hEMmpmL2xoOFNoTjFSK1pzbHltWHJFdC9n?=
 =?utf-8?B?eEhnTDBJUnRZdkMvRm9qNmpIUHlqQW9DR3hzVVpGODdmQURHRmxlYnhPOWlV?=
 =?utf-8?B?Tnd0OWlmajBLU2MyczZSV3AyQW9hV0U4RnY5UUZSVmNYZzcvRHpFdGd5V2VD?=
 =?utf-8?B?SWlydFhJV3NsOG44VzBJVFUwUTBDVkFqSlJjeWYvdXdVelNKYzVJVDlsRk1l?=
 =?utf-8?B?dTh6ekxpTWhHOFJ6ZElYOUdnMUR3cW4xdXV5cGo5YWg2RFozOUtYcy9LQ2pl?=
 =?utf-8?B?cU41Y2dTRW11cUd4bmpDK0JnbHFwTDV6VUdTR1JiclRpRU05eDZxSDNvejdR?=
 =?utf-8?B?SkZTVHdKKzExN1pRdm1KdGpLQ1dtQTlsS3BSRlRSSVBhejdrU3QreTVnd2RM?=
 =?utf-8?B?UHlpWTRodXcrWncyelloVm5pMkN3R293RjRxdWd2OUF1Uy8xMlVTbCtyV2Zz?=
 =?utf-8?B?cE5OME1SNTdnNTZoNEg5NDF0WmVGVHNLMGRVT3RVcHBnT3R2RjF2OFhFaUVt?=
 =?utf-8?B?cTZHcUJRTi9lOGcvYkpkdG9VeVBoUU5vaG00eTA1NTlqNGxZWnBEaWNrSUJV?=
 =?utf-8?B?TkF5ejVtQWhnMU5xazArYWE5bzBIWmZTUkdjUFp3aDhtdkhEUFNpMkFPd1l0?=
 =?utf-8?B?bHYvUDBsS0NMZzlaSDJIQkd3akVGUnk1TFJNci9oNk90cnpkZFFERkpOWkcv?=
 =?utf-8?B?K1VEaWQ5N3hxRXM3SkZRTlNoaEE3NUtTUC85d3FaSE9RYUFrQ05SWS85Nnpa?=
 =?utf-8?B?c1Npais2QWJJL0N0Q21NWjlEaml6V25OODlTcE5HdWxjTDVqaGhrNklRcTZ2?=
 =?utf-8?B?dlhUK2NBME5NMkhSWkNSSFVad1ZFdGkvWUlMWGVjOC9GeWkvRkdMQ3BxZjkz?=
 =?utf-8?B?VXNzMUZVZlBnUVFmM1RIUEtYV09uM3JGVXpYMmF1QkRpMmVrTlVRQUd0MTk3?=
 =?utf-8?B?TFpIY0FJazF5ZDJyMXZPWXNkcytsalV2Z3dUSWFCYUhQbUs1cm53cDdyUXIv?=
 =?utf-8?B?bEdMc0Q1S3N5VnNOMzdWRjByYzIxUzEyRWNEUVJkNW4xSUZmQndEUzhOYm42?=
 =?utf-8?B?RzR2OXluc2ZTRnQ3L1dHODB5WjI0QnNRR0UzV2ZjWUVCN2VSdFRRbUJOcC9L?=
 =?utf-8?B?dUFCeVJqVVRybEtPazZlTzVENnBTbC9jdGcxWUFNeFdOTmxQTnZTOW1GTmRW?=
 =?utf-8?B?SWRMOTRsV0c1RG02Z1lScDhUUUwvMkU4bVBqQTdDOHQ5NWNYOEZyejVQKy90?=
 =?utf-8?B?ZFhnaVM2TU0za3EyWEo4WlpOblR0bEZUUng1YkVCY2tVUlpFZ1hYNkpOQUp3?=
 =?utf-8?B?UkVQYU8vTTNCL3FTN3dmeWs4YzlCdTZXUk9pc0ZIZ0h6VzVSSGhTVWFRb1li?=
 =?utf-8?B?bE56QkE5NUpyV2VtQUFQYUJaTnlaM01kcms1SGhSbnBXUDNHakc1Qlk4RXhQ?=
 =?utf-8?B?STZac0UvZjhSeEpPMDdNM0dldUJmK2w4TW9yekg5cDVicityMlo2UUhnWEJh?=
 =?utf-8?B?amVRVWVydUF2V0RXWnFFRi9hQmhyN2xoSFFDMk1TdXBJN2tsTHExaEJUN0pE?=
 =?utf-8?B?Q2NYQVV2ZTllc0RBMFQyeVB3Q292LytFd3F3WHdqY0wzNDc3OWw5M1hEU2Zm?=
 =?utf-8?B?YWJLejFYdVZtVTdEQWIxTVpQWWhob3RhbDhJU2Z4L1FtRHpPV0FyQmJkQnh0?=
 =?utf-8?B?ZGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 512efeab-e054-4146-97a6-08dd4fb7eaa2
X-MS-Exchange-CrossTenant-AuthSource: PH7SPRMB0046.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Feb 2025 01:02:29.8981 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mkm59a0aEnA+oDf0e47pGv5wzmYzPe82NWo0ajA/L4E+PBL0Igru2KlXBRmdcTlhxmIXxA0hWYGn3tJtEqg5IA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6075
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

The only usage of the "PCH" infra is to detect which South Display
Engine we should be using. Move it under display so we can convert
all its callers towards intel_display struct later.

No functional or code change.

Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/Makefile                          | 2 +-
 drivers/gpu/drm/i915/{soc => display}/intel_pch.c      | 2 +-
 drivers/gpu/drm/i915/{soc => display}/intel_pch.h      | 2 +-
 drivers/gpu/drm/i915/i915_drv.h                        | 3 +--
 drivers/gpu/drm/xe/Makefile                            | 2 +-
 drivers/gpu/drm/xe/compat-i915-headers/soc/intel_pch.h | 6 ------
 drivers/gpu/drm/xe/xe_device_types.h                   | 2 +-
 7 files changed, 6 insertions(+), 13 deletions(-)
 rename drivers/gpu/drm/i915/{soc => display}/intel_pch.c (99%)
 rename drivers/gpu/drm/i915/{soc => display}/intel_pch.h (98%)
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/soc/intel_pch.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index ed05b131ed3a..3bac76059ba9 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -52,7 +52,6 @@ i915-y += \
 i915-y += \
 	soc/intel_dram.o \
 	soc/intel_gmch.o \
-	soc/intel_pch.o \
 	soc/intel_rom.o
 
 # core library code
@@ -281,6 +280,7 @@ i915-y += \
 	display/intel_modeset_setup.o \
 	display/intel_modeset_verify.o \
 	display/intel_overlay.o \
+	display/intel_pch.o \
 	display/intel_pch_display.o \
 	display/intel_pch_refclk.o \
 	display/intel_plane_initial.o \
diff --git a/drivers/gpu/drm/i915/soc/intel_pch.c b/drivers/gpu/drm/i915/display/intel_pch.c
similarity index 99%
rename from drivers/gpu/drm/i915/soc/intel_pch.c
rename to drivers/gpu/drm/i915/display/intel_pch.c
index 82dc7fbd1a3e..37766e40fd1c 100644
--- a/drivers/gpu/drm/i915/soc/intel_pch.c
+++ b/drivers/gpu/drm/i915/display/intel_pch.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: MIT
 /*
- * Copyright 2019 Intel Corporation.
+ * Copyright 2025 Intel Corporation.
  */
 
 #include "i915_drv.h"
diff --git a/drivers/gpu/drm/i915/soc/intel_pch.h b/drivers/gpu/drm/i915/display/intel_pch.h
similarity index 98%
rename from drivers/gpu/drm/i915/soc/intel_pch.h
rename to drivers/gpu/drm/i915/display/intel_pch.h
index 635aea7a5539..b9fa2b2f07bc 100644
--- a/drivers/gpu/drm/i915/soc/intel_pch.h
+++ b/drivers/gpu/drm/i915/display/intel_pch.h
@@ -1,6 +1,6 @@
 /* SPDX-License-Identifier: MIT */
 /*
- * Copyright 2019 Intel Corporation.
+ * Copyright 2025 Intel Corporation.
  */
 
 #ifndef __INTEL_PCH__
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index ffc346379cc2..2a2db0a6859e 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -38,6 +38,7 @@
 
 #include "display/intel_display_limits.h"
 #include "display/intel_display_core.h"
+#include "display/intel_pch.h"
 
 #include "gem/i915_gem_context_types.h"
 #include "gem/i915_gem_shrinker.h"
@@ -49,8 +50,6 @@
 #include "gt/intel_workarounds.h"
 #include "gt/uc/intel_uc.h"
 
-#include "soc/intel_pch.h"
-
 #include "i915_drm_client.h"
 #include "i915_gem.h"
 #include "i915_gpu_error.h"
diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index 5ce65ccb3c08..df30c4385403 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -192,7 +192,6 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 # SOC code shared with i915
 xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	i915-soc/intel_dram.o \
-	i915-soc/intel_pch.o \
 	i915-soc/intel_rom.o
 
 # Display code shared with i915
@@ -267,6 +266,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	i915-display/intel_panel.o \
 	i915-display/intel_pfit.o \
 	i915-display/intel_pmdemand.o \
+	i915-display/intel_pch.o \
 	i915-display/intel_pps.o \
 	i915-display/intel_psr.o \
 	i915-display/intel_qp_tables.o \
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/soc/intel_pch.h b/drivers/gpu/drm/xe/compat-i915-headers/soc/intel_pch.h
deleted file mode 100644
index 9c46556d33a4..000000000000
--- a/drivers/gpu/drm/xe/compat-i915-headers/soc/intel_pch.h
+++ /dev/null
@@ -1,6 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/*
- * Copyright © 2023 Intel Corporation
- */
-
-#include "../../../i915/soc/intel_pch.h"
diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_device_types.h
index 4656305dd45a..2586ffc4909b 100644
--- a/drivers/gpu/drm/xe/xe_device_types.h
+++ b/drivers/gpu/drm/xe/xe_device_types.h
@@ -30,7 +30,7 @@
 #endif
 
 #if IS_ENABLED(CONFIG_DRM_XE_DISPLAY)
-#include "soc/intel_pch.h"
+#include "intel_pch.h"
 #include "intel_display_core.h"
 #include "intel_display_device.h"
 #endif
-- 
2.48.1

