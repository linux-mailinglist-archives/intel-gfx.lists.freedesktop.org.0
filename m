Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yJIxCjr8DmoSDwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 14:36:10 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FB035A4E83
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 14:36:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A97110E1AC;
	Thu, 21 May 2026 12:36:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PKaBmN+H";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F06C10E1AC;
 Thu, 21 May 2026 12:36:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779366967; x=1810902967;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=l6PUh/FY29sQyrtkM3Fbl/FBIDEmVFz4MNLTnVi9kI4=;
 b=PKaBmN+Hnox4Sx+IZD04Vp2pMQt/JzTgHcOJGWQUjSXjj0IGz9g0NZnd
 94SYCQbkf1oxp+PE35f5cDw84+wrR/za5vkFJHFtSEEPx6QJlL7kFk03C
 64ZOgzERlTo5pP4CLRW+4lGIyv0G4YU36hACFLQ0k+SxiAJT62YMufubx
 i/XJ3uyxTmQB8mcw4yoN/PmVrTovJWrh4K1JefXouPnFOmBR2+bRJ/Gb/
 1sBYpFK5OLRrEXFSAQO+LT2Zi5EEG7ZTU9nxfA0q1BgdC5t/1k3Q83KJ9
 Fh6T5L8X+Pv2b4RoNwDYidgWV1qGrQFvq9qKPXmSn7J7kOt6n0m6ve1aI Q==;
X-CSE-ConnectionGUID: p9v45EojRluRUp4uuXhn0g==
X-CSE-MsgGUID: K3Z04Y49Q1SuIKEYHcVPaA==
X-IronPort-AV: E=McAfee;i="6800,10657,11792"; a="80249218"
X-IronPort-AV: E=Sophos;i="6.23,246,1770624000"; d="scan'208";a="80249218"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 05:36:07 -0700
X-CSE-ConnectionGUID: mokPmnJnRGWyPWXBD9B9ew==
X-CSE-MsgGUID: MfhHbN1sTA+CkUUdLe5jMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,246,1770624000"; d="scan'208";a="237490694"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 05:36:06 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 21 May 2026 05:36:05 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 21 May 2026 05:36:05 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.69) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 21 May 2026 05:36:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oEfqAREWbC1qq+kBj/PKBPSTuqQjQxXCLVJmCZG68kQ9VJAZQdQpwIafnuR8j4MLO2Nt20T3PogRpRt8Zi3gKicU4WJfLxjP4WfOO/LtOg3zW+SMZoMox4V9/Ur7tE9QG5LpKhodW8gpnhEXiv+goUQx4ZK5OZflZTCydocGAybyAapsUKIGfshvCckjnn96JyCIhJ1ERTwv1O6p3pvqjWl+Ed8oDMrcN+xMnI+qwcFRsAxutqsCnBfIZ87b3m11IaLBFaMNxnuP7Fkp7wMojO6jCm05kZ/EoaD3RIXOhxVGPYHsM3KqE/U7UngtkeDw/zqedQwjuN4//gJD8GbyeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ltgqoiZ+1xXCt9ktV8jmLI+TuRKi2N/sX2RBbMa8D7k=;
 b=jSKS1icL+d8fWqe7flSvVDyKEteNT09cFRndQ+FQdM/5y4LrXno4zxvT5Y0AoqFGjXnBaw/BHQ7xJn86twJZQfcFcTHMJlXZB5CCV7IZb1WiEFaJVZ548ddTY/0NcmV58ZSFVlHuBVk7rZpVx0olQIzc6oqzTqBGrFPmHu7qc9IwXf/apJQ38dRuKcqtWJa4USLNFM7x0RBDbKYYlC7S/h554HldChg0+h8RcmGTzUrCq9nBysOd/iiwNwAxLGLkFfdqKh6PAtKP5ku2g7Ut6gqHG3yZmwnKFAq/aD/x+tD/izRl+zSZ/TelmqhbezdD79gNtjSDu/GjP54Mjr9Q6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7183.namprd11.prod.outlook.com (2603:10b6:8:111::10)
 by PH0PR11MB4997.namprd11.prod.outlook.com (2603:10b6:510:31::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.17; Thu, 21 May
 2026 12:35:56 +0000
Received: from DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1]) by DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1%5]) with mapi id 15.21.0025.022; Thu, 21 May 2026
 12:35:56 +0000
