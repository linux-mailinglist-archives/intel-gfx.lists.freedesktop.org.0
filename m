Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 910B3D202D6
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jan 2026 17:23:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A78510E616;
	Wed, 14 Jan 2026 16:22:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J43yqqxY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E8C810E614;
 Wed, 14 Jan 2026 16:22:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768407778; x=1799943778;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=Ced5YM1SyCoSW9BwLvQLlCLqTfavwZResOyehFiIpTE=;
 b=J43yqqxYj5vhHJvU9iAEp/fZbUNEF97L8gGr3wVN0rD5SdPEBu66Ohxe
 F7Jng9QqTsMYDCol6zk26i/py0inJvjdbyxHLHCbOMsi+uMFb7SFV0qsd
 3cFayjpWZTbX7Cleda8n/6Q80Ns6Gwfzyr6234Zte/GOgaI36LcOgIKf7
 rv1n1ZJU+Cdnp9rrvZZqpDEqgLpyEVq7GSOpPFz6khcXgpAgnLQ4Cz++T
 jMi0n5bYYzSQ2RkpFBkQsb84MUQp0UM9JY+zKEHbnYvIPFA4b/kR32abM
 igHy0plrcW/mUvl7vUQvHxGefktmIYViPQfr9xk2DIebYf90XUABHYZy+ Q==;
