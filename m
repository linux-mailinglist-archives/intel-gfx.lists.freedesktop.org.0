Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2233D7A8D9C
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Sep 2023 22:13:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8909910E021;
	Wed, 20 Sep 2023 20:13:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 328E010E021
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Sep 2023 20:13:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695240827; x=1726776827;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=4Jw6gnpAyg5Y2lC+q2MZuHnpin5BeFAwTHBxttS5kMQ=;
 b=QyBFueerz3aV7ZRB53O4PQ/qD9CugNMZg3T9cbPVh05TkaTlT8Iul3+5
 26PSKMyTQeXuYkwpQXj/ra4F/1xYqkRAPTouq3zs4Chbm5gkvh6l3VXxv
 dpepRMXahoL+QNnW8ykL/lJmGnxtrlKHBsTA+P+35AY6/QoV2HPmwA/q9
 65KMdcgVPiWoYPd68u4PkZ5byZ/OybJLp7m7VeErco5dz2wqGy4MuXo+o
 GbEhWC/B2yOcfRO7n0kDDIHlQ6dpcEmQEh++yQbmYvArVERuF04gcGj3t
 6vphzZ+UfKufvKrk5lgK4Zvd3jMQCu6OhRQ441UWICQw2UC1TzGlWMGL+ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="359712637"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="359712637"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 13:13:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="696459939"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="696459939"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Sep 2023 13:13:46 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 20 Sep 2023 13:13:45 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 20 Sep 2023 13:13:45 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 20 Sep 2023 13:13:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Rz3TzwfoIfkfpw7prRbqaccvQ28r41r3GVZ0bPfIxB4B7ykXziIJdq0tC6fTceWrZlc7jLk2CunaykA04sSfwVfXJnHmmX2oNf1zDZMWyDWw2dnMfSO2MeVsW0870YTL0s2O3Xt2SoSvQx+Ve7NlR5JFnnJcS325/XCm7w73uSNoRPXn/FR9Nk5DQ/jY8Wzt340De7uegwuMbKwmT4wiQ8LeLQzJ2GRLL/8wJoYDa31CGgE1VBSi06IAISZ3u7s/6V/CUGhogYaTbN6btLIWmXXLg+b/G1G2oFmFBAx1Am1dvLm6vOeejQExDKUilT39nMQT9MEJn0CSZDfWDqfWbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zKHIVENIp0NA18aAZ+7cCoSkpi3jdfZFi5v4stKqdS0=;
 b=Kb6xExrXG8Mz1nzVzJktfwrm8Y510H3AZwKdc3hFGm8q8LWHT89lEOwgVb+C04Rj27jldi/cR0Ptp2Z8N7ZIMEutZn4OHeYvj3RTvZUhcjG0NKK++tQ0yrxjudAG0PAewzG+IP4GKoAQAmWTZ5W9bBMDdXMOYDrwecOhz5ZZjr7+gLc4tR0U3+Ma9xJDlgag6Nm3kPNvV5nnIa0pbS/Z98ZsuvAxjTb6seYINC+nOKaUExRTWJB0SPT/TPiTKztpwQPUiFziZUWGjDJw/+01w5A+SuIcTTSTOOMf4KNs9y3TxX6F4iqU+cCMMwVCQd0qF/CpUVjgQZJKdb0YwaWiMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by SN7PR11MB7417.namprd11.prod.outlook.com (2603:10b6:806:345::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.26; Wed, 20 Sep
 2023 20:13:42 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d89f:e7e6:dbb3:3ddf]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d89f:e7e6:dbb3:3ddf%6]) with mapi id 15.20.6813.018; Wed, 20 Sep 2023
 20:13:42 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <ZQtPR3XtOl3WWW9Q@intel.com>
References: <20230920195351.59421-2-gustavo.sousa@intel.com>
 <ZQtPR3XtOl3WWW9Q@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Ville =?utf-8?b?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Wed, 20 Sep 2023 17:13:36 -0300
