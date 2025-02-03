Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67412A2611F
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2025 18:15:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0ACB910E109;
	Mon,  3 Feb 2025 17:15:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RdiUxWEr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81BF710E109
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Feb 2025 17:15:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738602935; x=1770138935;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=oD6uxaSU+TgvBC9bR/qyJOieAjd2X8hhRA0xQ2+6B9k=;
 b=RdiUxWEr17fCHys2QOHyYLxQam/goI8bAPQu6eOo+5PVoU1hj12nOwm8
 PDDm08kXqed6e38/1tYO8bql9g3+IVX207jU7dKHsI1G8KQvw/kVRhFjY
 0VndcPN0jMflCcMJ8cESv/muV6SK+sqrqgtq4BYlOJi2VvhoS8lCotUgP
 5fAPunoglJoxlOhXnZvyYjJsvz/Vi5bDFukw/OdUykA0TJ8lizijwzvNA
 Sq92hIxUmXxTDwAG9lQpMywoyda8BMLraccqjhomfhVhAtzwOypGXe6Ug
 kDTle5lWc+NGc5fAAQfsrduZ96bb4o1Il4bD64fO0ZCWB4byXw0w/VPWn w==;
X-CSE-ConnectionGUID: Ukqz+QNhT9ihK6khhl+25Q==
X-CSE-MsgGUID: 5ZNHYXO9RjaKp+2yB9f/eQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11335"; a="41936821"
X-IronPort-AV: E=Sophos;i="6.13,256,1732608000"; d="scan'208";a="41936821"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 09:15:34 -0800
X-CSE-ConnectionGUID: fBwuuMj6Q6a4dQpXmXvBHg==
X-CSE-MsgGUID: sSruUmxxSwuA+rxfHYL6TA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,256,1732608000"; d="scan'208";a="110510922"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Feb 2025 09:15:34 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 3 Feb 2025 09:15:33 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 3 Feb 2025 09:15:33 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.48) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 3 Feb 2025 09:15:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PvUnreY0yDIjtVIpajbHXtvdv5khluGmZFN+zn5aoyCkS3Ejs3JMCvzd2OYQ6OtwNn5obD8H1Vzt3eV2tueay1mOpWDS/rF4p4x1+x21NKcmTmgxgPZi/8xI5GnYt1OIzUZN2kIfIQBy/hHYaMl14iz5Hut5Tua9yFIam9N482v0EoPnnhfwLSS6j+Ek7YOy/xwoYmQZQEYKcp+GW9HDBe7aJ13QVwhJsQmcwBNCQEt8nZzvMfsV/PtC3iWlvXVIjJ47qcO1RpykNp5aicpgMoCe8853mSwR02FcEk/CaH1sOzdIxauSAI5GGcNbuulKvZ4FJrC0xbk7cVGBfYoiLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IwT09jwtA6B1Bb2fKX9txdpE2UkpibLlNmeKBwoa8Wg=;
 b=tAxMJV7P6VkdEkRUwOS7Wj2ZsxVgFbI9TrdjME+Iss3Fq7oBpVeTOH7JGu6z0PfQCqV3Nq22ukAdfFcd1B7TWZ2pSAvR6jPTbsX9cbveqqeEhLWqOwFOgfg2dyV1KSpg3lMRoEz1eKyHr5Oha64B9MRkdf30E8qXschsYv42gN9vApa6a878OAmHHKtppksdx+bUWRx73Ig3zmlrBrHib+KyBDFtfv2PnRhPUUgAXSJq7KGAZVzkNXO6hjdygceq4raF5tiJjCyxUdDW06DgDlSMASALCEBmfw5SKwZEMPEko4h7yuY2li1qFIZlUjjAYb3BZKB3RQUU1AIG66r4lg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7SPRMB0046.namprd11.prod.outlook.com (2603:10b6:510:1f6::20)
 by SA1PR11MB6870.namprd11.prod.outlook.com (2603:10b6:806:2b4::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.21; Mon, 3 Feb
 2025 17:15:31 +0000
Received: from PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc]) by PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc%4]) with mapi id 15.20.8398.025; Mon, 3 Feb 2025
 17:15:30 +0000
