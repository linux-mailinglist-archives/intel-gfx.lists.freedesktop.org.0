Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AEF8AEA86C
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jun 2025 22:51:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FE1310E2F4;
	Thu, 26 Jun 2025 20:51:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AovGIeVG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B4A810E156;
 Thu, 26 Jun 2025 20:51:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750971081; x=1782507081;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=9HpSrj/qyzJuf3UJCvuHWLFa0LtuXlQFhyghBF2MHH0=;
 b=AovGIeVGpsseplkzOXSVIK6qelWk6PpU7lXGoR5A1B1roIjV2Fmqgt1m
 xmTag2I1z0smsclCPF33yiGJ3WymTuprabfjA5Sr1oblRr6IE0mBcVOIP
 dBH+LYqQSgU0/KtFeqip2Y6MB7T7XIQ365wJq9l0IEIYto3GsdYZf6dMG
 0boAmo1b61geiK5Yl4toAPzbZShww9CCNlrfs+fbdpTOV1Mk2Yw2sc4aa
 f3Mdd0O5HjnZir2yLvgufVV78wRsPPQNTDwOoYjPbrxuXMo7osQX4or5Q
 lJqDW++nqprXxAW1M7e+/kONJseJ3Q4K/7r1zjikOtVhrjOTx3ztPA2fS Q==;
X-CSE-ConnectionGUID: bTswUaW8R++ICIqOwvq6Sg==
X-CSE-MsgGUID: 8pMT7kGaReGXqUYqc1d+Yw==
X-IronPort-AV: E=McAfee;i="6800,10657,11476"; a="56959897"
X-IronPort-AV: E=Sophos;i="6.16,268,1744095600"; d="scan'208";a="56959897"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 13:51:21 -0700
X-CSE-ConnectionGUID: 70Tkzn7wSSeLS0zD42dNKQ==
X-CSE-MsgGUID: vXL+fk0SRiWb88nzcAXiHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,268,1744095600"; d="scan'208";a="176300195"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 13:51:17 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 26 Jun 2025 13:51:06 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 26 Jun 2025 13:51:06 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.40)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 26 Jun 2025 13:51:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FqJyxIeHDM0dygD2doRKWZALBbqSLUpcoTJIUqF9K/ckoAYJfD2R5N21/yX2J1v/uZNbwCus4tom8w2iHixPGZjQFjUh7CFnYmUrv3fElscpqcqDcRqZwSAGVYfW/NNCigVGxKfSGpYpmwz3rUBsEo3EKGRinppzuUXPyrFmRQKUkFhTU5Chrz8KHvvhk49hTYwI+eq4L7rROW14sfORQ2zPcHWWej2LaqKS1TYYTLFJrgsE/tjm3opvYllOXzK2adoHmsFypB786F0dlEbNe+382ZktbIMpShTSf/oUAJYiIR25BSThtJQ0nV22ioPQNgJq//IREHkM5CXjZgeNIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4axuJKd4b7dhb6jnRLPEyQDO1g7AC7D5ICdwwf6fx0E=;
 b=fH97Pusfls0egoZ8i2HsPJ5kUaLGIDvXzykvd6z5H4Or4F1QwZJgzlfTvq7x2zNxdciHnHAFRZaL6QtJcHQE2WGMCbgtX/o1xoXr/ThQ6BqpUK0S5r4r3YLIXdUC7N1TcZ2jgvhtx+wc6kZKewU+cwcEsFIMUkLYCf8X/fpYVgGQYSSK1NYkx0Fc68QIdYUKqjiG/wlHmHmXgRu4DtiK32Lsg9eVadcV/5vQF5qSsGxsaAVJkfbVXii0FhwqoMFEWaclbk8qushp+WJILiLI0iC3ln+MUVE+29w3qiIOiWcjtB8io57cVgYo/kg4n/Vi8tLPhLZ8WDYgbXxTSionyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SN7PR11MB7993.namprd11.prod.outlook.com (2603:10b6:806:2e5::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.28; Thu, 26 Jun
 2025 20:51:03 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%5]) with mapi id 15.20.8857.022; Thu, 26 Jun 2025
 20:51:03 +0000
