Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71858AC00D7
	for <lists+intel-gfx@lfdr.de>; Thu, 22 May 2025 01:57:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E31B610E083;
	Wed, 21 May 2025 23:57:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LzUNN3zu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BED1A10E083
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 May 2025 23:57:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747871824; x=1779407824;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=w1gA/7vGNvSQiQdPUha7E2zH0C6PGcCRnbDZ7gARVG0=;
 b=LzUNN3zupVLWDm8l/b4NHxhh+aKHl7/3uAqYqkY1PApmXL8PwEOIqKFu
 PrdQCMwlEdYj/I5pebplgrQqqRYtruTwjP2kE/nb2OulKYYQGZJmGpZIi
 qINt3+pqfbLQcuciaDJOXHs3AtnN/G2vH51jonJFYmg880FOjpc5P69p2
 gYbUBsXLy8+d1Ng1uY+V/ru2ciW4hHjxAQeolpTCFTWaB8yWSfoEoZFC4
 BpqLVDD6XeHd73aCSje1Zr0edPL85e0QFmwMvsf8qOn0G73Eou9OCwKW2
 1D8Du0ndQARThLHVsu6WvRiPPUsgmwjWTQk1Qrl4iKDFk7jrgScnnnm4W w==;
X-CSE-ConnectionGUID: PAstU5zRQ/aR29eNjU8vdA==
X-CSE-MsgGUID: g3rJGNGGSeqaIBsmXfG4XQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11440"; a="50031457"
X-IronPort-AV: E=Sophos;i="6.15,304,1739865600"; d="scan'208";a="50031457"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2025 16:57:02 -0700
X-CSE-ConnectionGUID: KVF7Zyx8TOCPYm4AH1yDCg==
X-CSE-MsgGUID: VYM8B/wlTDilXx5dOfefrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,304,1739865600"; d="scan'208";a="145558156"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2025 16:57:02 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 21 May 2025 16:57:01 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 21 May 2025 16:57:01 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Wed, 21 May 2025 16:57:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QB8Oa1SFOy1jD7adT4yBh7Eld7PjsSpJVOIt1hyJsICG7vZuBuIzaEg3ZP1ZYACk2l4+ytyA6GQvW3ZrxzlouIiARlWTVIllOtraZcmZSibZ4nK0PGXzp3bLZ0FZxWZraBJvO5z3DEwZkp9bFGNWwfZSf2fG7y7NWxICOsL4Spn5/0M2ik3I3YK+kDQkIsT992UYDjii2TsDeyZZS3h9zdWbCF3/HOlSRlq61F045Z6F+IliuC6LbxjsRjPK0PkeNvtCJPeUQc4TZPY6RoSUvqilp4FMGtxHORDwmEt08HwG08pnmOGoRAmofWQOMzhWqjvKzJUWjaHzTWiHv+OVRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yL2v+jtIJbXnuaJ9ec7cj4ykmW8mapbx7U5GpCfU+yI=;
 b=FOqMS+tZ90waCslzWkpSj3P1iGIM9hSa/2vi1nsEys9OhhEP0c0r7SgNzCHGoBci38TsP2DK7yTzCO3Np5WkzWIOtUEOUHC8RmpaYFqSNYuI5ewj2awYOpqHI4TzS6CLXIu2ghARWBtmoPeWZTv3lE4Le/B1TyqMn56x8h/sBxn9ypv+cjWgQHNKbkmg03n6Yu6Cb1MkfhLxJ50r00UeejdaepLGWG3tIi2MaUXsTYZjjBmpUV7l+TN6BoxTZESdtjSlTzfhV49xdPKFGhXn+6udoPWuM2avdUXf6TqDVQT4PzKOGCYJZoiTEIRnbrg7HWX8lANaYEpZawRPBHY4uQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB7605.namprd11.prod.outlook.com (2603:10b6:510:277::5)
 by DS7PR11MB6126.namprd11.prod.outlook.com (2603:10b6:8:9e::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8769.20; Wed, 21 May 2025 23:56:18 +0000
Received: from PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::d720:25db:67bb:6f50]) by PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::d720:25db:67bb:6f50%6]) with mapi id 15.20.8769.019; Wed, 21 May 2025
 23:56:18 +0000
