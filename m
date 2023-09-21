Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C69C97A9559
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Sep 2023 16:40:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADA7410E5F1;
	Thu, 21 Sep 2023 14:40:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B588C10E5E0
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Sep 2023 14:40:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695307242; x=1726843242;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=vO9yHo3X2GAjdQKStSzFHBASX8go0sY/yBCL90jhVqY=;
 b=MLS1dr5J53R8ZGZjeZyY6XYT+I+B/EF34G7PZlCagUd3VBGN+IF0AHnC
 9/dm+nRWwUeXHb85EeSoqhUkKyCmTNmx4GNl/x96abGlsrV5ySXrg5sYr
 49ohvOY2/THCqmp6gn6j4m04iHOTz8I+05Q+cTOpD8ohJCh8I0QQkR1jV
 OiYzGaXzv/QhuNvMo2ZOgwmEvCZmRFzir4A15YWjaOlfMTadZDE2N5DLr
 +0Aial12gw/Zeh/jboiF0cAvEwfN9x2bmSl7ptVCeSzBIMnK/+b2ysryV
 0hotkJGr2k+nny/FY4gC8C2T/dWuqxhqjVlbGqp9kknPxFf8S+ZZNUksZ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="384393108"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="384393108"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 07:40:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="870839967"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="870839967"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Sep 2023 07:40:37 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 21 Sep 2023 07:40:37 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 21 Sep 2023 07:40:37 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 21 Sep 2023 07:40:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ls7xRjob0SiEkRo6+uPSyQUqcAxKDWTomydUIJN/Ezm+NXXkMGK1xYtqVwIC0xLtjjIuk4CcLmcssw3l7x7tlgFKZrmSCZ7/MMJQrQBfUVPTlQ84Z4ogMxd5HOItWgbeoSwtt1TmsE30OC2mnbaIH5FoaKO/dgGq25p/Nm+iffHM2gulwfgQhRJfkYnCjZqL9fXUl2cV6k5k3A3SXPvqQxteZjr4D0+4qJx+dlcCMQJncGha/GqCqaaNKgbyd+5uMBKGZEtWxeoCI0EOfdLvdjbakizdoAbpChUVXyF8AfO63UIZXZUgRJqrlHTIiN0I/pm4gpIjDSKoVvFSm7ydZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8Xx7VrAjn2Ud65MaqrLHaynKnM8o1MHkRdzG6mPUlTs=;
 b=fIvu2T/eUs1hmHWjI8jMshiWJ+RegzhxQcLimmjGsv30U3dHBUtLOmsw7YYxUvIFb+/pDe8WhhGyO0cyhTH89qPJ8jHqbsEVsi6kgJA74yO1G2DrdkbImglVxP5R+cE823GwTNkwKlCxiJKng8/KwFPLPGCspTls1LwszHXyZAOTanLUgmTC6+kCqj3O/QcW3/7WGDVfKN37ZCQJHHmLUrGdbM1lPfFG0JLpToKc52njhQ/njylZ6121Te/YVHZGEHtUCnHVpjbm+uAuZ89+3YkWUARqnl+ZxWlKdW+01JMdgyTpfAStGAcLEqVgKxZkv/Y74Br1wStO/qVe4SijnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by DM4PR11MB5485.namprd11.prod.outlook.com (2603:10b6:5:388::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.28; Thu, 21 Sep
 2023 14:40:33 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d89f:e7e6:dbb3:3ddf]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d89f:e7e6:dbb3:3ddf%6]) with mapi id 15.20.6813.018; Thu, 21 Sep 2023
 14:40:33 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <ZQtWNlJimAS8V57w@intel.com>
References: <20230920195351.59421-2-gustavo.sousa@intel.com>
 <ZQtPR3XtOl3WWW9Q@intel.com>
 <169524081664.7665.4045864066370477019@gjsousa-mobl2>
 <ZQtWNlJimAS8V57w@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Ville =?utf-8?b?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Thu, 21 Sep 2023 11:40:22 -0300
Message-ID: <169530722255.1903.12270984235287148195@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BYAPR02CA0029.namprd02.prod.outlook.com
 (2603:10b6:a02:ee::42) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|DM4PR11MB5485:EE_
