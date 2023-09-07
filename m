Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 066B6797D8D
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 22:47:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A53F10E0CB;
	Thu,  7 Sep 2023 20:47:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A49FD10E09F;
 Thu,  7 Sep 2023 20:47:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694119622; x=1725655622;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=37FvL4vKtKuTjVmSVkYcibXjcNPKfSnoXcMHW1N95Lo=;
 b=HdMXHO1M+ii0fCsDRYQY85un5mTAz/u8MFvI/Nc0Llh8Imf7oGVj1Nx8
 CKDghIM8IwWx5GT/7sZaF6XACHYmb3Ftv8ztLeHNUUA04tRxDNYjHqFHK
 gtHS3ldI2egovku/qpIHLN4XyVrvw47HTqRUHTFRjXuikIz8c4VH2koT0
 v6A3JW8MGTM+5husXTFs5wr9mVR1KU5sBqnARPP4wnkZmpExcQaZPO4ov
 Kp0mmAOsO+cgjpwiOjByeyoePazdWZc4Ym0kMfs/WIivnJIz9jdnXMwWS
 2hTRkDGVhQT2U1kjMjNiLQ+i/C971BAgnyjFbuzv9CEPFkGUDStW6THcd g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="367729298"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="367729298"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 13:44:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="691928942"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="691928942"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Sep 2023 13:44:09 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 7 Sep 2023 13:44:09 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 7 Sep 2023 13:44:08 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 7 Sep 2023 13:44:08 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 7 Sep 2023 13:44:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Sq4LX29CXbDXz96RbNg+d6/SI0W4Dfis5D/J2+9anYr03ETTqgzQzSc5lL5LUgQ9egeti68cJ0fGZcnlfrPMI4fBcdvUOpwHQhDKmTzNx6zmR6BYrWEqNonSVzq1NlkMjQM6ghj5soeeqkatMx8d4sAih96P9HmponO9PCFw0JI3oVL+3xe0pZcDdD+ZMkM5hkmP2b94QtTsebax5FxG2wwsxPIsnYefKdHsNOFR+B2yfRDs/9fvQkUGjpUgn0L4ahk37DXgk97blfMEFf0qQzRuEqeswAhYamyUNqNqBnlnWYO0S2c09VmKMoAsu5hcbo5rKqXnBD97NOk3dt/7Mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MBIxaOFNpSImFFsoJQdQ8qmFN3IAyO34p88HgbU0vS0=;
 b=RJ10xY6QZf+15S9u7sl92EE5aH+cnNXSCO371gd7ECVxIEOWBU3k9mkstx+nLtOjoHIRLvzRGJ9GF4zmXVGQ4eIEErU4eZGwh+vmi4n3UV7lViJsm06tZ00fQFtMZDMHu//IUYcj88bpVZw/PoOSH6tAIXf/YZrnuxCSRsXJwsst+jsTvfeqPSFhM+yQgPqo306lLQlvciaNF93JZp5u8elZ4gLRUqvmjjcpOdrAn6yhAQOwaE7YNHJGrC2uB3jOKucYd4H1YnCBioOdo72YkEXcmhYyX1xjXNY7eY//PRRdrYYZm30IBmi/nHsCOBsB3hs7uzFCgkli90jrQ1eIFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by PH8PR11MB6609.namprd11.prod.outlook.com (2603:10b6:510:1cc::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.34; Thu, 7 Sep
 2023 20:44:03 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79%5]) with mapi id 15.20.6745.034; Thu, 7 Sep 2023
 20:44:03 +0000
Date: Thu, 7 Sep 2023 15:43:59 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <oxqzybmceob67inunbnnvjna7sgbpjjhb4kwqzfwc7rz5hir6u@x4warrnufecs>
X-Patchwork-Hint: comment
References: <20230907153757.2249452-1-lucas.demarchi@intel.com>
 <20230907153757.2249452-6-lucas.demarchi@intel.com>
 <20230907170442.GK2706891@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20230907170442.GK2706891@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: BYAPR05CA0075.namprd05.prod.outlook.com
 (2603:10b6:a03:e0::16) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|PH8PR11MB6609:EE_
