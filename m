Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AEE26971061
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2024 09:55:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C263010E302;
	Mon,  9 Sep 2024 07:55:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F3xiOtqI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6143D10E302
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2024 07:55:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725868515; x=1757404515;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wSRfVGpaaN1dhnyDpoJoGvSRrsR1lEQUVkb++ho0CA8=;
 b=F3xiOtqIdpRlnojSopS0EFGc541CoElR69pa3Cv9/8NSrq9noNXIrpP4
 CxjqP5MKnjT+fX5AuH8aBhkQhOPcWgxL8MQ3Oz0vZZspIzetGQKPiibji
 pLyoTo/ey+4F3mAgKTCLQtYL1fHEPOiCFRdlb+rloZ0n3m5/hna5zajxP
 b4Ucz3KiawGLhFfmQliqrryh8yMMenqUt4PTacgoeGQGTYxeDm+DYwoxN
 6xVVbvJTeb91AZ2qcbNNw96cpee13Scy2OPSMbm7djrnF4xlPnho5RHR7
 I1LCWE2mKGiXVDW3VN+uWzyDEAPYH0Y9Eau2wA8clSad3TwDAGbOtTydd Q==;
X-CSE-ConnectionGUID: wevR/OY9TeuRILoqSCyzoA==
X-CSE-MsgGUID: RrWbwjyLSmyhJi+ZWXjE7Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11189"; a="28429119"
X-IronPort-AV: E=Sophos;i="6.10,213,1719903600"; d="scan'208";a="28429119"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 00:55:14 -0700
X-CSE-ConnectionGUID: 0i7ZbD6uR6KDCxiG+QQgyg==
X-CSE-MsgGUID: gyHhh3wlSaKp2jsfq36rFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,213,1719903600"; d="scan'208";a="71529880"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Sep 2024 00:55:14 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 9 Sep 2024 00:55:14 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 9 Sep 2024 00:55:13 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 9 Sep 2024 00:55:13 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 9 Sep 2024 00:55:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=h2YmzPeFFK0Km6nOrmBGVoHhtDxN4JSN8+XHlgd+UNGC+POroIbFC8eYvG5+FD7gnMnw9RWsKhH3Dhzp6dl1RlbBDme5NgPm8PXfKnbFRxsPxSEcoID3e9zg2VqTE518mUm4/OHlcSPk5yY+CEsdwgA3kCxdFK96BHE1B9Me2vdjbvXjKVAoZX3UE2e+RAhW3sAlCMNSVyeXKhjGR2PlU/ctvQCDWecGLRwHyaxVAfVTkhbSN0fWgEt0dG7uT6bn6PEox8MoGX4SC9MiYDR0pKEiF9r2wCh73hsoYttb0GmmZIDnZMMM7T5qkv8JRmP0DemdeN1QiVqCqA73A8quqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oYFYH9qwf9q/UggnHBWay9AKBwz04+3kA42GugktI+E=;
 b=dAszqxYqSD81Qs6eaIe5lL2w0ZeEEERqdTpqRqt8HOQ5RdNW3dtVr7B2rViWeN3Qh5xFTgD9iPHNDHtwW4NlHJpvciwJL2oHxnLC2KuRiVDoYMwUy3z/lCuZIiM5zO+wOpkbSNST1CsdUHdRE1Zs09A2gC6u+/xkXZNiik/W9zK7YmEr7EV79wJTmHzhxQMkRsfuy5wJE50OJdB3hngzLglgbSxqBQ/b0hN+/t9uPSOUiJnNnSTCpf8s+W5x9rgsVCLcVV+1wKz+HzZGsGOC0xPNvy04Jv1pvDujNjU7werSdQ3aIlGt43JKcx4TTvi6WzWCT3CY0SEgl1IENp3rSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM4PR11MB6168.namprd11.prod.outlook.com (2603:10b6:8:ab::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7939.23; Mon, 9 Sep
 2024 07:55:11 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%4]) with mapi id 15.20.7918.024; Mon, 9 Sep 2024
 07:55:11 +0000
Message-ID: <bb25c9b7-5b18-4730-9b27-c1c4e5ce319c@intel.com>
Date: Mon, 9 Sep 2024 13:25:04 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 06/14] drm/i915: Split current joiner hw state readout
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <jani.saarinen@intel.com>
References: <20240906125807.3960642-1-ankit.k.nautiyal@intel.com>
 <20240906125807.3960642-7-ankit.k.nautiyal@intel.com>
 <Ztsf67BgD4z_BA50@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Ztsf67BgD4z_BA50@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA1PR01CA0146.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:71::16) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM4PR11MB6168:EE_