X-MS-Office365-Filtering-Correlation-Id: 14f6a5d7-e663-4189-99a0-08dbbab0b5ac
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Ne7x3VQe2ISlu+tfwLnucIcU4F1pc93K1GVjoVPKMO9pWn8FfL8hgBeuYmUebMZg1K+cB1ap4fwNJr5N89SYKXigMzpHceo5AOHHDUKw2II+WgWqov/OUQByhiFGPiuGSuZ3qwbwhCNYwYGNTXTsBSlV2FjVWoaLstyEs9qa6/R9ukunHWtmux6+DxGDqB6pZHfO1giZgcPAYsd21cBL92vTeuga54zU6P+FfXJH/Z6u60eSIUDsBOdOPKndE3+Cfek26IqbMvuLJ7ZULnQplRWb5X9sQk7MMUrIMZrM3HaXCHXRFTjdw3RafUDTL+l7MtovkgTYY0Lh0REvobNWYNYx+LJDzzJwSBuYc0/KGe11aIkgaj8lBcJaL+cLyzf3rvkzVQI9nkX+fqseVaJKQjuMRyArnlZGLWv504Ilx/RQmXVpc6N1AFL3oEj2PMUb12FBEzUgxZu0EB2Bm6tABWqREbwpYvoVacjiBhDjvBppYB33IO7tG+Rb8CjfCikYuK2GuZA++ZKaJyuPUKt+BPTeIP2/lLnpb1PjyVkb6Qgzts0U3u6gxYRn/ZIe4McW
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(39860400002)(366004)(346002)(396003)(136003)(376002)(186009)(451199024)(1800799009)(478600001)(6486002)(6666004)(6506007)(9686003)(8676002)(83380400001)(66946007)(6512007)(5660300002)(66574015)(2906002)(26005)(41300700001)(33716001)(66556008)(66476007)(316002)(8936002)(6916009)(4326008)(86362001)(82960400001)(38100700002)(44832011);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NjVrYno0aDFobzFxS3cwOStjWk9GMjlLZzRQeUZTTVdwQUJiWkhNVmowL2pW?=
 =?utf-8?B?ZVpsbmgwdUlBVmgxVlR5VlhjeDNXTERHRWdEejZ0aEg2TStZRzhaMVlERUxX?=
 =?utf-8?B?c21QeEJ5UXI4SFJ3cUp3QTJzRDQvMFM1anc5NVZPb3NPZGJNSlh3aVlYdklh?=
 =?utf-8?B?bURxZmorcU1mSFQycFg4bkxBWVZCaW5zRkVHRGU5RUxVWGFEOW5PbXl3cjR1?=
 =?utf-8?B?WjFBN1J4NEdkdEZ4azBlQ3pqUllGZU9UTlBNZFBuKytlTGZnalFOcENSUDVQ?=
 =?utf-8?B?K2diQkhuU3F6OVZNZGROOWd6QmZSZlBqN09xSHJ4Vk8rZE5lNzBIRzE4MjFj?=
 =?utf-8?B?Q2JVbVlSWS81SkdaN3B6YzlwOUE5Q1I5M01uUGNmRFZSM2hSeEdMSjc5UjJm?=
 =?utf-8?B?SE90Z1hjM0Y1NFprTHlLdm9UbWhhUlJqT2t5US8xcEtiSXBpT0pJaXY1ZUNM?=
 =?utf-8?B?MGdnb0xUdE9QdmFYaEVoZlZZNnZTZHQ4RUJ1M2FnYTltc1NEa0FCUTZTUVhS?=
 =?utf-8?B?Ujh0bTVVYUVHMXBpVGMyOE5wWEhFVVNCWFlMVEJYVDdsbHJtNlRSMnd1SUcv?=
 =?utf-8?B?THYrQzRDZm83bnR3aStGcTJuYmhVM0o4dlB2Z3UvdktJUFh6d1crcEk4MmZ6?=
 =?utf-8?B?cG5Wb0RRTTE3YkpMdlNPRXNsWHlaQWptR2M3ZXVaeGNabVd5OXR3U3BNYlU5?=
 =?utf-8?B?SHNiWWVFOGV2UGRSYWtUZzRxajF6cldJS21XZ1Nrb2xtYlRXd2J2dFNJOFdJ?=
 =?utf-8?B?YnlsemJXb1dzUUFxZzdESSttanVGSHd0S20wejBNS3FsOG9rWkxWajhNUnpM?=
 =?utf-8?B?azQybkVtZXVEREg3eXpOUFkxNGlUaExYWnN2RTdmN1JzRlJKZFJFNE5KK0dn?=
 =?utf-8?B?QzI4MjR1YlF6UjRQbXAyYVh1NFpUbXRZNzFNSExubkt5bHM4d3VaNk5qM2k2?=
 =?utf-8?B?OWx3QXFlK01XWHpHMU1GSTdVYWhkWUVLYjFpcGRzTlRNYmcwNk50ZXBYSnpS?=
 =?utf-8?B?SmE0ZjI1T1ZKYitvRVRUMkR3Rk9odHFJUGQ0NW4ycmpndlV5SEJZVzlaeWE3?=
 =?utf-8?B?OXI2a0ZwOVdOa3BuRkVPK2QrbllMNllMK1Iwaks4d2JMdUg3VmVDeVR0Sjkx?=
 =?utf-8?B?VFprTmVpQ1lIQWMyWk5la3hQaFVHZGFRMHNHMTVyVm0vbk1zODVZekJ4dXVT?=
 =?utf-8?B?SlozK0xFSnhza1ZVcjFDbnQzcmNmalIxQVg5bmJkeWFmY2tzaGExTkZmSTVx?=
 =?utf-8?B?WVphRzZONkZwb3JlcEVObGl3RTV2Ym1FZkIxclZsY21vN0FqOWVmVWQ5VjIv?=
 =?utf-8?B?Q25jSFlvT1gzNEgvYW5KZDdEem5HdTg5ay83dndRcURYeVhtTTgrZ3hnd3lQ?=
 =?utf-8?B?UzlTOXRnbktzOFFQcWJsa2pJMFVFeWphN1AvVXM3TTNXNHF6M3R6am5hdndw?=
 =?utf-8?B?UmFQK1AreWRWNkVubWlMVldMbjVDSjA1VUdodmp0SnlNaHo3M0NIeHRidjN3?=
 =?utf-8?B?aXRYalpkWG9mZTJ2aDR5ckFiTlFsZy9vWnNFaWY1ZkdNU1kvenNsRmp2U1p0?=
 =?utf-8?B?eHFER1BNWithUjdielNDa1MxU0hvWGpMTllaTjlkOGNPRWNvRUwra1hoVC83?=
 =?utf-8?B?UUQ3Skt6THNPR1dFQXJQZVZRN2Y5bDZKUGZXUlp0eFFUSnUyWStlOFNPanR4?=
 =?utf-8?B?ampjb0V6UUI2K2QxRDZXcG9CUWRPVk5UYkRoQWhaZ2lBWUc3RktHcHlYRVFj?=
 =?utf-8?B?Z2dPdUFwVFBST3UzUGpKaDBpRWVWaW9SUGRuc0hvNVpwZ2lraVowOFBpZFpK?=
 =?utf-8?B?QUh4UEdHdHdqeC8zZ2F2T05ubEE1NkNUQ2NXemg1cFZzVVBnd0RuMHhwTEVK?=
 =?utf-8?B?cjdXYVBXUmJwcWJZL1pBZWpROVNNVnlEWFVkYmR4eUtvTDFVT3BUNWs0eFJr?=
 =?utf-8?B?L1pVMXJtTXF6NkR5TjB5WEJRVjRWRHVXeDZpM0pUTTVZb1lFK0J3dXU4REND?=
 =?utf-8?B?S3U5bmcydXlMSGoxRlFJejM2cXZwR2pJQUNZRU5aemk2TENBT3BnQjZ4dFh6?=
 =?utf-8?B?aEZqYkhycXl2RTJQQjQzNFRTNU9BQmZFZlBkbTVzY0ZxRUduamswS2s1WitL?=
 =?utf-8?B?NFBXQ2tpNFZTb3dvMWh5UHhEZ2tSK3cvb3VDN3NDMFdGU0cyRlI3aW5xd1I5?=
 =?utf-8?B?eVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 14f6a5d7-e663-4189-99a0-08dbbab0b5ac
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Sep 2023 14:40:33.1224 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xLwCaYrUPUvqEqjwkWarRGi114CTvu+p77Nk4CaxRiPi240vxtbQptd4c/txrabXf+HYmu4svpn9wRBQ7k7YcQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5485
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/irq: Clear GFX_MSTR_IRQ as part
 of IRQ reset
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
Cc: intel-gfx@lists.freedesktop.org, Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Ville Syrj=C3=A4l=C3=A4 (2023-09-20 17:29:42-03:00)
>On Wed, Sep 20, 2023 at 05:13:36PM -0300, Gustavo Sousa wrote:
>> Quoting Ville Syrj=C3=A4l=C3=A4 (2023-09-20 17:00:07-03:00)
>> >On Wed, Sep 20, 2023 at 04:53:52PM -0300, Gustavo Sousa wrote:
>> >> Starting with Xe_LP+, GFX_MSTR_IRQ contains status bits that have W1C
>> >> behavior. If we do not properly reset them, we would miss delivery of
>> >> interrupts if a pending bit is set when enabling IRQs.
>> >>=20
>> >> As an example, the display part of our probe routine contains paths
>> >> where we wait for vblank interrupts. If a display interrupt was alrea=
dy
>> >> pending when enabling IRQs, we would time out waiting for the vblank.
>> >>=20
>> >> Avoid the potential issue by clearing GFX_MSTR_IRQ as part of the IRQ
>> >> reset.
>> >>=20
>> >> v2:
>> >>   - Move logic from gen11_gt_irq_reset() to dg1_irq_reset(). (Matt)
>> >>=20
>> >> BSpec: 50875, 54028
>> >> Cc: Matt Roper <matthew.d.roper@intel.com>
>> >> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> >> ---
>> >>  drivers/gpu/drm/i915/i915_irq.c | 2 ++
>> >>  1 file changed, 2 insertions(+)
>> >>=20
>> >> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i=
915_irq.c
>> >> index 1bfcfbe6e30b..8130f043693b 100644
>> >> --- a/drivers/gpu/drm/i915/i915_irq.c
>> >> +++ b/drivers/gpu/drm/i915/i915_irq.c
>> >> @@ -751,6 +751,8 @@ static void dg1_irq_reset(struct drm_i915_private=
 *dev_priv)
