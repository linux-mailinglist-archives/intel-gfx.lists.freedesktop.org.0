Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13BB7BC37AE
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Oct 2025 08:34:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7198410E75C;
	Wed,  8 Oct 2025 06:34:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X0WWvbAx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EE3D10E75C;
 Wed,  8 Oct 2025 06:34:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759905280; x=1791441280;
 h=message-id:date:from:subject:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=osEvKTYRd/T55DtLyP8pSIqMpqIjEo046tmPDH1GfWI=;
 b=X0WWvbAx5gjgZ/WjzLLq844XxMfs4KJuxB217MWtRe/JNyge6jt54xlh
 tQrCf54tIF+Fmbkq4cyGBGTe4qCrWSA5zQOkP3mjNwefm4qvdo3IaG8TK
 JwoqQnAbX9Jx1y4n6ZN1cbv5KWRE18dpoH/TctxmJDZJ+g6TNjH4nI6ot
 FcjvXH6WIyH8WPn0Z8SBto93iijXg5y9C/hx53Mfkzto+LYw8AU+LVOlZ
 JOkbQSAk0rRt8Y5KwWK1jpPl7Q2SXKo8BETfw8fwwI8L87/0q4J9bSxNI
 VzWXl2R1k/9C/gYnIct2zfAHHbh6UWJuo8UT2JayqFcC/HIs1AkOPtFFx w==;
