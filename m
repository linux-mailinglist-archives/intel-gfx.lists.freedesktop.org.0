Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FA4F94AE71
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2024 18:52:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E04910E592;
	Wed,  7 Aug 2024 16:52:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mjYWNZ++";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8591510E190;
 Wed,  7 Aug 2024 16:52:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723049557; x=1754585557;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=OK2ToQVmbBX8ubUjudYf69Bj4qikoq3mOjvlh8zlLU0=;
 b=mjYWNZ++yh7H1vjn39WNbtnk9XA+xyumiXQnwY06s+htaqXrJfExZo1K
 2gpFPbQmujkay+M9avSt6XhqEVW+T52wLtPHQoWCr9hLKUiiVx3osCgdX
 yyXA75O4LvXl+MrH/dX0ROrzOPhHICf7Xry4IqO9Yp18w7x3liVqpx9i1
 6VLMSn0abXT4z+wwCDWnTkMi6BcjceuwmmULWa3Pk/i/Lm6zbTFedtWAH
 xFpOi4+dkGOFEGPK+dJ4WjIEnrZgQpcqzO+PPcNqDsWpxc6y4GH3Y0XFn
 YDSyZp2gYcbnQd1LE9m5Pl0a+4jcjUJPaEPTzX0QIAHxX85xsETYEU7Oo A==;
X-CSE-ConnectionGUID: iv51pywlRdOJ7PvqQHOSOg==
X-CSE-MsgGUID: myvdN6o3Rc+WAYUHOAR9ug==
X-IronPort-AV: E=McAfee;i="6700,10204,11157"; a="32536369"
X-IronPort-AV: E=Sophos;i="6.09,270,1716274800"; d="scan'208";a="32536369"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2024 09:52:20 -0700
X-CSE-ConnectionGUID: 7QRwzw5ORgaEA5thIdwb6w==
X-CSE-MsgGUID: BqMl4LIeQ/yKN8aoT0Ikxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,270,1716274800"; d="scan'208";a="61851592"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Aug 2024 09:52:20 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 7 Aug 2024 09:52:19 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 7 Aug 2024 09:52:18 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 7 Aug 2024 09:52:18 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 7 Aug 2024 09:52:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GiwR7/UYUeJYEgIJ2/Am7IXMX+czdupF9l27UmLkFZ/u0FFwhr2asBbLjf28MabFjSKJsaQBFnpMt3f9tK3fbwU8Yn0pIx2PHSpQymNPZU3tSD2uDSmXnkUGSfoyhdjaD67E9MnQxxgcE9PxIvyXq6I1vVJXdugktD0ldmnmz5Rn/putuVUIkMDTg0BwXOvjBRW4wrqIy87tBj2hi0dSixrXrGHm8hAY2niJWcQRPOxVsbNY+Vd67dWufV/wLwBH5MaRrAk+CaX8FLKfVx0YJC6aFyb+UBkv6vKTcAMQBATjixdWjLbNiM2cmq9y9MMXQQ91Qlp4mSpJNEYYfp+bVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4H0ysOfoD9gu5A6egH3Yk8Yskw4Bbpin+bd/7SZPiGc=;
 b=tm5zRM4me2yGBhqWUBN1rhes/CawQai4U4qga/JAC1k098jCddMlx29pkhxVA9F9fxeq54pkEZo7IJzdxKqPCYnVej3o748vYybfEuhcuPAAL0Pf9xIMOZ0hLuBbjsrfwE67TDew3nLHipZXqgf2iMlC4lNDzrfxwUzmnMDx9/pYaf0r/dyc7f558bTHJDkNcCYopDZJ08M4jG6QOxAC5LQUrPz/NrnoK9ulIEJ35iGl22Tdb744fvYoIYIeseeP3HPundm5SNBd9516V70WCzVajRiINHH1SVl+uh3T0dfDMZqAMJsWDFnlzXbPvf5pfMmjwUhavZ0uQJlFpPM5YA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SA1PR11MB7038.namprd11.prod.outlook.com (2603:10b6:806:2b3::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.22; Wed, 7 Aug
 2024 16:52:15 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%7]) with mapi id 15.20.7828.023; Wed, 7 Aug 2024
 16:52:15 +0000
Date: Wed, 7 Aug 2024 11:52:09 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: Gustavo Sousa <gustavo.sousa@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Michal
 Wajdeczko" <michal.wajdeczko@intel.com>, Jonathan Cavitt
 <jonathan.cavitt@intel.com>