>> >> =20
>> >>          GEN3_IRQ_RESET(uncore, GEN11_GU_MISC_);
>> >>          GEN3_IRQ_RESET(uncore, GEN8_PCU_);
>> >> +
>> >> +        intel_uncore_write(uncore, GEN11_GFX_MSTR_IRQ, ~0);
>> >
>> >Did you confirm that it's not double buffered?
>>=20
>> Ah, sorry... I forgot to mention on the original thread where you asked:
>>=20
>>   - BSpec 50875 and 66434 (for Xe2) does not say that GFX_MSTR_IRQ is
>>     double buffered. In fact they mention the fact that display IIR
>>     registers are double buffered and require multiple writes to fully
>>     clear, but does not say the same about GFX_MSTR_IRQ.
>>=20
>>   - Also, BSpec 54028 does not mention that the register is double
>>     buffered.
>>=20
>> Based on the above, I'm assuming it is not double buffered.
>>=20
>> Should I check other sources? Is there some sort of runtime check that
>> can be done?
>
>I'd probably just poke at it with intel_reg. Eg:
>1. boot w/o driver
>2. unmask+enable eg. pipe vblank interrupt in GEN8_DE_PIPE_IMR/IER
>3. make sure GEN11_DISPLAY_INT_CTL sees it
>4. enable GEN11_DISPLAY_IRQ_ENABLE
>5. make sure GEN11_GFX_MSTR_IRQ see it
>6. toggle GEN11_DISPLAY_IRQ_ENABLE a few more times to generate extra edge=
s
>7. try to clear the bit in GEN11_GFX_MSTR_IRQ
>8. did the bit clear?
>   yes -> single buffered
>   no -> goto 7 and check again to make sure it clears on the second time =
around -> double buffered

