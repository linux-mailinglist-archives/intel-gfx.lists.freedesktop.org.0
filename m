Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34228A74E0E
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Mar 2025 16:49:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A209A10EA4B;
	Fri, 28 Mar 2025 15:49:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hCpXpVka";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCB8710E072;
 Fri, 28 Mar 2025 15:49:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743176988; x=1774712988;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=Youndlkz9qtrrSu51FKQ0x76goQdtEgANpZhDOl9liY=;
 b=hCpXpVkanyLJVcOCGOE7KY3WDVzFSUZHwtKIuL94fG4kSMBCaP5JY+qy
 O65snUkzgQgIzFGsCDlQ/ScZC3FrO2mFjfC7fXR1I3RzIaoGOdBjIrMHO
 sYJ107y1fM0gBytcNonKTZItKSxC/NklQTYeSu3JlyrBsyclm1VhiwX/j
 sD0o0az4W1ft8FuToNBiI+oPUmNxOGxOiRSPYopw4404nOwhfP3joNhAN
 Y2X5vSFCi0eNH7++96NybfY6k4F3mWMhDUZFQ63tEV6t4WkC0LV4KNb6c
 3PSODJVSakY7gc2ZgVeijNFgFc9qQXjgAHBYNi9rsQNw+xI/Y6CLULiO4 g==;
X-CSE-ConnectionGUID: yiJdR4gqSk++STsx5dsbWQ==
X-CSE-MsgGUID: UxiFOjJ2RdS4pBTcq4uqaA==
X-IronPort-AV: E=McAfee;i="6700,10204,11387"; a="44436371"
X-IronPort-AV: E=Sophos;i="6.14,283,1736841600"; d="scan'208";a="44436371"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2025 08:49:46 -0700
X-CSE-ConnectionGUID: OGv6OsluTWKOKznCVu2a9A==
X-CSE-MsgGUID: e95PI7nmTyGq4DPcZL9TkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,283,1736841600"; d="scan'208";a="130588811"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Mar 2025 08:49:46 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 28 Mar 2025 08:49:45 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 28 Mar 2025 08:49:45 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 28 Mar 2025 08:49:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KpZh00rGXfj0mNrsl8lc/YN2TELNHruztQFjbNImzRIyCGgSyD/cOr1FhRlxBSnz3j7M4MJoL5KcbyGhMUFHOdYH+1Zq1xQvRg7US29kQEHWB2WvMhVP5MksEN3MMUjZbpiLWxDzR1c+NyRp2X88G50f7xN4xqb6GNehTu6b46BbTdc1nw06ZgoY2/Z0DzPKptov6WLkF0RV4c87rMOMORCIDEKY/U1Hwv8M+si/gqHPerO11zZgwH6ehPF3wz3gV5tbq8j1PfmPjXW79ILCU5lJp5GVjibEI5h7Xl47XgRXJEuA+QCkL5y6tILLQjMG3S8EICd5SVnhP1BHvVuAUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BczYWQr3vZzP4aHHdUxBq/YrzInYaMaKo14zIXJjbmQ=;
 b=w1MgQIPPydO6J0TzGOza73C/PZcSqubQbJD6SrXSH/CEnA4CnFvpqGfwvTXBsCkU89ZEmoZbQpytmie33djTJxXVwaVdoBH07Sll8t7zqvc18muo1sHSMMoCOFXx0Vpfn0TYsJtCQRny3Ip4U3lCFueQofjiYp9zTI2tN0AhGIZX6NQc16GjnyOCwi9465uC9ck8W5lG3L3SOKJPXJgnKImZlm8g3bdoTAJyGWbdU4hAyIEnZzIY2Nv3fsmyS/ehYkTCKz+YzuN1J/OpqnpK+S9wleQgsIeg8CTXxWPoBLhqf48aJSth2MsTfP1art3D2hL+CxVvBBqlW8PpwY+W+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by DM4PR11MB6120.namprd11.prod.outlook.com (2603:10b6:8:af::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.44; Fri, 28 Mar
 2025 15:49:41 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%4]) with mapi id 15.20.8534.043; Fri, 28 Mar 2025
 15:49:41 +0000
