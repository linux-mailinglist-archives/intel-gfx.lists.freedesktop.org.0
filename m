Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4F329AD763
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 00:16:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2FEC10E388;
	Wed, 23 Oct 2024 22:16:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PvPjzKTZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5297810E254;
 Wed, 23 Oct 2024 22:16:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729721811; x=1761257811;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:cc:date:message-id:mime-version;
 bh=EN1MROl5RprGqiUeox3N13s2ize72zVjHTlxXT2pULY=;
 b=PvPjzKTZCLnXZmJ9SQt/k6OMAWabMRaNRLgP82CwgvmmEaJov8mcZcD5
 9ZE9E1ndqy/x+2NDXiJWhWCNHOuFAfoEqRzuG1XubIDmOfqY4RJyPBM4p
 kjC+0ybd+38aGjPXunetFv1yESbxFJP0BYiv89gbyylskFCtEtjSYDkxl
 fJk5z4wy8RnDxuJRG0kIJSaatc0N7Kna3FVPVsr1BapdHACVbhsa3mycD
 RcTq5fpbEa0KPuZP04IDvACh5f1LU9AL/e+NzoJ3AaAUBI5RSedwgowBT
 nlT0x/9eitlv/XBkRJTP2mFUkTCCe8DcwO1Ir2f8uoCZCq9a1O6eRVkBV w==;