X-MS-Office365-Filtering-Correlation-Id: c33607ce-a47b-4e44-046c-08dbafe32bb5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gXEF9rShRok2zQL3H8PtBIw+AqcFWLYMHOOYTAg1b4qrTlz51/MBaTrtIjoMN3wsv+YEgXVbcJEnF9/dT1m+s6bd/+C6BMWQJMZV6NrZD3ykjV3JYHaMRZA5UDbuxyTjJ2cggcAgotsns7wNKfFEaKgz1I+Aj0+Ixju20xL2w2Ui5aN96MIPowGVGbfvmcOZwIZY2+VMU8pZW+wADB6j+KBD2l4Nmnh+WZCXUTB4jW7DuJnlQPF2IXdJKhISODtScg+WrwH0NX++hEkAnth3T0iFHg1EcD/5GleNSmorZoYbFvOuLh5PDyBWIXrhW+uVjWmr9mqok3fQOeQ3TFHe99DoiK2/YalElzLWXk4mVpT2E+69V6bhmtfOTlG2qFrTWwzo9BSyDRSsWCs5ECD7mO6c679Z0RDl4OejzysyS/1++jLQTTEG3wxGX22h57//TGlRpP5LyLoKCcijenXT39tZbe7FVZlwroJswSMIJwRALP60BKFKJGUXvyZT2rz9w2lAhsbywLLJ4JUyqoBBaAKAeuwvOokrsjTzqYvxN7EZUFSG2x8YaoS9R1tQelkQZX/JBSueVKq8WBlNvqF5GITa3zqgMak29ZgOlzR0sLZRXJFAlTuCxGkyAmO1x6C1
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(396003)(366004)(346002)(136003)(376002)(39860400002)(451199024)(186009)(1800799009)(38100700002)(86362001)(33716001)(478600001)(6666004)(26005)(5660300002)(6506007)(66946007)(66556008)(66476007)(6636002)(6486002)(316002)(450100002)(41300700001)(8936002)(8676002)(9686003)(6862004)(4326008)(6512007)(82960400001)(83380400001)(2906002)(226253002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?U6JrerfsA2xxJy7qb7ZCXTSnDIm87MxnSIfaoIJGQ7GIrVGdZyz4cCM6Rhyx?=
 =?us-ascii?Q?40vVTKA95rfD+/3/LlN78pTlafyO+34pewrJYm0COKMOHbUT4pmlQI5xJALw?=
 =?us-ascii?Q?RDC7hGqoy4hbxj3lYL/iK5ad5dB1oywkQG13Y7dPs5wH8gi+lbkGIfjm8NBy?=
 =?us-ascii?Q?v8grpDfMW4Co7awgvnzzFP3gayqRqFrygbjdCjA/NLxHxdR7lHr6x9pTrCAe?=
 =?us-ascii?Q?BfEJIuN7aWaq3ydwIKySnDZrqyXIq4pZnzyHQ8Q7v2zgDP/aVP7BQ32KSZV0?=
 =?us-ascii?Q?TY198hs5oNkh/a0wL2c5bz3j1feBhxXue54uZO6qKPGAag2qeYJ7tlTQ6KKX?=
 =?us-ascii?Q?7Vl4J1idD810aFFo4hosvFF4YE8TDyREYIXHgMnyKp42o5x+hAMBW4MrLxoP?=
 =?us-ascii?Q?zeD7i1L5sjeJpGnlH6GEC/9j6wI8EvqATuyaAQj1tcyCcN23T25HpH2oaeDb?=
 =?us-ascii?Q?GVK7f4m9bO89lTdHcERPfVQdFNlJ0Une2uxdo1ww2LzSWw+ZFy6E+Gz5maYx?=
 =?us-ascii?Q?b19NVG3GBqvIl2VFcAbogrgT7FaXjbRQWV6BZ4OOntQVllY9FOazw3Ey9Pgv?=
 =?us-ascii?Q?qo/CI8r6WkULeMtYuGXO5oVx52uuy/+x9osrIafqBek3J1aWnzk7XXreoNh4?=
 =?us-ascii?Q?J0/jDoYksLNrjjFJ87jFwK/q2cpsMdYnB8ZCMSCQoEa4x07z13i9gz6EU6IO?=
 =?us-ascii?Q?LqiT4YsMzaLd3m0rlzRlSDHO0CT09u1PEnUr7W/dRmj7Rk28RmZoZuabOH/T?=
 =?us-ascii?Q?pMBdz9N0vo1mSmKRcELg1JYtN2xjuN5Pmpwse10B7w8bXH529w25JKV9t6Wc?=
 =?us-ascii?Q?OBsaGE0fgKVFkr06oi/xDKJ2Bk1dMuSF222mlIYqBjMkPoyg0nMU4bxlLu4P?=
 =?us-ascii?Q?p+ajxHetXPflOAkP+ahUd1+5v7YNEvj54R5z9HTwDUSwxmwzAPNGSKy+0imV?=
 =?us-ascii?Q?cn07LOyExhhJyMp06xAd1f8PtkEpsQ5ePVu8+tPbH1RpQzVVf9vahGhYKzED?=
 =?us-ascii?Q?HbuI+YwQjPYu8IHhIHKgax4z8p8fQYmAtXGzFmreWcAErzq9mz0YrTJj3qzu?=
 =?us-ascii?Q?u1MzvcKM2Fgayqeozld0JLO19OHuINnTCp2WUZ0PPndAkE//kEXyDYussx8Y?=
 =?us-ascii?Q?mkqt9Lrx/f265iXwjGF2enMsxVri5irznN2w2Z5rynhFh/rklBt48X1FMrVQ?=
 =?us-ascii?Q?/wEsXNxnCAVklrbTSuB19HVoXC/EH3AfYDegA30y4O1+5grmpSaVZtlzc4Ev?=
 =?us-ascii?Q?/70jfqFvyJZP3AEFoMbhRs/qSx5PzRFGzCJNaB549abUSyBiOz1znDchlPFd?=
 =?us-ascii?Q?CDt2GGSVM1GP1F0Szp5DmB6ftXQJLesiAP65eDY1Y9mXd6TdCoa+Zzx07YSG?=
 =?us-ascii?Q?aR3+ZzJRr+GNzIz4NprKUDIxi8iUSvOMzfl8ghVsp4XZvfnQnp/eslJDUo7C?=
 =?us-ascii?Q?/QCXjPVXsDn4vSgigG2UkbVSybcAI9RkUBc0tTJXeUX/m6uK+CJ8g6dnQaqy?=
 =?us-ascii?Q?gLhMm9SJKwEHREgPSXb8Rk/9vvf3pFjjMfwRkJmbQFzYxTrbbOq2DshNsW67?=
 =?us-ascii?Q?iD3QPaToG3anuswoyRgv1Jnj2x9nse3IBktBVTY4Cz7Z+8MdOm/mupTk41BL?=
 =?us-ascii?Q?Bg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c33607ce-a47b-4e44-046c-08dbafe32bb5
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Sep 2023 20:44:02.9788 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HjVbsNXl3ClcTnyWSRAM7KQf+TxrLSDMN6uaxUcdEFQJXfSq5ESlK0ZwvrvLdbZPpwsjpM1HqYw7aIfRpruA3IkUB90j73yzaCbQWjySHbE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6609
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 05/27] drm/i915/xe2lpd: Add fake PCH
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
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Sep 07, 2023 at 10:04:42AM -0700, Matt Roper wrote:
>On Thu, Sep 07, 2023 at 08:37:35AM -0700, Lucas De Marchi wrote:
>> From: Gustavo Sousa <gustavo.sousa@intel.com>
>>
>> Xe2_LPD has sourth display on the same SOC. As such, define a new fake
>
>s/sourth/south/
>
>You might also want to drop the word "same" from the description here
>since NDE and SDE are technically on different dies in this case (NDE is
>on the compute die, whereas SDE is on the SoC die).  To be 100% accurate
>we'd want to identify SDE behavior via the PICA's GMD_ID (since PICA
>also lives on the SoC die for this platform).  But since we've just been