Date: Fri, 28 Mar 2025 11:49:38 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915: reduce intel_wakeref.h dependencies
Message-ID: <Z-bFEou3Q7xsksi_@intel.com>
References: <20250326115452.2090275-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250326115452.2090275-1-jani.nikula@intel.com>
X-ClientProxiedBy: MW4P220CA0015.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:303:115::20) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|DM4PR11MB6120:EE_
X-MS-Office365-Filtering-Correlation-Id: 8866ea50-099b-4320-aa84-08dd6e10270c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?wM666xtjFD6sm3Q45dfojfXqncNNBh2LfCsWvkHo4kRJfJ81dcBCOwDsW5?=
 =?iso-8859-1?Q?PYB62w+I0bsB1Gev4gGtbbUrVDK228DcSReTji3zzEeSNOzqIp3+UWy1GI?=
 =?iso-8859-1?Q?Ejiw2aMqhsnEVh+S5vKLdvZ+PeCFE8bGvvjWQkgcwfWDjtC2escSGEiaTP?=
 =?iso-8859-1?Q?gbkHnUTqwrOR48lJiz/Jii0O44v0oi5uXluwfY7jVtq62iFpabA1Em+UBg?=
 =?iso-8859-1?Q?xiXUFm/LqBWZr2+Z1dSmuQZtdC3B/uxs3Cm1EyZDtj936cBN7K+8nYNxgE?=
 =?iso-8859-1?Q?8if2FqnaWI7Ryabhg5RMgNth0wMHpLZu6AzKw8inqLthzzXI3eeWMn9QvP?=
 =?iso-8859-1?Q?YAyUPneQqkLd3qQlwovC/Dwi0EzyHlgdlbzeot0u1s1IU4eT8Pvc58j5PR?=
 =?iso-8859-1?Q?raptOY1L27ux5Hou06SE3wYPLZ7x5vObdmUlTK9gHfRg6xKYCINiWmQyh+?=
 =?iso-8859-1?Q?GWJ53KkVh0Z9EbmTQmz5bUBfEmFi6jrVuJl+rDuq9pXRlTYxcilR/9pX+2?=
 =?iso-8859-1?Q?8HvuM3M6hB+QuZClb5QKIrnSwpOrB6wUE9VwKTSw5O5vzi5S05eiPVdcwB?=
 =?iso-8859-1?Q?5iEydSaIDSC9rN0OComXhLnyQhtLKf2uQm798D+O3nYaL7wN5Ob3hj035A?=
 =?iso-8859-1?Q?hOqOSUJGehnI4I5YxQARVQz1Gyu1KOCfIkDbhim34SwAwOBVN7JqhI0jj6?=
 =?iso-8859-1?Q?LZ5mRe/YKHXYkiy8GMsKYKTz3JoVD6Zsz5iGTzH7kJW7G7wWOs5TpD/szL?=
 =?iso-8859-1?Q?ae3T9OaAr/JATYxtRGq0E5g+ZgNzu2jGJeCvVd0rADxELa4QwtsIpAvisA?=
 =?iso-8859-1?Q?3IlTroHUDkgq445OxNdPe2R7P45fkZg3fIoMNb/H+GR14r68IkNGEwuIt8?=
 =?iso-8859-1?Q?0t7jCQTCWDEt4jauvALTWB8VIz6GysQS+vUi/xJ5INwCU0gBXY5NUbbrNn?=
 =?iso-8859-1?Q?L/PGnOx3bTYvHnRZcl2bKa+d35zHgCyi38NEAedVjzohgSbPjiuHJEdpfe?=
 =?iso-8859-1?Q?iShi4TGc+k4MP3pz4w7OywCN74LS4/8+yI36n2FuaNqCFesB9WSNziBMWN?=
 =?iso-8859-1?Q?zZZNp+gUf8lhJBOv9oE+PUGYElkRCKgxX7bIQBm8ZO3g39llIvuOI/J/6k?=
 =?iso-8859-1?Q?vklxrFUrDUhFdxuWx+lr4JDZxh0qiq1nbCtXIo1jjxTvSfTU37UEvLOQpn?=
 =?iso-8859-1?Q?admMChZhTxNziEnicStjEQqLzMqTVtGvPVW4IX1FVJOqh3rJ2k8vEnj3ry?=
 =?iso-8859-1?Q?7+rTTSVNXWFpZgTi5YV8GYy2bdl5sVTMKpPe8h4sJAcmLHeLU5sIwd2mIS?=
 =?iso-8859-1?Q?wcwo9YmmugsXXByO/lqMmNW2sy3sBmwinx9HfGYutQd5cn6md64qGSm/7+?=
 =?iso-8859-1?Q?/XB82QV4q+gDAE3FKKrRQudZGo/EIsP2AzlS7EQuLTUDK+WfTTvtMCuJeZ?=
 =?iso-8859-1?Q?vNx2VKHBH26yTaH1qpsbci1dNpZLRDYI0WO0vhuDpBg8IsIZVB9shEZOa+?=
 =?iso-8859-1?Q?k=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?lq11JjY15asHjtkWPuIHKAVf0m8RsUWs6OlJd4vaSApQUZx+oU7sXVBAes?=
 =?iso-8859-1?Q?9FuObQIgyRfDG+e6ykFjq+/aaIuCVFA9WervS1OLOBMKbDClJ9GDJAFcrW?=
 =?iso-8859-1?Q?IoQC2iUa2mTN7d7KL+Y2aqbl+auluHA+7hB/DqtT7emUK8gQ4on380no3k?=
 =?iso-8859-1?Q?7m7kw2A4qlwo8dAvj/1jOuBL8orOu0mUxe7edQ8WVHQDMGJ26P/Ho6rUtZ?=
 =?iso-8859-1?Q?xrisUrxvNRLtTtq+b+SOtfdybsMQNbY3kccLOGD935C4n6oenznv5As1K2?=
 =?iso-8859-1?Q?TAVWc1nKYvf1L6cXvmyswD0Rxf3MAYxujVSDT6H3ZAnCwT7hL70dlw/p/R?=
 =?iso-8859-1?Q?TUcVAfNKMy7y9S4+v0hwUvZ0L9URzl5Pz0t7I/byJkccIJhJUeVUKXjHDr?=
 =?iso-8859-1?Q?Yd1Qcfu7PjgVCz4a6w6vRQSGfb4iORP2JpIiZAVOF2OYbQ8YSmn2jQssnP?=
 =?iso-8859-1?Q?uJqLBWKQ77NaXJgMgt5Pi7iGG7NDNX6ghXZJIaUP/ytcVm1Hgq4oT2pwDF?=
 =?iso-8859-1?Q?6k15iQuAw/ej13mqsDagFmnEQhM544xuBqonguS+GXG/uLs+saNWTK6Ilq?=
 =?iso-8859-1?Q?LvlniYqXb93blvgHH5RJs4wvcj1JtD9bvvFKtJ93085sdRJu2lYEXOVlaJ?=
 =?iso-8859-1?Q?OsqXZAxhzGqbFWU/ekGdLgkx/m+rZOJ4HveaiyvN5UFqU7XE9mnOny7IJo?=
 =?iso-8859-1?Q?ydUF8SLhhq3byNVupnf+t2H//xTjmWpdXBypYR1ml5nbRWtwHsxCC8jvW3?=
 =?iso-8859-1?Q?RQCuDDsWP6tjsiRWAHInJ/F9G9Oq6V5GoKjQGaA/OKckBQzSIaxeuuRvC3?=
 =?iso-8859-1?Q?2XxDn8UJvh8+YbBZE0bn0W73r1jFA3Hd1cvjCMeVHW9LB0zSQklaVb9dCw?=
 =?iso-8859-1?Q?U+cuPBUpfu6tqFU4pMQPIClafQXLboOVpVQOW6Rm0LZf9Dn5ZAJKTvccbj?=
 =?iso-8859-1?Q?YB1o2hBudNumssYMGtGegeGwpvS6BDSeJhbMZR7wzMQ+ECrIGCpkw3PIW6?=
 =?iso-8859-1?Q?WSdQRObu3aWNw5Gi4d1axLeC0sDCcnbaC8pvd4BUUkIldOTrTSUjVJaEtB?=
 =?iso-8859-1?Q?4/XXdByyAO3Z7rkfLKPB4akYtz7w1+/PyqSgITrd4Qb+DhK+c7HnejkR5b?=
 =?iso-8859-1?Q?sBg4TTltrb7DUYdw24E3u/nFLYEjv3N9RuO2AGYlG1Y1nd+ko5A/fQutnB?=
 =?iso-8859-1?Q?E2a0WYlwrBKP9rqfZDkW/WXygIstJE0nUZs5u8l0VhP2C04VyNH9oXdYJO?=
 =?iso-8859-1?Q?JRRI72qVwTOLz5+OAvTmN+BxikKxN1QHVEVtYpqKeOf18XaAfL3r2oaETI?=
 =?iso-8859-1?Q?PuwcAjAdYMZNAjY2m7AsXtE97KnNc93EuSrxEbvzPadJa54VFP40xd82Jj?=
 =?iso-8859-1?Q?cnhMF0hLcRUkIxQhhOEAg1TIGr9X06CRDJEIm+ynjGuhm+NSlj62DG5JGK?=
 =?iso-8859-1?Q?cKfquTN5a4g33zBRFiO1ulbo8XCD/5aMlPVuDKi9wHnC5n4QGmmxCFuyvE?=
 =?iso-8859-1?Q?cfWr3fRfVIKDow6nxhIqzUnrYXWYSx//4KLTNp4Lodp0SveVW16nBtkpu6?=
 =?iso-8859-1?Q?WvYbyakjcD7sKKOOX82iZkhyJ90Y5uX0dMD3BeO5UsnwAm7dwnM2c4yTEo?=
 =?iso-8859-1?Q?i2krqXWQLPVF86Vli7syZYmteRN6cjbQRvRi48xxG7Ty++GwqN38IY2w?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8866ea50-099b-4320-aa84-08dd6e10270c
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Mar 2025 15:49:41.2907 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BaNkUc01+MG9UewU2OZebNzWeNvasNtHxLLe5LaomE3g0cX2hCXyC33x7B44P+t5gnKW4vXKmpByJGpej7LOEA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6120
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

