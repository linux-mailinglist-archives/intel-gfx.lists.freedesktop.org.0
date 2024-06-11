Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26978903C8E
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2024 14:59:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D23C010E62F;
	Tue, 11 Jun 2024 12:59:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G0uB4k7j";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E7B510E644
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2024 12:59:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718110759; x=1749646759;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=NbqhyhRukD7oVw/4JhxNSGedSoQeuoks65HUunpz5vc=;
 b=G0uB4k7jPMdtAsN/v3Ew7aKMj6cbumURqw1ZmHvReH3rCefi3T59lxDi
 exmBD3c/iG29jJZklyq2fd7plRmoY9e+Gmqj2r8+XBZA6qjSup5q5pU+8
 t465ffJIPBTJwxjOhe0mkTd148c9rGm0h5QcWNLE+2Iz9hQkjcGRQyLOC
 IrdxC1P+6RD9ezPaOu0lzMCuKo7shheZxxwFMNUnmKO+OD/8pPIWIVQ/p
 dacPQMUPkaHaL7sEgUpfRuSmygmOXowAhKzeLO0E1z4NgKizFQERocRNF
 tLel20LBzuU9paRSEQSLhUZ/pGS3x6ehGefHLCM+aDH1784Pz63inxCtA w==;
X-CSE-ConnectionGUID: TlXGUlF/RPmR3fogRPFbDQ==
X-CSE-MsgGUID: eIQUdmHQR6Cnsqf0ySVt6Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="25441221"
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="25441221"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 05:59:18 -0700
X-CSE-ConnectionGUID: 3HXuQhelRcuRVgcj1kUSmA==
X-CSE-MsgGUID: cY9WiCYxSACRgHiSrTf/vw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="39504505"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Jun 2024 05:59:18 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 11 Jun 2024 05:59:18 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 11 Jun 2024 05:59:17 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 11 Jun 2024 05:59:17 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.48) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 11 Jun 2024 05:59:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D5lE16CDjiLN3B2YBFdvv2iCJSlI/G9JOSQT8xQ3gQyBdUbg9PvES1ivvS4dpktEujWEjd/jlODs5Z7V5nbIRB2oHauG1PxcIWyzUkbj7uq9ODHn6LsP/JOYB7O7F90ElAV5EsaDHt+WHdsE1DMXBfZYOHGJnz42D4bUTMXythAob+gQLJRnrvTN4khYXORMCVQnW2dZfju5mZWt3IZillvQtPrrA6gQ0Hg0LlSFGHQ82Zt9na8CB+/DhGUDrvPt57h6shujhHMXYOvX7ZItVY7F4qlzDD/LWp3yieNNcPKhczMuf4r+V8DwA/Y8e/88IhN+3S4Xqo9LUcO+JTZEJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rvmacap2/KleBq3mI/N0GXzzup0SIJDNX8f3bd73+YI=;
 b=el+byZmFrKx/laxhr+3WDwhmyZ/qISHbQrQaxLC+iEOGOhZwJ5D/215tieOZVfNf/dUbeQWwNxFgwIJutDcd3dFdGXv51j8IyuB7PDZVGZBjCtoylHDi+fS23ovjT4zJhylmgcwMeybnA6Zkalc00jrOAUXa41Dwt5LSxbWNr8OAhoq7xJWmASx4Fz3NJKPp4K0jB8uOQkpKGUol4ki16mlGUK/7Piq6fBGxNUNQTFOJ0RkQBDlxenvey3/N9PJu9TCbrpFmZbg2AUZAYHpUyCHFoe74W9xO+DYJUQQJF3OjbUwEnYu1owzzf2oT99ew+sasQ8U/1wsHo6Pos/I75A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CH0PR11MB8234.namprd11.prod.outlook.com (2603:10b6:610:190::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.37; Tue, 11 Jun
 2024 12:59:15 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%6]) with mapi id 15.20.7633.037; Tue, 11 Jun 2024
 12:59:14 +0000