Date: Thu, 26 Jun 2025 15:51:00 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Harry Austen <hpausten@protonmail.com>
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <linux-kernel@vger.kernel.org>, Thomas =?utf-8?Q?Hellstr=C3=B6m?=
 <thomas.hellstrom@linux.intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>, Jani Nikula <jani.nikula@intel.com>
Subject: Re: [PATCH v4] drm/xe: Allow building as kernel built-in
Message-ID: <3bdcc44jjxfnkamalaxrsm7z75zq6u7y6co3urafqj6brmmnxl@xbs56z6zmc37>
References: <20250516104210.17969-1-hpausten@protonmail.com>
 <32da3736-9ac1-4524-94e6-28a81f23bf31@linux.intel.com>
 <DA1P8NCLUFU8.N64BOSMN6G9J@protonmail.com>
 <s43s6p2p6frhqg64r42s5owhyiczkfrsgmt5fecosmout73x5m@aq22nie755nt>
 <DA24WEEONQS4.2KGRJLM9YNTG3@protonmail.com>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DA24WEEONQS4.2KGRJLM9YNTG3@protonmail.com>
X-ClientProxiedBy: SJ0PR03CA0364.namprd03.prod.outlook.com
 (2603:10b6:a03:3a1::9) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SN7PR11MB7993:EE_
