Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mODKNCBYnWk2OgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 08:49:52 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59913183431
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 08:49:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6A1F10E246;
	Tue, 24 Feb 2026 07:49:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Qa0azpAZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89B1010E1BD;
 Tue, 24 Feb 2026 07:49:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771919387; x=1803455387;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=bDwp4R4siZSDBGQ0HtP/orq8sWDhIc3+J3RKm2pCq5A=;
 b=Qa0azpAZGlH0EsqHGBDLA0bznavhn0C/s7/eBi3yNzOtZG0N2k5hpFNS
 xnBSL9Uru08VEaErcYNhvReF2/5u40JWzU4+jlLoWN9vQFvascqv5KbDG
 vieaBzj7/3AOz66cdYc/B5PLMCZWdHuR2yx9zs9fcR1wy+TJQ/h342qBr
 wtpk+Xnc6HHMTWtZUjEfrWvdI+qmZVNtBx87u8/QesDy7CncB57nvF5eB
 seVJfqC2yEGjvMkCcGdQVGPzj0/mkVuoh59xjQB0RMcJLXUXNnaq+D+XY
 F/a+tZWbqTiYUHex4DED/rkuhKet9ppCUTXeHsk90ABjxDPX8g0rytmUP Q==;
X-CSE-ConnectionGUID: 7tpJgapsRUGrho8zhovEow==
X-CSE-MsgGUID: DAG802zFQ4eOBB3YEpPWcg==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="72139225"
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="72139225"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 23:49:47 -0800
X-CSE-ConnectionGUID: OBIFsWPiT+WxLSbGsZSEeQ==
X-CSE-MsgGUID: Pp8W4IbJTQuRTkk10kKu/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="215842371"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 23:49:47 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 23:49:46 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 23 Feb 2026 23:49:46 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.32) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 23:49:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SGd+X4LyRFBgr1hLqSwYKwfDL6FaAzDKZIhviUOd+0Ai7OfIT1aepznz5pw5cflyGBW0fiSfCA+noK7rk+tAZbpBEe9fW5+14u1dR3PyQXai4EedLfGyEWwwgvjRNvyz8GOYHccFtORYOe4m0ALWhUZ8+KOGVjV2GzRvjVCjNAG4ixPjcx+IPuUNNVyXPN0ncYtsM2vK3Q8QPpvDJ0vWTDedXeT8y3hqCkrRwDtUF84KT6b2XSVjcBAaQ1zJZzV3Tn4uAts4cdbOdNCNLkZym3iYNa99xtkbe1TEbWEcDsgEfDgV0ben6HZ98sqby5NTaHzJfLcQ50NBGkExA5JHOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xqZqfczUo1bONaC82j+RzyGrDaQcZ51Si0mZlkcbp44=;
 b=vbjVe39bf+XRtr+bO47LNGbXADNcjCn4NwRF6keknqvoHeYK6t4kW1VLx4o+2+GF2nUh5ZaS1GBK4ZXZEewLroo7q1TZoI8dMI/dhR5umRmbMD+Q8bKt3UlKagvoRnNJmhVsPGcqqOdMRMlBq+CSOWRx9pgOtYKy1FvmfHcSxyYt6OpGCVK60Kn9UGorbQB73dT3HIGZJFYKflPQuTvCiUoZ9XdtU634ZvmEwV5VZjtkbFkIeoNZM6DQtqjONqUwCEoeupPuh3NzhbA6WsbQlN4iUBmuQ9Xgft5CewTgZHRO2OKrDaDMbbTEHYtrOnYfR8rbawTAkR4rg3dY8dD07Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by LV8PR11MB8772.namprd11.prod.outlook.com (2603:10b6:408:200::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Tue, 24 Feb
 2026 07:49:43 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9632.017; Tue, 24 Feb 2026
 07:49:43 +0000
Date: Tue, 24 Feb 2026 09:49:37 +0200
From: Imre Deak <imre.deak@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 1/5] drm/i915/dp_tunnel: Don't update tunnel state during
 system resume
Message-ID: <aZ1YEWnS880TEWXx@ideak-desk.lan>
References: <20260219182823.926702-1-imre.deak@intel.com>
 <20260219182823.926702-2-imre.deak@intel.com>
 <IA0PR11MB730721016164B7CE2163585ABA77A@IA0PR11MB7307.namprd11.prod.outlook.com>
 <aZyAma4Dr_e2cTCc@ideak-desk.lan>
 <IA0PR11MB7307994B0594AAE9616F7B68BA74A@IA0PR11MB7307.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <IA0PR11MB7307994B0594AAE9616F7B68BA74A@IA0PR11MB7307.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVX0EPF0005F6AE.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::292) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|LV8PR11MB8772:EE_
