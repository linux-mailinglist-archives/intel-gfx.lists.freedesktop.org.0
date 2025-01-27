Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6879CA1D68B
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2025 14:24:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58B4B10E510;
	Mon, 27 Jan 2025 13:24:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UR/0wHoq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8542110E03C;
 Mon, 27 Jan 2025 13:24:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737984284; x=1769520284;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=79JOMTQiXolGOkIAYTQau301EBkg2O9W014CpZ1bg/U=;
 b=UR/0wHoq/Vuj+W2See4Wm11eSQo6vFkXdneW3XGytEoFx937C1F9VUYA
 Om3Ga5ruTcC14wtx1L8Lr18mrL/oJw608KdHxV+cEXe6cv9S7BiZfQi4C
 yR0IZtcpSfk5nn9SN47lJRd3dGFto3QWXQ+2bhqMJk/ndGrWBnINMoHXy
 a4U/9NAxfxEA5NWgo6uwd8Hv5E2tx4aSGYM+UvVCcg0QwwQ64QMU6Ewg3
 7Qp0tycjbQTfml9qy2wjOJLj9mfTWktLtsq0DhlpflslqgBZGCi0CKe/n
 AHRmPyK9lvELQUsxK3xUK+Ewo3Rz6aVl8zyX8rnJJZojcz6kkK9e3v8ll Q==;
X-CSE-ConnectionGUID: dZ7dZdXlTMaVE7bmdAF5hg==
X-CSE-MsgGUID: i2tp658lTF2jC1vGtayIJg==
X-IronPort-AV: E=McAfee;i="6700,10204,11328"; a="49430195"
X-IronPort-AV: E=Sophos;i="6.13,238,1732608000"; d="scan'208";a="49430195"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2025 05:24:44 -0800
X-CSE-ConnectionGUID: 4VC3LxWxQPi64dR1ovsslg==
X-CSE-MsgGUID: TwQ2+5+4TE6YXRh4z+tyRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="108877810"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Jan 2025 05:24:44 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 27 Jan 2025 05:24:43 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 27 Jan 2025 05:24:43 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 27 Jan 2025 05:24:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cyFsezgIwEjKJzYcFmSzIHTrHndWwuFGB4N069jd4fT/90tegzr3PDEBC8asKDol3FVEYZ/CxsNvMrGipKVgyb53BUNlpUqhKO5Hxtz/EXU9kZwTPRd5ALk0kkvJI9KEIiQSkI2bA1NYbng9AwusxG6xMjSAc3RKhBI1VyVl2enAXcIxCuxzu0XfozAEz3FjJhEb04WcEobKLBs5z/T1F9fWVU67jhOfjovmukZUmV2BZaZijP2f6wEeY6GOEGcuXkbxv7NMgggVCVvZreT/Hlltr+4naHukr9mlChOSla2qjfrcW8QmPog+bImSoORh0ewgiglR8YJueVW4iKVX0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=on2xNMvUL3btXyu4gzxA1SFp9iZnnTW9dw7hBbw2gxQ=;
 b=frTiESgU4/NvaQh0pdNX00MZyTLkHy9Eh5swt/vqVQVqp9BvwESGC4jw9La6cAMmKHMzVDiJT60HFE9w+QOh2LV8dgm4WOex9l6jouWh+X1KQHVkELy/O5GyU/0Ggq6gyo+5U3TbEhIE9eDlmTCMTomGrP9tiyz4U5Lp0AdyXvc6zLt+tzX8Cm9bmKG0KybZnPr15w3t2XOahP9FuN76R81Z3IzGuL5WnH2uvKgbX52K21dYQQP6F4/+6J3yNVX1v8HkS8U3AI6KpI+AevXDaQ4hIb5Iq4sf27i6WEurbuiFLdnCYbdaKC7A3OvQaWuQRnbOZRGlUGhd2btQoBOwxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by MN0PR11MB6085.namprd11.prod.outlook.com (2603:10b6:208:3cf::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.21; Mon, 27 Jan
 2025 13:24:27 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%5]) with mapi id 15.20.8377.021; Mon, 27 Jan 2025
 13:24:26 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <87zfjca2jg.fsf@intel.com>
References: <20250117220747.87927-1-gustavo.sousa@intel.com>
 <20250117220747.87927-5-gustavo.sousa@intel.com> <87zfjca2jg.fsf@intel.com>
