Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3D983065CE
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 22:14:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3735F89791;
	Wed, 27 Jan 2021 21:14:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 709BF89791
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 21:14:53 +0000 (UTC)
IronPort-SDR: rwtMLc2N0rUve224IYbWwJmAZhlLmCvi5dQMkfhydETmoH+p3EH4RBP3kB72mgRuRLKWnOfWdX
 1x6RwRf0+v0Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9877"; a="180279692"
X-IronPort-AV: E=Sophos;i="5.79,380,1602572400"; d="scan'208";a="180279692"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 13:14:48 -0800
IronPort-SDR: DCgykZZ/kHyZgEdbJNLQkRaHSgTaS7QrLmoWx7moU+jIcE6/YPKSV8tbb0W4he3ZCFZY6P27NV
 ikO7dWBMzxoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,380,1602572400"; d="scan'208";a="369608009"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga002.jf.intel.com with ESMTP; 27 Jan 2021 13:14:48 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 27 Jan 2021 13:14:47 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 27 Jan 2021 13:14:47 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 27 Jan 2021 13:14:47 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Wed, 27 Jan 2021 13:14:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ScU3Pn/H3DaLEi7V1SYqPUaV7TVRT7LPljIhG4He0kabSF4EiVCVNLOyHviWc+SiIZWD9l2nnbSQAbjtvJ4aL8a8AJ2j/PuWzLAWq3Y82lXG7wXj4NBsWgZ1nXfreWxw09ZwZ6/uXJcdJDK2wixZdme7GUDuHqXDmdiKyM1Y0Njqs2WowUdfNvbsMduW0pDdLo27lRulUt8Pq0pGNrqHebDphsYyscMpaT2spy7+QtBaVDf8WoGZl+0A1N/0INkaimHpuJo5YO6us6v6EQA2dOhJg/EH/8zb1qc0yV5m6PUUUQN+vwBkuFiy1Zp1R1D55nRqc4hUwtPpFYzYphhhtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uIwPNlRfzenfkKo5TwpMNwpeIYoxSYSC2V6AbmFtiRs=;
 b=QdozA29OgN6L3JzSIJuhqWnfFb5caWgmST7DDn1ATyAHCZX5rowCQfp1X17K54laZqcqDMqn3agB5qOxR5sbtW2bIQ9bD2yl+pYQYwDS/2+109Le+raaWg+Z4cDns5Dq18zH9r7zcseSwiBg9rquKRqoZO+obpOuhyebQRSmqLRzdA/gL23DCCJhREy1xzp9x8Qvwvesb0MWy7Vrb0GWZo7i8LIDKke56iU9WwbmejM1voD2CZpAM+nVad8/UgCGMTTYK7qKQqTQjwf53A2T+/DNhytMkFFD0p4zrJ3K9aKTsDQ/UIVpFyidBhqNdsIksLcFmHO8Qr0db/PbT/O5Eg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uIwPNlRfzenfkKo5TwpMNwpeIYoxSYSC2V6AbmFtiRs=;
 b=SWt0HzF/bVS0NNoEdtfIK1QPTokazDu9twtGngaEOnGuMOyqNJXPNaC6RtivQBtJtvauSbRRgURNzFgQd0Fnc4Gh7s+blKl/bbs9bRBDrqNXh/BtVDOL+09hVRjpcp0sfBWz2M8OEz4TM4BdJN4RwNz+7W3QjEzxwh/62sP0imY=
