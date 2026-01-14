Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C31BD202FA
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jan 2026 17:23:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A27F910E624;
	Wed, 14 Jan 2026 16:23:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cg6t+EED";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DCE210E62C;
 Wed, 14 Jan 2026 16:23:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768407792; x=1799943792;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=lqq0nmw+2jpH18R7Zze4sRZrAJIdFLD4wAN80vlglCw=;
 b=cg6t+EEDQ+kFhx7QkgrjMDMvQ292viYMcPcydZDBe8+ldxP57VhIq+tA
 rDn5Gr9U2yzN5UTCV8FEIOpe0vLxxNelFG1zuzPKDeW5Jmgxp/orCxrb0
 sjOuMrcgRRvLbTe1+DkVELy8e++TQdiIbID/dIQCQR/MRHVoNEueBj4pH
 qaY+av8yHrPo2CE8spHqvs50DLa0aen4cDwAAs7IbK6AAc/gfSNf+9DBa
 /9qH3XnyrgqKuW6JGKRL3BTx0SW3jsLaEwCj88y/Q/oqOb5LeJ3KpG5Ui
 IXwpHH9Offm3s+IAcMoP2i0/Zs+o6Z/yPHLAboSgiQZvgoGJMHlNjPq2a A==;
X-CSE-ConnectionGUID: ah5hhSr/SguJbq8b8mww6Q==
X-CSE-MsgGUID: ISlsh2qITWyh3Fn7ZsBzZA==
X-IronPort-AV: E=McAfee;i="6800,10657,11671"; a="80007402"
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; d="scan'208";a="80007402"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 08:23:10 -0800
X-CSE-ConnectionGUID: lrv7uMyLS7mUHMvZPiBTWQ==
X-CSE-MsgGUID: sG19ezoiQRikJdTo8Zgm2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; d="scan'208";a="235443564"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 08:23:11 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 14 Jan 2026 08:23:09 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 14 Jan 2026 08:23:09 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.28) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 14 Jan 2026 08:23:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Qal6AsOVM9dv2sTO5uP6bKtRy+heanHI6I4KzFjRz4j6FS3bX0aJghMt2Ki4xd1pY/gB9Pci7lOFl2koojNJJxAd3Ht4SpXrB4khMkl++hCniwe4FLY7gL2LIBQdWcAZz0b8grugWjObM/Y2Q3zKUma+W6Ny9KdAOrHDdmQcEXfOdq/e92F2tfDac44MrTVloyclJNpipn7Sp+7cmmQ06Pzixkxqm6agQm+bh7gtDPZcZHtahM4w5zHY2rYV0i2P4lwgSS0q+UidMg9B6NQGpQaGesLLwde9hyxaUSoH1ogqJqKSvfgSzLbmJsPQXHE9cjcflQjCeZgvIILfG59KOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8H9C80vhuFc1bUPdz6eNsxxOQxRAG1nrtfnV4xyvLoA=;
 b=u/ztI6kxRzhTI7au1wcxYWraurHMiDXN8ieuad7qp8kdF6tog3nK8W+QCKqTQVy3SS0uCrPmIPK0P+bwXExuXEz6aDoXSsly96O/EFG1hpJa2ix6sE5RxvyQrOReBcatACyuK9lgGSAvULvN8wXZg+hg0JxOS0MKiOc4NizYb3MlxKU+lUHNXGJ+Zequ0CrYaO0WTDbs/XnrIeOsvZz2NasYqFk08NaieZt7HNJTb1NLQZWPag5kVgzw0Lcu4RJJ57jo3hnI4/KUX1AzDKdRwmqr5nOns/Mzvh1aaqDyGRhJhB8pwBFVFJftUVXxnAoiSvJEMqkM19cgmb2WQXstog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS0PR11MB8017.namprd11.prod.outlook.com (2603:10b6:8:115::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.9; Wed, 14 Jan
 2026 16:23:06 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9520.003; Wed, 14 Jan 2026
 16:23:06 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 10/15] drm/i915/dp: Simplify the DSC slice config loop's
 slices-per-pipe iteration
