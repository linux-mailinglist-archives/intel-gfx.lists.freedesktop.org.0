Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60BE79BC33C
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2024 03:34:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D09E10E135;
	Tue,  5 Nov 2024 02:34:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FOE9he4b";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED7A510E135
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Nov 2024 02:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730774063; x=1762310063;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=td/Q2Zw8uMiBh6xULpiHxAUDkUu8dlmE0wz+xQUoJoY=;
 b=FOE9he4b3D3p0ScCPnMnEm0phLs08g3c0YoJT2Bx7S7vv7e+1pFsGCWf
 zwoEuTjCQVultma4cRX3u5uU6H3Li4/cC+3M8mbZOWsv3YVaNnIS8lR6F
 RbbBZeWn3ZnUIa1yaSvKIDk09W/11/M5KZ8JNdBADdS4vF5UlN0ntQ+C+
 QGEn7B1+tVHOCuOx6DULEeDeF73+eocH6sMcD86zT1qjfcFZEziZxwzI4
 /5cM51ed2Cdm2EsyszmUYw9H9TZTuAbpNmKvtrVagyMZYHHSfBWIp2wkD
 81SKrAisJ7AwTZ01pgiq9oqgoibmwjlKKV9qCx+Dmg4pZGuzC9mlysEy7 A==;
