Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B3ECA45A78
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2025 10:42:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96AFF10E89F;
	Wed, 26 Feb 2025 09:42:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Mm7afhxE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA7D610E89F
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2025 09:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740562929; x=1772098929;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=uaORng1eYkPaxqDFYKa5AqBx+5WV4Ym7c2haU8swnkM=;
 b=Mm7afhxE2xoddtPpuEPQWTT6U2m8+C5/XxrQmf1or89jQImMNwzoAW7u
 uMYOG/9ls/Q47ozAC1jvTLBqT+pNqQqrvzevzsp1bQO4nPr5GA3EcTeLG
 YYSUWwG9eneGu4+xpmsoMohpXxTVDlz0F7fMiPuH1aAM18XExV3BJcAtU
 dgRCZGCCm26i4j2dSkG2d5cbrFmnbDUfEM+2U+qPJrwdsGvsbzaBmY8VP
 bA47kkkMwowbHNrzxeUx9XJmtbL4LoHRCZK0zmJ8OBSqI2beZJ+QcFN6F
 2OtS3IHyo8+Hj99Jf2hn8wf2uYRiOK6YeU0s+MGd7SV94m9Mvsr/ZuN33 w==;
X-CSE-ConnectionGUID: CRtN+9mGTx+xYl6xlNegiA==
X-CSE-MsgGUID: dKGp9evCQn+H+j1V/m//Ow==
X-IronPort-AV: E=McAfee;i="6700,10204,11356"; a="58936066"
X-IronPort-AV: E=Sophos;i="6.13,316,1732608000"; d="scan'208";a="58936066"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 01:42:08 -0800
X-CSE-ConnectionGUID: st57ydckSCuV0ZwPNp3C9Q==
X-CSE-MsgGUID: hIjjvPIWTPGGj6A4iXN0Dg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="117574391"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 01:42:08 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Wed, 26 Feb 2025 01:42:07 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 26 Feb 2025 01:42:07 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 26 Feb 2025 01:42:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nLEHB31kX3jeSFYEIC1i0CCN00XYBk5ym61COrnZCX8MFW93UTDLjBIE3/6kOSOeIgRzZeNtygD13LiiS6oPkC1pUwet2ZAYrDfpdHBunvgEX0j85KGfMBya1c0Mv5eE1WH5It3a2lgQovg9TFu1W+jzmfYwpLbk4NbKz90I2RLXXJGl3jLjIUxZoUSuIDd5pqMtW6waiCMEFD7vWyr/rYMUhr7yc1AZqY8hBlNzql9erqTP3yKLqWn+RqOPbMuwNo+On0acRFgOOOoXg9TbtNABNVXgjl99CCMOJfNxLYcK31ouqHO1nmL1AM9o1MFETxTB0FpsnYrEkdjp0eMyEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P61UKkjOy3FlTpP+fz65CkaARWW/7wfsnk+wdAlExYU=;
 b=OQFe+jMAGoMEEAwY9fBZdEuF1D9Zc5J9DWFKvMF3XToUaAyOb3k3vKj1Rz2Y08OwAZa5SQmNV5S5lLva8kX2K/CVTNYjHETdh0MyfIheeiqzOGkqd1Vcde2Mxi3do8Vwb7Xt4j9z8uQeJQ3dGRIbXMS7dxZOzchywqp8NU8nDC7/ojEWg8mOaRQxkbPFbsG1d7KeO+oppo67y1ABwYOmq5cKyjjXarFjYx0PzX46vg4YYvBZTNimIsjzF3MP6YJcQEUwyMGKFUZpPRtxFmfHBt/8Ak7ZL8lRmCupkNblW/axI3DnkrnIDmtrZL2aPD2Mw5t7CJ0ywK0GOScDLJ90ew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by MN2PR11MB4710.namprd11.prod.outlook.com (2603:10b6:208:262::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.18; Wed, 26 Feb
 2025 09:42:04 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548%5]) with mapi id 15.20.8466.020; Wed, 26 Feb 2025
 09:42:03 +0000
