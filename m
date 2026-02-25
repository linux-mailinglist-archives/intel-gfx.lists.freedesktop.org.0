Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aBQ3BoNtnmkcVQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 04:33:23 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D97919133A
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 04:33:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 739F810E67D;
	Wed, 25 Feb 2026 03:33:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CgLwGu/X";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AD8E10E679;
 Wed, 25 Feb 2026 03:33:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771990398; x=1803526398;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XwLyumfZsavee1lNZaMRc2nSfaIsTthbUNmAz97RW2I=;
 b=CgLwGu/XKoRUNv4XPWEf8/8eVnr6Uu8KG3lYJFIE66T7dCQ43swVEj+s
 mwic8ql4W5IYYgSu5rqRs0IV1ot3RkGnb2lxeYsPZjhDTmvZFT8uPOL+8
 swRCWRi2nGdnMseWs4FY9C1Dp3MqXpmr2sg5IKWWdDyGSNYSP3DnPIbuw
 /YfH3j8PMiW4siPo5864MMBZQtmgdIjUVvp0vSEWfg9jgE/HEUGOHBvMb
 yyDAFjcocM8Cvyw5Idm6k3yiO6qi+xNA1K+M5LE+FQYR+nEebJOqH14Cr
 chhYD6vbVKb1LaskKeY0z6C0wOqTembn/Cie/4OLWH2f5NwKFPbSRZ+SH A==;
X-CSE-ConnectionGUID: CiJSNWUjRY+pZTMg4esTOQ==
X-CSE-MsgGUID: l+uSFyW3Rsujr/rMHpjtUw==
X-IronPort-AV: E=McAfee;i="6800,10657,11711"; a="73066257"
X-IronPort-AV: E=Sophos;i="6.21,309,1763452800"; d="scan'208";a="73066257"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 19:33:17 -0800
X-CSE-ConnectionGUID: wF8Kt/HzSi6TZHGNGI1jgQ==
X-CSE-MsgGUID: ypfBi00eS/O37TE7AoAJVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,309,1763452800"; d="scan'208";a="243948325"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 19:33:17 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 19:33:17 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 24 Feb 2026 19:33:17 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.36) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 19:33:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=F6UMv/l6jTfOO4Jiw3sRAbL80BRui2+rwXC0g5N63MaR5tBOBzwIbFRi8ty5LBB61bHWKHvfJdJ9LrgIG9aiUb0CRLBjRkTTnwxDt2jHx4dABXMMYlJdo94i4DeU3pQYmHuyR7p6AIc0FN8+0q0MMTmf0b0DPAYB3fScH52dMIzPT38rSHRlusmXgRjIrizQxSIV6meennFXbI8/lQ+9oNSBDf9O64TBhfl+PF8h5TC+/d9K/Ce5QtIjNycx1258/X0t532Drq/aG5wtye1C+P2TH0OM5vMQLU4u6Q+YPavOGJ+UY7bfQP7ObYqYfaIadkriRZQiZC3TrgjJEJes3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n4KsFzSZApyBJSxpspCbPVtdxm+GEXqTb3DyZqWprtY=;
 b=MoHQVBegFnm4JRlvJBs0KZQeE4a4ZB8eqe/dLnjRMjJ6qxFSGXJVlAeUZXxu9AiWFzaT4EzFVBn3i7oDZh0xIWCN+9aE+8Z8tY/stkDkn/sQMlo7YLMXk8MAfSAUb771CrnA4j6bhQ+FV78IdiTdQLDI3oA37DwYNwr7g/fquyNTuFIS30kDT00XYwOYfcbLufk7NCSOL1cIprWOsM16w5rIuHPeCE/3vpBfMMFNHkTaQ/fLDs7eJlxVPzGP/ste7rowz9mOK/e7jEqo7hCYGjnm1M4DYuh7otUz6XQ0F4CvBGMT8FBX0ShluD3BzxdlyF/tA3F4YTaSDQh1W0bITg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by PH8PR11MB6853.namprd11.prod.outlook.com (2603:10b6:510:22e::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.22; Wed, 25 Feb
 2026 03:33:13 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7%6]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 03:33:13 +0000
