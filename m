Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D42BFBFAF25
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 10:41:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9B9510E023;
	Wed, 22 Oct 2025 08:41:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PU9lfs/m";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A972B10E023;
 Wed, 22 Oct 2025 08:41:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761122503; x=1792658503;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sDzOPr2P6Xg34MPpWVf0/NJar67GGni49Q+mrkNc1t4=;
 b=PU9lfs/mJJHBrKO7PUoT9fh2nzfCidDTa4il/yuTihHzsnbt82pD+mSJ
 GCJkZdDJVCzuFEdmmyXU794qa5vfGFzO3yPbfhq2I/YQMC6etffEafSJo
 cITwZRU7KAVoibPKiGrQm5I3oTAyGRSBUvASYqE7am3TWxv7bRQOq/cgd
 7COVdoxLH/jzCJhfBhB6dwrXE6nZieID9q1X6xBErkuHZew9Y8LJV4fd1
 gPBZTSJhxd4mPEugbcF1q6BAPtBQw0ZgMRgSA9vJn2aDl5Y7AiK/2F34x
 SM7Olx21parLsMo6bdXKJrwsh+sHit+g50IxZOIN/O/HY80cvZrA/NXLB g==;
X-CSE-ConnectionGUID: kVdM8W7YTEa7JxkaUasOCQ==
X-CSE-MsgGUID: H5cfZq0BRlqlJrq9VqACiA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="62472688"
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="62472688"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 01:41:42 -0700
X-CSE-ConnectionGUID: Q1GRdj+EQGilrnPoFtD6cQ==
X-CSE-MsgGUID: wnwDDtBNRWSgvYg/Z4+aJw==
X-ExtLoop1: 1
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 01:41:42 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 22 Oct 2025 01:41:41 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 22 Oct 2025 01:41:41 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.18)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 22 Oct 2025 01:41:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UlozgnJa+ji5nw/6snWzwkz0VBISbqugeL+VnbTfMSB5XRPiF/j0yB9HMH6Iuw3EF/26Mqr7K1NSOqtBXSE+Coj9N8EHrkuy/196CPIcWkBmHkVsZSmhSVcuj1nR85rcndVpZFXO/bsMJEbxtnHnUtxqrbHIpDUNZJYOk8RmNhqMnsd/vnQIM23gM8VDTE7FGFpIYXAS0LFHH+aEoHoakVrgD63irCSdHUUAIYZxpdj1/wZUzPhamJdduKE1inlxaXp1quQPUTnUrx5szoogLaZgKe8y1fB9goNCIdvfxgsTjD0cwsQ4nb6ecXsqBhqbQo+2vaLiYHcpMBfAlUbBsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1nmV7oV5cHZ1ScTpc19QipeHa8FhBtZO5sJnChnmOT8=;
 b=nEzIZes5/Yt7AqVsTkRK8x/vWrWPG+5FXk0DOQwVCAsYHJ9dc+6j3QiQb57k7K51C5k6H4RuY78G++H8QsAox/BkCP172qsDeF8mKQr9yJE593AQAspbNqfxQHshhkTRWMEToQg8TNI+z/tjhNGgT5kfyfUMGzaqXN169vIGCGclHfjm7UybKEDzLavRa8AEUy+t54GUHaHEbzhnsFJF6/iMRN+hcJlMgJR3hd3SnlMTGvFS2yfbWIT2CsKDd7+r3CKZQVdsQTcgepgRXPKERsVzcFongemF275Ypctr3euiYUfXEdaj7mV09H7I0bNsBxqazypovuBUsYE6zi7gZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH3PR11MB7300.namprd11.prod.outlook.com (2603:10b6:610:150::21)
 by SN7PR11MB7638.namprd11.prod.outlook.com (2603:10b6:806:34b::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.16; Wed, 22 Oct
 2025 08:41:39 +0000
Received: from CH3PR11MB7300.namprd11.prod.outlook.com
 ([fe80::cfdc:6323:1353:350d]) by CH3PR11MB7300.namprd11.prod.outlook.com
 ([fe80::cfdc:6323:1353:350d%4]) with mapi id 15.20.9253.011; Wed, 22 Oct 2025
 08:41:39 +0000
Message-ID: <0c4a309b-96f0-4139-a0f6-0e23fb93f322@intel.com>
Date: Wed, 22 Oct 2025 14:11:31 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 03/25] drm/i915/ltphy: Phy lane reset for LT Phy
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <ankit.k.nautiyal@intel.com>, <uma.shankar@intel.com>,
 <gustavo.sousa@intel.com>, <lucas.demarchi@intel.com>