Received: from MW3PR11MB4620.namprd11.prod.outlook.com (2603:10b6:303:54::14)
 by MW3PR11MB4683.namprd11.prod.outlook.com (2603:10b6:303:5c::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3784.11; Wed, 27 Jan
 2021 21:14:44 +0000
Received: from MW3PR11MB4620.namprd11.prod.outlook.com
 ([fe80::94eb:c915:5a57:e7bc]) by MW3PR11MB4620.namprd11.prod.outlook.com
 ([fe80::94eb:c915:5a57:e7bc%6]) with mapi id 15.20.3784.019; Wed, 27 Jan 2021
 21:14:44 +0000
From: "Almahallawy, Khaled" <khaled.almahallawy@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [PATCH] drm/i915: Disable runtime power management during
 shutdown
Thread-Index: AQHW9NjuXSPcVvkU1kGMeFNuKOP7cqo7+SqA
Date: Wed, 27 Jan 2021 21:14:44 +0000
Message-ID: <d1fa354a9e71a0b953fe94eec4116f8c3d07ad93.camel@intel.com>
References: <20210127181909.128094-1-imre.deak@intel.com>
In-Reply-To: <20210127181909.128094-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.209]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ad571f54-855b-4c68-6a94-08d8c30891ab
x-ms-traffictypediagnostic: MW3PR11MB4683:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MW3PR11MB4683427A5B57FC58389DDEF189BB9@MW3PR11MB4683.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0HJFPaVBqrghWonPC3xGkLgJHVVk4ahgbqqaiMSxs1xacF0R6Ali5Cu6urrv+VQw0A2rAATffznL/VY3J40RpmgdBfx7uOtg8zGRtcVSCFSLFf1cBY+Wh3mSpLtrJx1biXWCyN9JYuTbtqfEWNp4F8klowiJWQCPsJ8gUc3jxByNocOW7wXlAusgIuAaIRS0paQFEXnxxxw7iQ2wJAO3290PWOGkPgGkDs99gYR/6B0cBpXHpRvV93g8issNe3Liwkcjq31PTZzZYljdnNT/RCaSZj2xTTJSH3JI/AKrH67tg5ChEXmhQrkY7Baw6EiNKwYXhtkqPfOgDcOgvR0AtT3FF+E7CnY9wdRQHc1STP5FmC0Y9yaqXKX2/68WIN+Zxl+SpbewoCRcC8wBxNrJ6pZwOZd70DVSd7A04WPEuZxB4I9hVCrAVUdFSHHw9vF/iEm3oHFEL9BzZh5y3s0Rgk/R/lawvcV/Wdo3cb3lc1YpYKtvh2+keRdmM2kGAVXpO+5hwcq6+3sRzT3MJxyH7Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4620.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(396003)(366004)(376002)(39860400002)(136003)(66476007)(36756003)(83380400001)(5660300002)(6506007)(66946007)(6486002)(6636002)(8936002)(66556008)(2616005)(2906002)(478600001)(6512007)(26005)(71200400001)(186003)(86362001)(316002)(110136005)(64756008)(8676002)(66446008)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?YzRReS9uSlBtbE1aQmZYazhmRlBOMUpENEV4bjNHUituT1FrYk5vM2ZacnRS?=
 =?utf-8?B?M2VMUzk3MXdVL1ZjOE8ySURoeW0rSnl0Ujg3L0MxOFhPaURWUEdJUHZIVXg0?=
 =?utf-8?B?WUlhbmIrMVlkbzlUOUU0dHEwQ3ptdEFmRE5sUHVXRGc4Q0FhdE5TTElIT0FN?=
 =?utf-8?B?dHlNYzYzZ2dKVTZMdFgwUFVrenV4M1Q4enZKbERHRjg0djBQbFBia3ZuVFZR?=
 =?utf-8?B?aUFjTGRhWkdURVRabXV4dVUza3VVd2VUYjExd0Q3M0k4S09Yemx0RVNQQUwv?=
 =?utf-8?B?UXJ0SkRKWjEyRXJEek1IQzlVNkphVmdvUWRxV0xpMUViMkdGNFJPMUtMMEtS?=
 =?utf-8?B?NERMaTFFNFpJMitnNGQ1STZLTjBwMDB1RWF4TUovbFBONWx1ODlQenNEQ201?=
 =?utf-8?B?U3pEc3M3WlNQNXBLYjlhWSt4cWl2U1IwT0x2V1Z4Si9wRHlrSUZoZnhCcVFm?=
 =?utf-8?B?bVBOMXE4TkgvMElDWHEzRHlmWG5VVGZWeWFuNjNzRGliQWdnMjVreFE2OG8v?=
 =?utf-8?B?c3RnczRZbHZzajc0c1RtWkZ5UGhzTUUxaGU4bVQ4MzdXZFl5a3NIUWZ6VU9L?=
 =?utf-8?B?Y0FiSDhJOHBFWUROa0ZZWnpRd1NsUUk2eGR5RElFRkNzeS9kUzdBZmx0aFhy?=
 =?utf-8?B?SkE3WDRnK3o0aUVqQ2Njc0kyVmp4a2JrL0xqNU1ibDJrakdYUXZDYWJDalNW?=
 =?utf-8?B?Um13aStoY0FwaTJ0RU5xMm5mWi9YWldBemZrRVVNU0FLaXJvZHlDVGpjM3FW?=
 =?utf-8?B?UUN0VmNEUmsxTXlsYkJyOGU5RlV3UkpYOU1HMWdkbmdvNFJqZHd3c3V4aEFF?=
 =?utf-8?B?emJDd0tPelhieGJONEtJckIzeXg1eWprd1ZsTGRwemkrcGJlYVBOdUEvaDJs?=
 =?utf-8?B?bmY0eE1pZVVFT3p2bFhnRHVZREMzZ1JtK3k3cGFGZ2R2cXBDcXlWWWRXQWtX?=
 =?utf-8?B?bGErcVM3UkZHY2VaOThuY3FnRGhoTWg2NE1RbUZQOVVXNEV3WVp3RElZS2M2?=
 =?utf-8?B?Nm1UQUVYcm5wUEJ4bkptdjBGN0ZmYmQvT1VvRVdyMGlXQ09jOVpDaUU4ZVhy?=
 =?utf-8?B?NDltR242azdoVUN1ZVByU0VINk1qMHJwNnRONExJMGpXdThOUFRhM2Y2c1dB?=
 =?utf-8?B?dUZpTFNxL0pVK3pjcEpHa0p1dHZ2bXVlbUIySXFCWmRyWmlrMWhML2IrZXh1?=
 =?utf-8?B?V2NDUlhDSDJ0S05xdEdFcUZ4cDUvR0w0VWUxRnZCbnRaSyt4T0FzWW9Edkp5?=
 =?utf-8?B?RGx2bmdGZkUwckxtOUZITHhIUlNnTXBnRjV3S25adlVubnpwT3plM0RLeW10?=
 =?utf-8?B?Z0Y5dTFKNkM5Y3lQQTNOOXBLMUExaVpaZTgvN3dmWGJxOTdhQnFkaXdTeU1R?=
 =?utf-8?B?NnVzOGc2ZkxwRjlLT3EwZFVGcnhFZmlVWUo5eFJuZ0hGY1JNdDEvZ2lSakpU?=
 =?utf-8?B?VGVIcEdwSjE3MWs4VUdRYkNuVS9QUkZnZU1pMWJnPT0=?=