I'd not re-architect this based on where the PICA lives as it seems very
easy to change in future.... tying the SDE behavior to the PICA behavior
because they are on the same die, doesn't seem very future proof.

Here the real reason for the change is that from the SW perspective they
are under the same PCI device and there's no reason to look for a
different one. Maybe rewording it a "Xe2_LPD has south display on the
same PCI device" would be simpler?

Lucas De Marchi

>able to get by so far with just matching PICA behavior on the display
>version rather than on its own version, we can just use display version
>for this as well, at least for now.  We may need to revisit this all
>down the road once we have platforms with more possible combinations of
>these components.  Of course we really need to rework the SDE handling
>in general (and break its assumption that SDE behavior is tied to PCH on
>modern platforms), but that's work for a future patch series.
>
>I was originally wondering if we could just reuse PCH_MTP here, but it
>looks like there's one place where we setup HPD interrupts that needs
>different handling.  So this should be good enough for now, and we can
>revisit the whole SDE design separately down the road.
>
>With the minor commit message fix above,
>
>Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
>
>
>> PCH entry for it.
>>
>> v2: Match on display IP version rather than on platform (Matt Roper)
>>
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>
>> ---
>>  drivers/gpu/drm/i915/soc/intel_pch.c | 5 ++++-
>>  drivers/gpu/drm/i915/soc/intel_pch.h | 2 ++
>>  2 files changed, 6 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/soc/intel_pch.c b/drivers/gpu/drm/i915/soc/intel_pch.c
>> index dfffdfa50b97..240beafb38ed 100644
>> --- a/drivers/gpu/drm/i915/soc/intel_pch.c
>> +++ b/drivers/gpu/drm/i915/soc/intel_pch.c
>> @@ -222,7 +222,10 @@ void intel_detect_pch(struct drm_i915_private *dev_priv)
>>  	 * South display engine on the same PCI device: just assign the fake
>>  	 * PCH.
>>  	 */
>> -	if (IS_DG2(dev_priv)) {
>> +	if (DISPLAY_VER(dev_priv) >= 20) {
>> +		dev_priv->pch_type = PCH_LNL;
>> +		return;
>> +	} else if (IS_DG2(dev_priv)) {
>>  		dev_priv->pch_type = PCH_DG2;
>>  		return;
>>  	} else if (IS_DG1(dev_priv)) {
>> diff --git a/drivers/gpu/drm/i915/soc/intel_pch.h b/drivers/gpu/drm/i915/soc/intel_pch.h
>> index 32aff5a70d04..1b03ea60a7a8 100644
>> --- a/drivers/gpu/drm/i915/soc/intel_pch.h
>> +++ b/drivers/gpu/drm/i915/soc/intel_pch.h
>> @@ -30,6 +30,7 @@ enum intel_pch {
>>  	/* Fake PCHs, functionality handled on the same PCI dev */
>>  	PCH_DG1 = 1024,
>>  	PCH_DG2,
>> +	PCH_LNL,
>>  };
>>
>>  #define INTEL_PCH_DEVICE_ID_MASK		0xff80
>> @@ -66,6 +67,7 @@ enum intel_pch {
>>
>>  #define INTEL_PCH_TYPE(dev_priv)		((dev_priv)->pch_type)
>>  #define INTEL_PCH_ID(dev_priv)			((dev_priv)->pch_id)
>> +#define HAS_PCH_LNL(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_LNL)
>>  #define HAS_PCH_MTP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_MTP)
>>  #define HAS_PCH_DG2(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_DG2)
>>  #define HAS_PCH_ADP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_ADP)
>> --
>> 2.40.1
>>
>
>-- 
>Matt Roper
>Graphics Software Engineer
>Linux GPU Platform Enablement
>Intel Corporation
