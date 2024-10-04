Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 694ED9901DC
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2024 13:13:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DD7210E258;
	Fri,  4 Oct 2024 11:13:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ao3GmqlC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5749E10E1C6;
 Fri,  4 Oct 2024 11:13:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728040382; x=1759576382;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:cc:date:message-id:mime-version;
 bh=EUbygzae4Pg3vlajK9Gft7zJO3zr3TcaeBdtYp2eRmM=;
 b=ao3GmqlC9ymCY0qVAbHqPnomSg0OF/Z+b7fcK6lb1SShUy3ha+FJXk53
 rXX1etaQkGXVJBkfqqCKzaXIkAk+1bog3nq61BRqFBDKN5DtXSZHgQYcE
 AWDFORY43Haevs1dGHTR4yLxZTQ3gF7ZoNjThdX5OSn2VOcRCS+QopAm3
 NjTSe/rMooHgYbQoS6cAETL2xtgSTtjUiS2XzHhxJF9QWBv2s81U6oU1W
 lDinctolmD4CujonSJ/eLblcDT1awgkqxxAPTtgmBOJfrzckRehVNK8pv
 HGIxKKhc8P3Q5PriwMf0h0ckSrdwrTCvt/L5VPYWHvQrrQr9oO2KAbljp Q==;
X-CSE-ConnectionGUID: pmTihjqjQdyIWFJHEoGkGQ==
X-CSE-MsgGUID: Kk5vvVD/QrWCEE/oqGiNUA==
X-IronPort-AV: E=McAfee;i="6700,10204,11214"; a="31055120"
X-IronPort-AV: E=Sophos;i="6.11,177,1725346800"; d="scan'208";a="31055120"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2024 04:13:01 -0700
X-CSE-ConnectionGUID: sHBHvJHGTHij7+L095zYqg==
X-CSE-MsgGUID: pqQFs+CxTpqLf/VvryMOBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,177,1725346800"; d="scan'208";a="74926140"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Oct 2024 04:13:02 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 4 Oct 2024 04:13:01 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 4 Oct 2024 04:13:00 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 4 Oct 2024 04:13:00 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 4 Oct 2024 04:13:00 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 4 Oct 2024 04:13:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LUhWPTbM1yj2PAlQ7G5V0GM5Kwhv+jz+FhxRsluQ4EKtRrYqcCEOO7dUdF7HH+Si/IGJ16qH7+PVMxid+RLEZQImNlQ+5gasQosbblTUdYnzPNdq39AC81+057wqwIqGwUJXayn1j0aoo9JI0o5UVf4+xXi8CdD7jN3hrBQGOGIX/tENdar2Ff+NEReIyhXm9kO0rY0NF9dSShrkYsw1tKvB2ctrj6Rz94qapDtKuE5QZt62UCUuiIHqp160hUdM74l5rcP27ZN46aRmctriUtV0f0uESowNKUdMPLbIFqfZ7oESZZ+4gTnz099JVnMwMY+wW5BsmciQChvfGCCjPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Iz3MY7KfLVVx4yjDUP4xqECiKfGtuhYe6n/I38QJ5bc=;
 b=e0L7DWkT8ULsa/lDbQdN7zN/Tvx6d/2Au4fuezfx3zSVEl7tmaBkd0WmYgo3oTkpsx3PdPFk5mJQqAuDGIrravnwTKTVEqWfznaz19e2tW619t0eoOFAMXoLpmqKeNwOCMj58reF+GMCIOrILdgF21QWJS3Fci5IYWG0/oXqfnMZsnXKO4r98Ydkf0oXfw8udGWJBAK2NrNm3x8AA6k2XbpSfNDgdyYHtZqcrIj8Xkutwrko356DB/EBx5M0fGmvvuRCVcGIC5HgDWScB7NRPEx/5cY21C0xuzjz/ikwNOmxUBsiu1CrU+jZeHqgLvAr1MmCXOXpKtL8wtiYQE/svA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by CY8PR11MB6988.namprd11.prod.outlook.com (2603:10b6:930:54::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.18; Fri, 4 Oct
 2024 11:12:56 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8026.017; Fri, 4 Oct 2024
 11:12:56 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <172737888746.1108589.2342053256867257061@2413ebb6fbb6>
References: <20240923190324.83013-1-gustavo.sousa@intel.com>
 <172737888746.1108589.2342053256867257061@2413ebb6fbb6>
Subject: Re: =?utf-8?b?4pyX?= Fi.CI.BAT: failure for Miscelaneous fixes for
 display tracepoints (rev2)
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@intel.com>, Rodrigo Vivi
 <rodrigo.vivi@gmail.com>, <i915-ci-infra@lists.freedesktop.org>
Date: Fri, 4 Oct 2024 08:12:50 -0300
Message-ID: <172804037058.2413.13969013073462156051@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR04CA0274.namprd04.prod.outlook.com
 (2603:10b6:303:89::9) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|CY8PR11MB6988:EE_
X-MS-Office365-Filtering-Correlation-Id: 2bba9270-c67e-47a8-04fb-08dce4657f71
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TWF6Nkc0UVBnTmFRUXVsL0dJSnRDMjZwYkJ6S2FsdHlUb3hRa3V4UmxPL2tv?=
 =?utf-8?B?Z2JKZjdmaW12RjBUbUZJSXkwcjYzb2pRdXBzdW1HMDVtRHN4a3NSRHllWjZw?=
 =?utf-8?B?TTAyWWw5emd0Z1lvN1dzbUlrS1gzYlVuZnNQSUlodEVKdlE3c0FEaUJHSzI1?=
 =?utf-8?B?VmQ4aWkyLzYzRmMxa0l1NXpBeXQ4dDBLYXVCRGdiRDJQYzRVUDhpUXM1UmlZ?=
 =?utf-8?B?SFk5R0NXTzVpUTdnSDZLOGVqeFZlS0Rsb21tYng2WlNlWlZ4MjE5NUJJeVdi?=
 =?utf-8?B?T1hXaklCV1lML3IzM3BwNGV1bUF0SVBQbU1jL1plek0zZ2xRV2J0V1kxbTFv?=
 =?utf-8?B?YTJjT2ZKRUd4N0M2bHUyME9Mb2JyVzlvWmlnbDM0RVJCK3luK3RrQXpaZVJU?=
 =?utf-8?B?TDVPUDlSK1dhMnM2eUk5b2pBMWlFWTFwSFFReFdrbmNyQXdsK2JDNFE1SkJo?=
 =?utf-8?B?U045VVpMMkFubFdvdk9xVGNqMWpLVjBwdEQ0cDRqcmNSRnI0SGx1QWZTZjFK?=
 =?utf-8?B?bDVxWEdSemp1UUJzSzhNbk02M0kwaDJncXA1a3VLNmNGVmFQeDRMeWtjdTho?=
 =?utf-8?B?WGZaeXFFMmJ3UnQ0M3Q2U1R5RHJ4aE93MU5kRTkzdmtXMHZqeFJIak5RU0JG?=
 =?utf-8?B?c2lDVXg2MHJlT01FZjRuSmJKdUQ1TFlZMDZBVy9EMGo2Z3g4WVhobWhkQnU2?=
 =?utf-8?B?Mkk0NGJDbnI4cnVCNnRwTXpvRFRXNnRLWktGK3o2eWQ2UkhRTFhqUk9mWlFv?=
 =?utf-8?B?ZFBLUWk5a3lJOXpGTkJkdUlIUDl4V1g4Z0xEVEZ6OXVWSVVwdGlDWmxEM0tm?=
 =?utf-8?B?b0hadGVhTTRmWkowb2U4N2Q2OGRmeklxcUFHVkIrcHlHeWtYRXNrY0JWNVlE?=
 =?utf-8?B?bnJ4UUVzdWhSdllPdFJrOFQwWm1YdklHanZ2NVk1RXVaK3lPRUJmZDFNbUlQ?=
 =?utf-8?B?d0dZbUFJa1ZUdlVNZzVQN1JNZTNiZ3dDM05aM1hSQVNoYWhIY3JUTFUvWkZp?=
 =?utf-8?B?U0RBQmwrTTByMzNQQ1dJS3lva29VajVhY1BxK0g5QURsVTErOHgycTFMU0xy?=
 =?utf-8?B?ckFGNGhMdC96aXNYOEVuL0lYcFdjL2lnMFdVNVJLY01XZEFZaGJmWVE3VU1i?=
 =?utf-8?B?cmdBa2NxUlBWSGlyaVMyYkFOMDNnZnROdVVFeXA1angzTFdxbHpkZmtBQ0lj?=
 =?utf-8?B?MTFZRVBiUGwwQ3psSk16cGh0Rjh4clNUK3RjSmQzK2NRRmhUa2F3dHVqblBG?=
 =?utf-8?B?MDg2Tk1YU0M4Yi9qNjNmREJLazdMVzI4TjNzYkxYMEM4VllPMitYb05JOENW?=
 =?utf-8?B?WHpWeUE3SHd4K2ZNT0cyNnM4QmY4QkFGd2w0YjUxd3ExQmF2MENlcnMvUXhS?=
 =?utf-8?B?bmIyZytlVUJjSkNmS0xHc0pvODBkTUs1UXl2Tk9HNHpsbjk2K2dXdy9NZmsy?=
 =?utf-8?B?TXFHMWFHM3dXSGRYU0xhWXBIRmhSU3RlS1psUkpkTXBNQUtUNVJ3SjE5aTBy?=
 =?utf-8?B?d3pVcEpqMzJUYlU2Y2MxOVFDM2RPcVduaEdmYjUrYkNQb1grZGtlMXJnSm5M?=
 =?utf-8?B?N3ZFdUJxaUNkTUQvNVl6RExZdnVpL09EZlRuVmdKaWJQVmsraTA5QWdROTZ3?=
 =?utf-8?Q?SXWf3XpYBu63qdDi6/I2hTl1YLZK5TQt3jW2PjN/YnCE=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QVBMdVYva2dFM0lSMXgwejlQN1IwU05zQ1dXL2k4K0NQUHNpMEh6UkV0QjVr?=
 =?utf-8?B?cjlzOEZuWkFTeFF3eDNZanN2cmtDQWREdlAvc05TQ0JBVklpc3czMVJHQjVK?=
 =?utf-8?B?R1MweXpKdmZKeFFFaXd0ZWhsUXJYVDJtdVlsQVlFU1E5dmdjbTlRcVhDL3hK?=
 =?utf-8?B?QVZDUlhpTWtvcU8va3JMRGpvayt1Kys2MGsyRjljYW42dUN0YmtWWlZkMjNO?=
 =?utf-8?B?ZEZINnhraGFHbERvRTV6YUNyK0RmSmJWR2pCcXYxeUtKeGJjd2Q1aWhjdWJ1?=
 =?utf-8?B?VThPSzFYeDJRRDZXWVdYanVFMDFTT3UvMEhqSVlQazJKamsxWGtqM0JTNTNo?=
 =?utf-8?B?REs1dC8zUnlvZXRkcW1OdXNjbW16NTk4TGFaMG1TaWhZdEF4YTF0VllwSi9S?=
 =?utf-8?B?dFozZWJhUjc0eFVCQlJDWXRTYStkUGhzbGdBSmp3S0FkWEpKQ1d4cU9IUS84?=
 =?utf-8?B?ck9uT3dCZ3QvV1BJSXhuSHlmelJQeVN5MGRZOXZwVmJOZWNoOVhLY0tTaG5k?=
 =?utf-8?B?bVNzOHFyOVBQYXBIV0lYeFpvQlJmeGNJdE5qbFhVRU90NTMwdDVJL3FsSnUw?=
 =?utf-8?B?N0VQTnA1WE5mT1Jkbi9EQnhLci9WUHBBOHhuWmNmSmpJZktCS3EvRGNvd2Ew?=
 =?utf-8?B?Wm1BRUszdlRHb3poVmluZW0xV2ZhSE5XbjU3RENRSFBPMHFhYnYxR1UzblN5?=
 =?utf-8?B?c0NnU2ltWi9iRTRRVEw4VzkzbE9Fdmd4YmZ3VitTVk1HdEFBY2JvQUFremR0?=
 =?utf-8?B?c3NGeEk0bW90ZytjUlNQaStNcnlHa3ZkSEpJMUV6NVp4UlQrOWRPR2Zzckpr?=
 =?utf-8?B?T3JSaGpRbFR2UzBBUWVDRC90Ry9GRTdXNG56ZHd6cVBERUFrNmZnaHhXN01U?=
 =?utf-8?B?NjlFbTlQUjVyVitLUWJOM3hEbU1sQlRUUHRQZDV1OWlEdno4TGZia0FWVU5y?=
 =?utf-8?B?Z0tUMVVrUnhGa2dDUG9SaFlFc0JENkMzNVlqcFZYMHMrYVRuNUxwVGtBTDZ2?=
 =?utf-8?B?bWFDSXFKRlBqSmNsRmlqbTBDSUdTZDNrQ015ZlZFTXoxZjZBYi8xNHN4Z3FO?=
 =?utf-8?B?OGZtc2YvVlU5eDRva1VSalNEcG5aN3hIYk1zVUxJa1pMejRsRTd5TlQxRjRi?=
 =?utf-8?B?ME5oRjBjLy9qdUpZdXJNTkhLRjBRS3R6emFrK2FZYWxJaUhkVjRpaUl3Y1hX?=
 =?utf-8?B?OXRWNitQaEFpbjY2d2p0bWNxbXBKUy9xVEU0MjZ5VHkvbFRoeHZTTXkvOFZH?=
 =?utf-8?B?VUM4SUE2QXBxeEUyWWZNaUY4aFJLcXVaTVV0djUvb1A3OGNia3ZBKzVla0lh?=
 =?utf-8?B?Mzhac1RUcGp5YXFST0VvS09McUdGTFdmQ0tKN3RmUFQrMVJHM2Q4MW0xQlE4?=
 =?utf-8?B?NVRWRWtPT1NWMU1MdDdPenc2VE1rRWp1NmY0ZDhhQ1FaTnBUVTN4Qys2anhU?=
 =?utf-8?B?ZEJtTzlPNkVyNzNMdWt6aDdXdVlPZldsb09FeStqcFV2VDd0NStPbXBCbVl6?=
 =?utf-8?B?bmRpNTViNEw0K0k1Qm5uNHRiUGVkcVhPd3daN0RZaS9BWEhvc1hJbzU4ZFVQ?=
 =?utf-8?B?R2svcExFYng5L1llcm5TMUFyNm40MEFKRW1USmcxQ04yQVJvcTBpdmtjeVcy?=
 =?utf-8?B?VEVCRWVWcFdmVGFVRnZhc0c3Y3VBYTFqemZ6N3lTZEhoQzFCK2diemVUMnJj?=
 =?utf-8?B?dFE2bTRrSnZPbHVoeVF5MkpiNGcvWms3Vk9tUlZ2NGxFdkx2M0tVNjc4UVZF?=
 =?utf-8?B?T3VaUmZqWmphNVArQmxvSk4vTXZ1YmFBTGgxNkNTWXZZbHdtMU92YlpodGlP?=
 =?utf-8?B?YUpYRWp1SkpCUTQrb2dYWTdNL2tHWDdXRjlXY0wvUXI4dFhCSUZsRlVoMEJ5?=
 =?utf-8?B?MmJPUmlCY2M4aEtwVU14SDVja1NIdnZTVzRLYXpXNlZsbnAwLzY1UHM3VjhW?=
 =?utf-8?B?VXB6VjlEcUtlVnRCVFJRSEE5NWxuSzhZTk8rZW9naE9yczlXV0k4dCt6dDda?=
 =?utf-8?B?R1ZsRTFnc2FjakdlR0Z1UEphcjZWMVNvSHZCNTlCRWJudXdoODg4S3RGaXhH?=
 =?utf-8?B?U1EvbEpqTnFlSGdkOUhkd3ltblVzV3h2NUd4ZjJZOGp4bzdtZmFwYkFOUFNa?=
 =?utf-8?B?cjBweXAwZm5jdHFiRUdDSU90MDZuMFNNQlJMTFB5NU1ObEpINzQrNlFUSkVa?=
 =?utf-8?B?NFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2bba9270-c67e-47a8-04fb-08dce4657f71
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2024 11:12:56.4102 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iwhj5hpsNq1vsohM0/EA0/T4Jx8hjKgmZf4PTKDLy9Gcqkfe7yoxU1dvJeLohu5erGUNAj7sI7c9TvAkg2shLA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6988
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

Quoting Patchwork (2024-09-26 16:28:07-03:00)
>=3D=3D Series Details =3D=3D
>
>Series: Miscelaneous fixes for display tracepoints (rev2)
>URL   : https://patchwork.freedesktop.org/series/137978/
>State : failure
>
>=3D=3D Summary =3D=3D
>
>CI Bug Log - changes from CI_DRM_15449 -> Patchwork_137978v2
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
>
>Summary
>-------
>
>  **FAILURE**
>
>  Serious unknown changes coming with Patchwork_137978v2 absolutely need t=
o be
>  verified manually.
> =20
>  If you think the reported changes have nothing to do with the changes
>  introduced in Patchwork_137978v2, please notify your bug team (I915-ci-i=
nfra@lists.freedesktop.org) to allow them
>  to document this new failure mode, which will reduce false positives in =
CI.
>
>  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v=
2/index.html
>
>Participating hosts (37 -> 37)
>------------------------------
>
>  Additional (2): bat-dg2-14 bat-arls-1=20
>  Missing    (2): bat-twl-1 fi-snb-2520m=20
>
>Possible new issues
>-------------------
>
>  Here are the unknown changes that may have been introduced in Patchwork_=
137978v2:
>
>### IGT changes ###
>
>#### Possible regressions ####
>
>  * igt@i915_selftest@live:
>    - bat-mtlp-6:         [PASS][1] -> [ABORT][2] +1 other test abort
>   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15449/bat-mtlp-6/i=
gt@i915_selftest@live.html
>   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v2/bat-mt=
lp-6/igt@i915_selftest@live.html

This does not seem related to this series, which is only about
tracepoints.

Jani or Rodrigo, ack to merge this series without triggering a new CI
cycle? I don't believe CI exercises tests that enable tracepoints. Or
does it?

--
Gustavo Sousa

>
> =20
>Known issues
>------------
>
>  Here are the changes found in Patchwork_137978v2 that come from known is=
sues:
>
>### IGT changes ###
>
>#### Issues hit ####
>
>  * igt@debugfs_test@basic-hwmon:
>    - bat-arls-1:         NOTRUN -> [SKIP][3] ([i915#9318])
>   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v2/bat-ar=
ls-1/igt@debugfs_test@basic-hwmon.html
>
>  * igt@gem_lmem_swapping@random-engines:
>    - bat-arls-1:         NOTRUN -> [SKIP][4] ([i915#11671]) +3 other test=
s skip
>   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v2/bat-ar=
ls-1/igt@gem_lmem_swapping@random-engines.html
>
>  * igt@gem_mmap@basic:
>    - bat-arls-1:         NOTRUN -> [SKIP][5] ([i915#11343] / [i915#4083])
>   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v2/bat-ar=
ls-1/igt@gem_mmap@basic.html
>    - bat-dg2-14:         NOTRUN -> [SKIP][6] ([i915#4083])
>   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v2/bat-dg=
2-14/igt@gem_mmap@basic.html
>
>  * igt@gem_render_tiled_blits@basic:
>    - bat-dg2-14:         NOTRUN -> [SKIP][7] ([i915#4079]) +1 other test =
skip
>   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v2/bat-dg=
2-14/igt@gem_render_tiled_blits@basic.html
>    - bat-arls-1:         NOTRUN -> [SKIP][8] ([i915#10211] / [i915#4079])
>   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v2/bat-ar=
ls-1/igt@gem_render_tiled_blits@basic.html
>
>  * igt@gem_tiled_blits@basic:
>    - bat-arls-1:         NOTRUN -> [SKIP][9] ([i915#10196] / [i915#4077])=
 +2 other tests skip
>   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v2/bat-ar=
ls-1/igt@gem_tiled_blits@basic.html
>
>  * igt@gem_tiled_fence_blits@basic:
>    - bat-dg2-14:         NOTRUN -> [SKIP][10] ([i915#4077]) +2 other test=
s skip
>   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v2/bat-d=
g2-14/igt@gem_tiled_fence_blits@basic.html
>
>  * igt@gem_tiled_pread_basic:
>    - bat-arls-1:         NOTRUN -> [SKIP][11] ([i915#4079])
>   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v2/bat-a=
rls-1/igt@gem_tiled_pread_basic.html
>
>  * igt@i915_pm_rps@basic-api:
>    - bat-dg2-14:         NOTRUN -> [SKIP][12] ([i915#6621])
>   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v2/bat-d=
g2-14/igt@i915_pm_rps@basic-api.html
>    - bat-arls-1:         NOTRUN -> [SKIP][13] ([i915#11681])
>   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v2/bat-a=
rls-1/igt@i915_pm_rps@basic-api.html
>
>  * igt@i915_selftest@live:
>    - bat-arls-1:         NOTRUN -> [DMESG-WARN][14] ([i915#10341] / [i915=
#12133])
>   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v2/bat-a=
rls-1/igt@i915_selftest@live.html
>
>  * igt@i915_selftest@live@hangcheck:
>    - bat-arls-1:         NOTRUN -> [DMESG-WARN][15] ([i915#11349])
>   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v2/bat-a=
rls-1/igt@i915_selftest@live@hangcheck.html
>
>  * igt@kms_addfb_basic@addfb25-x-tiled-legacy:
>    - bat-arls-1:         NOTRUN -> [SKIP][16] ([i915#10200]) +8 other tes=
ts skip
>   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v2/bat-a=
rls-1/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html
>
>  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
>    - bat-arls-1:         NOTRUN -> [SKIP][17] ([i915#10200] / [i915#12203=
])
>   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v2/bat-a=
rls-1/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
>    - bat-dg2-14:         NOTRUN -> [SKIP][18] ([i915#5190])
>   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v2/bat-d=
g2-14/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
>
>  * igt@kms_addfb_basic@basic-x-tiled-legacy:
>    - bat-dg2-14:         NOTRUN -> [SKIP][19] ([i915#4212]) +7 other test=
s skip
>   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v2/bat-d=
g2-14/igt@kms_addfb_basic@basic-x-tiled-legacy.html
>
>  * igt@kms_addfb_basic@basic-y-tiled-legacy:
>    - bat-dg2-14:         NOTRUN -> [SKIP][20] ([i915#4215] / [i915#5190])
>   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v2/bat-d=
g2-14/igt@kms_addfb_basic@basic-y-tiled-legacy.html
>
>  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>    - bat-dg2-14:         NOTRUN -> [SKIP][21] ([i915#4103] / [i915#4213])=
 +1 other test skip
>   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v2/bat-d=
g2-14/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
>    - bat-arls-1:         NOTRUN -> [SKIP][22] ([i915#11346]) +1 other tes=
t skip
>   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v2/bat-a=
rls-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
>
>  * igt@kms_dsc@dsc-basic:
>    - bat-dg2-14:         NOTRUN -> [SKIP][23] ([i915#3555] / [i915#3840])
>   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v2/bat-d=
g2-14/igt@kms_dsc@dsc-basic.html
>    - bat-arls-1:         NOTRUN -> [SKIP][24] ([i915#11346] / [i915#9886]=
)
>   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v2/bat-a=
rls-1/igt@kms_dsc@dsc-basic.html
>
>  * igt@kms_force_connector_basic@force-load-detect:
>    - bat-dg2-14:         NOTRUN -> [SKIP][25]
>   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v2/bat-d=
g2-14/igt@kms_force_connector_basic@force-load-detect.html
>    - bat-arls-1:         NOTRUN -> [SKIP][26] ([i915#10207] / [i915#11346=
])
>   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v2/bat-a=
rls-1/igt@kms_force_connector_basic@force-load-detect.html
>
>  * igt@kms_force_connector_basic@prune-stale-modes:
>    - bat-dg2-14:         NOTRUN -> [SKIP][27] ([i915#5274])
>   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v2/bat-d=
g2-14/igt@kms_force_connector_basic@prune-stale-modes.html
>
>  * igt@kms_pm_backlight@basic-brightness:
>    - bat-dg2-14:         NOTRUN -> [SKIP][28] ([i915#5354])
>   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v2/bat-d=
g2-14/igt@kms_pm_backlight@basic-brightness.html
>    - bat-arls-1:         NOTRUN -> [SKIP][29] ([i915#11346] / [i915#9812]=
)
>   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v2/bat-a=
rls-1/igt@kms_pm_backlight@basic-brightness.html
>
>  * igt@kms_psr@psr-primary-mmap-gtt:
>    - bat-arls-1:         NOTRUN -> [SKIP][30] ([i915#11346] / [i915#9732]=
) +3 other tests skip
>   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v2/bat-a=
rls-1/igt@kms_psr@psr-primary-mmap-gtt.html
>
>  * igt@kms_psr@psr-sprite-plane-onoff:
>    - bat-dg2-14:         NOTRUN -> [SKIP][31] ([i915#1072] / [i915#9732])=
 +3 other tests skip
>   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v2/bat-d=
g2-14/igt@kms_psr@psr-sprite-plane-onoff.html
>
>  * igt@kms_setmode@basic-clone-single-crtc:
>    - bat-dg2-14:         NOTRUN -> [SKIP][32] ([i915#3555])
>   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v2/bat-d=
g2-14/igt@kms_setmode@basic-clone-single-crtc.html
>    - bat-arls-1:         NOTRUN -> [SKIP][33] ([i915#10208] / [i915#8809]=
)
>   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v2/bat-a=
rls-1/igt@kms_setmode@basic-clone-single-crtc.html
>
>  * igt@prime_vgem@basic-fence-flip:
>    - bat-dg2-14:         NOTRUN -> [SKIP][34] ([i915#3708])
>   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v2/bat-d=
g2-14/igt@prime_vgem@basic-fence-flip.html
>
>  * igt@prime_vgem@basic-fence-mmap:
>    - bat-dg2-14:         NOTRUN -> [SKIP][35] ([i915#3708] / [i915#4077])=
 +1 other test skip
>   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v2/bat-d=
g2-14/igt@prime_vgem@basic-fence-mmap.html
>
>  * igt@prime_vgem@basic-fence-read:
>    - bat-arls-1:         NOTRUN -> [SKIP][36] ([i915#10212] / [i915#3708]=
)
>   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v2/bat-a=
rls-1/igt@prime_vgem@basic-fence-read.html
>
>  * igt@prime_vgem@basic-gtt:
>    - bat-arls-1:         NOTRUN -> [SKIP][37] ([i915#10196] / [i915#3708]=
 / [i915#4077]) +1 other test skip
>   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v2/bat-a=
rls-1/igt@prime_vgem@basic-gtt.html
>
>  * igt@prime_vgem@basic-read:
>    - bat-dg2-14:         NOTRUN -> [SKIP][38] ([i915#3291] / [i915#3708])=
 +2 other tests skip
>   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v2/bat-d=
g2-14/igt@prime_vgem@basic-read.html
>    - bat-arls-1:         NOTRUN -> [SKIP][39] ([i915#10214] / [i915#3708]=
)
>   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v2/bat-a=
rls-1/igt@prime_vgem@basic-read.html
>
>  * igt@prime_vgem@basic-write:
>    - bat-arls-1:         NOTRUN -> [SKIP][40] ([i915#10216] / [i915#3708]=
)
>   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v2/bat-a=
rls-1/igt@prime_vgem@basic-write.html
>
> =20
>#### Possible fixes ####
>
>  * igt@i915_selftest@live:
>    - fi-glk-j4005:       [ABORT][41] -> [PASS][42]
>   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15449/fi-glk-j400=
5/igt@i915_selftest@live.html
>   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v2/fi-gl=
k-j4005/igt@i915_selftest@live.html
>
>  * igt@i915_selftest@live@execlists:
>    - fi-glk-j4005:       [ABORT][43] ([i915#11022]) -> [PASS][44]
>   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15449/fi-glk-j400=
5/igt@i915_selftest@live@execlists.html
>   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v2/fi-gl=
k-j4005/igt@i915_selftest@live@execlists.html
>
> =20
>#### Warnings ####
>
>  * igt@i915_module_load@reload:
>    - bat-arls-5:         [DMESG-WARN][45] ([i915#11637]) -> [DMESG-WARN][=
46] ([i915#11637] / [i915#1982])
>   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15449/bat-arls-5/=
igt@i915_module_load@reload.html
>   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v2/bat-a=
rls-5/igt@i915_module_load@reload.html
>
>  * igt@i915_selftest@live:
>    - bat-arls-5:         [DMESG-WARN][47] ([i915#10341] / [i915#12133]) -=
> [ABORT][48] ([i915#12061] / [i915#12133])
>   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15449/bat-arls-5/=
igt@i915_selftest@live.html
>   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v2/bat-a=
rls-5/igt@i915_selftest@live.html
>
>  * igt@i915_selftest@live@workarounds:
>    - bat-arls-5:         [DMESG-WARN][49] ([i915#10341] / [i915#11637]) -=
> [ABORT][50] ([i915#12061])
>   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15449/bat-arls-5/=
igt@i915_selftest@live@workarounds.html
>   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v2/bat-a=
rls-5/igt@i915_selftest@live@workarounds.html
>
> =20
>  [i915#10196]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10=
196
>  [i915#10200]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10=
200
>  [i915#10207]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10=
207
>  [i915#10208]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10=
208
>  [i915#10211]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10=
211
>  [i915#10212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10=
212
>  [i915#10214]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10=
214
>  [i915#10216]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10=
216
>  [i915#10341]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10=
341
>  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/107=
2
>  [i915#11022]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11=
022
>  [i915#11343]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11=
343
>  [i915#11346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11=
346
>  [i915#11349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11=
349
>  [i915#11637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11=
637
>  [i915#11671]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11=
671
>  [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11=
681
>  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12=
061
>  [i915#12133]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12=
133
>  [i915#12203]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12=
203
>  [i915#1982]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/198=
2
>  [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/329=
1
>  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/355=
5
>  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/370=
8
>  [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/384=
0
>  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/407=
7
>  [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/407=
9
>  [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/408=
3
>  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/410=
3
>  [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/421=
2
>  [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/421=
3
>  [i915#4215]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/421=
5
>  [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/519=
0
>  [i915#5274]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/527=
4
>  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/535=
4
>  [i915#6621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/662=
1
>  [i915#8809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/880=
9
>  [i915#9318]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/931=
8
>  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/973=
2
>  [i915#9812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/981=
2
>  [i915#9886]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/988=
6
>
>
>Build changes
>-------------
>
>  * Linux: CI_DRM_15449 -> Patchwork_137978v2
>
>  CI-20190529: 20190529
>  CI_DRM_15449: f82c02cc01798312082cc41feaa473538e517c7b @ git://anongit.f=
reedesktop.org/gfx-ci/linux
>  IGT_8034: 73eed10d50c7d1f07df07214ae62924d4e377e12 @ https://gitlab.free=
desktop.org/drm/igt-gpu-tools.git
>  Patchwork_137978v2: f82c02cc01798312082cc41feaa473538e517c7b @ git://ano=
ngit.freedesktop.org/gfx-ci/linux
>
>=3D=3D Logs =3D=3D
>
>For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
37978v2/index.html
