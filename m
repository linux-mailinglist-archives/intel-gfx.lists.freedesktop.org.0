Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EP6zM6DFlmkGmwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Feb 2026 09:11:12 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE4FA15CEF0
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Feb 2026 09:11:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D66810E196;
	Thu, 19 Feb 2026 08:11:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bEUGaZfV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 821CE10E0D1;
 Thu, 19 Feb 2026 08:11:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771488667; x=1803024667;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=W7ftamVvhQR4GDvZPrEIMbLh2cQ0aQHTOQe41UYe5to=;
 b=bEUGaZfVfIw5s8f6ETS6D2AIISGdyMtWuCsEMQP7MijMVFV+wg7Ieciy
 QMbQS3zrjMGvsXidvNvHTLJ1CTQbaTpnYoR8OfMp0gg5FR55P+ZYpOChf
 Qu1mkWQmBCC4Z23ChDNAf7CU6kkRWd2WIOc+G1WhfnvKogWwo4on91bxU
 OWdeuc4JDlXoROHojCwhJm+a4d10rfQ7oOgmesHHr1H8E7LZCawbk2CCG
 K4DaBqRrcdZ6GUdcdgR2snoGiR5FHD4OOrIw5Yb3lAtXxuyJdTUoG7Q0g
 8nr5/r9MaWqW4YCP0R6AnOny09zjRM2wLXehn/y0TbfAzV+VdS46VaUW7 w==;
X-CSE-ConnectionGUID: RYfzjdHJTt+78MPzQxNe4A==
X-CSE-MsgGUID: QwpGrFVVRgSp65STNvru9g==
X-IronPort-AV: E=McAfee;i="6800,10657,11705"; a="71593876"
X-IronPort-AV: E=Sophos;i="6.21,299,1763452800"; d="scan'208";a="71593876"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2026 00:11:07 -0800
X-CSE-ConnectionGUID: ffQnSo8+S9Cgk+Bx27M0ag==
X-CSE-MsgGUID: aqNEhRgfRv2g/0Fq/XfDiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,299,1763452800"; d="scan'208";a="214308597"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2026 00:11:07 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 19 Feb 2026 00:11:06 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 19 Feb 2026 00:11:06 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.28)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 19 Feb 2026 00:11:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JxONLk+AeHoFp8a6QskIk7QSSmYxZT/mAj2XFKmSVG3Hc2JtY/RhgG9lZkWb/9q/BieCra++JbxUyfexlP2qjkSgoStfPgTfkOJToWT2m3CDC0DPvmxKlTV8JmJSK3W2c+21Uo4bquQdN+hl44ULBwklLAzXBfD6TCB4wuw2FmuvgpqLPoOW9IEkxM9Suwp3//uwnQnJmWoRUC9hXe7vdXl9fvhtaE1E6Nan9cgsaOYJJWCV8OjrSFjLOfjQ+OPh03l1ql332Y03p36T1YV7WQgmIYcha1Vep08JRxXyMeGg9LpBoi3J6b7RiN/ZBnAffV1X/oU4SdCdYJOiLb90Xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2JCJTynYyWICVIowWNTsx8RkETgWdhgAlAGh1m/t4zQ=;
 b=lbLWWyITzd0Pg/yp04K5uzPN5x4VUysb2xzmr2O/7i54pw8+osrJlmhEOdLKvPFqzCDd4FQaAOScW7N32qukeE/SVQuAKbXXiZKNliV8Xkvj0FMMotNsULuvUJqG09HNRMJmK8QLUOfwAG/QBWw7sn/wGGkc6ZmY6tUQ4kQ29P8+QMkTbfHql4eQYCt2PCOVQQsg04H9W0FZZukDnFfWLPOeufAevfRLSu0qN3LW/IvaqkVUTeH0Pa9dM7MqytzSM56uThqhhVOq3eEldfy+TmN2qkn10TCe2hbAa7nik40MoAgGwQbwYiu9Y297JiyaJL7WSH/IaPqeKiubWkre4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH7PR11MB7987.namprd11.prod.outlook.com (2603:10b6:510:242::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.15; Thu, 19 Feb
 2026 08:11:02 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9632.010; Thu, 19 Feb 2026
 08:11:02 +0000
Date: Thu, 19 Feb 2026 10:10:27 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ankit K Nautiyal <ankit.k.nautiyal@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <I915-ci-infra@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuRnVsbDogZmFp?=
 =?utf-8?Q?lure_for_series_starting_with_=5B1=2F2=5D_drm=2Fi915=2Fdp=3A_Fi?=
 =?utf-8?Q?x?= ww mutex lock failure in for_each_joiner_candidate() loop
Message-ID: <aZbFc2bomGd-zMqI@ideak-desk.lan>
References: <20260218105708.845161-1-imre.deak@intel.com>
 <177142725361.262680.8079064858290707261@a3b018990fe9>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <177142725361.262680.8079064858290707261@a3b018990fe9>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV2PEPF000239DF.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::16c) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH7PR11MB7987:EE_
