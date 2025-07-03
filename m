Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A66FAF762A
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jul 2025 15:52:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3EB510E853;
	Thu,  3 Jul 2025 13:52:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SG+S7c7b";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E47010E854;
 Thu,  3 Jul 2025 13:52:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751550725; x=1783086725;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=v5pWR1WeqBIyUGyPerIX8FCTxdDYa/REh7jr6pCn/hE=;
 b=SG+S7c7bwKEoIhYglXMliG1+49UZVqiVkqSsSpGHEvwejXW1Q/vNlKZX
 LR0Be9uo8u9ntgo/3s+VCnCHsWGgeWw37p1FaLVz04KFunyYCDQtBMfCM
 Q1r33Ubewyo5ZKziZE7EHXKpWFOXLRuTtUC9C7RbuUeU4hfk5Xr8b/W+k
 AKn57ykIjTXwuiEP7EmCKFfy9SgsZl9qC9GAYPmu/DTYqpLU1pC1hpDtg
 3UdH2AzGJ+1apNegT08aaXaOd5a58Zl45Tg++C1FSTiruGhgeLaNKzsZb
 bFreRJWzWxARPeCbtZ0mDSFvfYHtmIOFqtLTFGFEi+Er8Tjs6PNbfb4Rw w==;
X-CSE-ConnectionGUID: u5FjzUMSSyin9Zv8TB7LAQ==
X-CSE-MsgGUID: lcPJIydnSnCwcQfbcyPUuw==
X-IronPort-AV: E=McAfee;i="6800,10657,11483"; a="71315932"
X-IronPort-AV: E=Sophos;i="6.16,284,1744095600"; d="scan'208";a="71315932"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2025 06:52:04 -0700
X-CSE-ConnectionGUID: Uk5vK5b6Q761kDf50t8OuQ==
X-CSE-MsgGUID: G8bJTIEYTxOvJvclq6qaRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,284,1744095600"; d="scan'208";a="154453486"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2025 06:52:03 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 3 Jul 2025 06:52:03 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 3 Jul 2025 06:52:03 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (40.107.101.78)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 3 Jul 2025 06:52:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Gdx+QOrsMm/W3YjwKCxi/NTi7XITrCTT3UeCr6I2Z4CZP+A1j8qz8TfePD9qCaDiIPgJ1P9ObILg4WdVdRBKtk6FJnzCQWDXDi0zJvIRCoA2BMunG7AAza957GdJTXmoVBOk32MW5VYeuWzs5Yaf9+9vRIbzNJl+oTUPy3YDtbeqL+pKFl04HyAmshDBFJOWkraILOKKE/sReCTfFWIcMmfYjYFrXKuTLLAFs/y3dsTyIKdcYPiV9Uw31IMx5I4wEMSc6SjVk9CkJLdY8cMkS0GLFWtqp80nVdicdmL6yipelajX/fn5rNy3cE3EAmz9tY1LB0TBIvBBuHLKhlF6Zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fFaUNqdm89+bSm2Uo2ZFth/cyaxIQ8RwJuQQhOZHocE=;
 b=BeC9b90u7tbSM/A+trk6e01RsJnrRAKwZSk74LbZISZNRud5s6H9E/N5PXHV0kADcNwx1SPRju8JXGf3TjqMTAQxoN8gFDFTIh34CaGzeMjIJ/droolImgAxJZoMZpxkqVEMj3kc0XgSVSkBVMkEmhmrfAX/1f2JVOSZac/BS685GY1NJ3Rbt4p70i/f9w4wvdzHYao2DVrAOGPc5onRX5OMhUlBpmInkI8DqQc5DijjcKS/YuXpG+Y87eLljfGzQaxRMtfJyH/q3g3JIlYGoJeNnBe0eiLeexWoqtyf6p7eo3+cl7qIRygEXseGSTA+Im0d5rPv+V24FBrih8KZww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by PH7PR11MB7717.namprd11.prod.outlook.com (2603:10b6:510:2b8::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.20; Thu, 3 Jul
 2025 13:51:47 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%5]) with mapi id 15.20.8857.022; Thu, 3 Jul 2025
 13:51:47 +0000
Date: Thu, 3 Jul 2025 08:51:44 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
CC: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <gustavo.sousa@intel.com>, Jani Nikula
 <jani.nikula@intel.com>
