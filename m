Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C043B29942
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Aug 2025 08:00:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5342610E1B9;
	Mon, 18 Aug 2025 06:00:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U3R9LKhH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A829610E1B7;
 Mon, 18 Aug 2025 06:00:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755496812; x=1787032812;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=al3sY5RHqIyMeh0cKFSH6AChF/PUaCO5VMgD4j4xfJA=;
 b=U3R9LKhHJHJC9La8irTVDxdLcNwwM/us1VP0IlLa/Q2QKCroiEKqoJpY
 TzoOoZ9SM0gzRchf6ZHXFUTjzR9qz/xtTNIqnF3Zw9MmslDReePGgdH7x
 RLCdLIOgnWOLhtAelvVQ4VaDIGQckTCkp7y46l0WYyZXO3iuo287jCpCo
 PgsLYFWBixr/C1BgZ/M15lVMlTJM8cA1xq/ieaWaFNu8s968mP5WRnCZ2
 /mSPYW9YVJVIchn79FOFvBbZAxt/KOZlWPN23maJuEwaTfABdFbFIlhk3
 m2qQph2arRBnlRAQXh+QHKbJcWeaxBK7gRec+WWkeWfsXDiDsZWK8L9jy w==;
X-CSE-ConnectionGUID: myJZSnc9TMukVsuwfrXPpw==
X-CSE-MsgGUID: Pc7URGkvTSW0xjim2ery8Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11524"; a="57623463"
X-IronPort-AV: E=Sophos;i="6.17,293,1747724400"; d="scan'208";a="57623463"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2025 23:00:12 -0700
X-CSE-ConnectionGUID: 6wNWqX5nSvGEGN8uOtsBeQ==
X-CSE-MsgGUID: wjcZEc14T/q+w0cp/OEqvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,293,1747724400"; d="scan'208";a="167883836"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2025 23:00:11 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sun, 17 Aug 2025 23:00:10 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Sun, 17 Aug 2025 23:00:10 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.54)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sun, 17 Aug 2025 23:00:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GGH6l2jT7BVgvzFCZ8VG7WG94o6En2BNJqTUvxMBIqTHk0z11+P1QR+DK4T0mTpLSALRf4SajeVzTeoKhTIChoFvOtAttQ6rsVDBN9SPfgsjFnm0gcqYIsD+WVD8Ru2pPtopn7R6vT6yqhr6AVdI1x8NnPMQVTnjphKSWkmBO6q8FMj+z0M+q7T4MBQwkXBywAovNqvuqKpT+7O4jo4lvvxAqTYrTxew/FYTt4nXjg9yqni3nC7wEdZwJZb06fxKf+eYy7J3OvEe2uBooHrNX4ya5eG2WEEdrUzDUiGWlf+8tI/1utr/e+/c4ZyHrDj/00RpyfGvmU8i2Z6aIxA3xQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J7MEGYS73aNJJ3e5MyB8z0l4063FYGdvbcjswbG8Epw=;
 b=dg+JBbvuRAaTxKlLTovmwAj9TtfsXasJqqv7FAB1UoP9ZUcBZVOdLmy6Bl4rBoqZ5ZeRnavDCWEP8MQ17bBjVCX+Mto5yH6R4GugOqbxd66+/w/yEVkPKX8OQoRoekwD8VaGaXH9YcxfeEBenJjdX6qjtxJZ0XtPzKquvCidVBlcXrBcl9hxGD66aCIe8+vOIzPn2CSGRk2KChA1PlKzLqDnqFfE5bgxqqI6BfUVlkqE/D9NXhfQn1udyU1sTF7tUKgEqbzeyJ94Oa5RNsFUXoYRWpBGNZvcALxotbcl5g0cEOlZnONR8+F9XuZg6sCLWyYylcoOhh/sGCEuy78iqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA0PR11MB8301.namprd11.prod.outlook.com (2603:10b6:208:48d::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.23; Mon, 18 Aug
 2025 06:00:08 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.8989.018; Mon, 18 Aug 2025
 06:00:08 +0000
Message-ID: <42b40f56-173b-4b90-9c89-2c3e788d4af5@intel.com>
Date: Mon, 18 Aug 2025 11:30:02 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 08/12] drm/i915/display: Add guardband check for feature
 latencies
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
References: <20250807111548.1490624-1-ankit.k.nautiyal@intel.com>
 <20250807111548.1490624-9-ankit.k.nautiyal@intel.com>
 <IA1PR11MB63487854A4D665B8C05C08C1B228A@IA1PR11MB6348.namprd11.prod.outlook.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <IA1PR11MB63487854A4D665B8C05C08C1B228A@IA1PR11MB6348.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0022.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:b8::7) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA0PR11MB8301:EE_
