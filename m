Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SC0WGsdlhGkh2wMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 10:41:27 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C48CF0EF6
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 10:41:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A85010E87C;
	Thu,  5 Feb 2026 09:41:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FsTZiEK9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB5F110E87C;
 Thu,  5 Feb 2026 09:41:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770284484; x=1801820484;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=2P8yjFbAbuEZenp/JpHt1clCHRUjkCS0SFFnxf6mz2s=;
 b=FsTZiEK9f1crCiseJw1F4p/4EwNA7uTk8HzIlRpKUvzQVjJDE+ytb60h
 OqveLwJin0KiXC4ptKFDAtcz98oPL4D/le4BNKuWttOvjr3a6nviGb1OU
 +6HoMdGY4MXRAQ3qwhR97ejLpdyekejudrvPaixNy7TrZwDX2JQQ5lhXp
 zz93f7dbkpC3dIrg3Kl6t25WG2v8tg4XKMmhgkFxVxOynmTVRLWYDLIlq
 drTiNZrBFcqSepFIJTh3hJA2CXi706LBes8I3uYB+mp9ZKJYCaUQzgc8X
 KuicfVPJSZfg9JwQrhv2xWrcVE73jxhtPabCnu5hAPMx8E9V1THQto5FK w==;
X-CSE-ConnectionGUID: +BZ14RBlT2mLT5djacdcGw==
X-CSE-MsgGUID: hIPG1/GvR5ydeuyCsbFveQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="71541765"
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="71541765"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 01:41:23 -0800
X-CSE-ConnectionGUID: 3bn7TnmXTcWE6QQs5NTZyQ==
X-CSE-MsgGUID: paxyAGtqTyyT4kyB5JMOCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="210261171"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 01:41:23 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 5 Feb 2026 01:41:22 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 5 Feb 2026 01:41:22 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.50)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 5 Feb 2026 01:41:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iWfyZ5EMzALxGpF08jKWjxvgOZhURpDM3AtF8b6ptDGDZp0ExgGR/BvJ2B3h0yhckewppoEnNjM2KYwOWRS9VTw3oWEdy+zSNPfNsBEVe0jd8k3D0JHxh5d3mDf26zqOgZwGVBG5+2ZNDL9BOueI2DI99JJXuQ1fUlaMuEpPJ7lR5RROiWHUITkr2GKsZbIHl289Ei5PDiR0yWluq+KxAEaR8fjSQ8TVPuzaLUT6p9MSELkRvkcsqKMEfcD5fk0ErLLfLVkRTv2NYF22QjQ8wPRUulNVZSnVgpIHV1o9tlBN9bu6sdrfndH1hmGXg5GQqo/TwtFXerjGKha6JaWHlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fPdaD6LIXguJAh0wvawdEjvOtGEbwZi2V4F0ujQnKnM=;
 b=LgH1xgRL88eHl4WDdwFE4qwRl7gE+WIklv9axDo+zV4dhWCKhdIsqCFSisKARpXngs7qyqJIJtvgjgpwpBdpZ3ZUbvmKeTgdI0XOiGTBx03guhhUJaD0+sSEfyj9cbffLFMqOIT1pyl6/4nwWBALsI34QIGNbmGJdUrqcq65ZrUSIn0AjIBgLAOJuWUcya5yAvhiTlVOJNL6C6jQcTrL/UkKiXtvKoOJPLNlQeHANactFzNnDgYloTYlt5PnGnG9wpG4g3y9wr1wUXXf3ck15RjPqDUvzNiqdzxPAgwhvqlJHAQPjS1J9UlpWm6fnKl6PnFTv9dZIRx1E4aSOCzIKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH0PR11MB4840.namprd11.prod.outlook.com (2603:10b6:510:43::16)
 by DS0PR11MB7506.namprd11.prod.outlook.com (2603:10b6:8:151::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.12; Thu, 5 Feb
 2026 09:41:14 +0000
Received: from PH0PR11MB4840.namprd11.prod.outlook.com
 ([fe80::fa90:e665:4a25:58a7]) by PH0PR11MB4840.namprd11.prod.outlook.com
 ([fe80::fa90:e665:4a25:58a7%4]) with mapi id 15.20.9587.013; Thu, 5 Feb 2026
 09:41:14 +0000
Date: Thu, 5 Feb 2026 11:41:03 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>
Subject: Re: [PATCH 2/2] drm/i915/dp: Restore the missing check for
 intel_dp_has_joiner
Message-ID: <aYRlrws-fvk3feUU@ideak-desk.lan>
References: <20260205083623.793902-1-ankit.k.nautiyal@intel.com>
 <20260205083623.793902-3-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260205083623.793902-3-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV3PEPF0001DBB4.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:401::6f7) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB4840:EE_|DS0PR11MB7506:EE_