X-CSE-ConnectionGUID: sjtkUfsUS1eas+NxVsAb1g==
X-CSE-MsgGUID: 2IFozhIiR3KAxH13o7Ys6A==
X-IronPort-AV: E=McAfee;i="6700,10204,11234"; a="29432969"
X-IronPort-AV: E=Sophos;i="6.11,227,1725346800"; d="scan'208";a="29432969"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 15:16:51 -0700
X-CSE-ConnectionGUID: NadU1a6tSU6SL/OqbIDKVg==
X-CSE-MsgGUID: 7/q3LgQFQLCVQ1KIZLqbug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,227,1725346800"; d="scan'208";a="85186818"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Oct 2024 15:16:51 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 23 Oct 2024 15:16:50 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 23 Oct 2024 15:16:50 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 23 Oct 2024 15:16:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mIqvcAUMtuBG6nj33yqQkmbAnIJCiwQMyDSl6EGehCvDzTOWKAD3kIgmXbUpzXnyZKg0roFL9Zkgc1ivzh5g4ENiJTKZaIBxYHFnDG+ZTrbsK8s4zd50uHirzqZz07y5o0s0Ii6XbixdwAZWqPUuaZHfdqjOpk3Bb4SaaLOYd9L3oGgFM5+NYsuqtDawvNRIqak5JSAHZGygwpGuATPdvC//P+POd1SVCpAJHc8qdtUro0fPlCQ1SVkho3qMaY1nPXI3stqj3QrjG0RxCjmhmPvPw3N9bWklO34BvaR3huknA9E7SnDSeN60fyCNZHIRLrnwzO6HojZePKm869+5oA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=h5qDzfV03noGKHrTOujG3vddQT+FrmrpxXz27snv31U=;
 b=TOHJkEuxCD251J7xxb+A7tfB1SeS2gCG7hmyf/GtIl8DFGRyh00DfqLAEwQpgZd6n4djbV0HLLE9WsqQm0gF58r0tYMlmCrkcBM87BwjH678iaAMr+hbKdnHkNW6DT41F68MyIBkA7252aRDO6jlufPwmt582vl+zZvZmk2vPb3MrQVNyVC2Hp/ho2dZSbVnu85uivAStzshFlxJfGnCXX8u5uP0+7m99130+/8fxIVXVTDvdbzsDBQGqONQ+TPqqI9rRb4igGslF8JC9ilLTB3QHjFrkCwHN5myPCnMwc/IeF8X4uD2Nmpf4Sed7YNwbLIfNh4LrMYGUg0CqPyP3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DS0PR11MB7629.namprd11.prod.outlook.com (2603:10b6:8:146::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.18; Wed, 23 Oct
 2024 22:16:40 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8093.018; Wed, 23 Oct 2024
 22:16:40 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20241023214701.963830-2-clinton.a.taylor@intel.com>
References: <20241023214701.963830-1-clinton.a.taylor@intel.com>
 <20241023214701.963830-2-clinton.a.taylor@intel.com>
Subject: Re: [PATCH v2 01/12] drm/i915/xe3lpd: Update pmdemand programming
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Clint Taylor <clinton.a.taylor@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@intel.com>
Date: Wed, 23 Oct 2024 19:16:34 -0300
Message-ID: <172972179444.4179.16773186186466651704@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR03CA0065.namprd03.prod.outlook.com
 (2603:10b6:303:b6::10) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DS0PR11MB7629:EE_
X-MS-Office365-Filtering-Correlation-Id: 3a858d88-e5fb-4caa-8e7b-08dcf3b05e58
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UjBDOWJudjlkTzA4L2RXSU1qeWNwQnQyc3l4YzUvL1hidlZaaWhnMGt1RTRW?=
 =?utf-8?B?N253Wnp0WWExZU5HcHEyb2ROdE9IUDFzYlp0M0VFUlRoaVNlNEhrU2FOd1gz?=
 =?utf-8?B?NnV1dmppMWRBS3gwNTBhNW9rbk9WL2pSMkNheVN3QUdpSFF2YXZxYzFWajdk?=
 =?utf-8?B?WVJobzhoakZQRmNaSXRtUUd0NytkZk0zaFhMalJ2QmhKelVHemEzam9tcXlp?=
 =?utf-8?B?a1g0V2M4S0NFbzVLaHJiOTRtMy9qTmxkNG5LYy83NTdqSEdLWE9KdnkxVFZD?=
 =?utf-8?B?U1I5d3hyQS8vd1hQMlI1cjlOaWlKbzFKV1BYSXNIZjhCVUhBSWdiUzZIV3F2?=
 =?utf-8?B?bXZxM3RYWGt3SlJISi9IdXZRZ1IwN2lkUEJvc1YrRmt2b21admFUb05Ga096?=
 =?utf-8?B?RWlSd2xjYVU3Z09WZjNCc2M3eEh6SUdwTDkwQVVjb2dYY1Vpbk5NekphZDV5?=
 =?utf-8?B?S1lGbkkyekFxRm00ak5OdlNYZHJKTW0vM2JaUjQxd0pHOFpxdmQ4cFVNeVhJ?=
 =?utf-8?B?aWtSUTBjSmNYc2ZQKzFzaVRmNzBleFNnR1VlNlFKWm5qSE1MdkExZTVRNWgx?=
 =?utf-8?B?RUJqY2JjenlMUEQ2WStqeUxhdkRYK1RFakJVanhJTEkrZUxmaGJOQ05kV1lw?=
 =?utf-8?B?OCsxYjBtVE9KVnNGdU9XcHFrYXkyalZId1FFUzFwZEZWd3NOS2pzR3VSOUFH?=
 =?utf-8?B?S21Kc2tyUWVJNzdaVmJrQUpUWnNIVTlOTmcycVZKUnJONFNuaWU4bWs0cTN0?=
 =?utf-8?B?cVY4dGdxMlI0UUZVS25hTXYrcCthM2hRRmwzQ3lZSzI3bWdHaDlWVk1XN1dY?=
 =?utf-8?B?N3VnN25XMXMzc0d4bW9tbk1YcHBKNXAzN3gveFpoU3FZUVoycjNoOWpEcW5l?=
 =?utf-8?B?RWRlSkhqd1VTKzBDVWxnZzF1aFFVekNoNkZmQVQrZVZNUTNoVGFkd2lGYm02?=
 =?utf-8?B?Yk5lVDdFUjBiUi9qaE9lVnJOWGFXYUp3cUZ1WHJ4L09wbXQ4K0J4anBqOEE3?=
 =?utf-8?B?NG8zMEhaMEE5UUZTVUFtTlhrenA5NWhPaTdLNUJPY1Y5bnBqbldWcytJbE9D?=
 =?utf-8?B?YVZjN0dqdUlSdTN3ZTB2WmFBb01Nd2pRK3lsZDkwN25ZYlBjbHZuMGoySEhE?=
 =?utf-8?B?QTcxVHFpRU45TUZRMmc3NVN6SXhlWkYzd2pMOHBJRUI2SVVoYU13OVZHdmox?=
 =?utf-8?B?VjMxWTdEWXUxN05QWFNLekF4ZHg1TU5pNnlDVVdnV1BDZFI5cU1jOFluWEcz?=
 =?utf-8?B?TDVzejBIRTcwUUpSdEE3UHVIRUFpbVM1OTY0YTFJdnRHK1VkbGxjYkdodXJP?=
 =?utf-8?B?TzB6c0VOb0hnRjlMMzhJV2tDU3FkWXluSXUxbktUejBmZWRjZEhGV0JEQTA5?=
 =?utf-8?B?My9zZHhJY2ljZ2J5UlVzL3pwL2ZLbTBrT0ltUllvZWtwUFp1TmIxK0Joc0J3?=
 =?utf-8?B?RDYvWXdzL3FzWkU0TjdnYUJuWFJub21Db1pYMEprYzlKZFVYNWtPOTdxOXlZ?=
 =?utf-8?B?akVscFM1OG0yQlVzRjdUY3FXWHByQ3luZHNndWVDVGlzRDY0Z3pGSUgzT2pC?=
 =?utf-8?B?ZWpWZDVxZFhqMzYzTndQSHFyWmM0UUxxRlRRV3dFeWdEbTkvNXQ0M3o2YUhG?=
 =?utf-8?B?M2FUY3V3REs0WUxSM2xvVDF1cFBvRFE0Y1pDUVgyUTZpSVppcStpOGJrV3hp?=
 =?utf-8?B?NUVUK3hET3JZVjNxRW5VaC9FS0x2RXBueURpZ1lVVHdFVU9vMEtpdTY4K2w3?=
 =?utf-8?Q?b9vY4hwIvPT1e3YQ7w=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S2ExMFQ0czJ5OXZQODlYZW5sM0crN1pEUDBaNktIcGFGYnlVa3FuTXdtZkZX?=
 =?utf-8?B?UVE3eUNUWkJqbEJLbzFMbDk2c3kzdFNSb3VEcXE2U3gzckVNbWlsOEhHa1ds?=
 =?utf-8?B?YnYza0VTTDZHalZEYmFaMW9uWEZZcGNGNkNPMGduenJFMHEvT0s5eFo2QkpS?=
 =?utf-8?B?VVh1blk5NFdvajQ0bnBxMmJFNXV5K1N4Y2FUbkdGM3gxUDVHdnZEOUxyUjZJ?=
 =?utf-8?B?WFVCK1M2ek1NdWFxSDdJNVJwZDI1VHJkakRzbk9OaHR4MkJoQUdJYiswUEVp?=
 =?utf-8?B?bFhabHZzNWNhL2RWbExocEdUVFRHT04zSE5BWjduMEJ2ZEU5a2plVDlsMFU4?=
 =?utf-8?B?ZHlqcm5zeTc0TXE5K2FUUXJuSi9vb0JBYWZKYUUrMWNwcFJCMFVqcFUwRXpp?=
 =?utf-8?B?eE5uWU5RWjRBbTlGK1N5V09YdWl4a05IcWYyMStkM2ZWaE9LTlhPTVU3QzRw?=
 =?utf-8?B?ZlVLZlNJR3pjUksrQmR4MEVDK0Q5Tk94MG9ERzlDanRpR0F4amNFM0hQQzdy?=
 =?utf-8?B?enM4RTVlVDdCTnZBVVA2MmxwYk5lK3MwVy9CK1paWm5QbFJ4eFZpZG5hZGR1?=
 =?utf-8?B?QVZUWjlNUWlUTlhlNUl2TVpkajA4V0xURzZmTVlpOXJPVTFVV1hoSVFTMVZ1?=
 =?utf-8?B?ZzBvMElKNVoyVUtaWDI5L3c5R1AxQVF2V0hCR1RBQ3FvdlV2aGVoOUs1ZFpi?=
 =?utf-8?B?MkJNZTVFTkxIaSs4UllmVzBVMzNhVi9kTE44cnRYZ3FBam56QWlzZ3MrMkdw?=
 =?utf-8?B?V1NJL3pSQ0t5Q2haZ2tRNThnNSs5dUdHbll1cmZVcnFydW1BbjNCY0grbVBy?=
 =?utf-8?B?VCtFVGl2dkQ0L1NTcXpUdm9vYnI2cWRrelZiYlZxbGFzN0UrOWMzQ3pUOGly?=
 =?utf-8?B?OW9EYXZnaWxWYnlmWE5ZZjFyeGJiVzBHRUxxVHIzZy90TC9CTmdGZWlLUHJX?=
 =?utf-8?B?bi8xYjV3a08zMnNNbXpRaVBYQkN6VkRYOFVwN0hnU1BWaWZjVXJLdHNFb3BS?=
 =?utf-8?B?UWRmVkE1VWNpRm1HalQ5T0pHMjdiT2pqdFFWU2VBS0ZiUkJkRGsyV3pNYmli?=
 =?utf-8?B?Y0VKV0JMK2FjVE9CYlNRSFcvQmpXWmhLcVVJZDZsakV5QTVaUUhlVVlTL3gw?=
 =?utf-8?B?SUNOejE0YWRHN0VLUEpFU2hDeVhuTGgrcG9WeEZqNlpBdEtxRXFYdnVqY0lS?=
 =?utf-8?B?OHZBK2tJb0k5ekE3c2pnaXVSZkJldW13UEVNdUNYRjFIVUZtVmlSWkd2WXJV?=
 =?utf-8?B?TjJBOGJEM1F2UklDekpOV0VpMmhHVWVuZW1jYXMzZjlPVXpKZWlYaFhvMVNx?=
 =?utf-8?B?MWRYL0hTTnNCM1NObTFBNXNEdktUK3c5bHVPbzI2U3N3TXkrZUl2Um1UNnpi?=
 =?utf-8?B?VDNkNGhjOXBFa0cwcUFFSHZwbTg1dkpKWnZ0ekZ3MkJDWEZFQXRmQTBROHhM?=
 =?utf-8?B?aE9WY05RY3Ric09BZFFxOG93eGg3QXVZRWJTOWNzRCtUR1JaZi9aajU0YXgr?=
 =?utf-8?B?SGdzeXdORmhyV3lHanJTdXl4OHczSkhxNGhHZVhrZDlRc1R4cFBsczkrbHU4?=
 =?utf-8?B?UVN3bEFYWklwV3p3bDNnT2Z0U1FhK0htdndLb1R6d0pMSzVFKzI3aEFSd0Ns?=
 =?utf-8?B?VzBXdStYMVlkRnhtbUc0UUYyZ1JOM2dZaGc3V0VXQ3JmZE9kWG05Um90d2dx?=
 =?utf-8?B?TUVrWEV1eU8xUldoV0xWaG5IWEliTER3SXBOYzVNbXlNN1N2Q0hzeGtqUkly?=
 =?utf-8?B?aHRNOWZ5ZGRGL1ZNMnR4TTlmOGQxVVlJdnlKd3B6VmNiUGd1cUZXK2xNZklu?=
 =?utf-8?B?bWxDOURCbkQ1UUdFdiszeDR2U1lYd1JTVW04cm03bnI0KytxYUNib0Z6QWpU?=
 =?utf-8?B?NmU5SHpiM21iNmJYamlUaXpjMGlrbm1JeHJHRkdGRUt3dnUxVTBZc2pOUFlM?=
 =?utf-8?B?cTB2eWl2YkhOWUZYRzBUN0Y0TkZHWHB1Wk5BaDNuT2N2Y0lIY0xpU3gzVlY4?=
 =?utf-8?B?cHJpYlhQNGdGZkd5OHE2bE5CancrZUR2UWV2SDJ3Y25GUytuY2VXcTJxdGNV?=
 =?utf-8?B?VTRscXF6TjFJQmQwWjlISXZ1YWJBUEMwQkQ3ZWd2KzFMYVVLMFFxYWU2aFNM?=
 =?utf-8?B?Wkc5dWtKT1hJdXU3TW1zQWhLKzAxUzhLQURtU0dVRHhLSE5RaTJieE1NNDhu?=
 =?utf-8?B?QVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a858d88-e5fb-4caa-8e7b-08dcf3b05e58
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Oct 2024 22:16:40.6154 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IEIVX0he47hjcfVqebkyTQHwvVaK7e7Bftyqw1ZL5DD/prd6OVLIxmGvjs57LNuIDbJZs4Hgxx3nRlJKPpwV4g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7629
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

Quoting Clint Taylor (2024-10-23 18:46:50-03:00)
>From: Matt Roper <matthew.d.roper@intel.com>
>
>There are some minor changes to pmdemand handling on Xe3:
> - Active scalers are no longer tracked.  We can simply skip the readout
>   and programming of this field.
> - Active dbuf slices are no longer tracked.  We should skip the readout
>   and programming of this field and also make sure that it stays 0 in
>   our software bookkeeping so that we won't erroneously return true
>   from intel_pmdemand_needs_update() due to mismatches.
> - Even though there aren't enough pipes to utilize them, the size of
>   the 'active pipes' field has expanded to four bits, taking over the
>   register bits previously used for dbuf slices.  Since the lower bits
>   of the mask have moved, we need to update our reads/writes to handle
>   this properly.
>
>v2: active pipes is no longer always max 3, add in the ability to go to
>4 for PTL.
>v3: use intel_display for display_ver check, use INTEL_NUM_PIPES
>v4: add a conditional for number of pipes macro vs using 3.
>v5: reverse conditional order of v4.
>
>Bspec: 68883, 69125
>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
>Signed-off-by: Clint Taylor <Clinton.A.Taylor@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_pmdemand.c | 68 +++++++++++++------
> drivers/gpu/drm/i915/display/intel_pmdemand.h |  4 +-
> drivers/gpu/drm/i915/i915_reg.h               |  1 +
> 3 files changed, 50 insertions(+), 23 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/d=
rm/i915/display/intel_pmdemand.c
>index ceaf9e3147da..746b547dddd0 100644
>--- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
>+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
>@@ -258,6 +258,7 @@ intel_pmdemand_connector_needs_update(struct intel_ato=
mic_state *state)
>=20
> static bool intel_pmdemand_needs_update(struct intel_atomic_state *state)
> {
>+        struct intel_display *display =3D to_intel_display(state);
>         const struct intel_bw_state *new_bw_state, *old_bw_state;
>         const struct intel_cdclk_state *new_cdclk_state, *old_cdclk_state=
;
>         const struct intel_crtc_state *new_crtc_state, *old_crtc_state;
>@@ -274,12 +275,16 @@ static bool intel_pmdemand_needs_update(struct intel=
_atomic_state *state)
>         new_dbuf_state =3D intel_atomic_get_new_dbuf_state(state);
>         old_dbuf_state =3D intel_atomic_get_old_dbuf_state(state);
>         if (new_dbuf_state &&
>-            (new_dbuf_state->active_pipes !=3D
>-             old_dbuf_state->active_pipes ||
>-             new_dbuf_state->enabled_slices !=3D
>-             old_dbuf_state->enabled_slices))
>+            new_dbuf_state->active_pipes !=3D old_dbuf_state->active_pipe=
s)
>                 return true;
>=20
>+        if (DISPLAY_VER(display) < 30) {
>+                if (new_dbuf_state &&
>+                    new_dbuf_state->enabled_slices !=3D
>+                    old_dbuf_state->enabled_slices)
>+                        return true;
>+        }
>+
>         new_cdclk_state =3D intel_atomic_get_new_cdclk_state(state);
>         old_cdclk_state =3D intel_atomic_get_old_cdclk_state(state);
>         if (new_cdclk_state &&
>@@ -327,10 +332,15 @@ int intel_pmdemand_atomic_check(struct intel_atomic_=
state *state)
>         if (IS_ERR(new_dbuf_state))
>                 return PTR_ERR(new_dbuf_state);
>=20
>-        new_pmdemand_state->params.active_pipes =3D
>-                min_t(u8, hweight8(new_dbuf_state->active_pipes), 3);
>-        new_pmdemand_state->params.active_dbufs =3D
>-                min_t(u8, hweight8(new_dbuf_state->enabled_slices), 3);
>+        if (DISPLAY_VER(i915) >=3D 30) {
>+                new_pmdemand_state->params.active_dbufs =3D
>+                        min_t(u8, hweight8(new_dbuf_state->enabled_slices=
), 3);

Setting active_dbufs belongs to the "else" clause, as doing that is only
valid for pre-Xe3_LPD. (What I meant in my previous review was that the
selection of INTEL_NUM_PIPES(i915) vs 3 was the other way around).

>+                new_pmdemand_state->params.active_pipes =3D
>+                        min_t(u8, hweight8(new_dbuf_state->active_pipes),=
 INTEL_NUM_PIPES(i915));

Since this will require a new version, I think we would make stuff
simpler if we had a "max_active_pipes" variable that would hold
INTEL_NUM_PIPES(i915) for DISPLAY_VER(i915) >=3D 30 and 3 otherwise.

That way, this hunk could be turned into something like:

    new_pmdemand_state->params.active_pipes =3D
            min_t(u8, hweight8(new_dbuf_state->active_pipes), max_active_pi=
pes);

    if (DISPLAY_VER(i9) < 30)
        new_pmdemand_state->params.active_dbufs =3D
                min_t(u8, hweight8(new_dbuf_state->enabled_slices), 3);

(The above is using spaces instead of tabs).

>+        }
>+        else
>+                new_pmdemand_state->params.active_pipes =3D
>+                        min_t(u8, hweight8(new_dbuf_state->active_pipes),=
 3);
>=20
>         new_cdclk_state =3D intel_atomic_get_cdclk_state(state);
>         if (IS_ERR(new_cdclk_state))
>@@ -395,27 +405,32 @@ intel_pmdemand_init_pmdemand_params(struct drm_i915_=
private *i915,
>=20
>         reg2 =3D intel_de_read(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1))=
;
>=20
>-        /* Set 1*/
>         pmdemand_state->params.qclk_gv_bw =3D
>                 REG_FIELD_GET(XELPDP_PMDEMAND_QCLK_GV_BW_MASK, reg1);
>         pmdemand_state->params.voltage_index =3D
>                 REG_FIELD_GET(XELPDP_PMDEMAND_VOLTAGE_INDEX_MASK, reg1);
>         pmdemand_state->params.qclk_gv_index =3D
>                 REG_FIELD_GET(XELPDP_PMDEMAND_QCLK_GV_INDEX_MASK, reg1);
>-        pmdemand_state->params.active_pipes =3D
>-                REG_FIELD_GET(XELPDP_PMDEMAND_PIPES_MASK, reg1);
>-        pmdemand_state->params.active_dbufs =3D
>-                REG_FIELD_GET(XELPDP_PMDEMAND_DBUFS_MASK, reg1);
>         pmdemand_state->params.active_phys =3D
>                 REG_FIELD_GET(XELPDP_PMDEMAND_PHYS_MASK, reg1);
>=20
>-        /* Set 2*/
>         pmdemand_state->params.cdclk_freq_mhz =3D
>                 REG_FIELD_GET(XELPDP_PMDEMAND_CDCLK_FREQ_MASK, reg2);
>         pmdemand_state->params.ddiclk_max =3D
>                 REG_FIELD_GET(XELPDP_PMDEMAND_DDICLK_FREQ_MASK, reg2);
>-        pmdemand_state->params.scalers =3D
>-                REG_FIELD_GET(XELPDP_PMDEMAND_SCALERS_MASK, reg2);
>+
>+        if (DISPLAY_VER(i915) >=3D 30) {
>+                pmdemand_state->params.active_pipes =3D
>+                        REG_FIELD_GET(XE3_PMDEMAND_PIPES_MASK, reg1);
>+        } else {
>+                pmdemand_state->params.active_pipes =3D
>+                        REG_FIELD_GET(XELPDP_PMDEMAND_PIPES_MASK, reg1);
>+                pmdemand_state->params.active_dbufs =3D
>+                        REG_FIELD_GET(XELPDP_PMDEMAND_DBUFS_MASK, reg1);
>+
>+                pmdemand_state->params.scalers =3D
>+                        REG_FIELD_GET(XELPDP_PMDEMAND_SCALERS_MASK, reg2)=
;
>+        }
>=20
> unlock:
>         mutex_unlock(&i915->display.pmdemand.lock);
>@@ -442,6 +457,10 @@ void intel_pmdemand_program_dbuf(struct drm_i915_priv=
ate *i915,
> {
>         u32 dbufs =3D min_t(u32, hweight8(dbuf_slices), 3);
>=20
>+        /* PM Demand only tracks active dbufs on pre-Xe3 platforms */
>+        if (DISPLAY_VER(i915) >=3D 30)
>+                return;
>+
>         mutex_lock(&i915->display.pmdemand.lock);
>         if (drm_WARN_ON(&i915->drm,
>                         !intel_pmdemand_check_prev_transaction(i915)))
>@@ -460,7 +479,8 @@ void intel_pmdemand_program_dbuf(struct drm_i915_priva=
te *i915,
> }
>=20
> static void
>-intel_pmdemand_update_params(const struct intel_pmdemand_state *new,
>+intel_pmdemand_update_params(struct drm_i915_private *i915,

Jani's feedback on other patches is that we should start using struct
intel_display for new variables and parameters.

--
Gustavo Sousa

>+                             const struct intel_pmdemand_state *new,
>                              const struct intel_pmdemand_state *old,
>                              u32 *reg1, u32 *reg2, bool serialized)
> {
>@@ -495,16 +515,22 @@ intel_pmdemand_update_params(const struct intel_pmde=
mand_state *new,
>         update_reg(reg1, qclk_gv_bw, XELPDP_PMDEMAND_QCLK_GV_BW_MASK);
>         update_reg(reg1, voltage_index, XELPDP_PMDEMAND_VOLTAGE_INDEX_MAS=
K);
>         update_reg(reg1, qclk_gv_index, XELPDP_PMDEMAND_QCLK_GV_INDEX_MAS=
K);
>-        update_reg(reg1, active_pipes, XELPDP_PMDEMAND_PIPES_MASK);
>-        update_reg(reg1, active_dbufs, XELPDP_PMDEMAND_DBUFS_MASK);
>         update_reg(reg1, active_phys, XELPDP_PMDEMAND_PHYS_MASK);
>=20
>         /* Set 2*/
>         update_reg(reg2, cdclk_freq_mhz, XELPDP_PMDEMAND_CDCLK_FREQ_MASK)=
;
>         update_reg(reg2, ddiclk_max, XELPDP_PMDEMAND_DDICLK_FREQ_MASK);
>-        update_reg(reg2, scalers, XELPDP_PMDEMAND_SCALERS_MASK);
>         update_reg(reg2, plls, XELPDP_PMDEMAND_PLLS_MASK);
>=20
>+        if (DISPLAY_VER(i915) >=3D 30) {
>+                update_reg(reg1, active_pipes, XE3_PMDEMAND_PIPES_MASK);
>+        } else {
>+                update_reg(reg1, active_pipes, XELPDP_PMDEMAND_PIPES_MASK=
);
>+                update_reg(reg1, active_dbufs, XELPDP_PMDEMAND_DBUFS_MASK=
);
>+
>+                update_reg(reg2, scalers, XELPDP_PMDEMAND_SCALERS_MASK);
>+        }
>+
> #undef update_reg
> }
>=20
>@@ -529,7 +555,7 @@ intel_pmdemand_program_params(struct drm_i915_private =
*i915,
>         reg2 =3D intel_de_read(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1))=
;
>         mod_reg2 =3D reg2;
>=20
>-        intel_pmdemand_update_params(new, old, &mod_reg1, &mod_reg2,
>+        intel_pmdemand_update_params(i915, new, old, &mod_reg1, &mod_reg2=
,
>                                      serialized);
>=20
>         if (reg1 !=3D mod_reg1) {
>diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.h b/drivers/gpu/d=
rm/i915/display/intel_pmdemand.h
>index 128fd61f8f14..a1c49efdc493 100644
>--- a/drivers/gpu/drm/i915/display/intel_pmdemand.h
>+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.h
>@@ -20,14 +20,14 @@ struct pmdemand_params {
>         u8 voltage_index;
>         u8 qclk_gv_index;
>         u8 active_pipes;
>-        u8 active_dbufs;
>+        u8 active_dbufs;        /* pre-Xe3 only */
>         /* Total number of non type C active phys from active_phys_mask *=
/
>         u8 active_phys;
>         u8 plls;
>         u16 cdclk_freq_mhz;
>         /* max from ddi_clocks[] */
>         u16 ddiclk_max;
>-        u8 scalers;
>+        u8 scalers;                /* pre-Xe3 only */
> };
>=20
> struct intel_pmdemand_state {
>diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_r=
eg.h
>index 405f409e9761..89e4381f8baa 100644
>--- a/drivers/gpu/drm/i915/i915_reg.h
>+++ b/drivers/gpu/drm/i915/i915_reg.h
>@@ -2696,6 +2696,7 @@
> #define  XELPDP_PMDEMAND_QCLK_GV_BW_MASK                REG_GENMASK(31, 1=
6)
> #define  XELPDP_PMDEMAND_VOLTAGE_INDEX_MASK                REG_GENMASK(14=
, 12)
> #define  XELPDP_PMDEMAND_QCLK_GV_INDEX_MASK                REG_GENMASK(11=
, 8)
>+#define  XE3_PMDEMAND_PIPES_MASK                        REG_GENMASK(7, 4)
> #define  XELPDP_PMDEMAND_PIPES_MASK                        REG_GENMASK(7,=
 6)
> #define  XELPDP_PMDEMAND_DBUFS_MASK                        REG_GENMASK(5,=
 4)
> #define  XELPDP_PMDEMAND_PHYS_MASK                        REG_GENMASK(2, =
0)
>--=20
>2.25.1
>
