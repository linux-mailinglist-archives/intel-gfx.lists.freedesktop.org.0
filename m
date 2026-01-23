Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cMHtNdHGc2lZygAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 20:06:57 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB1537A012
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 20:06:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 880C710E2E3;
	Fri, 23 Jan 2026 19:06:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ITLNVn5e";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 031D610E2E3;
 Fri, 23 Jan 2026 19:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769195213; x=1800731213;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=VzW10IZeVs9xPaQcuEGALY6XnbqlFApRGeKfBIRuuhw=;
 b=ITLNVn5eYUEtAFwqUhtir3tmfLxo0qFzD+z4O3xJR9xREJ5/dLzyEOf2
 4+MhvaHKACtSXR9+cLGIvaT8miLHkcKrLiML6CrIes4FlXzClEJtNfLlJ
 YAHCcSgP0J5pGJtVHKgHMyxjPQquk66BsiNLO43SRT2gPa+nyTk8xr3RO
 Cm/Uh1BmnRyAn7K2yQzXX7vtCKLtvCytbrtf+LKDO1TsvCR4PVR+bAKZK
 oPAZ1S01qVCqrfSUFrgSMqXyMvN+cdsrCg5psq+1lvGqo/rmZN2fvWeMS
 0vvNrZReFrbhZ1qK1QcK1dv3YtS8MnQJMw/m2mcj8160cR5IVo9fUsQxq Q==;
X-CSE-ConnectionGUID: sTSuu2X3TCCfP7eWjGclog==
X-CSE-MsgGUID: leg2hbE6QvugZqU8YxVYQw==
X-IronPort-AV: E=McAfee;i="6800,10657,11680"; a="70540923"
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="70540923"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 11:06:43 -0800
X-CSE-ConnectionGUID: j4vJwjCiS6+JZmEZPXRyRQ==
X-CSE-MsgGUID: O4W2XEVCQnCO2Lp/CjbxeA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="207519725"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 11:06:43 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 11:06:43 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 23 Jan 2026 11:06:43 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.1) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 11:06:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BmyvDB4hynmQ6RIWMm8yEcDnwBvW7mrPczEL4ItiE8hTtwAhn7Qi11CEPCUvIEMDY4F5OWTGe//6JUdOCmf4ESK9oH5LHdklkhslPezSRKNXKCsUWazBtdf9vI5gf9x3Q4cfCQKgUMka9cp/vT6Q920bn6YCzXI3WqU07Eq1vLey/r0+iT/IxsNulV8Gby0zIvo53wRrmj753d87+5pSYrKmy9D01U84irMw3gyHuaUQ9O+8PLFX0/c6De2xm2z9hWxCHKdU0u0y3oawEOwbqOkYBj91Ws0x7D3uUle8EqLR9qwhEHffJEtXU18m4MSRue0EIP38mz3pk86ezkX/bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ePgxJ09T/4p9AV6I6HjPvBRzJndEcIpcl4k51IH3RAs=;
 b=LQTGIJ9TmTrE+UtqGa+nVbC0F4N8LLf3DfrYSbZoQMc34DFKXPIx6BIiBn43LoBxIIVNh6ZVtpRhlELz2L5jBQ8qaPQ9H55s9nCLMVtcO6A39D2BBqyQQnFels9M9OxOn0UpDs07+3HkO21+9wO6bUeWLsM5VNFheeA+pyudaJcr7hA0YIShNUurZ9pUzFEJcU4yVitON60Wveu2RHoKeloMKmjJxtsBJhiy+ADhW1IPd6oq/OncfCCHRWoeKY0BVrfeTwF04a0J+UXb171pEMKki2UllwlqvN4LyZxPhXkNoK6dTtZORXq/GV6pbdkKsuAaRC5ePTz5qD2bRK8NfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SA2PR11MB4794.namprd11.prod.outlook.com (2603:10b6:806:f9::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.10; Fri, 23 Jan
 2026 19:06:40 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9520.003; Fri, 23 Jan 2026
 19:06:40 +0000
Date: Fri, 23 Jan 2026 21:06:36 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 05/14] drm/i915/dp: Rework pipe joiner logic in
 compute_config
Message-ID: <aXPGvBQ29dzanJfR@ideak-desk>
References: <20260121035330.2793386-1-ankit.k.nautiyal@intel.com>
 <20260121035330.2793386-6-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260121035330.2793386-6-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: LO3P265CA0013.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:bb::18) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SA2PR11MB4794:EE_