X-MS-Office365-Filtering-Correlation-Id: a029e4c2-b429-4d4b-38ae-08de7379458c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?j3PsJ7i7/+CA1YwMkvaECH0ZkYVv6gpIwPXgZ06U4BL21ZAiplpCItRpwh4i?=
 =?us-ascii?Q?+j0cTM+rp2v7efs5hO4vY7Bi9Berd/hBuup1gMzbJXiCG3JJIf646A+cfHcM?=
 =?us-ascii?Q?S25Bxxa0mTrCXxjECpLzLt4E51bYMXgjmbC89G/hfI4O5v60LMKRRkIcmLAT?=
 =?us-ascii?Q?aJT28AIX4OvfGSW5OMCe9CSKiiyKVrRvEQ0GrJAxoKh8SsDKgmFWFqy3AKUx?=
 =?us-ascii?Q?hUIRnWuXNdr4+XgIetc9Gjy8+D1oamfmgeBhAkKjkIKDAi+SIEiLrimFDVZ4?=
 =?us-ascii?Q?WOZZ1kgVr+qDxD8Ro5LhDKWiebH85LxMi/S1t3yu8bC3f/NQOadvm/x9JTwl?=
 =?us-ascii?Q?nMq7fDOe7+p8yiMdkAhWj3MgtKI7A/GiAnbDZiwmINt3PzILZXwsa1aA1tS1?=
 =?us-ascii?Q?vqCeW+UmnKFgBcJYi30D2sS1Bn3HFckaVYv76RIV/pAX1RU9omazo+fM/wB6?=
 =?us-ascii?Q?k8irg3YtI6KrcstpN1nxTRA+y6U+e2EIaQ+/uI+nvzn1NnbzS3Bps5r4TRTe?=
 =?us-ascii?Q?NMQOjTTLuCBd0ZyuVBjjpRkN1IJoH3M6jsa0g/srPs6QAzJ+IupvX+j9iHvs?=
 =?us-ascii?Q?beWzMM1JXzkzeohQbnUPAe/PpKCWw7FH1uD+26iuZZIcWQTudYmKdEXL7YHC?=
 =?us-ascii?Q?YxHKolErhmOa6tBlA+ysMulvdQEYDsenaMHU93R4V00VUfOZt2EvxDY69Qvn?=
 =?us-ascii?Q?gI1shDc5mFbLUz9UkDw1rTUShbCO09rsuFQFm08evbP4N8EbsEXuJXcnpxCA?=
 =?us-ascii?Q?xrzPAsKboz7IPZpHswQO5Pl0G5pXoVff2JgIXWbM7o5BL0xIfLrXxnv1zjtB?=
 =?us-ascii?Q?3iFhcQ8XS/ggQgb6OYtI0JUgbziTgBnyHDmqxbl8dzUTQuGng42sp+Y1qi7T?=
 =?us-ascii?Q?K/fW0bTWCPxGuDAcT70lYgkIO2eFOTpYse1Cds8kzOIQ65YtVQewzJZyhKtZ?=
 =?us-ascii?Q?Mk6k5xnrBdpyp9gzn51r6kfrYQ7i730jOzjt85NDoBnOlDkMYB7ggoLbc63j?=
 =?us-ascii?Q?NCNeZzRs6rQS6sQM3G3io9PzapQ7ON8IMLoGZXDVxsyq8GwrrWrC46GorQX1?=
 =?us-ascii?Q?1nAvNIBMrtGscRoaJQBFOl2vdZVNO6jUYRQZt8Bcakn3a0t+3Zzs7ITIDV8g?=
 =?us-ascii?Q?+5W/4XOaMJr+lQxIQRRWFgXlzcj/cTt+siVdoT6tSjkD024GaIz2FpBwXmJ8?=
 =?us-ascii?Q?6YtXak18NO7hhss7CdIv/+XpwHsCxi+Kzk+PdOxJgIU9LPo6pRxHw6sFhgnh?=
 =?us-ascii?Q?/fRXBi8NBvn134CeGu3N8ghW+Xp3D2H+M95pD3ir2ecdj2K+SBuvGUKA/DKx?=
 =?us-ascii?Q?1+154sWPES6xMKdjxjTd6W0ihiE3GDYfWs42Un/MRjvj95/pQ3o4BeV4BsXQ?=
 =?us-ascii?Q?6toKwn3qfQZuwaXz3bGyv1YXdRcIJsN4CYnnmuWindsClqQpcXCGmhC8Mu5L?=
 =?us-ascii?Q?MdLzxQsbtPOvTeLf1zYwanLHG+T4wfZl7UFbAHBQw6v3lbtr/umgIRAFXQoG?=
 =?us-ascii?Q?NlrFBI4dVjvXlw75dCkZdda360+xKk2JfaqprMmcQLoKWgToaqEBwcxiLj8t?=
 =?us-ascii?Q?U16Rjb7Grcpi1NyTils=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?cko8RsqeWvylkzlqqHC8kUwUiaXU7Ogs8BvL6jv5JbrmHWqkxyStPkBMG0pg?=
 =?us-ascii?Q?nO6XndVvWIMuCDrtU2OBkG7jKiomNcRmZh591FYIlDrLsYtTu+yQHyKobO1y?=
 =?us-ascii?Q?ckbSpMNtDkah9ZP+t8MA8HSqWX15fBCnmF76Ba5ATXpVuAG9c3YPt6ibrbtU?=
 =?us-ascii?Q?szsVhHkF5/fRNnRWSCdcBG32LN+TnCLCQuVgp2wAdWfZy4bKFe9NMC0/hB3M?=
 =?us-ascii?Q?G364fj9E5c8++mME1W2FjrBC1kbNa3eVGIf7asvGLi9hCWNc4YFx+F/gZ38v?=
 =?us-ascii?Q?dVVn4xF2OtJl8TynNwBAAz3cWVYHLkeUEKZa1DmCsCDKn8Meogm5Fhs0+ddU?=
 =?us-ascii?Q?d0//ZLVuE8biQjdM0HUSvFVZHXX6mRZVDDgmgC7w7tKIeJqkl6k4x8QjorKa?=
 =?us-ascii?Q?6zeaFmHEJKsx3Q0tVbezOhX+sRStLL+9kd3NUGTYJLlVcC8NSEMOzYIaqdBL?=
 =?us-ascii?Q?uMZzFnzfChWv8lZVmruDpWBuzprA3l+EEppcKrD4405kli4ApBu2deODMm5e?=
 =?us-ascii?Q?3+LepZowcD7Hyx7pI0OO7R55PwrgMV6K+Zj8oZbnSXwlrENf4FS0QaqZ0hPK?=
 =?us-ascii?Q?mA6J4zW2zSF7SDOCxBgRY/mjvQnbuKjFg4oIMI2anaD2UD/CtBJkhieI0j/x?=
 =?us-ascii?Q?fO5ev7UMozcC70SRkG1ynEeN391ehgrQXjajhMJMenT1iag3fiqv8V7xbd5R?=
 =?us-ascii?Q?jQqAXM0BOXKtFnpcx5afBxJ3ux9R/nz6qWqzvPQdA9POc9dgRHBBYxqAtC3V?=
 =?us-ascii?Q?bM/kwz7ou1lWoyQStB/0iIkNj+fNrbFS05klE72XsTcoWtO0oJMtAz6Gx6kj?=
 =?us-ascii?Q?a6bJ/LkHqnqJEniK2gY5MEH1vvFEEMlleg0s/zAs7K/abx0O6gLS8NsNDwF9?=
 =?us-ascii?Q?WK/V8jYS0KKUYiIveYxSs8AIKFIeGZHJfLhvMlobVJcCqzWhe0SjxcLMZWaR?=
 =?us-ascii?Q?rOktjJMjXwhjDdnt5H4Tzmo8PfF9e5YLFOl6rNsFsofnmSv7EnIFhe+6MlYU?=
 =?us-ascii?Q?I8VJX/ajRKBbsMdGn0PiELM2ffQQzwWH+i1RX2pYKrHX1gaXIjrgsc8U4vp2?=
 =?us-ascii?Q?Lc7joNZBn5O7lWNqXObB5ZQ91hTElNQlQacgIR2AAVKQo1gOisI/+nnAxjzx?=
 =?us-ascii?Q?IG5uD+A74dkoMqL1E147iB6HLvyJlUJ6nmLTleVSu3Ymc1QyPr8qOzgXk+cQ?=
 =?us-ascii?Q?qsm2SCc2eLHVzU7p3v20mwcrggD/tmrVxenwPLBnUwv2I6YWyVqOQc0PiTA6?=
 =?us-ascii?Q?/j8Qgm2jef9zKg+IIkvSE19gs07eKYcwr3087DBb3FBAaWJ3XyPPvy+CWmuQ?=
 =?us-ascii?Q?EA6qad7cAxeVwLGRgQEkoCThMEAOOh2/yxkBCpq0uu2PJCSxQYcu1re0R9X2?=
 =?us-ascii?Q?ppbgulN3OMIn6nbxP1bLndz7NX7h5bm6b4eH9UtPgAzhinf0LZf/6YqTRGpo?=
 =?us-ascii?Q?z0W51fBHht6Gn7w31qTqMeq0MzUMRLjPByqrxc238TajvFAtRK37odCA0sht?=
 =?us-ascii?Q?2giFWOvghpPd/OkEOAzXdJya0doMOfl+GzlJo3lN8vGwxRQJQrQWKJ9HGYVk?=
 =?us-ascii?Q?BGHNUoqMkrCPWiJOGpIR/AJtsfVFmqk/RYozWtSpZrymnMATfkdSHl56OC70?=
 =?us-ascii?Q?5Ni8ytVMC9BMy1m4g2M8jA3jCPHyB9B1T+i3GqbmbHfVKtwRwLgbS1yuUD4u?=
 =?us-ascii?Q?64WaGaPJeEnS7SGVoMHnXYuWQzC8zFRohXv9c+NosMjglbPu1nKBCSGfH+/C?=
 =?us-ascii?Q?2emq8DXJCg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a029e4c2-b429-4d4b-38ae-08de7379458c
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2026 07:49:42.9444 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qCfzrVyPnMj3O82f8PVZwNQSCc3VQH9qvK36AOheMKZQo6sbrGzGZHd6Hb3Qesf1S4ba5muSnslQLOUeDhKWnw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8772
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
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:replyto,intel.com:email,lists.freedesktop.org:email];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[3];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 59913183431
X-Rspamd-Action: no action

