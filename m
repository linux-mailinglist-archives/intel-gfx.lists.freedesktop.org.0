Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4FDE9AB4BF
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 19:09:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E2AB10E6E3;
	Tue, 22 Oct 2024 17:09:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bjhNFLZF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85B2210E176
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2024 17:09:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729616970; x=1761152970;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Tjte6nZoshPz09U3QwQwSI6F/cJjc1IQHrlbeNvf/pw=;
 b=bjhNFLZFOaHyWfPTMLHFHor71Cz21wRTNUmzua+YfM/NHJA+3oHQyOT5
 nP5kdyImW/gj+Ejrk2fkBfPWhizpip0B0ec4qc5Pku+8mZjD14zaCsa6H
 kZRtRTYhFu5a823v8+RmX55FAgTjj471qsSE9+Xb9uHLELIN9d6lP1Vvo
 JyfkuSo4JUqNDBI6OTSHtkAlstto8x4mKmF1SMBGOeHA4/GpFjQdWG5fG
 wg7RE7XXqOg7Nn4f8AWRoeJZEbr4kFxEuJ2qZaPSBHjYLpzG9tVCWqEzj
 hKn/rON9ga8Y3rtdNdY9Cbx9i8LC5bzYChlXjtsLB+l5ZjbMc5A/3uiDV w==;