X-CSE-ConnectionGUID: eu+ZkE6HS/aLC2FAK8XqDQ==
X-CSE-MsgGUID: ZTv8HYT4QlOtaKTLhF5gDQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11575"; a="62135145"
X-IronPort-AV: E=Sophos;i="6.18,323,1751266800"; d="scan'208";a="62135145"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 23:34:40 -0700
X-CSE-ConnectionGUID: Y4bskpXXShagmRJxee1GVA==
X-CSE-MsgGUID: 0X6Skj4nTvCoTzsAuR+wsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,323,1751266800"; d="scan'208";a="179950713"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 23:34:39 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 7 Oct 2025 23:34:38 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 7 Oct 2025 23:34:38 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.6) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 7 Oct 2025 23:34:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PPRIfIvmFhiFtVmZozKhAN1DUCvgOHfSZ6cXC+Ls9F9yMRZpKJXlSw6Mnx/pkLuAv9b532LOBPjYlm8eXJ2vOTwoBuZ7IIuJ7g/jVIkV3N0+m2m1qs5jsco1mqATptWdn7iX8pEEOtrBg5yKCFs0kzHUlMBGVziuZISK1wWvMdnhMvBCOAkddx+HzHPG6dbHe24pelRECQi7Fk7N33rCWR6bzu+aR0R4lhBmnHELBOVw9U5VSjE7+uBTTJr3Tug/Eglac0BdjvFBKrn6Vf5IBq7n/Rp+YLKZj3Qi+b3OC0FLBAhy0GfAPvYhISWPO7+5RuGsarvX178Epif8bz+mMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QpHZ8kB+FcUCB8DlG/taP6JSTV+/M93D/XCzy2TgHMc=;
 b=eWFyhoUM24EmU5nj3BTLKNsBa7qSkQ8v4eZ1feA6tUy57aGJwdTCI5ae1RtJDt0aWUm0Mfz7/1EnLQ3pPPBmTNcDyhfO+UReNdc6KEM14AD+sgmz5NFCznP0mRpcYglO0RNdzkHziVEUACoCpfpU2pMuozXtw8nZDZNsUYZuneqK08zW0hisBkwgZ87MlE8AH7Thv1vrgq4HfLjHyDHwa8MTSSRZxP+t99Fu+oS3/7TWAeixV8gkwzLzuqTeV9Lbld50DDLal6a6GM7rIr5g+BuPXK2Uwb4sDXKTRU8mulz/cK/x3JTs6pvpB4IjH9ajO/6HINnHuAfsjt2FUGOabg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SN7PR11MB8042.namprd11.prod.outlook.com (2603:10b6:806:2ed::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9182.20; Wed, 8 Oct
 2025 06:34:31 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9203.007; Wed, 8 Oct 2025
 06:34:30 +0000
Message-ID: <4bf6ed9e-e419-4309-aa2f-070372520763@intel.com>
Date: Wed, 8 Oct 2025 12:04:22 +0530
User-Agent: Mozilla Thunderbird
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: Re: [PATCH 11/16] drm/i915/vblank: Add helper to get correct vblank
 length
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20251006042852.263249-1-ankit.k.nautiyal@intel.com>
 <20251006042852.263249-12-ankit.k.nautiyal@intel.com>
 <aOQe_BRj8-dQmKGO@intel.com> <f1a8c1bc-6977-4ba4-9ffc-b1a4922d3f43@intel.com>
 <aOUu6WoGHhYv4mRy@intel.com> <aOVOJp2zeN1eCp7O@intel.com>
Content-Language: en-US
In-Reply-To: <aOVOJp2zeN1eCp7O@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0P287CA0011.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:d9::7) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SN7PR11MB8042:EE_
X-MS-Office365-Filtering-Correlation-Id: f5350f43-c31e-4d92-a611-08de0634bb6a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RHhGVDBic1RVUlZRV1loeXNnQUNaWUVON2xoZGx6MFFrdTIza1lRN04yTzc3?=
 =?utf-8?B?c0xIM2NxZUE1NmJuNjl4QzdGdTRNQWNmeW5pd3hhTmNQcksxTG9LV0VNeHU2?=
 =?utf-8?B?Mkd6eDMxRlhDTXp3V2hNeGpFcE83SUZSa0F1TE11eUE3dnV0SWJ5OXQ1OERB?=
 =?utf-8?B?T1BtRURlck1mc3FucmNiQ2tuNXFqYnJhYkZkMWxpbDNMZ2tGdjhGcGsweEZj?=
 =?utf-8?B?eGRyaTYyQVZ6U0RzR3VuNG9DRCtDRFJqam9ZY2wyNWh1TTZMeWN0cWE3VXRK?=
 =?utf-8?B?TUtvMVZtZnducWRuUkZjQ0N6OHBibWVqS3hYNFlnUHZjd2pxeXJUdW5TNmhp?=
 =?utf-8?B?TmcxVC80N3dZZ1p6MVRwT2xlVFY0djNKM3FlZ3NzYkh1VTdtRkNjMEJIRzdO?=
 =?utf-8?B?NDJUVmp2c1k0R3FkeTg3WmxpMm5VSWcwSi9CdEM1elJRSW16QmJMS3pvSXo5?=
 =?utf-8?B?Ukkrc21oS0cyRzRTOUNWck1lQlVJZGNxTkc2N1RCWk83YWNMWUppMDRWNkpD?=
 =?utf-8?B?bURVaUJjOHpiR1BUN012cnljcnNBNkpGWVBXYzdGclB6ZTdUdHVyemxtd2tM?=
 =?utf-8?B?d0txUWJTT1liUEdkTzBhdHZLZG9qU1FZLzlaUkM2SEc5SC9iM3FHRlpEMU9D?=
 =?utf-8?B?aU9kenN6T252QmhHR2tsbTZQUmVjalRhSjdxUlNzd1RjSWVpcmxEbmlvajNl?=
 =?utf-8?B?WmlVN2d1MUxFRkRld0wyYTZad1ZyYTFZd0RhMERoVnc2bUZqandQeXppSGxx?=
 =?utf-8?B?VE15a01makFkRmtOYzVLTlhQWHNld1ZJK3dQSXRuTXphWmVHejh4a21KS3hu?=
 =?utf-8?B?OHpreWFzSkdndDZvTWY2OE9nRW5WSy96QmwwTGFmNHpNblVVUE9RaHduTGMv?=
 =?utf-8?B?YmtCUG5WMHphWnRXQkQ2blJvcWc5bzAxTDMzMGhwNiswbFZCelBydzJ6M3Bm?=
 =?utf-8?B?dXZxU2wxZFRBMWNNNHQyRVY5RU0wbThaRHlQSm95RDhxcVNJNXZxL3JZblAr?=
 =?utf-8?B?bHBYdEtNdjJxSE1oZGJCWXhKSGk3d1MxWEFEVHcwYmNxeTQ5L2FBQjh0Tmx2?=
 =?utf-8?B?SjlUL3ZiMFhLYnVHRnV2VVliREF0Q0FlM3JCem5aVGR5TGJSK3RsNkFzNW5h?=
 =?utf-8?B?UHIwc2RKTERwQmdFMGI5UDg5V05xazVtWndQdEZ2WGplTERaaVdvbkI4eVVh?=
 =?utf-8?B?SEFUQjA4SmJnVThmdmdreFpGeU1DV1NqbiswNk8ybVFYaG1LOTJQcFVUaXRw?=
 =?utf-8?B?OHJhWE40ako1bk1iS0UwdmgrZEI4eDVKZFl0WExIbFpjY2g5TjhnODI1T0tn?=
 =?utf-8?B?MDZuRWVCQ3p4bnRoeitFWWoxTGQ0YnRORyttN1UwbTVyRU8waGhpend6alFp?=
 =?utf-8?B?Slk3OU01QzBDeUtMeEZPRk0ya3o2c1dNYlF1bGlXb0R5SjA0WnpkMXBxUkxV?=
 =?utf-8?B?aE1RUHBLRXkxbEhDbElMeWlhcWdHM3V3VzJINStuNjN3RS9kak44cHl4T3Bz?=
 =?utf-8?B?QlhNbWhOSy9IUkdYKzMvS3BFazlwUlErYWJUaUxHR0pTZWpObkJQanhFaGJ0?=
 =?utf-8?B?aHRwK2E1Q2tJSUh3QzRwVE5SZ2RUQVRNdU83T2RCYkZRZWgyQlZuMFdrd2lR?=
 =?utf-8?B?RlpUQ1kyNk8vakZWY0tmamx4bXVLSVdtME16MDNMaVJLcUw1WFJadEIyOUlD?=
 =?utf-8?B?cHQyQVFFd1VBRlNZNGZNaVRqRm1rdzlQMnVVbCtSV1lVazgzbDcwQTc5dkU0?=
 =?utf-8?B?MmNBd1R3RkY3eE8wZE9WSXZzYmxwcjNpdEVtaXk2YjlmU21Lb1gyYWVqYSsz?=
 =?utf-8?B?Z0NlQkQ3WkpYR3F1emllSHdJMlNvZmJvSVVDMTZKdGFRU0cxWE5YZ3AyQlZ1?=
 =?utf-8?B?Q0UrSUJqQ3VXWnozQkNmdlhtVTlFNk9HbHBCRkV3UzR4Ni9oNFNUa2EreldW?=
 =?utf-8?Q?NA45qVC6DOm21gQ/QgPGBfi990P9FQ2P?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RmN3T3lyUFF0YjVmUjZBT0hZNUtkNEJkL2tjWTczYWx0cXZrV3JUUlQzcEVF?=
 =?utf-8?B?MGJPejBZK0hIdWQwSXY4eXdTL0RiZnVoOVFqbm85Q0V2SnFEWE1WSEp4dmJX?=
 =?utf-8?B?K2o2Z2Z5RUdma3BOOUc2NVFqQjBpbzJybHRIRDFUbzNmOVNRNXlyejJLalhM?=
 =?utf-8?B?YnRKbElqSEpHdWs5NmxxYk1OSWVlUmFDMUlVVnJKR0Z3eVk0dTRTTytjNEt0?=
 =?utf-8?B?VnR3ekR3RDJibUU5WTl1RnNKbThWK1czOGJvR1MzdjZsTmxTek1vcktyb1Bn?=
 =?utf-8?B?VHljSXhpV09tU3VIVXRVdTMyT0NUSUQ4TGZEZThsK3BKb2lqUTdERWlJRkJV?=
 =?utf-8?B?NmFBN0o3eHFSTVlVT0U5MTh2MHpEaUwzQXREdGpZRkVjNFA5OW9zb1FzRFNa?=
 =?utf-8?B?YmxNQ0hwOG9ES0p2dHNqaU1DeHMwNlpDeVhwczgwcjByV3BrbktidFZZUU9Q?=
 =?utf-8?B?VzBrSEpQRkIySFJNQWpHVlUrd1pVSWdnbDVpalJ1R2U1V3RZWHRyc2I4SWZE?=
 =?utf-8?B?c1M2a3BUQzhsZEgwaHZ4QjU3ekI2Qy9LNmx6WmFsRld0RUxtc3gwSGxFVk1i?=
 =?utf-8?B?dVkrYlo4V3V4R1c4cjNkQzJzMFlWRFcyQkhFRzVIS0JscGFUUGowL29zemhu?=
 =?utf-8?B?blJUOElsN1BJR1NYaDA3Mk85b0IxczlxR3FtVnZ5bGx1NyttOXE4UW84d0g3?=
 =?utf-8?B?Y2U5WktEemRyL0dtcFFxN3FGNzZFUkZ1OG8vb0I0K0x2VHo3cXl2US9hc3F5?=
 =?utf-8?B?Um1sSk9sU3ZmM3FuT1BycVE3Z2haMEpadkwrNnN6SVZISmowYWZtcFNGa2Fr?=
 =?utf-8?B?RmZmaHFaR1MxWHdWV0RkdjlLR0VSdHlWOXd5MlkxSW5STXFtRkpaQ1ZCUnlm?=
 =?utf-8?B?MjJaK0k1eEEwWi8ydWdiSW5SaUlKNDI4cXV3OGw0NTkrNGN4WkJXMjJ4TGtR?=
 =?utf-8?B?TXkwYzYra05pcURycGcxckJDMldjS1E2eHByczdMaU5sQjdTb0FXeUtqRzJD?=
 =?utf-8?B?MUdURnFFbm1WbUczbFMzUXU5VkIvMi9sSlIyb2RHRUtnYWZFREsxajRxdy9S?=
 =?utf-8?B?Y3Z2cXlBTnd2d1RISWd4T3ZyZm0wcVNXbFp3enZ5UEtlRUpaa05aRmtjSzZx?=
 =?utf-8?B?K21LUTFLUVVhOEtoRWZrRXVOanlxaDkvNytSdTZOM3d6a2pxcU56bWJRUDZ6?=
 =?utf-8?B?VWJ3WVRlNGhFU2VzaGNuM0Y1NTdYdTJxNUNjVTRBVEUxdzhuVkZrbURicmkw?=
 =?utf-8?B?V2VtZ2c0NDE4K3BIV21zV29QKzN0ak5yMDlLZG9HQnVoZEFiOU1sMTJxRUp4?=
 =?utf-8?B?R1RSdU1lb1JBVG5aTmRoZkZNZVJGSUplMFZ6Z1Y0dHVQUlVmU1ZoRm0zRFU3?=
 =?utf-8?B?UzdjM240bmtUcWxNY0lkV21ZZlZ4Um9id1JlZENSWVpyYi9ORTNEM0pUMTlQ?=
 =?utf-8?B?ZlVoOHk0ZGpaaVpOV1BCVVRpc29sNmVTMUNPMHUvbHlyNStsRFJRZXVEYWkx?=
 =?utf-8?B?Q0Q2dHhkOHVLcGFzWjErLzJkMFVpWXlMdE9INW1WaGVxNVJuTzdWNkptQ3hT?=
 =?utf-8?B?MWYwZXBJa0FrTktCdWdMRXVYbmc3OTJ1WkQ2M3BYaEh6RTBVamV0MlFRMEJI?=
 =?utf-8?B?UWFwaGVtQzdPWjBGazJJSWR5QkkwVHRLWGE0RllDOEx5S1FPSzBYK3RNYU43?=
 =?utf-8?B?anlBK0pMWFdHMFNOWWlZYm10c0NwUjJxRjZTaXVqRGIwKzNwS0VVNE9IS2R0?=
 =?utf-8?B?MjJ1cjRMUGdQY2x4UGJjc3RycjdlYlRoY29lMktUcHVVbUR1N1Q0S09xbzZy?=
 =?utf-8?B?RUt6dzR5QzFDZnpDK2tuM3JPbWYvWHZNMU9yMXhjejlGd085WnoxM0xPZWNV?=
 =?utf-8?B?Y0pDMHJFbHAveTVjcEJuTzFjcTFXTm5JdHBYeEUvaG50ZW9KMnU2QkpNaEJJ?=
 =?utf-8?B?MHVaa1VLeC9ZZTJ3U296RXhjQzI1YWo5c2tCcTdwK3p0OFdNU1l4Y3kyaGJD?=
 =?utf-8?B?TDBLWU1HcDVid0VtelY5djZDVENyV3hReU9Sa1k3YmE1SFRTZ3k2WDRMNjdx?=
 =?utf-8?B?aUFMVktoZVd1Q3BYVHVwOFhQOU5pR1U0Tk1YdC9GbTlybXhOeUQwbVBDSlc5?=
 =?utf-8?B?enExQkQxWlVHS3A1aGowTU5KTE1YeGlkNnpsT082bzFJckJqR2QrMHQvWjVu?=
 =?utf-8?B?cEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f5350f43-c31e-4d92-a611-08de0634bb6a
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Oct 2025 06:34:29.1945 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZTDIzFmcdo3G6QDDidmsqpV7AX1344Vb5JBZbIYK9WD6ieFt0zoHEOjfdO9ppVHNkp6E3F6WapPWp8nEdWdiRCng06443aelH5WuiSQbR/8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8042
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


