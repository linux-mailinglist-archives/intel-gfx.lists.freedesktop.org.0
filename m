Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AF82817B05
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Dec 2023 20:28:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11FB710E2B7;
	Mon, 18 Dec 2023 19:28:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFBBE10E27F
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Dec 2023 19:28:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702927718; x=1734463718;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=IZxpJYcDcl7/UW4nldJSl/qnKjDmeBSknNu2A91UI04=;
 b=oAyBy0SoLX7AySfi36KVp9Fb4CmjjuaKmXSUN6uDQyof0HT5Lx27SEdh
 2rH4pzFw2m9dUNL15d8TvWpuJbsHcFX2iG7iCZL6n74mnAoMRRSwr/nTu
 aJV7bFWGBpPxgZWLGNYE8JGq9/J34nkcLlo9WaZe4nIPvLS9IbtjIYKf9
 H8VdeUatNW8H7ZvsjjKML4Hog3Al/OfgvfXPgSPY07KDfcAkcM/sylyYk
 Z2mZNV/2t9468xZWo1LuR2gczPt/58kwN0dzBm0obiArgSZwj8W0b+fsi
 Ji6ltUQKY4scaYNyv0l+eIjuz5zIR+vrdoWZt76qv0cAAIpn8g2QvaHpa g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="2766141"
X-IronPort-AV: E=Sophos;i="6.04,286,1695711600"; 
   d="scan'208";a="2766141"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2023 11:28:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="866335995"
X-IronPort-AV: E=Sophos;i="6.04,286,1695711600"; d="scan'208";a="866335995"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Dec 2023 11:28:23 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 18 Dec 2023 11:28:22 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 18 Dec 2023 11:28:22 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 18 Dec 2023 11:28:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H0MbfYMvEKwfM21hP8BrdZ5+KTvscZiqk259eKXnhp9jUV4GLC7T1SqV0iliu+UGfpghTo7c5eecm6FvVTWBiQ0u+rvECT7gWr5SmmmdNIumjtIkc4UNc5AC3k1AixKp61eiD5KlE20bdqeAMsDh4rORIW3Zsw2QU8Pch7tkKnOkLxDVehr8YT6y+zM2Q4pCmOVa7hi8BvqkVQqMFCAbqGQQpuTp6BjDxu0r624jw8MJWfn3oTSFTr+OLpKfDam2UaHsnFHHf9T+X3k4C4AoRsy72DxY6d/eoIPy36X1fluV1RV5+AKBhkmlqYXfLFdbRVlh1iEanyJ+Ng/HjXAu0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CxcXVM3LBOkpueOR6VNU9q6LGDYt7hskVurPUB0d6IQ=;
 b=Br8UOnZjw7Z+ZZykJp+VYt1U+bzYAwYbzITzMryzFus9ie8QJLoDLU3Y+JHtfF05PeKurcydWntlkDhusochyW74Fs0VVka0IlYt3iDhPTKgCMBWMMQvu4573CzSr9nSUOUuM0VrBgo0UeZBTJxKCe+Tf9t5UalhE/iQYeBynSu6QXLrG9bO35BhB389CB+toQqz0gLJaGZN85oNgekNE8TDs8CehybNwi01ueyQHgzuOi9YbIGl8p6th0eWmmjnVNk/fkU0i3R83KFuZR6uEt/RpK6g6AEhuF2WyrHfNl1jbWL1GBzfFHjQsBWnQDmlTkU02TE2abosJ6wwjG75yQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DM4PR11MB6239.namprd11.prod.outlook.com (2603:10b6:8:a7::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.37; Mon, 18 Dec
 2023 19:28:20 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::ada2:f954:a3a5:6179]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::ada2:f954:a3a5:6179%5]) with mapi id 15.20.7091.034; Mon, 18 Dec 2023
 19:28:20 +0000
Date: Mon, 18 Dec 2023 14:28:14 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Subject: Re: [PATCH] drm/xe: Fix build without CONFIG_FAULT_INJECTION
Message-ID: <ZYCdTlH6DrCAM1ZI@intel.com>
References: <20231218143023.1688831-1-rodrigo.vivi@intel.com>
 <9ab982c2-f278-e54d-09b4-e6738c443dce@linux.intel.com>
 <87a5q7uyy0.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87a5q7uyy0.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: BY5PR04CA0018.namprd04.prod.outlook.com
 (2603:10b6:a03:1d0::28) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DM4PR11MB6239:EE_