Subject: Re: [PATCH 1/2] drm/i915/display_wa: Add helpers to check wa
Message-ID: <7klmz7jb47kienh42cfqubm3fgdnxbncb2gyv3q63xr6vo3ilh@yc4nk4agwi6m>
References: <20250702084620.3837426-1-ankit.k.nautiyal@intel.com>
 <20250702084620.3837426-2-ankit.k.nautiyal@intel.com>
 <aGWLMinfzWd9IkFJ@intel.com>
 <fsyfxqbrzc5zogoyqew6xs7frdosjeewl4wj43yrduaetzdtlf@wm5utoxy2xeh>
 <aGWkwQZB_hSsjgQ4@intel.com> <aGWpag7dGRUAVZfU@intel.com>
 <366899c2-e67d-48bb-8069-af77d78cdb0b@intel.com>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <366899c2-e67d-48bb-8069-af77d78cdb0b@intel.com>
X-ClientProxiedBy: BYAPR05CA0050.namprd05.prod.outlook.com
 (2603:10b6:a03:74::27) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|PH7PR11MB7717:EE_
X-MS-Office365-Filtering-Correlation-Id: dee62f35-181d-4f1d-1b8b-08ddba38c0d2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?smKtyUpiVysCZo9KLxAwrKaYZ+YeXKTa5qHywIR1+sQPJLcQw00EKiYjUg?=
 =?iso-8859-1?Q?HGG5F5QuJ6+uptHGeUs1zAx8PWxua0oHriDLqRrbenIYfat/84h7H9T0Nz?=
 =?iso-8859-1?Q?9V1zhq0xi2hB1eXo9wDOhR+ryWn1+2qpW673ucfOMsXD9z2Cbvvwxofjq0?=
 =?iso-8859-1?Q?I+z6GBbor+Wk2rp7AQeMn5s3496GYzf2qRBmQ9Gi0CBVJRamVOEC+UeoOu?=
 =?iso-8859-1?Q?4oBV/w4nGLvircROkiv368vaEGXpv7eeg3vi8XOykvpAjaU6SJdBJtPcl/?=
 =?iso-8859-1?Q?QzGKBXtcNxer6jyCuEZcbyH6/8P0E2Fs1ICzYAVZyt2M+uk3n3Iwv5//VX?=
 =?iso-8859-1?Q?NJX9epoXL6fGGZ+zan/y/SIxqykxWrUmF8w6rNVffYMZicS/AG2e1c8SF9?=
 =?iso-8859-1?Q?VskFPad/gyxc7iKThVRf+9XDyOpfG2Xxj7UoVjU2pfWfsG9vaJCu1+MBDV?=
 =?iso-8859-1?Q?A5920KcOY+lymTWA3D5lq6tTHiDFPhz1aunyLjmV5CxS4Xzji50mHd+guQ?=
 =?iso-8859-1?Q?n0Il98aZkFS6rsu3MO07Qd5cSxYMpnGnTsP2i9kDy8qONT0g9yPvGGdMmQ?=
 =?iso-8859-1?Q?IW0wJ3l9UaC2GTBb7EyQy4/hcFBhU194QT1PHeH+RHjoPRqcuesAMGlSky?=
 =?iso-8859-1?Q?FP+6BshsWDRahUxTWLWJJIHYzGAm0GOe1XFY7XT8sXVylnJgTerL2HCD74?=
 =?iso-8859-1?Q?Ba/BvAbXfbSx33HUABd8cNwsxyfO9soheLTwKwaaqhXXajOEgVYBRkvBv1?=
 =?iso-8859-1?Q?b16x5juFhC1K47k1PLYP+Stm6e8WEjL3+4XF9u1Rn/1cCw/vuu3lR20MQe?=
 =?iso-8859-1?Q?g3j+kD45VwYCUb66jmIYge4Gr1A1RJCdrwjoSKyENhQuYvIPBg9jk4NWU2?=
 =?iso-8859-1?Q?RS4Qi2kU6rLY/MNnR95bVDUCr1p24ZgtDi5BJc6pSRWFJ9Qy2GmMaaRG/6?=
 =?iso-8859-1?Q?ajlARKlqUznLTBqukKb5j4Xq59TmuLUz+3yUVjiIq5O+JoXSOFvL/TsdpG?=
 =?iso-8859-1?Q?WaTwdnr9C2N67brhqbRBHPY4s9uOLPf9gFMZsePxRfjIwcMou09puEhW3X?=
 =?iso-8859-1?Q?IPAWPqW1LH9Y8+bXd42LZlQUpteozBTMPVNWqSvJ0a0qtkJxXvIArZzpkI?=
 =?iso-8859-1?Q?eRJ8O5vTeELytX9X04CjvZDp1eKaBIzrsms6lC/Rlq1ajyFqid/HnY+oTx?=
 =?iso-8859-1?Q?6Aty1kO/BiBXHXNWlBWfTPpDI2gDkY/wnqsWmn0KFaExxRpuHbmTzMg9UO?=
 =?iso-8859-1?Q?Ng0sscJMryle9A/sar2ncDCpHED1jFlRcSW0DnE7/Mv3JgwCRsXyMRjliH?=
 =?iso-8859-1?Q?PahqoZskBRCvJDZ3Z/2Mdc2RByOLqrCVwtltifxdIwEYvrgb0Hnt9YdXuz?=
 =?iso-8859-1?Q?bgO/AtlUwqb25O2FyB+KGqvrgjiOZYf7S9KUWsrHEllvSrkYKt6SeuB7Pj?=
 =?iso-8859-1?Q?+fK8dOa53xxtiUFjZJvCLunb2ePEqiCQDTEHcr4HcnJudMxj8zM9yCQJb0?=
 =?iso-8859-1?Q?I=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?Zhcab1S/GPmpyhTp/8WnoUnRB5YE0AAtMHHwXZz4UTopE6gVelP/sUp0iW?=
 =?iso-8859-1?Q?74SyBHTjKwYdh9ZbTUjEmeYJCy28JZDLUkpmSi1SI3kRTCgfStM5/s1J5m?=
 =?iso-8859-1?Q?bIZAEHBvPneIv9uDE188xolBH6DAuMilpMwtADKJ+6JnilFJYFQaGoN2Y4?=
 =?iso-8859-1?Q?IcSiFhdsDWjJfIraJEEb4Jb+S9Db7bZK8hBX0+qI7aS7lqbBdAMAyDoLWS?=
 =?iso-8859-1?Q?pdr6gzUdoTvx1VOeGvmSGOu48OuRxLdLbCJcMSvk429/ZmRrSyRm43hwYW?=
 =?iso-8859-1?Q?g5xowFY3PZ81Ph9vd8m6h/SVyEMr9NqrRzDJLglPFV4T6DEi7r/VC72IG4?=
 =?iso-8859-1?Q?AAqE+3NZRnln744NDFb9o/JmV1f9Hm1EW9DR3EW+k9NX4JG3cicKLQaE2C?=
 =?iso-8859-1?Q?PIcVcEL19fzk8XJm86q6oNJAKp8o1a7Goue2XjXPHD/8qI3mx38fXLW4nl?=
 =?iso-8859-1?Q?IE3fjeaCxf0FtF356EvtbG7Zd7a790Get9BEEgxZPdhHLlbcmeOi4QSqFd?=
 =?iso-8859-1?Q?h9CvwO35u02kz0dpYtZS2aFt+OofIZlX+HhwczrxR04rKuW8H8bdIotnR+?=
 =?iso-8859-1?Q?c1TOS0liyneIZ2R9vd8ZOuyuS0uB80nbNmH6UwJGgSVE9W0/yG5EsuOu5v?=
 =?iso-8859-1?Q?sYCkOWOY4JymDBw5sAP4+bMZ3mKHduOBR9zeYs2A2UcWW/T/Uh98i6k7td?=
 =?iso-8859-1?Q?4t0K/XXWEuajJZ5ErCKQSCkZ/CZq5teHKEFzT4aA+so3c8Cy+4nYqF3t5c?=
 =?iso-8859-1?Q?wIl7lIyVnKrSxFL0UfW4dkNmt9vQdTI6HKVnpUvLXrXB1OAqZ/FVphRMoG?=
 =?iso-8859-1?Q?4o7zv5oNOdhU4dppuj/tsTZuQKGaE73Il0CTFO4Xp62CJZwVVyXhKJzTsQ?=
 =?iso-8859-1?Q?4zlIJ2AB8b+DnWHbBCjcdxDF2TecwvrmpQUIKZCzdQSb4nyAaTEw97Rxl2?=
 =?iso-8859-1?Q?eGT4x50Oslld0OqpDFL/hjtsqJlkqO6jnYefHF49QVV4ZB9DvuIueBCEGE?=
 =?iso-8859-1?Q?UWPmN4ntGcC/O3B0hi3/6QQ7u6wT6UHpHBU4iAbFk7jcgBcc1q7k9qnc/x?=
 =?iso-8859-1?Q?9JyeXzwA2QpJ7u4ih4V8IxAA5MPYtPiYjbZaZ2Let6XiMi1ExwGNwjZOni?=
 =?iso-8859-1?Q?43QtLwgaCw9mQCirFyQw19d8XfSL/zIHkxTY9jEtaKPECWhm9yO44dbehP?=
 =?iso-8859-1?Q?3wVd7XfLWgoZLp2EmH4cBnHwZvPAxEJHNyOjGGyZDmhh5GQA/fYiHbGzqe?=
 =?iso-8859-1?Q?yE5xQNwNIuXhzMMA/GQJh07MjQWnt3mEQhnFvm0pZoUvDqLGjoaKgOGzMQ?=
 =?iso-8859-1?Q?HWU5qo1+Y4XiUf0jxr8EnH6oTYgdtXD17Wvdo5Ar2U7iQJp1QLiDxFstL3?=
 =?iso-8859-1?Q?UNl6rwt/i1J5By3rR5Hvfs0Ac9lgcDX/onMTajQAvpg4e47C3R59U0zc7Q?=
 =?iso-8859-1?Q?ShKoCI3uVOwEBjTdtk0BLxBL5W881iLtBl9yAARkTYRdkyb1pYGnk8qhWD?=
 =?iso-8859-1?Q?DGVmMGnS5d8lcP8/b2jCDoAfg993tj3TpqgLgGKayRXcJo9l14fv/tr067?=
 =?iso-8859-1?Q?TwhrpUEx0mfdjBQfHAXk9grJwPul2hORQMYEK0X/HjnY9KAQc7JgY5h0Pu?=
 =?iso-8859-1?Q?sctH/48pkdcxsVvcuP2+bUszmYc9CbvIPJntsBG/+uQxIk2aO1tMBOrw?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dee62f35-181d-4f1d-1b8b-08ddba38c0d2
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jul 2025 13:51:47.4427 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bitnYhOCrVOofF6lASvrDY0AvVjibvEipGESjkJgNEjkD1ef2ZVdrcxhv624do2LBfFIP8T3BqOLEgh7i7sD2stQNMBhwjrds+uRn8b3WkE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7717
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

