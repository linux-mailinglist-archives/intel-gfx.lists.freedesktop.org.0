Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MbcCCDRQeGmipQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jan 2026 06:42:12 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0FD990242
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jan 2026 06:42:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1A6610E04B;
	Tue, 27 Jan 2026 05:42:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DscZvjOS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B846710E04B;
 Tue, 27 Jan 2026 05:42:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769492527; x=1801028527;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=d25v8zARDcUfC/D4gyx+mMFE90smiBqnqz7PhwRHdwg=;
 b=DscZvjOSmLOQnvdP6wt+MeesB3XX0jbHbs7LwVnVs2fuFbi6edyPGxvm
 0lKO/8PvgISSVN7TNamDwC8cikUosYeugV6iy6Wg9Z9ApUGXTmjXIMMzv
 pq9O4ylGhL1OgD7E1/iPElNCAyz+r0ZRa58ZXeVt1JpjAOwLTN62Sswjp
 YNQKZ6Dfqe78YH0KpKGGY+K9NxeMEKL4WZEuv2WvDDxo4zNMSDhTlTnIG
 e3Hp12db27q4lO6/RPcwQVD7x5bY0mVh98ThJ7QsQljuAg9y2CBdgFkPa
 dnGSYAj/4rbehio9r1HNzGDQ/ArOJwKE6WUkFUOqRCwrS9rsYqsBATDMe Q==;
X-CSE-ConnectionGUID: xpyl0Y7iS0+3L/r4N3A7cQ==
X-CSE-MsgGUID: IZqUU9DhSKaLY26ciLFqrw==
X-IronPort-AV: E=McAfee;i="6800,10657,11683"; a="88257446"
X-IronPort-AV: E=Sophos;i="6.21,256,1763452800"; d="scan'208";a="88257446"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2026 21:42:06 -0800
X-CSE-ConnectionGUID: 6OAh/J5GRRqHRa4SPtgIZA==
X-CSE-MsgGUID: 0MR6l0YoSKaCq7A/NQ9PHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,256,1763452800"; d="scan'208";a="212424556"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2026 21:42:06 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 26 Jan 2026 21:42:05 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 26 Jan 2026 21:42:05 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.6) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 26 Jan 2026 21:42:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FloABWDL4dyLD+izFEgp4CszokCRNxkEVqhIocc5BHkrgJlL3zMwJjIzbBLWu8ueFaYH+LV7fIsbpDGfxo9uNWK8Rn3JhHOHdcQiK0la8LDqtUxFcVYqL1KNcyDzAHfhtw9fu4Lnwt71bsxP9xC62wMTqC+HynCQx7b+cjodpa1Db2/tRClJuJ+AlTxsT7yug+ZnxZdfiYlc/O5gdYzk1PS3t8T59Nf7gr5hxsa+5+hoOQenWyVBBZJVQ7i7JkwSA6Qqc83nrMrZCpC6fuQO/ZSz8XCFwyuGWucla2i31uyLKlRkhSsjrHnsgoD2rqKoUBy9C+KOW1HqJeue9CcrGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y+84PCY+q1xp1CR6V6mnOwCXj2PHtM/VNwtN0Sxbkg8=;
 b=bhzljJIExTaSEvLANrfrcSH3563SMroCSqajOfru7owBzIAE1f+yVjRrUvx5ZgfPZ9gKMYeSNYYL72Z548pLs2rfBGRgFoyepBsitroU2Gtygw08F/4TJGtTmOAqFok+Zd1ciL9z9tCaa56+hnhlqQbR5kwOnKaMHBJKowAHBQpFyauUZPGu8NWM/sZHww/IYLt4uPJMktutinHvLZMTMzLsnyX30zYZQDSEBs7NbQEL6TNyBe3w0ZDMAc8eoxgs89yOHp51Ba4WtgiP3J3zTAP7LrYNyWQ5EWKXtJjfINVHNHfvhAk/miVUf8HWnAk7Tay+rejMQ7CA0TB20aM4wQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS0PR11MB7483.namprd11.prod.outlook.com (2603:10b6:8:147::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.15; Tue, 27 Jan
 2026 05:42:03 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.9542.010; Tue, 27 Jan 2026
 05:42:03 +0000
Message-ID: <d1c1906d-09dc-42e2-8c94-d343e3e9bf91@intel.com>
Date: Tue, 27 Jan 2026 11:11:56 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 06/10] drm/i915/display: Wait for vblank in case of
 PSR is using trans push