X-CSE-ConnectionGUID: crSqblDrTviutyDAPdwy2A==
X-CSE-MsgGUID: UcOf4eDnT2ucXzv3UW2gpA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30450532"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30450532"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 18:34:22 -0800
X-CSE-ConnectionGUID: kOtT2HY4RZ6Z9BxWcWRAqA==
X-CSE-MsgGUID: Lw6fxVKdRceA06ucTZna0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,258,1725346800"; d="scan'208";a="83952284"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Nov 2024 18:34:22 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 4 Nov 2024 18:34:22 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 4 Nov 2024 18:34:22 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 4 Nov 2024 18:34:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=v486erE+riN4KsyJqFlPkoN73Dr2AT0sMGTeu2kJj/6bfoMiqKMmxs0jPq6hQ6GAknY10NWtJ4IhMnAhiW13kQBq5OKy+LrFDJk+5u4biIH32pqIUtrrNLtJLVmR+31uVqbPn4l+oTiyXVrOpnzT28/Szq1KU+Kw367bo8dGzEfeXITGm8x1DzCoa0+X1QQiq+PTj7sIUxcVn0GnmPwNaLo3qHYQPT4nUvb4Nwppd5RE5v5qiV2bFXfL8iwJTkR125H4WfW+pd5YKIADaAGxijiIlu+WIuFlSUcCSTnmPunBpWfARfFJSPsD4NHdlLoFRBwzjW2EwEaV+BoqSivzYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=o8R9Vnn6/bYOk+cqPBdsYYubbkIpkBICTbWeFWGm/Y8=;
 b=TIaqIqfnvjq0TkQjW7TritF0rKINm73cztW47b8D0zyk6Np/nxTlKab7Qe4cAuv1tMF/JVmZowIC4qG3ExuPyfguSFMnUVu7AR8vBlLQ3k6Yyrp+8DN8/EtYcA5WJfzHWknbS/8S2AmRZemqqSIcsAHjeaX/qyuc3tu9aOzDbzXUpBcVTcsHBGrK/FooSTEHOWLmJQYBI5nc9zEInWlep7hT7TDSVXCfPW4UJNemjh5/WZzAyymWXfLV5FqApXVCC8ms6cPT31b2pRFdDK/guoxkZWsR0rRkUFK4i6M7ch93VP/wmfNm0IqTthnFzPHbcvGcpjixk1Is736Irpp54w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SA1PR11MB6806.namprd11.prod.outlook.com (2603:10b6:806:24d::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.30; Tue, 5 Nov
 2024 02:34:19 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8114.020; Tue, 5 Nov 2024
 02:34:18 +0000
Date: Mon, 4 Nov 2024 21:34:14 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Alexander Coffin <alex@cyberialabs.net>, <matthew.auld@intel.com>, Imre
 <imre.deak@intel.com>, Ville =?iso-8859-1?Q?Syrj=E4l=E4?=
 <ville.syrjala@intel.com>, <niranjana.vishwanathapura@intel.com>,
 <andi.shyti@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Jani Nikula
 <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>
Subject: Re: i915 potential deadlock
Message-ID: <ZymEJhvH-hrQ11hV@intel.com>
References: <50b67f9f-e615-414d-abf5-4ee82e35a353@cyberialabs.net>
 <ZyU1SQjAfUQBgbPF@intel.com>
 <ebe1c5bc56eb2e84e791ba5e9bf2c714@purelymail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <ebe1c5bc56eb2e84e791ba5e9bf2c714@purelymail.com>
X-ClientProxiedBy: MW2PR16CA0010.namprd16.prod.outlook.com (2603:10b6:907::23)
 To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SA1PR11MB6806:EE_
X-MS-Office365-Filtering-Correlation-Id: 15a4ed26-80eb-4303-d618-08dcfd425904
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?o4i0D71bZ5gg5uEtci8nkz84HnBk30sX5QSFktuAnKz+FnoIyVNWOiJKhtSp?=
 =?us-ascii?Q?u8BNyuXtamxIimvqUnL8Kh8O1TPBqObtO0BEkqbC2Ay2cFFJIyunqcV5+8Zi?=
 =?us-ascii?Q?VzcoVEChVJeD+Ba4R76mBGsWUh6IHbTA2JruQjT8LX80PbQMvB00Fjp6P1mP?=
 =?us-ascii?Q?rjmoToREIJSLEsF5G9W1p/8Km1rGQaf/PJcIf82t691x2p7YSEbRHLZJ8yhr?=
 =?us-ascii?Q?r0JOdlhBl6XSo8g+UusMPZ1mlBnRFbVKGIsjKh9ow/xs83WP+xjxbAVP/KTd?=
 =?us-ascii?Q?kji4nSsLy5HsSzUfsCsYebX9jQbSVdk/x4Rg7A/4rB8QnLKvX+TMJxHDZKUT?=
 =?us-ascii?Q?lH433G6DQtwzv/nPB3YJuoyyjZ6EHH754JQF5HHItByNH5oplW4TgYPA/dFf?=
 =?us-ascii?Q?QmaYzE9PPl8fLyq1zFfkL1QMnre2aNyQQUs4DZ3TtfJeapJKNB//iWzVZteB?=
 =?us-ascii?Q?bZfNbka4dowdy/o065o7TKK+3Kr7/mAhbIgYkvz8yeQFGLDYB73V8RTsI6s7?=
 =?us-ascii?Q?znHsxIrB4VjpMtJpmf9xtAedRuMRl0y8/1akbFUG65+aKtCPGcQqZeQvk7TZ?=
 =?us-ascii?Q?GSBusu/W2vSy3Ka9u6blzU1pS7RumxcFjbCGepLS7Sff3NWB75sa+GOBtvkV?=
 =?us-ascii?Q?h3FVGzbHL7VU6HthfNFIMhdWf6ckqoVD1PiCULPgwn+/cgoNxvOStuZ+j4EC?=
 =?us-ascii?Q?TdQEZ37SEfwE0Zv1vgDzaIXrvt+D0gLbnlONI1NBW3UjSranS5xAU4JBiK95?=
 =?us-ascii?Q?WyC7uYFTDLXfpI40MNyejfefmONCJnVX4HMImc0IdfRXpTNgLBNN5Lym+KdW?=
 =?us-ascii?Q?lzRO9SlcrQS1zOwVvjeyCKPRjxnCWjVpj4XeuJOYH5XTyJCanSDlHZULHV75?=
 =?us-ascii?Q?jUK6uNwbvr4BeDrg2JEym7Qu2U1XtFmXcngvEXBLbYrwcOXAAcUzoFu7QAzk?=
 =?us-ascii?Q?+4jxb/oblaioa1/zBfmC1a12PjjKeqQ+7htUF/gvpi/yh/+DR0ArjNpZW0W6?=
 =?us-ascii?Q?jc08n/5sEul7uCzKI/zXF2wPkNsHLNaX5zsXzNtCVkak/OGeM2OrUKB6aVh/?=
 =?us-ascii?Q?ZqIeLNTouzn/Wc/3NVxihFI0JXjZYTxZ66pmTr96BYEzyzfeL5HybRId4jHZ?=
 =?us-ascii?Q?p5FRtlcM95FRb5KwbP/Ohl+murZp5Y89bW/WtsQbm1U1sbRmX1s4tk5itAci?=
 =?us-ascii?Q?AHlRevk2kaiUN4NKy1a8sygFnKifAHhLk5olQsmE3r1hSCUFqsyEG9/U/Z2G?=
 =?us-ascii?Q?WNA73KEBK6zAk+3Y7rZL?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?WCeSIq+Gu9/4nyC7WSud9oeyFORqzhd01fh9KTCsRXRN1Dv1vHJyG6egZ6w3?=
 =?us-ascii?Q?1SAMC/ZVgjyfEpEGjR01DNFaRx1AqUjbkWq6J/aPZ/9sOSjtdU2xKss74mdu?=
 =?us-ascii?Q?PXEuJu5mnSllGJohCefKNfFJnQqmQfb4PRoCfgjCWZS6HAMmVxJH2fBGJo8h?=
 =?us-ascii?Q?/6jTVZMoH4m8B12Wg/vZAsKMoAfnEIsO5gYOV+qT4JaIltTw2w1vqykkDNsU?=
 =?us-ascii?Q?oPCQauhRC+bI/lhG/g7PI9PH36dwQWMn5VsgDowIv3HugAz7BwxUZYONXzr8?=
 =?us-ascii?Q?TLzsiw4phwi6wVRFQ03fQG7AS02JIUi6SYQUUZt+Ydn78pCm/tZnfkQdZdGh?=
 =?us-ascii?Q?0EFH9YNf2YSAYvSnPlS0mXd4p4pww9bqF71RGoM9Lo9IYFvgZtHqcIHENMy7?=
 =?us-ascii?Q?U6XV7RR9z1rdsR6SuzYOSMXDo3tHUeSvGs+xkdTDkVxGwZi0FDdVZm7SWdNi?=
 =?us-ascii?Q?SqFTVapWRLpwF+JIFm7LzO2DeA7j4H0cMBSNiLArTnE/J3w73+C+5fUzxVgl?=
 =?us-ascii?Q?p7nk4dywGleyO/lnZVd4985KmWsvUE2HuWu7LVOZjNnHqxbv9nEYbUKFHhL3?=
 =?us-ascii?Q?XPd3/KnCxk1hfsYfdqmoTmXgOwlrX+3XT996ICGYbLxT6PIIsINdyrXeBcuv?=
 =?us-ascii?Q?g+acvrS/rlEJBC0Mz2TaJG9FjlktC7cD0JDSfZZFJqAShrJUyntslk9EBguN?=
 =?us-ascii?Q?QGE22a2tOJBK4uW1M34SEIbGBrkWddGNehQRxi0GdTH8BLGq1GW6/AdT0TC6?=
 =?us-ascii?Q?90lPKTpJ3TwQLxq+MMZln0yEsZxHbDuAyk62FmFuprBIfEYpnQ8AyqH++rwU?=
 =?us-ascii?Q?9UvIbnm2JdbnxloNqtIUHuazah9uzOT0gW2NzABtvKPE8cP/JxT2pqGieMDC?=
 =?us-ascii?Q?eepbGmR0PUn68IQH5WwnYUeFQFeHtLafq1Dte3zwI9NfkoAywvfIR53h21Rp?=
 =?us-ascii?Q?4BlTnYBOAxmH3Yh/4kT4kaz9088v9I8YQWOTkzeO7oWOmsqApWUpZqitOs6n?=
 =?us-ascii?Q?wT1nXqlEDlMSPezUZVTXAApI0WkhRnUAY1nB4AoUk3kvaTCIcyxmjtEBXSF2?=
 =?us-ascii?Q?QO6bwVSWlPwBhQlmUu+bXGgRsTA2Yue84CV+Ou0y8/FxQ3ZFe9jCxzFqLu9V?=
 =?us-ascii?Q?lUCaIRFlWP5oJDtgtlwvfswJEZ/IHerSa/yshsCRYWrgHYcwDUgzTMhXba5v?=
 =?us-ascii?Q?2BPrw/tVtNh4hiE1ho0494fxxv/MAEEMEjy57XATAk2AywklnsPtqYvbFQMW?=
 =?us-ascii?Q?R1dLibJCrox1bc/e3b69JG41PYmeq3sasGIW/GUZHhka6CzYt+9vtZkgls1I?=
 =?us-ascii?Q?ZIyVxLiHHanpm5/xdWj+qwNdiQXpJHwQxEr84yW7gRAzRpxfJ+jfaETIEQEc?=
 =?us-ascii?Q?S8NtVRV+bI/DkA459JMhGmXb/QZzX2KjWGw4lPw6KhDrngEoc5O2hZRjog//?=
 =?us-ascii?Q?NIVzVjkrIDON4gFvg5f888OPvFd7TClxgOhCgopO+Wzw46Pz3ZqP6eCI6JaO?=
 =?us-ascii?Q?4V/XdJZ9nRR1WFgx947kknB7sBxwjThypPVMSgc6HVTrFS/SyIQ1ybGA835y?=
 =?us-ascii?Q?9Pehd2ewqLhslXpvnTn4XIZcDggQD1cGgd3EfamydPkBQWxQWrZR8dYaHLxD?=
 =?us-ascii?Q?ZA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 15a4ed26-80eb-4303-d618-08dcfd425904
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Nov 2024 02:34:18.8636 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FeM03HRcMuwFst3jcrX5MXKMPkLMrTRR6RsIDhqKw+WL4bispTtaT9l93FE3XtzOoYcB7SgnzFIbRQafVbnP+g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6806
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

On Sat, Nov 02, 2024 at 01:46:15AM +0000, Alexander Coffin wrote:
>    Hi Rodrigo,                                                                  
>                                                                                 
>    > I'm sorry for that. Our list is moderated for non-subscribers because of   
>    the amount of spams we receive daily. But I eventually got to your msg and   
>    allowed it to go through.                                                    
>                                                                                 
>    I am sorry about sending the email twice in that case. In hindsight, I       
>    probably should have subscribed to the list and then sent the email to       
>    avoid this issue, but I don't interact with email lists that often so I      
>    didn't think of doing that.                                                  
>                                                                                 
>    > Could you please file a bug in our gitlab?                                 
>                                                                                 
>    Of course.                                                                   
>    [1]https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12677             

Very interesting race...

Bringing some folks here that could have some ideas. I don't believe that we
should be accepting that plane pin call before we finish the probe's initial
plane object.

Folks, any quick idea?


>                                                                                 
>    > Well, so many things changed from 6.1... Is it possible to test with a     
>    drm-tip kernel and see if it is still reproduced?                            
>                                                                                 
>    Sorry, I mispoke in my last email that 6.1 is the latest LTS release. 6.6    
>    is the latest LTS release. 6.1 is the default for Debian though and isn't    
>    considered old there, and that is the kernel that I use on my personal       
>    desktop, personal laptop, server, and work laptop.                           

Nevermind. This part of the code hasn't changed since 6.1, so we likely still have
this bug.

We usually ask to test a recent kernel so it is easier to backport some know fix.
But this is not the case.

>                                                                                 
>    I was hoping that this bug could be debugged (or at least attempted) with    
>    a single deadlock report (that has worked well most other times I have       
>    reported similar issues to kernel maintainers for other drivers).            
>                                                                                 
>    If I knew how to recreate this issue I would gladly try out any kernel       
>    version for a quick test. Or if you have any things that you specifically    
>    want me to test then I would be happy to try a newer kernel version.         
>    However, I am not really comfortable daily driving a bleeding edge kernel    
>    version on my work laptop as of right now. I may be able to read through     
>    the source code to try to understand what could be triggering this issue     
>    and then figure out how to use that information to recreate it on a newer    
>    version, but as I don't think I have seen the issue since I reported it      
>    I'm not sure how likely it is that I stumble upon the issue by chance        
>    again. I would feel comfortable daily driving random kernels on my           
>    personal laptop, but I use an XPS 9370 for my personal laptop and I          
>    believe an XPS 15 9530 at work (if this is helpful information I can         
>    double check this and provide more system details) so they aren't the same   
>    hardware (I have no idea if the hardware is relevant).                       
>                                                                                 
>    Do you know where I could find information on the versions supported by      
>    Intel of the i915 driver? I can't seem to find anything from doing a few     
>    minutes of Google searching.                                                 
>                                                                                 
>    Best wishes,                                                                 
>                                                                                 
>    Alex Coffin                                                                  
> 
> References
> 
>    Visible links
>    1. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12677