Message-ID: <70ac114f-1e83-434e-868d-4b6b383c1316@intel.com>
Date: Wed, 21 May 2025 16:56:18 -0700
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/guc: Check if expecting reply before
 decrementing outstanding_submission_g2h
To: Jesus Narvaez <jesus.narvaez@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: Alan Previn <alan.previn.teres.alexis@intel.com>, Anshuman Gupta
 <anshuman.gupta@intel.com>, Mousumi Jana <mousumi.jana@intel.com>, "Rodrigo
 Vivi" <rodrigo.vivi@intel.com>, Matt Roper <matthew.d.roper@intel.com>
References: <20250514225224.4142684-1-jesus.narvaez@intel.com>
Content-Language: en-US
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
In-Reply-To: <20250514225224.4142684-1-jesus.narvaez@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BY1P220CA0017.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:5c3::6) To PH7PR11MB7605.namprd11.prod.outlook.com
 (2603:10b6:510:277::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB7605:EE_|DS7PR11MB6126:EE_
X-MS-Office365-Filtering-Correlation-Id: 15a79659-d4e5-4a25-aace-08dd98c31448
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WVNtYTR3S1pkTEttL01YOWlkVEE1ZEVyb3A4MG0wM3BqaUQvc0FZZkNjbHVx?=
 =?utf-8?B?cWdRNlM4ckxYeGNHTFpGL28rQ1pxYUprc2RXNFhKaHpnU25tbVN0b2RQZmVt?=
 =?utf-8?B?N2xCV2tFK2Q4VnZwK3FrZW5uVGQ0QVdFZmV2UzFaK0ZmS21BMjZ5azBCTVRm?=
 =?utf-8?B?OUZUWGR4THlFdHFkcnFLc2txbTRvUmE2empSdHErQzVjME9NUXcwUTB5OVJD?=
 =?utf-8?B?Yzd2djduaFFqY2tzZHRQWlpmaWlOKzNiKzl6VWRGVG1vZ0RNMHEwdDByWDFB?=
 =?utf-8?B?MWo2Mk9FY0FjMHpyK0FDRGVFVUJCN2IwUUQ3WE9DRmZvNDVpK2VBZkNkTHhK?=
 =?utf-8?B?RWFPTWdoZU84a0FMVGU2Ti9sczUwSDBrR2lGMGloWnYvdWVNMFUvbzNlRmxF?=
 =?utf-8?B?ZGliREJVbXJNZ0xWOGVKMGdNdTA3bXBBUUVPZUN6TVRPaXZ3VExSeVYyc0Rh?=
 =?utf-8?B?RHRQYS9sN2lZaUYxc0dKdEd3Y1FNa3hqT0UyVyt0dVpPVE5YYmI0d09JZ05z?=
 =?utf-8?B?b2VLaTVJV2pNeWdIZW53ZGVYOENZS1Y5ckphV1lILzd4dWdVQWNhdWNJRDRs?=
 =?utf-8?B?bUtGVnlKQWg2NWlKRWppd1FLZkk5Sm5GdTh0em9WdWhMK29peUpBdDU5YzVZ?=
 =?utf-8?B?K2hWMFZFUk1sb05NL0lldXBlTHJnSGdXWnNwOVl0SitDMDF0VjRhcU1OTHhZ?=
 =?utf-8?B?SllzaHk2R2s0T25Ra2lDZWd3TmFnaFFMMzhQa3grQWZtUE9Gang4UHEzVitz?=
 =?utf-8?B?T3N1dHBUcTFMOEdFNnVhQklIVmdPZFpSOGNoMDFBY0xsYWg2eGZDNjJMMFVl?=
 =?utf-8?B?TkZJQm1Ubkh0OE94MjhteCtnU1NUTzkxQW04ZzJWdG4yRnNTaG1GaWM5Q0k4?=
 =?utf-8?B?WTQvUmZzMG5IdkxBVE00eERSbEFpWjRaUCttTGFoaVNhUDNGS2pSYzlJdzJE?=
 =?utf-8?B?elUxZ2UrMEtHd1BOT3gvKzcrRDhGNW4zQUtjUXRVUkwyV2VWRUNhck9ZcVdm?=
 =?utf-8?B?ak1VUC9Uay95eXFvd1pwbnlTMklqdDRJVXpsVTdvb3lObjFmMVBlMWYyREY0?=
 =?utf-8?B?WGk4VkF0dG03ZHJKODd3NmI3UmtGRkFVU3pKMEVSWklVSTVrRG03UUVYY1ZO?=
 =?utf-8?B?aHVOWVpTZU1yMEJ2dVFCVUd5cUphQzY3OXdGaFg4Wk1sdEc5YndVZFNmbk9u?=
 =?utf-8?B?MXZ1KzFaSXMzRXF6V1lMell2akpjc3RwZzJyYS8zakFnVkFSSmF2NnhPbjdO?=
 =?utf-8?B?cDNNRGNEMXBJc0cvWVZ2V1dpaHRhcXB2UW9sLzVlYnMxZFRQN2J2YkQzc2VH?=
 =?utf-8?B?NlNUeUZqRWs3ODVxeEJKMmdkbmdTYk9CUEFlNFpnbHZhbGR4K2xjTVRTeWFo?=
 =?utf-8?B?SHhYSVVjNWFpRndNVS81R0pWVU9yYzc0SWxoZGh5NHk0eFowbTJ5dk5vK2Nl?=
 =?utf-8?B?QTJ1REhDV25OMnBzOUlDRlV5WmNKN3BTRkRlQlVMOC9PMGVMQU5GazBTYzF4?=
 =?utf-8?B?WWZYbmlVOWd1WFVETW9CRlNaamlodnp3TXpRRVN6M1hhUVJWV1hOdnB2bm1E?=
 =?utf-8?B?MHEyTXA4clQyYTh3ajk0b2Y5L0RjRkV3b3IyUDd5dXVxbThNUWQ3RXFaN0xN?=
 =?utf-8?B?WGg3RzIyT0pSR0pPZlB1a0lrZ2JRYTZ6OTRFVmt5SEJHbis5d2N6SURQQXJO?=
 =?utf-8?B?eXl3NUdvYllZakZ2UGJ2NDdRTG1JNXl2QUEzVXl3ZHloMHUydjZxMGc4ckhG?=
 =?utf-8?B?SW1RVmNzeFZDMklCc2trY2lCQkdadWpCdVEveHVXdm9DY2huVzN1NmllbEkw?=
 =?utf-8?B?ZEhXbThMNXNCQ0hQT0hYczQ1Y1RIbkdFamllV1pEK01IT1dqTzdLTHZvMnh1?=
 =?utf-8?B?bGtVTEtQWXlkQkNtbTBvNGw0dFdZNVF3SmtNMmFFMUU1YXlJcWFraUExcVpN?=
 =?utf-8?Q?1B+Z4P/tjV8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB7605.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eG14aEtZWnVYd3A5TUZvTllwQUl6S2Z3OXN1OHdjekEzOUQzcEhYWVYrRCs1?=
 =?utf-8?B?dkcrZWtteWQ4QnRQRG80bm9qcVkwT1F4VGFIOEFyeUN3Vmt0NkFXbUN0VjFP?=
 =?utf-8?B?WHRiaVpJbVVGMmVMZml4UkpwZTB0d0ZLVm84dkVwcVJhSmNpRHp6cXAxOGEz?=
 =?utf-8?B?dHUzNnorZXdCWEhUUFhzSUZVTXg0a2NxeDdhaTRMbU5zdkZZc2RHclhtZGdo?=
 =?utf-8?B?bjdrTjJTZk5nTEp4VkFwQktwa1RpcGRaWExuMHNaNEVQZzh4UjhzN0JtZFZS?=
 =?utf-8?B?aXJ2QzRaSVRONzB2UGk4a1ZSNE9MdEVaMWlDRnNxVEFLUmN4ZnpKRjBZU280?=
 =?utf-8?B?TTgvMCttNEYwU2R6OVdvMU1DT3RYb2RvdnZVNmNPTzBsSk4reEk4WUFXVDRD?=
 =?utf-8?B?ZGRkZUs5S2dncFM1Z09WcVZla0k2ZG1qMDBKWCtSeEhlWEhMOENhMmJFOHZO?=
 =?utf-8?B?OUptZExjWDZOUXVZc2VGTm11cEQ2OHpIWnc2ZjBYbURKbHVwL09KUkhMR01z?=
 =?utf-8?B?cUI3VUhhbFd6Qy96eWNheFg2UHZ5UVFxblE2ZDh4WlNDeUdVK1cxbGtHRzJE?=
 =?utf-8?B?cnBlQkNrUFlzUXI3dER2M0ZxWVNLdVhXaHp2QnNpczYxSWJ1MWZudUF5S2hL?=
 =?utf-8?B?NlNWNUtBQzhQNDA3OHVZSS9Kdi8vTk42UTVPR2dYd1ZzVTIxdTZOYVdxUW9t?=
 =?utf-8?B?YmhqZ3p5aTZVWXJMd1VFQUNUR3crWGJseTlpd2NqSjFJV3RNVUJjNm96SzNP?=
 =?utf-8?B?WHZacTRhbHZGWm5qSkRUeHRMSWFSY3kwSjlPYml2L2hRdFoyZmtqSXQ1VGdZ?=
 =?utf-8?B?a1dMdXdxei9KQXlIN1d5dXc4MXhhM1gzU1RKdTIyd3FoRFc3Ujl5Tzd1ek1M?=
 =?utf-8?B?TXFYUm14MUV6eHNyUU1WTE5WTmp5Y2ZSRVFNc1Ixb0dic3d4SjRMWkVha1lY?=
 =?utf-8?B?em1UTGE1NE5MNFdKNlAzSUthSkJCdkZsQnNEWUlzaEUxbnFTRDN0QmkrNStK?=
 =?utf-8?B?cnoxWWN0Qmt3LzVFNGhldmo0SWlobWxPN1g5cmZLQzJZcTQ2dkxXVWhNYXpt?=
 =?utf-8?B?REVVS2dGTGtNOUFWYkZzOVl1NHhBZUZ5eHd2OFVjVUljU3ZEb0tCdmR6aSs4?=
 =?utf-8?B?RDhVVjk4LzZXVkhxclJ5RDFWc25rRVhrZC8xbXFXMnhvRE1pZ0Zkbjc1c2Y5?=
 =?utf-8?B?ZEtxWklpckFUVWx0bmJvb2tycTl0anF3THVXTFhxclFlZWl0NXRCbEp0N0dP?=
 =?utf-8?B?ZWpXK2xrbHBIVkRlK3NLM2JuZWZlL01VbVRCMU50L2dBaVZMYitrRXhGalY5?=
 =?utf-8?B?NStpTTZ4ZmpYb1l2aG9PWG5JYjV5WWo0MXUzems4V2NXU0tLbkQ4TTZoMjBZ?=
 =?utf-8?B?cWg3dE14TSt0cnJ2b1FHNU5aWjZVNHNkbWdXcyt2UHhGTUYwd3N6SVR4a0ZE?=
 =?utf-8?B?Rm5zdXhvNVkzbUR2ZVRZYk5ZZ2U3ZTZ5RXdMdjBKWGw0aUFucDJHNFpwbldi?=
 =?utf-8?B?bjVRajduT1kwYVdkQlgyN3h0NGliYlpVZ2lFc2M0RUJHeG43cmdITkJnazJU?=
 =?utf-8?B?MFlwWGl4RWVVcVNnODZPVk1iV0d6bjZXMWRKVEF4TlFNcE84NEhGQkFVVit4?=
 =?utf-8?B?UkpkQkVhcGZqY2Z1SDUxUFU4T2lZa3B6V2x2bHFOWTk2SzBieXJWcUVIeW91?=
 =?utf-8?B?N1lxQW1CNHA3RTllYUUxZS83SGY5alh2MWgrNkJvLytiSXFRZXUwSllmUFhy?=
 =?utf-8?B?TE9oUUwvYU5WeSt4Yk5zZjdFd3FUVUJNTzJJNks4dzRaMEZjVTlEd1RXNG9Q?=
 =?utf-8?B?c1h5cHArdkRtOFVoL21iT3F5Uy9OdnloZEptN2FRRGluNlYzZ0Q3a1J5SEY2?=
 =?utf-8?B?UDBRUlordnVJTXRKUkI4OUI4VEZrbDdFVHdiYnBxOVBKT0I4MlR5MjJ5SVor?=
 =?utf-8?B?WlRUNU9mazZSTnlxMmk3UXNLVm9OdmgvM0ptaHc4VGZraS80QzNzRVZwaXMx?=
 =?utf-8?B?bFVMUUxhRkllYnpMV2d2bjMzSWNERHlFdDRVcndzR0xIdTJsYnpxT0lVNnBV?=
 =?utf-8?B?M044Q2V6dTU0ZlZ2V3NUZGRzYkxWWGl5VVFYNXBZMDNtbUNkMWFlN3hvYklJ?=
 =?utf-8?B?ZWJZa3pmOU9hWFFnVTZ4bExoVDRJblZ2K0xVbXJ0dUo5Z0RrYlkxbi8vYXls?=
 =?utf-8?Q?ODrbdWLtSIqm37CaFy/NqQ0=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 15a79659-d4e5-4a25-aace-08dd98c31448
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB7605.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2025 23:56:18.5552 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XvvgtpxPTCUqMy3J2RKp/ptoMO9O8EFNRw1Mi0dgvELzBgKzKAJbJ77Fi6EJ8B4swuGJyZQj0PQ9LQvbEYlE0tGKhD8oAmAYblw1tNQHp4w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6126
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



On 5/14/2025 3:52 PM, Jesus Narvaez wrote:
> When sending a H2G message where a reply is expected in
> guc_submission_send_busy_loop(), outstanding_submission_g2h is
> incremented before the send. However, if there is an error sending the
> message, outstanding_submission_g2h is decremented without checking if a
> reply is expected.
>
> Therefore, check if reply is expected when there is a failure before
> decrementing outstanding_submission_g2h.
>
> Fixes: 2f2cc53b5fe7 ("drm/i915/guc: Close deregister-context race against CT-loss")
> Signed-off-by: Jesus Narvaez <jesus.narvaez@intel.com>
> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
> Cc: Anshuman Gupta <anshuman.gupta@intel.com>
> Cc: Mousumi Jana <mousumi.jana@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>

Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Daniele

> ---
>   drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 39696ceea9a5..68bdf0c80ec3 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -633,7 +633,7 @@ static int guc_submission_send_busy_loop(struct intel_guc *guc,
>   		atomic_inc(&guc->outstanding_submission_g2h);
>   
>   	ret = intel_guc_send_busy_loop(guc, action, len, g2h_len_dw, loop);
> -	if (ret)
> +	if (ret && g2h_len_dw)
>   		atomic_dec(&guc->outstanding_submission_g2h);
>   
>   	return ret;