Subject: Re: [PATCH 4/4] drm/i915/dmc_wl: Enable the debugfs only with
 enable_dmc_wl_debugfs=1
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Mon, 27 Jan 2025 10:24:22 -0300
Message-ID: <173798426246.2736.2009100469112133541@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR03CA0180.namprd03.prod.outlook.com
 (2603:10b6:303:8d::35) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|MN0PR11MB6085:EE_
X-MS-Office365-Filtering-Correlation-Id: c5071939-fb45-49ef-6420-08dd3ed5ebf3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NVpCdCt5ekxoTTNHN0pBNWZmODErRWQ2WmdWZDJUUXJQSHErM3IzdlJmZ21U?=
 =?utf-8?B?bDlkTGFiOHA0Q0xzbUVLZVVsM3pwWE8rSFIrRXA3K25MRUdpeERYRys0QWNP?=
 =?utf-8?B?VG5HZUVKaXlQZCtDRDNBU1Y5Z1BXR1U5OHFrLzJxcVhDNTBPV3I5MG56OTB0?=
 =?utf-8?B?dDgwSHZFWEZYQUZaWTRiaWpucWxRRWpyOFNQeG1DQnR0aGJlTkJVdG8yOS9E?=
 =?utf-8?B?YlI1MEJrK1cramkrNzRNSnRwOHVLcFF4dStKQ1gvNk9udEVNclFFQnBSbDFs?=
 =?utf-8?B?QlN2YjhJd3BQSmtoKy9IRzhEZ2R3YmZxNUJBVW9yOEdKR214NGptUVFIY01Z?=
 =?utf-8?B?Mk94TjhXV1NkbnN1NTlGK0tCd1ZXbGcxbEZ2WEZYMHpxNjBuL2IxWFdsSGs3?=
 =?utf-8?B?UVFZUXozYzlrS3BXcncvYUdMWjJHMmFldHhJMHVPcDFMY3JzN1Nhc2FnV2N4?=
 =?utf-8?B?RjQwczQrWnl1VGRqLzVHcVhNdS8yNXFvMkhkMFFzRlEwWVJPdTBrb005cUMw?=
 =?utf-8?B?NUtMcngwZVRRVXllNmxObTBSYVI1c2FTL0plcGlyUVRlalIwSEZyTHQvSHRZ?=
 =?utf-8?B?N282bkRCMk52YzlPb0RzTFJaU3pGcVg5Umw0SHR1L1RJWUNRZHhDNlhMbE5S?=
 =?utf-8?B?bUV3VVhBWmNZUlprVmdlWmZNV0FBM3UxR0JGMHhwR0xDRS9UNk9abU5YVkVu?=
 =?utf-8?B?V3RrejN3L1Z2aWY0MkZLcktLSDh4Z0pCSnVpTHc1cElSbE0vY2EvS1NINUcy?=
 =?utf-8?B?c2VWVERMZG1nZmZjbFZwMTU5L0NaY1cwNkNhUTJKMXpETkgzM3NJbnlUaXlR?=
 =?utf-8?B?YzhTbXRYYWhrREZrdUR6eEdpMy8xMmVjWitqditYbzEwVUgzOHNYbHlLVU8v?=
 =?utf-8?B?NVNTc1hmT0NVbUV2bGkwTEhiL2RvL2k0WnNXZkdQRFNwMHVmNS9makc4OS9O?=
 =?utf-8?B?dHdEZll5U040Tkd5QlhyVUI4ajR4cWNWNXNVQzhJZTMvMHhDcTR6UVBJRnNk?=
 =?utf-8?B?c1dCRDhYT3pIb3llV01OeFNiRVBCbjFDUUlJcUZMTytqeEhiOW1zWmhYdjlK?=
 =?utf-8?B?MU4wOEtyQ1ZJd3FhQlQwUE0vZ1BraUlwSTZ1UTdGNnRRZEd5cU01ZzFPektS?=
 =?utf-8?B?bVN5TFIxWXVnYzZGMVVJeGFyVU9lZzhocVNUN0dCVVhRakhUdzZYVHI4OVBP?=
 =?utf-8?B?RStaQ2VLMy9RR1prb3YvM0xNcVVJS2NnRCtvLzErSWNzMEx5OGxudVR0RkRT?=
 =?utf-8?B?NkRZcHNFTFMvM1dySk1ib3dSWG9HOW1kS1ZOUzdkSnUvRm41VTdYbDRBU0Z1?=
 =?utf-8?B?VzZuaE52Z21qcThxSlh6eUxVZlArcHlNMDZlUm82bFlZYkRqalpiUmd2Qysv?=
 =?utf-8?B?aHZKODFvT21ZVFVKUTRMMXVYSXA0UHZKTVhWanZtYVBhdEg3d0RNVlRuRlJQ?=
 =?utf-8?B?U1dWWWplMkVzY1VaSHU4MkFCOVg3aW9qbFJwTTdVWFhYS0lRZm1PTCtyTngv?=
 =?utf-8?B?MzFnRktjNzd6cWY0U0pEOFdwWnBwNUVUZzA5cVpDdEEvZUUyTThYSUlxTFpG?=
 =?utf-8?B?KzNzL05FK1EvajkxenNMRXNaRzhNOUkrQkFiYi9XL2thNzh2QnhTdS9qaWFO?=
 =?utf-8?B?NlplUER2QURjVmhSUmswWjJUaEQwQnZ1dDZyMlNFNHFta3VpcmQzcEovZEVk?=
 =?utf-8?B?RkpCdDRLT1VWUERlTmR0QXpYQ1pTOW0rblgvTUMydkExaTJISmdMT1h5Mjlu?=
 =?utf-8?B?SUpjOTJleFgwV1Y5Z3pscExVTXRjMGVmS2tPSCtMcFptOWVlRHJyWXNrTVgw?=
 =?utf-8?B?NmcveVlhcWo2MkgvTUdIdFd4NTBmcm90OXQ1WUEwZ3BuRFNXQ2lTVnltclIz?=
 =?utf-8?Q?WeucIs5UGkDbE?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cU5IQUFnTTZNZ25sUnpsbG5rOEdrQmVYM3JXTU84N29HZTZrYm9PYS9wNDgy?=
 =?utf-8?B?T0cvcE9hbGpEZ0ZXNHhmbEJ4blBxWjBrbFl3bVBtOHJrdHZWQVFJWW5iLzV1?=
 =?utf-8?B?OUFXdDZMUVpSakdLSFBOVXF1SWJuR3BFVk1xR1NjUGZYT3F0SjFQTVpnMGMz?=
 =?utf-8?B?TndpcllOQkR6OHc0MkN3dUxnd1lDR2ZWajI0aHVZay9uSnJacnRidmtScWhQ?=
 =?utf-8?B?VW9RcU93QUVqSHpGc1hVN2g0SDd4NGpxK3hsZ3FsY0VhbnVHU3RNU2xlaDJt?=
 =?utf-8?B?K0lEOXdoWDhlK3ZycHh3YVBDZ0MzbWkzbHZCQWNoelo3dVppOFkxTzNoWWgw?=
 =?utf-8?B?RHNHTUYwRlBoOERsdU11bDZpTm51TjQ3ak1aZ2VNcGdmU1hKa1ZZeVdDNHor?=
 =?utf-8?B?Q0ZsejV3ZUU1S0NTRW5QK202RHNHQll5bSthcFo3LzBvWHRoTEpkVy9kaW5M?=
 =?utf-8?B?aEtvR0d6d1h0d0lMTEMxaldlVExBOUp4dzFFVityM1RnZzJmR0o0Y09oKy85?=
 =?utf-8?B?S0xLdEEzb3dsUkoxK25Oa09EWi9jUWZmcTkybyt6bTltY0R6TWdUN20wV3Ur?=
 =?utf-8?B?UnNKd0FVd3U4ZHNnSnlsdjZMWHRzTTY3Q0tycHpWSytLNWN3S3RvT2w2TFYz?=
 =?utf-8?B?WFd6bGVpeVFoTHVJK0NRLzhhbCtQMC9EMEI1TWRFYnZKUUhrNGJmZmp0bk53?=
 =?utf-8?B?ZEZOYWNsTnhBYVFRdGYyMENOWU9Tbk5uNWxiNnhDczY2cUxReTN5R3JiTUdy?=
 =?utf-8?B?UmhoSzNxNEkrZUE2SjhWTWtkSWN2V3diYVkyZ1c3Vmg5cUZiRTd1VlNMbkh4?=
 =?utf-8?B?bnp2N1FTblh2TzV2OTVZSlZCbzFQQ2FLOThkdk9LbjR4V28zeVNJWSs2T1U0?=
 =?utf-8?B?aS9vY3ZRNnVnenROckhGK21LSkN5SnZIR0NvTTFGMUZTSFNIUC9UeURkK1hj?=
 =?utf-8?B?dkUzOW9DNytFUGVkR3VJcXBDRXYvTlkyVDRtMjdJZnA0L0V6Sk1WMitKUmQw?=
 =?utf-8?B?b29yYlYwOExhZnp0d1NWeVd4ZnJGeStUWnZFMEdrOXNKbFkyTzl0TWVFK0pV?=
 =?utf-8?B?a1ZDRS90MnJvdVczNHc4dEJkeEVRQ2R1Z29mZTB1aXErT2VXaGZkUHAvRkFR?=
 =?utf-8?B?UktKTnc1SEZHR2VDN3k4SVhuNkJzZ3ZtcUd4dEVTOFZRS0R1cHMyOWN4NE1u?=
 =?utf-8?B?VU9CY3BGM082VytXZXp1bGFVOWVLRDFpYkJnSFhEWTRLLytRZ3JGdWRTeXcv?=
 =?utf-8?B?a0lTd2F0bkdpYUlwWGZ1eHo5cGw2cXU1SXBReXR4bUpCNWFCOHoxeEZSRGhG?=
 =?utf-8?B?VkRDOHU3ZzVsSE11T3NDMGJzTVZvb0NaN01jWk9VVkNvOVhwRXM3L0djVnZC?=
 =?utf-8?B?VjJBQklweEYxUjV5aHBaMG15R3hDT3NJR0ZRS1FwbE16SENIZUFNL3QwZ1ZB?=
 =?utf-8?B?bEVtU3FhemZQMFBjTFZjd2dtTUV2UThXeDhJeFE0TXNKb1B3SU9pREFuanhY?=
 =?utf-8?B?dWh3Y1NDTzBSNHNjOExnRnpPTlhRQXhMY2xiYmhIbHpHUEg5WU50dnhIdUUv?=
 =?utf-8?B?Qzk3UVhtS0cxb09Rb3hnWnQ5dGRjdVNmVDZsUWZKNkpxc0FJaTRmMjYybUxk?=
 =?utf-8?B?SG9lUnd3T1JWQ2ZSWXdKV241dG02ZXBibXZCay9qRXI1cE83c1lHTStKU3NT?=
 =?utf-8?B?M005Vyt2RnBybXlvU0Erc2lxclBVMWN6aS9ZaFp5LzJaRnJjRUczMHlDK0or?=
 =?utf-8?B?elFBY3cwOFNBVXZGbUFqZUZQNkNYbm92QUpVZUdaMVBNTFVHUUtUaDNWdXNQ?=
 =?utf-8?B?RGJHek12TnkyVDlEbGhoVjdXQkZHSzB1WmlBSXUwTk4rOEFlQkJHMm91Zk5V?=
 =?utf-8?B?ajR4Szl0Nms0SGhrc05CRVhoM3JsN2dXL1BjeHI1YVdWQldaVkxPYXlQVGp5?=
 =?utf-8?B?NzUyRnJteDBLME5rSFc4TnMyRzRvb05lOUdScmRoQlA1YlI3ay9UNWkxZkda?=
 =?utf-8?B?REVTcHRiWWFpRWJycXZGQ0JYLzlWR1o2QWtDTGZ0YzRwZFNPV2JtaHdmMlpO?=
 =?utf-8?B?K0VuQVhpU0xaQ0tOTzh2TjZYcGNQWkFPeW1DSFdEZUpFQ2hHdXU5dDJ2Q2Vi?=
 =?utf-8?B?aDVBbEY4VEdzbDNneUxxSkl4REVhRGtSUWJzdFJTSjlKdWZqa09KNkdTTFRL?=
 =?utf-8?B?Qmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c5071939-fb45-49ef-6420-08dd3ed5ebf3
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jan 2025 13:24:26.6144 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dTc2sWdNPmkJCs5Qj6G1rgxB1hyUdsVzC+N0Neb+foISo8i0EW2jZg063f4E00taYtJIUBMLGpITM9y0dTw5sA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6085
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