Message-ID: <169524081664.7665.4045864066370477019@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BYAPR05CA0084.namprd05.prod.outlook.com
 (2603:10b6:a03:e0::25) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|SN7PR11MB7417:EE_
X-MS-Office365-Filtering-Correlation-Id: 7b611aef-cecf-4681-9191-08dbba1615ea
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: W5Jesrz0Rp414lk2DXRJamjKZi0LfbkC0sfmWOElYjMEilG3D+eC5ZSj9c4K75/oo6/LEpw35+f4qM73TSF+vXs++oGNeQyQxHkrioZT/5Xnm/b+aG1oVxabHsxfd+MlomjfdL2sK2Ji0znQnsmHIXUwS3zD4PncVYDjpnIyKW3OdQf0CoOxb4yXMxZBNHIhj8ddSS593JHzAPXjOzLZs3N5weObPk6jDfvKIeqyXF/2V861/j/JnqPOo5OQm34DPVtdvo1dUoTRrmVKPPNVo3+dOt/BWN2mVI7yKrbAxpKkQM3bMbHiQ/foyaXTqfdY6HGYr1at79Z5ADv16EAgXiaVkcM8X9PiQroMYg7M597Wt3QKeRRyhAOKTeK54lKlhzSzN4fdNURmJ0DOwYs2u4C1drP09VfFYXzkJZbaEH712LwnicoVBrsHVotu9YLRzzLF/GrVfWF+swYQV892NjH+ODaH4xrH8TfGJUXTaKe7FMpUzsrMSHus5OFL5ajSuhURXZ4oHpR7FxNjm+otu4mXcRzrl19Z4M6q6bcSkSlGOjpiuw72U4YULBSg+Akh
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(39860400002)(376002)(346002)(396003)(136003)(366004)(1800799009)(451199024)(186009)(6506007)(6486002)(6666004)(478600001)(82960400001)(86362001)(38100700002)(4326008)(66574015)(8936002)(2906002)(5660300002)(26005)(6512007)(83380400001)(9686003)(6916009)(8676002)(41300700001)(66476007)(44832011)(316002)(66946007)(66556008)(33716001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TW0rMzFrTHJDc1c3VjQ5NFN4Q2tzdHZ1dVNGUUZRdTFxUFVKSzd5WTVjNzY4?=
 =?utf-8?B?ZHZrN1ZiSnhFRVRVR2NpM0dRKzZlMERIT0NiNEpJVnVwK1hFZkhtZDdOUWF5?=
 =?utf-8?B?bW9OYi9YOWw3OW9Sc0VwUWhzOHRCZU9wWWM0UWM2SnU4TytKYVZyTDIxSUtM?=
 =?utf-8?B?Wm1JK0FaWE81VnVvc3kzNmZPZXY4SFQ5alpBd1prUFBoTjVwTVJESlZkdHIy?=
 =?utf-8?B?Zi9ZSUtyZlNVeEtsN2hsUHZVRXBER083Qk0zeXIwMGlkVUxjYWNSc05ZYVZo?=
 =?utf-8?B?dURUcGZCYjhFTzVRUUtlQ0Q2NHRlMU4rSXJiUUd3UXhxcGE3Y3BiMWZieUVK?=
 =?utf-8?B?RnUwY01WcjBEVFBmd1N1NThRR01rWVhlL20vUStmQTZ0R2hMeWNjUzZROHFT?=
 =?utf-8?B?ek1SbytGYlF2cWFRTEE3T1FHQ2pRRVo5WkZTQjFod1V2VktYd2JIKzFaaXNU?=
 =?utf-8?B?WjNsZDdyZ1dlbDNLUGxSazVxbHZIS2UwUS9BSTBFZ3k2VzV5UUE1VmVXUlRG?=
 =?utf-8?B?b0taMjNNaDQ4U2pDdDM1UjVYTE9sMXVGYnRiUXFTanRoR2tjcXNGYU9vQzRK?=
 =?utf-8?B?eDB3ZXk3a1pZK3FlV1pGYXAvWWp0UHoxbmRaRjFTWjZ2TEtYYkJyWi9oRk12?=
 =?utf-8?B?bmRBU2wzQzFuT1JONlNRa3Irb2hZWExIWWhoVEFIMTNBcFNLdjgxaW5adDdR?=
 =?utf-8?B?cXZaNk50RFJzc3FnckdqK1c5emdYTndDeE9zaTkwMTdia25iaUNFZVhwVnpV?=
 =?utf-8?B?TVdrQjJTQ1A1dERuNnBYTTJQc25kZGhreWQ0L2loZ0lack1wQ21BQ2hEQXVV?=
 =?utf-8?B?dkRXc3orR0tHYnZiekJCdzNzcUZETE9XeG5EWXlLWlQxTnU0alFYU00wL1lo?=
 =?utf-8?B?ZVNHR0VNR2R3UnloK3FISTllVUJVVHFYOGRSWVVqN0MrU3lGUGpQczd5cmtj?=
 =?utf-8?B?ZVkrYVFFOVVqNUUwVklGS0I2aTVKSlBEMTh6SU83ckV4Qi9JZ0R3Mko1SHRq?=
 =?utf-8?B?Skpua3JrQlRUYXNSclEvSURUSHYvYWh1S00rS0tUM21EMUhITUZpUktiT1Bo?=
 =?utf-8?B?ZlArUENVVkwzL3dlS0RVWFVmU001eFg4TW9aYW82VTVGQ2hacCtHbzk4NFRj?=
 =?utf-8?B?Mm9FYlc1aUsyZ0tJNUlsMmpLeDhMeHNvNGZiL3phS2hRNVFkVUg1L0hZTyts?=
 =?utf-8?B?SVJBa29ENjJHaTBCdzJFazFaNEtaLzZhTiszai9obGdkVXkrVzk4TWdaK25W?=
 =?utf-8?B?b2Q0RDFTTDhjcFdpTzBBOUE2SGwwSEpjQk9lMkl0VlVGaHExbWY1cHgrakts?=
 =?utf-8?B?am5SZWU5K1JjSmxUYytsVm9PMGtPbEtmbUoxWGFWYXliL0RtckxLMHVSSHl3?=
 =?utf-8?B?YUZnRjZnWDMvQWpkQ21FV2E5OEV4UmFyQm5iL21PMEpBSFVTWnViSnYyRVF5?=
 =?utf-8?B?ekNIOU0xREJlZDFZR2pBSlF0eHh5V0ZZU0lEdGtYSzFmVjQ4M3FtYXZXMkN4?=
 =?utf-8?B?TG9sOVpjWks0dUluOFFmU2kwSjNxOFhhRjM3TU5lNGpmRURYcnUzNGhycm92?=
 =?utf-8?B?WVRCMlpzSGZxSUk1QllaUktIWU94TG1jVWJ5bmV1SU1ScXY4Y2NMbUhyc3pE?=
 =?utf-8?B?QzEwTlc4dVljK1FMSmR5TzBKY0pNUGxVVldsV3Y0SzNvcXJUYmsvMU8waHNs?=
 =?utf-8?B?RVRWNHZQMHhyelZ6aXJLS3k1dU15dE1NWlE5eHkyR1dLcFJ0UmNrZGQ5UXhh?=
 =?utf-8?B?RFZoUHlIZXVUZUQ3bXQxeERWZ2t1ejJWVVMzUVlUYml6NjE4Q3F3dlBGUzdt?=
 =?utf-8?B?QWVoeXVZL0Q3Q2VXUU50MytoL3UxOUdDdm1ScE9CKzVkbU1FdUtFeW16NlA5?=
 =?utf-8?B?a3NLSnJHVDZjcCtuT2ZRZUtCM2NNQ3A3OTlTVklRSHBLcUZFSnhSZUJPTTNH?=
 =?utf-8?B?bzlhSW1xdVVkeDJsNEkyMW9NQjVnR3NsV2t5MGxXRnBYQkwxRnh6YjNqWm5v?=
 =?utf-8?B?ZmZPZWtrUXB0TW1qeU0vckUyQWx5cmdnS212QVk4ZkprdmVLTHM5RVhVQkZs?=
 =?utf-8?B?bTlZc1BjUGt4Q1pvZ2NWanZwWUNVSC9zV0VMUnNVcFlSWkgzWVpRd1ozUzJx?=
 =?utf-8?B?OWxZd3lwTGtqbGIwd0ZZQnNqTTVqU1VvcldYR0U2b01PaTJ2dmorTWtqKzdP?=
 =?utf-8?B?RlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b611aef-cecf-4681-9191-08dbba1615ea
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Sep 2023 20:13:42.4307 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: f+5C1cbbmWoypd6yspwYhIdEt3L4P1KXwrPpAMJvPbiEHI84kUQG8es1pNsca8Nx9w1Zby4SCHFNCXwCOW2I7Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7417
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

Quoting Ville Syrj=C3=A4l=C3=A4 (2023-09-20 17:00:07-03:00)
>On Wed, Sep 20, 2023 at 04:53:52PM -0300, Gustavo Sousa wrote:
>> Starting with Xe_LP+, GFX_MSTR_IRQ contains status bits that have W1C
>> behavior. If we do not properly reset them, we would miss delivery of
>> interrupts if a pending bit is set when enabling IRQs.
>>=20
>> As an example, the display part of our probe routine contains paths
>> where we wait for vblank interrupts. If a display interrupt was already
>> pending when enabling IRQs, we would time out waiting for the vblank.
>>=20
>> Avoid the potential issue by clearing GFX_MSTR_IRQ as part of the IRQ
>> reset.
>>=20
>> v2:
>>   - Move logic from gen11_gt_irq_reset() to dg1_irq_reset(). (Matt)
>>=20
>> BSpec: 50875, 54028
>> Cc: Matt Roper <matthew.d.roper@intel.com>
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/i915_irq.c | 2 ++
>>  1 file changed, 2 insertions(+)
>>=20
>> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915=
_irq.c
>> index 1bfcfbe6e30b..8130f043693b 100644
>> --- a/drivers/gpu/drm/i915/i915_irq.c
>> +++ b/drivers/gpu/drm/i915/i915_irq.c
>> @@ -751,6 +751,8 @@ static void dg1_irq_reset(struct drm_i915_private *d=
ev_priv)
>> =20
>>          GEN3_IRQ_RESET(uncore, GEN11_GU_MISC_);
>>          GEN3_IRQ_RESET(uncore, GEN8_PCU_);
>> +
>> +        intel_uncore_write(uncore, GEN11_GFX_MSTR_IRQ, ~0);
>
>Did you confirm that it's not double buffered?

Ah, sorry... I forgot to mention on the original thread where you asked:

  - BSpec 50875 and 66434 (for Xe2) does not say that GFX_MSTR_IRQ is
    double buffered. In fact they mention the fact that display IIR
    registers are double buffered and require multiple writes to fully
    clear, but does not say the same about GFX_MSTR_IRQ.

  - Also, BSpec 54028 does not mention that the register is double
    buffered.

Based on the above, I'm assuming it is not double buffered.

Should I check other sources? Is there some sort of runtime check that
can be done?

--
Gustavo Sousa

>
>>  }
>> =20
>>  static void cherryview_irq_reset(struct drm_i915_private *dev_priv)
>> --=20
>> 2.42.0
>
>--=20
>Ville Syrj=C3=A4l=C3=A4
>Intel
