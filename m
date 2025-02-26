Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C332A45F8B
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2025 13:42:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0F9410E8E3;
	Wed, 26 Feb 2025 12:41:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WnJWZt3L";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B9FF10E8E3
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2025 12:41:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740573717; x=1772109717;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Ap1ZrVCEwsTbei5R9lY50kTMxmTZeGHsISUPVWX8peY=;
 b=WnJWZt3LRZg5g1HnWZ6mHkBx3BsX85ItV6K3dyGUsVQMfBGBBvR94cNY
 5bp2eydpj/ts3D6Ogg7sWjYsVhxCt8FcJnwZCgAu8+uEXFEYgVmmNfci6
 mGGxu0unjEnsVY/mO5lC2sYZAnpLvxKHqdQ8JwnXGcfOX0+tH6aMbZYER
 iMr4BV8OBWiHWmMHHcpj3TlIH0UhJa7FPFzcp9zzKz6tbf92LYrqKUuTp
 k0LdB6YH2FBioeG0OBgEqtnSEv5KDof5V005GMRQf6acQVSGgPQdzQ6+N
 BRSTCbLSQ9RYiumlIDBc+W64aQd+MsG7pysWTQ5ptiEamISRdOmNSFo4h Q==;
X-CSE-ConnectionGUID: ZiqCSXGGTM6NhLNo7f7xsQ==
X-CSE-MsgGUID: qLuBe4tuRHySD/8xhArUow==
X-IronPort-AV: E=McAfee;i="6700,10204,11357"; a="58834924"
X-IronPort-AV: E=Sophos;i="6.13,317,1732608000"; d="scan'208";a="58834924"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 04:41:48 -0800
X-CSE-ConnectionGUID: Tj1Kli37R9OWEaXxsTAYGA==
X-CSE-MsgGUID: KhIvFzvnTtajMC0nn4QKjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="121941249"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Feb 2025 04:41:48 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 26 Feb 2025 04:41:48 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 26 Feb 2025 04:41:48 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 26 Feb 2025 04:41:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RHCVtxS12s9ZybX8tastFi7NM6pWHHBVb0vwqilCCw30dyLERQMERYhaghT1Nj6FBFhe2jjdILAwigaC8Pb9fQVAE21pZihGsrmjmvr2d8kLIczK/SJXTW/C708oJEYFDfyy8fiidZIazjgXKivX79wQvmKDJwoznPEW7O/Ph5Eq6bqRYSFxJ8om/JvARmevRoirYI2/MN5pluUSm10ryzq1Gvqv6OUJyjIe9UYWt82F3M9o/qMsLZqi/jGmK5UrHWhltBtVsaG7BwWZrxYNb2wGauUo865ADy46dj5OAm2Ovkotlkk3L1qJuafPWmo32e2cV1nhF2ykWadsRwuIjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qBMIfXLYpvxlsso9T2pglNiuQMiXEngRq1J9mRT8CV0=;
 b=ulIMlo9LbVbToUVOKIs/zP9+64OOESDdipHgGv/TFiXm945LFopVRMyfTrC8ma4ObLxjYSlQN4kGlqLV0na4BZbzucnId4dQpQEVUiMcmTzTSpoxrXTcRJZeP/y5iicXnSA74xX8bko+AWK641ekkfRB9LOXFr12aTaDzTWIfsvI+Er6PWh8IQHqKAGmHKdbsAqn0N8Nr2Vk8+dcDtypdcWjuCzeNTr/ZjCbvkzcyCfjIIwJBHtXXWe9/NbrIL381Q1YwhiyyAOa5fr3onv2RoYTLc78KiR7i6UOnYnwvcagGbyKYghydYWk7DEW0BPCnM//7dEk+nlITOWGBvjBJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8019.namprd11.prod.outlook.com (2603:10b6:8:12e::18)
 by DM3PR11MB8669.namprd11.prod.outlook.com (2603:10b6:0:14::8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8466.20; Wed, 26 Feb 2025 12:41:46 +0000
Received: from DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695]) by DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695%6]) with mapi id 15.20.8466.016; Wed, 26 Feb 2025
 12:41:45 +0000
