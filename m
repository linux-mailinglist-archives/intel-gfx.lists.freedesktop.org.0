Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C07926F0996
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Apr 2023 18:14:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DBA410EBAC;
	Thu, 27 Apr 2023 16:14:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CE4710EBAC
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Apr 2023 16:14:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682612073; x=1714148073;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=I9gRk8OncgyeFHS+2fsBfqxDPn/f4svrcq9idiy0WRM=;
 b=eLSO0B5dGlR8HSDj+TUdI/fDZ8KheVAyGeXbpynAFNoCT75FhEihoJJZ
 bbK5vznZHraFHu6BjfY9SIZGMy+sITYMBVL9oem1u1Tymy4qAHaak0D8J
 Z22j4M/BByx95osM8NunNRO47hS05+4mVgmVRl9WbXq2KWlDuhJ2t7w11
 ByRcexkCFDxa1A2pQykeTnhOlv362XUSy6J5DrGD19th2B6T2NxRbQ0mo
 aFCTAzzwsdN8QRR3HNDWWCdODFyOYF9Lvhc+lNPMpUYkeSGDEGyzaUqd8
 XXS4Y4E+M6YbvKl7QekWYSknM6Kql36BP3Y9LdkzrGH5FU4Sj1d3Ns8hP w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="347504328"
