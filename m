Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 467B9424E45
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Oct 2021 09:49:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2B926F3A6;
	Thu,  7 Oct 2021 07:49:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B45CD6F3A6
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Oct 2021 07:49:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10129"; a="224962054"
X-IronPort-AV: E=Sophos;i="5.85,354,1624345200"; d="scan'208";a="224962054"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 00:49:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,354,1624345200"; d="scan'208";a="624157415"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga001.fm.intel.com with ESMTP; 07 Oct 2021 00:49:43 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 7 Oct 2021 00:49:42 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 7 Oct 2021 00:49:42 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 7 Oct 2021 00:49:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TWplF01ZPoMHtgvbOw55DYAo2VY1FRHSqu3H2hxLP5c+V6EmnoFDaW6tvjp0qYPg6Cc2Tgh49kCgGIA5FnBODItQ9wkt+TsEMhzr3E8iUjv2UGdMuG7GvTqqTNlN6Qb+WUbIUG4Duv0b7kqOYuQphsYfhDQtlGikl/fj40gJdzdE3K8DCRW7OwfRaLmeG7ZXkVR4aUnqAETR0soS12XYfgfAL3t/xTEAWR0ECjFHSiJhXHqlGaJMOGjbkSrDLYEDP5bAuwU0O2O9kinK3KT6BTErooRsMglaIhh9Xz3fefuxG+fvktVbFcgyKdLPrm+AlDbjO6bewv144vjwmNBZvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EIQ2/33MUmT/WZCkbum1Ab9wSqN34XzSHr4j9Fh2+JM=;
 b=SzYK+wTnBjgASzlqm+AGZfmUfSEWTjHPU+2y4NGO2Pt8IpgaddKSwaj+l9ar62dF5DyazmGxZDQ6Yxn9Xpr//caJC0XeoXDpnlbl1vmCCPdtvSrebTr+19+Gvqc+R+xaOk1mI6XlFfGnl5P9Bf9dHaiJOrkNLC74AAzjpx/1f5Bpkq7VoB94MxAj868/7lwDYxj9aisg3y97eZlPv1PlMT9pCACUy1SV8odb5FYMszHWPxzseeoNAejlXUlWgK7h+UZjb2QTDgh+70SDpiOiAwc1F3HGjpasym0Wz+s9xWDHWK33cnCe3yoJNptFP5ej7Ri8g9MP5i2PjyTOgwNGfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EIQ2/33MUmT/WZCkbum1Ab9wSqN34XzSHr4j9Fh2+JM=;
 b=Q4YcJID6FWLvzFQbH9kVffbMfSm6S4DaZe/ovYHwwCy7jQLp7z0pzzInjHH3u6tE6uvABbd4wKyVZZJPkRJcws3c6C2boSgH/67FCBRaTegTvrBA/QUqNVRAv+N79iNMRh3+vqY7wiAXpWo/u9mRyHIsTXBIdm4AA16actQU+eo=
Authentication-Results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5501.namprd11.prod.outlook.com (2603:10b6:5:39d::23)
 by DM6PR11MB4611.namprd11.prod.outlook.com (2603:10b6:5:2a5::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4587.18; Thu, 7 Oct
 2021 07:49:35 +0000
Received: from DM4PR11MB5501.namprd11.prod.outlook.com
 ([fe80::389d:c727:c71d:d869]) by DM4PR11MB5501.namprd11.prod.outlook.com
 ([fe80::389d:c727:c71d:d869%4]) with mapi id 15.20.4566.023; Thu, 7 Oct 2021
 07:49:35 +0000
To: Imre Deak <imre.deak@intel.com>, Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <uma.shankar@intel.com>,
 <animesh.manna@intel.com>
References: <20211005071531.2274972-1-ankit.k.nautiyal@intel.com>
 <87lf3728zx.fsf@intel.com> <a3b08a93-e583-8f61-ee04-a76b8800a798@intel.com>
 <87bl43221e.fsf@intel.com> <20211005153153.GA2847074@ideak-desk.fi.intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Message-ID: <5e73ecc6-ea08-a6f0-d708-9ff0ea12c07c@intel.com>
Date: Thu, 7 Oct 2021 13:19:25 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.14.0
In-Reply-To: <20211005153153.GA2847074@ideak-desk.fi.intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
X-ClientProxiedBy: BM1PR0101CA0018.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:18::28) To DM4PR11MB5501.namprd11.prod.outlook.com
 (2603:10b6:5:39d::23)
