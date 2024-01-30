Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C882842C85
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jan 2024 20:22:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C086910E8FF;
	Tue, 30 Jan 2024 19:21:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E0A2113474
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jan 2024 19:21:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706642502; x=1738178502;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=rwQhB6XMJ8D1sR7y/OKt3sO30OFCXZtWo8VOF9oJLSc=;
 b=C5aEcEf9YvmZYNfW7iqul/h/aA8OPT+o2aWjPgU+BSCsfyyG83HAS0bq
 Isv3X0hteXaML+XiKsxfNGKr4KKXh2l/Uzwsuy4zumhFhby9qWZKhHbKf
 CSHkF7BqlHL1euBnfgTjOoNUupJ3JMvHx9Zc2D3J2uFweA+cJttW/nLo8
 1bhrTMtGdsWSWq9voUuIlvJp1r5wnI4TzmMLX7TqNNx7t9ZCxlq65BT9i
 TY/FkNeP8O7jUXm3iot58gCj6gd/FZXA0cPwCeJngBDDdE+V8W6kQhMLc
 KmTO2oEsD5LqUJvjfaMH/cFzDbNzfBmN+8vk5qj3EGK0rJChE55SssnU5 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="10759138"
X-IronPort-AV: E=Sophos;i="6.05,230,1701158400"; d="scan'208";a="10759138"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2024 11:21:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,230,1701158400"; 
   d="scan'208";a="3794046"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jan 2024 11:21:41 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Jan 2024 11:21:40 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Jan 2024 11:21:39 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 30 Jan 2024 11:21:39 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 30 Jan 2024 11:21:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BYpLBdHu2yHKUR2OvVJG0fDKj3vLqYBhfizTlM0Rs8AXEs45LtTRwZlPDhcUTLAPsVM+UJ/1w84cR/A5ZeLkvXR1AGz2J3/h1X1LqPDjpULddaURR+WhL8QzpYIbQWGeWb+dcj3BhTLm8X/nLUTcqhJ1MbhZEwFhSHKN2ksyHHjJhu+wbVWADhMQhR+Wy8uf5myuxrXQxN8lPLPLl3bM005VF+g0waGfwcz9FGbzPma9vKgzJiJSX0SQhBoDQ+8Lf5dive8wEGc1nxj62roInmqfQfHsssJUwGgi0U9Vp+n5WTHASJYnWUelYQy5olKo/aP6nsI6WgqaR1jUH4dzdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QQvb/mPg/Lzkx+p9Y4nepW4ntY8jZ7WrwPLtHuiI2IU=;
 b=ULbbwolwgUE0aVNLsXb+Kvwc6Ee48Cn3wYC7AzaZuclpUEQ3nm0WTOoSzLEFFUcIwnXf5fx+ku74uKufdZLx76uU+kZygWKTEwphZOFmNJi2V6eD3O+RhjI05xF1MFfNOQpmLAWHo/Y18K4xtU7yb1bKO7fS0+nxg7WLH+EnJCBjeEsqcMh/GVJxif2wrOPWZynMYMFJci+wKB4ro5cxad++8S4ThlCGLu32ysMzkFfOe6J+f0oyZDktGWsepkLKQZlXKZGanxnsY8GOT2qH9W9zh3ac7a4oNcg+Q/lEaBmyj3e4BOSQs2pB7LvTYMNrYJ6kR934zksqvz8ivu3/YA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by CH3PR11MB8701.namprd11.prod.outlook.com (2603:10b6:610:1c8::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.34; Tue, 30 Jan
 2024 19:21:37 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::559e:7844:adc9:7793]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::559e:7844:adc9:7793%7]) with mapi id 15.20.7249.017; Tue, 30 Jan 2024
 19:21:37 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <771addf5be225e5bedd30720328d9624f1545b2e.camel@intel.com>
References: <20240124085229.1896779-1-luciano.coelho@intel.com>
 <170610253323.3679.10192544885764866080@gjsousa-mobl2>
 <771addf5be225e5bedd30720328d9624f1545b2e.camel@intel.com>
