Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gBUsIF2hhWlKEAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 09:07:57 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9CF1FB41E
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 09:07:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E43C210E4EB;
	Fri,  6 Feb 2026 08:07:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U/DHyydQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E5C110E4EB;
 Fri,  6 Feb 2026 08:07:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770365273; x=1801901273;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=7eeGFmmYQXtXM2E3WoZ6WT03fyrEBFawunjJz6LJiIE=;
 b=U/DHyydQt+UaTlz9TMwdFlNR+qBMc4wuJ1eKVfTvMQHS6F5MmoctCcGQ
 Abpb7Ms1g2dQ4K7HtPea2PIn3mTcp7bYVMBwXwilfQSSOhPefxccKssWU
 gYTkqUXp1bFjIC9UhuaTB4U5vL4CCTHDYZ4sTCbsIId19O2olm4k3klh0
 VmhAGhQKVDd1osxzZnkBYer2kR4ld9zLIN5FL00YxwnGm4+m04QcVuexE
 vMVpDCnV0yRqF+Eb3i3bJqlp+iiwsnnMs0KJkaFu9nzBQXAScg8z9iNLv
 oetEg31GRnN0A5NHQHxoA/zR0/Xq6n65lswMM3jxaWnXC3OPOb6kUt2HR Q==;
X-CSE-ConnectionGUID: 52xICV1GRlSKdyL0rmDwyg==
X-CSE-MsgGUID: y3Id/O5eTbi7IWV8OoYOjg==
X-IronPort-AV: E=McAfee;i="6800,10657,11692"; a="71670506"
X-IronPort-AV: E=Sophos;i="6.21,276,1763452800"; d="scan'208";a="71670506"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2026 00:07:53 -0800
X-CSE-ConnectionGUID: hWROuaVTQfiabrdSDYiSPA==
X-CSE-MsgGUID: epw0p7HIQ3exCurZwlwGAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,276,1763452800"; d="scan'208";a="210852069"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2026 00:07:53 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 6 Feb 2026 00:07:52 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 6 Feb 2026 00:07:52 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.55) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 6 Feb 2026 00:07:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yP3QKPeOtCBq0JlM14YKUo5AxkFR4/Hnirt56vVBDrxHJWnio/8dwJth8eprDZVafveQUnfTGYuVqBrW1iGT+9JLD5lVSU92m52l/11HDW7q/iyDvtTCV6OsCNDuJHBcn0SFHoVSh/afyumBz2rgJK3ij10DXsWD22gCXd2xhi/cBssh4gj9BLt5M4LnfmrBOwlmMtrYSm0ZkxHXsELPQlbD/87WnEc4Dxj/PkqBlODuAiNspjx6+y1YeetClxW6yPjCXekxsVW89cZM5fjEXRl+bv/oRZo+XbKOuPVh8w8MX3C0/eVvDXnTVxmDK1wk3gLrMq2VlY+XbitzedU6HQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7aTv7mWb+Imu/9cE8vaU1xZ6FTb5FUMuiHRx6xYOia0=;
 b=rwFLavC1xsPmMcMsWVkQFszG0VPT2PnAEwFOyxgUInVjNdiv6c++g6+G/aIr4VS0oYfew/KQmbGJURRLtEcnL4FvRm0TxoTsllrFGMl7uUQLtqndJD5NNvqW8kA4EBic2VNhO+g4ZWn8cd3/IXUJm8ILzyaChK1w9gw45KQ0ICks1i9BHglhN/hoyC3fe20A1/J1k0/JRX3N2rd122aKji1CmhFTouvZXg5PDDRsdkgPf1qsrZ2mSN8fpzdGSJZX1x6D6VdTpAyDh9DcNTAvr2piNSc3Ygc6XLvJlpe8cngfRjgMFYMRuxwq6+q6OAwDSbb62M9fGbjSrl7NWiuVcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by SJ0PR11MB4992.namprd11.prod.outlook.com (2603:10b6:a03:2d4::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.15; Fri, 6 Feb
 2026 08:07:50 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9587.013; Fri, 6 Feb 2026
 08:07:50 +0000
Date: Fri, 6 Feb 2026 08:07:37 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
CC: <igt-dev@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, Kamil Konieczny
 <kamil.konieczny@linux.intel.com>, Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH i-g-t v5 2/6] lib/igt_device_scan: Split out reusable
 part of update_or_add_parent