X-MS-Office365-Filtering-Correlation-Id: 907f14ef-edba-486f-6c4a-08ddb4f32a39
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?g5L50K9RvU3Lh4uvJ2AZ+W2YdvubHppgbEbFpgEQbBPk5kIxYsiA297lvO?=
 =?iso-8859-1?Q?fWP2VBmqoyGz2yn33leZvszfWVcWuCRZSnQyIc1Z1xEgsOdtosguhCCIzo?=
 =?iso-8859-1?Q?i4uTOvgtrJ4xOsY+2gwhADeFo4uppDtWEV+eXAomCQRWht4apPXLpt28IP?=
 =?iso-8859-1?Q?q/1V5OWe6pIgvg9aC0Uad8F+mKvAOSODzz2jHK/k42gaoecxBM9YTmVJh3?=
 =?iso-8859-1?Q?XhC60LxJ2YbHhcYVaKlgBzeMxnefjqgyCuInqPTlsYdwmoOn+LaorK0G8z?=
 =?iso-8859-1?Q?wUbI8cGkRctiz9BQ1pbhf871959ivumnrJkyObG1cvYittrZq7MfpnSV2Y?=
 =?iso-8859-1?Q?XsOVa5G/jlt42EXXVZ20AXAHPpFKF9KCEzlvsWQsezNJmPO/hg9b5x4uTy?=
 =?iso-8859-1?Q?YE1Fw2yF/4R3voc5Uv4eE+qyJGcahMR1KhjSdaBwI5ieJvvl6nCQbwwWcc?=
 =?iso-8859-1?Q?qXIU/txPrZOnyq8RH+C+RMNEhy0HwgyJVKxNHBfuGZeVCUOZj3ZMG0S5XH?=
 =?iso-8859-1?Q?hCGnpLcwPPfJxrLfoan208BmARK1MAVfGihRlgkCfJiPNVUpWWp3WD86o/?=
 =?iso-8859-1?Q?wOvAxLN169SXlIcTD1KxP1MZRSqdWUpUw/IkwSBWlRQslytOzYx01uDByF?=
 =?iso-8859-1?Q?0dp84m2L4Jt0lJir8bQK0TC4dQX9ZrJIY2C1g8SmBjiNAVxxYQhBemP3xL?=
 =?iso-8859-1?Q?/vpEfx8F6rijdxzN6Fu3tbKkwS6Xjh//F7Miabvf4G2C0lTbLc1chcyCa0?=
 =?iso-8859-1?Q?kcTam3aI7kLGafvEaJPz5kob2D4kNtpu8gjwQlA8kNh50HEBrmyjpRZP6K?=
 =?iso-8859-1?Q?T0OwwjGNtZ96q83IVJ3shVXT6LgZfCNMvPSuy5W/IUchJuaQqL8Dp1mMyN?=
 =?iso-8859-1?Q?LGYBLx/BpZDRq9twhsj6uPks04E4rLX3As2sTXzGB6oH/8uEbByXf9BSzM?=
 =?iso-8859-1?Q?w5Zz5snXJ8O6WqDfMABv4JyH2rK6Bp2pX7s6SJHd7kGmsmEzk47RMH/++2?=
 =?iso-8859-1?Q?uy5f13RP6J2sqdV1/rOvCD3HcG7sl5QXCcE5Nr474HrPvJ/8XVVCJ3/Wy3?=
 =?iso-8859-1?Q?Cz/xG53J05qRQMbeUzX2UM4j/AxzJbOfRwbyzUmmPTD/ukKytXoFTFg5aN?=
 =?iso-8859-1?Q?kKyXbOqmkumHjoc0Xr2eFzk2f5joAoQCK1FdYtOWMGHtlnzHixoEfhSXsa?=
 =?iso-8859-1?Q?hU7+ERFIXUvZYDSsfdoRVcU257uATMNdmFtBtIj1kZGq48s24KTEqXFsLC?=
 =?iso-8859-1?Q?1S3omhSbB6wRobPP+Ma3KC6/zJi8w/7jTcTSSTuVo3yXpxx/IbdsxGU8K1?=
 =?iso-8859-1?Q?FJfgFi+vPghDxXVy5mbI8qCwy/7mXyXo1cuMwznOBbFyUrISIZOxyGDV3K?=
 =?iso-8859-1?Q?Av0axzly6IXJ/0WKbqXcpFsbfcnBJpiru4N6Spz+aiLOxjfbns0Cx1zrTe?=
 =?iso-8859-1?Q?WCo4Fmuhc5juTtj0CRwp04t4yYiVFgXj4AVxU2vUmVxA8FDMklrs4esFnR?=
 =?iso-8859-1?Q?c=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?UImSadfOTWzuxWz2UXRza2wZ41QstIJ0WG/Tbd2ypJ92cXZt81xvyA0LCf?=
 =?iso-8859-1?Q?bDHKXLBSvQXvSMzrWefIh3gB6bZ2uKEjElrhouONSci2QWX4SUc5hY+KiJ?=
 =?iso-8859-1?Q?N8aaqk7tEcMdPQ5xv4pLZLv946pWnWVVQlmPlfh5sFe2BmrcRItwZHeeIu?=
 =?iso-8859-1?Q?YqjxPouRJpfuI33anNdG56Se4/j52HD3DBVwSOPvZfLgDGfvUpmLtne/j+?=
 =?iso-8859-1?Q?Vh1AIgGYya8onTHXzg5vGIRbouxtiNgnNZXPOwFfeZrpKpm3m16XhRVYHt?=
 =?iso-8859-1?Q?NYXonMCQCgFextM3JeVFQpZYQhFO/Lggk0g4jHZzUMFFYfJ1HJaXl19vwI?=
 =?iso-8859-1?Q?onX91a2MREY89eSof3cSqjUR0zGthE59DOxdoOEMWeZZdRdvSfebCAtxur?=
 =?iso-8859-1?Q?WyDbEr4gDhlSjWsMhSo1zQB4xZjomW2cQ+IoNNjZ6B7oRQ180e+yc48uVk?=
 =?iso-8859-1?Q?7R0xebd6NHe5zufc92KgsZ4iAqESFZV1O9AIYRRl3YNw29lZn+bXHP44Px?=
 =?iso-8859-1?Q?zHSAi+RnxUt/90HUSPhWib1OJJms12+gLoJ6iMjRxDjlD63CGwVi/kbRjc?=
 =?iso-8859-1?Q?fL8sWlPBN0iG2ipxgGZcAPuoHpLxXIzNVYIrEYb7/Zl8+ltYody1vHCLGd?=
 =?iso-8859-1?Q?HP9NnDHE9gfJiqD8NBW9ouVM7dBZx3xMLZ5ZiBV6V9O2nfvOU+FBP+SFSw?=
 =?iso-8859-1?Q?KPfxKUVovGQBw3ba/cUwZ6d1EEKlFg6o4GrCQMMD8Op67ditZK34xv02hL?=
 =?iso-8859-1?Q?EZ+UYJhL8mVGUHWLIWiZZ7OVsY5k+J4ijPuUL8JfauwC3OCUzT3JoU73T6?=
 =?iso-8859-1?Q?YkLzBBvBkwQWOUoFEKgxz/QDfp3ashKqnHgrzmu8ijXCAakPChwxg7v0kA?=
 =?iso-8859-1?Q?IbkMgWI3tBOB165xvNjVB8tpXb1/ZM4653k9fs6LSJpcRRim1/5cnZUMv1?=
 =?iso-8859-1?Q?VrlHVWTWEVIm0YFFu2oCitwt4ij3ywM62YNS7nhyXzQdMMTBh5x3CJU+Vg?=
 =?iso-8859-1?Q?+sTZXBcNMpvPRdTg2NdTFrDVkWAdRSO3HPTATS/jy3YU32C3GDRBuEft9s?=
 =?iso-8859-1?Q?e5DRLUgGUZDOVjSauImPkQd/MnIDn5g5yd4l8WkGsXNBBTkaEJJxBahS4Z?=
 =?iso-8859-1?Q?2wWamoSFEc6GSK99uDMB8cNsitasPsepQBzugc87JOaGqm/ZRgdyRBRP+H?=
 =?iso-8859-1?Q?CgO/aqRMeDgRIBGTKWQIoHu76xx1yywNNn/k4H7TpdYwC5yR3102fbMGT0?=
 =?iso-8859-1?Q?7VCv16YAx4LlQWwNqZo/zGIXVEJggh3EoPKyJcz06h08F+0/I4yBYG4rRb?=
 =?iso-8859-1?Q?yU3oWjgwJVS7fKDnVab5xDOn1rWlE/KhX/oSTbnOGOWUqURfhnsZlN1TFV?=
 =?iso-8859-1?Q?8SUIKGnQncD3E8GFOk7IuESdGTYm/xuvPvHpO/zG6a8hp1tr4g3vkzVDmm?=
 =?iso-8859-1?Q?1btvGvGb+Klgg2nG8xhmwO/sHLiLnZMdskwGSghUVY3rZs8ScOX2p7aBRY?=
 =?iso-8859-1?Q?h1orlTova1ScUBVbTtvVp3zn0xN6K1jqloTFnTPD8v8slQ6Mfc7STYpMr1?=
 =?iso-8859-1?Q?tA/YQz7pc3ynY01JJk+8kSUllGynBoBXGO0mPqHGLwdf677shS/h8UBWP9?=
 =?iso-8859-1?Q?gYqwlEfuQtgbUm8RLB7LX6/ZleB5yv/shMDjsTF/bkAveDulY+Fsm7Jw?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 907f14ef-edba-486f-6c4a-08ddb4f32a39
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jun 2025 20:51:03.7369 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ezuuoK8Ye+WY/kslK2wNrrTdMz2BU1U/R0pRTeXh3yZDJSRy1yJi+l1ahAC8JrY2491uP8Hsajmiqx3b1EzEXvtCqAHAkcw5lK3ojtHf1Iw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7993
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