On Wed, Mar 26, 2025 at 01:54:52PM +0200, Jani Nikula wrote:
> Forward declare struct drm_printer instead of including drm/drm_print.h,
> as we only need the pointer. Turns out quite a few places depend on this
> include implicitly. Make them explicit.
> 
> Some of the includes are just stale and unnecessary. Group the forward
> declarations together while at it.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/dvo_ch7017.c        |  2 ++
>  drivers/gpu/drm/i915/display/dvo_ch7xxx.c        |  2 ++
>  drivers/gpu/drm/i915/display/dvo_ivch.c          |  2 ++
>  drivers/gpu/drm/i915/display/dvo_ns2501.c        |  2 ++
>  drivers/gpu/drm/i915/display/dvo_sil164.c        |  2 ++
>  drivers/gpu/drm/i915/display/dvo_tfp410.c        |  2 ++
>  drivers/gpu/drm/i915/display/icl_dsi.c           |  1 +
>  drivers/gpu/drm/i915/display/intel_color.c       |  2 ++
>  drivers/gpu/drm/i915/display/intel_combo_phy.c   |  2 ++
>  drivers/gpu/drm/i915/display/intel_dkl_phy.c     |  1 +
>  drivers/gpu/drm/i915/display/intel_dvo.c         |  1 +
>  drivers/gpu/drm/i915/display/intel_hti.c         |  1 +
>  drivers/gpu/drm/i915/display/intel_load_detect.c |  1 +
>  drivers/gpu/drm/i915/display/intel_lspcon.c      |  1 +
>  drivers/gpu/drm/i915/display/intel_pmdemand.c    |  2 ++
>  drivers/gpu/drm/i915/display/intel_snps_phy.c    |  2 ++
>  drivers/gpu/drm/i915/display/intel_tc.c          |  2 ++
>  drivers/gpu/drm/i915/display/intel_vdsc.c        |  1 +
>  drivers/gpu/drm/i915/display/intel_vrr.c         |  2 ++
>  drivers/gpu/drm/i915/intel_wakeref.h             | 11 ++++-------
>  20 files changed, 35 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/dvo_ch7017.c b/drivers/gpu/drm/i915/display/dvo_ch7017.c
> index 206818f9ad49..f10c0fb8d2c8 100644
> --- a/drivers/gpu/drm/i915/display/dvo_ch7017.c
> +++ b/drivers/gpu/drm/i915/display/dvo_ch7017.c
> @@ -25,6 +25,8 @@
>   *
>   */
>  
> +#include <drm/drm_print.h>
> +
>  #include "intel_display_types.h"
>  #include "intel_dvo_dev.h"
>  
> diff --git a/drivers/gpu/drm/i915/display/dvo_ch7xxx.c b/drivers/gpu/drm/i915/display/dvo_ch7xxx.c
> index 10ab3cc73e58..49f02aca818b 100644
> --- a/drivers/gpu/drm/i915/display/dvo_ch7xxx.c
> +++ b/drivers/gpu/drm/i915/display/dvo_ch7xxx.c
> @@ -26,6 +26,8 @@ SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
>  
>  **************************************************************************/
>  
> +#include <drm/drm_print.h>
> +
>  #include "intel_display_types.h"
>  #include "intel_dvo_dev.h"
>  
> diff --git a/drivers/gpu/drm/i915/display/dvo_ivch.c b/drivers/gpu/drm/i915/display/dvo_ivch.c
> index d9c3152d4338..0713b2709412 100644
> --- a/drivers/gpu/drm/i915/display/dvo_ivch.c
> +++ b/drivers/gpu/drm/i915/display/dvo_ivch.c
> @@ -29,6 +29,8 @@
>   *
>   */
>  
> +#include <drm/drm_print.h>
> +
>  #include "intel_display_types.h"
>  #include "intel_dvo_dev.h"
>  
> diff --git a/drivers/gpu/drm/i915/display/dvo_ns2501.c b/drivers/gpu/drm/i915/display/dvo_ns2501.c
> index 92d32d6b5bce..80b71bd6a837 100644
> --- a/drivers/gpu/drm/i915/display/dvo_ns2501.c
> +++ b/drivers/gpu/drm/i915/display/dvo_ns2501.c
> @@ -26,6 +26,8 @@
>   *
>   */
>  
> +#include <drm/drm_print.h>
> +
>  #include "intel_display_types.h"
>  #include "intel_dvo_dev.h"
>  
> diff --git a/drivers/gpu/drm/i915/display/dvo_sil164.c b/drivers/gpu/drm/i915/display/dvo_sil164.c
> index b42c717085f3..017b617a8069 100644
> --- a/drivers/gpu/drm/i915/display/dvo_sil164.c
> +++ b/drivers/gpu/drm/i915/display/dvo_sil164.c
> @@ -26,6 +26,8 @@ SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
>  
>  **************************************************************************/
>  
> +#include <drm/drm_print.h>
> +
>  #include "intel_display_types.h"
>  #include "intel_dvo_dev.h"
>  
> diff --git a/drivers/gpu/drm/i915/display/dvo_tfp410.c b/drivers/gpu/drm/i915/display/dvo_tfp410.c
> index 280699438526..ed560e3438db 100644
> --- a/drivers/gpu/drm/i915/display/dvo_tfp410.c
> +++ b/drivers/gpu/drm/i915/display/dvo_tfp410.c
> @@ -25,6 +25,8 @@
>   *
>   */
>  
> +#include <drm/drm_print.h>
> +
>  #include "intel_display_types.h"
>  #include "intel_dvo_dev.h"
>  
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> index 402b7b2e1829..9dd2e2c295b9 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -29,6 +29,7 @@
>  #include <drm/drm_atomic_helper.h>
>  #include <drm/drm_fixed.h>
>  #include <drm/drm_mipi_dsi.h>
> +#include <drm/drm_print.h>
>  #include <drm/drm_probe_helper.h>
>  
>  #include "i915_reg.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index bbf6df7ebb95..98dddf72c0eb 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -22,6 +22,8 @@
>   *
>   */
>  
> +#include <drm/drm_print.h>
> +
>  #include "i915_utils.h"
>  #include "i9xx_plane_regs.h"
>  #include "intel_color.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy.c b/drivers/gpu/drm/i915/display/intel_combo_phy.c
> index 17eea244cc83..f5cc38dbe559 100644
> --- a/drivers/gpu/drm/i915/display/intel_combo_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_combo_phy.c
> @@ -3,6 +3,8 @@
>   * Copyright © 2018 Intel Corporation
>   */
>  
> +#include <drm/drm_print.h>
> +
>  #include "i915_reg.h"
>  #include "i915_utils.h"
>  #include "intel_combo_phy.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_dkl_phy.c b/drivers/gpu/drm/i915/display/intel_dkl_phy.c
> index 0813fb9b5823..dad7192132ad 100644
> --- a/drivers/gpu/drm/i915/display/intel_dkl_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_dkl_phy.c
> @@ -4,6 +4,7 @@
>   */
>  
>  #include <drm/drm_device.h>
> +#include <drm/drm_print.h>
>  
>  #include "intel_de.h"
>  #include "intel_display.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
> index 602e76ddf788..b61520353c92 100644
> --- a/drivers/gpu/drm/i915/display/intel_dvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_dvo.c
> @@ -31,6 +31,7 @@
>  #include <drm/drm_atomic_helper.h>
>  #include <drm/drm_crtc.h>
>  #include <drm/drm_edid.h>
> +#include <drm/drm_print.h>
>  #include <drm/drm_probe_helper.h>
>  
>  #include "i915_reg.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_hti.c b/drivers/gpu/drm/i915/display/intel_hti.c
> index fb6b84f6a81d..dc454420c134 100644
> --- a/drivers/gpu/drm/i915/display/intel_hti.c
> +++ b/drivers/gpu/drm/i915/display/intel_hti.c
> @@ -4,6 +4,7 @@
>   */
>  
>  #include <drm/drm_device.h>
> +#include <drm/drm_print.h>
>  
>  #include "intel_de.h"
>  #include "intel_display.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_load_detect.c b/drivers/gpu/drm/i915/display/intel_load_detect.c
> index 86cc03a4413c..aad52d0d83e1 100644
> --- a/drivers/gpu/drm/i915/display/intel_load_detect.c
> +++ b/drivers/gpu/drm/i915/display/intel_load_detect.c
> @@ -6,6 +6,7 @@
>  #include <drm/drm_atomic.h>
>  #include <drm/drm_atomic_helper.h>
>  #include <drm/drm_atomic_uapi.h>
> +#include <drm/drm_print.h>
>  
>  #include "intel_atomic.h"
>  #include "intel_crtc.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
> index 63c1afa30b05..f94b7eeae20f 100644
> --- a/drivers/gpu/drm/i915/display/intel_lspcon.c
> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
> @@ -27,6 +27,7 @@
>  #include <drm/display/drm_hdmi_helper.h>
>  #include <drm/drm_atomic_helper.h>
>  #include <drm/drm_edid.h>
> +#include <drm/drm_print.h>
>  
>  #include "i915_reg.h"
>  #include "i915_utils.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/drm/i915/display/intel_pmdemand.c
> index 63301a01906c..d22b5469672d 100644
> --- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
> +++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
> @@ -5,6 +5,8 @@
>  
>  #include <linux/bitops.h>
>  
> +#include <drm/drm_print.h>
> +
>  #include "i915_reg.h"
>  #include "i915_utils.h"
>  #include "intel_atomic.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
> index b9acd9fe160c..2b53ac9f4935 100644
> --- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
> @@ -5,6 +5,8 @@
>  
>  #include <linux/math.h>
>  
> +#include <drm/drm_print.h>
> +
>  #include "i915_reg.h"
>  #include "i915_utils.h"
>  #include "intel_ddi.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
> index 426a3c8529a3..2c6c18434a4c 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -3,6 +3,8 @@
>   * Copyright © 2019 Intel Corporation
>   */
>  
> +#include <drm/drm_print.h>
> +
>  #include "i915_reg.h"
>  #include "i915_utils.h"
>  #include "intel_atomic.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 470c170897e5..8e799e225af1 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -9,6 +9,7 @@
>  
>  #include <drm/display/drm_dsc_helper.h>
>  #include <drm/drm_fixed.h>
> +#include <drm/drm_print.h>
>  
>  #include "i915_utils.h"
>  #include "intel_crtc.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 414f93851059..4f442804a41a 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -4,6 +4,8 @@
>   *
>   */
>  
> +#include <drm/drm_print.h>
> +
>  #include "i915_reg.h"
>  #include "intel_de.h"
>  #include "intel_display_types.h"
> diff --git a/drivers/gpu/drm/i915/intel_wakeref.h b/drivers/gpu/drm/i915/intel_wakeref.h
> index 48836ef52d40..a2894a56e18f 100644
> --- a/drivers/gpu/drm/i915/intel_wakeref.h
> +++ b/drivers/gpu/drm/i915/intel_wakeref.h
> @@ -7,8 +7,6 @@
>  #ifndef INTEL_WAKEREF_H
>  #define INTEL_WAKEREF_H
>  
> -#include <drm/drm_print.h>
> -
>  #include <linux/atomic.h>
>  #include <linux/bitfield.h>
>  #include <linux/bits.h>
> @@ -16,11 +14,13 @@
>  #include <linux/mutex.h>
>  #include <linux/refcount.h>
>  #include <linux/ref_tracker.h>
> -#include <linux/slab.h>
> -#include <linux/stackdepot.h>
>  #include <linux/timer.h>
>  #include <linux/workqueue.h>
>  
> +struct drm_printer;
> +struct intel_runtime_pm;
> +struct intel_wakeref;
> +
>  typedef struct ref_tracker *intel_wakeref_t;
>  
>  #define INTEL_REFTRACK_DEAD_COUNT 16
> @@ -32,9 +32,6 @@ typedef struct ref_tracker *intel_wakeref_t;
>  #define INTEL_WAKEREF_BUG_ON(expr) BUILD_BUG_ON_INVALID(expr)
>  #endif
>  
> -struct intel_runtime_pm;
> -struct intel_wakeref;

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> -
>  struct intel_wakeref_ops {
>  	int (*get)(struct intel_wakeref *wf);
>  	int (*put)(struct intel_wakeref *wf);
> -- 
> 2.39.5
> 
