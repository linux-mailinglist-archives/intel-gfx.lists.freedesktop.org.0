Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D6EFA727ABC
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jun 2023 11:04:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52DFB10E0A8;
	Thu,  8 Jun 2023 09:04:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 033DB10E0A8
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jun 2023 09:04:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686215069; x=1717751069;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=C/hH5wXtvMeyv2w2QJcWkuc9myZj5GiLR2pbg5ODI8A=;
 b=XJSMv48h5j6Bcdws7TtFmjlleE+QdXfHCrFfNuAd9c0QeKFFoNqCY3n9
 YX2oKKuykxKd6acXv7hs9N/Hol4VtYpj0N51Psirgl5JDgQf+xdngiTBC
 UjXmYhZSDwhFh863QF8oNawuZQtaHttfN4ZwfsufNXuRWmGTY1hwdYQ9U
 45azGhIdQpyPh39kPUTbVWFTwmvgVDMD6r5oHA4kKCL1N3IBFfE3HcgB0
 tZOpOHHLk2fLwqIqIp8B914AVE6hDp94GHCw+HXU0hJs7l++/5MbKiiVo
 6rblLFQijhF0u2hZhwDzJD38TWjVZ6SOX8CG7INiSa/EIktMosPzHDol1 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="354743836"
X-IronPort-AV: E=Sophos;i="6.00,226,1681196400"; d="scan'208";a="354743836"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 02:04:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="713041369"
X-IronPort-AV: E=Sophos;i="6.00,226,1681196400"; d="scan'208";a="713041369"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP; 08 Jun 2023 02:04:26 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 8 Jun 2023 02:04:26 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 8 Jun 2023 02:04:25 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 8 Jun 2023 02:04:25 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 8 Jun 2023 02:04:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TjIV46TDUoXKXgdUmcuT+JzwtO6wCbU+l8qZhZEedgG6Y6ONDUYiJht0WF1Xx44t0Cm0yzRKABzYyaWWq7W5S/46mD9VHhnlfLTHOGmEkwL/q8dNjD/oNB85WWIpTnWk2EFgmtC8271UrpB4vzgyzrudF3Z8ioFSEDDvQASJIOCo62I75ieh1ADloDm02MyCdDf4w4v8YNKHLg1nxpuYHHnJSp5+Lwieit15e77j5HX79JmiPZYxUw7mBe+A9ahn+Qv1yvaQkfJuwgiPbvz+DpVUvB6V17uatbipPViSzxH1ffPnYyrRVnlmMZ9eHPfLNMXqPBSemJMAmX9IglFgOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C/hH5wXtvMeyv2w2QJcWkuc9myZj5GiLR2pbg5ODI8A=;
 b=gqV3VIswweqz/ocXxgjGDnS2kGWdQ/o8FKU3mBHUWXLtkZzTZnv3qcAb3yNxSaTBii0HbZ9IC6Opx8Be6UmICyV5SpTfYEf2MRN0wwcRQumhmX3S9WemD8GNTdO4+vyh2Umy54OGJJVLC4mmf3VkpYWZN2CcFkPWm38wpsPJ0VOByXpSALjSV10iAXarT3kZsjoJRZ+8zMN734twgX0SGRcgTlX/eu8N2Qez9p+BCRODjarNuPILLyM2gJitW/8zyiVkC0M5APLjgWm5rxzaNABefhjPMf9P0f1s9fkog3gvmvxogCPOAz9NL1iLXWvo8e1BbYs6FztV+SGPQLUBuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5549.namprd11.prod.outlook.com (2603:10b6:5:388::7) by
 DS7PR11MB5965.namprd11.prod.outlook.com (2603:10b6:8:70::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6455.33; Thu, 8 Jun 2023 09:04:23 +0000
Received: from DM4PR11MB5549.namprd11.prod.outlook.com
 ([fe80::2168:21bf:526a:8caf]) by DM4PR11MB5549.namprd11.prod.outlook.com
 ([fe80::2168:21bf:526a:8caf%4]) with mapi id 15.20.6455.030; Thu, 8 Jun 2023
 09:04:23 +0000
From: "Wang, Zhi A" <zhi.a.wang@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, Zhi Wang
 <zhi.wang.linux@gmail.com>
Thread-Topic: =?utf-8?B?W0ludGVsLWdmeF0gIOKclyBGaS5DSS5DSEVDS1BBVENIOiB3YXJuaW5nIGZv?=
 =?utf-8?B?ciBkcm0vaTkxNS9ndnQ6IHJlbW92ZSB1bnVzZWQgdmFyaWFibGUgZ21hX2Jv?=
 =?utf-8?Q?ttom_in_command_parser_(rev2)?=
Thread-Index: AQHZlXQpWr8YB8+llkq2+hZrVJlYDq98SxoAgARMI7CAAA1FAIAAAJEQ
Date: Thu, 8 Jun 2023 09:04:23 +0000
Message-ID: <DM4PR11MB554969DD17FCBC368DEA627DCA50A@DM4PR11MB5549.namprd11.prod.outlook.com>
References: <20230531020411.18987-1-zhi.a.wang@intel.com>
 <168555222135.17615.4107362582795659089@emeril.freedesktop.org>
 <87h6rpdcfx.fsf@intel.com> <87wn0iase9.fsf@intel.com>
 <DM4PR11MB554984018E367E6291C67DD7CA50A@DM4PR11MB5549.namprd11.prod.outlook.com>
 <87wn0es4zn.fsf@intel.com>
In-Reply-To: <87wn0es4zn.fsf@intel.com>
Accept-Language: en-FI, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5549:EE_|DS7PR11MB5965:EE_
x-ms-office365-filtering-correlation-id: 02610259-f450-4c0c-4ca4-08db67ff5a93
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BR0a0zMRQpr0ouo7enrRdfPUjjx1FgFG1DZY5UMAB+0uXZ8HSpxPDh+PqoOVjdm3kBVkg/XLz9S/xabLFzmlUt8u7nCcmcnpraz+qI6wDJH/hNKb3vnHbQi+q4XN2mc7uSrrokbcOm9TA1e3i8VrAl5BxYyt4KlUeiRAinMdD1R43ZW4x01nC9P5i5LN69QbZxIwZvyl8uc6QrElNpvlCP4K6qhOAxyAYxc0lnBWc33fNZ3CdOJ0Zq41cfw3xyjq7SouAfbxOJCNyMhSQB0zEXAk3N7BqjyMPt60xIc410uBmVEzhgd2XNaUSCr2m/HLIBWk4wTR8h9KkknwegIFbL/W5kj/riGJNZzJ8Bnnt/X4amg8n2BJ3xF0gqDcsoSgBaS/2V/5ncSs0XlAc9uHw8/fW2MusY3tQigEUQ+dvgN7/pXAAH+yFD5s279Vm24K/7z6GdIG7Yi1bzJV0wId1g/Eime30dxNhFgpGfH4knZwGZsxrXd2WCAizT4j6Nv7InbHbqyBXwh2LnmurthY5C1qwsJ38KfIW6cp0mtVW+Jy0FhwbNqZbNP0+xtTcAQEr5UMd++pmzj4SzCm4q+AH62/JKxoRRVM9sN777hXd3c=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5549.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(366004)(396003)(39860400002)(136003)(346002)(451199021)(6506007)(53546011)(9686003)(26005)(52536014)(83380400001)(122000001)(86362001)(4744005)(33656002)(186003)(82960400001)(316002)(55016003)(2906002)(5660300002)(38070700005)(8936002)(41300700001)(38100700002)(966005)(76116006)(66446008)(110136005)(66556008)(66476007)(66946007)(4326008)(64756008)(478600001)(71200400001)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VWZWRVRNdzRFYnNUYkpicFJxZ2FtWDVMV1kyd0ZTSmhmVnIvY0JTMVpXVlFE?=
 =?utf-8?B?VXlpRElEbTFYbDJBQ1c1cm5LTXUraE11dUNtMEMyUzNVbFJ3STZuOWM1U2xu?=
 =?utf-8?B?U2lEU2pVMGlYRHhhS2FZNVNESllsTEtpT2UzcFZPTzBWNkUvd0wxL2NVN2Jn?=
 =?utf-8?B?Z3duS3BPUDhCeEpDNVNhWGIveC8rVUtaNHNhOUR4Rm1WNkpSY3B6eWtQbDZE?=
 =?utf-8?B?czRNRmtzcm9SbktFRDFlY2wyWjZGdFpQQXA2V1haVTM5MzREam5rVE1FZVky?=
 =?utf-8?B?MG9FdjRVZzZqQzU3aFYwdGNjV2ZPVDdmQVY4ODE1V05XQkJ2cnNUc2pyb3Q5?=
 =?utf-8?B?ZENvaXRtakpjR3JXOTJVeThLU2pGdTFLbjQ3aFQ2TGt4akxycDhiUW1GcXJo?=
 =?utf-8?B?c0Y3MzllNWYyRU9JeFFOSEZRZXd4NjY1OXJQbHNQdW1aVWR6eCsxM3pJRGZv?=
 =?utf-8?B?TmpWaEliR0s2RWV0Q25ZeUk2a0JrR2tQZ0dsWTlMWVE5anBxSktYWlM2R2tn?=
 =?utf-8?B?cmMzR2xkRWxtZ3U3eXF5bTBmbERSL1k1cUxHTEhJNnZjWFVCdXZ0czVjTXlm?=
 =?utf-8?B?WXYyVUsxeWwrOEVvRmRDZXFtc2lrdXZOSjlvWjhsTDE2dVZJSUwwN3lUR0k3?=
 =?utf-8?B?QU1MSEplTDI4Ump0OXg0SzZ2UGpyN1Z5WDRHc3MvYnlrQ25PTjdBQmw4NWpq?=
 =?utf-8?B?VGV5eUp6L01zUm15TytwMVZ2cUpKelZWeCtvdWgrY3YwK1l5TnJ0aTlHOGp6?=
 =?utf-8?B?TnFWVGlpQjFIdlg2ZmVwYkZLaW15ZFVvK0NCZzgvc1RWUWJhK0tycUdyNXlK?=
 =?utf-8?B?TUk0bXZsT3ZSaVBWNmNEZHJuanZZUTd6R2Voc3ZLZDNRSEJIWlFIdjRGajZT?=
 =?utf-8?B?T2grcFhTVFdpWVNuTWQ4WldCSzEvREFBNzI3anhFQ0s3YStWdmRXdlh3c1h0?=
 =?utf-8?B?YmYrSjI5Z2N0UGx3T1FtSXQwTUJiSnJleWNCbmlObGFQOUVUSHR2ZFlESHk3?=
 =?utf-8?B?T0FnekFwcEdHNkxPWmF5enAxa0tQSWE2TklOQVBEQWFCZTV0SFdaL0tod0lV?=
 =?utf-8?B?WklXUUVCVmVsOGZITFljL2xRdTYzYWNucHFET05aaWZ2TzNsSmhjN0huajc5?=
 =?utf-8?B?MUxFZlg3VDdjSWhhL2ZaSTNJZm9Od2JnS091cGFORUpsVDZ2bnljcklCbExB?=
 =?utf-8?B?VHpTeFAvWnRJamNZMkl6clZDbWJDS1Z4TW84Z3VjbUl4TURnOE1IMmpWbzJX?=
 =?utf-8?B?cGVBNFZXcm5qaytsL0RmSkd4MnZFbmVSTVQwK0Q2dWptU0hVV0RwcjVZSkc0?=
 =?utf-8?B?YVVVQ0JjcE1kalBSZ01zV0xmTU5HSy83WlZUczVrRmliYnlGSko5dXlLN0Ju?=
 =?utf-8?B?YVNpWlNLU2h1SmJvU1BsOW01VDBWVjJob2picmhGeDBpV1BWMDRnSnJNalBH?=
 =?utf-8?B?SGkxNU92cmVTQXJrOVVxZVFmMWViWnlpR2QweUt1MGxaQnRPOEFaWlZ1aU5u?=
 =?utf-8?B?RTRDc2dpNEptRGlyUjJaM3g3c2xrdDVuYVN3Z1hEaFhPZ0NBNkF4c1JuTmJk?=
 =?utf-8?B?RnRMV00zZTc4SmZucGx3MHhFL0pRVSthNWZ5WXJzSGc2TXJuU0krYXZpVDQ4?=
 =?utf-8?B?SnM1R2U0L0JKdnU0Y25Mcmd6MmdlRWJLVXl0VXpLSFN3bExMWmRyTGU0YUts?=
 =?utf-8?B?VXhQY2VUUkNpc1pGVVhWZ3hkc2lMUmJBTlFGa2FCeGdkRjVObHQ1Z0lVVkxi?=
 =?utf-8?B?MXZkaXJyNHlYT1BEeHhKaXlVa3ZiN05rVDg4eDZKQWVrb0lWQXdWR3NXUEJy?=
 =?utf-8?B?YTgraFYrZ3UwV3BQMm5hU3FXVExOTmh3V2ZtUW0vVHRZWFlwTVhkMVBPb2c2?=
 =?utf-8?B?WVJiQWRtRU1uYWp5bGkvY2pldDljL0tMUGtSU3FJOVQ3ZUdObDVpbVpGZXN3?=
 =?utf-8?B?bFd4SlBCbTJlemMwOWl0TFBxUUtqRnFaQ2VrU21hNVhiMU9zRGo3VFdrVzl6?=
 =?utf-8?B?SFpVYWFNSXYzRHA1aXI4L0labW42ZjAzRkI1MkdHN0ZqaURyUzM1MlpuMys4?=
 =?utf-8?B?dGViZ1NsKzF4N3JQRGhsV3NsR0pqRk0wYUlEODNWbGFrVWI2VmR3bmJ0dlhx?=
 =?utf-8?Q?xPXpMv6b4OdsCBGYNm2Tk2KHh?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5549.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 02610259-f450-4c0c-4ca4-08db67ff5a93
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2023 09:04:23.6360 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9galDIF+LVffzLy4MXTZS1HadNBsckbU/HszibLi2zwod91GBH1ehYO1dYSqGYWU1C0/rfqCP+sE1XHIFmFXgQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB5965
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gvt=3A_remove_unused_variable_gma=5Fbottom_in_comm?=
 =?utf-8?q?and_parser_=28rev2=29?=
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhhbmtzIHNvIG11Y2ggZm9yIHRoZSB0cmljay4gTGVhcm5lZC4NCg0KLS0tLS1PcmlnaW5hbCBN
ZXNzYWdlLS0tLS0NCkZyb206IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBsaW51eC5pbnRlbC5j
b20+IA0KU2VudDogVGh1cnNkYXksIEp1bmUgOCwgMjAyMyA1OjAxIFBNDQpUbzogV2FuZywgWmhp
IEEgPHpoaS5hLndhbmdAaW50ZWwuY29tPjsgWmhpIFdhbmcgPHpoaS53YW5nLmxpbnV4QGdtYWls
LmNvbT4NCkNjOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQpTdWJqZWN0OiBSRTog
W0ludGVsLWdmeF0g4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcgZm9yIGRybS9pOTE1L2d2
dDogcmVtb3ZlIHVudXNlZCB2YXJpYWJsZSBnbWFfYm90dG9tIGluIGNvbW1hbmQgcGFyc2VyIChy
ZXYyKQ0KDQpPbiBUaHUsIDA4IEp1biAyMDIzLCAiV2FuZywgWmhpIEEiIDx6aGkuYS53YW5nQGlu
dGVsLmNvbT4gd3JvdGU6DQo+IFBsZWFzZSB0YWtlIHRoZSA8emhpLmEud2FuZ0BpbnRlbC5jb20+
IGFzIG15IFMtTy1CIHNpbmNlIHRoaXMgaXMgYSANCj4gcGF0Y2ggYWJvdXQgR1ZULWcuIEkgc3Rp
bGwgZG9uJ3Qga25vdyB3aHkgbXkgaW50ZWwgZW1haWwgc210cCBkb2Vzbid0IA0KPiB3b3JrLg0K
DQpUaGFua3MsIHB1c2hlZC4NCg0KWW91IHNob3VsZCBiZSBhYmxlIHRvIGNvbmZpZ3VyZSBnaXQg
dG8gc2V0IHlvdXIgYXV0aG9yIEZyb206IGluIHRoZSBwYXRjaCwgZXZlbiB3aGVuIHNlbmRpbmcg
dGhlIHBhdGNoIGVtYWlsIHdpdGggYSBkaWZmZXJlbnQgRnJvbTouDQoNClNlZSBlLmcuIFsxXS4N
Cg0KQlIsDQpKYW5pLg0KDQoNClsxXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjMwNjA2
MTkxNTA0LjE4MDk5LTItdmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20NCg0KDQotLQ0KSmFu
aSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcg0K
