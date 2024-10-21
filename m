Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D05279A6647
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2024 13:15:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D2A810E497;
	Mon, 21 Oct 2024 11:15:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HekyUKJ3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 241A110E497;
 Mon, 21 Oct 2024 11:15:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729509317; x=1761045317;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=QScTfT5X4YRdPUU4BwFLB9oKxAtb0cpM/TlcWOq2qkg=;
 b=HekyUKJ3CQey1Kj4yBuZcb+WRwhP1UFIBS9PBSlsi1X0xktz6h5j/GXe
 zAghnEmyQie1cd9IuLfgv0h7Bh9zvlhFWVJULJA7V0eVxixBb/AO358/3
 pIzW35zCoEEd7HuXmUuZsihFZReHqNuuOg9vK7lu3iKGy+Qzb6gkdru+s
 9qnaqbe9LWNXMjf42uEAbSRZw4WZI45vUxdQqAo6BlHVhTpYCNcdeBRWa
 3xGsi+Ww7dvv4q40seb1NgpTDQ2QPp3H+HcHM9EFRRotWDYaM/rNHpiEK
 J0c0WhcqBMWVXuu7I5Jmc+BvwRVQU0xN4AloFeMQD7NnMIE6x8BnMiX9M Q==;
X-CSE-ConnectionGUID: 6qwurVGUSTmHnf6KGZvhow==
X-CSE-MsgGUID: BF0LVoPfSUePj0WYkb29sw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="32672381"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="32672381"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 04:15:16 -0700
X-CSE-ConnectionGUID: ygL5DW1ESs6rb0hofos+lQ==
X-CSE-MsgGUID: 6pHXQl+cT2K1D2rScULe5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,220,1725346800"; d="scan'208";a="83501501"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Oct 2024 04:15:12 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 21 Oct 2024 04:15:11 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 21 Oct 2024 04:15:11 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 21 Oct 2024 04:15:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vz+775TxkgXJPIpMwBBCw27YbDSZEEMod5eTM8OCW8yRqSvXb7AHdq/m3pBwvFhDInMLjgP//nj3C9d1l1oWmhSLz97g+v+D+JtSUWODI4/8nMbzLdUJbYnK4RBMI3qFNbfNVB0UjHQ3Hg6txCMbZB+CTt4rG2+oJTbIVDyTRBYekAYkJ4EJqj6TxnNQFUmKvPRAAOKo33TEvbCZkJdNgrrzu26mi9sBK+StmyLzoUSWSD0t3w9zLSWyvMwLmKHwn7ZyKhczI9sskoLe8HK0DRxC97WEfAMmWFPrDoIxUxPw87S7X+BOxGRDkfzCLLYwNpnYkF+bZ2caNt6NHrJUtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KoF4hnDt1EhQnzn2pNcxf2HIB9XmA9AW1SAMIYUCsL0=;
 b=R8pSn/v53orSJbSqIxm26YRmYCVdSAGGwn2keRckDO9Nwq6DCodbpYP6XlYHP9S/lsQaRMR2h8jmxfcV9lwI9sRGJL71NXb1WNDVEiwQPj/ubQgvjRfDt86nMBr2IduDKMdA/RMU+hejAQzYVrjRvqmPXO5YG5xph5LBT4aCqeXbUbfcHc9+2uQ1g8ZXfYdXsOXixt0lT5wkBHMQPE84kSrt7kyURB7zynzQ+nWPu3mByFmC6RsXe0yU4QB5Ek45oFCguKpmkdET2faVaFIH5tLIiHbdBzIQoVZMw79QkXuy+6yi6KD3GxnwDIRnJdEDBfp1PCeAPaL5XjuYY0vS4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DM4PR11MB8228.namprd11.prod.outlook.com (2603:10b6:8:180::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.28; Mon, 21 Oct
 2024 11:15:03 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8069.027; Mon, 21 Oct 2024
 11:15:03 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <DM8PR11MB565530314645E2EEB26EE062E0402@DM8PR11MB5655.namprd11.prod.outlook.com>
References: <20241017205444.102979-2-gustavo.sousa@intel.com>
 <172920607792.1280532.7635362645171246637@2413ebb6fbb6>
 <DM8PR11MB565530314645E2EEB26EE062E0402@DM8PR11MB5655.namprd11.prod.outlook.com>
Subject: Re: RE: =?utf-8?b?4pyX?= Fi.CI.BAT: failure for drm/i915/xe2lpd:
 Update C20 HDMI TMDS algorithm to include tx_misc
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: "I915-ci-infra@lists.freedesktop.org"
 <I915-ci-infra@lists.freedesktop.org>, "Saarinen, Jani"
 <jani.saarinen@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Date: Mon, 21 Oct 2024 08:14:57 -0300
Message-ID: <172950929795.2472.9798725069696306192@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR04CA0065.namprd04.prod.outlook.com
 (2603:10b6:303:6b::10) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DM4PR11MB8228:EE_
X-MS-Office365-Filtering-Correlation-Id: 23517bf3-f790-4671-561a-08dcf1c19c65
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?M2NaN3FYV3d0QXpwSUJqWVNLclNobG95dmQrY2JMdllGUytXZ3VFS1NvaUJC?=
 =?utf-8?B?eEozK1ZzeThHVkZIenV0QzNubGpDbWZVUWRKVUpUbktXZFBQRlIrTjRxVW5n?=
 =?utf-8?B?aFBTbkszeG1xTkozL2hla1pUVW96RkJZNzJYelVLRkp5OVZwUjgrY0ROSmNT?=
 =?utf-8?B?bHU0V0JsSkdXemNrQS90eHV5UEJyeVdRQUE3MlRUcEJsYlJyS2FOTXhHa1lJ?=
 =?utf-8?B?dU1QT3ZRMTlQN0dzb08rTG1UckVOTXdrbnF3eVhKQjg4cnVtYzk5TzlXaFF5?=
 =?utf-8?B?Si9kODRPeHB0K3BvcGt1OXZoTVV6cWNNS3Z3dmVsOTJXOW5UbHdXb1dGZHFP?=
 =?utf-8?B?c1BtQjJsVzRpS0RWcmtaR3l4bm5JQ29mYUgwcC9udjV0dFR4NkJWZkhXQnZk?=
 =?utf-8?B?Z3B1YVo3dVp2RnZwMVZvRHBwTWZkWk5Pb2lGRlB4ZVRjL0ZtTHBvL3gweXBi?=
 =?utf-8?B?RXRMK3NTWVJZeEJZd0FPOXBVaStzQVVkd1puOGs3RkJNTW0rTmFVN3gydmUz?=
 =?utf-8?B?aDBMWjlsSTdzejZqVURRdlBaODZGVWRyVEJBc3BvVERZbDBxM0picmdvVXZ4?=
 =?utf-8?B?RXczTGw1b0ZxR01VTkUxM29uOW9MYTFBZHdDZkpGVmd1dHpZd25xdm4vNE9y?=
 =?utf-8?B?R2VEQi9FRkZPUWRLdDNsRU4vbVdwM0doSVYrUzIzQklFdGVVajRLYW1BZll3?=
 =?utf-8?B?Y0t4OWZDeGlGV0hhODVlMGdLRy9pWG5rcW1TaS9mLzRpYW9GbVRGK2piQ0lQ?=
 =?utf-8?B?WXVWbmttekxsaXhPT1Nib2VmemI1eWdscXpTWkpQZnUwd2pHdmJaeW9Obkwx?=
 =?utf-8?B?Z2lnd3FEckMrMFpRWGwweklIWUg0MERya1pXcG5GRFdRSGZGL1kyT2hsNm1Q?=
 =?utf-8?B?S0t2d2F4aUJVUUtRNXpzUlpnSTlKejZyZ0lHOHpaZmJrMCt3OUQ4Nk04Z0FZ?=
 =?utf-8?B?cTlsQXF2OSsrNTVqck50NjEwc3MrVHRNQW11RmNLZkhkcXhOY0lTY2dQQ2FE?=
 =?utf-8?B?MElVT1BaRWFCYjNwcWJFZVpNVWlKTUg2SHhzU0lQOUYrNnFuVHhkLzFSMFI5?=
 =?utf-8?B?Q1Y3Zm1EaExCeFZod01vZmdPM1kvblRzeGlTSkw3Wmx3bHBjOUptWUpVMmMy?=
 =?utf-8?B?WXNvdjkrWkdmNktwWit6MHhHVTF5OTd1WS9BcW42U0gyVXlQanZmVXhjVUE5?=
 =?utf-8?B?QmJtandORzQ2S2NNZC9oUWtBcDd6OE9aWklxeUplMzUrQVYyMGlJVy9TWC8r?=
 =?utf-8?B?V2hlVmh5enI1ZTJ5bHRqazdkMUpMVVJmSHZFMzZjeHJYZDE4ZENzZzlySGpZ?=
 =?utf-8?B?Z1p2WWxrNWFVMjVHdE05RzFYdWw3eXNrZnQwZWh1bG0xUit4T045dE4vNThV?=
 =?utf-8?B?QTdabHUrbFlGVDhKdnpFby9ZaUVhM0FFeU8rbTlFb25hSU5TNVM1V3BMUkJ6?=
 =?utf-8?B?bmV3SEZPU1Mzb3BnME9yTml3ckE1RitZK1dOeWRrMUFlT2RoWFBnb1NTN3Ix?=
 =?utf-8?B?UWZWbGZlTTJWTVdHaWYxc0JRSlVJL203cTNTS2haSE1jd0d2dzJzZlRkekVN?=
 =?utf-8?B?TnlGVkxPSzJleTFLSUNBRFlNZUJiUkJYbkJLZGlsdDdYRzNJU3FRY0hvdFN2?=
 =?utf-8?B?c2VGaFhtQ01aR2JJUmN3Uk41Wkl1STdGci8vWVZySTdGMGhVcGo3UE9kQ3lL?=
 =?utf-8?B?bDZxSTJhcUpFRkJqZ285SWFJQWt6YVFldCtUWWM2NGpWNWt0TUY1dCtRPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Uk1La1lyKzZmcmZFdEkrTEI5VmpyR0NvTE1zdVB5Yko3TTBHWVN5WU4zR2h0?=
 =?utf-8?B?aWNORlM1eVhwWHdxSG5WNTRuTEZvRFdUbTk4RzZDN3BVLzZGc29SYm9UT3Q0?=
 =?utf-8?B?bHFvYTFHMGZJUGJ1R0M4WGxzVGJ1akkzU29lZ0ZnSVdhQWxzd0c0UnlubVc1?=
 =?utf-8?B?YlNYdEhLNEh4bjk1cnRPL3FnZVlGN2U5Q1p5a1N6VW55cGp5T3JCMmhuTEo3?=
 =?utf-8?B?TUhCeHVYaGhwSXduRlg4ZXJqWXB0VlZKRVNkeEpnTmRzSXNmNlZkVjZNNEo0?=
 =?utf-8?B?Tld3TVhBNm9wOUZKdVV4SVMyNVpKOEprMEtNVVJUSWFVaDlQU0NNaFhIYWhk?=
 =?utf-8?B?YlNCYlhPQW5ZN1RpNldETEttMExZVTVSbUFHcGZhTTA3VE5nWHdsZklpTlMz?=
 =?utf-8?B?VVN3TlRBT2hLN0plcTk5blV2VHFPb25oRVl3MkN6TmdHa29UcktyZGZjZ0pC?=
 =?utf-8?B?WHpBV2hTNUZHSlF4aGtZbGQ5SUk3M2tlemJKbFNTWkphOExYbzdkaFg1YURS?=
 =?utf-8?B?TjNuQ0RFbnF1UW1Za01vUHl6NlBRRFNiZ3JvS2psWitnYVcxQTRnN3lGNTFs?=
 =?utf-8?B?M0lXOExHOGN2Smp2R2dBZDdoM2h0bmdkQWNEZ2E0NEYyQm5iZ2FJbkloZTlF?=
 =?utf-8?B?UjBIL0VaNUp3ZWROQUwwWHQ3L1FYUkpWK0pCZG1ub1VvWVJWU2QrTzB2OENj?=
 =?utf-8?B?NEFzb3NVMk9YTlFHV3p3ZmVSbk5hWEJ6R2tRVGFXWXo0dEtRdW1VWWFEcUNt?=
 =?utf-8?B?VXVLTTJyQU9pY3h2UmpMeXkyUTFIZnEybFd5VnZxMi9PWVdpc0t3SWE2cVJr?=
 =?utf-8?B?QytOUWQrdzJVRzNQa0d1N2ExQUNVRmt3cFNMeEVhOWh3RHo5aTQxMk1VbFA3?=
 =?utf-8?B?MGVybTZaK1REeWVUK1RXRVVEV3hxL0JDRGdjakFzNlpOcVBrd0tSaUo5cFBL?=
 =?utf-8?B?Mm5vWXVldTlCZXNNeUdWREF5aDlLMExnYVk1L1BmMlJYM2hkYm00NDVVcnhs?=
 =?utf-8?B?cXo4SGVtTGN2RTlTU2p5bDhRSTVCM2lOVVYzR3FXQ2tPOWJxYlpJSERYTVJQ?=
 =?utf-8?B?VWEwUzN4cldUaXdIRnBtM3J1VDJzZ3Jka2paa0Q1c3JtOEVYeUFZQ3JTNkpK?=
 =?utf-8?B?NDQ0T1grNGw2RmFsODJ5MlozdklwL2tUMmlLdHdCTHNuMlJQMm5hU1hOTVhk?=
 =?utf-8?B?RGg2Rzd1b1BtN2xpTEQ5eWs3MWZuU2F4dUhaemdndTBwempmdUR1b0xyTkpO?=
 =?utf-8?B?WVlzdWx5WGFCbkRUNHY1SkpEWmZyMUxZVDlXWTZyRTdFNEtrZ3dHczM3Ullh?=
 =?utf-8?B?ZW9kWm42NW1MWEg2amFEeGMwcUNBMmVTVHB1QnczQ1hGcklJeVFRT1ZCWWxw?=
 =?utf-8?B?UmZ2b3RrMHdZTXUzb1lnRlJyNXlXNTJUTEtGWW9CT3MyY2ltTzhBS3A2M2Vv?=
 =?utf-8?B?YlpRTUtZVlBKc1lzelF4alV4NG82NXNtUDFRc1FYV2VCZ3RZZUVGaW9xd2xt?=
 =?utf-8?B?UXliS3hwK2E3TDFQd0lNSWIrdFhXWllZZUJ4RTYrRUZtWDZmQTNjdEZHVnJW?=
 =?utf-8?B?ZWozR28zd2lBeEpjMWF2elluZmV0ZWlKMkI4R3ZtS2paZ0FSLzJQWkFLeXM2?=
 =?utf-8?B?ME9XQk5OY2VraGpieEk1WmhEZHlSUWNwb05kcDAzMnBEZGovUVFJNk5wUysw?=
 =?utf-8?B?UzdvSzl1TXMzL2lubDZ1OURNVElBcjJCQ04xNFJqS2xUVjEwVVAwbmtkZ1E1?=
 =?utf-8?B?VCtxa282WEFPSkNzOWEwUGZPNUZKZGhpUHpiMURGTFNiT0JrajkzTlJIYm9C?=
 =?utf-8?B?NzJwcWdmRzAvZzVSR1NLZXB1ZVo3S2ZTYU15L0dEVm81Nnc1YWlNNklTR01S?=
 =?utf-8?B?MTJQWDJzUmg0WU56ekZjQW9zWUtCb3U0bE9NTU1nQm9zRnRjcm9uR2ozd1V3?=
 =?utf-8?B?S3BjVUhhTHhPLzR5WmxpTHFZcmNwdENFeGtOQ0NBUDAvK09xNG9PNVNKOXVi?=
 =?utf-8?B?bTVNUythQkJHS0FzdEJ0OFM3alBSTUk3aWtJTUpDWkYrSDFyNUxoS2JCcUJD?=
 =?utf-8?B?Y3BMMWlILzBLOE5FUGFjUldUMm42SmVvaE1hblpQQmxJWE1ETU0wdUtwSGFQ?=
 =?utf-8?B?eUJEWnpyYzA1SlF4ZFFoMDdRdFVsVVU5WHdhR09Ya0l3bm4zNEdWS0oxQWxJ?=
 =?utf-8?B?ZlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 23517bf3-f790-4671-561a-08dcf1c19c65
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Oct 2024 11:15:03.7718 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5Va0HFAtQw07a/TvEu1sAlvvJxo06Mv7pJo+sexQxl528Ay8Y0sFS6HXW2cU/kFCES8LLsz7slPuyPw9cabg6A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8228
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

Quoting Saarinen, Jani (2024-10-18 03:00:58-03:00)
>Hi,=20
>
>> -----Original Message-----
>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
>> Patchwork
>> Sent: Friday, 18 October 2024 2.01
>> To: Sousa, Gustavo <gustavo.sousa@intel.com>
>> Cc: intel-gfx@lists.freedesktop.org
>> Subject: =E2=9C=97 Fi.CI.BAT: failure for drm/i915/xe2lpd: Update C20 HD=
MI TMDS
>> algorithm to include tx_misc
>>=20
>> Patch Details
>> Series:        drm/i915/xe2lpd: Update C20 HDMI TMDS algorithm to includ=
e
>> tx_misc
>> URL:        https://patchwork.freedesktop.org/series/140136/
>> State:        failure
>> Details:        https://intel-gfx-ci.01.org/tree/drm-
>> tip/Patchwork_140136v1/index.html
>>=20
>> CI Bug Log - changes from CI_DRM_15552 -> Patchwork_140136v1
>>=20
>>=20
>> Summary
>>=20
>>=20
>> FAILURE
>>=20
>> Serious unknown changes coming with Patchwork_140136v1 absolutely need
>> to be verified manually.
>>=20
>> If you think the reported changes have nothing to do with the changes
>> introduced in Patchwork_140136v1, please notify your bug team (I915-ci-
>> infra@lists.freedesktop.org) to allow them to document this new failure
>> mode, which will reduce false positives in CI.
>>=20
>> External URL: https://intel-gfx-ci.01.org/tree/drm-
>> tip/Patchwork_140136v1/index.html
>>=20
>>=20
>> Participating hosts (43 -> 42)
>>=20
>>=20
>> Missing (1): fi-snb-2520m
>>=20
>>=20
>> Possible new issues
>>=20
>>=20
>> Here are the unknown changes that may have been introduced in Patchwork_=
140136v1:
>>=20
>>=20
>> IGT changes
>>=20
>>=20
>> Possible regressions
>>=20
>>=20
>> *        igt@i915_selftest@live@active:
>>=20
>>         *        fi-glk-j4005: PASS <https://intel-gfx-ci.01.org/tree/dr=
m-
>> tip/CI_DRM_15552/fi-glk-j4005/igt@i915_selftest@live@active.html>  ->
>> DMESG-FAIL <https://intel-gfx-ci.01.org/tree/drm-
>> tip/Patchwork_140136v1/fi-glk-j4005/igt@i915_selftest@live@active.html>
>Seem known issue but got closed 1,5 months ago: https://gfx-ci.igk.intel.c=
om/cibuglog-ng/issue/14086?query_key=3Dd38d3a2b666aff93008569afe127695ab2dd=
9418=20

Thanks, Jani.

And this should not be related to the patch series, since we are only
touching tracepoint code (and I believe tracepoints are not exercised by
CI, are they?).

CI team, could we re-report, please?

--
Gustavo Sousa

>I guess we need to re-open that?=20
>
>>=20
>>=20
>> Known issues
>>=20
>>=20
>> Here are the changes found in Patchwork_140136v1 that come from known
>> issues:
>>=20
>>=20
>> IGT changes
>>=20
>>=20
>> Issues hit
>>=20
>>=20
>> *        igt@i915_selftest@live:
>>=20
>>         *        bat-arls-1: PASS <https://intel-gfx-ci.01.org/tree/drm-
>> tip/CI_DRM_15552/bat-arls-1/igt@i915_selftest@live.html>  -> DMESG-FAIL
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v1/bat-arls-
>> 1/igt@i915_selftest@live.html>  (i915#10262
>> <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10262>  /
>> i915#10341 <https://gitlab.freedesktop.org/drm/i915/kernel/-
>> /issues/10341>  / i915#12133
>> <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133> )
>>         *        fi-glk-j4005: PASS <https://intel-gfx-ci.01.org/tree/dr=
m-
>> tip/CI_DRM_15552/fi-glk-j4005/igt@i915_selftest@live.html>  -> DMESG-
>> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v1/fi-glk=
-
>> j4005/igt@i915_selftest@live.html>  (i915#12133
>> <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133> )
>>=20
>> *        igt@i915_selftest@live@gem_migrate:
>>=20
>>         *        bat-arls-1: PASS <https://intel-gfx-ci.01.org/tree/drm-
>> tip/CI_DRM_15552/bat-arls-1/igt@i915_selftest@live@gem_migrate.html>  -
>> > DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-
>> tip/Patchwork_140136v1/bat-arls-
>> 1/igt@i915_selftest@live@gem_migrate.html>  (i915#10341
>> <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341> )
>>=20
>> *        igt@i915_selftest@live@guc_multi_lrc:
>>=20
>>         *        bat-arls-1: PASS <https://intel-gfx-ci.01.org/tree/drm-
>> tip/CI_DRM_15552/bat-arls-1/igt@i915_selftest@live@guc_multi_lrc.html>  =
-
>> > DMESG-FAIL <https://intel-gfx-ci.01.org/tree/drm-
>> tip/Patchwork_140136v1/bat-arls-
>> 1/igt@i915_selftest@live@guc_multi_lrc.html>  (i915#10262
>> <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10262> ) +10
>> other tests dmesg-fail
>>=20
>>=20
>> Possible fixes
>>=20
>>=20
>> *        igt@i915_module_load@load:
>>=20
>>         *        bat-adlp-6: DMESG-WARN <https://intel-gfx-
>> ci.01.org/tree/drm-tip/CI_DRM_15552/bat-adlp-
>> 6/igt@i915_module_load@load.html>  (i915#12253
>> <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12253> ) -> PAS=
S
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v1/bat-adlp-
>> 6/igt@i915_module_load@load.html>
>>=20
>> *        igt@i915_selftest@live:
>>=20
>>         *        bat-arlh-2: DMESG-FAIL <https://intel-gfx-
>> ci.01.org/tree/drm-tip/CI_DRM_15552/bat-arlh-
>> 2/igt@i915_selftest@live.html>  (i915#10341
>> <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341> ) -> PAS=
S
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v1/bat-arlh-
>> 2/igt@i915_selftest@live.html>
>>=20
>> *        igt@i915_selftest@live@workarounds:
>>=20
>>         *        bat-arlh-2: DMESG-FAIL <https://intel-gfx-
>> ci.01.org/tree/drm-tip/CI_DRM_15552/bat-arlh-
>> 2/igt@i915_selftest@live@workarounds.html>  (i915#9500
>> <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9500> ) -> PASS
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v1/bat-arlh-
>> 2/igt@i915_selftest@live@workarounds.html>
>>         *        bat-mtlp-6: ABORT <https://intel-gfx-ci.01.org/tree/drm=
-
>> tip/CI_DRM_15552/bat-mtlp-6/igt@i915_selftest@live@workarounds.html>
>> (i915#12216 <https://gitlab.freedesktop.org/drm/i915/kernel/-
>> /issues/12216> ) -> PASS <https://intel-gfx-ci.01.org/tree/drm-
>> tip/Patchwork_140136v1/bat-mtlp-
>> 6/igt@i915_selftest@live@workarounds.html>  +1 other test pass
>>=20
>> *        igt@kms_chamelium_edid@hdmi-edid-read:
>>=20
>>         *        bat-dg2-13: DMESG-WARN <https://intel-gfx-
>> ci.01.org/tree/drm-tip/CI_DRM_15552/bat-dg2-
>> 13/igt@kms_chamelium_edid@hdmi-edid-read.html>  -> PASS <https://intel-
>> gfx-ci.01.org/tree/drm-tip/Patchwork_140136v1/bat-dg2-
>> 13/igt@kms_chamelium_edid@hdmi-edid-read.html>
>>=20
>>=20
>> Build changes
>>=20
>>=20
>> *        Linux: CI_DRM_15552 -> Patchwork_140136v1
>>=20
>> CI-20190529: 20190529
>> CI_DRM_15552: 4a1a4fc678a06046ca0443a2d0d61f2174c56b1d @
>> git://anongit.freedesktop.org/gfx-ci/linux
>> IGT_8078: 175bddf20141ccad40130719ca46bde5140f4872 @
>> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>> Patchwork_140136v1: 4a1a4fc678a06046ca0443a2d0d61f2174c56b1d @
>> git://anongit.freedesktop.org/gfx-ci/linux
>