Message-ID: <jfa3kakkfptpofm3vjtgv237xj3n7g4pleleq27yomu55b2vzf@6xzzpvcx6ea2>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20260205145427.1338534-8-janusz.krzysztofik@linux.intel.com>
 <20260205145427.1338534-10-janusz.krzysztofik@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20260205145427.1338534-10-janusz.krzysztofik@linux.intel.com>
X-ClientProxiedBy: TL0P290CA0007.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::11) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|SJ0PR11MB4992:EE_
X-MS-Office365-Filtering-Correlation-Id: 48809573-27f8-45ad-8107-08de6556d20b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eWd3TWFWSW5Kd0JzSjZYTkNoVzdJMzkxYUI5SkN5RS92ME4wR0ZkbUF1RGUw?=
 =?utf-8?B?MXViQzhuU1J3OEtpQWVoVXFnWjdMeHp4RkRYc1AyRnA2MEljQW51c3FHQi9x?=
 =?utf-8?B?YUhSUWQxaFZFSVYxcHdnTHJxQloxSEFKajJ4a1FmSzRrcXVPekhnZGhLWWVm?=
 =?utf-8?B?WE0yS3ZTcWhiek5CQW1tdU5iMmtRUkZQaFlaanJVYS91dFdHVTVNaWJPU2Yw?=
 =?utf-8?B?ZlQzaTdCVlc3RC8wNzFNVGZKU1N3YTB2Qnc3bjBJNFE3WFJHZzBqbUZTZENY?=
 =?utf-8?B?NGVYZDJ6TVVpZkhQVkplRnhSekRTYTlEbU9tTmlQTkpVRHZ3QmVJRGs2VjVK?=
 =?utf-8?B?SFFnTWhBU09YdUR0WjRzd21KcURGQUpGUmM0MTVxWG1vOVo4MTA3ME80WUk0?=
 =?utf-8?B?alhhOC9GSEdCamhxN041OURqTm1jRkFoNTJWZHk5citSTDBsTEMwU1h0UStZ?=
 =?utf-8?B?OVlJWjBRVFQ3bms1MlZ2dXR2YmFrMFRVSFlZenZEU3pWN2R1K0NZc2hRS05x?=
 =?utf-8?B?bTBFY0RLTGMvNVowUDd3Q1hHNXh2Tm1XVmJGdlJGd0tpZXN1dkFIQVB6a0ZO?=
 =?utf-8?B?OStTM0dnQVVzR1ZGb3dCYW9nYnRPYXpvdUFUS0hZaXJ4SnRyREI4c0RDWEJW?=
 =?utf-8?B?T2pINm9NbjN4T0V4Z205ZW1Oa3Q5OXB4S2Y1QWRuS3Q0NDJ5RXpDZ1E4R0ZO?=
 =?utf-8?B?RmhNaG1tQ0kxbEJUcERDZkprcmplZnNSdHJDUGFDZUZwUWgyS3pmQ0J2M1FE?=
 =?utf-8?B?M3cxaGFoTTFYTXQzUVJMU1d2L3JnMkVlZVBpVmN1b3dZdFFjS2owT25nYjNw?=
 =?utf-8?B?MFRwM0ZLZ2R5MkZWaTBOZTA0VG9HRDk2NUJ1YitVVVdnRGIwajYzZ0ZjU0pl?=
 =?utf-8?B?N3krd3R5bEhPb1lBdFFtNUFGRDBxWmhZZWtvcGVrQXMxK2tsY2daN1JoYXF3?=
 =?utf-8?B?VW1TSTJMbzFnc3NXL1A5dE13M3ZUYTJJQkNpMzBwaXJRMVkzUllaYWdWbUJS?=
 =?utf-8?B?UG04WkY4ZnBEaEFNU3I3RWxzT1RYQ1pNSTEvSEFNWEJhSldRYkxqd1BLcjA1?=
 =?utf-8?B?ZVZSZU8zS2ttSkF0QVFhWS8ycWxjM212RHUreFRmbUpMSG5mZ21kSDVKL20y?=
 =?utf-8?B?THBEMXg1MTNLQ1hmOHVYSEZESENhVzQ4U3gwdk1TUTZaQnNHVzl0SHZvTld2?=
 =?utf-8?B?cVhlWk9OUDFlMzd3VXFkNU94b1REQlpBdnI0Z1kyNHZmK2hnb2dQb0t3dHpx?=
 =?utf-8?B?UHlWaUhLMmo5RU5NMk8rcWdqcFFoNXlIMHUyMkFPV1RsQ2NvUUhzbHVydnU2?=
 =?utf-8?B?TzRvNlZhUGM4emJRQmtlU1lpWTlNek9QM3gwSTFTVFNySWJCNWZ0c3JFOERK?=
 =?utf-8?B?blRNeWpyMmQ3OUJJazcxbVp0dXoxM3g2RDJlQnZKNTJFY1lFTE5RbHZKRllx?=
 =?utf-8?B?VHhaekcwdkpWVnNXRmFHcS84OENCSllzbjhOZXhyby9nRHBTR3NyZjdzQUg2?=
 =?utf-8?B?N3NXd3djNFE3Nk1vN1lBdVpRSC8zWFQ2aEx5eExlRkY1emJ4OTVwNzlORThl?=
 =?utf-8?B?WXR2ZmdodnBBNFFVVkNsOW5SQ3hNdjJHRTREbDNBRFc4YXRDaUYxUUNPRmoy?=
 =?utf-8?B?U2RDaWNsZmZxM2hRL0s0bGFkTTR6MUtDNU1sdGhyaVZCTkRHUG5jRUtpMGxB?=
 =?utf-8?B?NUxJTVRLLzhzSmJmU3dXM1J4OHVVN3Y1b1ZxVGVVcHl1RXRvTUV4aUFBd0Uw?=
 =?utf-8?B?S2xWZ0Q0WWFmVW1XOHAzNWRQSU1nTHNwcTlBTkhxWWFoVU1WVXZCVXJEd2JZ?=
 =?utf-8?B?RkcyYXREZnphWWxDWEd5L3k3blNiNk83MTRBRlVJcDhmZStldzhSb0pQaDZS?=
 =?utf-8?B?b1Z0SVJQQWVubnd2ZFZoS1hhSmRMbGZVMmJDbjZmTkhFRi9NNGVKaU5BZHBh?=
 =?utf-8?B?NUFLeVdPRURzYS9GQTFXZUl4eTdNck9OYXgvWTdMdjBNaGw4TDNZZ0lIa2ly?=
 =?utf-8?B?VkJkRVZRajdmK1AyVS9WRFBYL2NBNjB3YWl0d1RUdERONmVyRkcxWURHYUpm?=
 =?utf-8?Q?s6UYt6?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bEpaRDNiSGRkWkNuTHY2QmdHU3hkMUVEbkZBLzMvWVQ5emd0RWFqTTJFVDcx?=
 =?utf-8?B?MG1ndWlKWmJiKzAzQ1JWejd5OS9hZ0pvQnhjaEJwK20zTFhNVnpNK3FMZ3U1?=
 =?utf-8?B?RUtrS2x5UHFUdENERXJramNDU3l0UytsdW56OWIwQnRwdmxnSEszSHlDR2Vm?=
 =?utf-8?B?YU55cHVJVjdkTTFNQlRwQWhYRXRVTkRoK3IzYnhCclFhb0NrSzM1Q2ZmUUpR?=
 =?utf-8?B?UjJNNGdEVXFJVXR3UmhLZy8vTnR0WEdaYVpyc2pvTGRET3VVckk0Zkc0WVN6?=
 =?utf-8?B?VUtLeFB2QlRFSWhNdjIwcUZOcjZkb1M3QU02Q1VoTkl5WU4yWjQxeExxcUw2?=
 =?utf-8?B?UjM5YkVYQlJ4OW5lUEZWenFDdFlhc0FmR0FXK0taa2pUNVhKVnFPVGZZNWNE?=
 =?utf-8?B?MkFCN2J6VHAra0Q1cDRMMHFxaElrbEdaTlpBMUVndEZlSHNYa3hIa3crQVVI?=
 =?utf-8?B?QjNpdWVDLzlSN2wvczFvY3B5NzdLbVduQXB4M1pKWjM3LzF3dXZ3V3Rvayty?=
 =?utf-8?B?cWdYeGhWVS9XVmVDdmV3K1gzd2pweEpHRDhMeWZoNk8yK0ZFV2p2U3FMQmw5?=
 =?utf-8?B?NkszZStManlvNFZiM1liSXI5L09rY01OVEFTVUJ4SDNXOEd0SHVCQWlzVERk?=
 =?utf-8?B?K3JXRERJeUhKUmFFN2tXR2wyR0plODV5T3UwUEIxOXZRY3VKbW5xRU5BK0RJ?=
 =?utf-8?B?ZEt4MGRYQWZOdG43TXhOcDMzQkNPMVNJcEdTaWQrTGl2bU9JSjMzeDU4ZUZ4?=
 =?utf-8?B?V3c5dU9IWVIzV0o3SS8xcFd6cWhIMHNFMEtjTXQrZEVkKytBeXA3eXU5d1VB?=
 =?utf-8?B?a1l1Uy9vWEtqekcyM0pqeDM3M3h2UWVza000TzdJUVhkSmt5VC8zVEo3amhq?=
 =?utf-8?B?bEM5SldFRHhLMDBnR1lMZ2REQTVRejhCRkNIQ04xVTlJYlpQRjRtc0E4VjJZ?=
 =?utf-8?B?Z2s3TDhnOGRGTDFRWFFMcUs0djNpT2piQnZXd2lLRVpRTUEzS3c4a25TSHIv?=
 =?utf-8?B?c0x2SEMreGExa1huNEpraEpKTEJFR2NiUERmNi9KZHdNamJlSXdTN1lVSXEx?=
 =?utf-8?B?RHFlRzBOSzVWQzdlK2dJUUZnOXh2U21ocGR4ODBlSTVGMWdpaHpRdFprWndH?=
 =?utf-8?B?SU9ka0pVZnBpUXRNSUlkRXdBZkF1MVJuQkhCL1pVRlc4R0lvYWpvUTVyTlpU?=
 =?utf-8?B?SEc0SnZMaGJOYmw3Tk1aZWw5eENPNmJ4Qll2dlR1VHNSQktobXFkSkhDdDJl?=
 =?utf-8?B?OXlBRE54cHRWcE5PaGQ1cTBudDd4bFlZZTVQOWxSdzZTMU9idGJWV3pReUdB?=
 =?utf-8?B?VlduUGEzK3NRalZYOHZZUE14TDBBMDhnaUozMFlxMnhJMFVXQ3loTlVQaE12?=
 =?utf-8?B?TkJiU1RONHFUQmxaZlRPZFVXSEYyOXBHZ0NKeElSZStPMWF3OUQyQWJxYXNF?=
 =?utf-8?B?NncvYTFIeUFlNXMwZTl4elY4VGh3V1VxQ2M5OEE2ajdXeTU3ZlduMEw1blRs?=
 =?utf-8?B?ZkFFMmhJdXdJVUtGckk2dHZ6RDB1cGNHdlJseWx0TXluVmRjM0lvdGNYOHJX?=
 =?utf-8?B?V081TzVDSWN2eXF5UHNlUzB6RVlvVEtXcHhTbHFIYktIOHB2K0tENzEveHpM?=
 =?utf-8?B?VFZleTJ4dTVDUFgyd0ZiZ2REZzM1SUNWYWwzZmF3WDg3MFpYbXRNbUlkWjN6?=
 =?utf-8?B?ak10QXo2bEtKQjYwZzQxNDR4TTZVZGVLcE5EbTd3Y0YxU29FODFFUFBKMnhB?=
 =?utf-8?B?TkxjT1FWNURwQ3luN20yUzJYUUhuMzJ5QlM1M21lSFBzdGVhQy9PbXlGRDFH?=
 =?utf-8?B?bGxRWStBSE9SYlV1UWcwWFVYSFY5ZWJ2dEVvcStxelBtc0FTa2JQalZOT2tU?=
 =?utf-8?B?bHNoY3RCZGdCTzhwa2ZjYmhjajBoZjdBN2poWm5qN3BreFZvanVNQmFNL3FU?=
 =?utf-8?B?dlpGWXZ3SWlWdzgvTGZWOE55RlExTTZYVVBMVlg5cVhWQ01iMzhsd2FMSVNM?=
 =?utf-8?B?bDBOZ0pYRHBkYmJtSE5xaXZOSGtKRHpkbTE2YTVhako3WnNONkVHYk1kdzg3?=
 =?utf-8?B?aWFTaGwwbWx0RlhmNTk1Mk1Wb3N1WThiWm9aTWVxVWZybVpOL2xHdGxWMGNz?=
 =?utf-8?B?aXhtdk92M1VCZFBmY3YxRmxQMWU4TlBXUWdlZ0lJMzI2SCtkRXlDTmN2Qyth?=
 =?utf-8?B?eG4xNC81bFBTS3Jnd3hNdW5QVE1POG93SDQ3Tm5CKzlIbFFuZTZRNWVGaWR6?=
 =?utf-8?B?OFc2NVhiZFJTSzIyOFVwRStycVNIb3pncjdad3BMZ2ZpSmJ1b0Y5M2NpUXlP?=
 =?utf-8?B?TlVtMHJNditZSnN4ZFBjaEQ3UkRjeGxOOVpSeHRtTWJjWWQrWmw0NXdDR2Nv?=
 =?utf-8?Q?bZK0apChR9Qz+saM=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 48809573-27f8-45ad-8107-08de6556d20b
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Feb 2026 08:07:50.1031 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9QjkhfN4FUylNIDKgjOEz/PxkCmOj8Qr2V1rk76W8/9H9UyrodpT8cliubk2AAmESA0IzmJOaJkob4jV7h9d+tJ253xOUYD49ivoT1T7bK8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4992
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
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gitlab.freedesktop.org:url];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: D9CF1FB41E
X-Rspamd-Action: no action

Hi Janusz,

On 2026-02-05 at 15:51:51 +0100, Janusz Krzysztofik wrote:
> Users of Intel discrete graphics adapters are confused with fake
> information on PCIe link bandwidth (speed and size) of their GPU devices
> reported by sysfs and userspace tools, including our lsgpu utility.  In
> order for the lsgpu to show correct link bandwidth information, we need to
> identify an upstream port of a PCIe bridge that sits on the GPU card and
> get that information from that port.
> 
> Since the tool uses our udev based igt_device_scan library for identifying
> GPU devices and printing their properties and attributes, modifications
> that we need apply to that library.
> 
> Refactor the library so a part of it can be reused for processing the
> bridge port.
> 
> There are no functional changes introduced with this patch.
> 
> v4: Also change RETRIES_GET_PARENT to RETRIES_GET_DEVICE for consistency
>     with renamed variables (Krzysztof).
> 
> Link: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10753
> Reviewed-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
> Cc: Krzysztof Karas <krzysztof.karas@intel.com>
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---
Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>

-- 
Best Regards,
Krzysztof