On Wed, May 21, 2025 at 08:51:24PM +0000, Harry Austen wrote:
>On Wed May 21, 2025 at 4:11 PM BST, Lucas De Marchi wrote:
>> On Wed, May 21, 2025 at 08:35:05AM +0000, Harry Austen wrote:
>> >On Mon May 19, 2025 at 4:14 PM BST, Maarten Lankhorst wrote:
>> >> Hey,
>> >>
>> >> On 2025-05-16 12:42, Harry Austen wrote:
>> >>> Fix Kconfig symbol dependency on KUNIT, which isn't actually required
>> >>> for XE to be built-in. However, if KUNIT is enabled, it must be built-in
>> >>> too.
>> >>>
>> >>> Also, allow DRM_XE_DISPLAY to be built-in. But only as long as DRM_I915
>> >>> isn't, since that results in duplicate symbol errors.
>> >>>
>> >>> Fixes: 08987a8b6820 ("drm/xe: Fix build with KUNIT=m")
>> >>> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>> >>> Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
>> >>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> >>> Signed-off-by: Harry Austen <hpausten@protonmail.com>
>> >>> Acked-by: Jani Nikula <jani.nikula@intel.com>
>> >>> ---
>> >>> v4: Add Jani Nikula's Acked-by tag
>> >>> v3: Simplify KUNIT dependency, as suggested by Jani Nikula
>> >>> v2: Ensure DRM_XE_DISPLAY and DRM_I915 can't both be built-in
>> >>>
>> >>>  drivers/gpu/drm/xe/Kconfig | 5 +++--
>> >>>  1 file changed, 3 insertions(+), 2 deletions(-)
>> >>>
>> >>> diff --git a/drivers/gpu/drm/xe/Kconfig b/drivers/gpu/drm/xe/Kconfig
>> >>> index 9bce047901b22..214f40264fa12 100644
>> >>> --- a/drivers/gpu/drm/xe/Kconfig
>> >>> +++ b/drivers/gpu/drm/xe/Kconfig
>> >>> @@ -1,7 +1,8 @@
>> >>>  # SPDX-License-Identifier: GPL-2.0-only
>> >>>  config DRM_XE
>> >>>  	tristate "Intel Xe Graphics"
>> >>> -	depends on DRM && PCI && MMU && (m || (y && KUNIT=y))
>> >>> +	depends on DRM && PCI && MMU
>> >>> +	depends on KUNIT || KUNIT=n