Date: Wed, 14 Jan 2026 18:22:27 +0200
Message-ID: <20260114162232.92731-11-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260114162232.92731-1-imre.deak@intel.com>
References: <20260114162232.92731-1-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: LO4P123CA0381.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:18f::8) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DS0PR11MB8017:EE_
X-MS-Office365-Filtering-Correlation-Id: 2ffc6832-fcc0-4f75-dfa6-08de538932d2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|1800799024|376014|10070799003;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WElQalpuWC9CNnpNQjZ5dHRQbG5wL045bENLYkU4bGZSb0ZTRmh0OFlJbDJ5?=
 =?utf-8?B?OTYwaWQ1MnBxbjdQZXlGeGtCakJMMk1UcU4zeHN4d0NLMDJmbGZUaU56R1Vz?=
 =?utf-8?B?dHFiZTJxaTR4LzF1K3dlNFVUenNORTBNd0RSOXFIZHZTQStjcVlqNld1NDNX?=
 =?utf-8?B?bmpIWTZiY1NEN2lxVnNkV1VEQm1KWWU1bE5BV1FpN2l2RjVyMi9zYXU5ayti?=
 =?utf-8?B?UVUrYnkrS29qN1dLSFJkcWZodXNmTnVRMzlxY0k4UUhFZHI4ZEdiUlN4ZUtl?=
 =?utf-8?B?RHRJQ2VRMHV6bGphVTdUTk5DczQvOUVjOW1FM0lkdGJWSlE0RFBsYTU4K1dP?=
 =?utf-8?B?WFJSenRkMUJCdGQ1dzdqWU1CeWN3UDRzS2E5L3oxS3RoZkl5Z001eVBRTUtQ?=
 =?utf-8?B?ditlbE5kckVZV1BBK200d3ZsUE1hNHRHbVlFWDFLdTgrZTQ4TEE1M29jVWhT?=
 =?utf-8?B?UG1CbUREbk1iVVJxRnVKSHhPSEZNWndnSFlCaWgybTlWc3JhT1lsTWptdmVo?=
 =?utf-8?B?RGF1dkJRR3Qxb1V4YnpVVWZDQ1dPbnMwcnZOUjlsNFZkUlE4RW9vVlNSMGFp?=
 =?utf-8?B?NVpBb2hxS0srTU56STdnOXFWc2xyS21mTDdGOXRueHZYcUJMQWtLQmFWVmZH?=
 =?utf-8?B?ZVlnblowNmR1MXhYeXV1WUF5VDlpL21wRUl4ZkhoditzbjJEN2RWRDRsTU1M?=
 =?utf-8?B?RTcvZ2FKakZDR0N3cGorc2pJdG9FamhDR2l5R1UxaXRjd05aYVdGVmJTeVFp?=
 =?utf-8?B?dmphK0o4M3RneFdFLzBEd1lPNGJoK3hrTDlwNmwrV0JEUnZlWXNVR2hvenRX?=
 =?utf-8?B?ZDBZaTJacG14cy9uYTN1dnI5WWlYa1IrdXUvMmQ4K1hZc0JDc2U1UkJ3V0NH?=
 =?utf-8?B?dUdPZWk0aTF6amxZeWdzeGRJY2JnNWtTUGkrZ0t6TEMrUFRqVFNndVQ4N0ZD?=
 =?utf-8?B?VmZjRXByUk9jZmNpZDJzRDFXc0JJdS9YZVFyOVllWG55UWlGYTM5dkNnZUZ0?=
 =?utf-8?B?YTdHdVRtc05jb3lPNEMwcWkzYWxkUjA4YjJEZFVCaGxuNzhuOWNYQzdvMWN6?=
 =?utf-8?B?MWNsZytKWVgyVStuUHRGb0dhY2tiM1dmNVFWR091MlhUTGxQSVVOQ0RVYURz?=
 =?utf-8?B?NzZzajV6MW5UMUdsQ216SUhUZDQ5R3VydW1EeUhSbEVaQUVhbXRVSDR1S3Rl?=
 =?utf-8?B?T3lzNzUzMUNEcGtXSUNBZ1BQOTFFOHFBZER3RzFnUHBlWTEwejZhR1RBYlV4?=
 =?utf-8?B?OVBqYkJkbUU5QTZkU0dGS0dTNi9DMnl4b1FUZG9zSmhBakk5RUw2ZEticUl0?=
 =?utf-8?B?bFIxNW5GejBQYXRkUCtSNHVlQitUWGhjWFhhNE9HRWNqWDdqNExmazhVNWZs?=
 =?utf-8?B?eGg4cXkrQ1R3Wjlnb0JxTEFmYmhxQnIyc1FVcUtzek83bjZiK0oweXJHSHR6?=
 =?utf-8?B?Q3JiSDA5dlNENlZUVXc1R1V4WUxVUDh3UHZNMERPVEhMdW03VzJYMUdIS3Iz?=
 =?utf-8?B?TlBTTFgydzFySEJLREp1cGoxV3E1blk5V1R1c2pnUG5rUkVYeGtyTTRnNEgv?=
 =?utf-8?B?M0NEUlBOTy9xRjBxbHdpQzJPSkZ4TnBuQjNTMURpOGpMTWphTHdncndHendG?=
 =?utf-8?B?SXhyQjdiRGZFRjdvcDRzYzNieVJYSnl2ZFV1NjJBQ0xTOTZKek5pMVlSc1du?=
 =?utf-8?B?aXJOQ3pHaFBCLzUrbFBFZnozYWl4V3daOFR1MGpZSDRjd0tCamx1Z08wOVJH?=
 =?utf-8?B?YWJlRDh5dHJLMzJBNy9NWUdTem1pMHNnWkpDbzNzVmxmMzhEUElnTlRDc2sx?=
 =?utf-8?B?eTA0MEFVV1BFU1l6YmpudzI5REY1STFwY2QvYnlrRkpieCtwUW1zYlF5WndX?=
 =?utf-8?B?dkRCNCszUFRpZjVxSlowRVZIcTFLTVIyMlVqbXZXbjF5K29mSWl3ZUZQNHpC?=
 =?utf-8?B?UGFvZXpLV2JrK05DTXUwV3ExUEt4anlSUFhTT3JYZlBKckhEVjQrZlh2eSs3?=
 =?utf-8?B?R1g2eTk2K0tmc2ZDdFh0SVhUK2tuTENhNm9TekQ1R2x3MWdXMFByUFhQbm9k?=
 =?utf-8?B?eGRxL0VpaEN1VE1ELzh3N0VhekxqUU13L2J1N016a0p0Z1dNRXhQbkR6a1NH?=
 =?utf-8?Q?5vlw=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(10070799003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RVZVVm9HNDM0MVdadXRIWXBZVUVIdVZIeWdhMUphTVp4czMrK2NkSWxCK0I2?=
 =?utf-8?B?Mm93WkRXQjNsbWRnSjRtcUprQ2VzcFgzZ3lDTkl2NWhubHpobERRMG9tTnNY?=
 =?utf-8?B?RVJuZmZWSW8xRUhIbjFNQmxURXJySWQ4eTR4UHgxbzM0SHRRN2t0a2ZabHZU?=
 =?utf-8?B?d3MzQmllRDBLV2tTTDcva3JLNVQwZk5YejM3YzlmSkJjRjVteFpFYWlYTUh3?=
 =?utf-8?B?bndhL2c2SlVzb0NpcExtQitVWDhOSUFMUTdHa1JUMFBLdG5qZDJXK1NSZkV4?=
 =?utf-8?B?RWxGOEdvZjlkdEI2cVN2dXg3d1huQnR3eXNTRVdyK3VrMXF3RmUxWkJMdmdm?=
 =?utf-8?B?bFo4bHVhcHY0ZzNMdytVOVhHNmxZMTNONDd3M2FtVXVvVmMrT2VVMnpBeXZ5?=
 =?utf-8?B?b3R1bmFMWHgxNm5nR0V5bVVMMCtsaEJ1Vlg2aUs0dzIwRGg5V1NzNmc0TDRu?=
 =?utf-8?B?TUN3MXVmQTA4QWpxckxUSnJQdUFyL1lYem04WHdlMkYwS21YSkVrQUllRUNu?=
 =?utf-8?B?YysxaWhwVUF3cHZkR3hMNTZNeGhqSTRnbUowblpOVzVXb3lmOHhFUXhZV3F5?=
 =?utf-8?B?dVR6blUxQlMxMVZ3a3RsSkw4L3JVUUpvYnhiS1QwQ0xLVzZaZ2NaUFJoWVdT?=
 =?utf-8?B?WldGUXI5MFViYlN2S296Z0RCakx3dUg3LzAwdmNNejRkSWJTenRMZjZqZDZY?=
 =?utf-8?B?WmVpTjRkTCs2V1FYdjYzRnN0cWlhQTZTeW9pYllMTzM4R1ZnZGFDMkFPUFlB?=
 =?utf-8?B?TDZ6aHlrUzNKVFpkMmVxTDB0c3EyYm54UkRWSUhQQUNMNFBsdzJnMmdITk1S?=
 =?utf-8?B?RGFXcUlROGJnUXhXUmdxb25KRHRMV3N0MmFqelM2YUVta3NWdWZMMkIzdllr?=
 =?utf-8?B?MEphYWQ0YlVlNnpnTzRrUDE1ZmcyOURnVzBCN2FMSm92eXcwbXEzUkxaWEwz?=
 =?utf-8?B?SHoxTHVGTE9MM1BQSWxXQ1BNYWh6TFk1dXRnaEMvREgrVGk3dzczc2VJTno4?=
 =?utf-8?B?eTYxaUJMNXpRUGlMcnM4NjlKd0haMW4wckVsZE40TVRhamFSdXpoSEd4cDhk?=
 =?utf-8?B?ZVBpNUNkdFRnRWQybXdJd2RqTllkWWhqQmlCWWV2WVVOcGFJL0ZQOTVqWG9r?=
 =?utf-8?B?Wml5U2xXUmxYTDQ3WkVLWStSM3EwYU5lTVJreEp6dCtBalVqRHlTV0d6MUMr?=
 =?utf-8?B?NmtVNHBOWGhWZHorTS9WbDUzM0FuK1ByMmo1VUJCWG5TREszQVI4eWhGMjNp?=
 =?utf-8?B?WHE1OU1UOVNJdHhxMDJTSHVDcDRpMXg3enVoZWtLTlRialA5WmZOejdUMC9y?=
 =?utf-8?B?WE44S1NCcVlHRm54ZGhodklZbkE3amMyamtjQUVnMzZPamNnQmhFdEN0cTAy?=
 =?utf-8?B?SGdXNlcwSTZaM2NZd0VRbGgyNC9hQXRpZzJrOUZmdjlRTGJKZVlPL2MybmYv?=
 =?utf-8?B?eGtUTm5IWU5aUkliSzluRHM1RlVqTlVESW9rUlFOQzBGdExQWmtWUWJLaVND?=
 =?utf-8?B?WElpaElTRS85eFZtUTFaSVdlNklxUnF4M0dWSFVkbFpJRTl3NGE1MlFYZTls?=
 =?utf-8?B?SEN2YmxPRFBlZDh0elhINUgxS2RYcGNtWloxalZnemRjK2JmU2JMSFhSeW5a?=
 =?utf-8?B?UnV2dy9KNWNPYzA1ZHR1R3l2bzU5YzBtZGxTMUxEUFBONm8wSVBNVStmNi9L?=
 =?utf-8?B?Mkl6RTl0dEdzOUFMRjFEbm5GcWdRc2xScTdGTjRuUzA3OWJVeXNyZHdrbFB5?=
 =?utf-8?B?dzhSYVVjLy9GUDlPWXFNRGZYS3d4K0hSSTBSL01ZOXlkSkV0NnNtbmI4MGps?=
 =?utf-8?B?SWtQeDNvcGFHSmZhVlZZZ0VCTk10OWpNeUVRYWJWRnFuUkQ2SU9GK3gvQmpO?=
 =?utf-8?B?RktWN1hOb2t1ZWtJYTRFVEJYU2Y4OHNIVUFERnBLUUw4ckg3SEhRZmVCSzUy?=
 =?utf-8?B?dWVZVUdmVGc1UDFXKytaOEJCM21kUUNQWnZpL3NqMnlReUVUV0xKdTZwNE5n?=
 =?utf-8?B?Z3JyVG1kSDlBZStndGk4NVNLVzMyZVFqRHZYcldBVjh0d1o1MWJFaHV4ZU5Y?=
 =?utf-8?B?VkhNVW1DeTJVbVM2NkkvN1BFc0FISGZhREhxbnVnL09SanNXTFE2SGNQa3M0?=
 =?utf-8?B?NTVIZkI0K0NDckUyYk5wYkpSTStOSjJ5RUw5NncwZUlUNDJDQ2pmdDkzc2lm?=
 =?utf-8?B?SStKZkNMSmdoM2JLZTN6M2x3bFVBUzQwOUJkdWs0WGpPZ0RoTE9aOGJ2SmYy?=
 =?utf-8?B?dFAwMUkyUElaL00yY0YxZ1lEWGZ3U3Y1UHNnbjNILzUvRTMzNGgrTXhZbU9K?=
 =?utf-8?B?OGNaMHRvcWxiZTBtWW1nYWV1QWFUUnJXL3JMR3k4ZzFNNlBZdFpyTnRncU5M?=
 =?utf-8?Q?76j55TX54WL3iNmNWPfgYWh75DFSW3ZJw6OyqwjDrkYmk?=
X-MS-Exchange-AntiSpam-MessageData-1: Gud3ptR8HwgZFQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ffc6832-fcc0-4f75-dfa6-08de538932d2
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jan 2026 16:23:06.3683 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ke9vhqiApaqH4ipSUXvctBiVlYiRMBgzuLewAxoHkSla/oZgiTkHiNKNqjlK5tEe7pR4jg6TKH8Wj5pKJWjVsQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8017
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

Simplify the slice config loop in intel_dp_dsc_get_slice_count(), using
the loop iterator as the slices-per-pipe value directly, instead of
looking up the same value from an array.

While at it move the code comment about the slice configuration closer
to where the configuration is determined and clarify it a bit.

Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 33 ++++++++++---------------
 1 file changed, 13 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 57abc13a02d2d..eff4ea998a948 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -107,20 +107,6 @@
 /* Constants for DP DSC configurations */
 static const u8 valid_dsc_bpp[] = {6, 8, 10, 12, 15};
 
-/*
- * With Single pipe configuration, HW is capable of supporting maximum of:
- * 2 slices per line for ICL, BMG
- * 4 slices per line for other platforms.
- * For now consider a max of 2 slices per line, which works for all platforms.
- * With this we can have max of 4 DSC Slices per pipe.
- *
- * For higher resolutions where 12 slice support is required with
- * ultrajoiner, only then each pipe can support 3 slices.
- *
- * #TODO Split this better to use 4 slices/dsc engine where supported.
- */
-static const u8 valid_dsc_slicecount[] = {1, 2, 3, 4};
-
 /**
  * intel_dp_is_edp - is the given port attached to an eDP panel (either CPU or PCH)
  * @intel_dp: DP struct
@@ -1033,17 +1019,24 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 		intel_dp_dsc_min_slice_count(connector, mode_clock, mode_hdisplay);
 	u32 sink_slice_count_mask =
 		drm_dp_dsc_sink_slice_count_mask(connector->dp.dsc_dpcd, false);
-	int i;
+	int slices_per_pipe;
 
-	/* Find the closest match to the valid slice count values */
-	for (i = 0; i < ARRAY_SIZE(valid_dsc_slicecount); i++) {
-		int slices_per_line = valid_dsc_slicecount[i] * num_joined_pipes;
+	/*
+	 * Find the closest match to the valid slice count values
+	 *
+	 * Max HW DSC-per-pipe x slice-per-DSC (= slice-per-pipe) capability:
+	 * ICL:  2x2
+	 * BMG:  2x2, or for ultrajoined 4 pipes: 3x1
+	 * TGL+: 2x4 (TODO: Add support for this)
+	 */
+	for (slices_per_pipe = 1; slices_per_pipe <= 4; slices_per_pipe++) {
+		int slices_per_line = slices_per_pipe * num_joined_pipes;
 
 		/*
 		 * 3 DSC Slices per pipe need 3 DSC engines, which is supported only
 		 * with Ultrajoiner only for some platforms.
 		 */
-		if (valid_dsc_slicecount[i] == 3 &&
+		if (slices_per_pipe == 3 &&
 		    (!HAS_DSC_3ENGINES(display) || num_joined_pipes != 4))
 			continue;
 
@@ -1056,7 +1049,7 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 		  * So there should be at least 2 dsc slices per pipe,
 		  * whenever bigjoiner is enabled.
 		  */
-		if (num_joined_pipes > 1 && valid_dsc_slicecount[i] < 2)
+		if (num_joined_pipes > 1 && slices_per_pipe < 2)
 			continue;
 
 		if (mode_hdisplay % slices_per_line)
-- 
2.49.1