Message-ID: <0636093a-6ac1-4e35-9c9f-765295ad3eb7@intel.com>
Date: Tue, 11 Jun 2024 18:29:08 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/display: Send vrr vsync params whne vrr is
 enabled
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20240611120525.148042-1-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240611120525.148042-1-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0P287CA0008.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:d9::19) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CH0PR11MB8234:EE_
X-MS-Office365-Filtering-Correlation-Id: 76353346-0691-4118-76ed-08dc8a164bd6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?T0Fmb1hWaTNad3dNQjhVMThneUdnZTAycjBGdGNJcXJmZXlJZVpqcXVHUWJF?=
 =?utf-8?B?MWJuS0FoUDRjbWVWSTRqU2tVc3lIZzhCd3Ivb2dzRUhnMUVzL1pGYkR3a08y?=
 =?utf-8?B?YTc4bEphR1phWW1TMWp6TVJ1U2tUUWYzTTJJWE5DYUN0Q2dnUFkwOUk3S015?=
 =?utf-8?B?K0V5OEEyaVcrRlJGajJOZzZhN0tydmRxaVpJSW1Pdm80RWt5TU90dVJaV2gr?=
 =?utf-8?B?NTNLNFQwUUNNV1A4VG9zcEEzSm9qbEhUODlOb0Q4Sk1FeG1pd3I0NFdBcDhI?=
 =?utf-8?B?MG8xOEdBZ2trMEt3a2FzUlBLR2VhczUvL2s4eW9ES0ExZ3M4cE1qbUVzQkZ2?=
 =?utf-8?B?eUNnSzcvOEl1UWd1Z0ZETVFIckUwaVpaRmJOdXlLdUpiSjBVV1F4V0duZ2Fy?=
 =?utf-8?B?VUhuQityUjNOMDI5R0IrSDJhU3FmMm04UTlwU1BqcWU1Q1RpcmdGTCt6b0Ft?=
 =?utf-8?B?R2p4UmEydlAzZ29CdVZ0STRaMzdlV1hYN2V4Z0REVGJ0M1hMSUVjVXVWTGpI?=
 =?utf-8?B?OXNPZEE0c3pHN1ZEaGd1RTV6bVRmMEVJYlVqQXpkK0p4UmtUWS9xWmZVRlY3?=
 =?utf-8?B?VFV4dVgwWkliYVZIZGNVcHJEMlgxUW5qcnYybndjYk9ScnRoTkZ6V2xFbGwr?=
 =?utf-8?B?elVWUk5sMU51QlgzV29mcnJKbFl3TDFsWHBxQVo4TUtZZVFCV3o3Rzhib04y?=
 =?utf-8?B?b01mRHZwY09MMEtRc1RzZHI0TXloSkhjTVM5T0toNjB3UzFZcCtGMSsrbEUx?=
 =?utf-8?B?b0NPOHhtZXVMQTJOYnFDbHZDUndtZ2lrQS82alp1TmxDVTRjVjBDankvSTRO?=
 =?utf-8?B?TVQyTVVsRmZlR0xoYm56UHRqZXFyMXRoZFhmUFNFWmNWc2pVSmhwMG5XaEN2?=
 =?utf-8?B?S1dZa0U0dXliZkQyQ1Z4SmpUTkJoNTNwRzhxSG54WFpwcmxqQXdvTmVNdnlU?=
 =?utf-8?B?c0psM2hsQmRGWXFsOVNyM3VZaStweitGanpVSnJHeXExQldoQ3VHREZYRHNG?=
 =?utf-8?B?YU5kTjhpQ2IzYlVBYXFzUWFaa3BHdm56Q1ZvY0ZGcGpQV3JTc2U4MlJBU3ZU?=
 =?utf-8?B?ZFY1alZISmdhV1Y1K28zOThlaVg4b2VmQUVaSXNXVjRzSHd6T2tXN2RZRmV0?=
 =?utf-8?B?VXVFbVpLRUVyVXZyWENISnVzaWdnSmhnUTRsZy9qZE1STkx0T2VFODFZMy8z?=
 =?utf-8?B?LzRtZjZHc1Y4dmwzYUVXNlU4ZkdGcnNkdFhWTzZ0QkgrTGc3bmhudkRQd0VU?=
 =?utf-8?B?WmNvWmlZK2tScnowS210SEU0QnRSK0JKR3lwRWN4K0txRm4zQzB1QllpVlZR?=
 =?utf-8?B?SW1qWTRKNUQyRFhVMTV4dFFGckFua2gwbHBxckxjVlYzTG5oUHR6WjBXYmVY?=
 =?utf-8?B?VDBkWnRGMGlWbWRRTGJySkVkay9DYkFFNmtLVzFkVXFMTGhMYWxSTGJFd3ZS?=
 =?utf-8?B?aTd6Rkx1ak0rUzNISW9KYXVKWGZCOUhvYjdiTXFwSGtNVzU1TEd6dWErdlRD?=
 =?utf-8?B?cUdDVG8wSlFyQXFiTjRvakU2WXF5OWg2OFVpZzRkOXZEdzY1cm9UMU05N3Fz?=
 =?utf-8?B?SW1ON1dRK3djL0hzU04zVFJaSzI5cm96Y250YThNUXNKZndIZnpJUWF2N3Yz?=
 =?utf-8?B?d2k3bnB5ZUp3dElKNVJvWTROb1dKcUxHUU11OTdjZ2RBR2FON2MraHNMUFhT?=
 =?utf-8?B?T2xBcThZSXlEaldrKzdFazEvZklRVGlBOS81ZERDbTltWHU0ZWZPMVZkSDRK?=
 =?utf-8?Q?n7dnYTedJyEXC++G9S+v0U4RG6CVoi5m1LNp1Y8?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WmhKa3RCSktISm9EV2V0VWs0ZVZ0bGdtNDFOMWNEY2FDMTBpYVkxeTRBMDRC?=
 =?utf-8?B?M0QxMmt1K0w5Tk5JZEp4NjR2K0tpYzBRUW5ScXBoYzJJM0JWdGVmRnhBei9x?=
 =?utf-8?B?dFZlVUF0cFU0bnZHKzZDVktOU0c2d2U0blZEdExWQ0NRNU0xdTRzUkFFMHBq?=
 =?utf-8?B?b2xCTmxtL0N6OUx0clBYaER3Ky9mYnVSSTFXMWF2YUVlS25BcS9xcnRIeGlU?=
 =?utf-8?B?UjZWNFVVTnFBbVBNK3Zwbll1YzlFakZKdU1JYXM4MFF5a0Rka1UrYStMRGFz?=
 =?utf-8?B?a2tqSHM0TEY0M2l1UE8yZTllZEpMNm9hN2R1L0dhczJ3NXE0ekw0amtnRzZu?=
 =?utf-8?B?Ri8rZS81V3J3K2VpVDdQZ3J3cFp3WmxtZDJZN1ROb0p2OEc5RDcvaU9TNkwr?=
 =?utf-8?B?RkRFdHcyR0N6eHlGeW1mZitiMmV6UU5hODNRdWVxQVB3MzdIZUxRSXFPR0h6?=
 =?utf-8?B?QUs0QnBvdGxiOWxiWnUrUkMzZFA1R2FUc1FpU2l2cnBpUlFicmJLdWRYRlRS?=
 =?utf-8?B?eDNUSmk1OE42anNoYTRpQjNDL3pwcFk1d1RhNFBqNkszQjdMVmY4UmdoWmg4?=
 =?utf-8?B?OW5RY1JjTm1XYmhTRUJDYXdLRWtlN3V4TUJMeGY5Q05MdjdONzVuRCtmcHFw?=
 =?utf-8?B?Zlg2a09aZHRKTXNzaHBKVkpIcFlqQ2FZZGZGRTU0ZDJ0SFoyYTlqeVN0dmw1?=
 =?utf-8?B?endUSHY3N0JSeHZYRlVvMmhIODQyTUtReHRwY1RvOVJzbVdXRkVYY0tlbDRQ?=
 =?utf-8?B?SkN3a1F0akNTUlBpaitwTE82Z2xjUHlGL2xZbEk2alRmS1hETmtzUWc3Z3J4?=
 =?utf-8?B?RzBGM2FTRkFsREVoak01OHpXN3dQeEdnNFpZWTY0QUM4TFNOUkdKUkRYVVdp?=
 =?utf-8?B?ZGFvclM5dXhNbFhGSlY3M0VGaXR6QmdCL0w0K3ZYenRrNWN2S2g4amxHQ21E?=
 =?utf-8?B?cEFMY1gwSHFLZ1NGbHZmaS9XcHJPa3dteFFiWUEyQUhOditMWHM0SEo2V1l2?=
 =?utf-8?B?NXNaeWkrV0swRnlGbzlVbFhGRUE2a2paVG1UMGdra3JvZDgzWThRMUJHWVU4?=
 =?utf-8?B?SUFWSU91NkJjZ3ltdVZnb296N1VjdVFZNUhEUTJJVWFjanpYdDc5UmFZeWdy?=
 =?utf-8?B?ZmFQWmlGbElRSkJvVSsweDNvYi84cTdNTytyczRxMFlVMEZxSDRleENPUDhn?=
 =?utf-8?B?RVEwM2kvSnd3OXVndkFia2dQdnhkNDlSOWNDbWdlNTFxVkJndmJ3NWR4bmlh?=
 =?utf-8?B?WDV2b3J0Wnkwck8xNWtuL0wzN1ZYZ29LbTRaU0FoUE5TTDlZWndaV1kybm1k?=
 =?utf-8?B?ZlZGSXpLbEhUMkxKNXNzWUxMM1J0TUdTNTl1bCtXa0RvcnpQZDMyWEt0SFZa?=
 =?utf-8?B?aUFRdFA0aDdLKzZaSVNaSWdnZFRZdW9hb0NVeklVVjZteW16OWxra2pZU1Vw?=
 =?utf-8?B?MlJMWlhQd1R4a2RBWEx6bTNuVkdtMXp0V0dxZWJnVUVrdWJiNUNYblROakVt?=
 =?utf-8?B?Z0pzc2FjcTNKa1g5T0ZUbVlJQTRpRHU3aVltWHpWdWVGUmRIenNsUmxWSDBV?=
 =?utf-8?B?ZGJ0dHVhZ3QvZ2s4SDh1N0tnNDZzaFMxTTdlbWFGelpKQVhlL0R1bnRJWk1o?=
 =?utf-8?B?dFZQUllyTGpsV2hZNE10U1kxVkJsekE2dDliejdZR1Y2bGwxTlhRaWZwZFdu?=
 =?utf-8?B?Z3pTeUloTnNxVEYvVTFGWW5qSkVvem9OaER6bGJPQmhENWt6VjFDNWtGRnZX?=
 =?utf-8?B?NnUrNWlvT2t4TDRwWFpBdVpWa2Z5aHFvN1A4RlB5UEJ0bDJpdzZUR3M3alBR?=
 =?utf-8?B?UFFzSzhqSHdmUHZkZGY3ZUpOR045N3NUMERYeFBJTVR5Z3dRRGxnNGo1TVdT?=
 =?utf-8?B?MHNVeWowZnFVS2l5b241Y0lDTkw3Vk5Ibk1ZMEprU0QraEJZenpQbk9LRUoy?=
 =?utf-8?B?TjZhZUQyZUZtYjh1NEE2Z2JoUGx2bUUrdUlFczJsQXpkM1EvaUU4UGdBak1p?=
 =?utf-8?B?OC9iVWovYzVkSGVUTzdGQUhwd2pYc2UwazBYR3QxNFBSbXVvSWp3OCtMRzg4?=
 =?utf-8?B?Q0tRRmNtMUZaRTVzdk1keEhabEFOdlNON25kdTJHanZ2SnpHeTBzNHlRbHMw?=
 =?utf-8?B?OWpRR1NZYmRjRWlpUWZPY3pXNXhSTXBlakg1QVoxWDBOd1kvcmo3elhsTnh5?=
 =?utf-8?B?cFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 76353346-0691-4118-76ed-08dc8a164bd6
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jun 2024 12:59:14.7408 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /06zOP+xr//98cviSTgBLCeRMrPGWNBg/VQk429igbZVLKn3Gzaof4OK3BIU5v4kIYd8q5h5A3Cb9hv0a+fIltBCbHT3pkckutrnWrRpz6k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8234
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


On 6/11/2024 5:35 PM, Mitul Golani wrote:
> Compute trans vrr vsync params only when either VRR or CMRR
> is enabled.
>
> Fixes: 5922f45329cd ("drm/i915/display: Compute vrr vsync params")
> Cc: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 05f67dc9d98d..dc9cf7ddafe9 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -232,7 +232,8 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>   		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
>   	}
>   
> -	if (intel_dp_as_sdp_supported(intel_dp)) {
> +	if (intel_dp_as_sdp_supported(intel_dp) &&
> +	    crtc_state->vrr.enable) {

I think we spotted this, but missed this change in one of the version.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


Regards,

Ankit



>   		crtc_state->vrr.vsync_start =
>   			(crtc_state->hw.adjusted_mode.crtc_vtotal -
>   			 crtc_state->hw.adjusted_mode.vsync_start);