To: =?UTF-8?Q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20260126075959.925413-1-jouni.hogander@intel.com>
 <20260126075959.925413-7-jouni.hogander@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260126075959.925413-7-jouni.hogander@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0089.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ae::15) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS0PR11MB7483:EE_
X-MS-Office365-Filtering-Correlation-Id: a32f40bd-dabf-4407-b7f0-08de5d66cc4d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?a0NMaThrY0hYajdLakhDc0VrOEVmem5NWUtGZ0UyMmpibzI2SmhJajFTUzNB?=
 =?utf-8?B?aTB1Ym44VTUyQWtYbFNTaytBb3JXUThKSEZKUE5pd0tjdzBZNERmU1QzK2RK?=
 =?utf-8?B?MUY1bFdTNW1GQ3FRQW8yZzhoZUtwZWMzY1RmU0F6cUxhZ3JYMkIxOGc1WU9P?=
 =?utf-8?B?aHN4c0xqaDFYTEptajgvSkUwcTl1N3ZDazlNMkI4OVR6NTJab3NGRGhWM2hK?=
 =?utf-8?B?YmdwdGlHSUVKVEg1ZTNVYW81ak9zQllXOUNRbTNRN3p4Q2JTekNDZEQ2Q1Jw?=
 =?utf-8?B?WWRxOHRIWXhUUURVUEc2TW1nL24vMHl4eU8rZytTaWllMDZobk9FY2M5ZlNY?=
 =?utf-8?B?dzZENzZyTHM4SDdQbWRjS1ZYVXhVbDc5bnNsME9EZndMVk16TGxHUXdQdmJG?=
 =?utf-8?B?LzZhbEg1LzNGZStXczFQK3QwclZOSHdVRVBWRVlNZTZRbmxNMGlNMkFKSTBW?=
 =?utf-8?B?eUFmaW9QcTVlSi9NRFRDSVg1N0RqdGsvMDhzQmRudGgzTXoxZ3UvVjNWNkZU?=
 =?utf-8?B?Ym5PSjk4NUg0cDBFbkVkYlR4YmNFbHpaZ08zN1BFZHpLbEk0YmNsWDVOSXRH?=
 =?utf-8?B?bDhaVE00ZTNKWHplZEkvRlplbkM0SExYSDRkaEdWMFc2UW41My83Yk1nc0g2?=
 =?utf-8?B?TmJQK3R2RU15eGw4dHl0blFZbkNlR3VSb2NHV1Q3VW1QRXJERHhmVXFBN1Br?=
 =?utf-8?B?VkVhSFYwT3NiOWh2MmtQYS9abE5wL284UTFVOWwzMXFZQWpXektkRlRtQkpu?=
 =?utf-8?B?TUoveDdDb3FWRGJjeGtoeXhlS1VzZENiV3JrczZmbmpLN2ZGSnBvdHBoZzVX?=
 =?utf-8?B?RmFOYnRxd042VXUvTWhzUHpCeDlQL3dZWG1zMWlWR1V4SnNVdkpWek96SnVS?=
 =?utf-8?B?L0RtdXVzS2pBV1NUaGFxNmNmakU3NUVBRzFRd2I2REpkQ1ZWNjN1OE5oZHB3?=
 =?utf-8?B?UE1jT1E1UUZnOStCTTdlUmNvV1hRSkFwc0xrc3Z6SEdvbXNwN3FQS29ZaGpW?=
 =?utf-8?B?ZFhmeFovTmhRVEFOaG9xRWFiNERKdmZtOFl4a2ViN3p2elRJTytVMVkvMFB2?=
 =?utf-8?B?MnRMV2h4UDdqZGVzVTZnaGhpTlJMQkNIQjJYQy90YUpqTWpCTlBlZmR2YUx3?=
 =?utf-8?B?UzhPMjhKT2h2UDJVL09DZ2diZWlYVkRaY29YUGdVSXo2TVVLbUdvWTNad0xK?=
 =?utf-8?B?ekViT2Ywczk3WmlqbklnS2EvT2g3WFVLcXQwcUx1cHVVVFVmalJhNGhtTWJj?=
 =?utf-8?B?U3E4bjAzL0dDZGdRL1c2TFZ1eFRpM3pNYlRmUjlEUVVZbEgzc3JDaC9RQzcv?=
 =?utf-8?B?N0F4b21ZWVptNCtnc24zSjBMTkppN2tDSmZmODNPbmVMUE44eldINitKTXBm?=
 =?utf-8?B?Kzd4ZlAwa3NuOHFZbFQ1NHpQdTZCdnM0LzBTdUlTeGo3b0N4R0hqU01zbkFu?=
 =?utf-8?B?UDZyZE04bTUrT1p2TFNlZnhLVWhQcWs5Rm9mQWQ2eEZGWFZjcHVCOG5xUUFh?=
 =?utf-8?B?cTNtYjFsUVY4WDR6WnpPSGs3WDBwb0FDOGNrcGN4d3QrQmNnU0gvcDkrd3ZW?=
 =?utf-8?B?dnh0UENUWXFFZVJkQmJ0Zkx1RDZSclI1YWZkZDQwWkN5a0dSSjRDeDhZYmpJ?=
 =?utf-8?B?K0ZXcmxjNk1weHNDV09GbklFNHhLTXhNTTVjOE1WR1ZjdGFCRkZEdndGcE1P?=
 =?utf-8?B?UW9sSHRXelFZNi9pOXhsM0kycTVWVGVYZTNSaDkyd0trdG1jcTdRSHJ6Qlk3?=
 =?utf-8?B?N1ozUzZ1anMvVXo3aFc5RVdLelNZQkR2QXhwSnc3eklTcDErQ2MyRmFJbnBx?=
 =?utf-8?B?cVU1dlJIcGI0SEIranlMU054bDIzWC8xTTRNMCtUbmt5WldZWlRNM0x6eTZJ?=
 =?utf-8?B?S0xJUmhPU3RSUVhMSXh1dTBYWCt0cWkvSUppM25PcUhwM1BlT2UxaXg5WU1o?=
 =?utf-8?B?c3BYaW9Fd24xc1BEaHZUWGoxUE1VUFNDdmZjL0NXb2dScVl1SWcvTUNSQlZX?=
 =?utf-8?B?ekppSWlXS2kwRWlwMEdhTjhOTUtVbnFjTG9oWTRYVVNvUEU2TzB0SkJ5MThN?=
 =?utf-8?B?RmszR1RXKzN2Z21yVG9RMWVzaWJMeXJIaWU4ZjdZSHU3UDZqYitzRi8xbGxB?=
 =?utf-8?Q?0EH8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SEJQSjg4ZTFWcXR1Tk0wY05vYTlEamU3aW9TaE1mQmViUkFPakdQWjdBL1F6?=
 =?utf-8?B?eTVkYUZ2T3dVRnFmUkE5eVVvSWNtWFM2dURWeUJOdkJNc1VDWHdwSG45cmJy?=
 =?utf-8?B?WDJiVTUxblZ3d252SWpHOG5TS2hMSFBLQmwvNEFnUTQvWUxrZEE4RE1LbThG?=
 =?utf-8?B?T3R6QjROOUNFUFliMU9pNW1QU0lnYjFRNW1yU1hXNi80TDd3M0x6cFk0NXda?=
 =?utf-8?B?MHU0NE1qMXBPS2dvSXgrbFhmYnZOT0VBOSthWmdpd2RITk5CSDUrTlRMVktR?=
 =?utf-8?B?QkJYWXJlTDZ2L2FsV1lzMTFWYzZPa2RQTlpVendyYXlQWUlpbk5nT1phR1NQ?=
 =?utf-8?B?ZmZnUGlWeElsMW1HWWZITE9vaElFbW5QckhrcnRzZTI5c0ZWZXdYOTZmZ0Zm?=
 =?utf-8?B?TVplYzFUaTEzMGs0YWtBVXFqYkw5RUxjazdHc2Jqek45VXM1RTdjdzNoMlR3?=
 =?utf-8?B?cGpSMlloNjdaM0VrZWNYSzlhbERuZWlCS0RzTTV3RkxYRENPcVBvNzdyRGRy?=
 =?utf-8?B?WXBnQS9mS0xlZzV1Y0d3TEV6T0pUbmVIMDVURzVpRUhNR3ZzVU1XRnUxMDEx?=
 =?utf-8?B?UTJGZy9QZzN0b3FuV2RrMWE5TlFsekdZNm9UZElSUmswVFZSaWliQVZtQzIz?=
 =?utf-8?B?T0g3YlpyNklSSVI5RXg0MFdvSStUNmVnWWg5QVpvN3JzRW1yUkFseXUvOWcr?=
 =?utf-8?B?V042dVNlekZCVGJJMzgyYlE3dTlrbVFJTmtaakR0aHhmWk5xY0hyQmVLNzJs?=
 =?utf-8?B?aEpsNFNiSjNkMmpqWmtUYTRBeE9pZjdCNmZDZENOd3pIeGtWQmljQmxjeDE0?=
 =?utf-8?B?bWJWVnpzc2xHMEt0Y25QY0FlQWVpcVgvNEFLSVh0Q044U1hyNnVUSGJMSFln?=
 =?utf-8?B?WUQ1Tkl6TE9uR3daYm5UUC9RTmE2c2lZVkIzT01kcW5haVlxT09id3cyNnRN?=
 =?utf-8?B?anpJb2dEVWt3M3ZWNWExNG5CMHBXUWluT1JXenpMQnJwWHZjcFJCRzdqYURr?=
 =?utf-8?B?ZVpKdlp3Tnl1UXVEVnpGSkw2MnFpbkZUSXBxZXdtT3QxUWhSem84dW5CbmtK?=
 =?utf-8?B?bUpiOGZQUW1INkFzeXYxdSs2VVF2Y1N0OXh4Z253NWFTUi9nbENmS243SFd2?=
 =?utf-8?B?QkxQMk1ITHV6bnIydDhEdVhBbkpydUF5NW56cGFFa2ljejF2QUFvS0hId0U2?=
 =?utf-8?B?RGo2NmZMOTBhUUxyaDMyTU5qSVE3b2Q1MXJ5R0FSeFM0K25FRmFTdDZMWVYw?=
 =?utf-8?B?ZGFYelJWZTdFR3VFTjlzQzIySTMvQ2NNM3pnMytZWUpCZ2ZlN1BEakJQZEdJ?=
 =?utf-8?B?MmpqSjRYemxRVW5qZGJMZk9idkxVUGNZWFhlV3c3Qmtkb1RwblFrWXl3cXVF?=
 =?utf-8?B?aUd1a1JkWkJQZ2M2Slh6dTk5eXk3VW9WRm9EQWVFSnNTK2l6SmFzaCtTK0JE?=
 =?utf-8?B?dk1MVnR5NFd2UXpTUk4vTW9TaXNqdklHUW9UZE9QWWhuOXRFZ1dnTlBrQys1?=
 =?utf-8?B?RjJoMERKeTFIM2I0WVp4cmlaNlpHQjF2K0s1UDZhTDVYbGFMdGNuS1FmQ3px?=
 =?utf-8?B?V3YzTzdpQXFoRngxb012V2J4em5Ienc1QzNIbEJZeHQ4ZXMzK09vUWxBRklN?=
 =?utf-8?B?ZGtjcWVFUGFMbitUblZHUVl4emdMbXdrZmJxamwwdmZtSlBlemhYanV4dTlT?=
 =?utf-8?B?c250VDFEZ3IvT2Y5YmVTK3VpWDdCMEZoZkVOS0JORkUvTVU1dEVpd291WHVa?=
 =?utf-8?B?Ujh0bWVDVDRsRUY0ZzZHUUxmQ3lYWHFtMmxSS0lVcDFFakVOUUtuSGMzb3Vt?=
 =?utf-8?B?ZUlzV21TUmxhbXMwOCswL3Y3dElHbGNuQXlIZHUrK3VSUTI2aDJ6d0NRMW9L?=
 =?utf-8?B?RWhoRkxTOWlZVVlMaDNydGNlL0RNWXk4OGZ6SHc5d3VZKzdSbWZqcjdkRGls?=
 =?utf-8?B?V1hoS2tsTDlZQkVadnJ2bmVEZkc3TGVrbVVDZ1VMbTI2cnZYalBKSFMxYS9E?=
 =?utf-8?B?VFJDeWRuaEhYeUdsK3o4Uy9aMG01ZzgyNFFRakNRdUpaZ2ZGUms0b0NKaHI5?=
 =?utf-8?B?cy92aXNIZDJSY0g1WTdIM1BEQ1dSU2RzYnZYU2RqVE8yR21pYXJxOGM0di8r?=
 =?utf-8?B?TGE5NnlPNzNGdWE5Ym1wbzI5TWF4SHcrb2s0VWFJcGp3RmpISXU5N01xNUp0?=
 =?utf-8?B?eHd5dDdHek5nbEwzbDY0T3RqaFcrTkxxZVFaQmJCV2hBOW9iRzdkSi9DQm1O?=
 =?utf-8?B?SzlTRHFCbUV2dEQ3bktIRjZYUEF2Y0wreU00VVdSWjNxT0hwcVJyKzlUMnQ1?=
 =?utf-8?B?alM1SVl4WHUzK0VtZVdTY251MHpxTDZ5Ym11OFpjYjMzUkRkYkhGak5TNXpJ?=
 =?utf-8?Q?t/RI366F6gm9MaRk=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a32f40bd-dabf-4407-b7f0-08de5d66cc4d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jan 2026 05:42:03.2097 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VfUwoEBmoHmhPx6WY9/ATKz+gs6F/KMklli+jT800n0vbzBt9IHOgrZ+z2Xr2dgakoUmI2GIaL0iHxTNRm1FzMUnTcHFaNV5ngCoixTe69c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7483
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: E0FD990242
X-Rspamd-Action: no action