X-MS-Office365-Filtering-Correlation-Id: 3704a79c-c186-4791-f57c-08dcd0a4bb5d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YnFxVnV6R1ZVWlYrLzYzei9PY1BjUXo3eEtKbDJTVE5peVBXclo3Mk5INE8y?=
 =?utf-8?B?KzNOYVd4aDlDS3hwT2hHdGxRZlNDcmM1QjIvWlFkampjL2U4QWhTYU93S3ZS?=
 =?utf-8?B?MmJ0VGN6Y01LMDRBWk1sYzYwZmZGWnorMlNZS09XMzB4Q3RXbkxUbmMxYnR6?=
 =?utf-8?B?R3EreHU4MkxJMWZuMHNpSVJuL3hTTGtOTXJkaHNkUmlhUEovT3lwMHZNK1Zl?=
 =?utf-8?B?LzNnS3ZDY1V0b3NIcDV5K0Vvem5IR2dPSmZWaGsxSVFUajk3bzhuakxabDJP?=
 =?utf-8?B?a3ZXcDVBVXV3ZDZwWFdwMWY5QTBHUks0VWh1a3c1K0t0bFMzZzJJUVk4dGs0?=
 =?utf-8?B?bkYycnRjNVdlVVJWS2E0NHQyckJoYk1mR1hiQ0dqTkZlTHNUYlE2YkZxUXBy?=
 =?utf-8?B?aHFqbWJPTkNSTjZJdzdZR2tWMjlpR2Y2SnA4NFl1M1RyeHZEYTdPaVE3Y3h6?=
 =?utf-8?B?azVOSjVqcjN4YU9lUlpweVk1MW9Wc01TRVVVR1Rxa2I5M25nMmh0WXZhZjJ3?=
 =?utf-8?B?UCtVekdZTnJwNHVSd2xtaFJTbHZSQWtCT1BNM1N3K25ya0xqeVBEalFOWVJH?=
 =?utf-8?B?N3EvUWwvelo4UGo5YVgyUjFvUmorVllmSDAyaTdYODA5WElXdkxQM1hTMjNk?=
 =?utf-8?B?WXBBR0lyM2dwMVVvMHVCbjBCSGdWMGZZSG04T1dwQmxURHMwKzFWV2JnS3dM?=
 =?utf-8?B?UGZiZHVIUjdManp3eVdyWEh3Q01DU3M1RjJSMThxRU1JMUJnUXI0MHpvMEQw?=
 =?utf-8?B?dE5IcjN6b2JFNU1pWWdJWFd0UVFXdXdkWVhEUkFqemRySEowSzB1WnZpcEd5?=
 =?utf-8?B?T0hON3VNV1B0QzJVL2RlYjdtVHdKemRnU3B3NGlyWGIwQ09sYkNYWTZuQjlu?=
 =?utf-8?B?ZG55WXVUMlZvdjh5cWhhTGpqTVVYa0RaTGlMdUNCYm5sZWtJWVBpZFllUXA5?=
 =?utf-8?B?YmVYZHF0TW8vQnRyZmtTa2ptbE9FcTJzWnp1VVVxR3hRVnA2OVJINlFybmVt?=
 =?utf-8?B?ZExTVklidmVJbmJPaG1lVlhEaWdtTWYwTVcwU0RvV2M4S1I3WTVwZks2ZUtS?=
 =?utf-8?B?NW4xdUhveDNjWFZQREFFaVJFODl5KzNOWVhEM3RNMGJxejBwY2JlcytwVENV?=
 =?utf-8?B?ZEY3YkVIK2ZZS1RKQlZkeGFWdGVKS01SNHRHZkowRHU5bkttL1hYN2M4aWlV?=
 =?utf-8?B?Slp6MXZucWt0VktrVHJmTnZYS1RpUGtoYXlteFdNSHJwYTFYaEt1c0pwbVlP?=
 =?utf-8?B?U21tczM1MVFuNnNhVmViS2RDcjgzcVVHMnpvTnk0Qmk5RnBYRUxUbWExZjZD?=
 =?utf-8?B?L3lMamlZYlVMaFY0Mm94K2pYMk9FTm5seHdUbTFpUXg5c2RhbDR6MG42UGsv?=
 =?utf-8?B?MHlQNXVkZ0xZNHptME4zeTVMTTlyMncwUDhBMXJIRTV1M1NDUGJjenU0NzNM?=
 =?utf-8?B?L213T25adTZFTHowVFp2dzJsclJRWUJKcVVkbUR2dTJFNkR6TGNUa2EzcU90?=
 =?utf-8?B?TWJwTDhjZngvTWxub0pzeFJZTmQ0ZS8vcDYra05uMzRYL1V0TDkrVmNOMThq?=
 =?utf-8?B?SzlzKyswMHlGT3U5MHZHVER5RXJEcFJIajJURzdYWVBjRzJ2ZnE1eDhyNFFR?=
 =?utf-8?B?TWhtZDN3MVpFejhMZXp0T0lRVEhrbGQ0Y3V0dGx6TWFmMDQrcnFhckFxNHkz?=
 =?utf-8?B?T1ErQmp3MTJGWTZxRFVOVFY2L0RlWEhtU1BhQVBhNTBFSGFQR25nMDh1YTRC?=
 =?utf-8?Q?B30n9Er4TqSiOK83/I=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eFpROThBSUVLUnBWWStlOTByVmVyMkhqMW5nVTIyZXFvMFhNNlFMY3E1WVVD?=
 =?utf-8?B?TmUxMGZUemtMS1lheWFPUzBsYldvdGU3djJmaitiM0FoOHlmdzh0SDdsVHFN?=
 =?utf-8?B?WEJGbHNoNFFzd1pjZDRLVGhzUnNyenVlazIxdXJ6U1lTYUU5M01BS3dIU3o4?=
 =?utf-8?B?NFM3ZG1YUmN6M0dyQlRMYzkvcGUwaVI3Zjdtem5Bc1g5cHJFZnp3K1FETFhL?=
 =?utf-8?B?aTQ0NlFpejVEWm12bnhMbDE4TmE0OVJXVXV2aGlUZU9tamliUHJONjl0emRv?=
 =?utf-8?B?dnAvaUhKbHdsVzhqUElLL0lFWXMxS0x6RHNGZW42a1I3OCs4RjdCUXl0cTRh?=
 =?utf-8?B?dWV6TnZwcXZsMExqeTFISHVGWmM0TFlCcE9WK3BIWE5RMTRPcGp6cXAzOWps?=
 =?utf-8?B?OEd3ZXhyR3U4dTlQZEQ2MEE0Q2d6OGtONWdjbWdpSkhudlAzblYwb0pHcTlG?=
 =?utf-8?B?T3poNzFUM0FkNy9XSzVNcWNGano3cW15UmFpVGh2VDFUdHhkZGVnT0pJanZ6?=
 =?utf-8?B?K3ExZUErODFzWEVUMndEenhnZ2UvNWxyVzlNcXc3RzFkWDJML2tISDFQeXgx?=
 =?utf-8?B?RTNNZVJHNm12KzlKZjBqakpZME9Oa3FGelpJTXExT2VwbWtnOXVNU3RoREJS?=
 =?utf-8?B?aTBBazYrWUpDTTBkS0VPS2E5KzNsaE51TVJDTW44YUdMd3pKY2gwUjdDb2I4?=
 =?utf-8?B?ZWovYitEWTc5Nm1WSHdVNVdKRzBVdUdCNVJpU1pxcTBnUThkclEyWHQ4aTFh?=
 =?utf-8?B?UEl2anZlMUNKUk5vZDc3aGZrSEcxZkQwVWErRmJTOHFzNWxIYnBMNE5STTkx?=
 =?utf-8?B?U0grZG5sR0pPRW1nMXo5ZnZETURaM3ZlaUtEYXJXV2lCM25BS2ZHUmFISC9P?=
 =?utf-8?B?UmxMZFMxZXMvYlQvclptRDExYnVyRGNLbTVhR0RvUkhYZVJ0ZjZJYWdMODBE?=
 =?utf-8?B?djhjNzgyV3FwRTBISEdVcmhQU0xJQ2Frem1rcWtzaTk3WitIc1A1WUlBSEpv?=
 =?utf-8?B?N3JOTzZ2eXhMcHpobmV1Yzg3NXMxRXVxZlcrdTdvaFM3WWxad282Si9pZURs?=
 =?utf-8?B?ZHdubnRycGpFK1RxRWdnd0djeWdwTzd6bm1VWG9VZ25ZZnF5ekp1ZlhEWFMw?=
 =?utf-8?B?bnIvcTNHTHE5WFc2TTQxWGh2QlB1a2VQM2hKaXQ2cUFpa0kzckRnY2hGYkxu?=
 =?utf-8?B?dlV2SVY5SEkvNFhaNXVnYmpQOW5tQ3JpcGxpTjRXaCtqTDlwQWhiNVlMYW91?=
 =?utf-8?B?UmZsaW1FRDZ1QjJVTDZ4N1ZOeDFiRUxhMjFHNVpDTlNEaWlMdHN6eTJwMG5H?=
 =?utf-8?B?Z3Y0MjFXQkNHSUh5cURFVWtTNlNzV3pieU1pNzRxOXN2eWVIeUxXWThlZWc3?=
 =?utf-8?B?TVIxVU5BamlkU1FhV1V6V0VMSmJhWk93cHkvYW5wZ2JXanBOUVRZd0RzMGMw?=
 =?utf-8?B?L3RZVFBsV1F5NG0wM01OR0N1OTd5V05GQnhWcGZoNlBVa0hycGdkWDBtVWU4?=
 =?utf-8?B?UVdCd0UvUWNtd0owSVo3Z0VqcloxVEN0cUFnQkV3L1lUb0VpSm9DNmYvTkVW?=
 =?utf-8?B?UDE1T1YrM0gzMnRidU55RktmTWRrTDBEbXVjc29MVTB2NU5vd0c5d3IrcDMr?=
 =?utf-8?B?cFhDdzRKMDlpOFFYZE9QbzBxazUwNVhMQW9ENVlhVDBuUy9malZhQ01xQU9Z?=
 =?utf-8?B?TWxuNUN2NkJKNkpIRUMwMFByRFM2Nlh0aGNScHZDOEt4ZzlhTFJnaTNFYnJS?=
 =?utf-8?B?Tk4ycjc5OFBVNEdjM1hHQTE3ZWFLam9ob1R5ZDB6VVlVMk9vYzB1K1JieWNy?=
 =?utf-8?B?TU0rN3hWRElJZGNEWnlveURLNFlPRVdERDZMVVl4RHVJUVk3ZlMvMG5TMkNO?=
 =?utf-8?B?bkYyWS9wMzVsNE5ibzBCQ3ZicW4wLzZGeWt4NnNYZlB5bUdYc3Q1b2dYcXFP?=
 =?utf-8?B?TzZzcXRJY1dqbGgyc2xvRDhjZS83eXFFWHJEdUhXYWgwK0FPWkFTdi8zNktk?=
 =?utf-8?B?NkpLcHFqREJudC9sU1ZGTDdpemRwd204UnNrclRUdGhnd3RaLzd4QkFIaXFa?=
 =?utf-8?B?WVBJRjJkOHVSOTFZOSt3MklHdVhiZjVmOHl5WU9SMWdWUm1taURXaXlRYTFx?=
 =?utf-8?B?V281SU15RmtJbzQ1V2hKQ3ZZNTVid1ZOaDdha3Izd3piODNNUkYxVzRyQlJw?=
 =?utf-8?B?NkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3704a79c-c186-4791-f57c-08dcd0a4bb5d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Sep 2024 07:55:11.7580 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: r5RSReftCw/HZRPWaqpbbdIeD2oWYiupeqSDlpm1oRx7ogE2r8uElnzW3EVsKysmNq+l37QbpVIcZBoMoyL708m4dhOLjRz9bMxokK42DG8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6168
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