Date: Mon, 3 Feb 2025 12:15:26 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Imre Deak <imre.deak@intel.com>
CC: Gustavo Sousa <gustavo.sousa@intel.com>, Mohammed Thasleem
 <mohammed.thasleem@intel.com>, <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/dmc: Add debugfs for dc6 counter
Message-ID: <Z6D5rl5bcI1v675e@intel.com>
References: <173858999403.77773.2784787564938835855@intel.com>
 <Z6DSC6Z1q0nsd7MF@ideak-desk.fi.intel.com>
 <173859479977.77773.12623605896722676495@intel.com>
 <Z6DdQuYe1Q0Pu4Fg@ideak-desk.fi.intel.com>
 <Z6DktvZQ-NzLnab9@intel.com>
 <Z6DoVSEBaVp1QcC3@ideak-desk.fi.intel.com>
 <Z6Dq8iF96I-nBkPh@intel.com>
 <Z6DuZS_9hVqzZuwA@ideak-desk.fi.intel.com>
 <Z6Dx4ypYV3NJVuf1@intel.com>
 <Z6D0BdYxiq8rLYnx@ideak-desk.fi.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <Z6D0BdYxiq8rLYnx@ideak-desk.fi.intel.com>
X-ClientProxiedBy: MW4PR04CA0359.namprd04.prod.outlook.com
 (2603:10b6:303:8a::34) To PH7SPRMB0046.namprd11.prod.outlook.com
 (2603:10b6:510:1f6::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7SPRMB0046:EE_|SA1PR11MB6870:EE_
X-MS-Office365-Filtering-Correlation-Id: cdedcd9c-461a-42fe-f335-08dd44765c65
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?PC/VGI5w1dvLYrZUPTWo+KxdbP57Eb8W6vvlItvkC8ABRD+5xwVtIAG3k8CZ?=
 =?us-ascii?Q?lLxLI/ePWrF7IaoEPO4Z31rR4OXsUBNbxC09ttPJwb79y2uFgV+cFtHW+rdq?=
 =?us-ascii?Q?ER3P/KikF2LbfHE914IgTd79AgoiS6RmUh8bY+KanMLLkB0GN8rO0yqIDxay?=
 =?us-ascii?Q?WjfVd9yDh/L+9Px2jF6mbFOx4BImuAEarJP2msybzrq54GcSrKR5zbaQEprE?=
 =?us-ascii?Q?63FJ6yzvssDrbj4ffHCqHb2hSkZkMK0XSzlW0RkmyLYkDUFAmMLULH8PvEYe?=
 =?us-ascii?Q?1CG6iAM91pdSyWFOsjzO2OieqnnEvKuateOCbAryBruQ7KGbO/LIGwv8xO3q?=
 =?us-ascii?Q?i3cNnnStG0PI67XMrzVgT513TyHPSMIxf8gegZjdXqHKMBgQYEMjCeZR4yCZ?=
 =?us-ascii?Q?3DZj4F2cxDSaC5crMXSKs2XpISlTYzASYqpaDDq0AejpDVAIXZEyltXir+UB?=
 =?us-ascii?Q?w9txy5MC8W0ZnrHG85An8X8QaEIT2ED/LKzRlPGIzRo/yxjMHMCj8opic/Mc?=
 =?us-ascii?Q?hVyqbkkgDh4E+ZIhQQIncaHqIZC8Aux4980QwnO2TPzyBXmHu2gKa3zFVYX8?=
 =?us-ascii?Q?ek8eMKsKJl9SYLVqG391nfmUV7rgbftZJgqqkWJbMCo9hlNUPL4ldxd+liwy?=
 =?us-ascii?Q?mjyQZSOzPfLpKh+d5izNSyObJdIMeI8esZYoCAls09JcQ9qx8QSbuEkEWZ1V?=
 =?us-ascii?Q?l/FGPj11JeawxOaSURhQ6r3lJt4P11R0EgSw2W83CEEjxqT/JaX8ZFzZPKby?=
 =?us-ascii?Q?bzxi3aSuoNOfBfph7JqlBDDBf7eV7Z+zn5RPANeW5Yu/C8neZf7JxAA+7V8b?=
 =?us-ascii?Q?PMI0/maJcHuwtBe1IuGh1/CV4r+slnZLljV9ZW2g/Uw2WsOSBuAdoqksVRy+?=
 =?us-ascii?Q?COkP/d40vthsanF934NSXzOaMgbaZnknpT+x6XDOvmfTY2uRy4DUwZANJrLc?=
 =?us-ascii?Q?kVsqnM3L2TlifvRDSM5ni7Zt0ZgRZSRLgDf7XrC8N3wMBAWrX0Sbs4cjweX1?=
 =?us-ascii?Q?ILzmgmUiqLuWTwpFpaOaRoibaiKYwcAvG4L1AWU5CJHEoDeUlGx3V/ZkTNYY?=
 =?us-ascii?Q?NONiz51sY41jeE6xaiYCqbZZMFnLAk5fAlCzpowcc13x+iknEclroIvTqj26?=
 =?us-ascii?Q?fou0Bi3zH31ENP3/J3zIt1ArfVjukoQfC7Wd38kqKVN0ytXwn6u9znAIrU+Y?=
 =?us-ascii?Q?tKThwLJYOKl5/sTTMRUqvclLliYjQM1X44PV8v4XrNL7qf2PBqyujrEuPPkg?=
 =?us-ascii?Q?fNJkUW+4reDyAJik3/sxKZx7ZxgrZXtk/JM7Yw4gTmpVWk8evdhXYxuErG62?=
 =?us-ascii?Q?pjmOyArZny16OsZyOum20DxJBZAMkpuquj88gMLxQnqmZm4j6lZMWS29ausT?=
 =?us-ascii?Q?8KXp6cCuuKqT/Kz9aQj+3/LlLxFx?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7SPRMB0046.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?0n2NzurQ4Sfkb82bnroRk42hvXWVUapCYUKxA9RtP4sJA+3xjfy5hDlgQSdy?=
 =?us-ascii?Q?VNJOzzrN/jW6mdr0Ipctw1w/J1OUWhiLnrEKcaE+WuBvwFGKzFjqEo98Hnue?=
 =?us-ascii?Q?q2kkY+YusZjFRcZXDvn1ynvqfARpMHAq4AWPwVarB3Mze3/5vqbHC5njL5ZH?=
 =?us-ascii?Q?nEuyWPWEXQypO5X/YiG9Ri1rMjVFwlD5BB96evhOHl0JlzeN2nmE5j6oXWWc?=
 =?us-ascii?Q?wdtWbPPeLD0PzBkjYB9b8h9SyH0/k19Esiv4fKvzjeC8YvA+PWWs/+UtyuG4?=
 =?us-ascii?Q?VtLwZoQXOdqntw/Y9BYMIVfM5QjM826Kf3wpzbNvirByKvbvnH5YwWSCVTbe?=
 =?us-ascii?Q?PxllO0wD+Gf0PX202QEDp2nvHS6ZL4cBDByzK1HzuzK2nryINNxYdZ/H9qvE?=
 =?us-ascii?Q?WRDxsmNbXPB0MHngAABcBOrzace9uSLkFjuuh3l2yE3jgRm7XzdjZSizwdna?=
 =?us-ascii?Q?EcZZQ9ksNhSUQJYppkcX42EtLNS0Hth1/oDQw0A5F8qtrN4wUbcVjYDZ0cpM?=
 =?us-ascii?Q?3aN6jQshsVl0norykzJNc8NOzuzOSXF+i25sYLdn2O/VYTLOyqiwqpr8NQ+q?=
 =?us-ascii?Q?JE8c54rwyg2aA+zBjk27pdGJnFhShCymukW8P1rWMb5e+bXrqzIFf38nZ6ox?=
 =?us-ascii?Q?4DYfQN79qROTP95GDMyhTsR6JNSMkracCOO6obh3L0xZCAe2yO722eQgjGuw?=
 =?us-ascii?Q?jV7TIBJCh5IrR/Gh813T/YgEIl3Y63+r35moJFH33CLcSFYXipQRxmylUBk3?=
 =?us-ascii?Q?r3fbPu0sgxU+NOoY83Q2PFtO0aYT8A6Tjtva7MlismYNpzeWxKwYfEyewunE?=
 =?us-ascii?Q?eYw3S/zzaahXcBYAG0fGsjIIm9n5LSnlN78pWBLJFQx3SuMLLuY34aDB3wIg?=
 =?us-ascii?Q?No/P90WVY65rGS1yAvByh7aQ5I3NIPuzjr/x5bH19vmdM6XVJqCsGFGQs67j?=
 =?us-ascii?Q?1XV0culO3ouAUH/tyWQWy6J7tnYtQ9krGb2LQg0SnziHhRi2GiRQCFoEbkx7?=
 =?us-ascii?Q?OXy1c+IXDMtYpCCIIRRBM5ztIOyZ4t459Zez8INQZRAwra32x0opuopMM26k?=
 =?us-ascii?Q?tWEvKeKYz/3SW+Ui/8GFygPyyE1ONJ45ktiHccRK1U8CpvclcOsZfKcI2Hs0?=
 =?us-ascii?Q?J5YTApwQEwtp61QHli2uXrFhkLQ+UBBrzpqWvap48aN74oHtpV1Zb+57Q+pG?=
 =?us-ascii?Q?SaukDHu5zb8yof6HsXRMIldbe3enKwrGjXHYnCWWU9l+SpwkiFzUDW5991rQ?=
 =?us-ascii?Q?e4rjm4zvJixSeO/LOsA/bsH+GGgamJIaeEPG+Vv2roGHP01h1PPiOBslv2YK?=
 =?us-ascii?Q?r3/uXv9egg9wuhMc3Wz7q3Y+C20RbF1bwcUznICW4jAgmvSRDO8iDcicapL3?=
 =?us-ascii?Q?yrbsEl57lfwEpKLLPNDUZpfuDXFfsSy67guCXtafCuBCVZcPpB35hvderJ38?=
 =?us-ascii?Q?C8K/wWW/hY68mVi7peljZQX7WtC49DDHaIgxxzPChKSdN7uIJv41Ts6FRv/e?=
 =?us-ascii?Q?NQIMMepMSKyvJHnH83ONk2+pjiDcqj7K9iwUXvy1jhZHK5vwiIsX+Lh8zq0r?=
 =?us-ascii?Q?XA6Tl2HiRZDy96IDLVGkDa2fjDVfQxu0m1WPEyxqhj6NsocO/Q8IvlfJXJOw?=
 =?us-ascii?Q?1g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cdedcd9c-461a-42fe-f335-08dd44765c65
X-MS-Exchange-CrossTenant-AuthSource: PH7SPRMB0046.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Feb 2025 17:15:30.5664 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /H+tKbcDbohVf6VrcKp8YX7B2Txqa//dw0DG2RHl39bmIxEETzW5SWKj1enfYEH0iH6Uo0R6Mr0WR03Apu2AGg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6870
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

On Mon, Feb 03, 2025 at 06:51:17PM +0200, Imre Deak wrote:
> On Mon, Feb 03, 2025 at 11:42:11AM -0500, Rodrigo Vivi wrote:
> > On Mon, Feb 03, 2025 at 06:27:17PM +0200, Imre Deak wrote:
> > > On Mon, Feb 03, 2025 at 11:12:34AM -0500, Rodrigo Vivi wrote:
> > > > On Mon, Feb 03, 2025 at 06:01:25PM +0200, Imre Deak wrote:
> > > > > On Mon, Feb 03, 2025 at 10:45:58AM -0500, Rodrigo Vivi wrote:
> > > > > > On Mon, Feb 03, 2025 at 05:14:10PM +0200, Imre Deak wrote:
> > > > > > > On Mon, Feb 03, 2025 at 11:59:59AM -0300, Gustavo Sousa wrote:
> > > > > > > > Quoting Imre Deak (2025-02-03 11:26:19-03:00)
> > > > > > > > >On Mon, Feb 03, 2025 at 10:39:54AM -0300, Gustavo Sousa wrote:
> > > > > > > > >> Quoting Imre Deak (2025-02-03 09:43:38-03:00)
> > > > > > > > >> >On Mon, Feb 03, 2025 at 02:26:13PM +0530, Mohammed Thasleem wrote:
> > > > > > > > >> >> Starting from MTl we don't have a platform agnostic way to validate DC6 state
> > > > > > > > >> >> due to dc6 counter has been removed to validate DC state.
> > > > > > > > >> >> Adding dc6_entry_counter at display dirver to validate dc6 state.
> > > > > > > > >> >>
> > > > > > > > >> >> Signed-off-by: Mohammed Thasleem <mohammed.thasleem@intel.com>
> > > > > > > > >> >> ---
> > > > > > > > >> >>  drivers/gpu/drm/i915/display/intel_display_core.h       | 1 +
> > > > > > > > >> >>  drivers/gpu/drm/i915/display/intel_display_power_well.c | 2 ++
> > > > > > > > >> >>  drivers/gpu/drm/i915/display/intel_dmc.c                | 1 +
> > > > > > > > >> >>  3 files changed, 4 insertions(+)
> > > > > > > > >> >>
> > > > > > > > >> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
> > > > > > > > >> >> index 554870d2494b..cc244617011f 100644
> > > > > > > > >> >> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> > > > > > > > >> >> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> > > > > > > > >> >> @@ -376,6 +376,7 @@ struct intel_display {
> > > > > > > > >> >>          struct {
> > > > > > > > >> >>                  struct intel_dmc *dmc;
> > > > > > > > >> >>                  intel_wakeref_t wakeref;
> > > > > > > > >> >> +                u32 dc6_entry_counter;
> > > > > > > > >> >>          } dmc;
> > > > > > > > >> >>
> > > > > > > > >> >>          struct {
> > > > > > > > >> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > > > > > > > >> >> index f45a4f9ba23c..0eb178aa618d 100644
> > > > > > > > >> >> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > > > > > > > >> >> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > > > > > > > >> >> @@ -869,6 +869,8 @@ void skl_enable_dc6(struct intel_display *display)
> > > > > > > > >> >>          intel_dmc_wl_enable(display, DC_STATE_EN_UPTO_DC6);
> > > > > > > > >> >>
> > > > > > > > >> >>          gen9_set_dc_state(display, DC_STATE_EN_UPTO_DC6);
> > > > > > > > >> >> +
> > > > > > > > >> >> +        display->dmc.dc6_entry_counter++;
> > > > > > > > >> >
> > > > > > > > >> >AFAIU the goal is to validate that the display HW can reach the DC6
> > > > > > > > >> >power state. There is no HW DC6 residency counter (and there wasn't such
> > > > > > > > >> >a counter earlier either), so an alternative way is required. According
> > > > > > > > >> >to the HW team the display driver has programmed everything correctly in
> > > > > > > > >> >order to allow the DC6 power state if the DC5 power state is reached
> > > > > > > > >> >(indicated by the HW DC5 residency counter incrementing) and DC6 is
> > > > > > > > >> >enabled by the driver.
> > > > > > > > >>
> > > > > > > > >> Yep. That's what I learned as well when looking into this stuff a while
> > > > > > > > >> ago.
> > > > > > > > >>
> > > > > > > > >> >Based on the above, we'd need a DC6 residency counter maintained by the
> > > > > > > > >> >driver which is incremented if the DC5 residency counter increments
> > > > > > > >
> > > > > > > > By the way, the counter that we currently have in our driver is the one
> > > > > > > > incremented by the DMC. I was meaning to send a patch for the residency
> > > > > > > > counter maintained by the hardware, but have not yet... In theory, that
> > > > > > > > one should be more accurate, but would require us to enable and disable
> > > > > > > > that counter as the IGT test starts and finishes.
> > > > > > > >
> > > > > > > > >> >while DC6 is enabled. The dc6_entry_counter in this patch is not enough
> > > > > > > > >> >for this, since it doesn't take into account the DC5 residency. While
> > > > > > > > >> >user space could check both dc6_entry_counter and the DC5 residency,
> > > > > > > > >> >that check would be racy wrt. the driver enabling/disabling the DC6
> > > > > > > > >> >state asynchronously.
> > > > > > > > >>
> > > > > > > > >> I'm not sure doing a driver-maintained dc6 entry counter would be
> > > > > > > > >> something worth implementing. Even if we have successfully entered DC5
> > > > > > > > >> and, in theory, DC6 would follow if enabled, this would be a synthetic
> > > > > > > > >> counter and it could be masking some hardware bug that could be
> > > > > > > > >> preventing DC6.
> > > > > > > > >
> > > > > > > > >According to the HW team the DC5 residency counter incrementing while
> > > > > > > > >DC6 is enabled is a guarantee that the display is configured correctly
> > > > > > > > >to allow the HW entering DC6 at all times. IOW this is the HW team's
> > > > > > > > >suggestion to validate DC6 at the moment.
> > > > > > > > >
> > > > > > > > >> On the IGT side, we could just skip if we are on a platform that does
> > > > > > > > >> not support DC6 counters, at least while we do not have a reliable
> > > > > > > > >> alternative way of checking for DC6.
> > > > > > > > >
> > > > > > > > >I think IGT would need to validate DC6 in the above way suggested by the
> > > > > > > > >HW team.
> > > > > > > >
> > > > > > > > I'm still inclined to think that we should defer DC6 checking for when
> > > > > > > > we actually have a way to verify it. The way suggested above sounds
> > > > > > > > like: *trust* that DC6 is reached when DC5 is reached with DC6 enabled.
> > > > > > > >
> > > > > > > > In that case, just checking for DC5 should be enough for the time
> > > > > > > > being...
> > > > > > >
> > > > > > > That's not the same as DC5 incrementing while DC6 is enabled.
> > > > > > >
> > > > > > > > I won't object further if we do the other way though.
> > > > > > > >
> > > > > > > > >
> > > > > > > > >> It would be good if we could detect that PG0 was in fact disabled, which
> > > > > > > > >> I believe is a stronger indication of DC6.
> > > > > > > > >
> > > > > > > > >It would be good to have a HW DC6 residency counter, but there isn't one
> > > > > > > > >at the moment. Other ways may have a dependency on other, non-display HW
> > > > > > > > >blocks, for instance in case of shared clock/voltage resources, the
> > > > > > > > >display functionality validation shouldn't be affected by these HW
> > > > > > > > >blocks.
> > > > > > > >
> > > > > > > > As far as I understand by reading the docs, DC6 is DC5 with PG0
> > > > > > > > disabled. That's why my suggestion above.
> > > > > > > >
> > > > > > > > --
> > > > > > > > Gustavo Sousa
> > > > > > > >
> > > > > > > > >
> > > > > > > > >> --
> > > > > > > > >> Gustavo Sousa
> > > > > > > > >>
> > > > > > > > >> >
> > > > > > > > >> >I suppose the driver could take a snapshot of the DC5 residency counter
> > > > > > > > >> >right after it enables DC6 (dc5_residency_start) and increment the SW
> > > > > > > > >> >DC6 residency counter right before it disables DC6 or when user space
> > > > > > > > >> >reads the DC6 counter. So the driver would update the counter at these
> > > > > > > > >> >two points in the following way:
> > > > > > > > >> >dc6_residency += dc5_residency_current - dc5_residency_start
> > > > > >
> > > > > > Hmm I don't have a good feeling about this.
> > > > > >
> > > > > > I prefer that we are clear to the userspace(IGT) that is an extra flag
> > > > > > and not to pretend that we have a residency counter.
> > > > > >
> > > > > > So, we either are clear that we are counting the entries, or having
> > > > > > a flag that tells that we are allowing dc6. Which btw, could be done
> > > > > > by IGT checking DC6_EN bit directly, no?!
> > > > >
> > > > > A DC6 enabled check alone would be not enough and checking it from user
> > > > > space along with the DC5 counter would be racy as described above. I see
> > > > > this working by the driver tracking the DC6 enabled flag + the DC5
> > > > > counter in the above way; it could be exposed to user space with a
> > > > > suitable name, eg. dc6_allowed_time.
> > > > 
> > > > Right, the name and new entry in the debugfs file would make this
> > > > better because we wouldn't be pretending 'residency', specially
> > > > with no guarantee that it would enter.
> > > > 
> > > > However I'd like to keep things simple. Stepping back to see
> > > > what the use case from the test are trying to really
> > > > accomplish:
> > > > 
> > > >   * SUBTEST: dc6-dpms
> > > >   * Description: Validate display engine entry to DC6 state while all connectors's
> > > >   *              DPMS property set to OFF
> > > >   *
> > > >   * SUBTEST: dc6-psr
> > > >   * Description: This test validates display engine entry to DC6 state while PSR is active
> > > >   * Functionality: pm_dc, psr1
> > > > 
> > > > Of course, we already know that it is impossible to validate
> > > > that the display engine itself entered that. But we can
> > > > at least validate that our driver is allowing that condition.
> > > > 
> > > > This is with fake residency, with the allowed_time, but also
> > > > with the simple counter that Mohammed added, or also just
> > > > by checking the register directly...
> > > > 
> > > >  _MMIO(0x45504) & 0x3 == 2 // in idle scenario described above should be enough imho
> > > 
> > > The driver enabling DC6 is not an enough condition for DC6 being allowed
> > > from the display side. Some display clock gating etc. configuration by
> > > the driver could be blocking it. According to the HW team, DC5 being
> > > entered while DC6 is enabled is a guarantee that DC6 is allowed from the
> > > display side - i.e. the driver has configured everything correctly for
> > > that.
> > 
> > Fair enough. So IGT test case would check directly if DC5 counter is
> > increasing and DC6 is allowed.
> > 
> > Something as simple as this in the kernel code would tell that
> > DC6 is enabled:
> > 
> > --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> > @@ -1294,6 +1294,10 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
> >                 seq_printf(m, "DC5 -> DC6 count: %d\n",
> >                            intel_de_read(display, dc6_reg));
> >  
> > +       seq_printf(m, "DC6 allowed: %s\n", str_yes_no((intel_de_read(display,
> > +                                                                   DC_STATE_EN)
> > +                                                     & 0x3) == 2));
> > +
> > 
> > and
> > 
> > $ cat i915_dmc_info
> > [snip]
> > DC3 -> DC5 count: 286
> > DC5 -> DC6 count: 0
> > DC6 allowed: yes
> > [snip]
> > 
> > $ cat i915_dmc_info
> > [snip]
> > DC3 -> DC5 count: 292
> > DC5 -> DC6 count: 0
> > DC6 allowed: yes
> > [snip]
> > 
> > Thoughts?
> 
> The DC5 increment could've happened while DC6 was disabled by the driver.

Yes, it could... in general the dc6 bit would be zero, but right, there's
a possible race.

But should we complicate things when we know that on the test case itself
we are in full control of the modeset?! From the test perspective I believe
this would be more than enough without complicating things.

But well, if you really believe that we need to go further in the driver
to cover that it is fine by me.

But just to ensure that we are in the same page, could you please open
up a bit more of your idea on when to increase the dc5 sw counters
in a way that we would ensure that we don't have race and that we
get the dc6 allowed counter correctly?

Btw, while doing this experiment I noticed that the debugfs and test
also doesn't call that residency anyway and it is just count. So
perhaps with your idea we don't need to change the debugfs interface.

> 
> --Imre
> 