X-MS-Office365-Filtering-Correlation-Id: d9d0b8fb-2fa3-47fb-2e5d-08de649ab12e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?jfrba+dCnnA5aUyLMJCR0WBbAaT9X05V2sPzSIVdyA3MpFQUF+0gywOGHqoA?=
 =?us-ascii?Q?4uwBWJzOPiR2KJ88sus+P5P0rq9KHw9mdhFpvF5fntjl484VHr9NRL+1hBis?=
 =?us-ascii?Q?CPRLSV2wg4BIg5C+T3uvOQf1a6Yji18Fhg5yToQZONpJjgQ08KztroPJ1uCt?=
 =?us-ascii?Q?bhXk4+m2N1KE19ynTB5VWo/Vv2UeLxdpX9qVcUv/bSVdPgH3ciN/4U6adUax?=
 =?us-ascii?Q?/jIS5AHjzZhJ5rJBr9dN9X90qpLhQuHrK2EZUCyeWqwwFJBCl3k79vGd1cC8?=
 =?us-ascii?Q?AgRNlAnsMlKmkqcZOsi8Q8/lqocGfXV4/N8dvb0jj8mUCUYAtG6MxS5vWowr?=
 =?us-ascii?Q?EQbXFl+fGg4E7BpkejFykszF/3gd/zRytTA99sKIDCd0BnunJL1+8mMquozz?=
 =?us-ascii?Q?TaOCSOxWOnJ7O5RLfuFupwXC82LHhnEgCB2vAfHYTFN2hR+mQMoMcKP+CoSP?=
 =?us-ascii?Q?OslOj2C59yfjmu2yjcm36e3T/Y9qCN9XaO/s/kCmxdTsAgacQ4ptZLd+Xo7c?=
 =?us-ascii?Q?rqGGagA4RvcX3i96cLK+9qWf+7WPJqwxR6CtgGbwkoYIltstrdhaHQ/sOeme?=
 =?us-ascii?Q?aWlGsneywVPWNGORfMZ+dI/g+r/xdD6v1dVrNE63Su6hNgJqzWaCCmXID4Dr?=
 =?us-ascii?Q?UTILMNjWzgF7G2u4HhPQC8q0wyJLfJB36BDWMcgyoZM3z6X9NSnZXwDOvKAq?=
 =?us-ascii?Q?3G0b5vpPRGGYsfMZOeslltgsyj9JJ/stbVZobjoI6EBy6HGu+ZEMw2fYq4B7?=
 =?us-ascii?Q?tnbL5hcaBF5733LgZvnR+YJ+s7BsO3nNGjkAskTFM4y9h7BXiwZ1PV+dXseb?=
 =?us-ascii?Q?eCPqmq91Fqs3pZLkVw7w8PxcAIyMNl4hzhWKGqi/BQYdDvaa9Ir36Wc/mckR?=
 =?us-ascii?Q?jC6yZeWxbnwv5k/tw+vQlgMQ1V8OOdQAQXGW2gG+zz54eFnypoYFTNtLzXlJ?=
 =?us-ascii?Q?rJLMltE0uzQf4EZCgheKrRdt1tatLsTy0fS+YBvjjdTXDPatMS+8JMXdDUba?=
 =?us-ascii?Q?qqRibQAwwbmn1twHs7BaNPcuv7wmHd5sKjbNgojdH3Svxg5/yIcl4np3OvgE?=
 =?us-ascii?Q?9eKa2u/njttX2/D74iTg2KL+GfVx0U4rK4c7UnoaBFzi77SaKX84dQ41u9uv?=
 =?us-ascii?Q?uVlVBcwMbBjxvt+cF5/8v8AN0n1gptI87F6esZL+j/+d80H6mqdFI9PDuJBR?=
 =?us-ascii?Q?WqLag3IrU9FFSUh3+2tbNLZDFJ1VyspRU1gfvRe4fyl5dOreIyL64sW/JT8g?=
 =?us-ascii?Q?Ph1xBcr+FLd53terwSmhJTGbj3/Sbxnkij5R/us4beQOz755IeWnQfXPGdIo?=
 =?us-ascii?Q?UswSOo2ovUk7eqJ7a/LX1rOsrpmR5jnvIAM01SPpOtv5nMtev/bFzXpPDwmF?=
 =?us-ascii?Q?2dLOaqzfVM908QlTqsPhGVnx531D2sgyrrAfY0fKjS3rXDacCxNLbw57P16y?=
 =?us-ascii?Q?6K55/jid/686LMt9gstg/5Dg2YOUk57mnMWbfuRm995YUSVcpyNRUwcvePFQ?=
 =?us-ascii?Q?2NDsn31OKI62Qkc7dmsMpLwDuUKPv3TjJGO4EPfBS2M/O9zCVvhpvNDeoUCk?=
 =?us-ascii?Q?kGDv4qkQvZSCmQHRSmk=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB4840.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?RaI9FhATxNc3HeLkyLSuSNINSRUNb+Eh+D3GLI1Qn3iY/vfQjpxMQCLqly3J?=
 =?us-ascii?Q?qO1oDx0o8j7tWlZ4+Q2I0RrffLAx3aT0H9kxy+vjKejY/XUfdmQZg+vSNUn8?=
 =?us-ascii?Q?AjKMAdzGENttMoQgEKFa6M0m4TqQ+C79WR4CS+dbBrrEhSEz++mCmaBZY1nW?=
 =?us-ascii?Q?QhOvn/EQtN1rCyn6TBBl5W4TPd2/NuZt6PJmVBTCFVGn1VhoL1yq6eBfva20?=
 =?us-ascii?Q?LJ/WKx5h8zJJ/N1nKjfhAPX4TbVIGhohtmmT8at664gcPVXy5BA14AeYM4Hk?=
 =?us-ascii?Q?Cp3fpJ0vyVfGktX0nuSa2nwGZkkfWmbamveEIadDjYASWdEy5BE7YuhTFYmV?=
 =?us-ascii?Q?JVXPOdHVCke2GAEq13b/YV8LFYyhicFQZlP8XT1SefNZWWWXsiE+YQdedSs2?=
 =?us-ascii?Q?2XMsOR9Ts5wv27ym9a3Dg+JBLlv99dCeRr4U5wlrBj+aPlaIWctUNSCf5wmi?=
 =?us-ascii?Q?BayfDwQbPnSkcWcVdQhOvoqWO7TnljebDQu4gBrvavmWPjhLOKfDnvqmrMGG?=
 =?us-ascii?Q?tVUNavlWMzmr4dEFEwbB5TE/lFQGn7jOZalRci6vVhj6BLZj9vP7alMJJ9w1?=
 =?us-ascii?Q?PZdU2lyHbrL9G25ytk9GMJo/ePj7YMarQ8fi4z7qH1n+QMQFhobcToCWKRxN?=
 =?us-ascii?Q?FiUFGkYEve/YywLVZKEYk295f/9NqxlViAsb87a3ppLiaGAoKsuD8a4aCVVf?=
 =?us-ascii?Q?Pq2mhWizJ5NSWSzy9Nb4NeoRSAYChRaj8+CnXIxJD+2jxT6r5nAjIS/Yf0ly?=
 =?us-ascii?Q?fAxks8+AylnKtEraBOG3bInoYu5bdP5gSLG1Tq2vl4hFTjzSCwsyuCkaNO3J?=
 =?us-ascii?Q?/X601BD0QcjHF5VxFtzpjfDDSeiAKGB411dd+HAOvHxWScsQJvYWqn4d7mD+?=
 =?us-ascii?Q?wkNfdo2JJYRbWD9rb4UL2n5dtCsOiXG0l8MmCVvn5hUc3hq15fvHxAA+riU1?=
 =?us-ascii?Q?QeZvDTBsaDEkUUE7F8dQCg6E9M/rScT/oXhXyqircPqjDg2ViTVeqMLtoiLD?=
 =?us-ascii?Q?CoAb1t/JyZOYQvHos/fJ1trJdOblb7263pGka2T3PjYte03InmIMTC6NRkC/?=
 =?us-ascii?Q?dNUMq0DrleViKs6ddsxUJwQfgNTREtY1y3xMVkpZwm4gD/GrwEQBvqWGVvEf?=
 =?us-ascii?Q?4YqQnktVe1/4K79VVnfS58c1sp2Nu+Baf4vBTaI0S28lSQqZhggM0TdfAoZ3?=
 =?us-ascii?Q?+7XoV3aBhlz+H5VAVhN5GWlhY7G0TwVLH27OhN3izGDGsCgxHYNjczBLBgYr?=
 =?us-ascii?Q?lD6pdKJCeWwzDAEt5XWYEF8mxRIzWrACrB3hqybl6FMtwOSuZtZVBoBirGJC?=
 =?us-ascii?Q?/AWDz2coly154R510OlDlvjUrmyZO0NNcQAi1EjzPLVm3x1OZTv5ZZld0l0t?=
 =?us-ascii?Q?XDdp5HIdXJIWA1jhGQPiIgpoMAnl8Gp/1GsR7gmR66/fKcQSOsLdiur/gdPU?=
 =?us-ascii?Q?PvjTHl/mCamv3WvwR5aj1jCiFD4fM1pg3mMo7h2EHw5y8Sq1gOU7tFfUMskm?=
 =?us-ascii?Q?h29GyvDrGMW0lEltbH5tAJEIC6yScP35AMNsLneFdhDbn+JzwHje0nl1qoer?=
 =?us-ascii?Q?GHF5ws0VQNoOK6jBEDMx9UC6LbfLtTR2n0j1SkvchrTe+G2OM3WDefaFcnQJ?=
 =?us-ascii?Q?HkfxSr2NEtUjLtAWYPV4BzctCWLhJHOLsemH6wmu7jJRf0MgmqTGnInsu6la?=
 =?us-ascii?Q?GxFbiMCLmTh0JxVCIi0Z30WvksPBnJ0Db1xNZ4THSLjxmCQLH96Gowsw2zlP?=
 =?us-ascii?Q?BPdJPzGA8w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d9d0b8fb-2fa3-47fb-2e5d-08de649ab12e
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Feb 2026 09:41:13.7793 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IrDcnaTKbtEjxxx4SP9vT+m8Sw7C2Mbu2D+DvvN/uzfBPdp8tZ3ZJd8IXw4n2+Oe5wt3WTtbB/wJ5lEirXET6Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7506
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:replyto,intel.com:email];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.993];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 9C48CF0EF6
X-Rspamd-Action: no action

