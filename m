Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id CSBtHHiCJmrxXgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 10:51:04 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3467654375
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 10:51:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=XAyvrKET;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54BEA10EF95;
	Mon,  8 Jun 2026 08:51:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EB2E10EFA1;
 Mon,  8 Jun 2026 08:51:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780908660; x=1812444660;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=RIRzaX99jtFhcXSugtDiyaLK/cMonp9aPcU9dxl7jFk=;
 b=XAyvrKETBryL7zFiuoOKWG/K8hnTbEdgC4BB9O+ZWrQTW1GUdDnPausd
 0KfzlLCoi7u82mnFDwz4Y2jXhudHmHsIDrt+7IoTgbxHYbalJfpBbX8SI
 8a5q9VidCl3N7j9TtSekDWH1ZoxpgWgvVWHPDH6fkEzl6pJIMb0ERgZWe
 0Jk4mVc5VwojCLXUt22Sf6g3SOB/L/F82BGRT+7MVPfmj8np9uVKL+p+M
 j8jBV3r9q2S1nGfnqjjkkjy+mvxERtlTgwqlSFZAAm1q0sYM4eE7CnzTc
 8k9MNqxsmsdsrC8VySJQ7XHYb4EThIcQosreTDKvivk3SZ2/aPG+3Niku Q==;
X-CSE-ConnectionGUID: 0oXPhhmhTyqps+mzBf8YrQ==
X-CSE-MsgGUID: TcMOkgyGSiK9KS2SDggzWg==
X-IronPort-AV: E=McAfee;i="6800,10657,11810"; a="80667942"
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="80667942"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 01:51:00 -0700
X-CSE-ConnectionGUID: QO4MzDtbRSme1ez5FgvNAg==
X-CSE-MsgGUID: iiYC98mBRluiE6YrNV/Zyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="241045657"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 01:51:00 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 8 Jun 2026 01:50:59 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 8 Jun 2026 01:50:59 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.2) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 8 Jun 2026 01:50:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Qx6Ihmu7FEGn5OyTC+XP21BXFpuBPIw1nQ6Ka4Gtb4jlqFsvkyaCvbtTL4lnu+C0WnPLQG7DgkjRuaVttumr7T09WLv8QeMP6sMzKMuJbtoHHJE1twqps/nIcXZNsDobgp02Vh8Oy2zytTf0nLG9sZGm7Hssy7v1RFEJgYvEp6kFpyhHPtRuRXpYZVT0idmoY6kQJa/KdkbovK/YTAf+lv9FDkHfvt6wkpzwXWVLbVY4G8nZTSRVPdS3lwqQs+w0z0nAE6laO+0O3s4XELFE2L8NgkQvMt4g3WkqGyNalERzofW5m0+bk1m7enAM9sY1ffU35URFXqd0bsSqPNwD3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZPok8zbgxGoozcnSbWM81cshP4Lu33f4BoOGP/KvN+Q=;
 b=RZ8Fx5GEiz1q73K5/V+8zkpGRK2vfmhTQaYNOXZT/w4A+dWyHSn+a2cwU+svtP+TOselcF3sdfnjMw0YhAvXxioglArVLxBi6V2uWcpq65LUm0eZe9NIxs51kWbeaGgals7FtYUthvBTgMZzvDdd427EHTW+UzXEnMFGje4tN9idkoZq5ulQ83KBcL0UoA9uCf9Ew0sTOU83tjh++D1gAZIQU5bT+JdVh48KnLm9qSiUVN8kJ/PQBQb+f4Qoo/8ELaCwy88MlHgGVKZufzfsrVZZXcV1WRKQI6Q50cNmTPUia6P1SUGPsNFzRIR/em1LmXsvSpl+oWyKQrYHngx3ag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by IA1PR11MB7811.namprd11.prod.outlook.com (2603:10b6:208:3f9::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.12; Mon, 8 Jun 2026
 08:50:56 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b%3]) with mapi id 15.21.0092.011; Mon, 8 Jun 2026
 08:50:56 +0000
Message-ID: <37906506-6cfa-4e35-9243-5d268d777049@intel.com>
Date: Mon, 8 Jun 2026 14:20:49 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 7/8] drm/i915/color: deduplicate loops in
 xelpd_program_plane_pre_csc_lut()
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
References: <cover.1780499355.git.jani.nikula@intel.com>
 <b943121a358dab0b04c9766baba8295f12ae53fc.1780499355.git.jani.nikula@intel.com>