X-IronPort-AV: E=Sophos;i="5.99,230,1677571200"; d="scan'208";a="347504328"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2023 09:13:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="818605746"
X-IronPort-AV: E=Sophos;i="5.99,230,1677571200"; d="scan'208";a="818605746"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga004.jf.intel.com with ESMTP; 27 Apr 2023 09:13:27 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 27 Apr 2023 09:13:27 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 27 Apr 2023 09:13:26 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 27 Apr 2023 09:13:26 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 27 Apr 2023 09:13:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j7td7SchLKsIfBe9cT6YGxWHw2QrzEeitWb5Zopac3ligbyXQ88ERZ6Fm47eV6Jk/p4olm2GRor2N1S7mPXH7B/fkWCOmN89f5DB3AVdkhvgZ6x3uRW/Db8Y2WTkfhLVZ1vTp8TD2MImq5lVwoD9wUcbmgCFgkrN9sNx5fbxMjxxRplBVrV0A8VnhRx1yh48tFwzelQkW4uWWT3yhHEpAhOzU0Gmw30353NG5tgazbhdd/MVzU4kjzcfrlmtYZF2h1gyEUBYBBPBn5AAXu1urCcCNroeKcVHgf9stiqqoYS6+tTIO7uhrwEcZu8asRghKCYITQYyrNgJCI00zuTroA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IdcdD8njyuZvGmyfvq57DSpBB83RQgkkfZodJ/orfro=;
 b=eAnoF+MVOPOwmcZbVqkWYNlDiY44Z8D7bHKGFFo3hDDJmMzgxTAua8ECUDKErTj3sD2HBB997e3xpe9SR+NzvpzcRGw5fplylG/whq53fUQSRWR26p+qrcwBmSrPYuC2yYzudauQK8ctKsXfcRJMrLAvyR//jkb3FKVMwuZDBwBprkMzpDnKjavZ+OQQTiHSvCmvMZl8pBcVrab9NihLed+Ws5UGWCX2guZpMgsXIqPOm2A0H8XWeZcAFsk83WZaZIzV6ttwVfo/mHPi3vUj/4NPF1YBFkrChtQHN+51fn2YzMKPyeoP7xWiSCYE965p83TeDqQ6Sk0VccGBUpB3tA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB4226.namprd11.prod.outlook.com (2603:10b6:a03:1bf::12)
 by CO1PR11MB5043.namprd11.prod.outlook.com (2603:10b6:303:96::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6340.22; Thu, 27 Apr
 2023 16:13:25 +0000
Received: from BY5PR11MB4226.namprd11.prod.outlook.com
 ([fe80::c7fa:f42a:e213:8324]) by BY5PR11MB4226.namprd11.prod.outlook.com
 ([fe80::c7fa:f42a:e213:8324%7]) with mapi id 15.20.6340.021; Thu, 27 Apr 2023
 16:13:25 +0000
Date: Thu, 27 Apr 2023 09:13:21 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: Mika Kahola <mika.kahola@intel.com>, <intel-gfx@lists.freedesktop.org>
Message-ID: <ZEqfIeAZGQePjpMj@msatwood-mobl>
References: <20230420124050.3617608-1-mika.kahola@intel.com>
 <20230420124050.3617608-12-mika.kahola@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20230420124050.3617608-12-mika.kahola@intel.com>
X-ClientProxiedBy: SJ0PR03CA0173.namprd03.prod.outlook.com
 (2603:10b6:a03:338::28) To BY5PR11MB4226.namprd11.prod.outlook.com
 (2603:10b6:a03:1bf::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB4226:EE_|CO1PR11MB5043:EE_
X-MS-Office365-Filtering-Correlation-Id: b6d916a1-798f-4500-a703-08db473a5441
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nhnMJEyUhMzIiS12izpBv6xhbNdwEa8RnsYyyWeD/J6uoyUGvy18cJJZ07/C9NxdyFjXgoGkBNQ/lW+MzOt6OwxrVJ9k8eGwaTMl7CaOBJw/mNAs2kuNU6JEBDvWfMrf0Odc3KFLo657Y4Nc0S9SA/05XX51dEpbeuvr7XmqJRkZhnV7NTNA8ZsRhYK7ZOmmvNSrV1dIeHHOzbs2hwLcn/GP8kNghyBHynRxW4aS8+f/g61zxReQGyQ0hh+cv9vAeGPU/0rM6YZhTdx/SEDGfkODA4vAxZgw36F7EQJEOoUK9U/dHczvwggoZo2tNSF5vp0+MiBJyYC/+ZVjVgj+PuUOpWYl5J/fnjMBGOWEZc1TxRv86/oY99QewL43sK7JUGsyOWxakxIkrTxXPKspcnC80jWv45po3eRoXVSnjXRIJX8LldS2Vz/6SM8ApvwW06BJVsz4z0o0zRhCK+wwZuj0h78fJMrWOFJUuneOwAntCcGyVGfu1DhM3FCETrFntkCKaiSqaHPDQWgaa7PbAA/I1XG6wyEYso92OPBDTkQh0E8e1DQyJvkHN24MBPrv
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4226.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(136003)(346002)(366004)(376002)(39860400002)(396003)(451199021)(478600001)(186003)(33716001)(6506007)(26005)(6512007)(9686003)(6666004)(83380400001)(6486002)(2906002)(5660300002)(38100700002)(4326008)(8676002)(66476007)(82960400001)(66946007)(316002)(86362001)(8936002)(66556008)(41300700001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R2ZDQXVFWURCNFpudG9WbFNGTzA2QW9ybmFOK1lnRTdvMWRxNmR5WlEwbTRE?=
 =?utf-8?B?ZHVtbjEvM0gvVGJ4WG5kZzlUTm9TUTZpc25HUm1lNERFY05sMU1XcmszdTI4?=
 =?utf-8?B?USsvQTZPZjk2emU4bW8xeHAwRUVVRGM1YWZ0T0dKbGhvemRYc0VVRU0vYzJu?=
 =?utf-8?B?Rm00eGdPc0M0cHVVNGZNUnFldHFacWpHdVNXRzFlRFdkdDNQRXptY2p0OEZ6?=
 =?utf-8?B?R0hzTi9WRmsyRjdkUDAzVWtJemlwNjFxNnhRYzBRczh0MHZjNFZtYjBJcSsz?=
 =?utf-8?B?bUYyQlozN0UrMXluSG5tNndDNlU4NTdOWFQxaytXL2UzQWxkWU9peTBNYWFQ?=
 =?utf-8?B?b2lJWkl4WitlMjdScUNGOTkrM3BZdHdDS0tmZlhVNWZTcC94d2s4UTExdjB3?=
 =?utf-8?B?ZFl3T056MUlTdnBQZ0VKcUFLbnlCR29PRG5IQXBnZzZhWnVOY3Q2Z0ZzdTNI?=
 =?utf-8?B?SGFlUzZsb2U0bHF4dkQ0dFhFWUMwZ01KMW1uNnVYaDZSSlVuYTlzMDh0TDhk?=
 =?utf-8?B?ZzZqWFZjVGJPS281bjBITUhQQ2kxSXkwUmNCUkJvdThOV3E3VHZnS09iRlh5?=
 =?utf-8?B?cThlQjRxU0JsN3BtZDl4STBIUERCTmNUZERDU09SbkJEMGdKRm5IazdFdkxl?=
 =?utf-8?B?dHhOYmRqV0JFOHFtaFAwc0UxKzkyTkVVT0RVTHVVNGxGOEZoMVpqbjU0NDhm?=
 =?utf-8?B?OTgzNEFEV1F3L1htUUs0OU9TUjcvNS9GN3JvSzZtWGRPeTNiZy9KaUJTWGQy?=
 =?utf-8?B?ZUlqUXdCN0VVNmZWU29UWDhjREV5R0pQSVdMZk5IRjJ6M1o0UVhLSFI0ajdx?=
 =?utf-8?B?RnJCb0k4VG1OV3Q5UGRZTTE3SzFybXZtT3BMdU0wR0lKdGcycWJScGEvQzRG?=
 =?utf-8?B?SC9TVXhOQ1hYbUxEcTRkT29kSTkwVjZSUWNud3ZaRS9ER2ltV01TU0RUNDEz?=
 =?utf-8?B?M21Xc2hZRVNCVUwwSks1S0hsU1FNU2lxSFVaUSt1Y1RQNGlxVXdtQjJwUnlz?=
 =?utf-8?B?VXB0RW9MK05VQkgxcncxM1BzS1JMYXBGTHZPMm1NdGhqaW5INmUxRmNjS3Yr?=
 =?utf-8?B?MHJrZE5SQ0ZjMDMvZm9KOFRHTDdPRkxJV0JXcGk1MXc2ZjRxcElXQ2ZEbVF3?=
 =?utf-8?B?aEV4Y2lwb2tWcWFqRm5SUUkyNURUQUFwR1d5dllVM1JEZ0J6VnNkSGV5cjRj?=
 =?utf-8?B?Y2tRekFYWGcwRnRzcEs5THVGdVljS29SUDRJbnJjVjNFQTdvZ3hxbTFLeUs0?=
 =?utf-8?B?T2NTbUtTZVFhemJXVURNTGFYTGdkVUZoNTVTaVhzY01nK0ZpTTNPbHdmNFNi?=
 =?utf-8?B?NkVLbVAwTllyUEZxNHVYRlpURXRkdi93UWcwZFRSTUFDS0w2ZitPTERNNDRx?=
 =?utf-8?B?V0NSN3p1Mk1lb1N0NVhROFpuTTQrcENvTmxoT3BjUEFhNUkyakZuVSs4eTR4?=
 =?utf-8?B?WjZRVVFRVHFmQmE4R01EQUo5amlWb3B1Q0xsOERKVm1NZVdhRzVmOG94a3M2?=
 =?utf-8?B?Y3RpNWZpMWRaS3pJQXltWDRHdDNwTjRMUWZFSDFaMGtJUzVSclJDRFIyZlgz?=
 =?utf-8?B?SXBKSHR3cWlTb2EvSVc4S0MwNS83QitmR0VURjI5dlBrak1mZXdPbUllRVBI?=
 =?utf-8?B?V2pZSmJ4VlR6S2ZKOUhmUUFUMTA5TG1ieVVKcTRFUFZsUmFhUkhOckMvY2Fy?=
 =?utf-8?B?RHowQUlBdWR1Y0V6K2VDMUpYeCtaZnVrN2ZoYWp1all4NkFlcEpvZ1VNeHV0?=
 =?utf-8?B?RGtrNFNRM1hab1RWbE9NZ0l0am9OQTZIUnZrNTM3dzdnMVJyeitwejZEVUow?=
 =?utf-8?B?YVBlVThrZUZ3UHQxbFFxbWhrNXdIQ0hnb2cyd0h3WDZTb0FjcE9NVWlVRVZu?=
 =?utf-8?B?WGdWWng3SUZNbk43Q2lIYktrNWhLaVUwc2N2NzFKaDJQbXFIZDdFSkx3S2Ja?=
 =?utf-8?B?WTZGY2p3VVY3QnR5THM0U09YL1ZiKzRhcUxVV3laTktlVVN5dTY1RkErRjE1?=
 =?utf-8?B?T3lDZHBIZUVETDFxMExtUGUxOVdxYURJNkZmTitNWVJhRTBhcHIzQXZLM2Ix?=
 =?utf-8?B?OG4zZDlzdi9vWU5jYi8yeTAzM1laa1lBbkUxS0Q1MVRadEVUUmpQckFvTlBH?=
 =?utf-8?B?UjRjTG1kRUZ6SnJBaENEV2xoSXV1a0ZSWXJWcHhlV04xVzVaUmFKaEIxYThJ?=
 =?utf-8?B?L3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b6d916a1-798f-4500-a703-08db473a5441
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4226.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Apr 2023 16:13:25.1979 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0reaoH8vGw/sEI4Uu8NYCkvn9bzmAnE5ebi1b1JMDCEPuHzWYsCVafrnxjpM1E9SIApW+nXlrdg1mdKfKbcux47sz+WC5t7hW8+opopspIs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5043
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 11/13] drm/i915/mtl: TypeC HPD live status
 query
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Apr 20, 2023 at 03:40:48PM +0300, Mika Kahola wrote:
> From: Imre Deak <imre.deak@intel.com>
> 
> The HPD live status for MTL has to be read from different set of
> registers. MTL deserves a new function for this purpose
> and cannot reuse the existing  HPD live status detection
> 
Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_tc.c | 30 ++++++++++++++++++++++++-
>  1 file changed, 29 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
> index 951b12ac51dc..b192265a3d78 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -886,6 +886,34 @@ static const struct intel_tc_phy_ops adlp_tc_phy_ops = {
>   * XELPDP TC PHY handlers
>   * ----------------------
>   */
> +static u32 xelpdp_tc_phy_hpd_live_status(struct intel_tc_port *tc)
> +{
> +	struct drm_i915_private *i915 = tc_to_i915(tc);
> +	struct intel_digital_port *dig_port = tc->dig_port;
> +	enum hpd_pin hpd_pin = dig_port->base.hpd_pin;
> +	u32 pica_isr_bits = i915->display.hotplug.hpd[hpd_pin];
> +	u32 pch_isr_bit = i915->display.hotplug.pch_hpd[hpd_pin];
> +	intel_wakeref_t wakeref;
> +	u32 pica_isr;
> +	u32 pch_isr;
> +	u32 mask = 0;
> +
> +	with_intel_display_power(i915, POWER_DOMAIN_DISPLAY_CORE, wakeref) {
> +		pica_isr = intel_de_read(i915, PICAINTERRUPT_ISR);
> +		pch_isr = intel_de_read(i915, SDEISR);
> +	}
> +
> +	if (pica_isr & (pica_isr_bits & XELPDP_DP_ALT_HOTPLUG_MASK))
> +		mask |= BIT(TC_PORT_DP_ALT);
> +	if (pica_isr & (pica_isr_bits & XELPDP_TBT_HOTPLUG_MASK))
> +		mask |= BIT(TC_PORT_TBT_ALT);
> +
> +	if (tc->legacy_port && (pch_isr & pch_isr_bit))
> +		mask |= BIT(TC_PORT_LEGACY);
> +
> +	return mask;
> +}
> +
>  static bool
>  xelpdp_tc_phy_tcss_power_is_enabled(struct intel_tc_port *tc)
>  {
> @@ -1039,7 +1067,7 @@ static void xelpdp_tc_phy_disconnect(struct intel_tc_port *tc)
>  
>  static const struct intel_tc_phy_ops xelpdp_tc_phy_ops = {
>  	.cold_off_domain = tgl_tc_phy_cold_off_domain,
> -	.hpd_live_status = adlp_tc_phy_hpd_live_status,
> +	.hpd_live_status = xelpdp_tc_phy_hpd_live_status,
>  	.is_ready = adlp_tc_phy_is_ready,
>  	.is_owned = xelpdp_tc_phy_is_owned,
>  	.get_hw_state = xelpdp_tc_phy_get_hw_state,
> -- 
> 2.34.1
> 