X-MS-Office365-Filtering-Correlation-Id: 5faf6b50-cb49-41a4-0ffb-08ddde1c7c21
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?S2xoRm9IQ29uaUpKcGlteVViZTBxYUpaMjBXYTg2cWMzSkxicTlnYS91dTB3?=
 =?utf-8?B?K05uSkNaVFVzNTRLQnYzTjlWMWQwNXRYZmtpWjdMd01RblhZc203eTVIT1M5?=
 =?utf-8?B?akxmejhMZkxwdk5XVGJGQ25qMWNEY3FlRGx2T0xwL0xRTkdKK2s3eW9rRS9y?=
 =?utf-8?B?OUVURytnTnE4U1I5bnRrYlh6SElEcmtUTDhpQWhYc0JRVEZGTFhGa1FnM0V0?=
 =?utf-8?B?YWJLdEYxMFJrQ0pzS0MzQzNEWE1WUzZta1ZIVENQYjBnQ3pYaGhORHNyK3I5?=
 =?utf-8?B?V0g3Q1dJOXVJOFRrZDhwd3BQSWJiVjVDNUgybXM3REZNTVFYZ0VDa1N1Q3ZX?=
 =?utf-8?B?SVkzVVh1c1c1WmhUOE9yeVN0VXhEMHFBNUE5NjVqeWVOWjUxQ3p1MTRqOFI4?=
 =?utf-8?B?ZkR6bzFJeWFOdE5UWXd2bXM4cUhRRUNCWXdrNkNtNSt6bkNOMVR5aFZDZG1s?=
 =?utf-8?B?L093YWZ0N2ZIVzBPOS9adFVHNDNydEtxMk5ZY01IejVVa01nM1p6VHEyQkxV?=
 =?utf-8?B?cUJzSlV1MWlXUEc4OHZ3NW04MGZTbkxzcSs5dThsb3V4aGh3U0tCQ3dNSGZK?=
 =?utf-8?B?ang2NHg4YW56K3BYTWVNYys3aGtIalEvbk11b090TlNkOU5UZW1Pb20rMElO?=
 =?utf-8?B?cnQ5cjR3Kzl2T0RSTXhkNHh4RkRwMENidDEyYjVjR1R4cFVoZlNEbURhWDBT?=
 =?utf-8?B?b253QnVGTC94ajJMOVBPMTVXeEFTZENNaU5xTDNib1Nka3cxaWI3cjIrYTc0?=
 =?utf-8?B?VVZGRVVkVVYvTzRTSzJxVmd0WUpsUlNrSFRvbVlnejdnZmJ1azJVSUdDL2pn?=
 =?utf-8?B?ZmhnRGxCSGNXUUMvUThac0w5WXpyd002UGVIem5Kb1JkcHFSTlVLSzFyK21a?=
 =?utf-8?B?S1lVdVlIUWMyVERKV1AzZUtidWRKSUw4SUdVR3hvaWhZNXl3RWlCclJlUjM2?=
 =?utf-8?B?V05VUlV3Z0dpOHFQWFNXUGd6MUJFeWVSajExRysrL2o0WHE4QTZOOW5LWkZG?=
 =?utf-8?B?b3UvQzFmc21NdEFpOURoT0J6SGgzV2pCcW0rMVIwNVc2NDdIV29CdzI1VGp6?=
 =?utf-8?B?aWNkM2gvSkVLU09IY0l4N1dRT2tQM1NLSExIOVVnUDJOd1k1eWREVWtMUlMx?=
 =?utf-8?B?RVg0ZVJNTGNIKzZwNjZDTkJWVzBweTZiVHpxT2pQK3Q0a2N6VEt6ZFFRK3U3?=
 =?utf-8?B?OE8zRTlVNlQ2OXJoSTVyRW5seVk2Y3lURWJ5N1BwUWFmc2pwaFkrWjRKZjRj?=
 =?utf-8?B?UVdhVm5Ma1VVMjJDYnNNUHFTQUEwUE1WcFpZYkNPSXVWUmxCazhyTlFkWWJX?=
 =?utf-8?B?RDIrSERGd1Y0TXBnQmY5K01BeDV3eHhsZzZIQWdZUHgwS1Fsci84OHRKRlAz?=
 =?utf-8?B?NTNvcnhycGtMYlp2UkJXOXZOTlhtNkVYU3luQ2grRWFpWXBkcE5YZ1FPVzFj?=
 =?utf-8?B?eVJXY05XNmxCSTRsZk1iMGtueG8xdGZzOTdxSkNhQ0x2eE5uUHQzWjg4TGFZ?=
 =?utf-8?B?eWdEZGN6TFFNRHZrRTNWY2d4b3orTVB1a0pFZkJsV05MZGo5ZDVLV0ZNMDVV?=
 =?utf-8?B?dDZxOUNmVHRHU1g0cVpMaUZ6V3FyUTRRYURzZ2ZHekk4NDNrQm15QW9IR29S?=
 =?utf-8?B?TWxOdWEwcEtFbmpadEtRTEhWTGRDY05McTJNRVFyckZQUzdSVGE0SXpuNFVW?=
 =?utf-8?B?QkVFY1F3c1IvMXVWVnlJRjgxcXArQ3EzVFVqaUFEZGladXppQ2lOWWp2RTVD?=
 =?utf-8?B?ajFwQXZjbEEwQTBQdHJyN25tYldDOEU1aWVWV3ZmSTlXZXFaYnFBRTV4Tngv?=
 =?utf-8?B?RGlYS3k1OGxDM05NRiszMjQ5bW5xK2pmNlFJUU1iRjhvdTZ1dzJ3TTlyRXFx?=
 =?utf-8?B?NzhMckxvS3ZCUSt0T1JaZUpkSXRGOEQ2V1RlcVpYemxBNDFPOUR2T0xXeHhR?=
 =?utf-8?Q?qVXD6ZAUdyc=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WWZMWlN5SWMyZDBqeWI3eWt6cU9DVEdxV1lueXNwelJPK0xXb2JHc29aQmRa?=
 =?utf-8?B?bFJIeEs2d3MvRGJlVEl1S09pNkIrNFlKOFBkTXhKWnNmOHFteVdmR1pwbW1u?=
 =?utf-8?B?dCtMaWtSeVJKNE1TZTRPb0U1bTJod3h3T0wzVWw4djJMdVFMYndKTEhicVh0?=
 =?utf-8?B?R2VtY0tFU3g5WFo5RnJWNm9FbHA4cjdHaGdtaVovOTgxTkRFVXozTDdnVmhE?=
 =?utf-8?B?VFVSdU4wSGxrR3MyWXF2QWp6c1p4WHhDNUFLaG1zeU56UUNvT3dERXgwSWRh?=
 =?utf-8?B?RVZQek8yZUluTGNrSDFjUDR2cFZteWlab0l3bkh1WFllY1ZoZVVTb1JsaHY3?=
 =?utf-8?B?L0RpQUhQeTd5emEwUHJ5ZE9DNi83TWFWVDZ5NGpzVitqUHhiejBXeUNXN0Vy?=
 =?utf-8?B?andSSzNWbW8zeTg5UEIvOHI5eGhTSytuYkRJN25uTGNCam8zVmVTeE1Sb2RE?=
 =?utf-8?B?bUliTmgyQytWbURWTElQTS80dHZ1THoya2pGc1YxMEFzdTFEdGFEbGx1QnVu?=
 =?utf-8?B?WHVoV1pFc0N2NDdRZlNoRnFpUldHUmduaHVETEpyUm1weG82NVJsZW5YM2x4?=
 =?utf-8?B?Z2pGcUxWNVV2djRjSEF3d2pGS00yN3F1R0o0WEI2UVlnMEN3ektGaVlEaGw5?=
 =?utf-8?B?N3oramdzV0F2SEVxRlJqbW84bTl1Njh6TjRyQXlteVNQeE1Tb1hNa0NidkFX?=
 =?utf-8?B?ZXhNQVc4L1I4WHRiaXhpa2tOV1BDN2tiVGw5Y2dIODZ5eVljQVBydHhoLzhV?=
 =?utf-8?B?akhpVUxLUDQ1a1NKUFc5U1pmUEdkUFR5VWxoK2FCSHFwZ0xWUzZTMThESEtv?=
 =?utf-8?B?eVhVbTNCMk5FNU0vVm5FVjRmZ0dWR2lSczM0NXJpN1p5bFRLMjUxTnpsV1E0?=
 =?utf-8?B?ZHhIZ3JZelRMMkpJMWxxL2RXOXQrMEhkQ3B4L0wxaUhGNFVEUEhubVN1NnRW?=
 =?utf-8?B?KzRvc2VGT1hCMEZucEtXb1MxVUhRV2JHRnJEQzZRVWlXRFZTT3gwaW1LYTUz?=
 =?utf-8?B?WUd0YXlpRXMwWGwrVDZDaVpiNTROelpHcHRPV2lubnMxSHBqaGgvbXNnTk5v?=
 =?utf-8?B?OGJjWnNDbkVaNkdjNHJQTFhpcmJ3L2pSUWZzejlQQ0ZiZTBMNWlVZzNJczBr?=
 =?utf-8?B?amVKalZrblNTcmhPM3NGNkxkS0tFWlp5dGQ0YVpsQ3Rhc0pHZERjRm9BSHda?=
 =?utf-8?B?ZHVJYzNsVjJDd2FmbU1BOTExWlFidTJXMXF2SjNROE4wdXhSUmI5dGh0NG5w?=
 =?utf-8?B?YlBsMTh0ZmhXQmc3MFM2eHBQcUxuK2IxTnNuV1N3UlRCWkcyMVA0ZDFpSExX?=
 =?utf-8?B?VXQ4MjFpOEk4WW1pWkJZN0hyM1Bub3p0cXZhNVBsRU92ZExVN01ubjcxck5F?=
 =?utf-8?B?dW5JR29lYkd0elVGSUZCdTliRDFuZERiY3oxTklPM29rUktndWFiRVRJa0pL?=
 =?utf-8?B?VitmUDlJelFjWWxQdENIQUdpSGVYaXRyU2hVV1RlbFBBcXpzeUFzN3RBMWhu?=
 =?utf-8?B?ZndkUDgwVDhMY2VZSUo3K0d4WldKOExUQjAxamJOVUliVmpEeGJ1Rm5MQURJ?=
 =?utf-8?B?RW5NWEJyNkVKSHhjRUh1di9NZUxXV0ZvZGcwYm5GRXhac0JKS3MzSTlOdi9M?=
 =?utf-8?B?RklUaUUxRVVWd1EyOXRCS1hPemVGQ1VUdWl2R3dnYzVJUk9iS1FJTkRDMmY1?=
 =?utf-8?B?Sm1mMldXWExzZUZGZGxuRFE4dWtyUEdRdjViZU5tQXFrUGhGOG9id1NoOGZT?=
 =?utf-8?B?ay9SR0Y4R3RsVE9DYXpiVGxJODNubnR4R1ZTRXpYNlNDcDEvcndxVXVqWThD?=
 =?utf-8?B?Qy9acFNVdlZ2ZXlHQ2dOYUJDZFRhcnl5WEJ1ZDVDNkhyWHFxSEZ3a3ZFSFQ1?=
 =?utf-8?B?M0JkbFZNLytzeUdWQVEyc0RsQmJqTE8rUWhBOFVpYnA2elNUbzRtQU1qN01q?=
 =?utf-8?B?Z0s5Rnd2aE5OaU5OT2lmN0pkaXZUQS9JanFwVFBTUnVKZlI2UTA3OXhCcGx2?=
 =?utf-8?B?VDBPZTNXVXpKWlB2Vit1S1ZlcmtiS0R2Mm9xRXJJM3dRYVBkeVhxWHd4SHNx?=
 =?utf-8?B?QTc3VlhQbUJjZ3JqVG5va2tadk1Ta1ZjTG84WmYvc0VtaFFKWG9HRWFkZUNU?=
 =?utf-8?B?VXNTQkYvRWlzUWloczBpYXoxa1N5QTZidFoyU3dSK2U0dFg4UHpScTdWSVBa?=
 =?utf-8?B?Zmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5faf6b50-cb49-41a4-0ffb-08ddde1c7c21
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Aug 2025 06:00:08.3017 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lNiYCKI7RLDy0r7dbANCTCQfYIsXlDoyhhe7+nN/GjoilVAS8izBb7d8DZXfUsdTLb5vZHhLMzOSFy9CndXaz3c+qDqMvaaaz/HSZvPCjuI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8301
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