Content-Language: en-GB
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <b943121a358dab0b04c9766baba8295f12ae53fc.1780499355.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0352.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:219::16) To SJ1PR11MB6129.namprd11.prod.outlook.com
 (2603:10b6:a03:488::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PR11MB6129:EE_|IA1PR11MB7811:EE_
X-MS-Office365-Filtering-Correlation-Id: 68bd0572-f296-4f5c-986e-08dec53b0dba
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|56012099006|4143699003|22082099003|18002099003|11063799006;
X-Microsoft-Antispam-Message-Info: 6okT68jBUqd+yP2wW/3UIqkRIWCuxi5ec5aNTyRva7AiagSXzJPT4UtUDn+H4bc8zCE5FXuQIRTqKGJ2hsj6QR9FolW6GMbRhy5iXSrbAvNK8KHc3wV3FMUd/Eryj6xFeZoh9Xkd8xWQUs8EsuQHnUarlH6X3NssYELGzBRVul8tUJvdccI3aLdvx+RvZ4kxtZa+KVZv/HSFwheSXUiL1lrntBnKdEkwngXHYCvMldyzj5yefil2xoqsd6NkokTbDIAZPr2DMDVtaKmwB5mTf7BKLtcL203RDz2C8uA/cbibpU5Kahz+gC7tCxdabfEzaVC+fc3N1zNQrOD6SSEEekMLR0WDUDdghk7gYUxNhZzo5XKwugTbdEYg1a7vySqUr5QlCUhu6HcMMSsUNiGAGOofvgLuTMFXdKYf7y4uxNtjfZEzQ/kbbI5tICwDw5fnkRqunob80k6UALJRku35tfiQOIvTBnjmS+Ctqz6S3uvrnjC6R9bT/qYJaVqLS44ZZ7zIeGS82hRKMbH20UgyBOOtrEGZKW6JDi1Dnb7hqH3VHmVa/vV891SnentxF2HSYKWG1MXyRFoXRXYOaxY8DcixF0kbxBjGzvGhuO0oMH68cPxrVPRgQuJavYHsWmoWBqctCBodjAtCiLmUI9Q0jz89X2Eh7+2PF38U7xiJGAYU+YlrxQCscJvM0bdrqqgm
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(56012099006)(4143699003)(22082099003)(18002099003)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RGkwY2dnZVBtTlhqQ3FNcURhcThKc00vZjdPRnN0amlWYTFPVEZtMXRNZG51?=
 =?utf-8?B?TnlEMkpEZnRTdUdNSklWQnAwR3o5VlVNdGZ2aVNzd1FUTHRHVldCTjhxSm93?=
 =?utf-8?B?eWFCdmU4YTJrZ1ZPVWZSSXRYdUMrbDU2QVlwZnRMV3FXRFJ2dDRMaGxFdVp0?=
 =?utf-8?B?aVFJL2ZHVXJ2SmVFb3JxMXFNWXFHZndNaGlYUVZmby9iSXJCM3pDaHNCdnJo?=
 =?utf-8?B?VHpUaVlDMEM3dHJyZ3NGK2ZlS25STVNhd0h1K0RpM2Jmd28yNFNvdDFxT3lp?=
 =?utf-8?B?SFZ1VC9ZVktLemRIUWN2b2F1bWYzQktBT2JwTFpteVJxZVQ5Q0tBOFNTMUN1?=
 =?utf-8?B?eC8xZ1BzaHNURlRhYmtoSzJkNmQweU1zMzRBNFdWZ0w5QjFJZ080OEI4a2Yx?=
 =?utf-8?B?empsZXhxcmJXaUlvVzlYa2ZKeGZOMjlCRERocU81dytKVkdJT0k2elJQSmRk?=
 =?utf-8?B?RmllcUhpbFR5NTJuemU1bENrN01UQ21vSE9lVk8wZnpzSm1xU3c4eTFRT0lj?=
 =?utf-8?B?Zmp5OHQrQysvREV4Mmdnd2NtSmF0dE1UdGQ4THRvSHBLaEQzaEc5ak14ZjdG?=
 =?utf-8?B?ZytRWmJNZHdQSWtmeHRwSWtVbk5HNXo0VG51TnZDVHVEVGJvYmsvREYxQzFj?=
 =?utf-8?B?MlhCNHlDSS91YXdCb2Y1ME0rOWFOT2w4RmU5NXhQMVF1ckpJbDNPRUVsdHYz?=
 =?utf-8?B?SUkzWHBIdUdjTUdKMkhjVzNXbU5mK0RqSjArS051M2dFbkllTkRSU0g5Nm9i?=
 =?utf-8?B?bWJ0WldsYzhKMmhwUkd3WUh1U0E1MWcxQ1NmVUQ2Ny9tYTNUck9tdmpHMk9T?=
 =?utf-8?B?Z3E2U3J0Q1BLNzNVRmVyS242NXlzS3NqeW5nUFVzL3FZaXltSEV2QVNzVVlz?=
 =?utf-8?B?dmNOM3hOK0N6blcySm04RkM5R2tMOFA3UHZvMDRRWFZ0NTExMWtTeXkxbWx4?=
 =?utf-8?B?NklQMHh3d1B3aFJ5SCtTNjBJRXdKYVhoWnRmOHl6TFRWL1pjVmozZDhySk9M?=
 =?utf-8?B?TUZPT095T0dtZkZ1aGpIK3M2WTFhK2prTjdOdDRsVWJqWDNJT3IycVNVL3NC?=
 =?utf-8?B?am10ME1BbTZ2UTJMTjhUbjJTMnRkNVhCeDRVMHBzb0kvUXBmejlvQm1RblI2?=
 =?utf-8?B?NFZtaW1mZjREbGpZdFJ4YkNRczNmMWU1RGlLUTlSOU8vZVZDQi9GVUE2Nk8y?=
 =?utf-8?B?azdNSVdzYjJHOVEyWFFZOEVyMmt4OFoyaE93emlHVzZuL3N3SW5HcWdOOVUx?=
 =?utf-8?B?eDhtNU9JRWN1Y1BPU1FtOTdQSE5rYktGZnVSRlRDMVN3MFdPNVhaTmRhSHhS?=
 =?utf-8?B?VnJMT0JVeUZqa3ppcUVDTjIrRWlDK0NNYXJ3TXhYZjhWTDRtNGloMWJzRzF0?=
 =?utf-8?B?VjZHSzRRdjNyZ20vMWFBQVZqempvbUNJb2Z0aCsrUUdqdjRldnQ5YVU0U1oy?=
 =?utf-8?B?YTErRE5oQlJXb0FLUVhVdTRTTWcvZXphSitQaDR5TGR5RE9wbTdZSmdqeUNx?=
 =?utf-8?B?RmMrbEFCalBBR0ZpRXAyYktzVjFhTjBGS204YTdzcUpqR2FkTGhoU0RaeDYr?=
 =?utf-8?B?dlREQzlSejl1THYyUXlpWkgwaDR3TW5sRytxc2RxQnNsdXZwemR5Yk44RFh6?=
 =?utf-8?B?UVpROCtBSS9IT1M0U2ZFZWNQdDEwNXdQayt5V3hrYUUxT29FRmN5N3pIeU14?=
 =?utf-8?B?a2F6dDB4dFkwYk8yMVNOOUE4c0dURTZyWTV3RGRvVnU4YWllaE9IWjVhUTQ1?=
 =?utf-8?B?U29hVEJNaTNNY1RreEdDZUxnQzVLNzJycXYycHptT1p1SWNyNURPSzM4OUVH?=
 =?utf-8?B?MGZLaVpnWGFZVzZRSWVBaldTQ3ovVms0SnhEb2hqRGRLdjBMbzEzUEpUenNp?=
 =?utf-8?B?WEkwamVHM1FFSUFxWU41M0VTNkNnVVZ6NXhNWVR3S3A0bnExK0U1NkJYQURG?=
 =?utf-8?B?eXNBNWlPQWYyb1dwV1JGaWRjcEJOU1BySEdXVEVZamVuZHlwRVZvRVlGaDZX?=
 =?utf-8?B?RGxBbHBpc1o2QzA5QUx5RDB4b2ZlVHVaT3FNempQbFRELy9NSHBnZEpkd0tm?=
 =?utf-8?B?YXl0VHZRUS85L2NYK3M2QVlGS09nbHJzT3M2WjE4VW5wM3FlZWZsQW90OXZD?=
 =?utf-8?B?VU03R2Y3MTBybUYzYTJzSXY2SGR0NnVIaHVNWTRDbFEzNWo3ZzBORjVvSnl6?=
 =?utf-8?B?OXlPMGlLdmNseDZzWktmcjJvSGkrNEFKeXBacVI1Tyt4ZjUvamhzSVhRKzFz?=
 =?utf-8?B?S3ZjbEhKQmFNL1Rnbnd5b3ZwT3IwekdWWjZWSTY4U3JEWFlMV2YzRjVnQjR2?=
 =?utf-8?B?aUFZRWVlSzRiUW5HL0hXakZGdWkwNW1iQUpiam5TVFJSM1F2MmxiUUNaRmRR?=
 =?utf-8?Q?qS2tNeu9vdhjG2ec=3D?=
X-Exchange-RoutingPolicyChecked: lvt7Qmbij/vV5A/9IXSR7aci6rVwThXrU5VYEsIXv2dKO+X+3PIQBrAk2R0ehS7uD0jG33nQMZ0yigOK3ZN2CgsWrhzHneqCzwfQ4OtVRGi8bu4STMA40L342omtHDD+A4LcuCtuQLlmEatE3IN2Mx4+lgVKrJZHu878IQtbnnHneNqLvWMfk3rE/zFyyeLc4wQyvc4vFU9LbeNUR5L7SdW45j4elEwXw6Evzg0W+RJ2hkbPSeY822D98wkp0YKQKhNep4V26nGpI/rOR+hu7DOCl0hLudcZmfQlOSRm/cxuYNrKSnaOQqcsZnyfwjrGpVFIjkytbfwVKR17zP0D+A==
X-MS-Exchange-CrossTenant-Network-Message-Id: 68bd0572-f296-4f5c-986e-08dec53b0dba
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jun 2026 08:50:56.1317 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GhWU9N8PRUOBZnvSOt8b1I7FMNwAaxTiizWSSKbNhZlBroZ2SFSxv6KFb5m+/HUXxmDNP/J+6U5mePuujaWAl6Sf0aN4H/kN/L+tv89sZso=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7811
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp,intel.com:mid,intel.com:dkim,intel.com:from_mime,intel.com:email];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C3467654375