X-MS-Office365-Filtering-Correlation-Id: b6942911-6828-4e33-26ee-08de5ab28a64
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?udJOthPKPlvPS/u+E7su8GiK9C/tKMw2viC1wCGz8AddvArUS1geZyCEgYPu?=
 =?us-ascii?Q?SS3R5yXVOQTKD7YiTR7excrXNP6tZlhWtyOTGLbfshJY0sH/kywHGcAANGgB?=
 =?us-ascii?Q?kObKCgY4ByziAQHtzE/PjUn6cD2W1yDp6ynHtYzNuLwFfyHGKINGbpWAcyWJ?=
 =?us-ascii?Q?ajxSU8g+0gt+/Z14Eg0LSVjc2bAmR2t1n/XgyLFFfxWer/JoL+VucT0hf5Fp?=
 =?us-ascii?Q?4WYfHrGBm43sRB5xke5v+QV8dF0fW1awGFMXFFGc5iIiif+o70bjBnLnJqtp?=
 =?us-ascii?Q?mO36mWedJQ6xCOEVZsoY1zyqMOv+OOBdmfdEitTc4I8bcF/27cHTT3KucPSn?=
 =?us-ascii?Q?zlTpiqlWPogJQGyFCAgGXg1Jtf0yuC/ykmrj3sRpaJSg1eKLXwf9qhOiGpyf?=
 =?us-ascii?Q?boTSIDu3S2teelcZnT7Frmy9IKSzmWmvkK7O/mnwUhyKXXcbfxl5BUtIBrIz?=
 =?us-ascii?Q?MFeG77sxmVjtAaUrfIRyhwKke9YGL2tFrgHVUkUj28bqU75Bpafdkef9hkF0?=
 =?us-ascii?Q?IcK2/bnHAivVnHp7cVy2jLtj/gHuw40HHgYN3JK9sCNX/i6oW9wyVNbBlTaO?=
 =?us-ascii?Q?EQ5waQlEieWe2SQnovSl+QeWm/8GToDrvOtcjRaXXtlAYFjdZA8flSlVtGke?=
 =?us-ascii?Q?pb1V5hGyTpRAbCLDxhlms16CkvUaShQFcn3pIbtQgforWUn3SaOwDkZ09AsU?=
 =?us-ascii?Q?PYoFRXibvsTbZ86pl5Iw4h+emuAGAYdeGHWiExRSiupFEnKa2bLQVecF/2E7?=
 =?us-ascii?Q?0pLtirzUqRcLa76M025Iqrp0yCBawGk7wiSrd34NHoPoWc2+maD1hxkb1YhO?=
 =?us-ascii?Q?dDMh0d0xwV61dUmhZuiBfSrIyNyoS1MWO6e189QttXOFZj6YJeWCBWAhL+yn?=
 =?us-ascii?Q?s4089jVkpAxo8wETqOp7jgi/wducxx1C54DPxf4Cgg9js0ImPUTxnvj++TwJ?=
 =?us-ascii?Q?cVblJZblt/Sih/sSpai382Rwl0vgPMGRl/ZOaLISOPpSgxkNVF4b7Fm7M6AM?=
 =?us-ascii?Q?OiZmtPhZ+aFU9hzdSK9+sqDMF8uyX4fFMUdsB213UVoU96lNhHmAnTxgSQlG?=
 =?us-ascii?Q?asnDpCGDgzk7Bm/CeIkSh2GrgyNMiX/u1ik2saSdmDBFgvuAPxdb5GZfCS0e?=
 =?us-ascii?Q?sGvnrChg+UPM5E+tO4LDzmAXBCSdCqagc04a3m2wVh64Uh11hdZfpcHidE9n?=
 =?us-ascii?Q?vmLoM8Oq7D1xv8vG6PJOi+H5jcqGHkoUq54LuZ82VtyBbHYV8ZLjWm1grkYa?=
 =?us-ascii?Q?i45hVKhmq1KAMjX9ryTARXAsC9xbAj/vAWiGTBfyU6mSaebIJbkZAI2ubLKN?=
 =?us-ascii?Q?i1GRiqcr926F0N/1/Xhks//Ft7E37Dtbj+Y4SsuwFB6AiXsycV/0tlUDvVGo?=
 =?us-ascii?Q?9Ye3Q3W0WFDrqW0jkjuigL8uGDh/XXRE7CbcbRohjMBXv23XYlZ6eymiGpSy?=
 =?us-ascii?Q?8htN5Z3sMuMBc1NiUTdP81JvkNoXVURGL3OcDWRBcdJhRiK1AbDERhQyqcSe?=
 =?us-ascii?Q?wZkfw5jL40JegIzBduZk3+MSY+xTwIM/PVXBxw5aJLGAJjFWw002074AnSi5?=
 =?us-ascii?Q?zuL7rXVXSrojKiPJy8k=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?AdxU+fr9cPnNRBcuyza6QV+HVKr7ZBF5VKjy138J82URH/IcY+f/R9UPxW3M?=
 =?us-ascii?Q?rVmkVlJD7Tbt9vfXwC/ABtuBt+xCAis0qdGYj4eRtt4ALBbwPlrI9QsxtiNt?=
 =?us-ascii?Q?ZpW4/5m5jCE36WYHRqHuM/fLSHR0lvjDuBFeMji7crD/2b5JDG2Hw8/xZVhQ?=
 =?us-ascii?Q?RwYOHkPWRLW9w+Qm1D0GPKc6CqLI9OzsScdMpjNQ9FP8aY+R9r4TIHFYtT2s?=
 =?us-ascii?Q?reirUZqqJN6CShrsb0RmI7O+YlSjJrKZ5HY03mNoTmFG6k02ixU6EaWuQSUn?=
 =?us-ascii?Q?SNE4wEj/hrarWnWhBwvDjnj8GOBwI+AA7a8L785Vh7Pn1USHdfg8c8Z+XEPA?=
 =?us-ascii?Q?R5xEhA5mgVkfcLj3Tc6TY2s/rka3nsHS3sZ3YqArDXveLmYepaHtr7pqG30W?=
 =?us-ascii?Q?zSJGortQpweRIfUYWUm0vZ4wbKr0TmQcTHPYUBQf1wmQCLNNgNmthP8oiZjh?=
 =?us-ascii?Q?qeTD1I4VDOesMQ5K+aI3s6KenHl2PnqY3t1ja4o8XmGKh861v6828KXdKW29?=
 =?us-ascii?Q?xSSDLwSOx7UVENFn3kQ+Aht7RBsWLtDOQadtGrZ1M4XhcITwhuQEubQlP/Kr?=
 =?us-ascii?Q?WmFo3a6hI1BVBgsk0l+9Al05XV3btvrmtwX5nmghMPSnPm/zR7WTF1x/PVEL?=
 =?us-ascii?Q?7cRAP/w/7XqqW7iuKdElnAAkyt9taY8Kx8zZ1Nx+fMupFSlmYf0gw6/Sds8O?=
 =?us-ascii?Q?9q5FFte7QpExu7pntuhVl/GRPYykjSvtenF/mQ0rfr25gkcw4D74pvGy7RIn?=
 =?us-ascii?Q?hj6qDXqk+u6pNnd7XGBqeBPyMwPowyrT16rP8+BzfQvKqP1qG9hOr0e9f8/g?=
 =?us-ascii?Q?EAgZRL44HwEERWVm//6mX3s5dXYNkOkkQmjxhbKsobTRG3gDXWjslLcPngM8?=
 =?us-ascii?Q?lwT9BuWGWvH/QpQhhCvSIUaIS9IxUCBVyXS3RRPIc2+ytggr7eaGimDWYqT/?=
 =?us-ascii?Q?+L2/crhvP9QPeeqc9/vfDkLhnCnmhr3NAJWWINLq7mzFyk8STg7qWNcVMeuO?=
 =?us-ascii?Q?mMSpzgvSGW9VvRRs2o7naDQjcWiFVo+X+gEjItAr1C/tg8smDoA5RdxXEoHb?=
 =?us-ascii?Q?1uLffjEySNCyNWQ4A5gm3NE7BkL7cfOFbleNscIJNmHCEKedQqYL80ZFeY6W?=
 =?us-ascii?Q?ollkh9vvnEWcoSN5moAQeZqNY4cM6Qt+YxlhUAR7Z+7lh8F/nmsONww6a9Wx?=
 =?us-ascii?Q?kSSwvF8G9P0KsJjLOQLcU1F2KpvmIBewSoayda8knRIvSZ6T6FsmFUafxnDp?=
 =?us-ascii?Q?fBpl+FKVE43WPEHp/J2GnVKjExpebkJVVBntBXlww5cDY2lQ02qGZG8L1Wgo?=
 =?us-ascii?Q?Tr/jLDucAegrXoyHVRuFbXHZLOk1UagTmEdaziHeJMOAjBAjmyzbEJGP5hMi?=
 =?us-ascii?Q?ZLBN3T71cNAVxjsM4bYzI3m3SodK5Q3l3sqUMOAb3SzNDqnTOFDRzQh3n3dg?=
 =?us-ascii?Q?GAr9Mu4CmQliyLUrbuxqfdrmsp/znRIx1pipsJ4VHU1+JTQp1X0acuPxMAx/?=
 =?us-ascii?Q?LS0ocl2P7gTCjfWm7R8avE3IAXp+6VrZVEtIo70k9aNablRZqxyDhn6MtFHg?=
 =?us-ascii?Q?hqT4tfGIdZvltnYc2T1aF4fEcXNPyGg65nuyr46hOZ3ZZjIAvjfe4ZSBhf4J?=
 =?us-ascii?Q?xcV3tWpzIuFsHGeRcnsxtxIpYiHbkcEvLdIqctuhz5wjI1lMVSGtedYjqvm2?=
 =?us-ascii?Q?f+ifaEy6vC7RTAcezA1k5BJQNjt8NC4sqbGkI4GvJyDa0PSomMv8V94RGoLF?=
 =?us-ascii?Q?6+aQ1tMU9w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b6942911-6828-4e33-26ee-08de5ab28a64
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2026 19:06:40.7816 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RmvadNTLir+3rslusmYQZHMgD4NCaBlPy9nRaATCPKdHk+NcUrcfb0Ge2ffVPBHLvuUIYU+Yd5b48kjxg1JpCg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4794
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.99 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:replyto,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.942];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[3];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: BB1537A012
X-Rspamd-Action: no action