X-CSE-ConnectionGUID: 1p+gxfuhSruBqKw+gCNOoA==
X-CSE-MsgGUID: LA4JlZ2cQ16Q2Q0jQc2b4A==
X-IronPort-AV: E=McAfee;i="6700,10204,11233"; a="32028085"
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="32028085"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 10:09:29 -0700
X-CSE-ConnectionGUID: pBoCy9PPTZORV7ynswRsOA==
X-CSE-MsgGUID: Vc5VsdHVS9G+hz4W46Y5Hg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="103225669"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Oct 2024 10:09:29 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 22 Oct 2024 10:09:28 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 22 Oct 2024 10:09:28 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.49) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 22 Oct 2024 10:09:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=C9cjqzfywyGe+uW+4xB5jyJ/3jqtDL59EoRDULgeUeezGiPITnLXF+U6c0pZ5n4B8Dl6rlVQzbkxB+klpNwVtrsEjxstr+bSb54rXCjxhM8b+LCsL8YCd7cBO4JnjsespjvlogLK8jf0H7cp5g0oQ7hOL/v45ROaMXuL9k6bptwVl3Gb/jRJcEVrAm3PZGCnhVNzvO95DNu/kVrkerKbMJ7zBR1449OEHgIgwv0ZGnxxu63MT89arnVgCaav41dKVbHMJ/v8nF9h1hGIp4yZVr0OZJriL3vCrlTTjh/YEDo/RSqrhIf5uroEwwyaQB10kp1oMHqulPkGIezubVf7qA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r1upFGMEdbXNXN5tYQLEGZpe8EsGVglD1gKge/itwBM=;
 b=WqFbQaBTlkl+YJDZ5+jW3zwuvKxQfWzSQon0FfU51sF2hU7eqsU5kmZFwgMA6m0BEDpELVw1D/eB5SmmsyC9onIN9C9Qs06v8vPfkQonDtNYxm43CPGoqHBPTu7PlezZQBVV6FajPyYjUXzPQVtmNr0scENFAzRxcg4XakaCv8SFZFzE64aP8wAcTX6sTYHXqVOoUc/Ne8T5MdBtGgsNehIqBcL/2YIHOwdjyGMtKRHcZgIMsk1BgGxXM4peDanVejqav9kv5KeXVDY0xCRm8NwY5BtnU1QyweVHqa1Vq+MoA+LUrsz8N2kpF8sGglHN0L2Z6sUQ7Bqu0WNzPyurlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by CY5PR11MB6440.namprd11.prod.outlook.com (2603:10b6:930:33::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.28; Tue, 22 Oct
 2024 17:09:20 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8069.020; Tue, 22 Oct 2024
 17:09:20 +0000
Date: Tue, 22 Oct 2024 13:09:16 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
CC: Badal Nilawar <badal.nilawar@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <anshuman.gupta@intel.com>,
 <chris.p.wilson@linux.intel.com>
Subject: Re: [PATCH] drm/i915/rc6: Disable RPG during workload execution
Message-ID: <ZxfcPLgi8tmLiomr@intel.com>
References: <20241022132226.1110383-1-badal.nilawar@intel.com>
 <Zxeoi1baLtbqDKIr@ashyti-mobl2.lan>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <Zxeoi1baLtbqDKIr@ashyti-mobl2.lan>
X-ClientProxiedBy: MW4PR04CA0129.namprd04.prod.outlook.com
 (2603:10b6:303:84::14) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|CY5PR11MB6440:EE_
X-MS-Office365-Filtering-Correlation-Id: 6bce59cc-6697-4474-86bb-08dcf2bc44ab
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?zL19HzCWbK/RJrWFM1/P78C1kfDcZsTIJC4GSQkroGWMQ7QIra4/yejE7emz?=
 =?us-ascii?Q?q2kD9SNhTrxQPEFOkhzdekJGbZhvXt7cw6adxluFn0u0b0Yv5CR2Dx/QA2rb?=
 =?us-ascii?Q?wEfQ4E56lO5PWI0jQY2+a4PCQRwrNttYC2DMNSb5KcMjJPFJDciXHlkDwTJb?=
 =?us-ascii?Q?tgWEWlUnFms7ZdvQtBaCsozNqPrj5YBBWttE2pQBqOV+i05EEATSd5SIkBYS?=
 =?us-ascii?Q?BtRGQR6Yy/j/rbGzn1KyHHvJP8g7+1zvc9WxQbjMFk75IMWHutaEyrd3HMWp?=
 =?us-ascii?Q?NUVIe4TAJfwCTZX9rqhRnUKazsSbk2vdylmIFa/cX4+yPsKi688Z6Ehrs8oq?=
 =?us-ascii?Q?A+ljeN4oizMulViOPfHDw0GDvEsRVDgnajlKsUJdD7dXgW8s4PBo7O308d+P?=
 =?us-ascii?Q?Tgdel7QIFENwFgwGAyLb1I0tyDxWv8baV32+uti+mTj5sV+shDz2oYOHKrkJ?=
 =?us-ascii?Q?jhW8u47g4QCAVP6X0IicStZkw4iMk3a5NdyT/hNSNRDh3EuN70By9imw5B2P?=
 =?us-ascii?Q?XK3EGb5PmzyV5gQg7Tr85EG83IWfAnm0WFLM33EtB1M8vt3s/p9P8tOWe8SM?=
 =?us-ascii?Q?pLFYd/YPJcwCU+gWX2kYWYlRnM0kY6jJjXqimu54t96IiF9opxRw/hnLADIF?=
 =?us-ascii?Q?4GbZnTAMgEuqRiCfS8brPtNyhi9QwMKOtRQnx3I3lWbmzdiDf67yff2BQ41w?=
 =?us-ascii?Q?0sfiovM2HZOhRs935nqD4ptdxwv/f+ooHN7VITei/AO4c1lN4agKVPIqER2d?=
 =?us-ascii?Q?2eY5wRIJsn5XDS0drlfVDcMQckmurFqMHoBmc0FMDN3qlISwSWTaEOHjbKrT?=
 =?us-ascii?Q?tC8Jn9vwYmfNEnDeEj3tkeNixCCc6RVftHiHHLfBs14k7sAtp7D6Ew+3Bpnm?=
 =?us-ascii?Q?ga85Ll+JImMDZSEnYsBSd6FOcXfsHSKemnWC0VIDZnuti0bOOXvk0wg8ymbm?=
 =?us-ascii?Q?/MFnUrvHAZGf28evd2KKAXYiiKDb6PpjRmZaJFG++mikx2BF2mYhQ2eFFMaZ?=
 =?us-ascii?Q?N5a8oSUVGyHMIQnrMAseRas4WKP4AXZJokHuIJ3HroPclzX9QtSbRsifGaXq?=
 =?us-ascii?Q?E78zKmLpMOsNPs2vrH2ZiO/NUhVTuemsa6W1mQpfzC1j8tdnCFXuy0NtQhY2?=
 =?us-ascii?Q?tXGbTRbsmxlIpetDSojKx6AzGL1I5Y8ApnAykkEuxbCrLruYa9stH0zOymNc?=
 =?us-ascii?Q?yveakyEgPmMR3UkKvaxxAKGyDWmomo8p5U3517g48lw38j/u5Te2HRR5XC/8?=
 =?us-ascii?Q?hjC0EvFExCKfoR4ZIcZeVFuWJmaOIL0kBdHg811IkafqCegFR0gh5aVfV2hH?=
 =?us-ascii?Q?AQCBOGEswB09hLM6X0G8TIxE?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?yRyLsZuGVaYvtDAX9LP6me3JmWChDUVpJTAMTrhi6dtpmt7pBw2OtnSTlnBp?=
 =?us-ascii?Q?gq5Jod8LX1OTKAr0x029fyOJM5i0MDac2Bjvos86Nb30VYN3eJaOOyjAJTnl?=
 =?us-ascii?Q?jmT1wPUO5obVbi2UcK2DcZNb2VMqple66VlCFjdJMaeyWVr2TSG8pjDMfeaP?=
 =?us-ascii?Q?tdC8bjzaZMhZaic9joQeU+ujZybCB+0WV7x4bo5igP0F4w2ecwetajA+tiPQ?=
 =?us-ascii?Q?21ikGHk34Ada0ISIEaQHUsuryugOfRar+XPzgp091ToTCkDGl4bJ8UPecpr4?=
 =?us-ascii?Q?UPKKvj1rtvQczv/9F32MES2/84Teaz6NWxFxn08ImUzv/X/Rb+pSoZusKDIU?=
 =?us-ascii?Q?Z4WsE1Ohr1y/0usM6ZZtV4/uw1u/k86zfB7K8wAYGmpzVPPfT2eDK8pAnBDj?=
 =?us-ascii?Q?rkKNHzohKtxM823iV9kbxCngF9uOLcfvdSCtwkTpabWJs8FAvcp6OFv6YtaV?=
 =?us-ascii?Q?i64oPmsVKZlBcku/itpFOqaC8SeCT/ghRRnYwNf2/6QnWpj9UVa7TwR1aQDE?=
 =?us-ascii?Q?QPDde7JfvBP+4dz82LvUPaRxEHe1mnV/5Pj9roWco2hLzUpXZ5gpywVnOy8V?=
 =?us-ascii?Q?qqXGtDQCx/0m7Y07qdehoxwUUFjXw1bQZl8DZE8LDZlo61Z3nfLzNwJ8xL/F?=
 =?us-ascii?Q?VNVzBemquzJAkPpTddIS+i2qfmmzKQEw0ndBV8BwgL1QXZ3P7/6lHWdaTq0K?=
 =?us-ascii?Q?0iOpvivPChIkjZOqJCi+L+F6aunN9w4RQmPtwd8SfS6m1e6yGJ9W4VRYdglU?=
 =?us-ascii?Q?DuR1U7orD1D1YYRI3Dcv414W5trb+tWE49CBBuJMeDjM61YgBTvcKZidiv9p?=
 =?us-ascii?Q?ERk5siD0VgDVDxJQ0bWYs/jmmOb4neFqCldasMrfxx9AjxBtxJz2O8ONl9hc?=
 =?us-ascii?Q?ajncdn7JSil1KD0PAjQDXi/AX9nTHmdJIYrp+ruAT08AFxNqtiB8avJr9HlY?=
 =?us-ascii?Q?YxXq8l41DArBge1rKY1YAGUCcmsISvUxuETJnBH+mWzCeAmiax6aSQPNqOrF?=
 =?us-ascii?Q?Nw/IzWHdcZD56lEekzDjlv1jrJ/ylSs/RhF6Bns+kLQILZgyNFI6wPv8HiLn?=
 =?us-ascii?Q?C2DA/uH0WtGxHS1z3Qfh4aHm8iAQ1djl1UfYZGbi2LeQqnG1mF8k753inLln?=
 =?us-ascii?Q?xk5oz1HLuKs1lCf36YuP49W2Zt7zhkQRn+S+1+Ts+wzejikNx10cHjY4Krbb?=
 =?us-ascii?Q?PcB/y8qdC7oaTJ6R1nkGjZmCnbhkGJOva2H+P7jF1LQTNBZFxiWY0X3QEv2e?=
 =?us-ascii?Q?nRpVjK8YIG/IqpMkKyZuTC3RIbchnktJOIDytfQZJy40dJK1vLvvvv3Rx+Lj?=
 =?us-ascii?Q?pDC1gvC+KoqHlbQNZ9HAOl42T4FDjvsVQx6vSpSkwWFBL7RC6fsVsdeAHJlK?=
 =?us-ascii?Q?R4yJoPSV/CLeRX9AKOqPaGA5Pjm9BXkp1IDZ4TKaBJAwiIddRxfNB1r1M7jp?=
 =?us-ascii?Q?YBQn3WgMkhmlYWOA/OkSR6S28ZwnOEKBIcmYBxS5sKtwGLuA81idMZcLtCI8?=
 =?us-ascii?Q?Pb/870FE1YeU94DF/J0kIcrGLi4YENaNWTMhihGDipFbZpdbcyhCxOOBYhBA?=
 =?us-ascii?Q?TXBuz6x4CB+wD7rwIrBa38vjnwxsH++Y1jp39YIpVqN54m+ofh4UaMWxlt1N?=
 =?us-ascii?Q?pg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6bce59cc-6697-4474-86bb-08dcf2bc44ab
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Oct 2024 17:09:20.1764 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zySQA0WO6tA1/GOSKzdINxuEAgZ9N+ACz3jOVNeP7kS0cdCGavZP5nWwzjmJj0wnacI0QwNnD174qc7iHMO2oA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6440
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

On Tue, Oct 22, 2024 at 03:28:43PM +0200, Andi Shyti wrote:
> Hi Badal,
> 
> On Tue, Oct 22, 2024 at 06:52:26PM +0530, Badal Nilawar wrote:
> > Encountering forcewake errors related to render power gating;
> 
> Can you please expand your explanation here?

yeap. More explanation please. All platforms? really?

> 
> > therefore, disable it during workload execution.
> 
> ... and here.
> 
> > Cc: Chris Wilson <chris.p.wilson@linux.intel.com>
> > Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_rc6.c       | 18 +++++++++++++++++-
> >  drivers/gpu/drm/i915/gt/intel_rc6_types.h |  1 +
> >  2 files changed, 18 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
> > index c864d101faf9..459394ab5258 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_rc6.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
> > @@ -140,6 +140,7 @@ static void gen11_rc6_enable(struct intel_rc6 *rc6)
> >  					      VDN_MFX_POWERGATE_ENABLE(i));
> >  	}
> >  
> > +	rc6->pg_enable = pg_enable;
> 
> this looks borderline racy, it's fine only because this function
> is called during resume which normally runs in atomic context.
> 
> >  	intel_uncore_write_fw(uncore, GEN9_PG_ENABLE, pg_enable);
> >  }
> >  
> > @@ -572,8 +573,11 @@ static void __intel_rc6_disable(struct intel_rc6 *rc6)
> >  	intel_guc_rc_disable(gt_to_guc(gt));
> >  
> >  	intel_uncore_forcewake_get(uncore, FORCEWAKE_ALL);
> > -	if (GRAPHICS_VER(i915) >= 9)
> > +	if (GRAPHICS_VER(i915) >= 9) {
> > +		rc6->pg_enable = 0;
> >  		intel_uncore_write_fw(uncore, GEN9_PG_ENABLE, 0);
> > +	}
> > +
> >  	intel_uncore_write_fw(uncore, GEN6_RC_CONTROL, 0);
> >  	intel_uncore_write_fw(uncore, GEN6_RC_STATE, 0);
> >  	intel_uncore_forcewake_put(uncore, FORCEWAKE_ALL);
> > @@ -687,6 +691,15 @@ void intel_rc6_unpark(struct intel_rc6 *rc6)
> >  
> >  	/* Restore HW timers for automatic RC6 entry while busy */
> >  	intel_uncore_write_fw(uncore, GEN6_RC_CONTROL, rc6->ctl_enable);
> > +
> > +	/*
> > +	 * Seeing render forcewake timeouts during active submissions so disable render PG
> > +	 * while workloads are under execution.
> 
> Can you please improve this sentence? If I never new about the
> issue I would be a bit confused.
> 
> > +	 * FIXME Remove this change once real cause of render force wake timeout is fixed
> > +	 */
> > +	if (rc6->pg_enable == GEN9_RENDER_PG_ENABLE)
> 
> is this supposed to be "pg_enable == GEN9_RENDER_PG_ENABLE" or
> "pg_enable & GEN9_RENDER_PG_ENABLE" ?
> 
> Andi