References: <20251015040817.3431297-1-suraj.kandpal@intel.com>
 <20251015040817.3431297-4-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
In-Reply-To: <20251015040817.3431297-4-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0112.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1b5::15) To CH3PR11MB7300.namprd11.prod.outlook.com
 (2603:10b6:610:150::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR11MB7300:EE_|SN7PR11MB7638:EE_
X-MS-Office365-Filtering-Correlation-Id: d3c7ac65-46e1-4eac-234d-08de1146d16e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TEZDblptaUlMQXM3aEJKZmlZeFd4N1NPSmdUbTErMDF2RmhiU0Q5NDFxdGpK?=
 =?utf-8?B?bDExZHJWdm5qN0dxRmlVUWN1MXd4d3BsRmI2UGtQUWFBckFZZmhsM1VuQ1RW?=
 =?utf-8?B?YlUxeWhYa1ZKOHA1VXB6ZjNCOFdjb0pCcktKaVpCYWdqZThpZE9MaG01QUp0?=
 =?utf-8?B?ZzFzbTYwbXoxdXVZdUpJZ2lYMUFpTlEyOXMxVHVnR3p2Vk5ucFQ3elVsaHdo?=
 =?utf-8?B?cW16K2RzbzFnUnNhNm5UVkNHMTF6VFRpRzNWNzcwV0VvbEo3RzBJVzZnbkRY?=
 =?utf-8?B?bGdOY3lRaEdueFpvREgxSDlqWnEyWEF6SjRPTlJzSWRnbWQ5UWJOSFUyeGZt?=
 =?utf-8?B?bnlZanFVNUxSQ0ltcXBKQ1R4YmVtVUxnTnR4NjZ5N1BSazJUTGJXVVYyNVNS?=
 =?utf-8?B?K1dmaEZFT3M4b3BBS3BFd3drV3dIMnZ4aWlMdnZjUVpyUitiWm5UbVczYnBY?=
 =?utf-8?B?L0U0a3REVnlDOEV6RHBJUHNUcEVLaTlXcTJsREZwanRLcW9yN2dMb0ZxQksv?=
 =?utf-8?B?WXpFUERUamtCYXlXRUpZWitlQU5Mc2NUOEpiSkl6b2F6RU9kZ2dUWnVQM09S?=
 =?utf-8?B?cENVWkozb0NkcmlmYjhFaldZTWpMZGpEWnNHM1R4WWZacDZZR2R4Sms5VXVH?=
 =?utf-8?B?TXJCNWZkMUorYzExSlp5K21MWmtsQit0WkQ5aHk2ZThoak1ENTVsenY2QWZU?=
 =?utf-8?B?V1h6Mm10aHBjM0pSS0ZTSS9xeXpmNldVWUovdExGb2FYVkpYWkJxZlp0VlpY?=
 =?utf-8?B?WkNORGN1Y1V3MTZsb3R6NmdsTThHRGltZ1lFTnBhT0xlV1R2NlRwTmtEekw1?=
 =?utf-8?B?K21YM2pjenp2L1lHazc1Mk9SMzFoL01vektaUjRYejdCOWROUUZTYm1SVFdV?=
 =?utf-8?B?SUd4SjZiK3UzajZQSzNzYnJTT3N4TmxsQ0ErdkYxMTBXZ2VCTC9kSlRZOS83?=
 =?utf-8?B?RGJXNWZzVDNucWhpUkd2K25BMURyc1ZDWFRtVjNJTWN5OUxoa0FJRDUyMkto?=
 =?utf-8?B?b09NVi9ZR2g1TFF0SVM2RnNzM09HaW9BbGhSa2c0bWZUeXBCMTN0cXVuNzlM?=
 =?utf-8?B?d0dWbSsyYWxWZHBTelptcWVrdm1TTTVsZnFQMm8yTUoyZExWdWdlL3NBT2dU?=
 =?utf-8?B?WVFBWCt3OVdxWTN3S1I2VVRZR2NaMTRhU3lGZ0RiWlNwMHdqVUNGUkRNenhy?=
 =?utf-8?B?VmcySkMwVWpYbkRxcXhvcGs1YktMUjVTbmFlbkJETCtWd2l6WnIwN01UdFla?=
 =?utf-8?B?UEw4eWRvMVZBUnNRTnhCeEVGREhhbVd3cDlldjBNbGhJUDU2UnZOdFlOdDZV?=
 =?utf-8?B?VUdsY0REc2VZU0FXNWpnZ1JENStFb3hWNXZHd0RvRVFkTXZEWWRYdUU1Q296?=
 =?utf-8?B?SjRaR1dnNlAzV1ZEWitpM2NDSms3QlBkcWJKWFJXK0FPWnhVMW1DS0loQnYx?=
 =?utf-8?B?bDVjUkFlOWRVRU9GOGtRUjZVOEd1N2hEeCtEYm02Wk5VSDVzTG0wUUVTZ1Ey?=
 =?utf-8?B?VHF2d0Nneko3UENYQ3ZxbTlML2dFM0w2LytGUWVjYmRRZ0NXV0lWK0NKMHdY?=
 =?utf-8?B?K2tQdlZxS094YytoRERLMTVWdDhlYlNnQVdWdi9vUVhoTHUyV1M3U01FbmVG?=
 =?utf-8?B?NFNFWkxrZXp4ODREcmN4SWU1akV2QmVxQ0l1WE1MQ1RFS2o2VXNFWTlqM3pi?=
 =?utf-8?B?bDdIT3Q4STljeE16Q2FxMk5CWXNqQVhjZWhqWkdRczh2UUlTeGlacThjenZl?=
 =?utf-8?B?L1B5cE5LMDlGb3gxVzBSZUxoZ1RxUXcvd0JXRnpucDJ6MWVjdHllUjNkaXVQ?=
 =?utf-8?B?aVl5Ly81TCs1Rkw0RHorMFpCRlZWVnlHMVJ3eWliaFdGQkR4NDF1Lzg1Q3dP?=
 =?utf-8?B?Tkx0Tk4zOTZETFVSQW1kTUpWRXFuM1E2RVZ3cFpUNVI1Q3BuTnM2bDhEVGJh?=
 =?utf-8?Q?n0zel+oRNCS4QmjD+ZrrCm4eRtBEIy+7?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB7300.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N2FKOGRKL2ROaWZ6UnVtNTBraHZvNWowSEo1RWlGS0tuK3BadUJpVGNzbjVQ?=
 =?utf-8?B?cWg3alhCejk4SndIYkluY2Q1S2pZdzdlV1c5aXJDNy9RRW9KVzZKNjJPUTNa?=
 =?utf-8?B?V2JENzM2UENISTU2cVpnT3VFOUpQdTRoN3Q0NTdOR3laYjdhRkZzRTIrVHRF?=
 =?utf-8?B?VXE2UzZuL1JzNkx2ZkxGSHlLZWxCdnZULytIN2NSSDBJNTZneStuTjhqR0pY?=
 =?utf-8?B?d1laTHlmS0Y1dXZLS2oyQkJRSG8zWm1CbTdpSFlXbDVubGF2MXpUcGdPMjJU?=
 =?utf-8?B?WmhZY1JWN0g2Rjl0ZGtIbDFjRHIzanhheERiZ212ZU5JQitMK0xTMEFmUEF5?=
 =?utf-8?B?ekNJZDFpN0F4QTJheGd1dk1EaGN5NWNSSnRFUGN4RHRTaTJLUkZZcTM2bGlX?=
 =?utf-8?B?OTJEUGs4Y1dyVE8zb1duYUI0WjRXTlVNR1FURjM3V1pKNFJKalpncC8yNzNr?=
 =?utf-8?B?QTVjUUZNRzNENjhuanAvQkV6SElHK01IWmRoQnBMclN6UDNyMHpJWDZlTit0?=
 =?utf-8?B?WFZUSlZrYU1mWER6Nm9HUEdXQVdPWU1GRWl0NWZiYVZzOXdQQlczQk93UVF2?=
 =?utf-8?B?bzhGWjZxenhjb1hjOUh5UGJTWU5MWjd6QlczSjFSVzlmcEhOUjRaUHFGT2dP?=
 =?utf-8?B?d0t6dVNqb1JRZWUyVEFxWmVNa1RGNWRabnI1Rmp1OGcvYTZrTm5XMUE2SWdF?=
 =?utf-8?B?bFlVUVU4UHNJS2xQZmNua1c3MEJiOUNsOS9XL1VqSDVxVHZ5UmE5ejdpSElI?=
 =?utf-8?B?dVJONk90aDJPMWhVcWpITWVFS3NTUEtETkF1YzF1UmFKS0FFMDduYityS3lz?=
 =?utf-8?B?c1I2MU4vSWdUWStNT1J2MkNPR2RBWjV2ak9CSCtKTWZZS3l6NitRb2sreTc0?=
 =?utf-8?B?dnl5dmIxZDhScGFGSFBLc3hneVFGcGluQ2V6SmJDTnhvUUVaVHRSYmZIUy9j?=
 =?utf-8?B?cHBZSkF3bi9TL3VPbUdORnVsRThSOTZVNnR5am5rRWE1WDU3NHd5Skg2ZTFu?=
 =?utf-8?B?VXlXOFRoNXUycVdNWFpKNmNrOXdOOHM5VzNINHArS3pJdkNQYnhuczVkQmJr?=
 =?utf-8?B?VUhkYlNCQUN0bCtMNHI1ajR0eEFpbFhnZjBMc1p3aWZFbnp4enhZWEJmQ0pi?=
 =?utf-8?B?cjhVM25HVnc1d1p6ZWplK2hRaDI1RzRIdHdaRFU5LzdlYmhzMGZvUFhmQVpk?=
 =?utf-8?B?ZmwvTE9KTUNoYWFsN2pxV2FUcGRzcnA5Rnhkc05aNm0wSExpazVMcms0akd4?=
 =?utf-8?B?YzVGUktkWW5FRlJvaUZXeExBU08wZHArbkV0NFlUME54WmdRbEdMdG14Zkxz?=
 =?utf-8?B?TUROc0FYTmNFTkpSNC9nVzgyNGVVVWt5VVRtdWlXZGZTa1FwbE5GS3lROFd2?=
 =?utf-8?B?bk9ablZlQW0vaG5xeE9BRlZaVklvMVNWcEVkeEFPMWpWZi9sZ0lBRDYrQzVa?=
 =?utf-8?B?Sm4zSmVLbnJ1MDU2UzdLRE1MQnNrZXNIb25BandpOXRVOFR2MHk4VVZnR3dN?=
 =?utf-8?B?NURuNjBjYytDcDVzUEd5M0QvS3diOXFWTU45TU5kc3hnSFo1dFJBbnNXL3c3?=
 =?utf-8?B?S2F0OExQVTFaUWtkcXdpeTBmNXNoM3JacmgwQ3hFYzEra2JQaW9IOGt5TmFj?=
 =?utf-8?B?b0ZiYXpobEJVSlBMTTBDL0M2Rlo1TzRFMG03emZPL21FUFMvVjhDMWp1dktm?=
 =?utf-8?B?Q0F0Wmp2UWE5eDBBR2xnd1JwNmtIcEJmOHM4dDlaU0o1UzZnb2k5bFppZkpL?=
 =?utf-8?B?WVhDa0ZRMDFVNlZjeW1kK05LY1hGU212RExiTC82YUFyeEVkS3hxZk9kVjEw?=
 =?utf-8?B?QUp2N3poMFBmRUNBZUtWelhacndsUDZ0NDg3eUtDY0lENjE1eHZSOHFIY0NK?=
 =?utf-8?B?NnBGN3hPaWZXdnRRbzQxeTZlek5qaGZ2T0kvRnlsY2paMzI2NlhFN3UvcVFn?=
 =?utf-8?B?Ymh5WU1raXFoTmcvWDNHVGtERjZySEFCeDlRUi9DbG5ESy9sbUVwcm5UWHpS?=
 =?utf-8?B?eFlYcTBYK0Ridy9hSG0wcmRFU3IzcitwLyt0OHpqU3hWR1U2ZnpaazhyYlEr?=
 =?utf-8?B?ZTFhYmMweUdZREYxK0dNNkMvaEgzL3I4ZEp2d2h6VW1UWVRicGYrWVFEdFly?=
 =?utf-8?B?OWllM1p4Q0VyOWFTMkRwOWVNRkNqWkorL0N6MW5JQ3BkQ1RtVnNyb1RRU0RQ?=
 =?utf-8?B?blE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d3c7ac65-46e1-4eac-234d-08de1146d16e
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB7300.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Oct 2025 08:41:39.5769 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MjSQO/IyHKa0wNxiDEihq6qYShhGH8WM+VEN0VoSYUZFvRimRD7kXLURTvn6ZRrlgINf6lTQc5ns27h4SYn6Qw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7638
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

On 15-10-2025 09:37, Suraj Kandpal wrote:
> Define function to bring phy lane out of reset for LT Phy and the
> corresponding pre-requisite steps before we follow the steps for
> Phy lane reset. Also create a skeleton of LT PHY PLL enable sequence
> function in which we can place this function
>
> Bspec: 77449, 74749, 74499, 74495, 68960
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/Makefile                 |   1 +
>   drivers/gpu/drm/i915/display/intel_cx0_phy.c  |   2 +-
>   drivers/gpu/drm/i915/display/intel_cx0_phy.h  |   2 +
>   .../gpu/drm/i915/display/intel_cx0_phy_regs.h |   4 +
>   drivers/gpu/drm/i915/display/intel_lt_phy.c   | 159 ++++++++++++++++++
>   drivers/gpu/drm/i915/display/intel_lt_phy.h   |  17 ++
>   .../gpu/drm/i915/display/intel_lt_phy_regs.h  |  17 ++
>   drivers/gpu/drm/xe/Makefile                   |   1 +
>   8 files changed, 202 insertions(+), 1 deletion(-)
>   create mode 100644 drivers/gpu/drm/i915/display/intel_lt_phy.c
>   create mode 100644 drivers/gpu/drm/i915/display/intel_lt_phy.h
>
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 6d7800e25e55..33836829d2c0 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -352,6 +352,7 @@ i915-y += \
>   	display/intel_gmbus.o \
>   	display/intel_hdmi.o \
>   	display/intel_lspcon.o \
> +	display/intel_lt_phy.o \
>   	display/intel_lvds.o \
>   	display/intel_panel.o \
>   	display/intel_pfit.o \
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 6d9ebc8717ba..db2b05521c62 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2843,7 +2843,7 @@ static void intel_cx0_powerdown_change_sequence(struct intel_encoder *encoder,
>   			 phy_name(phy), XELPDP_PORT_RESET_START_TIMEOUT_US);
>   }
>   
> -static void intel_cx0_setup_powerdown(struct intel_encoder *encoder)
> +void intel_cx0_setup_powerdown(struct intel_encoder *encoder)
>   {
>   	struct intel_display *display = to_intel_display(encoder);
>   	enum port port = encoder->port;
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> index c5a7b529955b..c92026fe7b8f 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> @@ -41,6 +41,8 @@ bool intel_cx0pll_compare_hw_state(const struct intel_cx0pll_state *a,
>   				   const struct intel_cx0pll_state *b);
>   void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
>   				     const struct intel_crtc_state *crtc_state);
> +int intel_cx0_phy_check_hdmi_link_rate(struct intel_hdmi *hdmi, int clock);
> +void intel_cx0_setup_powerdown(struct intel_encoder *encoder);
>   int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder);
>   void intel_cx0_pll_power_save_wa(struct intel_display *display);
>   void intel_lnl_mac_transmit_lfps(struct intel_encoder *encoder,
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> index 18b91c23d547..114f6b2113db 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> @@ -104,6 +104,8 @@
>   #define   XELPDP_PORT_BUF_PORT_DATA_20BIT		REG_FIELD_PREP(XELPDP_PORT_BUF_PORT_DATA_WIDTH_MASK, 1)
>   #define   XELPDP_PORT_BUF_PORT_DATA_40BIT		REG_FIELD_PREP(XELPDP_PORT_BUF_PORT_DATA_WIDTH_MASK, 2)
>   #define   XELPDP_PORT_REVERSAL				REG_BIT(16)
> +#define   XE3PLPDP_PHY_MODE_MASK			REG_GENMASK(15, 12)
> +#define   XE3PLPDP_PHY_MODE_DP				REG_FIELD_PREP(XE3PLPDP_PHY_MODE_MASK, 0x3)
>   #define   XELPDP_PORT_BUF_IO_SELECT_TBT			REG_BIT(11)
>   #define   XELPDP_PORT_BUF_PHY_IDLE			REG_BIT(7)
>   #define   XELPDP_TC_PHY_OWNERSHIP			REG_BIT(6)
> @@ -124,6 +126,7 @@
>   	 _XELPDP_PORT_BUF_CTL2(port))
>   #define   XELPDP_LANE_PIPE_RESET(lane)			_PICK(lane, REG_BIT(31), REG_BIT(30))
>   #define   XELPDP_LANE_PHY_CURRENT_STATUS(lane)		_PICK(lane, REG_BIT(29), REG_BIT(28))
> +#define   XE3PLPDP_LANE_PHY_PULSE_STATUS(lane)		_PICK(lane, REG_BIT(27), REG_BIT(26))
>   #define   XELPDP_LANE_POWERDOWN_UPDATE(lane)		_PICK(lane, REG_BIT(25), REG_BIT(24))
>   #define   _XELPDP_LANE0_POWERDOWN_NEW_STATE_MASK	REG_GENMASK(23, 20)
>   #define   _XELPDP_LANE0_POWERDOWN_NEW_STATE(val)	REG_FIELD_PREP(_XELPDP_LANE0_POWERDOWN_NEW_STATE_MASK, val)
> @@ -151,6 +154,7 @@
>   #define   XELPDP_POWER_STATE_ACTIVE(val)		REG_FIELD_PREP(XELPDP_POWER_STATE_ACTIVE_MASK, val)
>   #define   XELPDP_P0_STATE_ACTIVE			0x0
>   #define   XELPDP_P2_STATE_READY				0x2
> +#define   XE3PLPD_P4_STATE_DISABLE			0x4
>   #define   XELPDP_P2PG_STATE_DISABLE			0x9
>   #define   XELPDP_P4PG_STATE_DISABLE			0xC
>   #define   XELPDP_P2_STATE_RESET				0x2
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> new file mode 100644
> index 000000000000..c65333cc9494
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -0,0 +1,159 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright © 2025 Intel Corporation
> + */
> +
> +#include <drm/drm_print.h>
> +
> +#include "i915_reg.h"
> +#include "intel_cx0_phy.h"
> +#include "intel_cx0_phy_regs.h"
> +#include "intel_de.h"
> +#include "intel_display.h"
> +#include "intel_display_types.h"
> +#include "intel_lt_phy.h"
> +#include "intel_lt_phy_regs.h"
> +#include "intel_tc.h"
> +
> +#define INTEL_LT_PHY_LANE0		BIT(0)
> +#define INTEL_LT_PHY_LANE1		BIT(1)
> +#define INTEL_LT_PHY_BOTH_LANES		(INTEL_LT_PHY_LANE1 |\
> +					 INTEL_LT_PHY_LANE0)
> +
> +static u8 intel_lt_phy_get_owned_lane_mask(struct intel_encoder *encoder)
> +{
> +	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> +
> +	if (!intel_tc_port_in_dp_alt_mode(dig_port))
> +		return INTEL_LT_PHY_BOTH_LANES;
> +
> +	return intel_tc_port_max_lane_count(dig_port) > 2
> +		? INTEL_LT_PHY_BOTH_LANES : INTEL_LT_PHY_LANE0;
> +}

