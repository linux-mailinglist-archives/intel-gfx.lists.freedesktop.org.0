Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0491254028
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Aug 2020 10:05:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87B486E41B;
	Thu, 27 Aug 2020 08:05:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8897D6E41B
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Aug 2020 08:05:06 +0000 (UTC)
IronPort-SDR: Tu81Bzho5hC5+nUoyEu6+7YZ34uMo3aIIa45ioIFsh0Xwvy9mcZbyuQhvWMTke3xIWtKHDKInI
 MsA6icOkD1Pg==
X-IronPort-AV: E=McAfee;i="6000,8403,9725"; a="144118334"
X-IronPort-AV: E=Sophos;i="5.76,359,1592895600"; d="scan'208";a="144118334"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2020 01:05:05 -0700
IronPort-SDR: W6jxHyx7GkDi5thxRIcNSHD6n9haBHSuYJvh1swIBsx9wAN/f/eERFnfusihnyL1tviINm7NNp
 /jP5sDvnLBBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,359,1592895600"; d="scan'208";a="313153105"
Received: from orsmsx601-2.jf.intel.com (HELO ORSMSX601.amr.corp.intel.com)
 ([10.22.229.81])
 by orsmga002.jf.intel.com with ESMTP; 27 Aug 2020 01:05:05 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 27 Aug 2020 01:05:01 -0700
Received: from orsmsx116.amr.corp.intel.com (10.22.240.14) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 27 Aug 2020 01:05:01 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX116.amr.corp.intel.com (10.22.240.14) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 27 Aug 2020 01:05:01 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.105)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Thu, 27 Aug 2020 01:05:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fqrbWv+7g1eEhBkPbCFq0kx015LEQkiaozhGYfLkyqr8tqX0pLNTMEZk/5BRPDlKGwMW18ma4Y5wxe+rfi7tLPoRiiR6/sy6kYRQFCWOCcoXG7tkng5ar8f/LSL7Abr3gygKVXTg7Ufo7Kuub4Nw3UKmIhyfotOJRT01dCIN90sq18lpJWTcKPaA2gA1PCHYCSGAJVThMzQXPRY3u2NXGEW8eCpPH+nltQNvMhDgdpcv4b19kSMWtrx9nWoACnNFETiolAbgDvvq5WZ+BChjWJD8aFYFtXulhSzUt4PZH5NpxLoJLt9UfW2blsPiGLZi1p0KFhwLxVvCSciB3OD3Ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kzghqqyX9/nwfhISSTwd8lZSx1KKdGQn71H++AgmxLc=;
 b=ixYBwEyYNaLzsuuK57vsW6L1dSoPCnTSTxaBq26BMkgyTUHqYDKAD4KJPuBvicsZJ7TAK+tquuaMg8gINVHb4VWFW1AEOVPsPPb9Mep25kHuh5nve91hNpPpu0dJSLxJO+ii4VXlKss4NtsG1MpT67idrQWGRLTiq/Dy4zSHdX/nffMag/N9de03aqN+a1WJ5FzU29R0uH7l43qrlhf1e62Bo4mUD9mnF49rTMFJZOjCiTkw3mfwDPKpZtpNHisEkhzPFn8PomBhJI+PmGvzniQGV8Bhqqbs9W+LwMEA3r8tX0OL7brHJoEZD3VBmPdTmrubjndmWRpM0nV8C6sSjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kzghqqyX9/nwfhISSTwd8lZSx1KKdGQn71H++AgmxLc=;
 b=QSmfdaMGJUMVzuufbBpJ2P3fEzllat3xNBGkMNSCBSS7gRXQS8eGuzFLN37E5iY4NuI12GBmjFbOxP5oGTi5KRsUGYPI8yVJp8d0KqC+wFBAP3/4KnymE08ZFMC8fRZn2v6Nuea0p4WQaZGVjwsxzWoysMBvXtGbHpOsgezRJWI=