X-MS-Office365-Filtering-Correlation-Id: 1d8ed8ac-dfd3-4e70-10e7-08de6f8e6bba
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?5n8hbTu2PBHUFwEJVv+iwdDX4je7GEtmePUwMSTn4bmdBxRhtT4kWvql4F2Z?=
 =?us-ascii?Q?2NOfYY32MSEg5dMOoUv6PYzu5UthRimhaNlAHsTZUqo3ogbyUwaVz2tq57b2?=
 =?us-ascii?Q?CIiR32pfNjHHCU6ZZDNxhmL7OyHTe0O6Qy4XarJhaMbRjlbSgaf+WbVGnUEC?=
 =?us-ascii?Q?slGy3dYLpVyh9DksM5K1091pO80dv+52/BwFbG8e8KWptcfRsKIKC4C+YiLg?=
 =?us-ascii?Q?pdxtCDNImqtDhh7Ai+p8irO32VUGL1JM/fXWB5u7aghykpg+jZIozPVDwaAA?=
 =?us-ascii?Q?avuFUz6UWtPDPBAOmVt/jgVC39f0XWKL1dyh2m9ARczmgRKqQ6Lj1kxXl8iI?=
 =?us-ascii?Q?etSG+ckCsD0wmNHGac766RNa7N5JwPMss+BR1S2HeVzDd/p7igD9nZ+QnWel?=
 =?us-ascii?Q?HMvBiDWJBzMowN2m2urYn4hhHtllxkvLRwMFsInos4pda4pOlxBDzDsZr3Uf?=
 =?us-ascii?Q?blIIX65Ygj8qQNR3OEc0cx5W2ERb7++G7yqNCD0uJ7eDlx7LYiKePK4P7hIO?=
 =?us-ascii?Q?zBm3cz+OupBqQrPU7kgZXh0UrZdbT74Yj2JnxsqbPNeqIiLOsdf+fvk2e8Z/?=
 =?us-ascii?Q?/+/UqnsQpEEw6VM9ngAjZHO/a0Aj7vfhRD/8QM6U/l5X1t/uecLqKu0sDNIK?=
 =?us-ascii?Q?cCsNWkK6yFHSs8EUk/KPJp0WpZ6GqmlDNQ0p7hUvtt+48JijbrDRQUYb3s6d?=
 =?us-ascii?Q?SACrTZfSlsETxxmsOkY2rA8fUAwt35lKNA9SSzGp2ak8bAe7LfGlBHOfB4s1?=
 =?us-ascii?Q?S8kttlcP1WvOSpyKMByI+ZSljFJ9UKka69yeaAHqoEtIebzFhocSLNdcbl2a?=
 =?us-ascii?Q?3nIjbYyON2kxKerUus/48YrpPppNKR9Bf7q6WXLdfa2i1N6S9Oi76nubRZbL?=
 =?us-ascii?Q?j7yzwhTzG5KBaLNlNblfKmIwwd3ObN9T3g3TtijhTBX/8ZXU1AA6UWhlENuX?=
 =?us-ascii?Q?yhl8DYD72dmf5BxE+x7RFY30on8PJ7C37DGLVGHUggbEHGTTqAiezsYVKNur?=
 =?us-ascii?Q?LY9fJUdQxRYlRKMWaIlImf0oTckcMVsfck9ffdLs+5dzecWQTixkgVyN72L7?=
 =?us-ascii?Q?K2zvywO966EGNkQhB86CXzFsef1691qA7iUr/oRq17GuFeCFNMLkMDUjx/IL?=
 =?us-ascii?Q?K9OMfJ+G8Xf7UDXbVpkO77lbqrioW88Qo2chxHgKAJgISxHi+e4llWGlInBq?=
 =?us-ascii?Q?iiOmUB1+aK/fTiVyxOAOFsgkcyztCAAs4LW8LFXBBI8ugLvjjIr8jmefVFWi?=
 =?us-ascii?Q?aufHoCoCWo7eVA9Mdu4GUmeeWytiKTaDiagmaa8XGHhN1sIdqN1SU6P0h2LS?=
 =?us-ascii?Q?DkaO6okplPoesLed+ifFAm8PzyYLyg8Nv2LXPGwN/TRFGnNN2ttzS3D1Z9RN?=
 =?us-ascii?Q?xdmV3HbMu2wBftwkGdgQe8i5bGmy2YigfPLgDmUbOin1KIqawR7jtd35tqUS?=
 =?us-ascii?Q?8PMn2i5OjOoktWwP3oWQx5nBkXQ4234brbxh0AufMKhoPQqVlsD1gEdLNpBL?=
 =?us-ascii?Q?tXoa1xm/8uRMpVcNaEv4uxLhtj+pBQmWSCSh?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+Csws0FhOAeHiNRafVZ+pLqKXjLyFWbRIXIbAeY1MXvL63XeGHq9vBRLx4Qh?=
 =?us-ascii?Q?ODPf2fXfYU34zhB1jdWhW6dlVWtcmRs6t5bdMNfa6p12F8odQs4cQxdV0aqu?=
 =?us-ascii?Q?GIPq1KxBD4+0NwLD9hB7VW0Zdj1A8g+d++a0W59uTot0Kr2OnUHz/EYfydcw?=
 =?us-ascii?Q?/zyizaR54qyyPJABMxOabeJL6QuvYj8w0PFqiI3Agf3EY3IQJPCyq0gLSeDM?=
 =?us-ascii?Q?dRly3WKVTNU6ypQqpXd603XPpFNJqQnd0URkP5HuTABz7M6McUseCWeUhphM?=
 =?us-ascii?Q?3vIK1PfiqUNifFP/UPPCUunFzokkGi5TUg0VbBPgcJamEHFLRnePAH/CpqfL?=
 =?us-ascii?Q?fUOvKm1tmiZMuaM79AgrGPG2T6a44ck+ic2ma5egeYR4B7lS59fPwsFqgF8W?=
 =?us-ascii?Q?2qynT4aOfNndk0T7QIYEzCbGvlRvqWUNoM6rDAz+tFhUUwDyOeEC63cagXNG?=
 =?us-ascii?Q?pGhTreRStICdLyQbMmUq3Q/xW1f+e/7omYlUqBqbHziAPZxWHEasnl8n0O68?=
 =?us-ascii?Q?1HNofb3gsDWeNWP5YUbc68PfWjcjgY6KPLAlHlRiP8xRAYp5G79vJQCRQfJ8?=
 =?us-ascii?Q?prmMM23TgSn27XwhQmXvjk2r0AjJZ6xbxykrE2quIFtrYlI1ktk1mW/xt1jo?=
 =?us-ascii?Q?+61EJCrGjLViRYVY2Xrh8MbJ+f++cwvnFqyIlGyTPzBFonkEgJZRg1qiJ6FU?=
 =?us-ascii?Q?Nu6UKZrZQ67csBGgg0qnt3JN539xI2wOlE2iftduQd0/O5KtBcsQCbVBESqz?=
 =?us-ascii?Q?mNaG7HTvwt3xY1zeKFyvgKVIxCtYvFkEsAxGSNNcOMffsbws06WLNva2qLsl?=
 =?us-ascii?Q?fZSdGOESXwnlUqxhp4wAg4VEbkyBZe14gof1oIQ+IBZL82hKAQnbo6QpnXT5?=
 =?us-ascii?Q?iC0iIw/m9yeG9l17P63gZKTfM/17+KloMqlDGJ/shJw/zCXpoiL1Ck154c7a?=
 =?us-ascii?Q?/NDbJq3cKoA5h/W6EArF7f54eUE5b13Wp+1IaqzOu9wJc4yimcjaIgvPFRay?=
 =?us-ascii?Q?6lsxvGPN+/8gJG+c5XBpM7eIR1leU39SOtEKcf9/MwVznWxRTUWd5Hyz+34W?=
 =?us-ascii?Q?ni55tOXC9qD3pO1HHbsNehv4U/3kTBbzLu8fCno1Oy1QMFB9hYiN0qyT55Ik?=
 =?us-ascii?Q?OTBq7lF9bntY5OaIKGbci/snzkGATPUDMHR24VbcwrHqi5vDVztFU7Hr1Rp/?=
 =?us-ascii?Q?FYWJU8tQ9Xx3XFEdpp5R2qtkIApLc12sqloE/OvpC/1R5uehVsALDLfvvZCs?=
 =?us-ascii?Q?x/rwdbvpW9fydpypvBpvrUnyQP0IWYOITeipsqnjbe31/y/GcftxB3oo4+c1?=
 =?us-ascii?Q?qMLrrRfxFLcl03cKq0UeXMztzxCS/Es0Ei9fD2IxnyYBX8FaRpefLHMu0ShY?=
 =?us-ascii?Q?QlfxkG1jPHaC1lqxgW9ag3MIoCKvRzCu/P6Fv8f2u8FBR5aA0cx8RrABvsw1?=
 =?us-ascii?Q?leNNdZW5/mJ5ve5l90i5ja86eaHEtjSNFGHpfxNYSsgeSxupZRrCgQH+cp4m?=
 =?us-ascii?Q?vFjHKZzz6R/t9zWLU7gnU2aI5Zc5LHEnLfhxY5/Sm1dLF2RQB8cmvvDRaxeb?=
 =?us-ascii?Q?oIb9KNGs+1IsACvcPfcVlWEXCDoQ3/UQyMVm6QFje0RfYs4rZZtc6kKg12qo?=
 =?us-ascii?Q?rJXsOY0usji9duQUyr8diI8PXoq+JvYov8hJZ5aDEoXuOh9enWR4++3lJhZ6?=
 =?us-ascii?Q?Lt9zQQ9DrQQ15vxWIDvrzI86HlpOB3OEw9Ay3bsaBOz36SZE81jQEfmRDg2p?=
 =?us-ascii?Q?/qT1oOLi/A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d8ed8ac-dfd3-4e70-10e7-08de6f8e6bba
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2026 08:11:02.1985 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QrqImipb9POjmS2lRQXXcrXe1Q8uWp2z+QrpTM2/E+cFF/+Un/UKK8A+YLdkjl7pXei7E6rd38MHQSnLRHZCfw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7987
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
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
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
X-Rspamd-Queue-Id: DE4FA15CEF0
X-Rspamd-Action: no action

On Wed, Feb 18, 2026 at 03:07:33PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: series starting with [1/2] drm/i915/dp: Fix ww mutex lock failure in for_each_joiner_candidate() loop
> URL   : https://patchwork.freedesktop.org/series/161758/
> State : failure

Patchset is pushed to drm-intel-next, thanks for the review.

The failures are unrelated; none of the hosts has a DP MST output where
the change makes a difference.

> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_18003_full -> Patchwork_161758v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_161758v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_161758v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (9 -> 9)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_161758v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_lmem_swapping@smem-oom:
>     - shard-dg1:          [PASS][1] -> [FAIL][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-dg1-12/igt@gem_lmem_swapping@smem-oom.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-dg1-13/igt@gem_lmem_swapping@smem-oom.html
> 
>   * igt@kms_3d@basic:
>     - shard-mtlp:         [PASS][3] -> [SKIP][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-mtlp-6/igt@kms_3d@basic.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-mtlp-1/igt@kms_3d@basic.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1:
>     - shard-tglu:         [PASS][5] -> [ABORT][6]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-tglu-2/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-10/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1.html
> 
>   
> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_18003_full and Patchwork_161758v1_full:
> 
> ### New IGT tests (44) ###
> 
>   * igt@kms_cursor_legacy@basic-max-pipe-crc-check:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@kms_cursor_legacy@batch-first:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@kms_cursor_legacy@binary-wait:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@kms_cursor_legacy@bo-too-big-interruptible:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@kms_cursor_legacy@ccs-on-another-bo-yf-tiled-ccs:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@kms_cursor_legacy@crc:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@kms_cursor_legacy@dr1-dirt:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@kms_cursor_legacy@etime-multi-wait-for-submit-unsubmitted-submitted:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@kms_cursor_legacy@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@kms_cursor_legacy@fbc-2p-primscrn-cur-indfb-draw-mmap-cpu:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@kms_cursor_legacy@fbcpsr-2p-scndscrn-spr-indfb-draw-render:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@kms_cursor_legacy@gen12-invalid-class-instance:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@kms_cursor_legacy@legacy-engines-queued:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@kms_cursor_legacy@mi-rpc:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@kms_cursor_legacy@parallel-out-fence:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@kms_cursor_legacy@plain-flip-ts-check-interruptible:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@kms_cursor_legacy@plane-use-after-nonblocking-unbind-fencing:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@kms_cursor_legacy@psr-2p-primscrn-cur-indfb-draw-blt:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@kms_cursor_legacy@psr-2p-scndscrn-cur-indfb-move:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@kms_cursor_legacy@query-topology-kernel-writes:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@kms_cursor_legacy@random-ccs-data-4-tiled-dg2-rc-ccs:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@kms_cursor_legacy@readonly:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@kms_cursor_legacy@reimport-vs-gem_close-race:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@kms_cursor_legacy@suspend-resume-context:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@kms_cursor_legacy@x-tiled-addfb-size-offset-overflow:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@kms_flip@b:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@kms_flip@bad-handle:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@kms_flip@bad-htotal:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@kms_flip@basic-x-tiling:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@kms_flip@binary-wait-signaled:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@kms_flip@cpuset-medium-copy-odd:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@kms_flip@cursorb-vs-flipa-toggle:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@kms_flip@execbuf-with-allocator:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@kms_flip@fbcpsr-1p-primscrn-cur-indfb-draw-blt:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@kms_flip@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-gtt:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@kms_flip@invalid-buf:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@kms_flip@object-reloc-keep-cache:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@kms_flip@pixel-format-4-tiled-lnl-ccs-modifier-source-clamping:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@kms_flip@psr-1p-primscrn-pri-indfb-draw-mmap-wc:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@kms_flip@psr-2p-scndscrn-spr-indfb-draw-render:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@kms_flip@reset-context:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@kms_flip@single-wait-all-for-submit-submitted:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@kms_flip@sync-unmap-after-close:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@kms_flip@verify-pxp-key-change-after-suspend-resume:
>     - Statuses :
>     - Exec time: [None] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_161758v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@device_reset@unbind-cold-reset-rebind:
>     - shard-tglu-1:       NOTRUN -> [SKIP][7] ([i915#11078])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-1/igt@device_reset@unbind-cold-reset-rebind.html
> 
>   * igt@gem_ccs@block-copy-compressed:
>     - shard-tglu-1:       NOTRUN -> [SKIP][8] ([i915#3555] / [i915#9323])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-1/igt@gem_ccs@block-copy-compressed.html
> 
>   * igt@gem_ccs@large-ctrl-surf-copy:
>     - shard-rkl:          NOTRUN -> [SKIP][9] ([i915#13008])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-5/igt@gem_ccs@large-ctrl-surf-copy.html
> 
>   * igt@gem_close_race@multigpu-basic-process:
>     - shard-tglu:         NOTRUN -> [SKIP][10] ([i915#7697])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-6/igt@gem_close_race@multigpu-basic-process.html
> 
>   * igt@gem_create@create-ext-cpu-access-big:
>     - shard-tglu-1:       NOTRUN -> [SKIP][11] ([i915#6335])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-1/igt@gem_create@create-ext-cpu-access-big.html
> 
>   * igt@gem_exec_balancer@parallel-bb-first:
>     - shard-tglu-1:       NOTRUN -> [SKIP][12] ([i915#4525])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-1/igt@gem_exec_balancer@parallel-bb-first.html
> 
>   * igt@gem_exec_capture@capture-invisible@smem0:
>     - shard-tglu-1:       NOTRUN -> [SKIP][13] ([i915#6334]) +1 other test skip
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-1/igt@gem_exec_capture@capture-invisible@smem0.html
> 
>   * igt@gem_exec_reloc@basic-gtt-wc-active:
>     - shard-rkl:          NOTRUN -> [SKIP][14] ([i915#3281]) +7 other tests skip
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-wc-active.html
> 
>   * igt@gem_exec_suspend@basic-s3:
>     - shard-glk10:        NOTRUN -> [INCOMPLETE][15] ([i915#13196] / [i915#13356]) +1 other test incomplete
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-glk10/igt@gem_exec_suspend@basic-s3.html
> 
>   * igt@gem_lmem_evict@dontneed-evict-race:
>     - shard-rkl:          NOTRUN -> [SKIP][16] ([i915#4613] / [i915#7582])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-7/igt@gem_lmem_evict@dontneed-evict-race.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][17] ([i915#4613]) +1 other test skip
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-5/igt@gem_lmem_swapping@heavy-verify-random-ccs.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify-ccs:
>     - shard-tglu-1:       NOTRUN -> [SKIP][18] ([i915#4613])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-1/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
> 
>   * igt@gem_lmem_swapping@random:
>     - shard-glk:          NOTRUN -> [SKIP][19] ([i915#4613]) +2 other tests skip
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-glk9/igt@gem_lmem_swapping@random.html
> 
>   * igt@gem_lmem_swapping@smem-oom@lmem0:
>     - shard-dg1:          [PASS][20] -> [CRASH][21] ([i915#5493])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-dg1-12/igt@gem_lmem_swapping@smem-oom@lmem0.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-dg1-13/igt@gem_lmem_swapping@smem-oom@lmem0.html
> 
>   * igt@gem_lmem_swapping@verify-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][22] ([i915#4613]) +1 other test skip
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-6/igt@gem_lmem_swapping@verify-ccs.html
> 
>   * igt@gem_mmap_offset@clear-via-pagefault:
>     - shard-mtlp:         [PASS][23] -> [ABORT][24] ([i915#14809]) +1 other test abort
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-mtlp-2/igt@gem_mmap_offset@clear-via-pagefault.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-mtlp-8/igt@gem_mmap_offset@clear-via-pagefault.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-tglu-1:       NOTRUN -> [WARN][25] ([i915#2658])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-1/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_readwrite@write-bad-handle:
>     - shard-rkl:          NOTRUN -> [SKIP][26] ([i915#3282])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-7/igt@gem_readwrite@write-bad-handle.html
> 
>   * igt@gem_userptr_blits@create-destroy-unsync:
>     - shard-tglu:         NOTRUN -> [SKIP][27] ([i915#3297]) +2 other tests skip
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-8/igt@gem_userptr_blits@create-destroy-unsync.html
> 
>   * igt@gem_userptr_blits@readonly-pwrite-unsync:
>     - shard-tglu-1:       NOTRUN -> [SKIP][28] ([i915#3297])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-1/igt@gem_userptr_blits@readonly-pwrite-unsync.html
> 
>   * igt@gem_workarounds@suspend-resume:
>     - shard-dg2:          [PASS][29] -> [INCOMPLETE][30] ([i915#13356])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-dg2-4/igt@gem_workarounds@suspend-resume.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-dg2-3/igt@gem_workarounds@suspend-resume.html
> 
>   * igt@gen9_exec_parse@bb-start-cmd:
>     - shard-tglu:         NOTRUN -> [SKIP][31] ([i915#2527] / [i915#2856])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-8/igt@gen9_exec_parse@bb-start-cmd.html
> 
>   * igt@gen9_exec_parse@bb-start-far:
>     - shard-tglu-1:       NOTRUN -> [SKIP][32] ([i915#2527] / [i915#2856]) +2 other tests skip
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-1/igt@gen9_exec_parse@bb-start-far.html
> 
>   * igt@gen9_exec_parse@bb-start-param:
>     - shard-rkl:          NOTRUN -> [SKIP][33] ([i915#2527]) +2 other tests skip
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-5/igt@gen9_exec_parse@bb-start-param.html
> 
>   * igt@i915_module_load@resize-bar:
>     - shard-tglu:         NOTRUN -> [SKIP][34] ([i915#6412])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-8/igt@i915_module_load@resize-bar.html
> 
>   * igt@i915_pm_freq_api@freq-basic-api:
>     - shard-tglu:         NOTRUN -> [SKIP][35] ([i915#8399])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-6/igt@i915_pm_freq_api@freq-basic-api.html
> 
>   * igt@i915_pm_freq_mult@media-freq@gt0:
>     - shard-tglu:         NOTRUN -> [SKIP][36] ([i915#6590]) +1 other test skip
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-6/igt@i915_pm_freq_mult@media-freq@gt0.html
> 
>   * igt@i915_query@hwconfig_table:
>     - shard-tglu:         NOTRUN -> [SKIP][37] ([i915#6245])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-8/igt@i915_query@hwconfig_table.html
> 
>   * igt@i915_query@test-query-geometry-subslices:
>     - shard-rkl:          NOTRUN -> [SKIP][38] ([i915#5723])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-5/igt@i915_query@test-query-geometry-subslices.html
> 
>   * igt@i915_suspend@fence-restore-tiled2untiled:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][39] ([i915#4817])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-glk1/igt@i915_suspend@fence-restore-tiled2untiled.html
> 
>   * igt@i915_suspend@forcewake:
>     - shard-rkl:          [PASS][40] -> [INCOMPLETE][41] ([i915#4817])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-rkl-7/igt@i915_suspend@forcewake.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-3/igt@i915_suspend@forcewake.html
> 
>   * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
>     - shard-tglu-1:       NOTRUN -> [SKIP][42] ([i915#9531])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-1/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
>     - shard-glk10:        NOTRUN -> [SKIP][43] ([i915#1769])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-glk10/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
>     - shard-rkl:          NOTRUN -> [SKIP][44] ([i915#1769] / [i915#3555])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-5/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
> 
>   * igt@kms_atomic_transition@plane-toggle-modeset-transition:
>     - shard-dg2:          [PASS][45] -> [FAIL][46] ([i915#5956])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-dg2-8/igt@kms_atomic_transition@plane-toggle-modeset-transition.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-dg2-4/igt@kms_atomic_transition@plane-toggle-modeset-transition.html
> 
>   * igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [FAIL][47] ([i915#5956])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-dg2-4/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_big_fb@4-tiled-addfb:
>     - shard-tglu-1:       NOTRUN -> [SKIP][48] ([i915#5286]) +3 other tests skip
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-1/igt@kms_big_fb@4-tiled-addfb.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
>     - shard-rkl:          NOTRUN -> [SKIP][49] ([i915#5286]) +1 other test skip
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-7/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>     - shard-tglu:         NOTRUN -> [SKIP][50] ([i915#5286]) +2 other tests skip
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-8/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_fb@linear-32bpp-rotate-90:
>     - shard-tglu-1:       NOTRUN -> [SKIP][51] +38 other tests skip
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-1/igt@kms_big_fb@linear-32bpp-rotate-90.html
> 
>   * igt@kms_big_fb@x-tiled-8bpp-rotate-90:
>     - shard-rkl:          NOTRUN -> [SKIP][52] ([i915#3638]) +3 other tests skip
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-5/igt@kms_big_fb@x-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@yf-tiled-64bpp-rotate-90:
>     - shard-rkl:          NOTRUN -> [SKIP][53] +3 other tests skip
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-7/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs-cc@pipe-c-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][54] ([i915#14098] / [i915#6095]) +14 other tests skip
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-4/igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs-cc@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][55] ([i915#6095]) +207 other tests skip
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-dg1-16/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][56] ([i915#6095]) +25 other tests skip
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-8/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-d-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][57] ([i915#10307] / [i915#6095]) +81 other tests skip
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-dg2-3/igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-d-hdmi-a-3.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs:
>     - shard-tglu-1:       NOTRUN -> [SKIP][58] ([i915#6095]) +34 other tests skip
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-1/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs:
>     - shard-glk10:        NOTRUN -> [SKIP][59] +100 other tests skip
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-glk10/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc:
>     - shard-tglu:         NOTRUN -> [SKIP][60] ([i915#6095]) +24 other tests skip
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs@pipe-c-dp-3:
>     - shard-dg2:          NOTRUN -> [SKIP][61] ([i915#6095]) +55 other tests skip
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-dg2-11/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs@pipe-c-dp-3.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2:
>     - shard-glk:          NOTRUN -> [SKIP][62] +220 other tests skip
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-glk9/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][63] ([i915#12313])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-7/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][64] ([i915#12313]) +1 other test skip
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-8/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][65] ([i915#10307] / [i915#10434] / [i915#6095]) +1 other test skip
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-dg2-4/igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_cdclk@mode-transition:
>     - shard-tglu-1:       NOTRUN -> [SKIP][66] ([i915#3742])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-1/igt@kms_cdclk@mode-transition.html
> 
>   * igt@kms_chamelium_edid@hdmi-mode-timings:
>     - shard-tglu:         NOTRUN -> [SKIP][67] ([i915#11151] / [i915#7828]) +2 other tests skip
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-6/igt@kms_chamelium_edid@hdmi-mode-timings.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-storm-disable:
>     - shard-tglu-1:       NOTRUN -> [SKIP][68] ([i915#11151] / [i915#7828]) +4 other tests skip
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-1/igt@kms_chamelium_hpd@dp-hpd-storm-disable.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][69] ([i915#11151] / [i915#7828]) +2 other tests skip
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-5/igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-tglu-1:       NOTRUN -> [SKIP][70] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-1/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_content_protection@atomic-hdcp14:
>     - shard-rkl:          NOTRUN -> [SKIP][71] ([i915#6944])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-7/igt@kms_content_protection@atomic-hdcp14.html
> 
>   * igt@kms_content_protection@content-type-change:
>     - shard-tglu:         NOTRUN -> [SKIP][72] ([i915#6944] / [i915#9424])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-8/igt@kms_content_protection@content-type-change.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-0:
>     - shard-rkl:          NOTRUN -> [SKIP][73] ([i915#15330] / [i915#3116])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-5/igt@kms_content_protection@dp-mst-lic-type-0.html
> 
>   * igt@kms_content_protection@legacy-hdcp14:
>     - shard-tglu-1:       NOTRUN -> [SKIP][74] ([i915#6944])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-1/igt@kms_content_protection@legacy-hdcp14.html
> 
>   * igt@kms_content_protection@srm@pipe-a-dp-3:
>     - shard-dg2:          NOTRUN -> [FAIL][75] ([i915#7173])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-dg2-11/igt@kms_content_protection@srm@pipe-a-dp-3.html
> 
>   * igt@kms_content_protection@uevent-hdcp14:
>     - shard-tglu:         NOTRUN -> [SKIP][76] ([i915#6944])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-6/igt@kms_content_protection@uevent-hdcp14.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-128x42:
>     - shard-tglu-1:       NOTRUN -> [FAIL][77] ([i915#13566]) +1 other test fail
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-1/igt@kms_cursor_crc@cursor-onscreen-128x42.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-512x170:
>     - shard-rkl:          NOTRUN -> [SKIP][78] ([i915#13049])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-random-128x42@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [FAIL][79] ([i915#13566])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-8/igt@kms_cursor_crc@cursor-random-128x42@pipe-a-hdmi-a-1.html
>     - shard-tglu:         NOTRUN -> [FAIL][80] ([i915#13566]) +1 other test fail
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-8/igt@kms_cursor_crc@cursor-random-128x42@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
>     - shard-tglu-1:       NOTRUN -> [SKIP][81] ([i915#3555]) +1 other test skip
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-1/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-128x42:
>     - shard-rkl:          [PASS][82] -> [FAIL][83] ([i915#13566]) +1 other test fail
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-rkl-3/igt@kms_cursor_crc@cursor-sliding-128x42.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-7/igt@kms_cursor_crc@cursor-sliding-128x42.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-1:
>     - shard-tglu:         [PASS][84] -> [FAIL][85] ([i915#13566]) +1 other test fail
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-tglu-10/igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-1.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-10/igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions:
>     - shard-dg1:          [PASS][86] -> [ABORT][87] ([i915#13562])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-dg1-13/igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-dg1-16/igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
>     - shard-dg1:          [PASS][88] -> [DMESG-WARN][89] ([i915#4423])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-dg1-16/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-dg1-18/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
> 
>   * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
>     - shard-tglu-1:       NOTRUN -> [SKIP][90] ([i915#9723])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-1/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
> 
>   * igt@kms_dp_link_training@uhbr-mst:
>     - shard-tglu-1:       NOTRUN -> [SKIP][91] ([i915#13748])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-1/igt@kms_dp_link_training@uhbr-mst.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp:
>     - shard-tglu-1:       NOTRUN -> [SKIP][92] ([i915#3840])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-1/igt@kms_dsc@dsc-fractional-bpp.html
> 
>   * igt@kms_dsc@dsc-with-output-formats:
>     - shard-tglu-1:       NOTRUN -> [SKIP][93] ([i915#3555] / [i915#3840])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-1/igt@kms_dsc@dsc-with-output-formats.html
> 
>   * igt@kms_dsc@dsc-with-output-formats-with-bpc:
>     - shard-tglu:         NOTRUN -> [SKIP][94] ([i915#3840] / [i915#9053])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-8/igt@kms_dsc@dsc-with-output-formats-with-bpc.html
> 
>   * igt@kms_fbcon_fbt@psr:
>     - shard-tglu:         NOTRUN -> [SKIP][95] ([i915#3469])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-6/igt@kms_fbcon_fbt@psr.html
> 
>   * igt@kms_feature_discovery@display-4x:
>     - shard-tglu-1:       NOTRUN -> [SKIP][96] ([i915#1839])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-1/igt@kms_feature_discovery@display-4x.html
> 
>   * igt@kms_flip@2x-absolute-wf_vblank:
>     - shard-tglu:         NOTRUN -> [SKIP][97] ([i915#3637] / [i915#9934]) +2 other tests skip
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-6/igt@kms_flip@2x-absolute-wf_vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend-interruptible:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][98] ([i915#12745] / [i915#4839])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-glk6/igt@kms_flip@2x-flip-vs-suspend-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-hdmi-a1-hdmi-a2:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][99] ([i915#4839])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-glk6/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@2x-modeset-vs-vblank-race-interruptible:
>     - shard-rkl:          NOTRUN -> [SKIP][100] ([i915#9934]) +1 other test skip
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-5/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible.html
> 
>   * igt@kms_flip@2x-wf_vblank-ts-check-interruptible:
>     - shard-tglu-1:       NOTRUN -> [SKIP][101] ([i915#3637] / [i915#9934])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-1/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible:
>     - shard-tglu:         [PASS][102] -> [ABORT][103] ([i915#15470])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-tglu-2/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-10/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
>     - shard-tglu:         NOTRUN -> [SKIP][104] ([i915#15643]) +2 other tests skip
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-6/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:
>     - shard-rkl:          NOTRUN -> [SKIP][105] ([i915#15643])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
>     - shard-tglu-1:       NOTRUN -> [SKIP][106] ([i915#15643]) +1 other test skip
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-move:
>     - shard-tglu:         NOTRUN -> [SKIP][107] +27 other tests skip
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary:
>     - shard-dg2:          [PASS][108] -> [FAIL][109] ([i915#15389] / [i915#6880]) +1 other test fail
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-wc:
>     - shard-rkl:          NOTRUN -> [SKIP][110] ([i915#15102])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:
>     - shard-tglu:         NOTRUN -> [SKIP][111] ([i915#15102]) +12 other tests skip
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
>     - shard-rkl:          NOTRUN -> [SKIP][112] ([i915#15102] / [i915#3023]) +8 other tests skip
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
>     - shard-tglu:         NOTRUN -> [SKIP][113] ([i915#5439])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-8/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:
>     - shard-tglu-1:       NOTRUN -> [SKIP][114] ([i915#15102]) +14 other tests skip
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render:
>     - shard-rkl:          NOTRUN -> [SKIP][115] ([i915#1825]) +11 other tests skip
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-cpu:
>     - shard-snb:          NOTRUN -> [SKIP][116] +27 other tests skip
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-snb5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:
>     - shard-dg1:          NOTRUN -> [SKIP][117] ([i915#8708]) +1 other test skip
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-dg1-17/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html
> 
>   * igt@kms_hdr@brightness-with-hdr:
>     - shard-rkl:          NOTRUN -> [SKIP][118] ([i915#12713])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-5/igt@kms_hdr@brightness-with-hdr.html
> 
>   * igt@kms_hdr@static-toggle:
>     - shard-tglu-1:       NOTRUN -> [SKIP][119] ([i915#3555] / [i915#8228]) +1 other test skip
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-1/igt@kms_hdr@static-toggle.html
> 
>   * igt@kms_joiner@basic-big-joiner:
>     - shard-tglu:         NOTRUN -> [SKIP][120] ([i915#15460])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-6/igt@kms_joiner@basic-big-joiner.html
> 
>   * igt@kms_joiner@basic-max-non-joiner:
>     - shard-rkl:          NOTRUN -> [SKIP][121] ([i915#13688])
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-5/igt@kms_joiner@basic-max-non-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-force-ultra-joiner:
>     - shard-tglu:         NOTRUN -> [SKIP][122] ([i915#15458])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-8/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][123] ([i915#12756] / [i915#13409] / [i915#13476])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-glk9/igt@kms_pipe_crc_basic@suspend-read-crc.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-2:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][124] ([i915#13409] / [i915#13476])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-glk9/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_plane@pixel-format-4-tiled-bmg-ccs-modifier-source-clamping:
>     - shard-rkl:          NOTRUN -> [SKIP][125] ([i915#8825])
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-5/igt@kms_plane@pixel-format-4-tiled-bmg-ccs-modifier-source-clamping.html
> 
>   * igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-modifier-source-clamping:
>     - shard-tglu:         NOTRUN -> [SKIP][126] ([i915#8825])
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-8/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-modifier-source-clamping.html
> 
>   * igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-modifier@pipe-b-plane-5:
>     - shard-rkl:          NOTRUN -> [SKIP][127] ([i915#15608]) +1 other test skip
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-7/igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-modifier@pipe-b-plane-5.html
> 
>   * igt@kms_plane@pixel-format-y-tiled-modifier@pipe-b-plane-7:
>     - shard-tglu-1:       NOTRUN -> [SKIP][128] ([i915#15608]) +3 other tests skip
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-1/igt@kms_plane@pixel-format-y-tiled-modifier@pipe-b-plane-7.html
> 
>   * igt@kms_plane@pixel-format-yf-tiled-modifier:
>     - shard-tglu-1:       NOTRUN -> [SKIP][129] ([i915#8825]) +1 other test skip
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-1/igt@kms_plane@pixel-format-yf-tiled-modifier.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a:
>     - shard-rkl:          [PASS][130] -> [INCOMPLETE][131] ([i915#14412]) +1 other test incomplete
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-rkl-5/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-3/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a.html
> 
>   * igt@kms_plane_alpha_blend@alpha-basic:
>     - shard-glk:          NOTRUN -> [FAIL][132] ([i915#12178])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-glk9/igt@kms_plane_alpha_blend@alpha-basic.html
> 
>   * igt@kms_plane_alpha_blend@alpha-basic@pipe-a-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [FAIL][133] ([i915#7862]) +1 other test fail
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-glk9/igt@kms_plane_alpha_blend@alpha-basic@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_plane_lowres@tiling-yf:
>     - shard-tglu:         NOTRUN -> [SKIP][134] ([i915#3555]) +2 other tests skip
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-6/igt@kms_plane_lowres@tiling-yf.html
> 
>   * igt@kms_plane_multiple@2x-tiling-4:
>     - shard-tglu:         NOTRUN -> [SKIP][135] ([i915#13958])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-8/igt@kms_plane_multiple@2x-tiling-4.html
> 
>   * igt@kms_plane_multiple@2x-tiling-y:
>     - shard-tglu-1:       NOTRUN -> [SKIP][136] ([i915#13958])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-1/igt@kms_plane_multiple@2x-tiling-y.html
> 
>   * igt@kms_pm_dc@dc5-retention-flops:
>     - shard-tglu-1:       NOTRUN -> [SKIP][137] ([i915#3828])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-1/igt@kms_pm_dc@dc5-retention-flops.html
> 
>   * igt@kms_pm_dc@dc6-psr:
>     - shard-dg1:          NOTRUN -> [SKIP][138] ([i915#9685])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-dg1-17/igt@kms_pm_dc@dc6-psr.html
> 
>   * igt@kms_pm_rpm@dpms-non-lpsp:
>     - shard-rkl:          NOTRUN -> [SKIP][139] ([i915#15073])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-5/igt@kms_pm_rpm@dpms-non-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress:
>     - shard-dg2:          [PASS][140] -> [SKIP][141] ([i915#12916])
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-dg2-8/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * igt@kms_pm_rpm@system-suspend-idle:
>     - shard-dg2:          [PASS][142] -> [INCOMPLETE][143] ([i915#14419])
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-dg2-7/igt@kms_pm_rpm@system-suspend-idle.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-dg2-5/igt@kms_pm_rpm@system-suspend-idle.html
> 
>   * igt@kms_prime@basic-modeset-hybrid:
>     - shard-tglu-1:       NOTRUN -> [SKIP][144] ([i915#6524])
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-1/igt@kms_prime@basic-modeset-hybrid.html
> 
>   * igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-sf:
>     - shard-glk:          NOTRUN -> [SKIP][145] ([i915#11520]) +7 other tests skip
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-glk9/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf:
>     - shard-rkl:          NOTRUN -> [SKIP][146] ([i915#11520]) +1 other test skip
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-5/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area:
>     - shard-snb:          NOTRUN -> [SKIP][147] ([i915#11520]) +1 other test skip
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-snb5/igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:
>     - shard-tglu:         NOTRUN -> [SKIP][148] ([i915#11520]) +3 other tests skip
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-6/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area:
>     - shard-glk10:        NOTRUN -> [SKIP][149] ([i915#11520]) +1 other test skip
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-glk10/igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area-big-fb:
>     - shard-tglu-1:       NOTRUN -> [SKIP][150] ([i915#11520]) +5 other tests skip
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-1/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area-big-fb.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-tglu:         NOTRUN -> [SKIP][151] ([i915#9683])
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-8/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_psr@fbc-pr-sprite-render:
>     - shard-tglu-1:       NOTRUN -> [SKIP][152] ([i915#9732]) +10 other tests skip
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-1/igt@kms_psr@fbc-pr-sprite-render.html
> 
>   * igt@kms_psr@fbc-psr-primary-page-flip:
>     - shard-tglu:         NOTRUN -> [SKIP][153] ([i915#9732]) +9 other tests skip
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-6/igt@kms_psr@fbc-psr-primary-page-flip.html
> 
>   * igt@kms_psr@pr-primary-mmap-gtt:
>     - shard-rkl:          NOTRUN -> [SKIP][154] ([i915#1072] / [i915#9732]) +5 other tests skip
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-5/igt@kms_psr@pr-primary-mmap-gtt.html
> 
>   * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
>     - shard-tglu-1:       NOTRUN -> [SKIP][155] ([i915#9685])
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-1/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
> 
>   * igt@kms_scaling_modes@scaling-mode-full-aspect:
>     - shard-rkl:          NOTRUN -> [SKIP][156] ([i915#3555])
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-7/igt@kms_scaling_modes@scaling-mode-full-aspect.html
> 
>   * igt@kms_selftest@drm_framebuffer:
>     - shard-dg1:          NOTRUN -> [ABORT][157] ([i915#13179]) +1 other test abort
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-dg1-17/igt@kms_selftest@drm_framebuffer.html
> 
>   * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
>     - shard-rkl:          NOTRUN -> [SKIP][158] ([i915#8623])
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-5/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
> 
>   * igt@kms_vrr@max-min:
>     - shard-tglu-1:       NOTRUN -> [SKIP][159] ([i915#9906])
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-1/igt@kms_vrr@max-min.html
> 
>   * igt@perf_pmu@rc6-suspend:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][160] ([i915#13356])
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-glk6/igt@perf_pmu@rc6-suspend.html
> 
>   * igt@sriov_basic@enable-vfs-autoprobe-off@numvfs-6:
>     - shard-tglu:         NOTRUN -> [FAIL][161] ([i915#12910]) +9 other tests fail
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-6/igt@sriov_basic@enable-vfs-autoprobe-off@numvfs-6.html
> 
>   * igt@sriov_basic@enable-vfs-autoprobe-on:
>     - shard-rkl:          NOTRUN -> [SKIP][162] ([i915#9917]) +1 other test skip
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-7/igt@sriov_basic@enable-vfs-autoprobe-on.html
> 
>   * igt@sriov_basic@enable-vfs-bind-unbind-each@numvfs-2:
>     - shard-tglu-1:       NOTRUN -> [FAIL][163] ([i915#12910]) +8 other tests fail
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-tglu-1/igt@sriov_basic@enable-vfs-bind-unbind-each@numvfs-2.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_lmem_swapping@smem-oom:
>     - shard-dg2:          [FAIL][164] -> [PASS][165]
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-dg2-11/igt@gem_lmem_swapping@smem-oom.html
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-dg2-11/igt@gem_lmem_swapping@smem-oom.html
> 
>   * igt@gem_lmem_swapping@smem-oom@lmem0:
>     - shard-dg2:          [CRASH][166] ([i915#5493]) -> [PASS][167]
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-dg2-11/igt@gem_lmem_swapping@smem-oom@lmem0.html
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-dg2-11/igt@gem_lmem_swapping@smem-oom@lmem0.html
> 
>   * igt@i915_suspend@fence-restore-untiled:
>     - shard-rkl:          [INCOMPLETE][168] ([i915#4817]) -> [PASS][169]
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-rkl-4/igt@i915_suspend@fence-restore-untiled.html
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-7/igt@i915_suspend@fence-restore-untiled.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-mtlp:         [FAIL][170] ([i915#5138]) -> [PASS][171]
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-mtlp-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0:
>     - shard-dg1:          [DMESG-WARN][172] ([i915#4423]) -> [PASS][173] +1 other test pass
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-dg1-18/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0.html
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-dg1-14/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0.html
> 
>   * igt@kms_dp_linktrain_fallback@dp-fallback:
>     - shard-dg2:          [SKIP][174] ([i915#13707]) -> [PASS][175]
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-dg2-1/igt@kms_dp_linktrain_fallback@dp-fallback.html
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-dg2-11/igt@kms_dp_linktrain_fallback@dp-fallback.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend-interruptible:
>     - shard-snb:          [TIMEOUT][176] ([i915#14033] / [i915#14350]) -> [PASS][177]
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-snb4/igt@kms_flip@2x-flip-vs-suspend-interruptible.html
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-snb7/igt@kms_flip@2x-flip-vs-suspend-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1:
>     - shard-snb:          [TIMEOUT][178] ([i915#14033]) -> [PASS][179] +2 other tests pass
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-snb1/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.html
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-snb7/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.html
> 
>   * igt@kms_hdr@static-swap:
>     - shard-dg2:          [SKIP][180] ([i915#3555] / [i915#8228]) -> [PASS][181]
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-dg2-6/igt@kms_hdr@static-swap.html
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-dg2-11/igt@kms_hdr@static-swap.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size:
>     - shard-rkl:          [SKIP][182] ([i915#6953]) -> [PASS][183]
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-rkl-3/igt@kms_plane_scaling@intel-max-src-size.html
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-6/igt@kms_plane_scaling@intel-max-src-size.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress:
>     - shard-rkl:          [SKIP][184] ([i915#15073]) -> [PASS][185] +1 other test pass
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
>     - shard-dg1:          [SKIP][186] ([i915#15073]) -> [PASS][187] +1 other test pass
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-dg1-14/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-dg1-13/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
> 
>   
> #### Warnings ####
> 
>   * igt@api_intel_bb@object-reloc-keep-cache:
>     - shard-rkl:          [SKIP][188] ([i915#8411]) -> [SKIP][189] ([i915#14544] / [i915#8411])
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-rkl-3/igt@api_intel_bb@object-reloc-keep-cache.html
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-6/igt@api_intel_bb@object-reloc-keep-cache.html
> 
>   * igt@gem_close_race@multigpu-basic-threads:
>     - shard-rkl:          [SKIP][190] ([i915#7697]) -> [SKIP][191] ([i915#14544] / [i915#7697])
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-rkl-3/igt@gem_close_race@multigpu-basic-threads.html
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-6/igt@gem_close_race@multigpu-basic-threads.html
> 
>   * igt@gem_exec_reloc@basic-gtt-read:
>     - shard-rkl:          [SKIP][192] ([i915#14544] / [i915#3281]) -> [SKIP][193] ([i915#3281]) +1 other test skip
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-read.html
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-8/igt@gem_exec_reloc@basic-gtt-read.html
> 
>   * igt@gem_exec_reloc@basic-write-read-active:
>     - shard-rkl:          [SKIP][194] ([i915#3281]) -> [SKIP][195] ([i915#14544] / [i915#3281])
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-rkl-3/igt@gem_exec_reloc@basic-write-read-active.html
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-6/igt@gem_exec_reloc@basic-write-read-active.html
> 
>   * igt@gem_lmem_swapping@massive-random:
>     - shard-rkl:          [SKIP][196] ([i915#4613]) -> [SKIP][197] ([i915#14544] / [i915#4613])
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-rkl-3/igt@gem_lmem_swapping@massive-random.html
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-6/igt@gem_lmem_swapping@massive-random.html
> 
>   * igt@gem_lmem_swapping@random:
>     - shard-rkl:          [SKIP][198] ([i915#14544] / [i915#4613]) -> [SKIP][199] ([i915#4613])
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-rkl-6/igt@gem_lmem_swapping@random.html
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-8/igt@gem_lmem_swapping@random.html
> 
>   * igt@gem_madvise@dontneed-before-pwrite:
>     - shard-rkl:          [SKIP][200] ([i915#3282]) -> [SKIP][201] ([i915#14544] / [i915#3282])
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-rkl-3/igt@gem_madvise@dontneed-before-pwrite.html
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-6/igt@gem_madvise@dontneed-before-pwrite.html
> 
>   * igt@gem_partial_pwrite_pread@write-display:
>     - shard-rkl:          [SKIP][202] ([i915#14544] / [i915#3282]) -> [SKIP][203] ([i915#3282]) +1 other test skip
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-rkl-6/igt@gem_partial_pwrite_pread@write-display.html
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-8/igt@gem_partial_pwrite_pread@write-display.html
> 
>   * igt@gen9_exec_parse@basic-rejected-ctx-param:
>     - shard-rkl:          [SKIP][204] ([i915#14544] / [i915#2527]) -> [SKIP][205] ([i915#2527])
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-rkl-6/igt@gen9_exec_parse@basic-rejected-ctx-param.html
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-8/igt@gen9_exec_parse@basic-rejected-ctx-param.html
> 
>   * igt@gen9_exec_parse@bb-oversize:
>     - shard-rkl:          [SKIP][206] ([i915#2527]) -> [SKIP][207] ([i915#14544] / [i915#2527]) +1 other test skip
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-rkl-3/igt@gen9_exec_parse@bb-oversize.html
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-6/igt@gen9_exec_parse@bb-oversize.html
> 
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-90:
>     - shard-rkl:          [SKIP][208] ([i915#5286]) -> [SKIP][209] ([i915#14544] / [i915#5286])
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-rkl-3/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-6/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
>     - shard-rkl:          [SKIP][210] ([i915#14544] / [i915#5286]) -> [SKIP][211] ([i915#5286]) +1 other test skip
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-8/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
>     - shard-rkl:          [SKIP][212] ([i915#3638]) -> [SKIP][213] ([i915#14544] / [i915#3638]) +1 other test skip
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-rkl-3/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-6/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html
> 
>   * igt@kms_big_fb@x-tiled-64bpp-rotate-270:
>     - shard-rkl:          [SKIP][214] ([i915#14544] / [i915#3638]) -> [SKIP][215] ([i915#3638])
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-rkl-6/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-8/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html
> 
>   * igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs:
>     - shard-rkl:          [SKIP][216] ([i915#14098] / [i915#14544] / [i915#6095]) -> [SKIP][217] ([i915#14098] / [i915#6095]) +2 other tests skip
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-rkl-6/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs.html
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-8/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:
>     - shard-rkl:          [SKIP][218] ([i915#12313] / [i915#14544]) -> [SKIP][219] ([i915#12313])
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-rkl-6/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-8/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2:
>     - shard-rkl:          [SKIP][220] ([i915#14098] / [i915#6095]) -> [SKIP][221] ([i915#14098] / [i915#14544] / [i915#6095]) +7 other tests skip
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-rkl-3/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2.html
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-2:
>     - shard-rkl:          [SKIP][222] ([i915#6095]) -> [SKIP][223] ([i915#14544] / [i915#6095]) +6 other tests skip
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-rkl-3/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-2.html
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-6/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_cdclk@plane-scaling:
>     - shard-rkl:          [SKIP][224] ([i915#14544] / [i915#3742]) -> [SKIP][225] ([i915#3742])
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-rkl-6/igt@kms_cdclk@plane-scaling.html
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-8/igt@kms_cdclk@plane-scaling.html
> 
>   * igt@kms_chamelium_color@gamma:
>     - shard-rkl:          [SKIP][226] -> [SKIP][227] ([i915#14544]) +4 other tests skip
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-rkl-3/igt@kms_chamelium_color@gamma.html
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-6/igt@kms_chamelium_color@gamma.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:
>     - shard-rkl:          [SKIP][228] ([i915#11151] / [i915#14544] / [i915#7828]) -> [SKIP][229] ([i915#11151] / [i915#7828])
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-rkl-6/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-8/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html
> 
>   * igt@kms_chamelium_hpd@hdmi-hpd-after-suspend:
>     - shard-rkl:          [SKIP][230] ([i915#11151] / [i915#7828]) -> [SKIP][231] ([i915#11151] / [i915#14544] / [i915#7828])
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-rkl-3/igt@kms_chamelium_hpd@hdmi-hpd-after-suspend.html
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-6/igt@kms_chamelium_hpd@hdmi-hpd-after-suspend.html
> 
>   * igt@kms_content_protection@lic-type-0-hdcp14:
>     - shard-rkl:          [SKIP][232] ([i915#14544] / [i915#6944]) -> [SKIP][233] ([i915#6944])
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-rkl-6/igt@kms_content_protection@lic-type-0-hdcp14.html
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-8/igt@kms_content_protection@lic-type-0-hdcp14.html
> 
>   * igt@kms_content_protection@lic-type-1:
>     - shard-rkl:          [SKIP][234] ([i915#6944] / [i915#9424]) -> [SKIP][235] ([i915#14544] / [i915#6944] / [i915#9424])
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-rkl-3/igt@kms_content_protection@lic-type-1.html
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-6/igt@kms_content_protection@lic-type-1.html
> 
>   * igt@kms_content_protection@mei-interface:
>     - shard-dg1:          [SKIP][236] ([i915#9433]) -> [SKIP][237] ([i915#6944] / [i915#9424])
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-dg1-13/igt@kms_content_protection@mei-interface.html
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-dg1-16/igt@kms_content_protection@mei-interface.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-dg2:          [SKIP][238] ([i915#6944] / [i915#7118]) -> [FAIL][239] ([i915#7173])
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-dg2-6/igt@kms_content_protection@srm.html
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-dg2-11/igt@kms_content_protection@srm.html
> 
>   * igt@kms_content_protection@uevent-hdcp14:
>     - shard-dg2:          [FAIL][240] ([i915#7173]) -> [SKIP][241] ([i915#6944])
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-dg2-11/igt@kms_content_protection@uevent-hdcp14.html
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-dg2-8/igt@kms_content_protection@uevent-hdcp14.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-32x32:
>     - shard-rkl:          [SKIP][242] ([i915#14544] / [i915#3555]) -> [SKIP][243] ([i915#3555]) +1 other test skip
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-32x32.html
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-8/igt@kms_cursor_crc@cursor-onscreen-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-random-max-size:
>     - shard-rkl:          [SKIP][244] ([i915#3555]) -> [SKIP][245] ([i915#14544] / [i915#3555])
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-rkl-3/igt@kms_cursor_crc@cursor-random-max-size.html
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-6/igt@kms_cursor_crc@cursor-random-max-size.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-512x512:
>     - shard-rkl:          [SKIP][246] ([i915#13049]) -> [SKIP][247] ([i915#13049] / [i915#14544])
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-rkl-3/igt@kms_cursor_crc@cursor-sliding-512x512.html
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-6/igt@kms_cursor_crc@cursor-sliding-512x512.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - shard-rkl:          [SKIP][248] ([i915#14544] / [i915#4103]) -> [SKIP][249] ([i915#4103])
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-rkl-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb-legacy:
>     - shard-rkl:          [SKIP][250] ([i915#14544]) -> [SKIP][251] +6 other tests skip
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-rkl-6/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.html
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-8/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.html
> 
>   * igt@kms_display_modes@extended-mode-basic:
>     - shard-rkl:          [SKIP][252] ([i915#13691] / [i915#14544]) -> [SKIP][253] ([i915#13691])
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-rkl-6/igt@kms_display_modes@extended-mode-basic.html
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-8/igt@kms_display_modes@extended-mode-basic.html
> 
>   * igt@kms_dp_link_training@non-uhbr-mst:
>     - shard-rkl:          [SKIP][254] ([i915#13749]) -> [SKIP][255] ([i915#13749] / [i915#14544])
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-rkl-3/igt@kms_dp_link_training@non-uhbr-mst.html
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-6/igt@kms_dp_link_training@non-uhbr-mst.html
> 
>   * igt@kms_dsc@dsc-with-bpc-formats:
>     - shard-rkl:          [SKIP][256] ([i915#14544] / [i915#3555] / [i915#3840]) -> [SKIP][257] ([i915#3555] / [i915#3840])
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-rkl-6/igt@kms_dsc@dsc-with-bpc-formats.html
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-8/igt@kms_dsc@dsc-with-bpc-formats.html
> 
>   * igt@kms_feature_discovery@chamelium:
>     - shard-rkl:          [SKIP][258] ([i915#4854]) -> [SKIP][259] ([i915#14544] / [i915#4854])
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-rkl-3/igt@kms_feature_discovery@chamelium.html
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-6/igt@kms_feature_discovery@chamelium.html
> 
>   * igt@kms_flip@2x-blocking-wf_vblank:
>     - shard-rkl:          [SKIP][260] ([i915#9934]) -> [SKIP][261] ([i915#14544] / [i915#9934]) +2 other tests skip
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-rkl-3/igt@kms_flip@2x-blocking-wf_vblank.html
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-6/igt@kms_flip@2x-blocking-wf_vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend:
>     - shard-glk:          [INCOMPLETE][262] ([i915#12745] / [i915#4839] / [i915#6113]) -> [INCOMPLETE][263] ([i915#12745] / [i915#4839])
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-glk1/igt@kms_flip@2x-flip-vs-suspend.html
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-glk9/igt@kms_flip@2x-flip-vs-suspend.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2:
>     - shard-glk:          [INCOMPLETE][264] ([i915#4839] / [i915#6113]) -> [INCOMPLETE][265] ([i915#4839])
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-glk1/igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2.html
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-glk9/igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:
>     - shard-rkl:          [SKIP][266] ([i915#14544] / [i915#9934]) -> [SKIP][267] ([i915#9934]) +2 other tests skip
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-rkl-6/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-8/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling:
>     - shard-rkl:          [SKIP][268] ([i915#14544] / [i915#15643]) -> [SKIP][269] ([i915#15643])
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling.html
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-8/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt:
>     - shard-rkl:          [SKIP][270] ([i915#1825]) -> [SKIP][271] ([i915#14544] / [i915#1825]) +8 other tests skip
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-render:
>     - shard-rkl:          [SKIP][272] ([i915#14544] / [i915#15102]) -> [SKIP][273] ([i915#15102])
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-render.html
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu:
>     - shard-rkl:          [SKIP][274] ([i915#14544] / [i915#15102] / [i915#3023]) -> [SKIP][275] ([i915#15102] / [i915#3023]) +2 other tests skip
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move:
>     - shard-dg2:          [SKIP][276] ([i915#10433] / [i915#15102] / [i915#3458]) -> [SKIP][277] ([i915#15102] / [i915#3458])
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move.html
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-pwrite:
>     - shard-rkl:          [SKIP][278] ([i915#14544] / [i915#1825]) -> [SKIP][279] ([i915#1825]) +8 other tests skip
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-pwrite.html
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt:
>     - shard-rkl:          [SKIP][280] ([i915#15102] / [i915#3023]) -> [SKIP][281] ([i915#14544] / [i915#15102] / [i915#3023]) +4 other tests skip
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt.html
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
>     - shard-dg1:          [SKIP][282] ([i915#9766]) -> [SKIP][283] ([i915#4423] / [i915#9766])
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-dg1-16/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-dg1-18/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-render:
>     - shard-rkl:          [SKIP][284] ([i915#15102]) -> [SKIP][285] ([i915#14544] / [i915#15102])
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-render.html
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
>     - shard-dg2:          [SKIP][286] ([i915#15102] / [i915#3458]) -> [SKIP][287] ([i915#10433] / [i915#15102] / [i915#3458]) +3 other tests skip
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render:
>     - shard-dg1:          [SKIP][288] ([i915#15102] / [i915#3458] / [i915#4423]) -> [SKIP][289] ([i915#15102] / [i915#3458])
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-dg1-18/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-dg1-12/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html
> 
>   * igt@kms_joiner@basic-force-ultra-joiner:
>     - shard-rkl:          [SKIP][290] ([i915#14544] / [i915#15458]) -> [SKIP][291] ([i915#15458])
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-rkl-6/igt@kms_joiner@basic-force-ultra-joiner.html
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-8/igt@kms_joiner@basic-force-ultra-joiner.html
> 
>   * igt@kms_panel_fitting@atomic-fastset:
>     - shard-rkl:          [SKIP][292] ([i915#14544] / [i915#6301]) -> [SKIP][293] ([i915#6301])
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-rkl-6/igt@kms_panel_fitting@atomic-fastset.html
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-8/igt@kms_panel_fitting@atomic-fastset.html
> 
>   * igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier:
>     - shard-rkl:          [SKIP][294] ([i915#14544] / [i915#8825]) -> [SKIP][295] ([i915#8825]) +1 other test skip
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-rkl-6/igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier.html
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-8/igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier.html
> 
>   * igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier-source-clamping:
>     - shard-rkl:          [SKIP][296] ([i915#8825]) -> [SKIP][297] ([i915#14544] / [i915#8825]) +1 other test skip
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-rkl-3/igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier-source-clamping.html
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-6/igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier-source-clamping.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-b:
>     - shard-rkl:          [SKIP][298] ([i915#14544] / [i915#15329]) -> [SKIP][299] ([i915#15329]) +3 other tests skip
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-b.html
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-8/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-b.html
> 
>   * igt@kms_pm_backlight@basic-brightness:
>     - shard-rkl:          [SKIP][300] ([i915#5354]) -> [SKIP][301] ([i915#14544] / [i915#5354])
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-rkl-3/igt@kms_pm_backlight@basic-brightness.html
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-6/igt@kms_pm_backlight@basic-brightness.html
> 
>   * igt@kms_pm_dc@dc3co-vpb-simulation:
>     - shard-rkl:          [SKIP][302] ([i915#9685]) -> [SKIP][303] ([i915#14544] / [i915#9685])
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-rkl-3/igt@kms_pm_dc@dc3co-vpb-simulation.html
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-6/igt@kms_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@kms_pm_lpsp@screens-disabled:
>     - shard-rkl:          [SKIP][304] ([i915#14544] / [i915#8430]) -> [SKIP][305] ([i915#8430])
>    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-rkl-6/igt@kms_pm_lpsp@screens-disabled.html
>    [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-8/igt@kms_pm_lpsp@screens-disabled.html
> 
>   * igt@kms_pm_rpm@package-g7:
>     - shard-rkl:          [SKIP][306] ([i915#14544] / [i915#15403]) -> [SKIP][307] ([i915#15403])
>    [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-rkl-6/igt@kms_pm_rpm@package-g7.html
>    [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-8/igt@kms_pm_rpm@package-g7.html
> 
>   * igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area:
>     - shard-rkl:          [SKIP][308] ([i915#11520] / [i915#14544]) -> [SKIP][309] ([i915#11520]) +2 other tests skip
>    [308]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-rkl-6/igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area.html
>    [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-8/igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@pr-plane-move-sf-dmg-area:
>     - shard-rkl:          [SKIP][310] ([i915#11520]) -> [SKIP][311] ([i915#11520] / [i915#14544])
>    [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-rkl-3/igt@kms_psr2_sf@pr-plane-move-sf-dmg-area.html
>    [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-6/igt@kms_psr2_sf@pr-plane-move-sf-dmg-area.html
> 
>   * igt@kms_psr@fbc-pr-suspend:
>     - shard-rkl:          [SKIP][312] ([i915#1072] / [i915#14544] / [i915#9732]) -> [SKIP][313] ([i915#1072] / [i915#9732]) +3 other tests skip
>    [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-rkl-6/igt@kms_psr@fbc-pr-suspend.html
>    [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-8/igt@kms_psr@fbc-pr-suspend.html
> 
>   * igt@kms_psr@fbc-psr-basic:
>     - shard-rkl:          [SKIP][314] ([i915#1072] / [i915#9732]) -> [SKIP][315] ([i915#1072] / [i915#14544] / [i915#9732]) +5 other tests skip
>    [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-rkl-3/igt@kms_psr@fbc-psr-basic.html
>    [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-6/igt@kms_psr@fbc-psr-basic.html
> 
>   * igt@perf@unprivileged-single-ctx-counters:
>     - shard-rkl:          [SKIP][316] ([i915#2433]) -> [SKIP][317] ([i915#14544] / [i915#2433])
>    [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-rkl-3/igt@perf@unprivileged-single-ctx-counters.html
>    [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-6/igt@perf@unprivileged-single-ctx-counters.html
> 
>   * igt@prime_vgem@fence-flip-hang:
>     - shard-rkl:          [SKIP][318] ([i915#3708]) -> [SKIP][319] ([i915#14544] / [i915#3708])
>    [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/shard-rkl-3/igt@prime_vgem@fence-flip-hang.html
>    [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/shard-rkl-6/igt@prime_vgem@fence-flip-hang.html
> 
>   
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
>   [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
>   [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
>   [i915#12178]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12178
>   [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
>   [i915#12713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713
>   [i915#12745]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745
>   [i915#12756]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12756
>   [i915#12910]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910
>   [i915#12916]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12916
>   [i915#13008]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13008
>   [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
>   [i915#13179]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13179
>   [i915#13196]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13196
>   [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
>   [i915#13409]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13409
>   [i915#13476]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13476
>   [i915#13562]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13562
>   [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
>   [i915#13688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13688
>   [i915#13691]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13691
>   [i915#13707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707
>   [i915#13748]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748
>   [i915#13749]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749
>   [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
>   [i915#14033]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14033
>   [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
>   [i915#14350]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14350
>   [i915#14412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14412
>   [i915#14419]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14419
>   [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
>   [i915#14809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14809
>   [i915#15073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073
>   [i915#15102]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102
>   [i915#15329]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329
>   [i915#15330]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330
>   [i915#15389]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15389
>   [i915#15403]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15403
>   [i915#15458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15458
>   [i915#15460]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15460
>   [i915#15470]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15470
>   [i915#15608]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15608
>   [i915#15643]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643
>   [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
>   [i915#2433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2433
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658
>   [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
>   [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>   [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>   [i915#3469]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3469
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
>   [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
>   [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
>   [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
>   [i915#4854]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854
>   [i915#5138]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
>   [i915#5493]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
>   [i915#5723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723
>   [i915#5956]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6113]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113
>   [i915#6245]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6245
>   [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
>   [i915#6334]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334
>   [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
>   [i915#6412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6412
>   [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
>   [i915#6590]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6590
>   [i915#6880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880
>   [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
>   [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
>   [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
>   [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
>   [i915#7582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7582
>   [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#7862]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7862
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
>   [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
>   [i915#8430]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430
>   [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#8825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8825
>   [i915#9053]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9053
>   [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
>   [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>   [i915#9433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9433
>   [i915#9531]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531
>   [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
>   [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
>   [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9766]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766
>   [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
>   [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
>   [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_18003 -> Patchwork_161758v1
> 
>   CI-20190529: 20190529
>   CI_DRM_18003: fc9512d31fa2c190f58c85dbdf7313d2d0ad4b0d @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8757: 8757
>   Patchwork_161758v1: fc9512d31fa2c190f58c85dbdf7313d2d0ad4b0d @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161758v1/index.html