Subject: Re: [PATCH 03/10] drm/xe/tests: fix drvdata usage
Message-ID: <l3uht2t6d4mcsgytnomjhnf3j3esqmtngyuosdbomoakvrqjwb@qmft35y54vjk>
References: <cover.1722263308.git.jani.nikula@intel.com>
 <66f8959522a679d80eb71ba8dae47b86d94e71d9.1722263308.git.jani.nikula@intel.com>
 <172253145846.5121.4226200139944139785@gjsousa-mobl2>
 <87h6bx6e94.fsf@intel.com> <87ed716e7p.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <87ed716e7p.fsf@intel.com>
X-ClientProxiedBy: MW4PR03CA0082.namprd03.prod.outlook.com
 (2603:10b6:303:b6::27) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SA1PR11MB7038:EE_
X-MS-Office365-Filtering-Correlation-Id: 366a2ae1-9d2c-4c80-e8d0-08dcb7014a6c
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?v+LmwoY9UKSv99j3R1ALfVf2U0Y3O9SVefOZXSokxABdwKsfYo2KsihAWl7J?=
 =?us-ascii?Q?LGUQhluIviA38vctqfN6IDRybI8tpD7JMLTO35OJbH4kiBHMPOSkXcJd7E2Q?=
 =?us-ascii?Q?XKkBEf5E676opnnpkKgW8oQWePfte5+j1Qo4fbAMI7gjCSOQ1DMgQTjfmkSZ?=
 =?us-ascii?Q?GddItn5N15z662fQKz6fo+hbHtKpXny5fb49czXi765cIFacERmAFQKVSibZ?=
 =?us-ascii?Q?sh6ZPxyi31jEkrtttX0OWBKCyOlgOqoNkG9qScTJJXVlxPdCYNgb0HDtVOEX?=
 =?us-ascii?Q?zMk0qqEYXGQeIzlN5IzsgTTVgtxnY/AMcQAly7Be92DyoUrTEsBaW6lfXzCJ?=
 =?us-ascii?Q?bD4Ro1wopWdc2QFLEDga1Jmak9EgLo9CCjw/DJk5FzDaHiUR7ttG91TF4n4S?=
 =?us-ascii?Q?ynDuwG7K21aHSFuLNanitFEl8hsy5PgzP9jy7Dwt0SdlCKgPT9JVsSxAUCsr?=
 =?us-ascii?Q?tmRBNMuY51Nbw6vi9J4T8U16yC/AaCcjNXuKJMJGIPtBLvY6b0P//E/ii+pO?=
 =?us-ascii?Q?86FxG9TCByH+MWqubVgevZkpJe7PTmeraB9w5ofB0zQHCSbMGK+u5DdcaaUH?=
 =?us-ascii?Q?vGJ511mhWT5DuyBSdApIuG6UaXJI9waCU/tbSAQEidZAGqcC32jvMnC2/mhw?=
 =?us-ascii?Q?8EoVXpGgQRwrtQW/f+Yuuf9Qsnxwvocbos6D0DgxoWSIIF6qEfrXaolb+USj?=
 =?us-ascii?Q?4cyxh06nazimQ7Mka/BNeap6QUuAr1ap+d+ERCQLunQ2vH15/hPR1vyJ3nuh?=
 =?us-ascii?Q?uBmoaGLuEYTC2NRybgwOaZ4R2oGsRSEwpG6OU6RLcQUfMphSHD+x6Ly5GZhG?=
 =?us-ascii?Q?gYq9g3rHYBfuOI60v7VAnYi2Gara2+2yK7Kc+dTZZHQfBc6lqhhIMUA8ioZL?=
 =?us-ascii?Q?gKEMEXEdu1v1yk65Q+ZZliXI3Ulyr7uI0M1/vBS4sBlvQnJvmk2ciZYVTr4I?=
 =?us-ascii?Q?fdd0pKb9V9Uhoh3JHz4EGAlSl5eMwqaOJPhO69IXO9V6uTAehJT0BRI0Cbc5?=
 =?us-ascii?Q?h6gejvyqtce1NnzO0hXULPlvxj/SHLgYO1VZauHboeGo1GmnWHLuAu/RFHBD?=
 =?us-ascii?Q?pw0R3YIN0Zokrzm0UiYMSMgoIm3Em1+mB01NtN2NylEChkFhexqkhfjO2/QU?=
 =?us-ascii?Q?GnbPpZ8tkBEU2S2vvoFwIl8qDVSRE0K5wnwEXFtjBzN6lt4d9dpZOokQCSSg?=
 =?us-ascii?Q?5eZ5kQkF7WCoy0DDVQwwd+GS31atM5zA6fRh2C8VmIfUGRy9+ijssyMG3FDu?=
 =?us-ascii?Q?VuJe07pDb3f1DMEoREox6YTWnvpXBwayG69tnOBvdt7u3IIr/0R4uumZSABP?=
 =?us-ascii?Q?2E5M+CnjeUo3eH3pAGJOviRRtIP+Q5svw6XjgH/axCaqxQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?n6pi/D8VSLTfEdVw3bONxoGFZAMOMVckfH655PQ6cE4Eqrc+UsmqFm5KwvuX?=
 =?us-ascii?Q?5s7ixj2fMbZlCzMO3w8BK0Cq9QcIclf/a/6yPp2FXLOv8hrzC+oyzybNcjBQ?=
 =?us-ascii?Q?YPGQ6mdZPRbg1hGCstFnOdyTPsCXn2VHn2d89K5Rv2T/PvWNyeP0fhjbV/it?=
 =?us-ascii?Q?sw4spq8BevMCp4qPxo3iNGoNV0llvjNcYgVoMynBUHJ3hPPuKPkxMZtjfkc/?=
 =?us-ascii?Q?6ijXyG+8hsxOr8ej0K1RsZ8e7GNmiWqqCg4l2RHmCWtsqg6araHDwvyoQ2Q7?=
 =?us-ascii?Q?KwkppE/EO+N8zd6p5i17IOlSm6gTIIX0hk+TPEE39B27iVCAq0FOplRqzEVR?=
 =?us-ascii?Q?CLCtNaEPAIFLpsaRofvuVEXrTZfO9VapxrZ+VB4OGC1NpeiiGe717kpMQMCO?=
 =?us-ascii?Q?r7d7/Rqc3p1scXCFL1xtMYN6/MZa0Znro6lfl1P9AVJJbe/o5Eng0JOA3lXJ?=
 =?us-ascii?Q?DHooXWdMitWSuNG7EHi8lOpNOBPXUFn/RIQMQtMDMYyaiTdddA1DkRaTrGUL?=
 =?us-ascii?Q?nKnYcgludDZCa3WlxoHqdu6Cd0SF8jfQFOh++HTDhtXHt6ZH0YzHLx8VYlUz?=
 =?us-ascii?Q?x0f2HwWwlSDI1PFJX3c+T0vsjANidULfYhrcfcCPd/UDEowS6z+KOiomuMK+?=
 =?us-ascii?Q?W28HL+XDJaWjG1QecyL+8xWTcUTt236r+7PfrBVzbq2Z3wHzsLG9Wu8tr0nc?=
 =?us-ascii?Q?ws+gxPkRBYRlC6E9Ok/Trq4Zud2KzDb6l/4qlGaPs9AbcZaKiHggiAzHmLk4?=
 =?us-ascii?Q?GehirV04B2G+WNVbegsk+htdduyJRIXct6Unh1hHPMN767xqD7D2quxaIv7h?=
 =?us-ascii?Q?JXI+q44dyFONYvMr+Ban1ymsI+/oMkctqBNWX1veDIyVAjH6ZKw9opidJ//D?=
 =?us-ascii?Q?IpzfzqKDuBlTWo2uwMzYEH1ZfhQssE61mmwzwtTKoD3rLaEIjKZJ9OqsjF5p?=
 =?us-ascii?Q?rZ8qBQfF6bohzkIqY/Xi5vXt7h6XHWo0TP/4wd9b2gercK5yfSLO3XDcJhLo?=
 =?us-ascii?Q?9eIRku8eEYMFxiez9zIPYe1Jic83En5KMv3tCk9OryV6mNfdXPxQlhFPpPUx?=
 =?us-ascii?Q?iJ1b1K73+3zMxEH5+6bSPQBZwj0egR2cSlTAbk3hOEu50vVkwxx4LbJ9mIdj?=
 =?us-ascii?Q?8zdJllsnOu//cSbvdmG1dy0y0N+STgVG9XkWgNn+Lak/qKdAJE4uzHi1djkh?=
 =?us-ascii?Q?1JsrWstmgCLRzVP5u1+zGypY4Ehq073jjohw/CP4+hh3wxB88ed5hGZA6Tgl?=
 =?us-ascii?Q?cl2LjyI13YOr97fuJHrQUjSVE6h6TBl8GcAO/HziYmFZVGv8SAw6yoS6vvSn?=
 =?us-ascii?Q?U+zSvwtH+hVdlcX9zu/Wbb8u6p6wsBzMsw+sGlPdDE1XzgtPWe8qaJD63XMz?=
 =?us-ascii?Q?P3lZCeqwe0fpJi15SqjplwL0/yGpSJQ8REO0pG0kK93NPd+6WgGELZIxpk7c?=
 =?us-ascii?Q?4Ak82JhkDyyv8dmJ0dYDXOQXxQZeNTQDB9guPHGUTYIAO4YxVJM9cbd1sDfB?=
 =?us-ascii?Q?6Zx0/rD7zZigIdXTXMwe4GKtIkYUzM79wJur5nuD3rvjxcSgVgPkEMp2dCVX?=
 =?us-ascii?Q?yHEUVTdgAWt73Y6Qb5uqe78x/iiof4Wz2oLEKfSBZsbmm/98Xe54lHCgx9T4?=
 =?us-ascii?Q?Ww=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 366a2ae1-9d2c-4c80-e8d0-08dcb7014a6c
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Aug 2024 16:52:15.3621 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: u7oQ6AilZGjV08vPcbfXK73IYsVc7bm/xZmoqb/PfvuA1WlOymOCzJ0GyVAey8h5ggjSK5uXlJJr3htQ3zXpZJDOi8UiZxIzf2Ys6roBjk0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7038
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