Date: Wed, 26 Feb 2025 09:41:55 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Mikolaj Wasiak <mikolaj.wasiak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] i915/selftest/igt_mmap: let mmap tests run in kthread
Message-ID: <s7bpogqt5pzbrozq3ftwaa4aucrshlygu4ybqmxvchqiljndlz@mesei55qy2b5>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <mqzn3acyfarzlst3tt3mh5r4bvz4ntjkz5a66pip7qmm6hslb2@qc7g7j7q4z3y>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <mqzn3acyfarzlst3tt3mh5r4bvz4ntjkz5a66pip7qmm6hslb2@qc7g7j7q4z3y>
X-ClientProxiedBy: MR1P264CA0056.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:501:3e::20) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|MN2PR11MB4710:EE_
X-MS-Office365-Filtering-Correlation-Id: a5fe43e0-0e2d-4b38-d321-08dd5649d330
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aVFZSDJLa25Bam0zMHE1d00yclBTZ1BrNzFreWR6ZkVEN1pxSHhvRUFnTCtY?=
 =?utf-8?B?V3hBUythZkNWK3oxWFJPWDZ6Y2R4TjNkRTYrR2RtSUJHQ3gvZE9UK0NxYXE4?=
 =?utf-8?B?MHhiZmJvUi9icXZkdnRRdnZ6UkFWMGg1Y1RHbG94cFB0NEtTT2RvZzRyc3BH?=
 =?utf-8?B?VG1Fd1lrdTk0Z3VldEdNMHEwV0x6U0RJVEErUkptL2ZRdEdJaXgwQTNoUFoz?=
 =?utf-8?B?RURNTjR4K1ZJQmVPclNjRGprTldsYWZ0V3YyWWRDYlJBYnZVVXBOckxIR2VF?=
 =?utf-8?B?YXNiWkRCSkZweWs0SGpKVmZQKzhRdG5HY0RSeERSZHg0Sm1JM2tmK0pseHBy?=
 =?utf-8?B?dXJFeEdDc3hQK3E2TTNxSU13c1VIcmNYY05BYmtXM2pEbGNZQnJZenZiUlFH?=
 =?utf-8?B?bTc5cFN5ZkxUVnhUMVBodFRNdHZCV1k5aUR2NGRvQ2YrWURST0kwdHBudThl?=
 =?utf-8?B?QU9JYVBCMWE5Mkd2QWQwS2FxTEp1aXgyL2xxTWtBTEJnMFUzTUxNTUFobW85?=
 =?utf-8?B?elZNWW12SFBKd28xMXo5TUZvQ1dxOHppTTVwcmJ6eHZGL2dURjFmWFQ3VlpR?=
 =?utf-8?B?Q2hwM0FnNVg3bU5nOWljdFZQcGFYRmtXOTNmYnRuWVFtT0pYemk1YlMycWRk?=
 =?utf-8?B?REFvc0ZQNDJWczM5M0FwVHBhSkRKTnREbG9OQTBuM3RDbXdVSVRMNVdLdWZx?=
 =?utf-8?B?bTMxZG02TjZXbndndmNBK0xOS1kwMVozazB0ZXpEc0hTekNQdlJMYjAvVzQz?=
 =?utf-8?B?ZUNYWWxIOHVQa29MNkc2U0RGcy92VEUrRktkRGd5MWRjdnoxVzdSQUd1Nm1Z?=
 =?utf-8?B?b1N1ZnFQbW5pWmNSSis2bnlqbE1lV0d0ZjMzS2l4NndmQ0wwZityUzNIVlpK?=
 =?utf-8?B?cVgxNUppTG91djNGUFEydHlmWE5WYXlzenUvSTM3Nm9lYkVaK2FXRTVHZHlR?=
 =?utf-8?B?SHZjWmxXN21iNktRSENYajIxd2lTN2dzdldrZ3NyWmpiZVZTMWhvWklUQWRv?=
 =?utf-8?B?cUliUjZYUjQ2VlJ3RzNwK0N4SVdpODNISlVEMkE1OVhlbENnSVYzNjJLZHFr?=
 =?utf-8?B?a1d3cUFhanc1WUY0emgzR25BbHNpbnk0MU85RTlhM2dJOW50K3lvRzJleE5m?=
 =?utf-8?B?dUFFN0FXdFhnY3dWYzMyQVlWekNPTXRPM3pDSlU0S1RSR2syK2c0Q05JbUo4?=
 =?utf-8?B?b3BLb0N2blRBbms5V1dGaUVkRVhMaWR2Rmxlb3c5WldtWWJaVGYvUFNVWlVG?=
 =?utf-8?B?WnpzYTFMRmh6RXN5R1NqY0hSMHBZNytKUXU1TGEzbjRQVlUwTkdSWXhRaVFm?=
 =?utf-8?B?Mjd1Nkw2b0YzK0ZRM2FMeWNXNEkweEJJbkhOOHRBYnlTZjJyVmxWQ2NiN0Zt?=
 =?utf-8?B?cWc3MHJWekRIR21CVC9ZQytDTVg0YUNrbENtRDluUTNreVVMYlZIVzRPZVFj?=
 =?utf-8?B?TitibjhJWjYxYmxuN3h3V2txbkJyNllwQ3ZNa2VBaGdDSkg4bUxXZTlsT29K?=
 =?utf-8?B?VmFNVUU3TE1LK3NFZFhxTml1VTJlb3VBeVdzbXBOTFdHODNveXd6S3lZK3dm?=
 =?utf-8?B?WHFseGtocWRHQjUreXlEdk5OMTUzbVNaWEo1ek9UWXRCNzE4U2dEV05ESGN4?=
 =?utf-8?B?VHFwTGMxMjdCOFdrMmZPbUZublFSVkpXYWlybzhlMWdhbTJ4SE1uL2J0b3k5?=
 =?utf-8?B?elhGSXdHUUJEalRsaDJ5SjhPUWFMZUs2bnhxdk94TWcyUDlZek4weDIzZEdx?=
 =?utf-8?B?bkhRdTdTbG5vTGNZQ0F4dXUweEttQ0VjZlA2TjRrWXZXdlpvT2ZzK1V5VHRR?=
 =?utf-8?B?YVhmSDNtRnlLMUV0aFlFdEs0aGRTWU5oS1lsQ2VTL1FORDBydm0yMGNjbVF3?=
 =?utf-8?Q?oRiymxftdCZIE?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UzAvY2FLRGthbjc5YUJJalVKRnU1cDREWjNyWERic2haWjh0R29PNENWMVhN?=
 =?utf-8?B?TUtndFczbUQwZFdJa0VYbU9yclhWdS8zdUJGck12SitHdXIzc2pXRTVQUkpW?=
 =?utf-8?B?bXFEVFpnaTJNQm1ITnhjSUxERWw3eU9pRTk4Y09UUlFHV0hQSnZzVkhxY2Fh?=
 =?utf-8?B?anFueTYwYU41QUFTWGZiYkdZVnNyTUhIZmZ2am85VjJpNU9scEQ3anpUcUZ4?=
 =?utf-8?B?VksvMGhkS08waTAvaUd0K3c4bG1SN2tZa0lKblV4ZXRYUVlra2JiSmJqaDVK?=
 =?utf-8?B?ZitkS3dBNGE3bFdMUDkxTjZob3ZwNS8wdld3amNLUmtybnhaaVFLS294aWhJ?=
 =?utf-8?B?ZzlKN0JFK2pHbHp3UjhpeDVQNzBVRHFVSS9jN2lRL1BSVGxiQkJsbmgwU2w0?=
 =?utf-8?B?NEJ5VTdvWnFUSWd0d0ZWN2JxcjN0RmpqT252VWJVclJKZU5mMWJ5eGhCTlRU?=
 =?utf-8?B?NTNJSzVHWEMwMEZQejArVERXeHkzMWZWSjBXb0J1VVd3U2tVK1hjVUNJa2pL?=
 =?utf-8?B?ajk2TGNXeStOWHM3WGdwNWJJMzBXcEplcGZ1MC9tZEpiUUl2V0kzM0I4dy9z?=
 =?utf-8?B?V3ZXU253NVp1RUpsVUhZaTJ3VGRkTHJNUWF0WHJKUWlwOUxVcTdoTWRxM0VS?=
 =?utf-8?B?a0ZwUG1rOFhYS2pXd2NNaVNET2l4dzRtMU5lZUhsOE9aWkVSdU5XbEp2R0xG?=
 =?utf-8?B?aXhvU0I5N3I3UXRPNno2eFZFU3haMExTOW85d21nUVExdWx5MXRicDJxRk1u?=
 =?utf-8?B?ZEV1Z2p1QWdKb3F3RE84NHZ6a0hjbzZkUG8xL0RIbi9IVUIwZVh4TnNXcHJS?=
 =?utf-8?B?ZmJwZFRoby9YMGZ0aUtQMllkM1FOSFgveVM0SnZXQ2JITE9zcDRpU0JSSy9o?=
 =?utf-8?B?cFpjQ2UzbzB5WlY2bDh6V3U3N2JKdnlPYXpnMXo5WjRQcWJSci9WeUVJT2Rl?=
 =?utf-8?B?K05ESElzOTkyVGRQYzlsdDJmMFlnd2V5aUYyNkVodE1paXNDK1ZaRHZXREly?=
 =?utf-8?B?cjNIRTk4NjBDaWsyUnNyVWp5TTltYVM5RlNOR1N3MTJsS1VVd1QzL09zOGk0?=
 =?utf-8?B?U1BZQmZ3WjJsaW1yVVdHNGxxbkRpMmJENEpZc2x6TUFUbGVFQjhBd3FmeThu?=
 =?utf-8?B?ODg2T25XTmtWc091cjFSZWtEcTF6QXVBVzh1bUtmci94ekJBSStNczVudkth?=
 =?utf-8?B?Y1BPRG0xYkV2R250NnVFcDNXQWdOcFdsa0Q3cmsyNkRmcHpOUjIzQ0J0OGRC?=
 =?utf-8?B?akNIQW9aWGRJZEFSNVhKdXVIcFlRSGVtb2s3YjNENzVvdGl2bUZhQVJnMlhz?=
 =?utf-8?B?elhEMlpyUXBESXpHdTdmNEpicHc0TU4zWXNrRzVoMUFDcytma1RoTm9Kbmhp?=
 =?utf-8?B?R1A4OVBXQVhjVmVuRm5qTEtpOEw3SHlCaG45QlJCSCttV2RQd0tQZ3hLcnVP?=
 =?utf-8?B?YTBrTUVhcmxLR0hXSXpSUDhVV2VqNEtJZXZ4MzFJZXVFUm8yb2preHNNcDJK?=
 =?utf-8?B?MVgwZnZ0bm9aR2JvM0M4dDZwcTFaRnB2N1RxemU1UXk4QmxiTnBTUlhBR2ow?=
 =?utf-8?B?MTFocmpVOHlrczY3RlluejZpdlZMcVhxZHJYSitiWk1COFJ3YWJ3dEV3Z3Rl?=
 =?utf-8?B?OE0weEh4WjNGRk44NXVYblJDQWVYZXdXU3EyRFp1ZEVJenFqREdWNG1ndE5v?=
 =?utf-8?B?UEZUWnFiTVpwU0Z2U0V1WGlrSkptcTI2UlVCSTBGUk5URG8zbEh6MGhTemFm?=
 =?utf-8?B?SUxhdmlnZGNZUFBON01XYjVQUnVvMllFUmEvTXdNNHJLVmd5M25YZklldXRq?=
 =?utf-8?B?ODlQUW9KWkxLNnBDSnlCeElySzNCcE0wQm44L0tUUlFrU3J0aFZsaHJOZmVL?=
 =?utf-8?B?QytHaGVPN1BXNGtmT0dzMVkrSFJKMUdEc2FhOE5hQktQYkdneks2Q2x6MHJP?=
 =?utf-8?B?R3VSYTd6NVNBRnEveENDcy9PejFLTkhLOHROM3puN0VyNE9xTlJWZy9xL2Nz?=
 =?utf-8?B?MUg3R1NLOWw0a080VHJZT0RIZlVKTUFZbVZReWQrUFU4N0lHeFVTSTRNWVVk?=
 =?utf-8?B?MFYyZXg5dnorbGxlQUdZa2JkRGhXeUt0UkxBeU5yREc3MEkrU2hTMnVvVncz?=
 =?utf-8?B?RUEvbDhSRDlMekZOWTFVMkljcVhvUndSNXVKZ2xRVm5iaHdBZTRKcFdtZW1X?=
 =?utf-8?B?WkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a5fe43e0-0e2d-4b38-d321-08dd5649d330
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Feb 2025 09:42:03.5250 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: C5GueXu57I9bNr53glNlozsA9o4Peyl8Seii4LYvJHyn7gat+1iGVHjshkMNoolCWaB/p1s86+BEyQbEX/5poYYpGepN7CT6jZBKdespnIE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4710
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