Can the function in cx0 be exported/reused over here? This is just a 
duplicate of intel_cx0_phy_get_owned_lane_mask()

> +
> +static void
> +intel_lt_phy_setup_powerdown(struct intel_encoder *encoder, u8 lane_count)
> +{
> +	/*
> +	 * The new PORT_BUF_CTL6 stuff for dc5 entry and exit needs to be handled
> +	 * by dmc firmware not explicitly mentioned in Bspec. This leaves this
> +	 * function as a wrapper only but keeping it expecting future changes.
> +	 */
> +	intel_cx0_setup_powerdown(encoder);
> +}
> +
> +static void
> +intel_lt_phy_lane_reset(struct intel_encoder *encoder,
> +			u8 lane_count)
> +{
> +	struct intel_display *display = to_intel_display(encoder);
> +	enum port port = encoder->port;
> +	enum phy phy = intel_encoder_to_phy(encoder);
> +	u8 owned_lane_mask = intel_lt_phy_get_owned_lane_mask(encoder);
> +	u32 lane_pipe_reset = owned_lane_mask == INTEL_LT_PHY_BOTH_LANES
> +				? XELPDP_LANE_PIPE_RESET(0) | XELPDP_LANE_PIPE_RESET(1)
> +				: XELPDP_LANE_PIPE_RESET(0);
> +	u32 lane_phy_current_status = owned_lane_mask == INTEL_LT_PHY_BOTH_LANES
> +					? (XELPDP_LANE_PHY_CURRENT_STATUS(0) |
> +					   XELPDP_LANE_PHY_CURRENT_STATUS(1))
> +					: XELPDP_LANE_PHY_CURRENT_STATUS(0);
> +	u32 lane_phy_pulse_status = owned_lane_mask == INTEL_LT_PHY_BOTH_LANES
> +					? (XE3PLPDP_LANE_PHY_PULSE_STATUS(0) |
> +					   XE3PLPDP_LANE_PHY_PULSE_STATUS(1))
> +					: XE3PLPDP_LANE_PHY_PULSE_STATUS(0);
> +
> +	intel_de_rmw(display, XE3PLPD_PORT_BUF_CTL5(port),
> +		     XE3PLPD_MACCLK_RATE_MASK, XE3PLPD_MACCLK_RATE_DEF);
> +
> +	intel_de_rmw(display, XELPDP_PORT_BUF_CTL1(display, port),
> +		     XE3PLPDP_PHY_MODE_MASK, XE3PLPDP_PHY_MODE_DP);
> +
> +	intel_lt_phy_setup_powerdown(encoder, lane_count);
> +
> +	intel_de_rmw(display, XE3PLPD_PORT_BUF_CTL5(port),
> +		     XE3PLPD_MACCLK_RESET_0, 0);
> +
> +	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, port),
> +		     XELPDP_LANE_PCLK_PLL_REQUEST(0),
> +		     XELPDP_LANE_PCLK_PLL_REQUEST(0));
> +
> +	if (intel_de_wait_custom(display, XELPDP_PORT_CLOCK_CTL(display, port),
> +				 XELPDP_LANE_PCLK_PLL_ACK(0),
> +				 XELPDP_LANE_PCLK_PLL_ACK(0),
> +				 XE3PLPD_MACCLK_TURNON_LATENCY_US,
> +				 XE3PLPD_MACCLK_TURNON_LATENCY_MS, NULL))
> +		drm_warn(display->drm, "PHY %c PLL MacCLK assertion Ack not done after %dus.\n",
> +			 phy_name(phy), XE3PLPD_MACCLK_TURNON_LATENCY_MS * 1000);
> +
> +	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, port),
> +		     XELPDP_FORWARD_CLOCK_UNGATE,
> +		     XELPDP_FORWARD_CLOCK_UNGATE);
> +
> +	intel_de_rmw(display, XELPDP_PORT_BUF_CTL2(display, port),
> +		     lane_pipe_reset | lane_phy_pulse_status, 0);
> +
> +	if (intel_de_wait_custom(display, XELPDP_PORT_BUF_CTL2(display, port),
> +				 lane_phy_current_status, 0,
> +				 XE3PLPD_RESET_END_LATENCY_US, 2, NULL))
> +		drm_warn(display->drm,
> +			 "PHY %c failed to bring out of Lane reset after %dus.\n",
> +			 phy_name(phy), XE3PLPD_RESET_END_LATENCY_US);
> +
> +	if (intel_de_wait_custom(display, XELPDP_PORT_BUF_CTL2(display, port),
> +				 lane_phy_pulse_status, lane_phy_pulse_status,
> +				 XE3PLPD_RATE_CALIB_DONE_LATENCY_US, 0, NULL))
> +		drm_warn(display->drm, "PHY %c PLL rate not changed after %dus.\n",
> +			 phy_name(phy), XE3PLPD_RATE_CALIB_DONE_LATENCY_US);
> +
> +	intel_de_rmw(display, XELPDP_PORT_BUF_CTL2(display, port), lane_phy_pulse_status, 0);
> +}
> +
> +void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
> +			     const struct intel_crtc_state *crtc_state)
> +{
> +	/* 1. Enable MacCLK at default 162 MHz frequency. */
> +	intel_lt_phy_lane_reset(encoder, crtc_state->lane_count);
> +
Should the entire steps be added over here or add them in the respective 
patches!
> +	/* 2. Program PORT_CLOCK_CTL register to configure clock muxes, gating, and SSC. */
> +	/* 3. Change owned PHY lanes power to Ready state. */
> +	/*
> +	 * 4. Read the PHY message bus VDR register PHY_VDR_0_Config check enabled PLL type,
> +	 * encoded rate and encoded mode.
> +	 */
> +	/*
> +	 * 5. Program the PHY internal PLL registers over PHY message bus for the desired
> +	 * frequency and protocol type
> +	 */
> +	/* 6. Use the P2P transaction flow */
> +	/*
> +	 * 6.1. Set the PHY VDR register 0xCC4[Rate Control VDR Update] = 1 over PHY message
> +	 * bus for Owned PHY Lanes.
> +	 */
> +	/*
> +	 * 6.2. Poll for P2P Transaction Ready = "1" and read the MAC message bus VDR register
> +	 * at offset 0xC00 for Owned PHY Lanes.
> +	 */
> +	/* 6.3. Clear P2P transaction Ready bit. */
> +	/* 7. Program PORT_CLOCK_CTL[PCLK PLL Request LN0] = 0. */
> +	/* 8. Poll for PORT_CLOCK_CTL[PCLK PLL Ack LN0]= 0. */
> +	/*
> +	 * 9. Follow the Display Voltage Frequency Switching - Sequence Before Frequency Change.
> +	 * We handle this step in bxt_set_cdclk()
> +	 */
> +	/* 10. Program DDI_CLK_VALFREQ to match intended DDI clock frequency. */
> +	/* 11. Program PORT_CLOCK_CTL[PCLK PLL Request LN0] = 1. */
> +	/* 12. Poll for PORT_CLOCK_CTL[PCLK PLL Ack LN0]= 1. */
> +	/* 13. Ungate the forward clock by setting PORT_CLOCK_CTL[Forward Clock Ungate] = 1. */
> +	/* 14. SW clears PORT_BUF_CTL2 [PHY Pulse Status]. */
> +	/*
> +	 * 15. Clear the PHY VDR register 0xCC4[Rate Control VDR Update] over PHY message bus for
> +	 * Owned PHY Lanes.
> +	 */
> +	/* 16. Poll for PORT_BUF_CTL2 register PHY Pulse Status = 1 for Owned PHY Lanes. */
> +	/* 17. SW clears PORT_BUF_CTL2 [PHY Pulse Status]. */
> +	/*
> +	 * 18. Follow the Display Voltage Frequency Switching - Sequence After Frequency Change.
> +	 * We handle this step in bxt_set_cdclk()
> +	 */
> +	/* 19. Move the PHY powerdown state to Active and program to enable/disable transmitters */
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.h b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> new file mode 100644
> index 000000000000..bd3ff3007e1d
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> @@ -0,0 +1,17 @@
> +/* SPDX-License-Identifier: MIT
> + *
> + * Copyright © 2025 Intel Corporation
> + */
> +
> +#ifndef __INTEL_LT_PHY_H__
> +#define __INTEL_LT_PHY_H__
> +
> +#include <linux/types.h>
> +
> +struct intel_encoder;
> +struct intel_crtc_state;
> +
> +void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
> +			     const struct intel_crtc_state *crtc_state);
> +
> +#endif /* __INTEL_LT_PHY_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h b/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
> index 499acb1975d1..a4aa2a3e0425 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
> @@ -9,6 +9,12 @@
>   #include "i915_reg_defs.h"
>   #include "intel_display_limits.h"
>   
> +#define XE3PLPD_MACCLK_TURNON_LATENCY_MS	1
> +#define XE3PLPD_MACCLK_TURNON_LATENCY_US	21
> +#define XE3PLPD_RATE_CALIB_DONE_LATENCY_US	50
> +#define XE3PLPD_RESET_START_LATENCY_US	10
> +#define XE3PLPD_RESET_END_LATENCY_US	200
> +