On Tue, Aug 06, 2024 at 03:14:02PM GMT, Jani Nikula wrote:
>On Tue, 06 Aug 2024, Jani Nikula <jani.nikula@intel.com> wrote:
>> On Thu, 01 Aug 2024, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>>> Quoting Jani Nikula (2024-07-29 11:30:04-03:00)
>>>>The test code seems to assume struct drm_device * is stored in
>>>>drvdata. This is (currently) not the case. Use the proper helper to get
>>>>at the xe device.
>>>>
>>>>This has not been an issue, because struct drm_device is embedded in
>>>>struct xe_device at offset 0.
>>>>
>>>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>>
>>> The fix looks correct, so:
>>>
>>> Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
>>>
>>> I noticed that xe_call_for_each_device() stopped being used as of commit
>>> 57ecead343e7 ("drm/xe/tests: Convert xe_mocs live tests"), so we could
>>> also have a patch removing it and dev_to_xe_device_fn().
>>
>> Cc: people involved with that commit.
>
>And now actually Cc. *facepalm*
>
>>
>> Do you want xe_call_for_each_device() removed or retained?

removed... it should had been removed as part of that series as it only
reflects the previous approach. My bad for not catching it during
review. 

struct kunit_test_data and dev_to_xe_device_fn() should be gone too. 