this part looks good and is more related to the title of this commit.
This doesn't need to wait the display thing below.

>> >>>  	select INTERVAL_TREE
>> >>>  	# we need shmfs for the swappable backing store, and in particular
>> >>>  	# the shmem_readpage() which depends upon tmpfs
>> >>> @@ -51,7 +52,7 @@ config DRM_XE
>> >>>
>> >>>  config DRM_XE_DISPLAY
>> >>>  	bool "Enable display support"
>> >>> -	depends on DRM_XE && DRM_XE=m && HAS_IOPORT
>> >>> +	depends on DRM_XE && (DRM_XE=m || DRM_I915!=y) && HAS_IOPORT
>> >>>  	select FB_IOMEM_HELPERS if DRM_FBDEV_EMULATION
>> >>>  	select I2C
>> >>>  	select I2C_ALGOBIT
>> >> Reviewed-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>> >
>> >Thanks!
>> >
>> >>
>> >> Can we also get rid of the IOSF_MBI select? Not even xe_display depends on it, leftover from initial porting. :)
>> >
>> >As this seems unrelated, I'd be happy to submit a separate patch for this
>> >afterwards. Thanks for the suggestion.
>>
>> same comment as in the previous version of this patch. What I don't like
>> is that it doesn't prevent you to do a bad selection. Instead if you set
>> DRM_XE=y and DRM_I915=y, you lose DRM_XE_DISPLAY. Silently. This is
>> equivalent of chosing the options via make menuconfig:
>>
>> 	# initial state
>> 	./scripts/config --state CONFIG_DRM_XE --state CONFIG_DRM_XE_DISPLAY --state CONFIG_DRM_I915
>> 	m
>> 	y
>> 	m
>>
>> 	# set CONFIG_DRM_XE to built-in
>> 	./scripts/config -e CONFIG_DRM_XE && make -s olddefconfig
>> 	./scripts/config --state CONFIG_DRM_XE --state CONFIG_DRM_XE_DISPLAY --state CONFIG_DRM_I915
>> 	y
>> 	y
>> 	m
>>
>> 	# set CONFIG_DRM_I915 to built-in, we lose display with xe
>> 	$ ~/p/linux-dim/drm-xe-next/scripts/config --state CONFIG_DRM_XE --state CONFIG_DRM_XE_DISPLAY --state CONFIG_DRM_I915
>> 	y
>> 	undef
>> 	y
>>
>> I'm not sure how to prevent setting CONFIG_DRM_I915=y if
>> CONFIG_DRM_XE_DISPLAY is selected.
>
>Ah interesting, thanks for the example. I'll try a few different things and see
>if I can get more sensible behaviour.

I think a reasonable compromise (since it's a temporary thing until we
spinoff the display part) is to move the dependency up, on drm_xe.
This way we don't silently lose display.

If we try to set drm_xe to y (and drm_i915==y), kconfig will complain.
If we try to set drm_i915 to y (and drm_xe==y), we will get drm_xe==m.
Which is better than losing display.


thanks
Lucas De Marchi

>
>>
>> Lucas De Marchi
>>
>> >
>> >Harry
>> >
>
>