Hi Mikolaj,

> This makes it impossible to use current->mm in selftests which currently
> creates null pointer exception.
Did you see this happening locally on your setup or is this
already documented in an open issue? If latter is the case, then
you could write here something like this:
"Using current->mm may cause a null pointer exception in
selftests as seen in issue <issue id>".

> ---
> 
> This patch is mostly damage control. By using active_mm we expose our
> test to foreign memory mapping, which sometimes makes the test fail.
> That is still better than just having null pointer exception in driver
> code.
We talked about this offline a bit, but I think we should not
expose the foreign memory mapping, if that "sometimes makes the
test fail" (we have no way to determine the outcome of the test
and subjecting the testing suites to sporadical failures that we
have no idea when would happen makes the test lose its value).
Skipping this test on setups with NUMA nodes would let us avoid
the null pointer exceptions and give us time to figure out how
to run it safely on such setups. 

[...]
> +int igt_mmap_enable_current(void)
> +{
> +	if (current->flags & PF_KTHREAD) {
> +		if (!current->active_mm) {
Insetad of trying to pull foreign memory, we could return early
whenever we detect a kthread.

I also wander if this is the best place to insert the code
responsible for detecting these problematic conditions. Here we
need to return an error, which then causes the SUBTEST to fail,
but we cannot really do anything about it until we figure out
a way to run these tests safely everywhere. I think
`i915_subtest tests[]` could have two versions:
 1) one containing all the current SUBTEST entries for when we
  are sure it is safe to run all of them
 2) and the second that does not contain SUBTESTs that you
  modify in this patch, which would be chosen if we'd detect
  conditions that could cause these null pointer exceptions.
> +			pr_info("Couldn't get userspace mm in kthread\n");
> +			return -ENODATA;
> +		}
> +		kthread_use_mm(current->active_mm);

Best Regards,
Krzysztof