On 10/7/2025 11:00 PM, Ville Syrjälä wrote:
> On Tue, Oct 07, 2025 at 06:16:57PM +0300, Ville Syrjälä wrote:
>> On Tue, Oct 07, 2025 at 11:22:44AM +0530, Nautiyal, Ankit K wrote:
>>> On 10/7/2025 1:26 AM, Ville Syrjälä wrote:
>>>> On Mon, Oct 06, 2025 at 09:58:47AM +0530, Ankit Nautiyal wrote:
>>>>> Currently crtc_vblank_start is assumed to be the vblank_start for the fixed
>>>>> refresh rate case. That value can be different from the variable refresh
>>>>> rate case whenever always_use_vrr_tg()==false. On icl/tgl it's always
>>>>> different due to the extra vblank delay, and also on adl+ it could be
>>>>> different if we were to use an optimized guardband.
>>>>>
>>>>> So places where crtc_vblank_start is used to compute vblank length needs
>>>>> change so as to account for cases where vrr is enabled. Specifically
>>>>> with vrr.enable the effective vblank length is actually guardband.
>>>>>
>>>>> Add a helper to get the correct vblank length for both vrr and fixed
>>>>> refresh rate cases. Use this helper where vblank_start is used to
>>>>> compute the vblank length.
>>>>>
>>>>> Signed-off-by: Ankit Nautiyal<ankit.k.nautiyal@intel.com>
>>>>> ---
>>>>>    drivers/gpu/drm/i915/display/intel_pfit.c    | 11 +++++++----
>>>>>    drivers/gpu/drm/i915/display/intel_psr.c     |  3 +--
>>>>>    drivers/gpu/drm/i915/display/intel_vblank.c  | 10 ++++++++++
>>>>>    drivers/gpu/drm/i915/display/intel_vblank.h  |  2 ++
>>>>>    drivers/gpu/drm/i915/display/skl_watermark.c |  3 ++-
>>>>>    5 files changed, 22 insertions(+), 7 deletions(-)
>>>>>
>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_pfit.c b/drivers/gpu/drm/i915/display/intel_pfit.c
>>>>> index 68539e7c2a24..ebbaa1d419ba 100644
>>>>> --- a/drivers/gpu/drm/i915/display/intel_pfit.c
>>>>> +++ b/drivers/gpu/drm/i915/display/intel_pfit.c
>>>>> @@ -14,6 +14,7 @@
>>>>>    #include "intel_lvds_regs.h"
>>>>>    #include "intel_pfit.h"
>>>>>    #include "intel_pfit_regs.h"
>>>>> +#include "intel_vblank.h"
>>>>>    #include "skl_scaler.h"
>>>>>    
>>>>>    static int intel_pch_pfit_check_dst_window(const struct intel_crtc_state *crtc_state)
>>>>> @@ -306,14 +307,15 @@ centre_horizontally(struct drm_display_mode *adjusted_mode,
>>>>>    }
>>>>>    
>>>>>    static void
>>>>> -centre_vertically(struct drm_display_mode *adjusted_mode,
>>>>> +centre_vertically(struct intel_crtc_state *crtc_state,
>>>>> +		  struct drm_display_mode *adjusted_mode,
>>>>>    		  int height)
>>>>>    {
>>>>>    	u32 border, sync_pos, blank_width, sync_width;
>>>>>    
>>>>>    	/* keep the vsync and vblank widths constant */
>>>>>    	sync_width = adjusted_mode->crtc_vsync_end - adjusted_mode->crtc_vsync_start;
>>>>> -	blank_width = adjusted_mode->crtc_vblank_end - adjusted_mode->crtc_vblank_start;
>>>>> +	blank_width = intel_crtc_vblank_length(crtc_state);
>>>> This pfit stuff is computed way before the guardband, and also only
>>>> relevant for ancient gen2-4 hardware. So no point in touching this
>>>> stuff IMO.
>>> Alright can skip this stuff.
>>>
>>>
>>>>>    	sync_pos = (blank_width - sync_width + 1) / 2;
>>>>>    
>>>>>    	border = (adjusted_mode->crtc_vdisplay - height + 1) / 2;
>>>>> @@ -392,7 +394,8 @@ static void i9xx_scale_aspect(struct intel_crtc_state *crtc_state,
>>>>>    					  PFIT_HORIZ_INTERP_BILINEAR);
>>>>>    		}
>>>>>    	} else if (scaled_width < scaled_height) { /* letter */
>>>>> -		centre_vertically(adjusted_mode,
>>>>> +		centre_vertically(crtc_state,
>>>>> +				  adjusted_mode,
>>>>>    				  scaled_width / pipe_src_w);
>>>>>    
>>>>>    		*border = LVDS_BORDER_ENABLE;
>>>>> @@ -489,7 +492,7 @@ static int gmch_panel_fitting(struct intel_crtc_state *crtc_state,
>>>>>    		 * heights and modify the values programmed into the CRTC.
>>>>>    		 */
>>>>>    		centre_horizontally(adjusted_mode, pipe_src_w);
>>>>> -		centre_vertically(adjusted_mode, pipe_src_h);
>>>>> +		centre_vertically(crtc_state, adjusted_mode, pipe_src_h);
>>>>>    		border = LVDS_BORDER_ENABLE;
>>>>>    		break;
>>>>>    	case DRM_MODE_SCALE_ASPECT:
>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
>>>>> index f7115969b4c5..ae6b94a5d450 100644
>>>>> --- a/drivers/gpu/drm/i915/display/intel_psr.c
>>>>> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>>>>> @@ -1365,8 +1365,7 @@ static bool wake_lines_fit_into_vblank(struct intel_dp *intel_dp,
>>>>>    				       bool aux_less)
>>>>>    {
>>>>>    	struct intel_display *display = to_intel_display(intel_dp);
>>>>> -	int vblank = crtc_state->hw.adjusted_mode.crtc_vblank_end -
>>>>> -		crtc_state->hw.adjusted_mode.crtc_vblank_start;
>>>>> +	int vblank = intel_crtc_vblank_length(crtc_state);
>>>> I *think* this also gets computed during .compute_config() which is
>>>> before the guardband calculation. So if this stuff actually depends on
>>>> the guardband then we have a real problem here. And if it doesn't (as
>>>> in it really interested in the undelayed vblank length) them maybe it
>>>> should just compute it as crtc_vtotal-crtc_vactive.
>>> As far as I understand it depends on guardband for VRR case.
>>> For non vrr case : crtc_vtotal - crtc_vactive - scl lines
>>> For vrr case: guardband length.
>>>
>>> Currently since guardband is equal to vblank length this can be
>>> crtc_vtotal - crtc_vactive - scl lines.
>>>
>>> Perhaps with the optimized guardband, we need to set the guardband
>>> during intel_vrr_compute_config().
>>>
>>> Later intel_psr_compute_config gets called and then we can check the
>>> guardband.
>> Originally we moved the vblank delay calculation to happen later
>> because we needed to know about PSR for it to be done correctly.
>> I think someone will need to try to actually write down all the
>> requirements from both PSR and VRR side and sides and come up
>> with a way to get it all done in the right order, without any
>> more chicken vs. egg problems.
> I haven't actually checked any of PSR details here, but I'm thinking
> if my assumptions hold that there is a dependency both ways, we migth
> need soemthing like this:
>
> 1. .compute_config()
>     Check if PSR is generallty possible/desired, and verify that a maximum
>     guardband would suffice for PSR (this check could also take PSR specific
>     SCL requirements into consideration)


psr_compute_config currently checks for wake_lines_fit_into_vblank().

So here we continue to check against maximum guardband (vblank_length)

So only thing to add here is the SCL considerations.

> 2. compute_scl()
>     Bump SCL if PSR (or anything else) needs it

This is already there, so we are good.


> 3. vrr_compute_guardband()
>     Try to accomodate PSR requirements, but don't worry if we can't satisy
>     that

Hmm here currently we are not checking anything.

With optimized guardband we must check with max psr requirements and not 
the current psr requirements.

(With VRR psr will be off so we don't want to change guardband here)


> .compute_config_late()
>     Check whether the actual guardband is sufficient for PSR, and
>     calculate any other state that depends on the guardband. If not,
>     disable PSR (hopefully we can still do that at this point...)


Can try disabling psr here if the guardband is not sufficient with 
actual psr requirements.

We can check here for other latencies also e.g. SDP.

But scaler related latencies we cannot check here.


Coming back to this patch to use the vblank_start adjustment, I guess we 
need to re-evaluate.


Regards,

Ankit

> I think that might generally work (if the assumption about being
> able to revert the early PSR decision in .compute_config_late()
> is valid).
>
> The only corner case I see is if something else requires
> bumping SCL and that reduces the guardband below what PSR needs.
> But perhaps we should not worry about such issues, unless perhaps
> that other SCL bumping requirement can be trivially accomodated
> in the PSR .compute_config() as well.
>
> Or I suppose we might try to see if we could compute SCL (considering
> only the non-PSR requirements) even earlier (as in before PSR
> .compute_config()), and then have the PSR code itself bump SCL if
> required during .compute_config(). But this sort of approach we could
> look into later, doesn't have to be done now IMO.
>
