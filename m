Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9D1AB17F9C
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Aug 2025 11:49:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87E4E10E2E4;
	Fri,  1 Aug 2025 09:49:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mhhTmPcP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3921F10E2E4
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Aug 2025 09:49:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754041748; x=1785577748;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=dX5ei7gHZO76yvgp2UC6vy/a52tr2UI0+4o32O0W01w=;
 b=mhhTmPcPxP4kswaXaVg/DrysXdhJnsVh84OOZaLn01GAd1xml3382zNh
 cfX9nUq8mLYBRUJmITBOKQztPzqpbpVH58t3kh1r9z9dnD3Abqgw+ncCt
 bUce6iz5BlAmpeZ5lRvFTik778bWR/kjJdRKD4n2PloteK1PPZpP3CUvw
 IqLOg7+OqzhJUjB/OSALny8vGqS8UWkCydn9SyRz6gyv5Fll/q04B8XWn
 PORPDD4zCu2M3cFgmYi13Cxa+VYCBuwspWIjaOlWI+KQsn/j4hcFenklb
 h86IaVXHirxV7ty4fUolWTcfXyhrTtdgUXVIiTrZ1X82vNA9pK2dpOy8/ w==;
X-CSE-ConnectionGUID: /2wm8Pt3Scu5gA4aqVuKAg==
X-CSE-MsgGUID: 9cvUsXcWS9SFgYH4/fp+fQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11508"; a="67082477"
X-IronPort-AV: E=Sophos;i="6.17,255,1747724400"; d="scan'208";a="67082477"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2025 02:49:08 -0700
X-CSE-ConnectionGUID: C7vtk89LRM6aTrHOl8Eoxg==
X-CSE-MsgGUID: ypYOHMmuRaKRmU7p0Q7DhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,255,1747724400"; d="scan'208";a="162808085"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2025 02:49:08 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 1 Aug 2025 02:49:07 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Fri, 1 Aug 2025 02:49:07 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (40.107.95.80) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 1 Aug 2025 02:49:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OLiRi1YSOGE5Qk2zirmdsBujA7NfXLHTV1caQH5k8mFPrQxQBL2ECaPQAurfKfLAHrBZtPjFLxezdymZTS/q6xmAJrRIiGyvOUqmNxFH7yjDUkY1E/vgto6zQkSgVwxprhRRt7lEfgMULnLzTag7qPhUHMt9zXO280HkXVZLcAtueE58kGjvwvA1Ay8rw3z1W4pvt7XJJuw4Tjqo4heWetYO+mOax8U587n8VcIrNlzUfjIN7Z0ayNdxMQOmx3ma97yTpt3a9DRTh0SHL4pVY0/7oAQY+7cPo+6IFt4VBzndgJ1a+G+pGJNKKtgQarXKzi7RW/zfsNDjOPfKBFqOTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Wxw81lqzPs4wE+qWQsebsgUi8EwzMjeCsvLB1zIim+E=;
 b=QxeLKQiZ4WDzNFynTOvZ27wjYCvX9IOpOAuIKfG8UyLF4TwNWQh/XmiDt/GKsvNMUhjbcUADS8JSVMneGp4yYZlCk3J0jXg+gNEqF0YFJUKGvXa347Y58gZkm31WLOSsOMNM40uTAB72542lAn5jrffdTDl6vyND9vYlqvBJqwEWORtZt4M8Z2cKrQzGZr2AMw2+djfNXwNZLMOlaIEG23gvN4jU3OUSScHSzC6FXe8Q8oDRPIos2rWDh15xPXrlV+R5pGWIg/n93WBh+DNhfkMZse0Qj6dJOP3yL0yWsGL45d/yYpdw0jWhMl5AxHrdwNx4WAuYMG3xmhB2VKGSOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by MW5PR11MB5859.namprd11.prod.outlook.com (2603:10b6:303:19e::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.11; Fri, 1 Aug
 2025 09:48:52 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%5]) with mapi id 15.20.8989.010; Fri, 1 Aug 2025
 09:48:51 +0000
Date: Fri, 1 Aug 2025 09:48:46 +0000
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <krzysztof.karas@intel.com>,
 <andi.shyti@linux.intel.com>, <ville.syrjala@linux.intel.com>,
 <sebastian.brzezinka@intel.com>
CC: <krzysztof.karas@intel.com>, <andi.shyti@linux.intel.com>,
 <ville.syrjala@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>