On Wed, Jan 21, 2026 at 09:23:21AM +0530, Ankit Nautiyal wrote:
> Currently, the number of joined pipes are determined early in the flow,
> which limits flexibility for accounting DSC slice overhead. To address
> this, recompute the joined pipe count during DSC configuration.
> 
> Refactor intel_dp_dsc_compute_config() to iterate over joiner candidates
> and select the minimal joiner configuration that satisfies the mode
> requirements. This prepares the logic for future changes that will
> consider DSC slice overhead.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 102 +++++++++++++++++++-----
>  1 file changed, 84 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 02381f84fa58..d96d9ac1e830 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2790,33 +2790,20 @@ bool intel_dp_joiner_needs_dsc(struct intel_display *display,
>  }
>  
>  static int
> -intel_dp_compute_link_config(struct intel_encoder *encoder,
> -			     struct intel_crtc_state *pipe_config,
> -			     struct drm_connector_state *conn_state,
> -			     bool respect_downstream_limits)
> +_intel_dp_compute_link_config(struct intel_encoder *encoder,

intel_dp_compute_link_for_joined_pipes(), similarly to the MST
counterpart?

> +			      struct intel_crtc_state *pipe_config,
> +			      struct drm_connector_state *conn_state,
> +			      bool respect_downstream_limits)
>  {
>  	struct intel_display *display = to_intel_display(encoder);
> -	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
> +	int num_joined_pipes = intel_crtc_num_joined_pipes(pipe_config);
>  	struct intel_connector *connector =
>  		to_intel_connector(conn_state->connector);
> -	const struct drm_display_mode *adjusted_mode =
> -		&pipe_config->hw.adjusted_mode;
>  	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>  	struct link_config_limits limits;
>  	bool dsc_needed, joiner_needs_dsc;
> -	int num_joined_pipes;
>  	int ret = 0;
>  
> -	if (pipe_config->fec_enable &&
> -	    !intel_dp_supports_fec(intel_dp, connector, pipe_config))
> -		return -EINVAL;
> -
> -	num_joined_pipes = intel_dp_num_joined_pipes(intel_dp, connector,
> -						     adjusted_mode->crtc_hdisplay,
> -						     adjusted_mode->crtc_clock);
> -	if (num_joined_pipes > 1)
> -		pipe_config->joiner_pipes = GENMASK(crtc->pipe + num_joined_pipes - 1, crtc->pipe);
> -
>  	joiner_needs_dsc = intel_dp_joiner_needs_dsc(display, num_joined_pipes);
>  
>  	dsc_needed = joiner_needs_dsc || intel_dp->force_dsc_en ||
> @@ -2879,6 +2866,85 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
>  	return 0;
>  }
>  
> +static int
> +intel_dp_compute_link_config(struct intel_encoder *encoder,
> +			     struct intel_crtc_state *crtc_state,
> +			     struct drm_connector_state *conn_state,
> +			     bool respect_downstream_limits)
> +{
> +	struct intel_display *display = to_intel_display(encoder);
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	struct intel_connector *connector =
> +		to_intel_connector(conn_state->connector);
> +	const struct drm_display_mode *adjusted_mode =
> +		&crtc_state->hw.adjusted_mode;
> +	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> +	int num_joined_pipes;
> +	int ret = 0;
> +	int i;
> +
> +	if (crtc_state->fec_enable &&
> +	    !intel_dp_supports_fec(intel_dp, connector, crtc_state))
> +		return -EINVAL;
> +
> +	for (i = 0; i < ARRAY_SIZE(joiner_candidates); i++) {
> +		enum joiner_type joiner = joiner_candidates[i];
> +		int max_dotclk = display->cdclk.max_dotclk_freq;
> +
> +		if (joiner == FORCED_JOINER) {
> +			if (!connector->force_joined_pipes)
> +				continue;
> +			num_joined_pipes = connector->force_joined_pipes;
> +		} else {
> +			num_joined_pipes = 1 << joiner;
> +		}
> +
> +		if ((joiner >= NO_JOINER && !intel_dp_has_joiner(intel_dp)) ||
> +		    (joiner == BIG_JOINER && !HAS_BIGJOINER(display)) ||
> +		    (joiner == ULTRA_JOINER && !HAS_ULTRAJOINER(display))) {
> +			ret = -EINVAL;
> +			break;

A simple loop over the number of possible joined pipes would be simpler
here as well, as in the mode_valid() function.

> +		}
> +
> +		if (adjusted_mode->hdisplay > num_joined_pipes * intel_dp_hdisplay_limit(display))
> +			continue;
> +
> +		/*
> +		 * NOTE:
> +		 * The crtc_state->joiner_pipes should have been set at the end
> +		 * only if all the conditions are met. However that would mean
> +		 * that num_joined_pipes is passed around to all helpers and
> +		 * make them use it instead of using crtc_state->joiner_pipes
> +		 * directly or indirectly (via intel_crtc_num_joined_pipes()).
> +		 *
> +		 * For now, setting crtc_state->joiner_pipes to the candidate
> +		 * value to avoid the above churn and resetting it to 0, in case
> +		 * no joiner candidate is found to be suitable for the given
> +		 * configuration.
> +		 */
> +		if (num_joined_pipes > 1)
> +			crtc_state->joiner_pipes = GENMASK(crtc->pipe + num_joined_pipes - 1,
> +							   crtc->pipe);
> +
> +		ret = _intel_dp_compute_link_config(encoder, crtc_state, conn_state,
> +						    respect_downstream_limits);
> +		if (ret)
> +			continue;
> +
> +		max_dotclk *= num_joined_pipes;
> +
> +		if (adjusted_mode->crtc_clock <= max_dotclk) {

There seems to be a difference in the maximum dotclock for the DSC and
non-DSC modes, introduced later in the patchset. Since the non-DSC max
dotclock may be lower than the DSC one (oddly), there should be a
fallback to DSC mode for a given number of joined pipes if the non-DSC
mode is not possible with the same number of joined pipes because of the
mode specific dot clock limit. So the above check should be moved to
intel_dp_compute_link_for_joined_pipes() and performed for both the DSC
and non-DSC modes.

> +			ret = 0;
> +			break;
> +		}
> +	}
> +
> +	if (ret < 0)
> +		crtc_state->joiner_pipes = 0;
> +
> +	return ret;
> +}
> +
>  bool intel_dp_limited_color_range(const struct intel_crtc_state *crtc_state,
>  				  const struct drm_connector_state *conn_state)
>  {
> -- 
> 2.45.2
> 