Date: Wed, 26 Feb 2025 13:41:34 +0100
From: Krzysztof Niemiec <krzysztof.niemiec@intel.com>
To: Mikolaj Wasiak <mikolaj.wasiak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <krzysztof.karas@intel.com>,
 <andi.shyti@intel.com>, <janusz.krzysztofik@intel.com>,
 <eugene.kobyak@intel.com>
Subject: Re: [PATCH] i915/selftest/igt_mmap: let mmap tests run in kthread
Message-ID: <th33hxf2nabfsjfdo7opte3mv3rkkasmqajguxgwcluvpvwkzq@mtoxcubwzopp>
References: <mqzn3acyfarzlst3tt3mh5r4bvz4ntjkz5a66pip7qmm6hslb2@qc7g7j7q4z3y>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <mqzn3acyfarzlst3tt3mh5r4bvz4ntjkz5a66pip7qmm6hslb2@qc7g7j7q4z3y>
X-ClientProxiedBy: VI1PR04CA0105.eurprd04.prod.outlook.com
 (2603:10a6:803:64::40) To DS0PR11MB8019.namprd11.prod.outlook.com
 (2603:10b6:8:12e::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8019:EE_|DM3PR11MB8669:EE_
X-MS-Office365-Filtering-Correlation-Id: 540a0f82-94d1-41b6-f7f8-08dd5662ee02
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|27256017;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZTFmNjN0WHlHcmNNb0dkTXVRU1Q3VVlnamRzYzJKOXlYa2RRckV1UnJnS2Fr?=
 =?utf-8?B?Rk9xUXV2NWJGVzVHcHRvVHhXNDR3aHhNWEFodUt6NllkSlNWWU04Z045RGRF?=
 =?utf-8?B?cWxOM3MyamZaVHZuK2JkSGxQUmtyck1NblcvL2ZDZXZocjhoTFUzdnhnUW5J?=
 =?utf-8?B?eTJQbUdxREtKVml3V3lHLzM5WDRxSmZoRUJKK1Q3Q2VoTHdzM3JqcWdHSVk2?=
 =?utf-8?B?YnR5bkVxdFM5UUJsaklyV0t6WnJMcmN1VGV1dEF6dkdLTUFLaFQrK1YrdTBH?=
 =?utf-8?B?Rlh6ZEtEZklmNVE5b1lNZFNTYUJmWkFrd2ZyRlBOVHplM0pSS2tMNnQ3anFZ?=
 =?utf-8?B?YUsxNjdKQ1VqYVFVZ0cxTXRJS0FTNzBjWElYbWUvd3pNWmM2emR6QmdNK1dC?=
 =?utf-8?B?QUM4dklCdFRBVGp5Qm5lT0FpWmxNS0p1TnN4QzZDcy9jQ3kvc3JBTlVEZUdW?=
 =?utf-8?B?TTdqMjcvVGw0RUpVTGtndFRXVkJuYjEwSnoyZEFUYWVXTnlqY1VjNloxak9F?=
 =?utf-8?B?Qm1lNUJpSkc0K2NnSXMwQjgyL2xtWVpYaVZKazdnUVFOZEVmdGRBa2Vnemor?=
 =?utf-8?B?K0hleElBSDkwbWgwZnBYN3MzNzB3dlowNVNPN0E2ellvR1RhVkNnK1RzcHpH?=
 =?utf-8?B?ZnhuVjg3UnhaVTFKUjR3TTExNTRzNWZLVUtoVnJuMGg1TnFJOEtoLzc3by9p?=
 =?utf-8?B?ejBpbTdQaG1BSWY2NUxnZTUxR2Fkc1dYN2xhVDZqakYraEZacW1FUWw2M3JT?=
 =?utf-8?B?bS9RNEErM3dIMDNCcWJvRzFOYUUyaVpYbTdPLzZJcHRTOHU3YmJFQUR2b241?=
 =?utf-8?B?eFdiTGVZdkovSStRS2J5azh4S1dpY0RQVHA2SG5qUlpURjUwMXBYYVkvY2x2?=
 =?utf-8?B?T1kraUxtNzJndHNZTDZCVDEzRUErdHQ1dGhCMm01SlhaRy9MMUVNL0lQeWNh?=
 =?utf-8?B?N0N6OVBwYmZEeWNrNWxqaC8wa29LNGFaeXlqY0FjUWFKQmh5cFJQc3BOYS9I?=
 =?utf-8?B?bllCb0FVQjRnNjJuem5NcUEvVUIyT1R5S3BURTBOdmVWajR4djNlV09sanR1?=
 =?utf-8?B?aGF5R3RadEhyMkhEcENtKzNtaTh3a1FmVmZkUnJwZFVSQ3V0ZW5HZ3krUWlo?=
 =?utf-8?B?eXY3VFk3SmtPUlVmaURMc0FtN094YTRjU3k2L0I3UEY5ZFRwS3ErYkhrMmJB?=
 =?utf-8?B?cVo5enJoYjkyV04zZU1ZZk9YbXlwNWphUk9qc29xUURzdXkvd2Y0eG5Hby9h?=
 =?utf-8?B?Qm9HSWlHQmFSeE1NVzdSYkdsamw0ZzhMakVWUDNMRW9RLzRQNUVVL250bzBv?=
 =?utf-8?B?dFp1SXRmWTJBUnRadTNVaC9nclFydVkra1puWjYyOVRoaUhQWHZkQlhwQTJu?=
 =?utf-8?B?MndidTVtUWtMK0hpVVArL0gyZkJFNHJsUWRjQ0hMeU1mdVBsaG5GMFBudHN6?=
 =?utf-8?B?cTBQdzlPbWRPMmp0N3lPWWI0bHhkTTREZEtWclRwYysvTnVyUXo3MFNQZVlG?=
 =?utf-8?B?cFZPcE9QNmtudnlhMWoyQldPV3diZHphaXQ2OUVOclBzaXh6Q2ZCOVVIdGFz?=
 =?utf-8?B?OW1PN3BPR0ZIOUphMG9CTHNHR0o4NGF4eVZaZmJMVURwNXoyTUdINTVCTkdr?=
 =?utf-8?B?alNDTUFIdGM1YUkzZXBQN3lVWlA5ZlNlY2h5WDF0cEl3VjZUU0dyYjBqRk1L?=
 =?utf-8?B?bU85bFk0TzErT01ZQnptZmdlSVRoN2xJeE9FdGVVOHh4cmk2MVgwOTQraVNa?=
 =?utf-8?B?RG5LVTJWYzFrVVAwZGpOQXBJOG1VZ0Z2MnVqVlpjWG1iNC9qS01ZRHBObkpZ?=
 =?utf-8?B?ekZxR29GUkErcFNLWWVlenFEaDk4SWVxRWhuS25yQjNSMDNuRTRpR3JvVldO?=
 =?utf-8?B?OUVGOFdNcnFNQStqaVo2LzJUQlNKeS9OelYrOGg5S2h6UmZobHowTjEvOS9P?=
 =?utf-8?Q?xd1DFSIn5nt3GC6UDz/mCLYZU/RT4nLO?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(27256017); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TmZER3pRQXM1WDBja0s5cjVpWUlMZWZ4eDBvS2NBZDBra3dFRkhEQ043TUkw?=
 =?utf-8?B?eXA0dWtvdk5ublZGMUYzNzU2OFBhcHNnL2RDbWlEcG11RXNCOHhFblRxMkV4?=
 =?utf-8?B?U24raHcxajRENWRzOEQ0d2tuakVVOTFPZFB0ODU2K2tudWZBd0hHUE1TZmo2?=
 =?utf-8?B?bXFKaXhyYmJDeFhydTcxd3ZQSlpXMG1RbnUyMGlUY01FdWhsUlMxOUlZcmEr?=
 =?utf-8?B?WExOVVVRNTZxa2RuNEYzT09KUkZIUFcrZ3dEMTYyT0krbldjYzVFK1FlaVRi?=
 =?utf-8?B?S1dFUnVucG8vSlJYSm1RQ2I3Ymw3clRjSVVPUUY1WkhhckFkeTBkZjFzL0dD?=
 =?utf-8?B?NVZkcHMyak9kZ3FMcjlZbjJKSWpvMU11UjUvR2owUXE5L3R5SDhPaW1kR0cw?=
 =?utf-8?B?OWJTVmFTMmJRR2RsYjk2MDlXd0cveWlKU0NPTHhKYzAyOWhhYUVMVlZiclBr?=
 =?utf-8?B?WHdNT3pRVnlxamtMckhNZXNRd04rN2lZaGZkMWIvUFpnb21xZDBwTnFCNnQz?=
 =?utf-8?B?Q0FsNERuMkFRTkkwY0EySUliaThLSUxna29XeXprQ0VYVWZmbmxuY1o0Qk14?=
 =?utf-8?B?RC9wTHI3Z0xWc2lKVFI3Q2gvRVpveXVEVU8zeTR1VHRBZmJPNkhlS3ZESElq?=
 =?utf-8?B?WjE4MlFkQ2hXdXBRaUxXMUl5U3FNMnA5b2VJOEVZMWRIekk2K2VuRy9OY0w1?=
 =?utf-8?B?Zk1xZk8ydE5za1FSYVZ2T3h0N2llT1JCY0tmUFhmTzE4WUxEeTNmM1RidVp1?=
 =?utf-8?B?bkF5VzVxYmJtTzVlYXdZQlA4K01OYmtOOTBLcmxoS2FITWxZNHBDdDh2S1lR?=
 =?utf-8?B?ZUMvbERuMHkwR0Rqa1p2TUxJUkNRQjhUaXpvOEhhTERidTZtVys2UFJiUmdG?=
 =?utf-8?B?cW85YVlwU2p2WUU5Umw0VDlURnhiR0M2TkNFZ1hPdjdqS3NNOVVuaWQyV3Ax?=
 =?utf-8?B?SytUaVRMUGo3TUdDc2pCcndEaE4vdWJEaHFSWExycjZxK3FPbXJrNmJjTi9Z?=
 =?utf-8?B?cFFNV1M2STNxK2ZMaXQwdjZvN0YzUWV2azRQS09tSVFXQ21ueFRUNXBoSEpR?=
 =?utf-8?B?aXVIZ2lXWTQwNnRoSzBMMFpUYUlKeFFjZGQzRmVUUnFSczNXMGV1dmo4a1NB?=
 =?utf-8?B?V3c1NENGRGI2NU1wWmtlcEhwcXpmK1hsdEVXMHB3bjRTbjBPMkcwMmd6bnFr?=
 =?utf-8?B?UTUzaEVXWDhvQit0NzdXTFIwUmJZZGExK1J6QVErd0E3UmtKZVArYVY5V1Bx?=
 =?utf-8?B?RUhmSEROLzMzOERRaElnUndvYjA1UitpUzFkNG5NbldIbXRDYlp3VzFnZnF3?=
 =?utf-8?B?dFFoOUFMSndpSzd1N3N3dFl4SEpWZXM2UjhNSUxJdm1LNFJxa0laZzlnNy9D?=
 =?utf-8?B?SUdaTU5TQjR0UmhJV1VkL1huLy9QWUNRSUkxc0QzR3FoSlpuSXBWR3NGaXFQ?=
 =?utf-8?B?U3ZFQnMwbzZzS1ljcW9CdDdtTndzQkVwRjFUV3llaURHem96eWhFK2M2VXVB?=
 =?utf-8?B?RlUvV1RPOUs5U2xHZEJPTkxKTHNhVHVCaUc2a2xPN1J1M2JKRk9kZCtWeVpL?=
 =?utf-8?B?OGhOU3kreGlKMGpqWE04cE1qMWNRRXIxZUo1d3FwWllEcFU5R2F5U0U4UFRq?=
 =?utf-8?B?YzBiSzdVcTZ1M1BqalZtcUVCK0U5RTFydVhlN05zYkpuVUIxVzVjMnNJQkds?=
 =?utf-8?B?Y3JweGdEdDVmV2lFSVJqbXl1djl2OEw0VG9kVDJkUkducVIwZmZvUmZobDZh?=
 =?utf-8?B?SWFOcVZ3STk4b0JSaU1WNS81Mjc4d01KaDZhdHQyT0lVUEFWRzFLS29TYnIr?=
 =?utf-8?B?MUp3VnBvMkJLanVENjRyN3ZCbDdwREpGN1pFN0pKR2NvdlFMYXVBeHBJUnd1?=
 =?utf-8?B?SnJES3k4b2g5WVUwVlZ2dEVXZGpTYm9KdGgwZU4wUmsrV0FXVXVGUUowaXA1?=
 =?utf-8?B?K01mMVk3Yk5DaFhWL1UrY3d3TTJ5NzJNeGgxK0t4cU5PL1VqQzRScFkxNXNG?=
 =?utf-8?B?bGRKRUZuV1RucTcrblBPMjhVUENDMGZDYjZVSHlZY29NYUhUd1hNR0hGeE41?=
 =?utf-8?B?akUvVnpTUGdROTErOUo5Snd0dUZQM0lXK0JMcG5DZmdGaFdEMHFUL01BZmpV?=
 =?utf-8?B?RjgweWR6Q2UrdnB6bXVNb0JPcXdmZi9pWHFOOW1ZQ3RCNnRGQWU4cVZ2Rzh4?=
 =?utf-8?B?Z0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 540a0f82-94d1-41b6-f7f8-08dd5662ee02
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Feb 2025 12:41:45.8453 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QSHVyTQvBv/TmwMdyfL+m/KUsB0M5xfWJNDibCFsXAlgLY+eolYo1FLHBqbbCBZjtxXb0q2KLM5eSiEncDup4RiqzOlAo5qREcQC3XjXtBw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR11MB8669
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

On 2025-02-25 at 11:41:56 GMT, Mikolaj Wasiak wrote:
> When driver is loaded on system with numa nodes it might be run in kthread.
> This makes it impossible to use current->mm in selftests which currently
> creates null pointer exception.
> This patch allows selftest to use current->mm by using active_mm.
> 
> Signed-off-by: Mikolaj Wasiak <mikolaj.wasiak@intel.com>
> ---
> 
> This patch is mostly damage control. By using active_mm we expose our
> test to foreign memory mapping, which sometimes makes the test fail.
> That is still better than just having null pointer exception in driver
> code.
> 

We talked about this offline a bit, I'll recount what we determined here
just for the record.

On NUMA systems, the driver might be probed via a kthread consuming a
workqueue. This shouldn't be a problem as long as we don't rely on
current->mm (i915 usually doesn't, unless it's ioctls where it's fair
game) - but this test wasn't written with that in mind, hence the
derefs.

We can't just use current->active_mm in place of current->mm inside of
the test code, because one of the functions that the test uses
(vma_lookup to be exact) ends up using current->mm. That's too deep
into the kernel to ever touch it with such a patch.

The problem is, we also can't just set current->mm of the kthread
to current->active_mm, because God knows what that value can be (again,
we are executing in some random kthread that just happened to work on
the probe).

So I don't think this patch is a good idea; it IS better than just
having a NULL deref, but since active_mm is being so unreliable here,
that kind of defeats the point of running the test. Also, since this is
an mmap test and it does stuff like user pointers, it does not really
make much sense to run it in a kthread (unless it's explicitly forked
from a context, current->mm of which we have control over, but that's
not what's happening here).

I have two suggestions for a different fix:

1. Disable the test on systems with NUMA and/or if it's running in a
   kthread, on the premise that it doesn't make sense to run this
   specific test in a kthread. This is the easier option.

2. Find a way to pass an argument to the selftest, so we can pass a
   known mm to the test thread. Then set it as current->mm for the
   duration of the test like you're doing in your patch. We could pass
   the IGT process's mm to "emulate" having it being the initializer of
   the test task; this way we're being a good citizen and we don't mess
   with some other process memory. I figure this is the harder option.

I'd try 2 and if it doesn't work then just resort to 1 if there's no
better idea floating around.

Thanks
Krzysztof