Can the values be aligned?

Thanks and Regards,
Arun R Murthy
--------------------

>   /* LT Phy Vendor Register */
>   #define LT_PHY_VDR_0_CONFIG	0xC02
>   #define  LT_PHY_VDR_DP_PLL_ENABLE	REG_BIT(7)
> @@ -24,4 +30,15 @@
>   
>   #define LT_PHY_RATE_UPDATE		0xCC4
>   
> +#define _XE3PLPD_PORT_BUF_CTL5(idx)	_MMIO(_PICK_EVEN_2RANGES(idx, PORT_TC1, \
> +								 _XELPDP_PORT_BUF_CTL1_LN0_A, \
> +								 _XELPDP_PORT_BUF_CTL1_LN0_B, \
> +								 _XELPDP_PORT_BUF_CTL1_LN0_USBC1, \
> +								 _XELPDP_PORT_BUF_CTL1_LN0_USBC2) \
> +								+ 0x34)
> +#define XE3PLPD_PORT_BUF_CTL5(port)	_XE3PLPD_PORT_BUF_CTL5(__xe2lpd_port_idx(port))
> +#define  XE3PLPD_MACCLK_RESET_0		REG_BIT(11)
> +#define  XE3PLPD_MACCLK_RATE_MASK	REG_GENMASK(4, 0)
> +#define  XE3PLPD_MACCLK_RATE_DEF	REG_FIELD_PREP(XE3PLPD_MACCLK_RATE_MASK, 0x1F)
> +
>   #endif /* __INTEL_LT_PHY_REGS_H__ */
> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
> index 84321fad3265..314aeea0f1e3 100644
> --- a/drivers/gpu/drm/xe/Makefile
> +++ b/drivers/gpu/drm/xe/Makefile
> @@ -291,6 +291,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
>   	i915-display/intel_hti.o \
>   	i915-display/intel_link_bw.o \
>   	i915-display/intel_lspcon.o \
> +	i915-display/intel_lt_phy.o \
>   	i915-display/intel_modeset_lock.o \
>   	i915-display/intel_modeset_setup.o \
>   	i915-display/intel_modeset_verify.o \