Lucas De Marchi

>>
>> BR,
>> Jani.
>>
>>
>>>
>>> --
>>> Gustavo Sousa
>>>
>>>>---
>>>> drivers/gpu/drm/xe/tests/xe_pci.c | 6 +++---
>>>> 1 file changed, 3 insertions(+), 3 deletions(-)
>>>>
>>>>diff --git a/drivers/gpu/drm/xe/tests/xe_pci.c b/drivers/gpu/drm/xe/tests/xe_pci.c
>>>>index 577ee7d14381..2046789f62bd 100644
>>>>--- a/drivers/gpu/drm/xe/tests/xe_pci.c
>>>>+++ b/drivers/gpu/drm/xe/tests/xe_pci.c
>>>>@@ -20,15 +20,15 @@ struct kunit_test_data {
>>>> static int dev_to_xe_device_fn(struct device *dev, void *__data)
>>>>
>>>> {
>>>>-        struct drm_device *drm = dev_get_drvdata(dev);
>>>>+        struct xe_device *xe = kdev_to_xe_device(dev);
>>>>         struct kunit_test_data *data = __data;
>>>>         int ret = 0;
>>>>         int idx;
>>>>
>>>>         data->ndevs++;
>>>>
>>>>-        if (drm_dev_enter(drm, &idx))
>>>>-                ret = data->xe_fn(to_xe_device(dev_get_drvdata(dev)));
>>>>+        if (drm_dev_enter(&xe->drm, &idx))
>>>>+                ret = data->xe_fn(xe);
>>>>         drm_dev_exit(idx);
>>>>
>>>>         return ret;
>>>>--
>>>>2.39.2
>>>>
>
>-- 
>Jani Nikula, Intel
