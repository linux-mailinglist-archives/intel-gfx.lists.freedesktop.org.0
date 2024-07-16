Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A08E932B79
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jul 2024 17:45:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE04710E795;
	Tue, 16 Jul 2024 15:45:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Xq1njeD/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60D8310E7C9;
 Tue, 16 Jul 2024 15:45:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721144728; x=1752680728;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=EIU41ijx3gCikFpKPVSTFUNidJTBgvlVZKmjCXi3SjI=;
 b=Xq1njeD/OSLTzQAofPEctLqOzvCLHUg/vvlfmf6zYZX8xUIeW2AnF3C2
 Y1xVuGqAOLX3hYlRM4VfCe3SrCXjeiAtShSupNaTMl54TkZMB3gf9dfOC
 5Wuds4XMX2/2caTJBWFhYxuK6uWor7sInXydKV4xgLk6M0xDWnhsN+IYG
 xreup+1jroPPnkVnXURy4UjfW1D1Iq+yBUWPmYNQw3/D8PNvazdMYNJwx
 TwJCATTyIaeA9gUszY1zi9NgiHiKB3ZQ7S73idZKmOEhuKG7gR02kKQdz
 K13Xx6fNWJ/oLTLXtz6TEawNW7VVwxEgpcWgQk/Cz9k378oVaQluIaz+d Q==;