On Thu, Jul 03, 2025 at 03:00:19PM +0530, Nautiyal, Ankit K wrote:
>
>On 7/3/2025 3:19 AM, Ville Syrjälä wrote:
>>On Thu, Jul 03, 2025 at 12:29:37AM +0300, Ville Syrjälä wrote:
>>>On Wed, Jul 02, 2025 at 03:25:21PM -0500, Lucas De Marchi wrote:
>>>>On Wed, Jul 02, 2025 at 10:40:34PM +0300, Ville Syrjälä wrote:
>>>>>On Wed, Jul 02, 2025 at 02:16:18PM +0530, Ankit Nautiyal wrote:
>>>>>>Introduce a generic helper to check display workarounds using an enum.
>>>>>>
>>>>>>Convert Wa_16023588340 to use the new interface, simplifying WA checks
>>>>>>and making future additions easier.
>>>>>>
>>>>>>v2: Use drm_WARN instead of MISSING_CASE and simplify intel_display_wa
>>>>>>macro. (Jani)
>>>>>>
>>>>>>Suggested-by: Jani Nikula <jani.nikula@intel.com>
>>>>>>Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>>>>---
>>>>>>  drivers/gpu/drm/i915/display/intel_display_wa.c | 15 +++++++++++++++
>>>>>>  drivers/gpu/drm/i915/display/intel_display_wa.h |  9 +++++++++
>>>>>>  drivers/gpu/drm/i915/display/intel_fbc.c        |  2 +-
>>>>>>  3 files changed, 25 insertions(+), 1 deletion(-)
>>>>>>
>>>>>>diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
>>>>>>index f57280e9d041..f5e8d58d9a68 100644
>>>>>>--- a/drivers/gpu/drm/i915/display/intel_display_wa.c
>>>>>>+++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
>>>>>>@@ -3,6 +3,8 @@
>>>>>>   * Copyright © 2023 Intel Corporation
>>>>>>   */
>>>>>>
>>>>>>+#include "drm/drm_print.h"
>>>>>>+
>>>>>>  #include "i915_reg.h"
>>>>>>  #include "intel_de.h"
>>>>>>  #include "intel_display_core.h"
>>>>>>@@ -39,3 +41,16 @@ void intel_display_wa_apply(struct intel_display *display)
>>>>>>  	else if (DISPLAY_VER(display) == 11)
>>>>>>  		gen11_display_wa_apply(display);
>>>>>>  }
>>>>>>+
>>>>>>+bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa)
>>>>>>+{
>>>>>>+	switch (wa) {
>>>>>>+	case INTEL_DISPLAY_WA_16023588340:
>>>>>>+		return intel_display_needs_wa_16023588340(display);
>>>>>>+	default:
>>>>>>+		drm_WARN(display->drm, 1, "Missing Wa number: %d\n", wa);
>>>>>>+		break;
>>>>>>+	}
>>>>>>+
>>>>>>+	return false;
>>>>>>+}
>>>>>>diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
>>>>>>index babd9d16603d..146ee70d66f7 100644
>>>>>>--- a/drivers/gpu/drm/i915/display/intel_display_wa.h
>>>>>>+++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
>>>>>>@@ -21,4 +21,13 @@ static inline bool intel_display_needs_wa_16023588340(struct intel_display *disp
>>>>>>  bool intel_display_needs_wa_16023588340(struct intel_display *display);
>>>>>>  #endif
>>>>>>
>>>>>>+enum intel_display_wa {
>>>>>>+	INTEL_DISPLAY_WA_16023588340,
>>>>>How is anyone supposed to keep track of these random numbers
>>>>>and what they mean?
>>>>they mean there's a h/w workaround that requires that and this is the id
>>>>if you need to find more details about it or what platforms/IPs use
>>>>that.
>>>I don't want to go look up all the details in the common case.
>>>I just want to read the code and see that it generally makes
>>>sense without having to trawl through the spec/hsd for an
>>>hour every time.
>>>
>>>>>The only time I want to see these numbers is if I really have to
>>>>>open the spec/hsd for it to double check some details. Othwerwise
>>>>>it just seems like pointless noise that makes it harder to follow
>>>>>the code/figure out what the heck is going on.
>>>>what is the alternative? The current status quo checking by platform
>>>>and/or IP version, dissociated from the WA numbers?
>>>I find it easiest if everything is in one place. I think every
>>>w/a generally should have these:
>>>- which hardware is affected
>>>- what other runtime conditions are required to hit the issue
>>>- what is being done to avoid the issue
>>>- a short human readable explanation of the issue
>>>- the w/a number for looking up futher details
>>>
>>>Splitting it all up into random bits and pieces just means more
>>>jumping around all the time, which I find annoying at best.
>>I suppose one could argue for a more formal thing for these three:
>>- which hardware is affected
>>- a short human readable explanation of the issue
>>- the w/a number for looking up futher details
>
>Whether adding comments with platform and relevant information about 
>Wa would be sufficient?
>
>Something like:
>
>/*
> * Wa_16025573575: PTL/WCL

See the nightmare the intel_workarounds.c became. The comments also
don't match what the code is doing which means it's not only noise, it's
wrong information over time.

> * Fix issue with bitbashing on PTL.
> * Set masks bits in GPIO CTL and preserve it during bitbashing sequence.

This description not always can be there. So out of the 3 pieces of
information we already have 2.

> */
>static bool intel_display_needs_wa_16025573575(struct intel_display 
>*display)
>{
>        return DISPLAY_VER(display) == 30;
>}
>
>Or we want to have some wa_struct with fields for platforms and stuff?

on the xe side we check it once during init and set a bitmap to be used
later. This also allows us to check "what W/A is enabled" from outside
and double check the list of the workarounds for a platform.

Lucas De Marchi

>
>
>Regards,
>
>Ankit
>
>>
>>Might be still a real pain to deal with that due to having to jump
>>around, but at least it could be used to force people to document
>>each w/a a bit better.
>>
>>Basically anything that avoids having to wait for the spec/hsd to
>>load is a good thing in my book.
>>
>>There's also the question of what to do with duplicates, as in often
>>it seems the same issue is present on multiple platforms under different
>>w/a numbers.
>>