Content-ID: <C9EAA6AD07BA464D8A9976A14C9B072D@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4620.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ad571f54-855b-4c68-6a94-08d8c30891ab
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jan 2021 21:14:44.2566 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PlEbBAISNOMVkpFa93rlv/DUckrVWgYfEvELPSTgb+5i2nHNw4jcgkiSm0SDx0O9Wu14xHowJzCcSe1yaCGNHDbO3S0nBP/+N94Wg3PGCtg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4683
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Disable runtime power management
 during shutdown
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 2021-01-27 at 20:19 +0200, Imre Deak wrote:
> At least on some TGL platforms PUNIT wants to access some display HW
> registers, but it doesn't handle display power managment (disabling
> DC
> states as required) and so this register access will lead to a hang.
> To
> prevent this disable runtime power management for poweroff and
> reboot.
> 
> Reported-and-tested-by: Khaled Almahallawy <
> khaled.almahallawy@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_drv.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_drv.c
> b/drivers/gpu/drm/i915/i915_drv.c
> index 0037b81d991e..6f83cca8e27b 100644
> --- a/drivers/gpu/drm/i915/i915_drv.c
> +++ b/drivers/gpu/drm/i915/i915_drv.c
> @@ -1054,6 +1054,8 @@ static void intel_shutdown_encoders(struct
> drm_i915_private *dev_priv)
>  void i915_driver_shutdown(struct drm_i915_private *i915)
>  {
>  	disable_rpm_wakeref_asserts(&i915->runtime_pm);
> +	intel_runtime_pm_disable(&i915->runtime_pm);
> +	intel_power_domains_disable(i915);
>  
>  	i915_gem_suspend(i915);
>  
> @@ -1069,7 +1071,10 @@ void i915_driver_shutdown(struct
> drm_i915_private *i915)
>  	intel_suspend_encoders(i915);
>  	intel_shutdown_encoders(i915);
>  
> +	intel_power_domains_driver_remove(i915);
>  	enable_rpm_wakeref_asserts(&i915->runtime_pm);
> +
> +	intel_runtime_pm_driver_release(&i915->runtime_pm);
>  }
>  
>  static bool suspend_to_idle(struct drm_i915_private *dev_priv)

Reviewed-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