Subject: [PATCH 0/3] drm/i915/gt: Relocate context-specific workarounds
Message-ID: <cover.1754041191.git.sebastian.brzezinka@intel.com>
X-Mailer: git-send-email 2.34.1
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
X-ClientProxiedBy: DUZPR01CA0037.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:468::15) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|MW5PR11MB5859:EE_
X-MS-Office365-Filtering-Correlation-Id: b5b8ee99-c61c-4e34-2de6-08ddd0e09f1c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OUY0NHordzdMNWQ4QWtkQlppa2xidS9zVEN6R0lma3FPNE1uSlEraXBSMk9I?=
 =?utf-8?B?NTJJTCtRNnB6bnV3ZlJOMkxCWitBS0FPRjY2MXhXQkdadmRReFhwalI5NFhy?=
 =?utf-8?B?ZitySFliUVNEOVVFaHJMZm1XZS9aVU0vSkovY1VwNjYwY3BGRFF3clNPb21v?=
 =?utf-8?B?dmMxeUNaWGxZb281TFhwNzdWYlJKNmIraDZSYlVOaWlzSVVFZEVJRE1iNkZn?=
 =?utf-8?B?dFNaYkRTQzVMTUZ0b1ZwVFFwWFpyUCs0b0g1aStydGNCbTJhUnd4OWhqd05i?=
 =?utf-8?B?M2p6NkF6c1NETm1sSkYwUEdrQ0M5VmxIdVN2dUp6WUdsLytUd2RrbDVISjNC?=
 =?utf-8?B?bFVlMFZGWXdzSkd0QmJ2TllGLzBMa0RSZWlnWkp2ZlV0andTVzFyQWJpeWV3?=
 =?utf-8?B?emNJNzFFNnVmQkxhNXRFa1ZSUm9TSytTOENqSWFsRjcwMmN6QmRNWS9ERTVj?=
 =?utf-8?B?TWVtbTFkemFHSW81ZnpKdVNvMXVwaGtiWGdJVUNIS1l6ZW14SE40clEvSWhD?=
 =?utf-8?B?dk9SZC9GdS9Pc01WZWpJTVNIMXEvMjRUWVFwZ3hYa0tVbG1ybmhrSVNvUTRS?=
 =?utf-8?B?Z3JjeVA0bU9jVGFXVTFmQk1ISUlsZlQ3NURyRElFNDFTOWRRV1pXdnNCWGsv?=
 =?utf-8?B?QmRDanVmVEFRS2QzVmtLMzE3QUVXWVBKelpMd0hiajAvSkFML1BieWZJZmZh?=
 =?utf-8?B?c2hDY0RBU2FMc2xFcVhTcnBHU202TG1mdHZxaUtaWVJQbEhRQzhhaS9rYmVK?=
 =?utf-8?B?V2lxQzUzV05odWhBWkdlZXRiajQ1NUxDMndGbktnb0Q2UDBGVkg2Si9lRTdw?=
 =?utf-8?B?NUFsNXdWQnViSW5EWEt1UUFlQmErS3JGMDhIb080STFzMks2RWo2cFZhNkZw?=
 =?utf-8?B?V25MYkFJQmNkNWxnT3UrbE1HOU5HbGczRDI1N3FSeFE4NmtvY28wZVNmcWtV?=
 =?utf-8?B?d2czc2o1TWtTdUNEMFY3bGtycnI1NTVOTllXOUZUTysxRFh5V1RwbHNlVU8v?=
 =?utf-8?B?bHRCUWVxc1dPcktmMHAyUWZzRzhHR1lyY2tVdVJtUkxWTFJQNVNKeDAveDMw?=
 =?utf-8?B?NUI2cjdzN0RjNGFINlltenREbTBYNFMrWXN2NU1NQkJlMStsUTVFK3VzbUpK?=
 =?utf-8?B?YkV0UDdvaGxNQ0tBZFJXa1ZkQUg0RG1MZEVPbjJWaHdtRDFVMjB0QjNQekxw?=
 =?utf-8?B?Q1VIUUIwTnpTSHpLS1dWTzlLWExLaWUrbGRudFkvUG0wSFA2OFAxNlBmbVh1?=
 =?utf-8?B?aEF0LzVFUkFvTlFNRDJJNzdLU3VJRjF0TFhZalJtR0NIK2RRa0QxeEtvaXFF?=
 =?utf-8?B?Umptdll4U3ZrdHJCekkvNGhxZ1hpY1cyV0lvYTc3V1ZzOUkrbFRsL0hhbkc3?=
 =?utf-8?B?UzFMeG45elRQSjdYajMyUGpWUWR0ZDVucjN3aWVLSy9iUHNlVDhobW16N2Y0?=
 =?utf-8?B?ZnBqRDJLUXV6VDhnSlM1K3JzU0N5SlpqK2hQUlVzT2RBUnhDT1FqRm5wbyty?=
 =?utf-8?B?dko5VWc0OHVzcmtCZ1RLUGRxeFBMRFlXNGoyU2FMMnpFbHpVKzU2aTFDMkV2?=
 =?utf-8?B?QXlqNFAzakNQeVFCNzE4aUZNZnFPeVNKalZ4K1Q5NktFR3Q1N3FBREhZeFNa?=
 =?utf-8?B?RkluOFhVTFdoZjEvVFNBTGRKdkNZc1JUV01VMHEvbGdTbG9sUm9GV2xqVmhZ?=
 =?utf-8?B?S3BSK0djcUIwVUdvaUF1ZUo0eHJjdWZNUXVzMVZ4cGxObUFjVTJoTzJ3Y2l2?=
 =?utf-8?B?ckt0bE92ZXFGaCtFTkl3SnUyemFLTVVxei82ejZPblRIQXQrZ3p6cm9INnVB?=
 =?utf-8?B?OTlMbEMrQmNpQ3pXbG9ZbDgvbTAyVkh6YWdhSXRlaTRFYktXdGh1WkFtSkdU?=
 =?utf-8?B?UmJQMUM5VjRoVGJJRVBHKzhTdmRIY3BLRWRNUTN5S0JxNTJDUzRlanZRYWZF?=
 =?utf-8?Q?PxMUYOYIkjs=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ekV5dSthTjJyVXRhMzRDQlFpWG1zNmMvaWdxYndKM001dTBhaWphMVY2ZXp0?=
 =?utf-8?B?cGZta1NGbnJlZkdHTDd3L011NzdTMjBieFJoM0tybHVoRXdUV0ZsMUV6cDlh?=
 =?utf-8?B?T3dsc1p1Q2lSUmF6OENCT3pLeGxIUG53OVVxcGdQbkRxbWlWRUJ6SEdRTU1k?=
 =?utf-8?B?WVdqUVdRSmkyakRuOXJ1SU5xajFVUTdxUG5oZ2V2cnNYNG1BS2FpSlVob0JQ?=
 =?utf-8?B?L0ozYmZYWDlEd2xlZ1p2TUpEQWtZTnJiT2QxUFA4enR2RHBJZ3l6VS9GdlVy?=
 =?utf-8?B?eTNWdUh1U1c3cy9qNzhXeHIzY2JMV3FOUjZCcUxpb0IwZXNQcE5GVWFsV3VT?=
 =?utf-8?B?S2Q1cEJVek41Ny9BaEpSSVN4cXVMdHl5eW5QZTE0VTQ2WGcvQnZHY04yT2hi?=
 =?utf-8?B?S1BrVFV1aUhjblMwU1hhRm9ES2wvZXdtSDQ4aEhWR0hraXRPMXZ3bG9iRFVD?=
 =?utf-8?B?UFZqWXVkRmJ4RU9QK0ZDYkoxYlRPcDhpeFBreG9pckFQbE0wK0piSmpWQVJJ?=
 =?utf-8?B?SmNoeHc2SmZNbDRkTkVEN2lxOFdxMnFJam1KODNnWFUvVDZ0N1lVZkZiUmZa?=
 =?utf-8?B?Wnh3OE1mSjJRbHgvZmVEN2hSL1BUUzNTUlFrdVpnalRnQUtnT0RsTVdabUtC?=
 =?utf-8?B?SDZiV0ZaV2tjMFRIaThnNTdPMXVvdmp1TVJkU2U5YnN3OHZOdGl1WXozNVYx?=
 =?utf-8?B?OHJYSllyOVJ5QWhaUGh6VmlXY2xUVEdQczBpbDhFYk8rMFpWMTBTS3FkY0lx?=
 =?utf-8?B?dExhelFOZGtTVzVyRFd5cTNYN05FYnBOVXJ2aDNURkRXMWUxQ2RoN1BGeFQ2?=
 =?utf-8?B?TjErbkE5MmVBVFo2aVpZOTVmK2l6UjRYd1VuelBNRTBXUHpGQ2NUTTQrQnBV?=
 =?utf-8?B?eDd5SVg1VnBLWWFuTmV4MzJtMHVwZ3NpUEJTaFNqVDNGdFRpeGE4dG9ra1lo?=
 =?utf-8?B?NStVS2Y4eHFVRVQ3dE5scXFja3JPVlBNMVowSW9PVU9UUWViOW1TNnVYZzBy?=
 =?utf-8?B?OU5UbUNyWExCeGthYllvWTBXWmpUd3htbk42Q3pTUFdrR2wvYk5OZm52L3Bh?=
 =?utf-8?B?NDZ6dDdhNVd0eW8yaUtTYVN5ck1yQ0pRckErVzdtaGcwUCtvc2pXaU9DT09W?=
 =?utf-8?B?Uytzcncvc0NSdVA0eTJxL1BvckNrWmRJK0hSVjJsTytKdEg4dk96VWlXanlC?=
 =?utf-8?B?VVAvVUpmQnZ0MVVRVkEyL2hWSWYvT1NMSW1qd3NhTzBMQm0wTGVySEpGOGpG?=
 =?utf-8?B?TlNKOWFWY2FYOGpRekZ6Z1A4dkR5NmFjcU5PTTRBQWhOWHNjNnFDWU15V0c5?=
 =?utf-8?B?QXBVbUtNaXpUVVFPdEE0Nld0QmluV1VGc05ReDUrdnc4QUkyS1dUbllubHVi?=
 =?utf-8?B?cU9ITU5jNzhUNHNHRnpQT0xCRWhQV29rZzZCaGRUTHNsRHNpcmtTa3BPS3Mr?=
 =?utf-8?B?WS9QSWhXbm1DdzV1VkgxWlBQaGJMWFJTMFhBUFRWUkxBdVZ2bS9adGJKUnFt?=
 =?utf-8?B?QWszVjV2THNUNm5QOVFndHNLY29IQjE4eldMZjRwdmdxMW01M3pjV2JnKzVK?=
 =?utf-8?B?dkRxZkdvRjRGTkhmbnNhRnZtTHo2VmtMRUV3MmxKeGJXUU1wbXNUWFpoZlNF?=
 =?utf-8?B?cE9TOGVKRDUwNjVwMXNlclBSMlplL250UDFoVlE3N1YzL3R1d1dOb1laMnRC?=
 =?utf-8?B?T2RXUzkyZ3l3UEljdEphTXBMVlpOUTNMTFVCQVlKVjFtc2s2elpHNmFVaU5t?=
 =?utf-8?B?YjhpMy94cmRLeG5jWjBQVVFZRlc3RGNMNzNxZnNoQ0lLNDJCNzE2TWdFTXow?=
 =?utf-8?B?NmdjZzBUTVVGcVB5WjVnV3B2TS8yZHIwaUYxYUtzNjNvVjNPWXZwRlZCblJS?=
 =?utf-8?B?OERmektxNVZUVXRJZDc1V0U0ajc0a1RacWtOTzFVZUhCRmNCRjRHNUlEd09H?=
 =?utf-8?B?MVlRdVpPUDB6azVhOHJ3TFhIaE15SC9STTZyTUFaTHBCMzlkLzFWbkhvVUlC?=
 =?utf-8?B?NnlYdU92VUhiUkh4bkpZMWZ3YVJqZW83SjdQNnRyWWlwamFCeFA0QnJxUHhU?=
 =?utf-8?B?RXJYTWkzL3BKNE44YWVmODRTQ0RrS2I5QnhxaStSWUlKbGdNWDZORnU1a3JF?=
 =?utf-8?B?R1JpNUdQaW0yUFpxWGdaRmRNbHJIUkFoUTFxRTB3YVJJN3lLd0J4QUZXU05V?=
 =?utf-8?Q?kbegjmo+Vkl8ACdix/hkBu0=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b5b8ee99-c61c-4e34-2de6-08ddd0e09f1c
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2025 09:48:51.9266 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UT8ZORNNwGurFcNXMojwno5f77yMYuJBkSgj3WNdX3JYIdWfc1t7mGK/sENrn2q/0mRk4x+5TAkZZT0qcaFG0wZYqppnXhWSAqTSbnQRo9w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5859
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

This series cleans up the placement of several context-specific workarounds
in the i915 driver by moving them from rcs_engine_wa_init() to the
appropriate *_ctx_workarounds_init() functions. This improves clarity and
ensures that platform-specific workarounds are applied during context
initialization, as intended.

It also aligns with the hardware documentation, which mandates that certain
CACHE_MODE_0 and CACHE_MODE_1 register settings be applied during context
initialization to ensure correct GPU behavior.

If some workarounds remain in rcs_engine_wa_init(), it's due to issues
encountered while attempting to move them, such as the workaround not
sticking when applied in context, or other platform-specific constraints
that require further investigation.

Sebastian Brzezinka (3):
  drm/i915/gt: Relocate compression repacking WA for JSL/EHL
  drm/i915/gt: Relocate Gen7 context-specific workarounds
  drm/i915/gt: Relocate Gen6 context-specific workaround

 drivers/gpu/drm/i915/gt/intel_workarounds.c | 49 +++++++++++----------
 1 file changed, 25 insertions(+), 24 deletions(-)

-- 
2.34.1