Quoting Jani Nikula (2025-01-27 09:01:39-03:00)
>On Fri, 17 Jan 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> We use a spinlock to protect DMC wakelock debugfs data, since it is also
>> accessed by the core DMC wakelock logic. Taking the spinlock when the
>> debugfs is not in use introduces a small but unnecessary penalty.
>>
>> Since the debugfs functionality is only expected to be used for, uh,
>> debugging sessions, let's protect it behind a module parameter
>> enable_dmc_wl_debugfs. That way, we only take the lock if the feature
>> was enabled in the first place.
>
>If the debug struct were an opaque pointer, you could check for that
>being !=3D NULL. Register the debugfs always, and have that initialize
>everything as needed?

Hm... I'm failing to see how this would keep us from having to take the
spinlock once we have the pointer being non-NULL.

The idea of the parameter is to protect us from taking the spinlock when
we are not debugging DMC wakelock offsets.

--
Gustavo Sousa

>
>BR,
>Jani.
>
>>
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  .../gpu/drm/i915/display/intel_display_params.c  |  5 +++++
>>  .../gpu/drm/i915/display/intel_display_params.h  |  1 +
>>  .../gpu/drm/i915/display/intel_dmc_wl_debugfs.c  | 16 +++++++++++++++-
>>  3 files changed, 21 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drive=
rs/gpu/drm/i915/display/intel_display_params.c
>> index c4f1ab43fc0c..bc36d1b0ef87 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_params.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_params.c
>> @@ -133,6 +133,11 @@ intel_display_param_named_unsafe(enable_dmc_wl, int=
, 0400,
>>          "(-1=3Duse per-chip default, 0=3Ddisabled, 1=3Denabled, 2=3Dmat=
ch any register, 3=3Dalways locked) "
>>          "Default: -1");
>> =20
>> +intel_display_param_named_unsafe(enable_dmc_wl_debugfs, bool, 0400,
>> +        "Enable DMC wakelock debugfs"
>> +        "(0=3Ddisabled, 1=3Denabled) "
>> +        "Default: 0");
>> +
>>  __maybe_unused
>>  static void _param_print_bool(struct drm_printer *p, const char *driver=
_name,
>>                                const char *name, bool val)
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/drive=
rs/gpu/drm/i915/display/intel_display_params.h
>> index 5317138e6044..cb7dc1bc6846 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_params.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_params.h
>> @@ -48,6 +48,7 @@ struct drm_printer;
>>          param(bool, psr_safest_params, false, 0400) \
>>          param(bool, enable_psr2_sel_fetch, true, 0400) \
>>          param(int, enable_dmc_wl, -1, 0400) \
>> +        param(bool, enable_dmc_wl_debugfs, false, 0400) \
>> =20
>>  #define MEMBER(T, member, ...) T member;
>>  struct intel_display_params {
>> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.c b/drive=
rs/gpu/drm/i915/display/intel_dmc_wl_debugfs.c
>> index 1493d296ac98..f4e4c7a5a730 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.c
>> @@ -37,6 +37,9 @@
>>   * which exports a buffer of untracked register offsets and also allows=
 extra
>>   * register offsets to be tracked by the driver.
>>   *
>> + * The debugfs directory is only exported if the module parameter
>> + * enable_dmc_wl_debugfs=3D1 is passed.
>> + *
>>   * Untracked offsets
>>   * -----------------
>>   *
>> @@ -411,6 +414,9 @@ void intel_dmc_wl_debugfs_register(struct intel_disp=
lay *display)
>>  {
>>          struct dentry *dir;
>> =20
>> +        if (!display->params.enable_dmc_wl_debugfs)
>> +                return;
>> +
>>          if (!HAS_DMC_WAKELOCK(display))
>>                  return;
>> =20
>> @@ -453,6 +459,9 @@ void intel_dmc_wl_debugfs_log_untracked(struct intel=
_display *display, u32 offse
>>          struct intel_dmc_wl_dbg *dbg =3D &display->wl.dbg;
>>          unsigned long flags;
>> =20
>> +        if (!display->params.enable_dmc_wl_debugfs)
>> +                return;
>> +
>>          spin_lock_irqsave(&dbg->lock, flags);
>> =20
>>          if (!dbg->untracked.size)
>> @@ -479,9 +488,14 @@ void intel_dmc_wl_debugfs_log_untracked(struct inte=
l_display *display, u32 offse
>>  bool intel_dmc_wl_debugfs_offset_in_extra_ranges(struct intel_display *=
display, u32 offset)
>>  {
>>          struct intel_dmc_wl_dbg *dbg =3D &display->wl.dbg;
>> -        bool ret =3D false;
>> +        bool ret;
>>          unsigned long flags;
>> =20
>> +        if (!display->params.enable_dmc_wl_debugfs)
>> +                return false;
>> +
>> +        ret =3D false;
>> +
>>          spin_lock_irqsave(&dbg->lock, flags);
>> =20
>>          if (!dbg->extra_ranges)
>
>--=20
>Jani Nikula, Intel