On 8/11/2025 3:29 PM, Golani, Mitulkumar Ajitkumar wrote:
>
>> -----Original Message-----
>> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
>> Sent: 07 August 2025 16:46
>> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Cc: ville.syrjala@linux.intel.com; jani.nikula@linux.intel.com; Golani,
>> Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>; Nautiyal, Ankit
>> K <ankit.k.nautiyal@intel.com>
>> Subject: [PATCH 08/12] drm/i915/display: Add guardband check for feature
>> latencies
>>
>> Add a check during atomic crtc check phase to ensure the programmed VRR
>> guardband is sufficient to cover latencies introduced by enabled features such as
>> DSC, PSR/PR, scalers, and DP SDPs.
>>
>> Currently, the guardband is programmed to match the vblank length, so existing
>> checks in skl_is_vblank_too_short() are valid. However, upcoming changes will
>> optimize the guardband independently of vblank, making those checks incorrect.
>>
>> Introduce an explicit guardband check to prepare for future updates that will
>> remove checking against the vblank length and later program an optimized
>> guardband.
>>
>> v2: Use new helper for PSR2/Panel Replay latency.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display.c | 138 +++++++++++++++++++
>>   drivers/gpu/drm/i915/display/skl_watermark.c |   2 +-
>>   drivers/gpu/drm/i915/display/skl_watermark.h |   1 +
>>   3 files changed, 140 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
>> b/drivers/gpu/drm/i915/display/intel_display.c
>> index af4d54672d0d..c542a3110051 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -4227,6 +4227,138 @@ static int hsw_compute_linetime_wm(struct
>> intel_atomic_state *state,
>>   	return 0;
>>   }
>>
>> +static int
>> +cdclk_prefill_adjustment(const struct intel_crtc_state *crtc_state) {
>> +	struct intel_display *display = to_intel_display(crtc_state);
>> +	struct intel_atomic_state *state =
>> +		to_intel_atomic_state(crtc_state->uapi.state);
>> +	const struct intel_cdclk_state *cdclk_state;
>> +
>> +	cdclk_state = intel_atomic_get_cdclk_state(state);
>> +	if (IS_ERR(cdclk_state)) {
>> +		drm_WARN_ON(display->drm, PTR_ERR(cdclk_state));
>> +		return 1;
>> +	}
>> +
>> +	return min(1, DIV_ROUND_UP(crtc_state->pixel_rate,
>> +				   2 * intel_cdclk_logical(cdclk_state)));
>> +}
>> +
>> +static int
>> +dsc_prefill_latency(const struct intel_crtc_state *crtc_state, int
>> +linetime) {
>> +	const struct intel_crtc_scaler_state *scaler_state = &crtc_state-
>>> scaler_state;
>> +	int chroma_downscaling_factor =
>> skl_scaler_chroma_downscale_factor(crtc_state);
>> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>> +	int num_scaler_users = hweight32(scaler_state->scaler_users);
>> +	u64 hscale_k[ARRAY_SIZE(scaler_state->scalers)];
>> +	u64 vscale_k[ARRAY_SIZE(scaler_state->scalers)];
>> +	u32 dsc_prefill_latency = 0;
>> +
>> +	if (!crtc_state->dsc.compression_enable ||
>> +	    !num_scaler_users ||
>> +	    num_scaler_users > crtc->num_scalers ||
>> +	    num_scaler_users > ARRAY_SIZE(scaler_state->scalers))
>> +		return dsc_prefill_latency;
>> +
>> +	for (int i = 0; i < num_scaler_users; i++) {
>> +		hscale_k[i] = max(1000, mul_u32_u32(scaler_state-
>>> scalers[i].hscale, 1000) >> 16);
>> +		vscale_k[i] = max(1000, mul_u32_u32(scaler_state-
>>> scalers[i].vscale, 1000) >> 16);
>> +	}
>> +
>> +	dsc_prefill_latency =
>> +		intel_display_dsc_prefill_latency(num_scaler_users, hscale_k,
>> vscale_k,
>> +						  chroma_downscaling_factor,
>> +
>> cdclk_prefill_adjustment(crtc_state),
>> +						  linetime);
>> +
>> +	return dsc_prefill_latency;
>> +}
>> +
>> +static int
>> +scaler_prefill_latency(const struct intel_crtc_state *crtc_state, int
>> +linetime) {
>> +	const struct intel_crtc_scaler_state *scaler_state = &crtc_state-
>>> scaler_state;
>> +	int chroma_downscaling_factor =
>> skl_scaler_chroma_downscale_factor(crtc_state);
>> +	int num_scaler_users = hweight32(scaler_state->scaler_users);
>> +	u64 hscale_k = 1000, vscale_k = 1000;
>> +	int scaler_prefill_latency = 0;
>> +
>> +	if (!num_scaler_users)
>> +		return scaler_prefill_latency;
>> +
>> +	if (num_scaler_users > 1) {
>> +		hscale_k = max(1000, mul_u32_u32(scaler_state-
>>> scalers[0].hscale, 1000) >> 16);
>> +		vscale_k = max(1000, mul_u32_u32(scaler_state-
>>> scalers[0].vscale, 1000) >> 16);
>> +	}
>> +
>> +	scaler_prefill_latency =
>> +		intel_display_scaler_prefill_latency(num_scaler_users, hscale_k,
>> vscale_k,
>> +						     chroma_downscaling_factor,
>> +
>> cdclk_prefill_adjustment(crtc_state),
>> +						     linetime);
>> +
>> +	return scaler_prefill_latency;
>> +}
>> +
>> +static int intel_crtc_check_guardband(struct intel_crtc_state
>> +*crtc_state) {
>> +	struct intel_display *display = to_intel_display(crtc_state);
>> +	const struct drm_display_mode *adjusted_mode = &crtc_state-
>>> hw.adjusted_mode;
>> +	int dsc_prefill_time = 0;
>> +	int scaler_prefill_time;
>> +	int wm0_prefill_time;
>> +	int pkgc_max_latency;
>> +	int psr2_pr_latency;
>> +	int min_guardband;
>> +	int guardband_us;
>> +	int sagv_latency;
>> +	int linetime_us;
>> +	int sdp_latency;
>> +	int pm_delay;
>> +
>> +	if (!crtc_state->vrr.enable && !intel_vrr_always_use_vrr_tg(display))
>> +		return 0;
>> +
>> +	if (!adjusted_mode->crtc_clock)
>> +		return 0;
>> +
>> +	linetime_us = DIV_ROUND_UP(adjusted_mode->crtc_htotal * 1000,
>> +				   adjusted_mode->crtc_clock);
>> +
>> +	pkgc_max_latency = skl_watermark_max_latency(display, 1);
>> +	sagv_latency = display->sagv.block_time_us;
>> +
>> +	wm0_prefill_time = skl_max_wm0_lines(crtc_state) * linetime_us + 20;
> Just a suggestion, Similar to other static functions created, this also can be separated out as a separate static function.

Alright can add a new function for this as well.


>
>> +
>> +	scaler_prefill_time = scaler_prefill_latency(crtc_state, linetime_us);
>> +
>> +	if (crtc_state->dsc.compression_enable)
>> +		dsc_prefill_time = dsc_prefill_latency(crtc_state, linetime_us);
> This is redundant check, as this is already been checked as part of dsc_prefill_latency function and returned gracefully

Agreed. Will drop this.

Regards,

Ankit

>> +
>> +	pm_delay = crtc_state->framestart_delay +
>> +		   max(sagv_latency, pkgc_max_latency) +
>> +		   wm0_prefill_time +
>> +		   scaler_prefill_time +
>> +		   dsc_prefill_time;
>> +
>> +	psr2_pr_latency =
>> intel_alpm_compute_max_link_wake_latency(crtc_state, false);
>> +	sdp_latency = intel_dp_compute_sdp_latency(crtc_state, false);
>> +
>> +	guardband_us = max(sdp_latency, psr2_pr_latency);
>> +	guardband_us = max(guardband_us, pm_delay);
>> +	min_guardband = DIV_ROUND_UP(guardband_us, linetime_us);
>> +
>> +	if (crtc_state->vrr.guardband < min_guardband) {
>> +		drm_dbg_kms(display->drm, "vrr.guardband %d < min
>> guardband %d\n",
>> +			    crtc_state->vrr.guardband, min_guardband);
>> +		return -EINVAL;
>> +	}
>> +
>> +	return 0;
>> +}
>> +
>>   static int intel_crtc_atomic_check(struct intel_atomic_state *state,
>>   				   struct intel_crtc *crtc)
>>   {
>> @@ -4289,6 +4421,12 @@ static int intel_crtc_atomic_check(struct
>> intel_atomic_state *state,
>>   	if (ret)
>>   		return ret;
>>
>> +	if (HAS_VRR(display) && intel_vrr_possible(crtc_state)) {
>> +		ret = intel_crtc_check_guardband(crtc_state);
>> +		if (ret)
>> +			return ret;
>> +	}
>> +
>>   	return 0;
>>   }
>>
>> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c
>> b/drivers/gpu/drm/i915/display/skl_watermark.c
>> index 4474f987de06..5ffa76cb1633 100644
>> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
>> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
>> @@ -2249,7 +2249,7 @@ skl_is_vblank_too_short(const struct intel_crtc_state
>> *crtc_state,
>>   		adjusted_mode->crtc_vtotal - adjusted_mode-
>>> crtc_vblank_start;  }
>> -static int skl_max_wm0_lines(const struct intel_crtc_state *crtc_state)
>> +int skl_max_wm0_lines(const struct intel_crtc_state *crtc_state)
>>   {
>>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>   	enum plane_id plane_id;
>> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h
>> b/drivers/gpu/drm/i915/display/skl_watermark.h
>> index 62790816f030..8706c2010ebe 100644
>> --- a/drivers/gpu/drm/i915/display/skl_watermark.h
>> +++ b/drivers/gpu/drm/i915/display/skl_watermark.h
>> @@ -78,6 +78,7 @@ void intel_dbuf_mbus_post_ddb_update(struct
>> intel_atomic_state *state);  void intel_program_dpkgc_latency(struct
>> intel_atomic_state *state);
>>
>>   bool intel_dbuf_pmdemand_needs_update(struct intel_atomic_state *state);
>> +int skl_max_wm0_lines(const struct intel_crtc_state *crtc_state);
>>
>>   #endif /* __SKL_WATERMARK_H__ */
>>
>> --
>> 2.45.2