Subject: Re: [PATCH] drm/i915: limit eDP MSO pipe only for display version 20
 and below
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: "Coelho, Luciano" <luciano.coelho@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Tue, 30 Jan 2024 16:21:32 -0300
Message-ID: <170664249288.3037.13832317871439095359@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BY5PR03CA0030.namprd03.prod.outlook.com
 (2603:10b6:a03:1e0::40) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|CH3PR11MB8701:EE_
X-MS-Office365-Filtering-Correlation-Id: 169aa65e-7469-4056-338d-08dc21c8ae05
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2xcEBb2MuS/6eDuStDL36OfWMB+OxWerQFyxZlcCn9UBUz7Yds80zkB89I+a0O90t2QX0yGgrhhplnRNtX58r0HvE0i0TKflOEhJaIYkA1FOTkTOkGgz1amxrDweZ06ljZt20pwHmvttiAzbzGDc9omGt3FLCDvaqnBV+aT4aFzoOQTW/w/VRt63FS3np9jRz+KGc1/59j9cUPuXvL/qHzS82Gl3HEgdjK7tywjeU9wBHH4dNUZFOzway0yYsr6YjnEujgWmKXjedrji7VG330WLVVasL9Htwqe8Ueli/S3KD0XdtFIm/VFVLqxLKLlF8XnkeUrdRRLEyfNsIvxolheJTBBl9yAMjuCLmrg0iRmH4bUOYj5YqMno8omLlMuVI5y7KdjPsfOCik3gv7yVV+K0ct4WTsEBm0644jMeyiWB45m2tdipY/dCrg8xRH2De3y5z6BdNUZjexkqwF87g146gHdP1d2RaPxTbrGtNtOlgTAZplgjLSk8rYGTzHSkzW1AcTQK45tqr1URO3J5fIyzN/s8zLPW5xiWTwkBf2H2h3V75Po/tokVsGPmPPhP
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(39860400002)(366004)(136003)(396003)(346002)(376002)(230922051799003)(451199024)(1800799012)(64100799003)(186009)(316002)(66476007)(8936002)(66556008)(8676002)(83380400001)(478600001)(86362001)(6666004)(5660300002)(38100700002)(82960400001)(44832011)(2906002)(6486002)(6512007)(66946007)(6506007)(9686003)(26005)(33716001)(41300700001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dkRZSXd5bmlpdU9Na2FyWDh4dFFXZklXVE83dnloNHlpK0VocjcwMUEvY1pM?=
 =?utf-8?B?M2g5WGtwaXUrZTJCc1U0UDhnSVFYWnhBTERXVHNjR1ZHSFRtR0s4TW4xMXd4?=
 =?utf-8?B?WXVPY2lKSjJaZTFWbGlmMkpxVmZtRTl3K3dEZkV5R2lHSm5BNElESkVJc09L?=
 =?utf-8?B?b0dobFdFZ3dBTkM3UVkvRURXYVNRMmJhSkxDdEN2Q1BBSFdWU0FqSXIxdkNF?=
 =?utf-8?B?Q2k1R1pHeWpGcm5iVnVYWFFtdGl0QnhtRHFMMDcySjZRSzN5dUlBVVIvY0w1?=
 =?utf-8?B?QWRrcVpOUHBJU1pEUW41aEpid2Q2OXJoL3cvdStMWFEvQzVKQ2I1WEtwNGVi?=
 =?utf-8?B?akxqbWdlSlpuT2ZWcGswTURiTVBBQi9mMXhhdXcvazZXNlBCeGxEc0VvZm01?=
 =?utf-8?B?QzZvem9tc05kQTZuckovWVB4a0NjS3NQZHNBMmZpVUh1UWNkUWk4Wm9nWENn?=
 =?utf-8?B?TWNSTU95dXFHYlJxeC9Ra0Fxb3FPV1ZMeExyOTlGSkhwT21rTUJrc0g0bTlp?=
 =?utf-8?B?VCt4bmJiVmxsbWlXU0E4M1hpclcrS1loSnZiT1JUMVdoRGZMc1V0eGRGY1Rp?=
 =?utf-8?B?T2xWZU5rVFFpeklLVW1CYXVhOHVJTlk2dUJOS0NsakVBeHZId1Z6R0pxWExi?=
 =?utf-8?B?eDM4SXpoRzNvT2dWaENtU2RrM0MvZGMwdENLSmJIUW03eThhcktwZDRaVXo2?=
 =?utf-8?B?MDYwUmhQbGhHZUtIQzFEZ0RFUVdPaE1ZeVZpYUtobGFVRHloaHpwYlpNbDBa?=
 =?utf-8?B?ckV1R3g3eHdHTGFOVVdGT01XZHZIaFZqWHYxNENIWTlxZ1lkdTh0MUhjZzZ4?=
 =?utf-8?B?bE5LZlJsQkNJM0dPcTVFRjhPMlRWTEk1VjNzQndPOTlYdXJDd2NIZDJEYTF6?=
 =?utf-8?B?TlV0MzZsUUV6dFlqOUlrRDczc3lkNGlpLzUxbDZLZTJWOUREZk1YZ2ZFRFRl?=
 =?utf-8?B?RVF0VzE5VWtwc0hieW9oVEwxbWpvZ2JtNW9mTjZMY2ZmZHRyUy9VZDA1RUUw?=
 =?utf-8?B?U1hJd1dQYUlQMk5LdXROZFdMTGFFMmxHblB2Wk94K1dzR3AyMVcxYUJlK2pM?=
 =?utf-8?B?Sit1QWZwOXoveFJ2RkFORW1sOXpxUlR4Vi9KODljanB6Y2tJRWtwQWVDM1Rq?=
 =?utf-8?B?eU8zdDMyMUF1Z1dpemxrSEFoY2xJV1V5bjFEOUdHa2ZITkdFV3oybzJMa0tN?=
 =?utf-8?B?OUk3Rkc0bUlQV3JLY3cycUE1TFpSb0xZY3RlVTgvemh4K0NRWWZHaExSL090?=
 =?utf-8?B?L2NmSUNJRVJFYlJXcWd0RmVEQlBCUElJa09rTXVDZC9EaUdUeW83UURXN2FE?=
 =?utf-8?B?ak1vUzZZczNCVnRsVWVPeU9nVmhFV0N6QmlPNE10anBxWVlRSTI4T1pwaWVR?=
 =?utf-8?B?YXIvTFE5TXhDTXd6Yk05ajlyTFVBekNkeE94M20rTktpS3U1VjIxMkdqY255?=
 =?utf-8?B?U3ZkeXNPYmFkU1BNWDZYZjRSRGxSQU0yVlNwR1VWNlNTeDA4NmtuR3NsdjI2?=
 =?utf-8?B?M3pQd1czU3NsUTVkSW5rdFpwSy83UkJQM0RhcXVubnZwVGY2cWZxeHIrTk9s?=
 =?utf-8?B?d1VKUHBjMEc3clV0MVN5WWNMSW1wTExKV0ZNb1BYRFlTUTFWVVhNOUk3YXBF?=
 =?utf-8?B?Wm1TUmJOanU2Q0hxM3liWjVpVHhBcDEwRVJkaDgvRUFaV1kySm0xZEUvbXdq?=
 =?utf-8?B?WU01YVNCanJGdTU5WjVxTlpvUURpQWsrS0ZXcTFUWDJkOHBmVktXc25nSnQ2?=
 =?utf-8?B?WGYvYlduWThvTmFDK2NmN1BWSnh6WWs5M3JHUktRUzkyQ21XQzdydzE5Zkhz?=
 =?utf-8?B?T2NLZ2kxRDNZVWtNZkh5ZkxNN2tHeHgzUUFKK1orSTNhZjNwNm5KUHpkMUdL?=
 =?utf-8?B?dUN4UmpXZHpTSnpzY3lJK1V5emVsV0htOENTVE4wUnJUY3BBYnRhWlBRTGlm?=
 =?utf-8?B?ZEV3d3E4UEw3R3JsVGt1WmZDa2Ezb1BKUm9OSDNCS2NsMTZCWlVkWi9uZGQy?=
 =?utf-8?B?bDgxRk1NSmdQU0FocCtuV2dNaUZlVDBCZ0NXSTZONnRadTAvOXFxS3lYWnM0?=
 =?utf-8?B?SFdTYW92QU9IUjJJelVjR0pWRjExamZUMHlnNTluOWswbEJSY01CQTd2S1NY?=
 =?utf-8?B?UGlESlZCdzU4eUs3S3lkcU0rdGdGZUJDT3g5ZXBZeVZrUm9rNXkyMStCS3Fk?=
 =?utf-8?B?Tnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 169aa65e-7469-4056-338d-08dc21c8ae05
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2024 19:21:37.7584 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MXugxDvHWXc49lGfRfghldn4pRb0q3uexYrzF4gSb04uFC9exa3iQ2+YPe+dbfPrKqzlc21DMvdRyOiGvHFBqA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8701
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

Quoting Coelho, Luciano (2024-01-26 06:24:29-03:00)
>On Wed, 2024-01-24 at 10:22 -0300, Gustavo Sousa wrote:
>> Hi, Luca!
>
>Hi Gustavo!
>
>
>> Quoting Luca Coelho (2024-01-24 05:52:29-03:00)
>> > The pipes that can be used for eDP MSO are limited to pipe A (and
>> > sometimes also pipe B) only for display version 20 and below.
>> >=20
>> > Modify the function that returns the pipe mask for eDP MSO so that
>> > these limitations only apply to version 20 and below, enabling all
>> > pipes otherwise.
>> >=20
>> > Bspec: 68923
>> > Cc: Jani Nikula <jani.nikula@intel.com>
>> > Cc: James Ausmus <james.ausmus@intel.com>
>> > Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
>> > ---
>> > drivers/gpu/drm/i915/display/intel_ddi.c | 9 +++++++--
>> > 1 file changed, 7 insertions(+), 2 deletions(-)
>> >=20
>> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/dr=
m/i915/display/intel_ddi.c
>> > index 922194b957be..5c99ae148213 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>> > @@ -2336,13 +2336,18 @@ static void intel_ddi_power_up_lanes(struct in=
tel_encoder *encoder,
>> >         }
>> > }
>> >=20
>> > -/* Splitter enable for eDP MSO is limited to certain pipes. */
>> > +/*
>> > + * Splitter enable for eDP MSO is limited to certain pipes, on certai=
n
>> > + * platforms.
>> > + */
>> > static u8 intel_ddi_splitter_pipe_mask(struct drm_i915_private *i915)
>> > {
>> >         if (IS_ALDERLAKE_P(i915))
>>=20
>> Looks like Xe_LPD+ (MTL's display) and Xe2_LPD (LNL's display) both supp=
ort both
>> pipes A and B. For Xe_LPD+ we have that info in BSpec 55473 and for Xe2_=
LPD, in
>> BSpec 68923. So, I think we could:
>>=20
>>   a. OR the condition above with IS_DISPLAY_IP_RANGE(i915, IP_VER(14, 0)=
,
>>      IP_VER(20, 0)), and
>>   b. And make the "else if" below be about display versions below 14.
>
>Okay, but I guess we have never tested this with MTL and LNL, so can we
>be sure we won't break anything?

That's a good point. Not sure if we have the required CI infra to verify th=
is.

--
Gustavo Sousa

>
>In any case, we have bspecs for these, so I'll make the change as you
>suggested.
>
>> With those additions,
>>=20
>> Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
>
>Thanks!
>
>--
>Cheers,
>Luca.