X-CSE-ConnectionGUID: t7anI17KRjiRWRWsHPsLLA==
X-CSE-MsgGUID: oYAajNGCQ6iKsTI9GMe+/g==
X-IronPort-AV: E=McAfee;i="6700,10204,11135"; a="29741733"
X-IronPort-AV: E=Sophos;i="6.09,211,1716274800"; d="scan'208";a="29741733"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2024 08:45:21 -0700
X-CSE-ConnectionGUID: vRaFrGg4Sne1eqFAYFOacQ==
X-CSE-MsgGUID: QW8hGq1nRa6YvtvNo1f8yg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,211,1716274800"; d="scan'208";a="54401760"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Jul 2024 08:45:22 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 16 Jul 2024 08:45:20 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 16 Jul 2024 08:45:20 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 16 Jul 2024 08:45:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NJNhGyxztdfOA15xCyg2ogO4Acu7DI2c79FmOoyNnF8oDlwIlV2oBSnYLcFZbMYtlxh6xpubG6IKWG8bKss1Hg+n8ES50ZeXcgV5NBc4OD18Jln7OMS0dR9fiTlb/22iKjgG1xlFDAjW5GqWym++029Mx7UIBlJqW0rJetDUtIcciABIMxAY2KG+SWEXiwh+KnONOFb22G7SGEKYZIiOKn2+zw7wZHJdQSgF58EXLpcqw1XLvXea2cnpjrST84J40pqM70FMUh+6hl9gOlfQjUgBcxJ1PrT2WiZpHO8HuFlEVug9TJb9Etv0XYKGKtZVHHsOWOqd0lyYL8MKM6Pd2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kjSFK+oukbdD1a1AHWOTmPJeSlP+SEoTMrQUGnFapPg=;
 b=NN+4HdBDc+alKtuACBLFmnQKlKP+XeqH6iq5Ux7h94O2dNu8HrO4cJ7qe2ZgKh76MumT2DBv8j6ibiDfYqWj1dGzGHvqMhsFKvuRI6yY6hB9Sf0jTjRQZlqSpSP4WnDXYigMWiczDR8nUuV4OEtSWYsh7nHaGgBYa0btylqoyYcsTblEij4JrkdOAxylB7tismBf9QzwTil/Z2mUMwlXrulmiCavIFUXcUYW3kMIFdvAN6ZDeFLuzCXRCHpr9YOCF9VuiiY8xAOSMNQYuZpz+7/Uf5Qp/5RQ3fVpQCEd5xBX9ZJ+0HC3M3yHc5IuOqfii5Dy0vKFnw0Bg89idJZ++Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by PH0PR11MB7471.namprd11.prod.outlook.com (2603:10b6:510:28a::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7762.29; Tue, 16 Jul
 2024 15:45:13 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.7762.027; Tue, 16 Jul 2024
 15:45:13 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CA+5PVA6FdFByuinUqU=8RtPJeSs5fzL8Ed+Y21sJyRp2wHrVow@mail.gmail.com>
References: <20240716132455.8401-2-gustavo.sousa@intel.com>
 <CA+5PVA6FdFByuinUqU=8RtPJeSs5fzL8Ed+Y21sJyRp2wHrVow@mail.gmail.com>
Subject: Re: PR for Xe2LPD DMC v2.21
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <linux-firmware@kernel.org>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
To: Josh Boyer <jwboyer@kernel.org>
Date: Tue, 16 Jul 2024 12:45:07 -0300
Message-ID: <172114470742.2192.5393706850154740261@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR04CA0365.namprd04.prod.outlook.com
 (2603:10b6:303:81::10) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|PH0PR11MB7471:EE_
X-MS-Office365-Filtering-Correlation-Id: 72c48fed-22a1-4cac-7d39-08dca5ae4811
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MklRUk9QQkdGNWlzdXgzOEtOOTVoUXRMNE9HZVhZTmJnb1Vmd2NudlRSd3Nq?=
 =?utf-8?B?NzVwY2JXZzBSZjIvZFZCTEFFVUovYmk4OC9lWlBQUnZTWk9JM2wwamZFMlVl?=
 =?utf-8?B?N0VsZk9XRVNuZGs4cG5DL1RNdVhXV3NNRmdmT0RoYytxVlkrRjByYzZZV29O?=
 =?utf-8?B?YzZFRnh3K0VsRW5xVUdoUTIwOG1IUkp2bnA0eFpGVHUrQzVPY0h6K29qSXZn?=
 =?utf-8?B?Y0U1dURxTHZGS1ZsTTN4YUFQOUVMSkNlYXllVnhYWmh0b0lkL1hCVmhDa1Jk?=
 =?utf-8?B?MEtMc1ExUDZXSHVSTXZxV2xDUmF1N3QzdFV4RzFuQ29YYU9tQ2JudjV1YTg4?=
 =?utf-8?B?UjBydVcyaGcyZUU3K1JnUlBUZ2pnSVJZYjlSUUl5cXdNOU1XTjZaR3dDVFQ5?=
 =?utf-8?B?MDB2SGVCeGR3QU1hUDFUY0Q1alU3WEhod3F2eHBBYUdDb216NWlwbzZCZlBu?=
 =?utf-8?B?RFFBRzRXTlFiSUdFWDFiOGFvZUFQSHN3NzM2bjlzSWl1QnpWNjlGMU9iTmZk?=
 =?utf-8?B?Q095YXpCc1lCcUVnNjgxZkE5RWsxcnd0WU83ZUlFS25lajUraStaRlQrbElt?=
 =?utf-8?B?Z0h0bEMxVzcxR2o2eVJ0MVBvRnVkN0l3a244dUwwMFNRSCs0djFBYm92YWhZ?=
 =?utf-8?B?U2lHUGpiTjByZk1qVGdKRDFzUEFpN25zRUgxM01VVU8yUWxDdmhITjAyeHA2?=
 =?utf-8?B?VVFacWhGT3B0cGt4UWZEN3RXSXp3QlYxZUJucVNlcHhGVXQ3SVZFcXQ4ZXpE?=
 =?utf-8?B?N01HOC9INmxOUmw4bHVBVVp2b1ZkMVZkRDBCTlhQZFJPenoza3VIS1JXZlVu?=
 =?utf-8?B?SjJjNktyNThaVDYzb3c4YmtHQnBLTEhkQTJCTWJULy9RMW5jOWM2cHRReGMy?=
 =?utf-8?B?T1g4VlpnVWI3S3JVbG1oSlYyR0orVk9LemM1dmNUNnhqRVdVenRRSG9oYjl4?=
 =?utf-8?B?ZFZsdHhtTjhyeURlSC9MOTcwSUNMaWNwT2lVM2R0TDhNUmNQR3RxM2JYL1cr?=
 =?utf-8?B?TjFVN0RGU211U1E0MTg2ZHg1cytLMGd2NkZtaXdrWmNoQkFYaDJtZnNzU0lm?=
 =?utf-8?B?SGphbGphdFlMSjBXNXRNK0dERExwU2tOa1NTaVZBblVOUUpXbnc1SU10dUE3?=
 =?utf-8?B?Y3RlckQwMlZHaVh6cXJydGFmalNBcnc3N2hwRmsvcE84cEZRTm53RVdUNlow?=
 =?utf-8?B?TG5DTmJxZ0FpQTF0dElreWZHcGhRYXlEblpmZFdJbE94N0lyaG9vVG0vR2Jk?=
 =?utf-8?B?LytkN2Z1Tm5peThqbmlwZnlpS0JPZVNoTE8zb2NsaWozbDkyeGl4Y0RQdkhs?=
 =?utf-8?B?QWFGcTVSMkhKcklvakxhNkN6ZWQ2SDZYN1BGKytQbUUxaFNFYVJIOGN5SEtp?=
 =?utf-8?B?RE93Sng2Tkc0cDJXT0JseVRXR3JWaUt2RndZc21wcmJ0UTl1SE1oQTdUOTFq?=
 =?utf-8?B?V3dLSFFWMWpvZDdKMzVKdHZHU1ZRdVQ5Wm1zT1Z1b2ZkaWFvNmVQenF4dit4?=
 =?utf-8?B?WU5xZ0dYQUo4WDMvN0FBc0Ywa29pVXp3d3BrZjRXamNxZjNzQ0cyOVlWMHhT?=
 =?utf-8?B?ZU8zQ3Y5QXlDbmRZUldtQjZ5ZDl2YzcyaC9idXVRK2dvdWZvRithRXBaVmRa?=
 =?utf-8?B?T1M1cWNtZWw3Z1ZqUWV3L0VLSmZySG1nTFFFOTdFNEtqLzNtRng1TWF6VzJJ?=
 =?utf-8?B?cFVWVGhDVEEzYUkvb0JOc2tlWTR6N0F0QTFBMlNXWlU1V2xzUnVDTml6dTBn?=
 =?utf-8?Q?moLa1mXOcwi4NyVL+I=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VkRkdXRtcjM3VjZXMlJPdno2czMwVExMaTY3SnpYeUkzaGEyMnRkdUZ0dGtx?=
 =?utf-8?B?cEVBT0laYk1jMlVmcFFsWk10V0lHVXNXQ0t0MUFIeXRvMS9raUtIbnMveWhu?=
 =?utf-8?B?c1NvS3dkOWcvK3VWV1RzaUhEc1JDS0NSN0JkYW9aS1VJQlBGZVlUZkExdEFN?=
 =?utf-8?B?TjBMVC9pZ0ZuSzZFOVNSd1NNczFWU0taTEpPS0RqYnlLaGFGbytqS2F4NFBw?=
 =?utf-8?B?c01XZGFPRVNONDBRUGp4UHpRczFVVUVFbVdRRFc2eUVMckhGdmdyZE9USEFJ?=
 =?utf-8?B?YWdIbG81d3RsaWs3UTBleUduRlVCZy8zcnBJZHNZSzR0NHMraDdIK0lmZDRE?=
 =?utf-8?B?MC95RGxOVDd6bW54ejYrSTVrSTgxSkFlL05LTkYyTUR5NlhVSHltWUpuU3Fh?=
 =?utf-8?B?UWMvT1pEVmZqQ0dOV1R6dmVMZkdiczB6RUMrL0RKZ1c4MDJUQURNUWI4TWtZ?=
 =?utf-8?B?RnZkcHRONWxYY1MzTWdqRHZ2eWJxN0l1ZFd3dEx1b2JKYjNuUWgvc0JITzF0?=
 =?utf-8?B?VFF5cVQzSEZSaUtNaGE4cUF0YUFheGN4WkM3Y0ozbVpIL25ydndGZkIxRjRM?=
 =?utf-8?B?U1RCMUNPZ3Y1Rm1ocVZUVitNZEFBYlZNb0k3MDZVT253R3dzUkEvZ2RTZFpY?=
 =?utf-8?B?NytCRTJvWjRLQlhEWXRZT0tTbHlpeDZ0YUVaaEZrcGd2aXBZMFVHb1dmMUdx?=
 =?utf-8?B?ZFNPbEQ3VjdSbFUzdjJjMUlMeERVQW0rUVdJK29aWVplaHo5SjFkZVlLV1B6?=
 =?utf-8?B?ck5QaGljSUVnTnhTNTlhaGY2dFdKR0lyM3RKMlJ1eWhFOTZzQnNJbVE4UXVa?=
 =?utf-8?B?Rm1xUWhaVjlVUnBiMGdMTTMrYzRGZjdvWHBRUWIvanBqUWRqbkQ5NFpGRnc0?=
 =?utf-8?B?RkM3UlRWMmdWSXFxUWt2WXFCaHE3ZGNxMWsxRDZmRDNmby8xQWczbUxqY3R5?=
 =?utf-8?B?emFUNmpNZG9xd0NRODlFaGJrS01kUGdvMmlwcnhyaDNuOUNTNkNMNjVMbFht?=
 =?utf-8?B?UW9lT1FIdGEwSG1Odk14UnNKcDhiQk1jRzdsRUVzNEJWaUlLQmVkNDg1K0hp?=
 =?utf-8?B?SVprYTJRZUNoWkVvcE9KOFpROCtHNmxsNDUyWGlLOW5OMzJoOTYrMHdyVXFh?=
 =?utf-8?B?SUNmdjlKR2pKa3NjdEp3Mjg0OWRMOXZNTTdzdWJhcTR1TzYvS0JicVM0ckpv?=
 =?utf-8?B?c0VLTFJIUFNYSHJXdlVka1hRTEJSSUlYanhHY1dmeWRvSjZPZGN5dnJPeUVL?=
 =?utf-8?B?Wmdxa1pkZWt3UDA5aHMzc2JpeHY5MXB1eVpqcmh2cUtEcmlTUVJEckFDMWor?=
 =?utf-8?B?eXh2bmc4RTFEaGhsMzZWQUQrQU1nZ3ZGMHNDSTdscFhFUk83NUlsL09HY05p?=
 =?utf-8?B?Vnh4Zmx4d2FnOVJ4NVJ0TGV3SVNXaXA5QWN5dHpwd1pycmN5OWxpT3phMzBa?=
 =?utf-8?B?UFNodFAreGJ6cmRkcnd4UUpkVlpZRDJ0MGxZS21YT1pjeUZIS0pQbUo2NlpF?=
 =?utf-8?B?UnY1UVhYSXZBYXhoMWZhcnJQNEFTR1dZd1ZPUGhIVXh5bm9tdXNhOEpSS3ZD?=
 =?utf-8?B?bHY3ZEtBZVF4aGo5NUN2ak5sMkxSK2lVaGcvbEttQUtGb3E0VVM1UmZodGtn?=
 =?utf-8?B?YkhCdy8yTkV3Y2JvaVRzdXhYeHpja2JoUTQzWmM4TVFlbUIzNVAwQnlZWXBS?=
 =?utf-8?B?ZnBMZzNvL3ZqMXh5RmhtY2lEWmRabWNJZVgvWlVJM0V6SWJsMjAwM1U5YTlp?=
 =?utf-8?B?MkthQlZaeWw3aFNCOWtZWFpxTUZ4RXYrU1JoWURFVWc4SjkzMDV4YmFtWU5C?=
 =?utf-8?B?NndKK1ROMDZMQytCQTVtdTJPK0UyVFJqbC9PT2oxb0l2dWhKSjFod0k4Q2or?=
 =?utf-8?B?dzJGeWN3TTF1bmhDdXh4WGw4QjdRekx3OFNkaTI1TW9ZTXo4b0tVUU8vd21N?=
 =?utf-8?B?Z3RKSUZoNWV3QThIYmhaTWhUV2lwRmUxZGtxY1M2eFc0NVNSVjErbHlVS0xD?=
 =?utf-8?B?TjY0MzQxdVlyVEpLbm9JYWJZY29NT0lQS2w4K0t4WW5McStrbGRPN2Zla0Rz?=
 =?utf-8?B?cUZjYUUvUUpTdmZ1MmlqTkk5eFRjbUtPQlp0NlNrRjUrZU1WKzVuYzlPTHBn?=
 =?utf-8?B?SXhUbUZpYmgzc1FEZWZvZmFia01kZnJpaEJ1TjlxNzZDMGtCdGJ3d0p0b3dx?=
 =?utf-8?B?YUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 72c48fed-22a1-4cac-7d39-08dca5ae4811
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jul 2024 15:45:13.3561 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: F1PAPqJ+/AKuEyyeDTOpKfH+INMIZZQrwD1R0WEkda36dyopoSWVYl6pNyHcDnASJNf8JlMzDdz0M9AkE0cIzQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7471
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

Quoting Josh Boyer (2024-07-16 12:28:28-03:00)
>On Tue, Jul 16, 2024 at 9:25=E2=80=AFAM Gustavo Sousa <gustavo.sousa@intel=
.com> wrote:
>>
>> The following changes since commit 93f329774542b9b7d57abb18ea8b6542f2d8f=
eac:
>>
>>   Merge branch 'robot/pr-0-1709214990' into 'main' (2024-02-29 14:10:53 =
+0000)
>>
>> are available in the Git repository at:
>>
>>   https://gitlab.freedesktop.org/drm/firmware.git tags/intel-2024-07-16
>
>I don't know what repo you generated this against, but it was very far
>behind upstream.  I rebased and it effectively only pulled in the
>single commit to update Xe2LPD DMC.
>
>https://gitlab.com/kernel-firmware/linux-firmware/-/merge_requests/252/com=
mits

Thanks for that. Yeah, we definitely need to change the flow described
in

  https://gitlab.freedesktop.org/drm/firmware/-/blob/overview/README.md

Looks like there is no way of keeping those branches fast-forward with
the current way linux-firmware works now.

>
>If there's something missing, please submit it separately.

Nothing missing. Thanks again.

--
Gustavo Sousa

>
>josh
>
>>
>> for you to fetch changes up to 72e5970de400e6d55a31e38bcba439ec17cedfe1:
>>
>>   i915: Update Xe2LPD DMC to v2.21 (2024-07-16 16:11:43 +0530)
>>
>> ----------------------------------------------------------------
>> Intel DRM firmware intel-2024-07-16
>>
>> ----------------------------------------------------------------
>> Daniele Ceraolo Spurio (1):
>>       i915: Add DG2 HuC 7.10.15
>>
>> Dnyaneshwar Bhadane (2):
>>       i915: Update Xe2LPD DMC to v2.20
>>       i915: Update Xe2LPD DMC to v2.21
>>
>> Gustavo Sousa (1):
>>       i915: Add BMG DMC v2.06
>>
>>  WHENCE               |   7 +++++--
>>  i915/bmg_dmc.bin     | Bin 0 -> 45964 bytes
>>  i915/dg2_huc_gsc.bin | Bin 622592 -> 630784 bytes
>>  i915/xe2lpd_dmc.bin  | Bin 61208 -> 59872 bytes
>>  4 files changed, 5 insertions(+), 2 deletions(-)
>>  create mode 100644 i915/bmg_dmc.bin
>>  mode change 100755 =3D> 100644 i915/dg2_huc_gsc.bin