On 6/3/2026 8:44 PM, Jani Nikula wrote:
> Now that the pre_csc_lut and non-pre_csc_lut paths look similar,
> deduplicate the loops and just determine the value based on pre_csc_lut
> vs. not.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> 
> ---
> 
> 'git show -w' for easy review
> ---
>   drivers/gpu/drm/i915/display/intel_color.c | 21 ++++++++-------------
>   1 file changed, 8 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index 5c09c5dd361e..9f9ba0cf58a1 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -3977,27 +3977,22 @@ xelpd_program_plane_pre_csc_lut(struct intel_dsb *dsb,
>   			   PLANE_PRE_CSC_GAMC_INDEX_ENH(pipe, plane, 0),
>   			   PLANE_PAL_PREC_AUTO_INCREMENT);
>   
> -	if (pre_csc_lut) {
> -		for (i = 0; i < lut_size + 3; i++) {
> +	for (i = 0; i < lut_size + 3; i++) {
> +		if (pre_csc_lut) {
>   			if (i < lut_size)
>   				lut_val = drm_color_lut32_extract(pre_csc_lut[i].green, 24);
>   			/* else duplicate last lut_val */
> -
> -			intel_de_write_dsb(display, dsb,
> -					   PLANE_PRE_CSC_GAMC_DATA_ENH(pipe, plane, 0),
> -					   lut_val);
> -		}
> -	} else {
> -		for (i = 0; i < lut_size + 3; i++) {
> +		} else {
>   			if (i < lut_size)
>   				lut_val = (i * ((1 << 24) - 1)) / (lut_size - 1);
>   			else
>   				lut_val = 1 << 24;
> -
> -			intel_de_write_dsb(display, dsb,
> -					   PLANE_PRE_CSC_GAMC_DATA_ENH(pipe, plane, 0),
> -					   lut_val);
>   		}
> +
> +		intel_de_write_dsb(display, dsb,
> +				   PLANE_PRE_CSC_GAMC_DATA_ENH(pipe, plane, 0),
> +				   lut_val);
> +

trailing new line.

>   	}
>   
>   	intel_de_write_dsb(display, dsb, PLANE_PRE_CSC_GAMC_INDEX_ENH(pipe, plane, 0), 0);