X-CSE-ConnectionGUID: 9nU7GO2lT0WD6dBjb2v2lg==
X-CSE-MsgGUID: UpdjV1xcQUSnUVbjOL/w/w==
X-IronPort-AV: E=McAfee;i="6800,10657,11671"; a="73551547"
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; d="scan'208";a="73551547"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 08:22:57 -0800
X-CSE-ConnectionGUID: ajvNDc4nQxKAt/MSMu4KMQ==
X-CSE-MsgGUID: /W718j8rQUerAjNZkwYFdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; d="scan'208";a="204611094"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 08:22:56 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 14 Jan 2026 08:22:56 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 14 Jan 2026 08:22:56 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.31) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 14 Jan 2026 08:22:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=avXDSm3nf8f5G9ueF5ebaXHtFktrF2Dh1h86Z0HTLWiTzjLsVpPFYuQxoKDFnfqLYnnRVO2d0TX4GqgvNC6KIdObyjLfV9ZztrzNCn15bZztNM/rF8I2674Msj1PgKaZkKc+cX5NfpK26y8khg31JGHX8Ker3Ho3IW17oREoE0XcZcjjfxJxS3bYVYWigAnQQw92SM0ReN0ICevNbR/z2Ty4bcoNw/EU4+sfezyMx8FoWoffSOecdO8K9E0jHNpiSto8GZLJ6Wcsj5UYaS/u8I9eF3yt17yRVCaEENToSjH1qzUVzWaDCod/49yC3BaqpW1ozHhUxzHKw7R9kSvPaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5qOFmeqWVQ4pkwGWuDVmjx9gcXUl4quhcXwGsOP68bY=;
 b=X2bNt5jngB45nArsrl6UiMmj5PoiOA2QQ762r5oCABCyD0caTtOeZqsxGigMv7iFzY6Jc5oxJot0DUmMAcOrAwQArDxpbnJ/Z2sS88b2HJWHVjXtaEnqOs0Gy9kiagubQD3Xu9qiHMprG2/en/rQLpg4Ly4BI/Y63L7hJYax+Ps4HESux0EOOvwj0mh0Cn3mZQ4f36NKnP54n3rRNtSTxi4qZBSP0h6b1FKXgpntne8et3RUGaktyDCfg9AuAIMRyFIqKvDCmUo2C6u9OcCS91B0o5A/SmzIs5CyNWf5w9+Pe0NqgPTXfRx4/2nqlgakMg3TiWp8Aj3CnujywwpJJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS0PR11MB8017.namprd11.prod.outlook.com (2603:10b6:8:115::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.9; Wed, 14 Jan
 2026 16:22:53 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9520.003; Wed, 14 Jan 2026
 16:22:53 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, Luca Coelho
 <luciano.coelho@intel.com>, =?UTF-8?q?Jouni=20H=C3=B6gander?=
 <jouni.hogander@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>
Subject: [PATCH 00/15] drm/i915/dp: Clean up link BW/DSC slice config
 computation (DSC slice)
Date: Wed, 14 Jan 2026 18:22:17 +0200
Message-ID: <20260114162232.92731-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
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
X-MS-Office365-Filtering-Correlation-Id: 9abc434e-5e05-4f83-6487-08de53892b1f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|1800799024|376014|10070799003;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?S2xmT2ZkL2tXcnpDWk55K1pXZ0I0dDNvci9KK1NMa2VQWVBFZ3Qrdmk3YWlB?=
 =?utf-8?B?b3A5aWNOeGd0TjlLNzFheSt4MW9nWFVZNEE1WW1uNXRSbkxZcEw2SisrODlD?=
 =?utf-8?B?NUpnZHpOQlVmYTNwS3ZZZTBLeXVXRXF0NDdVMUdSalpEdkJOT2dLUDF4R2d0?=
 =?utf-8?B?VWFSN00rVDM1cFZDbGFuZnU2TEdvWUJLL1k2cmJWRTBmc0FvbUZGcm91ODhu?=
 =?utf-8?B?UUVha1JoZkQxRnU4TDhmVHdYU3ZKdkhrK2sycXJTMFA0c2JPNFIwYjJlM3Bz?=
 =?utf-8?B?SVNDL1RQeDc1SEJ2WVdheWNsdkJYMEkwdm1BSHdNbnRvOEJOUktCYklmTGpk?=
 =?utf-8?B?Ujk0aGFVdGYzbjh3RnN4a2pLOGswd1ZFeVhTSExDa1NnYnFEVTE3azZOZnpw?=
 =?utf-8?B?K1JtbHU0R0RaalVuNWE3QS9pY1Bqb0UrMnQwZFlYaFZ1UTBrTlYxOHp4a0NV?=
 =?utf-8?B?ak9ISjF2VkpTK3JuNkkydVdWcWczVHVVaW84Wld0bHQyWitDN3RMbk83RWY4?=
 =?utf-8?B?OXlOUTNSOVQ1TWRCTnpWTGFGQmpjU2pTRGN5Vkw4MmdrQXU2QTZZWnVjcDVL?=
 =?utf-8?B?ek1vQXJnK2J5WVhRdG1vMU9pUTZLeTFuWE91Q2VWbkUxSHJ5QkFCYVNnZWxh?=
 =?utf-8?B?SktQYWhUcitSQUQxTTk4REJkTWI4QnBHaGN2aUtzRkRXejhxKythUzljS3Vr?=
 =?utf-8?B?OUgzVkUxZmZJRFM2bnV4cWticitVemhjZnhibXdncEMzaG5neXFaVVFqUjcw?=
 =?utf-8?B?UGVzNHdXYk1HNUFnUjJXTFBUWm1qWWpXSnBNbDJmaUZFZW1nVTd5b3JIR2VP?=
 =?utf-8?B?NFZGdUNpREZIMXVYOHZnOEE4MlBhdm4vcVBOdjFwK0NQdnpmZWg5RXZOSEpr?=
 =?utf-8?B?TitKSWZQZC9rMWNqcjVoUFV3SXlxdWtBTW01eklLWnRIRmNLK3pnN0JFSDQ0?=
 =?utf-8?B?d29LU3NjWmlMU0UxWGlwOTlHR1dJNXVHWEVuUVJnMlplZ1pDQ0g0dk5teUpL?=
 =?utf-8?B?SE9FYVduN2xOUWl0dnlLSGJVbEtPWDZaWDVwWXd1d2RMUGl3Vm4wQWlRZ0pq?=
 =?utf-8?B?ditydVVUeXA3TTZNRzRpOWJpYlJ3ZHFURllrZGdrY293czZHSTY1cVlrcms5?=
 =?utf-8?B?UVJOVVBIbTFuaFRtanE2eDFIV2pzb0ROOXkzS3NQT0VJcWNRTWVzcXVpMXFj?=
 =?utf-8?B?WVJBM3FQZnRvMWlPUmFPdDZmeXBpeHZZb0xYOFdIblh5b2xpbFRpVm1ZY1lm?=
 =?utf-8?B?b3orNHJlUDVxcHM0WmdXdjdFazlRVGRzN1pvVWNNamV1TG5lZW1PazdyUGlD?=
 =?utf-8?B?UkhNcm5YOXFCNlpxMmJib2lQR1loOTB3Qm5rR2F5bFFsS1NoV05HNDIwUWFH?=
 =?utf-8?B?c2NIRnV4SzFxbzVmclIvYjRUTnBHZTJUVUpWU1kxREEydE14TStuelJBVTBT?=
 =?utf-8?B?aEZJOHVHdjN6a0JSTGdSdjQrSnhHd0VnZDFWVmZiQlhiWU54aFh1eU5iRU1v?=
 =?utf-8?B?WmQ4WlY5dW1NWkZIVUs3YlB0bGppZGRRTlplaTVPNFZGUk5UcU0wYll6SnYy?=
 =?utf-8?B?M3ZHcWs0SFdNdkRQeXhGNFV6bHk2MkhRZkp6cno1ZWk5Y1VPdTlOSWg2S05K?=
 =?utf-8?B?TmVuM2JYVSttazNLckZGZmRoYmZxNmlBK01vVnVVZHR4aDZLNTFCekJ4Wm5U?=
 =?utf-8?B?aHgzdFpqc1BCdDFFWjhoaERiR2dPSXdpNXRqZ0g2RWszcmxuZXNEaFVNR1hQ?=
 =?utf-8?B?cWEveG1xaXA1dUNsTVBwbmNpU2F0MEZmZVA3VUc5VldOck83ODM5Q3hUak5P?=
 =?utf-8?B?RGZIQ2VMa0tYY2MxTEFhd2sva0hrSE9odjJpNnZzeldRRU9IVG43OU9GMVNj?=
 =?utf-8?B?NWhqWjFuN2dvWUZUYUlVNGR5Y2l3cFBjTjdjTHJhd0FwV082QWhJODlkbFpq?=
 =?utf-8?B?YThCbWFseW9aMnhGRmdiTkl3Q2l6Q2pXbHJJRDB4eGI3VVF1dG5iRHdNcmpn?=
 =?utf-8?B?OE1rMEpCRVV1VkZ2QTRvVk94eTZhQXBwcks0c0dMUzBmcWZOUDhSZnhpV3Z1?=
 =?utf-8?B?TGFEUmIzTWdaQXJ3NzV6TTJRMnR4NGZvc1ZUWjBOV0EwdHJNVndaSFplVWJH?=
 =?utf-8?Q?neOWp1eLHaMPljW3QU+1R4rdU?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(10070799003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S043NHBoK1lGRE9QODFMTE1qUUR5YWcyazJZZld4QTZLQ05mVVRNN3VYQW9p?=
 =?utf-8?B?M1hBcDF0Y0hVMVJzcFdlRmVyZUZMdGhCWDNJMTNtL3pwYWVuM21aWUxEaDZv?=
 =?utf-8?B?ZGE4b01xaVBGVWxQVXdJMjllbUlGcjFCZ241NmwzQ1NrcTVlazluTWkvSU1n?=
 =?utf-8?B?amN5Nk5QRURCU1F1MWljQzJNMVV5WmtLWjlVV3ZMRWVKZjFrR1FxWmQ5YjhE?=
 =?utf-8?B?c2JtazB6MitCT05RM1JPQ0pUeE83cmo3TDNGbmFXUlk4d2x3SnB4cUttRk5B?=
 =?utf-8?B?cEthSlRnYVFLVWp2ZGZJSjNlLzB2T3ZSTXJCYlUwMmx6cE5mcDltNURhczMw?=
 =?utf-8?B?SDhZM2dZajFaMXhERXRNaUJ4WWswUmpGQlhtZXg2NnVFbmVMYTZodnpEZkpZ?=
 =?utf-8?B?T3pBYWM3WnBpdW5ITHFPeitmTThMdUpzVXlMeC8zblkzcFVZOTRiSkdtOTRS?=
 =?utf-8?B?ZE53REJ5eGNWVmdjL3BvemJPU0JpN3d6emhsa3BwOE5HVlRZcVkvMkNNT05x?=
 =?utf-8?B?TVF1TWpYN1hpZDBtTUlCNXdZSVRqb0dFL0gvb25kNHNwNHJRNXdZUW9Hc1Na?=
 =?utf-8?B?czExUU1LZzBlVXdmUzQ1YlZoYTBSNG1tcHozdGZjMHFuaXlxeHRWeDhxOGJX?=
 =?utf-8?B?eXR2T1A5ck9tRnlXYjU0cmVLRzVXWkVPMDBSaXQ0RXVvTTVPY1FCejRmQndB?=
 =?utf-8?B?R0NWaTdFUTdHckFobkFDTlc1RC85WUZxaDhXZEVDeDAyVnAxSmNCalI5Y1lE?=
 =?utf-8?B?eEJtcDFPbGg4MmpoQW90WUhLbXpjR29aKy9RTXpHL01vd3hIV1RyZElhUWY5?=
 =?utf-8?B?R2N0M0lINnZFbUxHVHV1M0tiTmcrZ1hEdlp3andxQlJ2ZFFKZXNxdiszNW9G?=
 =?utf-8?B?eW1VQ2FOZit1dkwwMmZIMnFEOHYwVTFZTGxaTitEaTBaOUxYQS8xenpwQ3Iw?=
 =?utf-8?B?TUtIKzMxSHZqaXI1WGZIM2lrNStuZlFuQ2VEQlJFYkhEMmsvTFE2YiszcDdQ?=
 =?utf-8?B?NDYvY2RxcFc2K3FJd3pGanp4QzBjNXE3d0cxWldYNXU1T1BISEFlbDNQMlYz?=
 =?utf-8?B?SHcwQ1hOd0R2UXp5dDlhcGEvajA2MzhJaEdtOFg2b0NWSCtqZzl5OTIvSmgx?=
 =?utf-8?B?dFlMc0NvZGFvUlZ0Wk5IVG9neXcrWmprb2RPRW0vYlJaaFdSREEyY0hjRS93?=
 =?utf-8?B?M05ZQ0RlU0Nkbkk0ZCtjbXBrL3N0cWJxYjdUeE1mM2NIdkZod0hQK2JUS0xa?=
 =?utf-8?B?Sy9VbTFCN242QmNvbmltcWQ3ckRvM0I3czdRWGovdG5vSFlzWGlGUXd2d0Yv?=
 =?utf-8?B?MkIzdG9nWXRWNmFYU1BmRW9CeGFaeHBkbk5DVVMzRk1EVWJKVGtOanFiRTNK?=
 =?utf-8?B?SS90b2Q3cjhXWjlqM29IUVI4K21KbktxYVdsYTFzUjc2cnB4c1ZvdlB1MjJv?=
 =?utf-8?B?bjFGN3ZQSlJ5bGpjbk1iNFNuQk92RXRZNlc0M2pKRzlXZEp2NVhDVUhhbTJn?=
 =?utf-8?B?RDBKUk9MTHlEVmdhZG4yaHJGMUc1TFBsaWxZcllXWm1nRG1hNTNkcVlWWTJm?=
 =?utf-8?B?T1M3bEJkYW05NWMwQ1dkMnZsL2JhVTJxZklnRHM5RkdDWHVHY1JHOVIrTzNv?=
 =?utf-8?B?Q0hMcjZKeGd2djNuWVpGZFo3d2FzV0xjUWp4VHJrSFl5L0FSVktZQ1lIMWND?=
 =?utf-8?B?OTlWRTIwWkx5YUkvVEs4c0N0QU9HVFA3MlBiVEo2WmkwSzFRRnMwNUJuZzVF?=
 =?utf-8?B?UDNlUkZmRElKVkxTRVl5WkZoOEJLelVnOTJBb0YxU0FvNjRwamRnOHdiTFJh?=
 =?utf-8?B?S3prZmZ0cVV2YkE4NUtnVU1sMHlPVm1uamNlRjFvWFZFRVF0dVRXaVRwQU4w?=
 =?utf-8?B?b3BWSmFPOVRVeXhKb1l2NlRJZEkwLzl5L0VMRXFaSVNKTFB4TmY1bm5ZcTRN?=
 =?utf-8?B?bEdrYUxxRTl5a1JPaFd1ZUpMdXdyRjJrSVRZQ3M0YkRTWWVmbkZsMk0xL0N3?=
 =?utf-8?B?by82U3VaKzFmTTBxVTYrYmxqamRDM3VvTjF1ekhINGNlVWJNYm81a0xmdUdx?=
 =?utf-8?B?ZkVES1crdXcyK3dKWGlyUm9EcjBhTHVHZjVaZzdObDM2Z3I4c1JXZDhIYXd6?=
 =?utf-8?B?SnVOVFpQaldYd2t0V0RUbUM4V1owa2RKTXlvSGRMWkI3bDgwbHpGTDlMYi9I?=
 =?utf-8?B?QUhMZHQ2WlBkeEkzTmk1clFwcEN4VWV5MFJSY3piQlpJTlBXbHl4clovcGhz?=
 =?utf-8?B?Y3hCMEdyUmZKY1hDMTVJby8rWGhzNkJCSFhJRVFDUis3ODg4Mkx6cHdnMUJH?=
 =?utf-8?B?eU93UVNJaGU0enhidkg0c0Z5UGpKMHJHVlphZm1IMzlheklZa3ZlSmxXbFFa?=
 =?utf-8?Q?NmVzPusExANQLuwOoMSdZBaP8ryuBzH0cI2TUl43UhZIM?=
X-MS-Exchange-AntiSpam-MessageData-1: 9qQB+ixiUBB0GQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 9abc434e-5e05-4f83-6487-08de53892b1f
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jan 2026 16:22:53.3591 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zncnXHX5+eCjTAwhHyqozp1z9pE4J7u23ImIgUmyYCfEUDjfoSriKjnOJgaDkBkU9xPLRf3S0qKRIWKwSOGifw==
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

This is the third part of patchset [1] containing the refactoring
(patches 36-50) of the DSC slice config computation. The first and
second part of [1] are merged now to drm-tip, see [2] and [3].

[1] https://lore.kernel.org/all/20251127175023.1522538-1-imre.deak@intel.com
[2] https://lore.kernel.org/all/20251215192357.172201-1-imre.deak@intel.com
[3] https://lore.kernel.org/all/20251222153547.713360-1-imre.deak@intel.com

Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Luca Coelho <luciano.coelho@intel.com>
Cc: Jouni Högander <jouni.hogander@intel.com>
Cc: Vinod Govindapillai <vinod.govindapillai@intel.com>

Imre Deak (15):
  drm/i915/dsc: Track the detaild DSC slice configuration
  drm/i915/dsc: Track the DSC stream count in the DSC slice config state
  drm/i915/dsi: Move initialization of DSI DSC streams-per-pipe to
    fill_dsc()
  drm/i915/dsi: Track the detailed DSC slice configuration
  drm/i915/dp: Track the detailed DSC slice configuration
  drm/i915/dsc: Switch to using intel_dsc_line_slice_count()
  drm/i915/dp: Factor out intel_dp_dsc_min_slice_count()
  drm/i915/dp: Use int for DSC slice count variables
  drm/i915/dp: Rename test_slice_count to slices_per_line
  drm/i915/dp: Simplify the DSC slice config loop's slices-per-pipe
    iteration
  drm/i915/dsc: Add intel_dsc_get_slice_config()
  drm/i915/dsi: Use intel_dsc_get_slice_config()
  drm/i915/dp: Unify DP and eDP slice count computation
  drm/i915/dp: Add intel_dp_dsc_get_slice_config()
  drm/i915/dp: Use intel_dp_dsc_get_slice_config()

 drivers/gpu/drm/i915/display/icl_dsi.c        |   6 -
 drivers/gpu/drm/i915/display/intel_bios.c     |  27 ++-
 drivers/gpu/drm/i915/display/intel_display.c  |   2 +-
 .../drm/i915/display/intel_display_types.h    |   7 +-
 drivers/gpu/drm/i915/display/intel_dp.c       | 184 +++++++++---------
 drivers/gpu/drm/i915/display/intel_vdsc.c     |  73 ++++++-
 drivers/gpu/drm/i915/display/intel_vdsc.h     |   6 +
 7 files changed, 186 insertions(+), 119 deletions(-)

-- 
2.49.1