On Thu, Feb 05, 2026 at 02:06:23PM +0530, Ankit Nautiyal wrote:
> Commit ad121a62d566 ("drm/i915/dp: Rework pipe joiner logic in mode_valid")
> replaced intel_dp_num_joined_pipes() with an explicit joiner candidate
> iteration. The previous code implicitly checked for DP joiner capability
> via intel_dp_has_joiner(), but this check was lost during the refactor.
> 
> Restore the missing intel_dp_has_joiner() check in intel_dp_can_join() so
> that DP specific joiner conditions are taken into account.
> 
> This change also requires propagating struct intel_dp * from the callers
> down to the new check.
> 
> Fixes: ad121a62d566 ("drm/i915/dp: Rework pipe joiner logic in mode_valid")
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     | 16 +++++++++++-----
>  drivers/gpu/drm/i915/display/intel_dp.h     |  7 ++++---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c |  4 ++--
>  3 files changed, 17 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 4f5b89f80e55..3021c64d0f85 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1397,9 +1397,14 @@ bool intel_dp_has_dsc(const struct intel_connector *connector)
>  }
>  
>  static
> -bool intel_dp_can_join(struct intel_display *display,
> +bool intel_dp_can_join(struct intel_dp *intel_dp,
>  		       int num_joined_pipes)
>  {
> +	struct intel_display *display = to_intel_display(intel_dp);
> +
> +	if (num_joined_pipes > 1 && !intel_dp_has_joiner(intel_dp))
> +		return false;
> +
>  	switch (num_joined_pipes) {
>  	case 1:
>  		return true;
> @@ -1496,7 +1501,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>  	 * over candidate pipe counts and evaluate each combination.
>  	 */
>  	status = MODE_CLOCK_HIGH;
> -	for_each_joiner_candidate(connector, mode, num_joined_pipes) {
> +	for_each_joiner_candidate(intel_dp, connector, mode, num_joined_pipes) {
>  		int dsc_slice_count = 0;
>  
>  		status = intel_pfit_mode_valid(display, mode, output_format, num_joined_pipes);
> @@ -2895,7 +2900,7 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
>  	    !intel_dp_supports_fec(intel_dp, connector, crtc_state))
>  		return -EINVAL;
>  
> -	for_each_joiner_candidate(connector, adjusted_mode, num_joined_pipes) {
> +	for_each_joiner_candidate(intel_dp, connector, adjusted_mode, num_joined_pipes) {
>  		/*
>  		 * NOTE:
>  		 * The crtc_state->joiner_pipes should have been set at the end
> @@ -7213,13 +7218,14 @@ int intel_dp_sdp_min_guardband(const struct intel_crtc_state *crtc_state,
>  	return sdp_guardband;
>  }
>  
> -bool intel_dp_joiner_candidate_valid(struct intel_connector *connector,
> +bool intel_dp_joiner_candidate_valid(struct intel_dp *intel_dp,
> +				     struct intel_connector *connector,
>  				     int hdisplay,
>  				     int num_joined_pipes)

intel_dp can be always deducted from the connector, via
intel_attached_dp(), so no need to pass intel_dp separately.

>  {
>  	struct intel_display *display = to_intel_display(connector);
>  
> -	if (!intel_dp_can_join(display, num_joined_pipes))
> +	if (!intel_dp_can_join(intel_dp, num_joined_pipes))
>  		return false;
>  
>  	if (hdisplay > num_joined_pipes * intel_dp_max_hdisplay_per_pipe(display))
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index cbd7fcd3789f..37302ebe1cf9 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -227,12 +227,13 @@ bool intel_dp_dotclk_valid(struct intel_display *display,
>  			   int htotal,
>  			   int dsc_slice_count,
>  			   int num_joined_pipes);
> -bool intel_dp_joiner_candidate_valid(struct intel_connector *connector,
> +bool intel_dp_joiner_candidate_valid(struct intel_dp *intel_dp,
> +				     struct intel_connector *connector,
>  				     int hdisplay,
>  				     int num_joined_pipes);
>  
> -#define for_each_joiner_candidate(__connector, __mode, __num_joined_pipes) \
> +#define for_each_joiner_candidate(__intel_dp, __connector, __mode, __num_joined_pipes) \
>  	for ((__num_joined_pipes) = 1; (__num_joined_pipes) <= (I915_MAX_PIPES); (__num_joined_pipes)++) \
> -		for_each_if(intel_dp_joiner_candidate_valid(__connector, (__mode)->hdisplay, __num_joined_pipes))
> +		for_each_if(intel_dp_joiner_candidate_valid(__intel_dp, __connector, (__mode)->hdisplay, __num_joined_pipes))
>  
>  #endif /* __INTEL_DP_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 29713075e413..b2d3f35edd78 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -720,7 +720,7 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
>  	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>  	pipe_config->has_pch_encoder = false;
>  
> -	for_each_joiner_candidate(connector, adjusted_mode, num_joined_pipes) {
> +	for_each_joiner_candidate(intel_dp, connector, adjusted_mode, num_joined_pipes) {
>  		if (num_joined_pipes > 1)
>  			pipe_config->joiner_pipes = GENMASK(crtc->pipe + num_joined_pipes - 1,
>  							    crtc->pipe);
> @@ -1524,7 +1524,7 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
>  	}
>  
>  	*status = MODE_CLOCK_HIGH;
> -	for_each_joiner_candidate(connector, mode, num_joined_pipes) {
> +	for_each_joiner_candidate(intel_dp, connector, mode, num_joined_pipes) {
>  		int dsc_slice_count = 0;
>  
>  		if (intel_dp_has_dsc(connector) &&
> -- 
> 2.45.2
> 