On Tue, Feb 24, 2026 at 04:33:58AM +0200, Murthy, Arun R wrote:
> 
> > -----Original Message-----
> > From: Deak, Imre <imre.deak@intel.com>
> > Sent: Monday, February 23, 2026 10:00 PM
> > To: Murthy, Arun R <arun.r.murthy@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> > Subject: Re: [PATCH 1/5] drm/i915/dp_tunnel: Don't update tunnel state during
> > system resume
> > 
> > On Mon, Feb 23, 2026 at 05:54:38PM +0200, Murthy, Arun R wrote:
> > >
> > > > -----Original Message-----
> > > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> > > > Of Imre Deak
> > > > Sent: Thursday, February 19, 2026 11:58 PM
> > > > To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> > > > Subject: [PATCH 1/5] drm/i915/dp_tunnel: Don't update tunnel state
> > > > during system resume
> > > >
> > > > During system resume, restoring the pre-suspend display state must not fail.
> > > > This requires preserving the sink capabilities from before suspend,
> > > > including the available link bandwidth.
> > > >
> > > I don't see the sink capabilities being stored in this patch.
> > 
> > The sink capabilities are stored in intel_dp and intel_connector, including the
> > maximum link rate and lane count, which determine the link bandwidth. This
> > patch preserves those capabilities across suspend/resume by preventing the
> > tunnel state from being updated during resume.
> > 
> I understand, but what I meant was this patch doesn't handle anything
> on the suspend part but only controls the updates on resume.  So
> explaining what happens on resume is un-necessary.