On 1/26/2026 1:29 PM, Jouni Högander wrote:
> In case PSR uses trans push as a "frame change" event and we need to wait
> vblank after triggering PSR "frame change" event. Otherwise we may miss
> selective updates.
>
> DSB skips all waits while PSR is active. Check push send is skipped as well
> because trans push send bit is not clearn by the HW if VRR is not enabled

typo:

s/clearn/clean


> -> we may start configuring new selective update while previous is not
> complete. Avoid this by waiting for vblank after sending trans push.
>
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display.c | 20 +++++++++++++++++++-
>   1 file changed, 19 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 7491e00e3858..b47c9d3d0d85 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7390,9 +7390,27 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
>   				new_crtc_state->dsb_color);
>   
>   	if (new_crtc_state->use_dsb && !intel_color_uses_chained_dsb(new_crtc_state)) {
> -		intel_dsb_wait_vblanks(new_crtc_state->dsb_commit, 1);
> +		/*
> +		 * Dsb wait vblank may or may not skip. Let's remove it for PSR
> +		 * trans push case to ensure we are not waiting two vblanks
> +		 */
> +		if (!intel_psr_use_trans_push(new_crtc_state))
> +			intel_dsb_wait_vblanks(new_crtc_state->dsb_commit, 1);
>   
>   		intel_vrr_send_push(new_crtc_state->dsb_commit, new_crtc_state);
> +
> +		/*
> +		 * In case PSR uses trans push as a "frame change" event and
> +		 * VRR is not in use we need to wait vblank. Othervise we may

typo:

s/Othervise/Otherwise


> +		 * miss selective updates. DSB skips all waits while PSR is
> +		 * active. Check push send is skipped as well because trans push
> +		 * send bit is not clearn by the HW if VRR is not enabled -> we


s/clearn/clean

With above fixed,

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

> +		 * may start configuring new selective update while previous is
> +		 * not complete.
> +		 */
> +		if (intel_psr_use_trans_push(new_crtc_state))
> +			intel_dsb_wait_vblanks(new_crtc_state->dsb_commit, 1);
> +
>   		intel_dsb_wait_for_delayed_vblank(state, new_crtc_state->dsb_commit);
>   		intel_vrr_check_push_sent(new_crtc_state->dsb_commit,
>   					  new_crtc_state);