Received: from BL0PR11MB2993.namprd11.prod.outlook.com (2603:10b6:208:75::28)
 by MN2PR11MB4205.namprd11.prod.outlook.com (2603:10b6:208:192::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3305.26; Thu, 27 Aug
 2020 08:04:59 +0000
Received: from BL0PR11MB2993.namprd11.prod.outlook.com
 ([fe80::d187:3cc9:b83b:8c]) by BL0PR11MB2993.namprd11.prod.outlook.com
 ([fe80::d187:3cc9:b83b:8c%7]) with mapi id 15.20.3305.032; Thu, 27 Aug 2020
 08:04:59 +0000
From: "Kaparthi, SowmyaX" <sowmyax.kaparthi@intel.com>
To: "Landwerlin, Lionel G" <lionel.g.landwerlin@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Nerlige
 Ramappa, Umesh" <umesh.nerlige.ramappa@intel.com>
Thread-Topic: [i-g-t] Fixing the latency of hrtimer
Thread-Index: AQHWfEUJmxssEVZdvUuwAqYJplmI0KlLlMoAgAABLKA=
Date: Thu, 27 Aug 2020 08:04:59 +0000
Message-ID: <BL0PR11MB29932A74AC995B623E00F0E29B550@BL0PR11MB2993.namprd11.prod.outlook.com>
References: <20200827073807.2965-1-sowmyax.kaparthi@intel.com>
 <ad028d55-996e-e4c2-2cb9-f68b0dc7a761@intel.com>
In-Reply-To: <ad028d55-996e-e4c2-2cb9-f68b0dc7a761@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [115.98.221.224]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 76fe9b44-ea1c-4d72-6be0-08d84a5fe51b
x-ms-traffictypediagnostic: MN2PR11MB4205:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB4205BD738CF6B70E336105959B550@MN2PR11MB4205.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MVd8WakYc4sl3KXp/K66TIIsoJ4+CodkA5gHVl+bjeRkN5Whil3DyJtw12K3ZAlOiM9vTDSUaT2RIduNQx+ASpoYhz6ztq8tWDg5SeRlNOt02VmZQL36DCmR7GBKHRyfZ3imgIv05oxUqdXiF8VVhFkob2kb7JEZWwUvtmfNyiYMW+p43WkWHYQfRks5wOQvZpRypYGamTFuptLjQ1e2/YOE2vty5lq3JN0P6MOmQNDujWdx2/FqxERGlUgBSWeE1joPVGH8qzxoMemPYC7PsQbqYaxHG4CtgdF5YlBi97gUO99YC2iNYkkeIJ7X+ElYRp26rJCaykChLwei09Oopg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB2993.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(346002)(366004)(136003)(39860400002)(396003)(9686003)(186003)(6636002)(8936002)(5660300002)(83380400001)(64756008)(52536014)(66446008)(55016002)(66476007)(66946007)(2906002)(71200400001)(478600001)(26005)(76116006)(66556008)(6506007)(53546011)(86362001)(316002)(8676002)(33656002)(7696005)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: De5SKUBpXMbHWpiO04VE6vWUu4cEyQQG8z5mnUlzjI6I8CJeG4zNfEL0ZMuy9fhwrQ6BQqI3QJBhXEnpJR6dC3SLBQXO8GuuCoT+l1IO+IWdHhmwEBn9RE3Ued89R90srUFn+JR+l0YnwPMw66UQn0GZOmXxLpTCucnuEGGt9CrCWRrnIObshEMk/rLwsqwJKtDSAT4oMrooMZqnPJFX7Er/KVamEckhBEjlb9BnWmHaFD8FzJuuhO/1kHo5aY+FVc1ClnYsO6v9hQD6XCdHtUPnryiqUX91wWQv2J3JziVfpIAABpWaPy5e9QFfZ3WoftP30sPn6Pu7mkaa6cZ9xUBo7qk2LX7cZ4sI24rbP//QVys5SIgetLU5eHRfVEVmOuw2NCmFg8l5us0A5MViMjLuPthwYA8Y7DpB+vNpY4NG1QukcM/NUOO2ky4qpRVCO2RwOhfFfTTkfQP2snqSmKlxhBFHS/Y2rlMFKtcLmWekCAk1m9vJjKtLMwNV4c0QB5jm8cwFRURni5HYbc8FJ1pI0t7Mx1aUiwvb1ZGjeIJHijlrQL4AUwYzgc1qzplv+m2jCQ2YSxCgCpmLSviasNj384MlRIgKcvEmQvPXPkE93ljjm6xO+xs1oBCTXSTcFFrXD1kdtjR4jRO6Kd8pdw==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB2993.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 76fe9b44-ea1c-4d72-6be0-08d84a5fe51b
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Aug 2020 08:04:59.6647 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RM5oHoPix1k/tE5oq7q8TZLi+hxTdQEJgdlmUALIK4z7OdYiS5yXFwV2gmcqe16+ZnYUpgdoMRvyg8kFEnkQbkea631Vh5dYSS6vYc3xG8s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4205
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [i-g-t] Fixing the latency of hrtimer
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

Hi Lionel,

Thanks for your suggestions. I will send the patch to igt-dev@lists.freedesktop.org.

This patch is regarding the git lab issue #1542. Based on the ftrace, a 2ms hrtimer results in around 5000 calls to read (because test duration is 10s). Based on average read times (30us), the total kernel_ns is larger than the value being compared and this fix is to allow user to have a larger timer value than the default 5ms to avoid waking up too frequently.

Thanks and Regards
Sowmya

-----Original Message-----
From: Landwerlin, Lionel G <lionel.g.landwerlin@intel.com> 
Sent: 27 August 2020 13:20
To: Kaparthi, SowmyaX <sowmyax.kaparthi@intel.com>; intel-gfx@lists.freedesktop.org; Nerlige Ramappa, Umesh <umesh.nerlige.ramappa@intel.com>
Subject: Re: [i-g-t] Fixing the latency of hrtimer

Hi Sowmya,

Thanks for the patch. If you could send it to the igt-dev@lists.freedesktop.org list instead, this is where the IGT patches go.

Could you refresh my memory as to what this is fixing?
It sounds like this is just adjusting a value to match more common settings.

Cheers,

-Lionel

On 27/08/2020 10:38, Sowmya Kaparthi wrote:
> The blocking/polling parameterized tests were introduced to test 
> different hrtimer configurations.These tests check how many times the 
> process wakes up to read the reports with different hrtimer values (= 
> duration of test / hrtimer value). A user is more likely to choose a 
> larger hrtimer value than the default 5ms to avoid wake up too frequently.
>
> Cc: Landwerlin, Lionel G <lionel.g.landwerlin@intel.com>
> Signed-off-by: Sowmya Kaparthi <sowmyax.kaparthi@intel.com>
> ---
>   tests/i915/perf.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/tests/i915/perf.c b/tests/i915/perf.c index 
> a894fd38..5fd1193f 100644
> --- a/tests/i915/perf.c
> +++ b/tests/i915/perf.c
> @@ -4995,7 +4995,7 @@ igt_main
>   			      40 * 1000 * 1000 /* default 40ms hrtimer */);
>   		test_blocking(500 * 1000 /* 500us oa period */,
>   			      true /* set_kernel_hrtimer */,
> -			      2 * 1000 * 1000 /* default 2ms hrtimer */);
> +			      10 * 1000 * 1000 /* default 10ms hrtimer */);
>   	}
>   
>   	igt_describe("Test polled read with default hrtimer frequency"); @@ 
> -5014,7 +5014,7 @@ igt_main
>   			     40 * 1000 * 1000 /* default 40ms hrtimer */);
>   		test_polling(500 * 1000 /* 500us oa period */,
>   			     true /* set_kernel_hrtimer */,
> -			     2 * 1000 * 1000 /* default 2ms hrtimer */);
> +			     10 * 1000 * 1000 /* default 10ms hrtimer */);
>   	}
>   
>   	igt_describe("Test polled read with buffer size smaller than 
> available data");


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