On 9/6/2024 8:59 PM, Ville Syrjälä wrote:
> On Fri, Sep 06, 2024 at 06:27:59PM +0530, Ankit Nautiyal wrote:
>> From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>>
>> We need to add a new sanity checks and also do
>> some preparations for adding ultrajoiner hw state readout.
>> Lets first split reading of the uncompressed joiner and bigjoiner
>> bit masks into separate functions.
>>
>> v2: Fixed checkpatch warnings (Ankit)
>>
>> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display.c | 65 +++++++++++++++-----
>>   1 file changed, 48 insertions(+), 17 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index 3278debf47cc..cdc7531311fc 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -3580,51 +3580,82 @@ static bool transcoder_ddi_func_is_enabled(struct drm_i915_private *dev_priv,
>>   	return tmp & TRANS_DDI_FUNC_ENABLE;
>>   }
>>   
>> -static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
>> -				 u8 *primary_pipes, u8 *secondary_pipes)
>> +static void enabled_uncompressed_joiner_pipes(struct drm_i915_private *dev_priv,
>> +					      u8 *primary_pipes, u8 *secondary_pipes)
>>   {
>>   	struct intel_crtc *crtc;
>>   
>>   	*primary_pipes = 0;
>>   	*secondary_pipes = 0;
>>   
>> +	if (DISPLAY_VER(dev_priv) < 13)
>> +		return;
>> +
>>   	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc,
>>   					 joiner_pipes(dev_priv)) {
>>   		enum intel_display_power_domain power_domain;
>>   		enum pipe pipe = crtc->pipe;
>>   		intel_wakeref_t wakeref;
>>   
>> -		power_domain = intel_dsc_power_domain(crtc, (enum transcoder) pipe);
>> +		power_domain = POWER_DOMAIN_PIPE(pipe);
>>   		with_intel_display_power_if_enabled(dev_priv, power_domain, wakeref) {
>>   			u32 tmp = intel_de_read(dev_priv, ICL_PIPE_DSS_CTL1(pipe));
>>   
>> -			if (!(tmp & BIG_JOINER_ENABLE))
>> -				continue;
>> -
>> -			if (tmp & PRIMARY_BIG_JOINER_ENABLE)
>> +			if (tmp & UNCOMPRESSED_JOINER_PRIMARY)
>>   				*primary_pipes |= BIT(pipe);
>> -			else
>> +			if (tmp & UNCOMPRESSED_JOINER_SECONDARY)
>>   				*secondary_pipes |= BIT(pipe);
>>   		}
>> +	}
>> +}
>>   
>> -		if (DISPLAY_VER(dev_priv) < 13)
>> -			continue;
>> +static void enabled_bigjoiner_pipes(struct drm_i915_private *dev_priv,
>> +				    u8 *primary_pipes, u8 *secondary_pipes)
>> +{
>> +	struct intel_crtc *crtc;
>>   
>> -		power_domain = POWER_DOMAIN_PIPE(pipe);
>> +	*primary_pipes = 0;
>> +	*secondary_pipes = 0;
> We seem to be missing any kind of check to make sure bigjoiner
> is actually present in the hardware. Or am I just blind?
> If that is the case we need to fix it up before the
> refactoring goes in.

We have check in DP, and in one place while checking for maxdotclock.

But yes its missing here. I am thinking something like: 
https://patchwork.freedesktop.org/patch/612875/?series=133800&rev=7

Will try to introduce a the check here prior to any other patch, that 
can be used in other places.

>
>> +
>> +	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc,
>> +					 joiner_pipes(dev_priv)) {
>> +		enum intel_display_power_domain power_domain;
>> +		enum pipe pipe = crtc->pipe;
>> +		intel_wakeref_t wakeref;
>> +
>> +		power_domain = intel_dsc_power_domain(crtc, (enum transcoder)pipe);
>>   		with_intel_display_power_if_enabled(dev_priv, power_domain, wakeref) {
>>   			u32 tmp = intel_de_read(dev_priv, ICL_PIPE_DSS_CTL1(pipe));
>>   
>> -			if (tmp & UNCOMPRESSED_JOINER_PRIMARY)
>> +			if (!(tmp & BIG_JOINER_ENABLE))
>> +				continue;
>> +
>> +			if (tmp & PRIMARY_BIG_JOINER_ENABLE)
>>   				*primary_pipes |= BIT(pipe);
>> -			if (tmp & UNCOMPRESSED_JOINER_SECONDARY)
>> +			else
>>   				*secondary_pipes |= BIT(pipe);
>>   		}
>>   	}
>> +}
>> +
>> +static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
>> +				 u8 *primary_pipes, u8 *secondary_pipes)
>> +{
>> +	u8 primary_uncompressed_joiner_pipes, primary_bigjoiner_pipes;
>> +	u8 secondary_uncompressed_joiner_pipes, secondary_bigjoiner_pipes;
>> +
>> +	enabled_uncompressed_joiner_pipes(dev_priv, &primary_uncompressed_joiner_pipes,
>> +					  &secondary_uncompressed_joiner_pipes);
>> +
>> +	enabled_bigjoiner_pipes(dev_priv, &primary_bigjoiner_pipes,
>> +				&secondary_bigjoiner_pipes);
>> +
>> +	*primary_pipes = 0;
>> +	*secondary_pipes = 0;
> These seem redundant.

Will do away with these.


>> +
>> +	*primary_pipes = primary_uncompressed_joiner_pipes | primary_bigjoiner_pipes;
>>   
>> -	/* Joiner pipes should always be consecutive primary and secondary */
>> -	drm_WARN(&dev_priv->drm, *secondary_pipes != *primary_pipes << 1,
>> -		 "Joiner misconfigured (primary pipes 0x%x, secondary pipes 0x%x)\n",
>> -		 *primary_pipes, *secondary_pipes);
> Where did this go?

I think this was unintended. Will fix this.

Regards,

Ankit

>
>> +	*secondary_pipes = secondary_uncompressed_joiner_pipes | secondary_bigjoiner_pipes;
>>   }
>>   
>>   static enum pipe get_joiner_primary_pipe(enum pipe pipe, u8 primary_pipes, u8 secondary_pipes)
>> -- 
>> 2.45.2