MIME-Version: 1.0
Received: from [192.168.0.113] (49.207.212.12) by
 BM1PR0101CA0018.INDPRD01.PROD.OUTLOOK.COM (2603:1096:b00:18::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4566.14 via Frontend
 Transport; Thu, 7 Oct 2021 07:49:33 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6158e4db-8c57-4718-b7e8-08d98967017d
X-MS-TrafficTypeDiagnostic: DM6PR11MB4611:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR11MB4611E950FBF5E8B94388428DCEB19@DM6PR11MB4611.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: RczE6wmS5LfN87P4gy9c6R6F1y9OZwHhtmj2p/SwxtVMSxQkFE4ANMIGGo84goX8o/pvy2YfUpcxLzFkvGEZuTRlKeKdmNHP1ITHcexyhtTHrDmdBmztlX7srPFH+nzb0LHxSnB9VfCQxyctg5d9CmO4c6XUQEqVfkScFNh8dsx9F8MCjnovAV6eon6Epe71Y5Sl8MG9NTSjqNM5DjWWIBDqNQ2CozYuLnxxUMhKO/X0NdAph3ekXGCrCE4HYGrPZVYK6ZeQOBzQS59QLXsKajOBOLx2wCO+OtljUxRcq5GDy4bhEkHwscKg9AIyfeZK0AmiEaUvs0otxmm4WjqVVbHnrZJBYz1u9OyQjT2sluIbwORYloYDAL5znZeDZ6JD6XJO1tUW3/1y3itfQ1ukL02LZPGD5q8o8XT9ZDnOWnpjMdCCjo828lDn/aRgCRBCNnrWxSxb9jyZRFesD8MmB5PH7+teDnKhRaJmoWRjh/SnmwDfrL2sjrazv+NUFGFRx5ILCxKWn8UsZIDkpH1SlT3vKZCmWlqQf2QqZq3Bf7jj3Q3CkV43CcSbWNYUZ57Qn7uBOxVs03bkV+TwQ494wTekyIRWcazfEHH2VLmdg01QSTUcxtMfG2feQ5Df4rshUATTA1IV302kJDIikHdexnrew75gLK36l8n14ENIZeS18DW3HAK5PxtbYOR1PSDgYx7Ycdsx8svWIvZGeQLWUqNx9WXrNH6bfjzJuO9BW3HSdwmIcHnL4Be3HMM8RroH
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5501.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(107886003)(5660300002)(316002)(6486002)(16576012)(110136005)(55236004)(36756003)(4326008)(53546011)(186003)(26005)(2616005)(66476007)(86362001)(8676002)(38100700002)(6636002)(31696002)(8936002)(956004)(83380400001)(6666004)(66556008)(508600001)(66946007)(31686004)(1006002)(2906002)(16453002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NUlHK3liNmdWaE5vUVQ4L2dHTHBjV1B0aWt5ZlJZMVlSTGhQY0dhQ3Y0WTBJ?=
 =?utf-8?B?SmJqZ3Y1blFUNkNrbytjU3ZhT0Q5TEVYR0hxb3FEUmI0b1p3MFhNZFIxYjJX?=
 =?utf-8?B?c0tkMTV5TEVHNnR4RkFpTFhDOEx3Ykpxc2todVZENktHcXF0clFCTGNYb0tl?=
 =?utf-8?B?by8rZUdoNmJEZWV4RDZ3c2ZnazUyVXBwZW9JMHJaeDZaOUxERmVham5hWnk4?=
 =?utf-8?B?Zy94VEs4Rnl1NmVwVkJVckZITGpnSVJUY3pzeWgrWFVKZ0dYYjdiM25MUG0z?=
 =?utf-8?B?Smp5TldXWG9vTHBBVzhNRFdPeDNXeHR4K3N5V00wMjMvNEhxZUNyMURnOGVQ?=
 =?utf-8?B?Mjl2c1FqajU2QWFOeUlPcUpodTN3K3F5ZXJRTVk1eEFiRUFWZXl3eW9hVzhh?=
 =?utf-8?B?bkoyR21URUVuMGlzTkhTOEJvVEMybmg2aXh0SmtzOUUybEVtWDZPU2dwTTBv?=
 =?utf-8?B?dXZWZ0Z0UVpuRVhXZ0YxSmRlOEtyQTg4N2g0dmlGd3hXWDZZaTNiNTVPQitJ?=
 =?utf-8?B?d0dmY21waHNDRlcrUnVTcFhWY3RRTitramNLakpsKzBXMmlVRmYyRWdBNUdY?=
 =?utf-8?B?azNEYVd3Wm91c3lUTDlackFBanF3dDNSdXpVOTV1MW9SaElGN3NBNkZ3NzVj?=
 =?utf-8?B?dkYzWG9ydWlKV2JKcVB0OFhtdnU1SS9md0V3WmJGN0QxN3FJR09ENys4Ky9v?=
 =?utf-8?B?cTd3aE9DQkNkOG9rcXFCYlZ2UkNDdVBGU2FQV1BUZFZpa2lENlpZQXAvdE4z?=
 =?utf-8?B?N2VCWWNnQ2luc0tXc2h1U0t1dXdIb0xnaHJZcXlkczhoY3k4eFNUZGdMOFFu?=
 =?utf-8?B?WnoyK2RNL1NveHV0UC9vRi91N2dGRFZJb0FlSUhqU2VZK3d3Y2djNXJ6K0xx?=
 =?utf-8?B?Ny9iellqNG9VUlhLNnpjUkVmT0gxWTJhTzl5Vm1sREl1MW9sU1BDTnpHb2Zh?=
 =?utf-8?B?TVNaTHlxQ0dUZlpxNnI2QWt3ZFhHZ0F2M0MyeEdhWGxYU2JlOW5sU1YxcTZK?=
 =?utf-8?B?dHNPdjdYRENDdktjMlh3WWw0SDFVMlRvNGY2cjRzdTltS3g3Vy9IQ29hbFRh?=
 =?utf-8?B?SjRYOXN0Y0VJcytjbXFtNEtxWXpsUEdtRVpGdUhHdkNkRnBjMEcwbE93Smpi?=
 =?utf-8?B?aUdHRXA5NDVSbE5BS0pVZG1rYnNsRVhabnNIenRXVkRCOElTN004cUR1Q2ZM?=
 =?utf-8?B?dy9wSDQxZ3d6NnBzZ0FsWVlYNEtvbkd3aXQ3VGdzWjBWSTBiZzRNSDZsMzFQ?=
 =?utf-8?B?QTZTWVRFN2I1L25NVEIxeTlicGRTYVkyb3cwdy84WmFyb1dCNDlteGJISGlK?=
 =?utf-8?B?WldYREg5SFRnWjZHajFkU1VINHBPWHMwbFhqdmUzSEFIWHRmNjVtNlFLR08v?=
 =?utf-8?B?TTI0RVluUnlvYklDdDBLb2tpQjhab05IZTVlcW9ZazNqNTBEL0Qrc3htV1cy?=
 =?utf-8?B?RHd2VXdDUWcyTWx3TWRoTVUvNW9ucmM0dis4ZDdCc2hPZ0lyb2JWdURvSFdW?=
 =?utf-8?B?aUNzVXpPeEZLQ2lWMGZQb2xpYXpjTURjbVNOSWVQdUpadWIzaWVzTVJscHRE?=
 =?utf-8?B?YUg4WUFFSkM4bVV5cm9TZ2swQjB6VHY4ejZ2T2ZNSmk4cmV3bWE3eENnUEhw?=
 =?utf-8?B?RVg0anFsKzFJekJxWkF3SWRlWnFOblFWUC8rS0h2Zll1amJ3a2s2ZThUTElj?=
 =?utf-8?B?UmxwZTNFRzJjVlgwWWlHYnlWd2xlR1Z3bTVHbnJteDRtLzhLTDYyMm1OVWUw?=
 =?utf-8?Q?rEe0PcRVx34P7jSqBiVmKZpnyubif36TnyHsX/Q?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6158e4db-8c57-4718-b7e8-08d98967017d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5501.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Oct 2021 07:49:35.0354 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: G5w/cFvO/uvcqg/Cqc1qPADNd/hxCbJTxOppSgi4kJTmYNEVbUWD/LqAoLdtQFTKss82RZ1l3sz5ZXXpwC5EmJixqAaMBfwOW0AousLkfDs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4611
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Remove check for low
 voltage sku for max dp source rate
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


On 10/5/2021 9:01 PM, Imre Deak wrote:
> On Tue, Oct 05, 2021 at 01:34:21PM +0300, Jani Nikula wrote:
>> Cc: Imre, I think you were involved in adding the checks.
> About ADL-S the spec says:
>
> Bspec 53597:
> Combo Port Maximum Speed:
> OEM must use VBT to specify a maximum that is tolerated by the board design.
>
> Combo Port HBR3 support:
> May require retimer on motherboard. The OEM must use VBT to limit the link rate to HBR2 if HBR3 not supported by motherboard.
>
> Bspec/49201:
> Combo Port HBR3/6.48GHz support:
> Only supported on SKUs with higher I/O voltage
>
> I take the above meaning that only high voltage SKUs support HBR3 and
> on those SKUs the OEM must limit this to HBR2 if HBR3 would require a
> retimer on the board, but the board doesn't have this.
>
> If the above isn't correct and low voltage SKUs also in fact support
> HBR3 (with retimers if necessary) then this should imo clarified at
> Bspec/49201. The VBT limit could be used then if present, ignoring the
> low voltage SKU readout.

Thanks Imre for the inputs.

As you have mentioned note : rate >5.4 G supported only on High voltage 
I/O, is mentioned for platforms like ICL, JSL and Display 12 platforms.

I had again asked the HW team and VBT/GOP team whether we can safely 
rely on VBT for the max rate for these platforms, without worrying about 
the SKU's IO Voltage, and also requested them to update the Bspec page 
for the same.

In response the Bspec pages 49201, 20598 are now updated with the note 
"OEM must use VBT to specify a maximum that is tolerated by the board 
design" for the rates above 5.4G.

 From what I understand, we can depend upon the VBT's rate, and if there 
are some low voltage I/O SKUs that do not support HBR3 rate, it should 
be limited by the VBT.

Thanks & Regards,

Ankit

>> BR,
>> Jani.
>>
>> On Tue, 05 Oct 2021, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com> wrote:
>>> On 10/5/2021 1:34 PM, Jani Nikula wrote:
>>>> On Tue, 05 Oct 2021, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>>>>> The low voltage sku check can be ignored as OEMs need to consider that
>>>>> when designing the board and then put any limits in VBT.
>>>> "can" or "must"?
>>>>
>>>> VBT has been notoriously buggy over the years, and we need to safeguard
>>>> against that. Are there any cases where having these checks are wrong?
>>> Hi Jani,
>>>
>>> Bspec page for Combo PHY PLL frequencies now says "OEM must use VBT to
>>> specify a maximum that is tolerated by the board design" for the rates
>>> above 5.4G.
>>>
>>> Earlier it was mentioned that rates > 5.4G were supported on SKUs with
>>> Higher I/O Voltage.
>>>
>>> There was an instance where on an ADL-S board, where VBT was showing as
>>> HBR3 supporting for a combo phy port,  but we were reading the IO
>>> voltage as 0.85V in is_low_voltage_sku()
>>>
>>> (Specifically, we were reading Register_PORT_COMP_DW3 bits 24-25 as 0)
>>> for a combo PHY port, and therefore we were limiting the BW to 5.4Gbps
>>>
>>> Due to this, 8k@60 mode was getting pruned on the board for that combo
>>> phy port. On removing the low_voltage_sku( ) the mode was able to be set
>>> properly.
>>>
>>> Incidentally, with Windows 8k@60 was also coming up on the same board on
>>> same port.
>>>
>>> So I had checked with HW team and GOP/VBT team if driver should consider
>>> the low voltage sku check.  As per their response we 'can' ignore the
>>> check and rely on the VBT, as OEM should limit the rate as per board
>>> design. The Bspec was also updated to reflect the same.
>>>
>>> So IMHO we need not limit the rate as per is_low_voltage_sku check, as
>>> this limiting of the rate through VBT is a must for the OEMs.
>>>
>>> I should perhaps change the wording of the commit message to convey the
>>> same.
>>>
>>>
>>> Thanks & Regards,
>>>
>>> Ankit
>>>
>>>
>>>> BR,
>>>> Jani.
>>>>
>>>>> Same is now changed in Bspec (53720).
>>>>>
>>>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>>> ---
>>>>>    drivers/gpu/drm/i915/display/intel_dp.c | 32 +++----------------------
>>>>>    1 file changed, 3 insertions(+), 29 deletions(-)
>>>>>
>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>>>>> index 74a657ae131a..75c364c3c88e 100644
>>>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>>>> @@ -297,23 +297,13 @@ static int dg2_max_source_rate(struct intel_dp *intel_dp)
>>>>>    	return intel_dp_is_edp(intel_dp) ? 810000 : 1350000;
>>>>>    }
>>>>>    
>>>>> -static bool is_low_voltage_sku(struct drm_i915_private *i915, enum phy phy)
>>>>> -{
>>>>> -	u32 voltage;
>>>>> -
>>>>> -	voltage = intel_de_read(i915, ICL_PORT_COMP_DW3(phy)) & VOLTAGE_INFO_MASK;
>>>>> -
>>>>> -	return voltage == VOLTAGE_INFO_0_85V;
>>>>> -}
>>>>> -
>>>>>    static int icl_max_source_rate(struct intel_dp *intel_dp)
>>>>>    {
>>>>>    	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>>>>>    	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
>>>>>    	enum phy phy = intel_port_to_phy(dev_priv, dig_port->base.port);
>>>>>    
>>>>> -	if (intel_phy_is_combo(dev_priv, phy) &&
>>>>> -	    (is_low_voltage_sku(dev_priv, phy) || !intel_dp_is_edp(intel_dp)))
>>>>> +	if (intel_phy_is_combo(dev_priv, phy) && !intel_dp_is_edp(intel_dp))
>>>>>    		return 540000;
>>>>>    
>>>>>    	return 810000;
>>>>> @@ -321,23 +311,7 @@ static int icl_max_source_rate(struct intel_dp *intel_dp)
>>>>>    
>>>>>    static int ehl_max_source_rate(struct intel_dp *intel_dp)
>>>>>    {
>>>>> -	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>>>>> -	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
>>>>> -	enum phy phy = intel_port_to_phy(dev_priv, dig_port->base.port);
>>>>> -
>>>>> -	if (intel_dp_is_edp(intel_dp) || is_low_voltage_sku(dev_priv, phy))
>>>>> -		return 540000;
>>>>> -
>>>>> -	return 810000;
>>>>> -}
>>>>> -
>>>>> -static int dg1_max_source_rate(struct intel_dp *intel_dp)
>>>>> -{
>>>>> -	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>>>>> -	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
>>>>> -	enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
>>>>> -
>>>>> -	if (intel_phy_is_combo(i915, phy) && is_low_voltage_sku(i915, phy))
>>>>> +	if (intel_dp_is_edp(intel_dp))
>>>>>    		return 540000;
>>>>>    
>>>>>    	return 810000;
>>>>> @@ -380,7 +354,7 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
>>>>>    			max_rate = dg2_max_source_rate(intel_dp);
>>>>>    		else if (IS_ALDERLAKE_P(dev_priv) || IS_ALDERLAKE_S(dev_priv) ||
>>>>>    			 IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv))
>>>>> -			max_rate = dg1_max_source_rate(intel_dp);
>>>>> +			max_rate = 810000;
>>>>>    		else if (IS_JSL_EHL(dev_priv))
>>>>>    			max_rate = ehl_max_source_rate(intel_dp);
>>>>>    		else
>> -- 
>> Jani Nikula, Intel Open Source Graphics Center