Thanks for the detailed sequence above.

I wrote a small bash script based on the above and ran it on a Lunar
Lake machine. The output is presented below.

I belive the output is self explanatory, but just to be sure: "write
<REG_NAME> <VAL>" tells that we are writing <VAL> to <REG_NAME>; and
"read <REG_NAME> <VAL>" tells that we got <VAL> after reading
<REG_NAME>.

    $ sudo ./confirm-gfx-mstr-irq-is-single-buffered.sh
    Reset stuff
      write GEN8_DE_PIPE_IMR__PIPE_A        0xffffffff
      write GEN8_DE_PIPE_IER__PIPE_A        0x00000000
      write GEN8_DE_PIPE_IIR__PIPE_A        0xffffffff
      write GEN8_DE_PIPE_IIR__PIPE_A        0xffffffff
      write GEN11_DISPLAY_INT_CTL   0x00000000
      write GEN11_GFX_MSTR_IRQ      0xffffffff
      write GEN11_GFX_MSTR_IRQ      0xffffffff
      read  GEN8_DE_PIPE_IIR__PIPE_A        0x00000000
      read  GEN11_DISPLAY_INT_CTL   0x00000000
      read  GEN11_GFX_MSTR_IRQ      0x00000000

    Enable vblank on PIPE A
      write GEN8_DE_PIPE_IMR__PIPE_A        0xfffffffe
      write GEN8_DE_PIPE_IER__PIPE_A        0x00000001

    Check that display interrupt was generated
      read  GEN11_DISPLAY_INT_CTL   0x00010000

    Enable display interrupt
      write GEN11_DISPLAY_INT_CTL   0x80000000

    Check that display bit in GFX_MSTR_IRQ was set
      read  GEN11_GFX_MSTR_IRQ      0x00010000

    Toggle the enable bit to generate edges
      write GEN11_DISPLAY_INT_CTL   0x00000000
      write GEN11_DISPLAY_INT_CTL   0x80000000
      write GEN11_DISPLAY_INT_CTL   0x00000000
      write GEN11_DISPLAY_INT_CTL   0x80000000

    Clear and read GFX_MSTR_IRQ again
      write GEN11_GFX_MSTR_IRQ      0xffffffff
      read  GEN11_GFX_MSTR_IRQ      0x00000000