Message-ID: <9c4928ff-6520-4dbd-92ee-2fc49c2630ca@intel.com>
Date: Thu, 21 May 2026 18:05:47 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 01/16] drm/i915/cmtg: Add intel_cmtg_is_allowed() for
 CMTG
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>, "Nikula, Jani" <jani.nikula@intel.com>
References: <20260513163857.1541888-1-animesh.manna@intel.com>
 <20260513163857.1541888-2-animesh.manna@intel.com>
 <074e4d37-9bf0-45da-9541-8b27164e743c@intel.com>
 <DS0PR11MB8049DBAF76058351534A3334F90E2@DS0PR11MB8049.namprd11.prod.outlook.com>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <DS0PR11MB8049DBAF76058351534A3334F90E2@DS0PR11MB8049.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0193.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1b2::17) To DM4PR11MB7183.namprd11.prod.outlook.com
 (2603:10b6:8:111::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7183:EE_|PH0PR11MB4997:EE_
X-MS-Office365-Filtering-Correlation-Id: 4f62d899-d341-4de5-b146-08deb73580d8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|18002099003|22082099003|56012099003|6133799003|11063799006|3023799007|4143699003;
X-Microsoft-Antispam-Message-Info: rP17LJBoccebPwOmjIPIrZg7a1bNAq3hH2IS7OipU3pGIXiUbCprzq1ff4bE7niQXYLZhOs0i5JGBqpwrUyQZkIYzhrRyUwvkHbhHlvG7Le28Ey96Vntec5+Y1JGEEi3LUekgsSkOSRlKuewoFRqVlptrOt9M9qsWZ8GxCArZuqrxJ8w0fO/Z8EO5cEi1EaGbIf/hCwuffi3FRpUTnrkHsq+IUJWPaiZEOBPnfQKQ2LvzzH3qtOyQOKYN8QvnvWGnPzWqIaHH4UiiQi+mM00IV+Y8ArYBk7QSvhGno4fDCtHb0HyBkK9rpjmRE1Pezx22l71XL+McEk/nIZkQmgC7tSWSYWIwISoyxEPS3Nanx1Fu+d20CRxpQ0xw9Y4L5qAlEbCO6m8UQEiZBslJgaZbmJbLNGSBHx+I7rUE0ec1Hse53Qka0KCTHT0oEuOrpxmCOwkr3EogNXDYY1dih746CcNV9pLgic718UHZXxZXayGp1muDCwKTBlfnIWLLZcre683VTn75H81gHyliFgUKnwmLuxJtIfFmNFqHKeUl8ST9FQNiDIolhJaMufkCV8kNwDxiZnuhRXLVQeuH3aUektxlv9Ra4sNJuXNs/qo0RVZJK9weBVVmNBd6BLToImeluobp3CJwwEyVJdGYJnGuu2S2n9P3BaDa2F36CgKIak5Rt7mwTDqzMcDMn9GpnAN
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7183.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(18002099003)(22082099003)(56012099003)(6133799003)(11063799006)(3023799007)(4143699003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Nmc3ajFyRUcvOW1OaFFQQ3VlZ0NqKzNVRjhxRUR5cS8zZVpoL2hlanNyYTN5?=
 =?utf-8?B?aGZId1dRakNFRXNLSjE2UUNVa2xSMTJCaHFja1hJZFpKT1Q1Z25TRDkxaVd0?=
 =?utf-8?B?SVpqYmdneUF2RFpTR21aQlJnTnErdXRySEtLYVM5OTJOcVZQNDBkdjc0MkUx?=
 =?utf-8?B?QmRSclFicHBIOTZmWWVRVXRkbjhkRzBwVnB4U0FCOWJOL3hOY0UrM01VZlpO?=
 =?utf-8?B?RGNMejhTdnBBUHpHTTNTblZSMkJsWW9aUi9iNWYrbVR0WGs4ZEhSdEhQcjRv?=
 =?utf-8?B?cGZ6M0w4YXFtK2VGSWVCbURvaWZGYkx6d0VtczJlNnNXelJWUjZjcEN0YzYy?=
 =?utf-8?B?RzltaXAzd0lFellYNXZZL1VtMG5hRmRKVmZQb0dQRHZqa2o3Zk5vU2JhSU1o?=
 =?utf-8?B?T0QvUER0VGFxSDJzamZkRDZVV0dSaFdvKzdERThIa2FqcG0rVHEzQUxyU2RJ?=
 =?utf-8?B?RlUzMHRqcGdZOXk4N3hqeTUrV05taWtmVHlsK1BTNC9UK1RYbEpOT0NScDJt?=
 =?utf-8?B?ZWF4TUlTSlFLOVVXdDR6WUtCTzZFczRIcnZLNGRXTlF0MUNpOUNOeWhmc1Zz?=
 =?utf-8?B?Mi9McjlNbUlLcXAxTk1LdzdkUVRRWmJHbWlyMmpiMFRvcm8rZlV5MzFPVkgz?=
 =?utf-8?B?bklQazJ2ZEFmRWJybzVGMkNlUmUwajBpNG1tc0dhNGcwRXZkRW02ZVBWU3Fh?=
 =?utf-8?B?OVFGQkJxVTZZMzJxK2toMzVYODIveVVvNFlwa3hvS3hBWGhBek1vUURVT3RF?=
 =?utf-8?B?eHNYck9RMkVHTk5WTVNWNUZENngvTUpPbUs1aCtFNFVqY0EvRlBxbk5sSjhN?=
 =?utf-8?B?dXpQMGZ2YmQxa3l3cGJKVDFjL1Z1czRYVTEwQm1NdHVXc0N3RmFYZW9LczAx?=
 =?utf-8?B?MDhBSGxuQVdreXBzNDMxS0hUNDVmSzFzeklNLzRJaE5Ra1lzZmtWMm40a2ph?=
 =?utf-8?B?NmdlNHpNSnVPT1JxdTBPQnYvN2U0WVI0ZWNMaVRqQjIrUTZhMndQaUFLN0w0?=
 =?utf-8?B?NXRIWjBuN28rZ0dnN0pjVnpOYlZGdk11MUljZWpmYy8wbUx5MjRQWkhxZGlQ?=
 =?utf-8?B?SXUvVzZ4U1VibVc2eUxXZXI2V01rUS9qTnJHak82MERWWE85aE5aOFFjVlR6?=
 =?utf-8?B?Ni9QWXBKbzY3bk54TXNGTkJjNVQ5K1FBMHpGR1Uyc3Y0Z3hhSm85SFowODR4?=
 =?utf-8?B?cndWV1dWamxZNjZzdFNteWdQN2loVlg3STBDZGwramp4YmkvdnJIZ0xjMHYw?=
 =?utf-8?B?NnJhaWdlU2ZRSTVhQXBqSUxCUDl3eStkd1BHWGplWEFxQWZQeWwxdlp2c3hB?=
 =?utf-8?B?d1YrY2tBVUhEczdEQjIzVytucHZSZk9CZllWWFZVYjNyMmdEZ3VYaWU4NlRL?=
 =?utf-8?B?UU5DUUtTOTV1TjFkQkVidkU2YUpuL1cyTExDcjA0aDk2eEQ4blpzeUVTSkkx?=
 =?utf-8?B?YkRKZDV0Y0xLeTBReXNvWHNFNDZENG9tc3lOOThzZGFGTHpHeXc0NHRURndC?=
 =?utf-8?B?YzdHWEtpOUQrTWFqMVY2RDVFZjhsbW5VZTNUQXMyeXhuaFcrWFJCSmcvUDRq?=
 =?utf-8?B?bXJPbFk4WjhmNU5XOGRxYk4rVXc0K01ISHZFeS9la1hDTThhd01talRFVWNv?=
 =?utf-8?B?RHovc2gvenJSbE54S3NhY0tPN3FFK2JUWGQ4N2VjYlArcXRRQ0NEZkhTRW55?=
 =?utf-8?B?K2FGeE1JVWxUR0h4WnF6eFJNM0Y3bWNrcmNqUTZDU0J0M0tMWDF5b21aMGND?=
 =?utf-8?B?T3FQNXRhS25ON0RESDZnZDNVSGlUQ0NERngxdy9TQVlMdGZDdDhWYjRYQzEw?=
 =?utf-8?B?UkdsMkEvdE9ZQ2J6ZlJ0alVrQzNPVTNZeGxUdkxScElFVzlsdVlsQjM1UDhr?=
 =?utf-8?B?bzRtV2p3YmNQMkhpNnRlcG1rRHgydDRGVzJ2RFdKam9KZDhGcHdvTVJPSGlK?=
 =?utf-8?B?UlpzKzk0amJIbXYvVjlvNjJxQk9VOGpzVm8zV21XUkNadXppQjVmVXcwaXo4?=
 =?utf-8?B?bGdQYmxudU8rK2pSUXh1QXB5MEpjNkI3R0hIMU9GaDIxc0ZpVlg5NnBleVNj?=
 =?utf-8?B?L2hEejlESlpPL1E4YjRmbEZLbGwzVWJYVXRzdGdxNkNsOGdwangrR3hjYXVw?=
 =?utf-8?B?WEtvVFM3UnBLWHVzVGJ2YUs5QUhNNWNsVGxBRm1kejZNWitBNytVNnp2ZC93?=
 =?utf-8?B?eWQxbnpMWGpzS24yT0JvOTZvNjlERnE2TU5MMk9xY1FnRVNMeGhZN09oSlBa?=
 =?utf-8?B?dDViMUlNMlhLTC9iRDJCT0NpR1BRS0h2SlRpT0FBRWhyUjJiVnB5S012bjhx?=
 =?utf-8?B?U0ZiQnM5U1BYdEJ3eEQwbHI4dXErR0FMRmNDeDB1R0QxYVBCcmdLWndab2dt?=
 =?utf-8?Q?y7qDSXFOX/ayG6ww+UjYXBqoz8TajdMaH5GOTbRPPhfSh?=
X-MS-Exchange-AntiSpam-MessageData-1: tNp6QtGrzFweUA==
X-Exchange-RoutingPolicyChecked: FgxPisyN+o+I6zsmmUj+ucLTvsGYbPBVtf16ll9IU4cVqCG6hR1VFnNCQJzHBJkTux1q2u0nXjs9PDBBjOXB40DHd8/BNEeisP6ov0RoA6nfhVR23W20goadMRsyEK4HQHxjW5NIdYJgbDHBDBnp2vkFGvaYWSKcz/qiuT1oq8mHuh/NJO0RP8n11eReaOTy2Dx8XKn5TUXqF8oeeT7PxQ+Xh0BurE4YjCS3L5zfg8tL4bCCUAxeKCLsVxoAyg83C/jAyUEvm49Z6WedLbECs0XyElmujehOFo20JnBz01JjJU+264X01UxficLQWNGTethipHDlQvVFUStXLxndaw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f62d899-d341-4de5-b146-08deb73580d8
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7183.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2026 12:35:55.8138 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 522oFUGkpimage8VxGfuP2hz0pOfTQkcjwok320STpTgjwN/BX6fpv0R17Lf4NpoQDQ7Zv+ldqbVbG491fPHS/5W/IO1H4rcV4MsYU+z35jrBkAzAcRx4YmKpxUmeqzy
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4997
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:email,intel.com:email,intel.com:mid,intel.com:dkim];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 7FB035A4E83
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 21-05-2026 14:31, Manna, Animesh wrote:
>
>> -----Original Message-----
>> From: Dibin Moolakadan Subrahmanian
>> <dibin.moolakadan.subrahmanian@intel.com>
>> Sent: Thursday, May 21, 2026 1:49 PM
>> To: Manna, Animesh <animesh.manna@intel.com>; intel-
>> gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Cc: Shankar, Uma <uma.shankar@intel.com>; ville.syrjala@linux.intel.com;
>> Nikula, Jani <jani.nikula@intel.com>
>> Subject: Re: [PATCH v6 01/16] drm/i915/cmtg: Add intel_cmtg_is_allowed()
>> for CMTG
>>
>>
>> On 13-05-2026 22:08, Animesh Manna wrote:
>>> CMTG will be enabled only with DC3co, so add a separate function
>>> intel_cmtg_is_allowed() to check the prerequisites for enabling CMTG.
>>> DC3co will be enabled in a separate patch.
>>>
>>> v2:
>>> - Remove separate flag for DC3co from crtc_state. [Uma, Dibin]
>>>
>>> v3:
>>> - Do not access power domain members directly. [Jani]
>>>
>>> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/display/intel_cmtg.c | 15 ++++++++++++++-
>>>    drivers/gpu/drm/i915/display/intel_cmtg.h |  4 ++++
>>>    2 files changed, 18 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c
>>> b/drivers/gpu/drm/i915/display/intel_cmtg.c
>>> index e1fdc6fe9762..dc039bea452c 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
>>> @@ -4,7 +4,6 @@
>>>     */
>>>
>>>    #include <linux/string_choices.h>
>>> -#include <linux/types.h>
>>>
>>>    #include <drm/drm_device.h>
>>>    #include <drm/drm_print.h>
>>> @@ -16,6 +15,7 @@
>>>    #include "intel_display_device.h"
>>>    #include "intel_display_power.h"
>>>    #include "intel_display_regs.h"
>>> +#include "intel_display_types.h"
>>>
>>>    /**
>>>     * DOC: Common Primary Timing Generator (CMTG) @@ -185,3 +185,16
>> @@
>>> void intel_cmtg_sanitize(struct intel_display *display)
>>>
>>>    	intel_cmtg_disable(display, &cmtg_config);
>>>    }
>>> +
>>> +bool intel_cmtg_is_allowed(const struct intel_crtc_state *crtc_state)
>>> +{
>>> +	struct intel_display *display = to_intel_display(crtc_state);
>>> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>>> +
>>> +	if ((cpu_transcoder == TRANSCODER_A || cpu_transcoder ==
>> TRANSCODER_B) &&
>>> +	    DISPLAY_VER(display) == 35 && intel_crtc_has_type(crtc_state,
>> INTEL_OUTPUT_EDP) &&
>>> +	    intel_display_power_get_current_dc_state(display) ==
>>> +DC_STATE_EN_DC3CO)
>> I would enable CMTG before setting the DC3CO state, since CMTG running is
>> a must condition for DC3CO.
>> Doing it the current way creates a cyclic dependency.
> Copy -pasting from bspec:
> CMTG must be enabled with dynamic DC states.​​​
>
> Dynamic DC state refers to Dc3co/Dc6v.
> So added a check for dc-state which will be used inside cmtg functions. Do not want to allow touching CMTG register if target_dc_state is not DC3co.
>
> Again copy-pasting from bspec:
> CMTG state needs to be saved and restored during power state transitions.
>
> Which means CMTG will lose its value with DC5/DC6. So want to be little cautious while handling CMTG.

I can see DC6 restore is already handled in patch 15.

target_dc_state is a software state doesn't guarantee any actual DC state register write.

I think its better to leave the target dc state decision to DC3CO implementation
rather than using  it as flag variable for CMTG enable check.

>
> We should finalize what will be the target_dc_state based use case like PSR2/LOBF/PR-ALPM and single EDP configuration.
> This is the only flag and based on that CMTG and DC3co will be enabled. So, no cyclic dependency. Good to know if I am missing anything.
>
> Regards,
> Animesh
>
>>> +		return true;
>>> +
>>> +	return false;
>>> +}
>>> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h
>>> b/drivers/gpu/drm/i915/display/intel_cmtg.h
>>> index ba62199adaa2..ed540581738f 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_cmtg.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
>>> @@ -6,8 +6,12 @@
>>>    #ifndef __INTEL_CMTG_H__
>>>    #define __INTEL_CMTG_H__
>>>
>>> +#include <linux/types.h>
>>> +
>>>    struct intel_display;
>>> +struct intel_crtc_state;
>>>
>>>    void intel_cmtg_sanitize(struct intel_display *display);
>>> +bool intel_cmtg_is_allowed(const struct intel_crtc_state
>>> +*crtc_state);
>>>
>>>    #endif /* __INTEL_CMTG_H__ */