What happens during resume - restoring the state of display outputs to
the pre-suspend state - is what requires the change in this patch.

The commit message must describe the reason for the change, so this
commit must describe what happens during resume.

> Thanks and Regards,
> Arun R Murthy
> --------------------
> > >
> > > > If these capabilities are not preserved, the restore modeset may
> > > > fail, either due to a missing sink capability or insufficient link bandwidth for
> > the restored mode.
> > > Don't see this in the patch.
> > >
> > > >
> > > > When the sink is connected through a DP tunnel, prevent such
> > > > capability changes by skipping tunnel state updates during resume.
> > > > This also avoids updating the sink state via the tunnel while it is being
> > resumed.
> > > >
> > > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_dp_tunnel.c | 11 ++++++-----
> > > >  1 file changed, 6 insertions(+), 5 deletions(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> > > > b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> > > > index faa2b7a46699d..eb1eed1c8c7bb 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> > > > @@ -150,11 +150,9 @@ static int
> > > > allocate_initial_tunnel_bw_for_pipes(struct
> > > > intel_dp *intel_dp, u8 pi
> > > >  			    drm_dp_tunnel_name(intel_dp->tunnel),
> > > >  			    encoder->base.base.id, encoder->base.name,
> > > >  			    ERR_PTR(err));
> > > > -
> > > > -		return err;
> > > >  	}
> > > >
> > > > -	return update_tunnel_state(intel_dp);
> > > > +	return err;
> > > >  }
> > > >
> > > >  static int allocate_initial_tunnel_bw(struct intel_dp *intel_dp, @@
> > > > -200,10
> > > > +198,13 @@ static int detect_new_tunnel(struct intel_dp *intel_dp,
> > > > +struct
> > > > drm_modeset_acqui
> > > >  	}
> > > >
> > > >  	ret = allocate_initial_tunnel_bw(intel_dp, ctx);
> > > > -	if (ret < 0)
> > > > +	if (ret < 0) {
> > > >  		intel_dp_tunnel_destroy(intel_dp);
> > > >
> > > > -	return ret;
> > > > +		return ret;
> > > > +	}
> > > > +
> > > > +	return update_tunnel_state(intel_dp);
> > > >  }
> > > >
> > > >  /**
> > > > --
> > > > 2.49.1
> > >
> > > Thanks and Regards,
> > > Arun R Murthy
> > > --------------------