By the output above, I belive we can conclude that GFX_MSTR_IRQ is
single buffered, right?

--
Gustavo Sousa

By the way, here is the content of
confirm-gfx-mstr-irq-is-single-buffered.sh:

    #!/bin/bash

    declare -A REGISTERS=3D(
        [GEN8_DE_PIPE_IMR__PIPE_A]=3D0x44404
        [GEN8_DE_PIPE_IIR__PIPE_A]=3D0x44408
        [GEN8_DE_PIPE_IER__PIPE_A]=3D0x4440c
        [GEN11_DISPLAY_INT_CTL]=3D0x44200
        [DG1_MSTR_TILE_INTR]=3D0x190008
        [GEN11_GFX_MSTR_IRQ]=3D0x190010
    )

    function reg_write() {
        # Redirect stderr to silence "register spec not found" warning
        intel_reg write ${REGISTERS[$1]} $2 2>/dev/null
        printf "  write %s\t0x%08x\n" $1 $2
    }

    function reg_read() {
        # Redirect stderr to silence "register spec not found" warning
        REG_READ_VAL=3D$(intel_reg read read ${REGISTERS[$1]} 2>/dev/null \
            | sed 's,^.*: ,,')
        printf "  read  %s\t0x%08x\n" $1 $REG_READ_VAL
    }

    echo "Reset stuff"
    reg_write GEN8_DE_PIPE_IMR__PIPE_A	0xffffffff
    reg_write GEN8_DE_PIPE_IER__PIPE_A	0x00000000
    reg_write GEN8_DE_PIPE_IIR__PIPE_A	0xffffffff
    reg_write GEN8_DE_PIPE_IIR__PIPE_A	0xffffffff
    reg_write GEN11_DISPLAY_INT_CTL		0x00000000
    reg_write GEN11_GFX_MSTR_IRQ		0xffffffff
    reg_write GEN11_GFX_MSTR_IRQ		0xffffffff
    reg_read  GEN8_DE_PIPE_IIR__PIPE_A
    reg_read  GEN11_DISPLAY_INT_CTL
    reg_read  GEN11_GFX_MSTR_IRQ
    echo
    echo "Enable vblank on PIPE A"
    reg_write GEN8_DE_PIPE_IMR__PIPE_A	0xfffffffe
    reg_write GEN8_DE_PIPE_IER__PIPE_A	0x00000001
    echo
    echo "Check that display interrupt was generated"
    reg_read  GEN11_DISPLAY_INT_CTL
    echo
    echo "Enable display interrupt"
    reg_write GEN11_DISPLAY_INT_CTL		0x80000000
    echo
    echo "Check that display bit in GFX_MSTR_IRQ was set"
    reg_read  GEN11_GFX_MSTR_IRQ
    echo
    echo "Toggle the enable bit to generate edges"
    reg_write GEN11_DISPLAY_INT_CTL		0x00000000
    reg_write GEN11_DISPLAY_INT_CTL		0x80000000
    reg_write GEN11_DISPLAY_INT_CTL		0x00000000
    reg_write GEN11_DISPLAY_INT_CTL		0x80000000
    echo
    echo "Clear and read GFX_MSTR_IRQ again"
    reg_write GEN11_GFX_MSTR_IRQ		0xffffffff
    reg_read  GEN11_GFX_MSTR_IRQ

>
>>=20
>> --
>> Gustavo Sousa
>>=20
>> >
>> >>  }
>> >> =20
>> >>  static void cherryview_irq_reset(struct drm_i915_private *dev_priv)
>> >> --=20
>> >> 2.42.0
>> >
>> >--=20
>> >Ville Syrj=C3=A4l=C3=A4
>> >Intel
>
>--=20
>Ville Syrj=C3=A4l=C3=A4
>Intel