X-MS-Office365-Filtering-Correlation-Id: 0fc10923-1b93-47ea-65fc-08dbffff7d81
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: na6SIMmXQq7758pV2/HYQFhQUUbqDzW0I/aazldgSorNpKFtBoiuUyRDvYkPNXbXjWRlAjEKSpw0H3yZSaQcwrEaG82GSgGicKU0+3a2JMiJQ13vGzXLUAVy1IflIgBXbUIpEZ7aqSAy4hJ96UkrRSCdhgyBDaywhH/MN+F9YkkP6F0OEpz8ED352HM5d8DFzONvxOR+mzp1T3soqxyMR5y8x4GPvfXvnbahmgjwDEikS+yA9TwHuXtKn37hHwOU2X4R8dzcP+oB/aAhYTq7ccaAGqiAXcRaFHLBHBwSdZalkRvMLS0VMGc13WJaWeOoMJsx5oWOPu/dhQa1ZE95hzWYYradqrRVSJR0p2Wn1Ya7lLz/CM2M6gJEqQ2wy+zg1iDepfHbAxt5AtpnM7pV08xpPQcGQ1V9YZxl46LxVJMHjVlRzQggA76PL/xy1/hlsHB4b9Ny3KowOHWKbC1zJiaJfmNOWX1T3CsNj3lTxoEvS8Z3sotyVM47bF+Sf4IGb/nyOS/XDmApraf/yZmYsPJuRHuGurICWQTC3a3W/xZ/qoRfXD4JW7NbcGlQ4lHvClhKU3y8c+wBIeyBDaZKIg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(136003)(366004)(396003)(39860400002)(346002)(230922051799003)(64100799003)(451199024)(186009)(1800799012)(82960400001)(38100700002)(2906002)(66899024)(41300700001)(36756003)(86362001)(66556008)(54906003)(37006003)(316002)(66476007)(66946007)(6636002)(6666004)(66574015)(6512007)(966005)(6486002)(2616005)(478600001)(6506007)(26005)(44832011)(5660300002)(53546011)(4326008)(8676002)(6862004)(8936002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?g6nuPzBw92lH+Olk4fmulVHElfqnMZ745DZEFLxS9My3pVpVVdHOGEMUv7?=
 =?iso-8859-1?Q?FfOi2ElPoJPomsJQjHYSoArHkOxVSb3URafpmwXWz+x22vhqXYzKxVxgav?=
 =?iso-8859-1?Q?O8yvRllUjp5gtbc3haDVM9b/sqM0oaLFgFgeVl0NBWkl5MgafeXQpCLeNF?=
 =?iso-8859-1?Q?oS2kpBSB1849Fdd6maMRue4dvcqNZjGm/WiAtSwqysgKehPxK362SMuf9e?=
 =?iso-8859-1?Q?oLoSZvN9SIZR0ajBO+Jg0iDYl6clfj+y48GRDE0FHL2i4EdRQ0A0sPAm2r?=
 =?iso-8859-1?Q?eAXOkDga9c0pOMfP89C6Z3CoUOwaMcorkviflrBMAoEWRk3QtA320eGuuZ?=
 =?iso-8859-1?Q?HUTiTlwr/QomfNV/rUdgthvF8USDhWRmv0NnuTTGPuRV1McAZHc/JmXBzx?=
 =?iso-8859-1?Q?NbNYHK60+J7TCtDHQJDeYu5nuF0JDU7bAtMdg2X+JHyCcdm322+LDq7RVr?=
 =?iso-8859-1?Q?Tmz5DMerZ9/QZVhNwz9TWGy8tVVKXAAfDtPK4LoTZ9MIcKhZ2frny4znmx?=
 =?iso-8859-1?Q?q2jre+9wS73LXz+XR3ohMIxMyI2hqVUjr43DSaFQK1Oo38HKBW8wtFvyxZ?=
 =?iso-8859-1?Q?2hi55pXn5zevE73bWlIdIS7FxSoWcld8Tq2Bi5yeQ8XUilayxYMDUKpgRz?=
 =?iso-8859-1?Q?5cr+RXr/1jZfzEWLLzx5PVSk4ToquzdmnDgLqAUPq6FZRBeI5IrHcdDGH+?=
 =?iso-8859-1?Q?8KoRDi109DkyGDAwYJQNTYjTQ+U0BRSH7wLF8ZBKijxwJdoWbV3R0PyPb8?=
 =?iso-8859-1?Q?ehyjtqyWjy/qZD/K4KvnJNv0CzC3TQk94qxTqlyJ+tULXypnT63b5wSXgq?=
 =?iso-8859-1?Q?/+nx5Shu1St5InEikhKitcCAuv1DwpiZwjsUJnTGriHa+TKf9rNsxypUE/?=
 =?iso-8859-1?Q?kjvaHzW55Eni4TA6EcfhVqqpOeu6EnIWZOSsdtiO6LyhPcDu4w4uHrRKiI?=
 =?iso-8859-1?Q?mjTJA8hoZ25bLsNzp2FaqyQyELwhFIFiAxb+7WfP8w4PHA25gi/sCizocy?=
 =?iso-8859-1?Q?RSpoNYTk2DhMIXqNipIXnJQHFXA1xFkQ2f9Ar78CGv4JwTYypoawbDH5Il?=
 =?iso-8859-1?Q?QII1IOxia6HbA3T2o0iYoWGw4zx3hCJ30LKaIS1DcX051fDPQKNPgDEE3O?=
 =?iso-8859-1?Q?AFbLXTMcvQS21dFIBuVpVYzyt5zb/+/qXSXoLdj49yOMXc8ApBx5US8OtO?=
 =?iso-8859-1?Q?R7ccbkNlu+hB9XNNf5TypdYITQ4aA0WFqIcU7sL1tDzpoTdQKYKsC/SIsI?=
 =?iso-8859-1?Q?hnrBrSiaUKqAPCk2jgNsh8oSGaJ/L2MPMeZwGEPWrTGRGMm5eOdJlWcYSO?=
 =?iso-8859-1?Q?HTupyzPqlGsg0TVGM24NhAZeQc6Z/0kPSbpeQeWKHarcjQ/Z46Mu5yuzYv?=
 =?iso-8859-1?Q?EIkN1pKOoQwgzPlvAVLs4khqhDp70ON9ImBvU/bkGryi4ZZBNf79Z8K4yV?=
 =?iso-8859-1?Q?lDsgRr9unFkx9QXN4olYfyyDAQEGnto2pBcTrlErk+pjf09Jp/XlovX2dP?=
 =?iso-8859-1?Q?ylzscWaDen7lBULq31haKGVN57pznCheW3f4cr7VgU6vVn1irXnxXwFc0h?=
 =?iso-8859-1?Q?3/jMXaAjdKC8jhp3t7DCZsN5BwvVfdDHAST0F1lhvQmKU/NybHan9lg70o?=
 =?iso-8859-1?Q?aLq+fQAFnRG++w+jBEEcgwknx/Pvo1+rXH8S8DHwquHzjPzG5nbNjJ8Q?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0fc10923-1b93-47ea-65fc-08dbffff7d81
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Dec 2023 19:28:19.3321 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pAQW0L6KaKklODfW1k4VD31Wj99GcsP/YAj5Z3+EZi3Fiv9D+f/uCmbzQQsSQZYZnQVSMMGN3nQ+RUJqMv8Czg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6239
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
Cc: Himal Prasad Ghimiray <himal.prasad.ghimiray@intel.com>,
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 Oded Gabbay <ogabbay@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Dec 18, 2023 at 10:51:03AM -0800, Dixit, Ashutosh wrote:
> On Mon, 18 Dec 2023 06:57:14 -0800, Thomas Hellström wrote:
> >
> >
> > On 12/18/23 15:30, Rodrigo Vivi wrote:
> > > Ideally this header could be included without the CONFIG_FAULT_INJECTION
> > > and it would take care itself for the includes it needs.
> > > So, let's temporary workaround this by moving this below and including
> > > only when CONFIG_FAULT_INJECTION is selected to avoid build breakages.
> > >
> > > Another solution would be us including the linux/types.h as well, but
> > > this creates unnecessary cases.
> > >
> > > Reference: https://lore.kernel.org/all/20230816134748.979231-1-himal.prasad.ghimiray@intel.com/
> > > Cc: Himal Prasad Ghimiray <himal.prasad.ghimiray@intel.com>
> > > Cc: Oded Gabbay <ogabbay@kernel.org>
> > > Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> > > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> > > Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > LGTM.
> >
> > Reviewed-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> 
> Hmm, msm/msm_drv.c doesn't seem to need to do this.

because it also imports the types.h:
drivers/gpu/drm/msm/msm_drv.h:#include <linux/types.h>

> Anyway maybe ok for a
> temporary fix...

yes, it is a temporary hammer.
But maybe we don't need this if Andrew acks to get this through
drm-xe-next -> drm-next:

https://lore.kernel.org/all/a5o2opdfsfnbptrrbvillogft2uqp73w4icu3mdmmwtvoqmdr2@y2fbrc6t4aew/