Message-ID: <2b94fd1d-ce06-4c65-a615-7b9b2aeb3c57@intel.com>
Date: Wed, 25 Feb 2026 09:03:06 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCHv2] drm/i915/dp: On DPCD init/caps wake the DPRx
To: <imre.deak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <suraj.kandpal@intel.com>, <jani.nikula@intel.com>,
 <ville.syrjala@linux.intel.com>
References: <20260219094326.34922-1-arun.r.murthy@intel.com>
 <20260224074831.374990-1-arun.r.murthy@intel.com>
 <aZ26pwv6M7gG4W9D@ideak-desk.lan>
Content-Language: en-US
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
In-Reply-To: <aZ26pwv6M7gG4W9D@ideak-desk.lan>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0018.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:179::17) To IA0PR11MB7307.namprd11.prod.outlook.com
 (2603:10b6:208:437::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR11MB7307:EE_|PH8PR11MB6853:EE_
X-MS-Office365-Filtering-Correlation-Id: a5be4f2a-37f6-4edb-f439-08de741e9aee
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ckNxbU5VMUN6V2hpdVBnSC92K0ZadXA2SDBCdDV3SUNsakxLYVlBaWFBS1BT?=
 =?utf-8?B?WUsrOVprK3Bra3N3RlE5dDhzSTBpelN3azNOYTgwSmRIa2ZJV0J2VmRRWFJS?=
 =?utf-8?B?M21YYnFGZndoNjVKZng5RDlmN2RZU2RIVUd5Si9XelMrcGVJOXcvQXJFZ3Bt?=
 =?utf-8?B?VWVkWGtaQ0x5RmQ0RTRsS040UHJPQi9VOEFPbU1mSWxuT0R3WTQ1SkJ1cDBL?=
 =?utf-8?B?TGNyK0sxbHR0YXN6NzQ3Qlc2MHdnL0R5RjBnQUcxeTBZMDE4blAxZW9ZNFNE?=
 =?utf-8?B?ZzhQRE8yRFMxWGxqdFd6amRkakZWZkRac1N0R0Zvc3IyN0xZemZ4Sys2MnFH?=
 =?utf-8?B?TnU3M3c2MktoVkk3b3UrK2pCdkJ5MUx3UkUweC9Cbm42VFVYWXdOM0pMbDVP?=
 =?utf-8?B?YXIxRVdhRkVqZ21HUFFyTVlBVXFYaURSSkIyRWdoL2ozaEtpVmVnRUwxNFdn?=
 =?utf-8?B?SVhBc3hjS3JaQ1JCbWVHRFVFUnhQUDNrbDloTUVKSmh2M0ZKdjNhcitpczBQ?=
 =?utf-8?B?K2drNFN5TGFPQUc0UHZMUi9GcSt1OGxPWXUzVVRuN1RiRnFLaERsZWdRWHk5?=
 =?utf-8?B?UEcwQ0Q3UG94NS9LVXFRZVFOUTRTNUZVSW9GUXNBL2pyY2tzajZEMFREdU5I?=
 =?utf-8?B?cHdmcFJmUEZKUmNZSGgwVVVtVURVV1NBQ3VweG5pcGJPRCt6U1FmZUJ6blU1?=
 =?utf-8?B?dW16K2VLZ0t5cnNabFBiM2wzdVVlZVlPRE1rckJvOFR4Q2VVMmZzUTFsZVhw?=
 =?utf-8?B?K0VQeUN2Q3dJUTBlV3NYUEUvK1BDb1ZzM2t2VmtoQ1M3K3BpQXVuRmdyQ0R2?=
 =?utf-8?B?N0puQVNoSmVKcVZlR1k3dlFpcnBrTEEzRUdSY2I4WXJiZWI5Mms3NHhKeGlh?=
 =?utf-8?B?dUNBZm5KOFpOb2RqTEZtc0hiVTk4SzJPK0lqMFZjNWsvZkZ3eEphbUlneUNF?=
 =?utf-8?B?QUdpRFd2S3hySlNBZ1JGcnBxV0FJUjNiUTNEZkMrZ2ZqcHZDeTBkVTFsdmVT?=
 =?utf-8?B?N1NaWFNTajFDOVIvQmc4VXZoYmRYRlp0Yi83blkvYUlJRUdsRElxdDdDb1B2?=
 =?utf-8?B?RWd2bkJVaTluUG1HVHJyZkcwTEtkZ2diNll5RWVRUk41VU1vdEZaZzNjOGV2?=
 =?utf-8?B?bVNZZjV3MS9EMlZoYjZiOGNuZGdncFFPTjFwV01vSTAyZDMzQmdkZDA0THZq?=
 =?utf-8?B?TDliR0hjWVlxdThSdTZCMW93UXBRbWw4dnZrby83MklNZ0s5dlJmR0pva3E5?=
 =?utf-8?B?bldFbjRQa0pCNS9GMDBUNmJMNnlGSG9NeFdSUk92R3B5ZGoxQ3BQVzRobjJz?=
 =?utf-8?B?Uk5ZT1FVNXk4OG5hWDc1VExRZU5raDl0bDlpTTRyOTRZbk1tUmFPUkFSOUtn?=
 =?utf-8?B?M29Zblk3VEt6cHJVQ0pMYlZVeVJaVitxeDR4VUpqdEpLYysyTUJZMUl6S2tj?=
 =?utf-8?B?SC95S0lLeGwwNVdxYWhrMVVwSThMSFdJbWhZVzJQTk1vVWM5MGFJem5wY3gw?=
 =?utf-8?B?N0ZYM0lWbFJDWGFhQ0t2ZHdhVzdmWXJ3SjZjTjJHRGg5dlRrR0QrN0pZY2g0?=
 =?utf-8?B?QnJ6NVhRS0hsTDNyb3ZSTk5zdHc4N09BRHc5a0RFUUpGWWFZaFlnUzVVWVFR?=
 =?utf-8?B?eWcrRVJFQmVoSTQ4dm45ZmNFS00xUDJ5M3BydVdrZ01XeE5HUEMxTExVZ00x?=
 =?utf-8?B?Ulo3Y0F5b1hzZktQRmdGK2dPTGtCejVBQzFiR2I4QlZiZ2JjYnJEeDluRDdX?=
 =?utf-8?B?Q1RzQXJVQ1NsQk00a2tDTm81UWZxZHJ2T0ZSMnRWMmNBeU91aXNMMUhPNUVD?=
 =?utf-8?B?UXhLbkQ1c05MK1FsTUtXbW50VHp3SHlCbTg5eko5ajhZanB6QWQwbDBabVN2?=
 =?utf-8?B?eVVqOEhLMkRSUkhycitGUWMxeWF0TzRwUlBONERNQ3pub2dnbUZFcEJJeXVO?=
 =?utf-8?B?TFF4a0hnY1Q2dnRTQmpPdWRMMVkyWStyaTdzTzRKWldDc3NRLzdSaVJtT2VV?=
 =?utf-8?B?bGwxV2pxUGNtUWZ2L09ZTEJmL1RKVHRFOUZIRyt4Q2Z1RXdpamhwcmxNalpT?=
 =?utf-8?Q?4DJ1vF?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZWp1NjlNUFpSSFl0bkdxbWNobjNUZy9obElWM21KZ0J4RHY3a0ZIaHc5SkRM?=
 =?utf-8?B?V0JCdkVsWTcramoyeXdEM0NFK29Lb1dCTWlZbm9SVVQ4VzQwckhBenI0djBI?=
 =?utf-8?B?MzdPTDhvUVhvN2wxRzJXcVVJcGszdHI3T2hKYlFabU9kRjNuaHVNRmFzTE83?=
 =?utf-8?B?RXBLL0c2Smlmc1FCeXJUYURaSllHZ2NteSsxR0VGZWcrUHZoYzE4V1k1bURm?=
 =?utf-8?B?Sm54UkQ4TTlzS2p1cVBQYVQrWEYwVy9qczVxalkwd3VRNmR2N1pHUHhYcVRi?=
 =?utf-8?B?MTJ2QjloakVDNmZZVHVRbXdxaFFlbkJ2dGdSaUR1RFhGNUZHaGtkSWlNbHpp?=
 =?utf-8?B?Y281M2YwSFVpUUV1aWRJa3g2TFd6T09sYUxoTWdpSkxWcVhJdXhNb25BUGpy?=
 =?utf-8?B?Ynh4bmk3QmhtVXVpZjRJWXF5MmdqNUJZMHU5cG9HTWdrTjVOdWR1VlE3Y1VH?=
 =?utf-8?B?ZW5mcU5IV3QrWGJpSFA5TUtHSkdwZmRPemlFRG4yY1NWWldLNVRtdGQ5anFE?=
 =?utf-8?B?c2o4Mk45TFdLYTdSZDNqV2NXUS9rejl4aWM5Yzl4THN3YUNiSUttSklHd0lJ?=
 =?utf-8?B?eXdKOFUrZzdCcFdZb3ZPVG1LU0dzcXRnM0FZb05xR2hFV0ZNOXF0OE9MaEY4?=
 =?utf-8?B?b2NXRlAvaDVOdDAvWUZIWkN3eUJuVHVteW11eHhKcWd5eGcrZTRPeUUxd2JE?=
 =?utf-8?B?blJHM0ErZzRId0tEb09RUStRNTJiNWpCSE5WUEl6QUgzT1p0aHJCWjZzRTE3?=
 =?utf-8?B?K3dPdXcyNHJmaXVDL0hodFk2S2Y5QldRVStDdEtrRVR1VitpSHh4cUNBWk5M?=
 =?utf-8?B?dG9nb0pIeWR1YkFPUkJ1Q3dVYjRjMWh4a0J4MjZaN3pEMzZwSmtpYTlFdkpK?=
 =?utf-8?B?bTl4dk5obGdFekFVLzRKdm8xay9XZFNVQ2g4anE3YnNsLzlXNERiNzdXWTN0?=
 =?utf-8?B?RmRsZDNUL1k3UFRlRU5IVzFZRmFIVWpoa09oZXdTWHZHcFNLMXdMNFk5WW43?=
 =?utf-8?B?VkhXLzl6RTd3UVBLSEhaYXNQWnBEekxhbnA3K3NRZXNHd3l1RzRWRU1mTFNN?=
 =?utf-8?B?WThJOE81Ri9hMkhZQ2htMEdBRFpIOXJRd0Y3MGQyZk9hRU8vc081TllyM1Bp?=
 =?utf-8?B?TzBCbFVYMzhQV0I1b0w4U0xDYU1scHZJTDIwQ0RSQ3hpSE9iQWFxZzVqaFQr?=
 =?utf-8?B?T285bFFzcXQ2anhIekRRRFljd3o0TmQ5d0FodkMzaWVJZGplcDZlQi9YUmtY?=
 =?utf-8?B?Uytuc3FJK2RhZm9NKzNXWVZhclhIR3B5cTh0NTI0ci9BSGRNbUdnY1BoakN1?=
 =?utf-8?B?YnVYSWllN01QdmpNTm9VVzlRbWhZd0QyQ050NGVWbDZnSklMKzZxVkNwMmo2?=
 =?utf-8?B?Zzd0dk82azRZR1RleEZkM20vR0drY3BnZldWYUQ4OUdZaktGemtlV0s1eXVE?=
 =?utf-8?B?TDF1WHB0dHpEWUV5K2x6UlJKSGZDNENqem1pd1pYa3d2YjhhUEVjTXZ4QlNI?=
 =?utf-8?B?MmNVWHJLQ21WQktCa2YvbGIycHFpQytmdDNaTmNsYXQySWlOdFluSjNJdzdD?=
 =?utf-8?B?NnE3U0VXMTJwSkNXUHFpa2tYcjJVUGJHYndMOVhlcGdrTlB1QURNZ1BNK0tE?=
 =?utf-8?B?SlE0MUg3VzA5YzlQcHBQS0hPY3Vaa3lXeksxcDd0bzZZSXhZYitFNnd2Z2Jz?=
 =?utf-8?B?SWwyMGp1Q2VyZUR0Y3g4OGgrbjVjVk9kU294MjZqdUF4amEwbGFwbmx6TE5L?=
 =?utf-8?B?QSt6a1pxYXlRZVd3RTlUb3o1NnU0QUlzSVR0UStMakVsWC91VjdqVkZVUG1i?=
 =?utf-8?B?K3BBQjBlQkUzMU1sT3dIWUF5M2NMYi9PTUlQR24rZW0rTy84TVpEV1BIZjdY?=
 =?utf-8?B?bFFzKzZyMDRUbkd4ejE0QlBGbHZpYlA1dnF3YXM5K0NvQ3k4M2R5cHRrbmJN?=
 =?utf-8?B?ckEyUW83bklxaGhQMnNwUSs1Yk5mNWwrVDd2YWtVTlpnRDhDS1VEYmhvc1F2?=
 =?utf-8?B?TFo0aWgwZEhxekJ0RUx3MFg0M2JjclNJNHREN0lhVXRmaiswZUNtNTJaUUtj?=
 =?utf-8?B?a04yMXhoVXUrMC92T0VPUERHaGMxUXl4eHRjdXFIbnRQYzNMbjdzWVRFeVQ1?=
 =?utf-8?B?Y01YQmRqd3hwS0lDeFRvYlU0YmROQll3eVFEWUlLK3g4QXRUeEtnWE84YVNI?=
 =?utf-8?B?Uy91Z0pzc2F3aWZrU21lZFQvNVBzL3JML1l5Mk1STWJPNzc3cHU4WWsxWVc0?=
 =?utf-8?B?UVBhT3R5ZHJsMk81UksxU2d1cU9SNW5nTmNhVnNNNjh1bUovZkNjTDN5QlNU?=
 =?utf-8?B?QWRuUkNYeE9wOFJsUFpJVzhQMUFNYkNia1QwcEM2NVdnTEtLOTgyZz09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a5be4f2a-37f6-4edb-f439-08de741e9aee
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 03:33:13.1900 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WbCud2pG7Ir9H68bQ2qol3jB1CKb6r3dgxIopA4g9EuUtxeLLtCX9MuDVwi0K4xHNt0bojUBvTfjEDsJo3dTAw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6853
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,gitlab.freedesktop.org:url];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[arun.r.murthy@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 5D97919133A
X-Rspamd-Action: no action


On 24-02-2026 20:20, Imre Deak wrote:
> On Tue, Feb 24, 2026 at 01:18:30PM +0530, Arun R Murthy wrote:
>> Its observed that on AUX_CH failure, even if the retry is increased to
>> 1000, it does not succeed. Either the command might be wrong or sink in
>> an unknown/sleep state can cause this. So try waking the sink device.
>> Before reading the DPCD caps wake the sink for eDP and for DP after
>> reading the lttpr caps if present and before reading the dpcd caps wake
>> up the sink device.
>>
>> v2: Use poll_timeout_us (Jani N)
>>      Add the reason, why this change is required (Ville)
>>
>> Closes: https://issues.redhat.com/browse/RHEL-120913
> I wonder what should be the rule with non-public links like the above.
> For instance, we do not put VLK-xxx links exactly because those are
> non-public. Should/could we demand that RedHat opens a public ticket?
> Jani?
There is a JIRA as well
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4391
>> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c       | 38 +++++++++++++++++++
>>   drivers/gpu/drm/i915/display/intel_dp.h       |  1 +
>>   .../drm/i915/display/intel_dp_link_training.c |  3 ++
>>   3 files changed, 42 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 025e906b63a9..fa0730f7b92a 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -4705,6 +4705,42 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
>>   	intel_edp_set_data_override_rates(intel_dp);
>>   }
>>   
>> +/* Spec says to try for 3 times, its doubled to add the software overhead */
>> +#define AUX_CH_WAKE_RETRY	6
>> +
>> +void intel_dp_wake_sink(struct intel_dp *intel_dp)
>> +{
>> +	u8 value = 0;
>> +	int ret = 0;
>> +
>> +	intel_dp_dpcd_set_probe(intel_dp, false);
> Is there any particular reason to turn off/on the probing? I don't see
> any reason why the DP_SET_POWER polling would need that. In any case
> turning it off/on this way is not ok: reading the DPRX caps, which would
> call this function, could happen at any time after a sink gets
> connected, so turning probing back on at the end of this function would
> re-enable it incorrectly for sinks where it's been already established
> that the probing workaround is not needed and should stay disabled.
This function intel_dp_wake_sink() is called from edp_init_dpcd and 
dp_init_lttpr_dprx_caps.
dpcd_set_probe is set to true in dp_aux_init which is called before 
calling intel_edp_init_connector.

Probe is set to true, hence in this function I am setting it to false 
and then setting back to true.
But there can be a possibility of reading lttpr_dprx_caps being called 
later as well.

Will correct this to check if probe is already being set to true, will 
then disable before waking the sink and restore the probe status at the end.

Will get this corrected in the next revision.

Thanks and Regards,
Arun R Murthy
-------------------

>> +
>> +	/*
>> +	 * Wake the sink device
>> +	 * Spec DP2.1 section 2.3.1.2 if AUX CH is powered down by writing 0x02
>> +	 * to DP_SET_POWER dpcd reg, 1ms time would be required to wake it up
>> +	 */
>> +	ret = poll_timeout_us(ret = drm_dp_dpcd_readb(&intel_dp->aux, DP_SET_POWER, &value),
>> +			      ret > 0,
>> +			      1000, AUX_CH_WAKE_RETRY * 1000, true);
>> +
>> +	/*
>> +	 * If sink is in D3 then it may not respond to the AUX tx so
>> +	 * wake it up to D3_AUX_ON state
>> +	 * If the above poll_timeout_us fails, try waking the sink.
>> +	 */
>> +	if (value == DP_SET_POWER_D3 || ret < 0) {
>> +		/* After setting to D0 need a min of 1ms to wake(Spec DP2.1 sec 2.3.1.2) */
>> +		drm_dp_dpcd_writeb(&intel_dp->aux, DP_SET_POWER,
>> +				   DP_SET_POWER_D0);
>> +		fsleep(1000);
>> +		drm_dp_dpcd_writeb(&intel_dp->aux, DP_SET_POWER,
>> +				   DP_SET_POWER_D3_AUX_ON);
>> +	}
>> +
>> +	intel_dp_dpcd_set_probe(intel_dp, true);
>> +}
>> +
>>   static bool
>>   intel_edp_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector)
>>   {
>> @@ -4713,6 +4749,8 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector
>>   	/* this function is meant to be called only once */
>>   	drm_WARN_ON(display->drm, intel_dp->dpcd[DP_DPCD_REV] != 0);
>>   
>> +	intel_dp_wake_sink(intel_dp);
>> +
>>   	if (drm_dp_read_dpcd_caps(&intel_dp->aux, intel_dp->dpcd) != 0)
>>   		return false;
>>   
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
>> index b0bbd5981f57..3f16077c0cc7 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.h
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
>> @@ -232,6 +232,7 @@ bool intel_dp_dotclk_valid(struct intel_display *display,
>>   bool intel_dp_joiner_candidate_valid(struct intel_connector *connector,
>>   				     int hdisplay,
>>   				     int num_joined_pipes);
>> +void intel_dp_wake_sink(struct intel_dp *intel_dp);
>>   
>>   #define for_each_joiner_candidate(__connector, __mode, __num_joined_pipes) \
>>   	for ((__num_joined_pipes) = 1; (__num_joined_pipes) <= (I915_MAX_PIPES); (__num_joined_pipes)++) \
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> index 54c585c59b90..cbb712ea9f60 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> @@ -270,6 +270,9 @@ int intel_dp_init_lttpr_and_dprx_caps(struct intel_dp *intel_dp)
>>   		lttpr_count = intel_dp_init_lttpr(intel_dp, dpcd);
>>   	}
>>   
>> +	/* After reading LTTPR wake up the sink before reading DPRX caps */
>> +	intel_dp_wake_sink(intel_dp);
>> +
>>   	/*
>>   	 * The DPTX shall read the DPRX caps after LTTPR detection, so re-read
>>   	 * it here.
>> -- 
>> 2.25.1
>>
