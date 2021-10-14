Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D273C42D896
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Oct 2021 13:51:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 879686E0D4;
	Thu, 14 Oct 2021 11:51:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB97F6E0D4
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Oct 2021 11:51:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10136"; a="251094293"
X-IronPort-AV: E=Sophos;i="5.85,372,1624345200"; d="scan'208";a="251094293"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2021 04:51:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,372,1624345200"; d="scan'208";a="487299240"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga007.fm.intel.com with ESMTP; 14 Oct 2021 04:51:46 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 14 Oct 2021 04:51:45 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 14 Oct 2021 04:51:45 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.42) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 14 Oct 2021 04:51:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JBUHnI2Tc+LrzVH7c2wdPP6wuGtwynY9Rye4/uMaQU0axfk7/pUKXnyvM3eceWeKcThFlDbNsfCsxbVPuH0Y1I1lG0ri7/dgwHDyI5/MHxM7LJi63MZrytF8jlpHuznCissnTJmTrHjns+hXnjgjzwuUFNwu1KcIv6INu9DDkWJIhOB1ZC0UJTPOPgEJcGNxrijHIyrouvRJQyoyETeCkqLbLYp8kz8V5HG0TllbjQIs9E+x9Fp+6iO0XIt0lrt4f0NlsCAtdzrNaDiJHTbgNIJg4XcfE3xYD4by13jVuhBHGHXse7bgkJQdegg6o08iDKpgwlGwVLWHNQTWCevqlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d6Rrfx1lsOHHnKFkm5gT9DGWZJeOoGe7kqmxIIKk0CQ=;
 b=aivM6um4wA2X83gY2hQF5oHqnS96j9FexWlt3mgU8UY567FwQgDqE1EBwcJ/IIfdnp3pPgt67VaIqE6Wu7EX4XVc1JcUXnM6F8oqtBrWXAOdqwyRFlX0SNwcOSv9CouMlyK+BojU+wTZ0iP+x9dCUjptdETH7LHsVxjvRjtDtP7j+hXZrA25Ky50SmI4znW9LibFaJrU528+h9LX8QjaA0NUvnl1NYcRj8/1FPfLKPs35QfxLPcgS/ChF6lGoiGD33JM8maF7hJDUGL6UbJ4PK40WKzsRaMeJ+bu+/H79Y1jtkc9NLCQRFtj86TIKSMfPuw6D2KsBGME5bWmSluYCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=d6Rrfx1lsOHHnKFkm5gT9DGWZJeOoGe7kqmxIIKk0CQ=;
 b=CQGxXP/FoeWAYN3ryEyFYxowTp2tNNa0cWHKX10PboCcrHsZVi4dVJUcK786uzRVzuLp4v0wEjx0h2cmo58cI8rzEckbm3UjxtbyqyrBIRD1zKBPkn43F/s+lDg0izgECiTrYaxispXvjoL1IZ2Bvfre8x4zxcJtqlk6/CDC790=
Authentication-Results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5501.namprd11.prod.outlook.com (2603:10b6:5:39d::23)
 by DM6PR11MB4299.namprd11.prod.outlook.com (2603:10b6:5:1df::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4587.22; Thu, 14 Oct
 2021 11:51:42 +0000
Received: from DM4PR11MB5501.namprd11.prod.outlook.com
 ([fe80::389d:c727:c71d:d869]) by DM4PR11MB5501.namprd11.prod.outlook.com
 ([fe80::389d:c727:c71d:d869%4]) with mapi id 15.20.4587.030; Thu, 14 Oct 2021
 11:51:42 +0000
To: Jani Nikula <jani.nikula@intel.com>, Imre Deak <imre.deak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <uma.shankar@intel.com>,
 <animesh.manna@intel.com>
References: <20211005071531.2274972-1-ankit.k.nautiyal@intel.com>
 <87lf3728zx.fsf@intel.com> <a3b08a93-e583-8f61-ee04-a76b8800a798@intel.com>
 <87bl43221e.fsf@intel.com> <20211005153153.GA2847074@ideak-desk.fi.intel.com>
 <5e73ecc6-ea08-a6f0-d708-9ff0ea12c07c@intel.com>
 <20211013151915.GA9101@ideak-desk.fi.intel.com> <874k9lx7hr.fsf@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Message-ID: <4d54e9fc-4fb8-828d-fb26-c3ae192186bd@intel.com>
Date: Thu, 14 Oct 2021 17:21:33 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.14.0
In-Reply-To: <874k9lx7hr.fsf@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
X-ClientProxiedBy: BM1PR0101CA0057.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:19::19) To DM4PR11MB5501.namprd11.prod.outlook.com
 (2603:10b6:5:39d::23)
MIME-Version: 1.0
Received: from [192.168.0.113] (49.207.212.12) by
 BM1PR0101CA0057.INDPRD01.PROD.OUTLOOK.COM (2603:1096:b00:19::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.14 via Frontend
 Transport; Thu, 14 Oct 2021 11:51:40 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d7f03083-44bb-4bb4-94be-08d98f08fd36
X-MS-TrafficTypeDiagnostic: DM6PR11MB4299:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR11MB42991337B8BBBF3A84A79ACDCEB89@DM6PR11MB4299.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hNrCD4h/KZr7m3T8D9yD784aTX5U2/Hjjvbjo1MtdUbCdxlKscY6+Weml4OG1xx8tX6lggOIAM6gcoaJvb1gAeV19KHBXU2cFq/RXMfOhhXlPxxLcUjsmUj7TPVOygn7tmr/MjfX1rLK7mzXwaxlIgXTe9mY9/ZTZ8XuokKLjaLLs0yu6wIZ0kF8SziqCCqefqB/dX6wcV3mLcgqPNx8eF6ifAPFbHVCcwFL/8GJGKkYlJDLx6hub747AGHrFYwjLJs3qeoiqFq4Cm4SgFAMAh2oq3o6IkwgcHVqKu2Lc6OJf0h13JAPX67SOuaTgwm1XFKu6Mhktahrekur+3cG3vLc1ueO/T6gIDQg2m/U9uIynQ9nK5HSLHkAuJu5YvXCsQD6vGLnUKCIXBWG2t8IcOUaAaXqa5jGULLM6oqBy1C6tsO6zC6L4i/3zIvIhIn5Ul0Xd7DDJFroXP77MQs6syBduwKcgVJ0IyOW+Pxwf3rMMCk8uoNWbKFBYUzTmRXohUnveHd/ZvJkPvrak4h/Ohv/x9G9R7zMHvYRpDvaiiYJA2FkvH/Gqe8nAZbpLG3rwhGQHlCYeEFA7HoUyOEgGuL2L7FdRWuWUCbvEPYE55tbOAPCBL9uzDBbRPuxQT+ztm79OQYdoJS05VZG6a4BWEDEP/2nUPvbocrbFZB03AEkVbXvKPye/WvY9N6IbwgNCdA+B+5Za427zHjLtFo1Wk73CjfN5p0EMBIX2zRiCQX5hexonayv6XKN25vXyly0
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5501.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(38100700002)(316002)(66476007)(31686004)(66556008)(66946007)(956004)(5660300002)(83380400001)(2616005)(31696002)(8676002)(30864003)(107886003)(8936002)(4326008)(82960400001)(6486002)(186003)(6636002)(508600001)(1006002)(6666004)(110136005)(53546011)(26005)(55236004)(86362001)(2906002)(36756003)(16576012)(16453003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dUtZUGJmdUF2WGZkbHJ0M1RiL1Q2dm5qdm1yeHF0UmJ6M2tHc1JDY21OREVK?=
 =?utf-8?B?eGU0OTFpd1ozZDI0M1B6SEpHdlhhQnk0TWN1clJrN0s3ejBLdmFrN3FLazA3?=
 =?utf-8?B?YVVVeHl0RUJjbWh2eDE1SU9IWlRIR2t6SGRRdE9xWFdBVlRxVVB2a1lNSzBR?=
 =?utf-8?B?NU9wWXBNVERwNHNocnVJWnJ2eXh1NElMQmpJU0lEN09uTmpuVXpSTG1BMjdw?=
 =?utf-8?B?djVmUDNsNEM1Zzg5YmxYMDFxUVRET2dQT1RPTUZxN0ZUcDJ6VFAzT2lhajJj?=
 =?utf-8?B?RUZBUVB4QjkvVzNKK0dMT3ByTkNac3lmWkhYWjF3a3Zaa0pLVHFPVGI0ZEwv?=
 =?utf-8?B?aUYyME90RXY2YzgzQ0ticXBEeHVwTDMrRnNzOHNRRW0zUXJYUndneDBTMnNz?=
 =?utf-8?B?clRUeTYyR3RCZVBzR05talZGaHNkZXR3dlg3cUdySkVSQ0JRdkNVVzkxQVdE?=
 =?utf-8?B?aVAwNzEycWVpV2ZDZUIvclBPcVFUaTA3L0JSZWtPSThXY0JQYnVXTUVVNnVq?=
 =?utf-8?B?ZDRqQTE2ZVJFcEVnU0o2R09BOVJwOE9Db0JFSVRkaDJESDJVN0x5QlNTWnNj?=
 =?utf-8?B?bkwrT2QzMTFORlZYNEdlTVZNQ1E1KzF4M0ZPZ1p4dVlpeVl4aWVzdjI0K08w?=
 =?utf-8?B?cjJUK1VXVTRyckc2OFd3S1M4T1NpT0hQL2dLeHNEVUpqb0EyMDR3TjR2eVpt?=
 =?utf-8?B?ek5lNDJuWHZTRVVqbTFYT3pPR20raGVxdXc5aUk3Q25hcEtPNldhYmxibE52?=
 =?utf-8?B?bnFxTXZGWnluRGdZOU9CUFgzaDRvWGs5UERRcmtud0hOeEgyRjhKTHFUK01a?=
 =?utf-8?B?Smxsdkh4dkFBV1NYT2EyRkFISTlBWjA3SFhrWmluczZmT0FSak0vZmd6U0RR?=
 =?utf-8?B?QXA5bDZhVytmTzhqdmNFeUk3cnlQVFVCc3B6aTZvRjYvSVNodzB2TEVQQkRm?=
 =?utf-8?B?TkovSDF3QjJ3OFIrVmh5L0hOUVZRRlRhQUI2QVdIT0lwTnhQLzF5OENLTXdR?=
 =?utf-8?B?VVVqVHFJT3VEMmNSbjU4SUpUTGFoM0ZObStXK2xudjQ5UG9wSnhFcVlwMnk0?=
 =?utf-8?B?VTdIWUJWTklhcUNFRUxpZFovMGFYcXVWMlB6NnlreUcyTFY5QXc1dklzUTVm?=
 =?utf-8?B?R2lGTXBISFBCa2I5Q0t0a082OFlGTS8yZWlvckRYdGEwMVpQWU93M0g3bTJF?=
 =?utf-8?B?d2REM001NnZ3YWdkYjZJcEs1SmVFdmRLQjUyQi9HZ0N0QUo4ajQyU2ErQWRO?=
 =?utf-8?B?UlFrZTRoNks2UDZnMXR0R3NLTCs2WFRuSlh5dUg4bk5OVGY1VHBBQ01DZ2Jw?=
 =?utf-8?B?eHg4dDg4RUVyaitYLzVVRDVRN2xwSjZrUU5lekt0TWVVVHRRazFMTGFrNGZD?=
 =?utf-8?B?OVZlamlDa3RsMXBPdUJJWEJ3MFhWTy9MSGpoMmdLTm9qMU5jaTk2QTdRWEFM?=
 =?utf-8?B?OW9GQlhjbjBNK2Y2UzJLSzJJK0ZOVk5wYml1M0V6R1BxaTNsYjR2R1FoSmRN?=
 =?utf-8?B?T09sVkZBbFRYZUxseExxTWxMRGx0TEJ0Ny9yalV2bWhDWjNyQXhUbEZNV0Zp?=
 =?utf-8?B?ZWVsY1o5WXRySStvclN2YXhpYTBJTjRReXlWb3ZQZXFWcE10OFAwM2dTTnZX?=
 =?utf-8?B?U0QyeGRzK3JhU05saVl3NHBlV3E3Y2RQblRTYW5iTjl2M2RUNStFSEw5MkE2?=
 =?utf-8?B?VVQ0dUZiWUZTMWdRZjBKb0dXY282YUExK3VEMWFFQkVmMG5NcTNlYmJYRnBY?=
 =?utf-8?Q?DGKvMH5l8aOABFmBrx9tveczhkxz0T6kjzTAxJL?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d7f03083-44bb-4bb4-94be-08d98f08fd36
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5501.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Oct 2021 11:51:42.1593 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 49zLW06cdlP9wjfo8zlSmCSiSOgGAeyRAdl6cdzHUZk/3bkmW/CnfM5beLBuAcnbVpDiVWm61P7HQ43g2zMiUl4oruLpLopMDomuZaevlSI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4299
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


On 10/13/2021 9:05 PM, Jani Nikula wrote:
> On Wed, 13 Oct 2021, Imre Deak <imre.deak@intel.com> wrote:
>> On Thu, Oct 07, 2021 at 01:19:25PM +0530, Nautiyal, Ankit K wrote:
>>> On 10/5/2021 9:01 PM, Imre Deak wrote:
>>>> On Tue, Oct 05, 2021 at 01:34:21PM +0300, Jani Nikula wrote:
>>>>> Cc: Imre, I think you were involved in adding the checks.
>>>> About ADL-S the spec says:
>>>>
>>>> Bspec 53597:
>>>> Combo Port Maximum Speed:
>>>> OEM must use VBT to specify a maximum that is tolerated by the board design.
>>>>
>>>> Combo Port HBR3 support:
>>>> May require retimer on motherboard. The OEM must use VBT to limit the link rate to HBR2 if HBR3 not supported by motherboard.
>>>>
>>>> Bspec/49201:
>>>> Combo Port HBR3/6.48GHz support:
>>>> Only supported on SKUs with higher I/O voltage
>>>>
>>>> I take the above meaning that only high voltage SKUs support HBR3 and
>>>> on those SKUs the OEM must limit this to HBR2 if HBR3 would require a
>>>> retimer on the board, but the board doesn't have this.
>>>>
>>>> If the above isn't correct and low voltage SKUs also in fact support
>>>> HBR3 (with retimers if necessary) then this should imo clarified at
>>>> Bspec/49201. The VBT limit could be used then if present, ignoring the
>>>> low voltage SKU readout.
>>> Thanks Imre for the inputs.
>>>
>>> As you have mentioned note : rate >5.4 G supported only on High voltage I/O,
>>> is mentioned for platforms like ICL, JSL and Display 12 platforms.
>>>
>>> I had again asked the HW team and VBT/GOP team whether we can safely rely on
>>> VBT for the max rate for these platforms, without worrying about the SKU's
>>> IO Voltage, and also requested them to update the Bspec page for the same.
>>>
>>> In response the Bspec pages 49201, 20598 are now updated with the note "OEM
>>> must use VBT to specify a maximum that is tolerated by the board design" for
>>> the rates above 5.4G.
>> Ok, thanks for this, now the spec is closer to the proposed changes. On
>> some platforms it's still unclear if the default max rate in the lack of
>> a VBT limit is HBR2 or HBR3. The ADL-S overview at Bspec/53597 is clear
>> now wrt. this:
>>
>> (*) "May require retimer on motherboard. The OEM must use VBT to limit the link rate
>>      to HBR2 if HBR3 not supported by motherboard."
>>
>> ideally it should still clarify if the potential retimer requirement applies to
>> both eDP and DP or only to DP.
>>
>> I still see the followings to adjust in the spec so that it reflects
>> the patch:
>>
>> - ICL
>>    - bspec/20584:
>>      "Increased IO voltage may be required to support HBR3 for the highest DisplayPort
>>       and eDP resolutions."
>>
>>       should be changed to (*) above mentioning that HBR3 is only supported on
>>       eDP.
>>
>>    - bspec/20598:
>>      "Combo HBR3: OEM must use VBT to specify a miximum that is tolerated by the
>>      board design."
>>
>>      The DP/HBR3 support on ICL should be removed.
>>
>>      For eDP/HBR3 on ICL the above comment should be changed to (*).
>>
>> - JSL
>>    - bspec/32247:
>>      "Increased IO voltage may be required to support HBR3 for the highest DisplayPort
>>       resolutions."
>>
>>      should be removed/changed to (*).
>>
>>    - bspec/20598:
>>      "OEM must use VBT to specify a miximum that is tolerated by the
>>      board design."
>>
>>      should be changed to (*).
>>
>> - TGL:
>>    - bspec/49201:
>>      "Combo HBR3: OEM must use VBT to specify a miximum that is tolerated
>>      by the board design."
>>
>>      The DP/HBR3 support should be removed, for eDP/HBR3 the above should
>>      be changed to (*).
>>
>> - RKL:
>>    - bspec/49201, 49204:
>>      Remove the RKL tag, since there is a separate page for RKL.
>>
>>    - bspec/49202:
>>      "Combo HBR3: Only supported on SKUs with higher I/O voltage"
>>
>>      should be changed to (*).
>>
>> - ADLS:
>>    - bspec/49201, 49204:
>>      The ADLS tag should be removed, since there is a separate page for ADLS.
>>
>>    - bspec/53720:
>>      "Combo HBR3: OEM must use VBT to specify a miximum that is tolerated by the
>>      board design."
>>
>>      should be changed to (*).
>>
>> - DG1:
>>    - bspec/49205:
>>      "Combo HBR3: Only supported on SKUs with higher I/O voltage"
>>
>>      should be changed to (*) above.
>>
>> - DG2:
>>    - bspec/53657:
>>      For Combo HBR3 (*) should be added.
>>
>>    - bspec/54034:
>>      For Combo HBR3 (*) should be added.
>>
>> - ADLP:
>>    - bspec/49185:
>>      "Combo DP/HBR3: OEM must use VBT to specify a miximum that is tolerated by
>>      the board design. An external re-timer may be needed."
>>
>>      should be changed to (*).
>>
>>
>> Also could you add a debug print with the voltage configuration of combo
>> PHYs somewhere in intel_combo_phy.c?
>>
>>>  From what I understand, we can depend upon the VBT's rate, and if there are
>>> some low voltage I/O SKUs that do not support HBR3 rate, it should be
>>> limited by the VBT.
>>>
>>> Thanks & Regards,
>>>
>>> Ankit
>>>
>>>>> BR,
>>>>> Jani.
>>>>>
>>>>> On Tue, 05 Oct 2021, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com> wrote:
>>>>>> On 10/5/2021 1:34 PM, Jani Nikula wrote:
>>>>>>> On Tue, 05 Oct 2021, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>>>>>>>> The low voltage sku check can be ignored as OEMs need to consider that
>>>>>>>> when designing the board and then put any limits in VBT.
>>>>>>> "can" or "must"?
>>>>>>>
>>>>>>> VBT has been notoriously buggy over the years, and we need to safeguard
>>>>>>> against that. Are there any cases where having these checks are wrong?
>>>>>> Hi Jani,
>>>>>>
>>>>>> Bspec page for Combo PHY PLL frequencies now says "OEM must use VBT to
>>>>>> specify a maximum that is tolerated by the board design" for the rates
>>>>>> above 5.4G.
>>>>>>
>>>>>> Earlier it was mentioned that rates > 5.4G were supported on SKUs with
>>>>>> Higher I/O Voltage.
>>>>>>
>>>>>> There was an instance where on an ADL-S board, where VBT was showing as
>>>>>> HBR3 supporting for a combo phy port,  but we were reading the IO
>>>>>> voltage as 0.85V in is_low_voltage_sku()
>>>>>>
>>>>>> (Specifically, we were reading Register_PORT_COMP_DW3 bits 24-25 as 0)
>>>>>> for a combo PHY port, and therefore we were limiting the BW to 5.4Gbps
> Btw why was this? Is it the wrong register, wrong thing to do, what?
>
> BR,
> Jani.

Jani, going by the bspec, the register and the given bits must tell 
about the voltage info for the given port.

But apparently, we cannot rely on it to limit the rate from driver side, 
as the skus with low voltage I/O might still support HBR3, with rework.

But this is again, what I could get from the bspec bits. I would try to 
get more information about the validity of the value read.

Thanks & Regards,

Ankit


>
>
>>>>>> Due to this, 8k@60 mode was getting pruned on the board for that combo
>>>>>> phy port. On removing the low_voltage_sku( ) the mode was able to be set
>>>>>> properly.
>>>>>>
>>>>>> Incidentally, with Windows 8k@60 was also coming up on the same board on
>>>>>> same port.
>>>>>>
>>>>>> So I had checked with HW team and GOP/VBT team if driver should consider
>>>>>> the low voltage sku check.  As per their response we 'can' ignore the
>>>>>> check and rely on the VBT, as OEM should limit the rate as per board
>>>>>> design. The Bspec was also updated to reflect the same.
>>>>>>
>>>>>> So IMHO we need not limit the rate as per is_low_voltage_sku check, as
>>>>>> this limiting of the rate through VBT is a must for the OEMs.
>>>>>>
>>>>>> I should perhaps change the wording of the commit message to convey the
>>>>>> same.
>>>>>>
>>>>>>
>>>>>> Thanks & Regards,
>>>>>>
>>>>>> Ankit
>>>>>>
>>>>>>
>>>>>>> BR,
>>>>>>> Jani.
>>>>>>>
>>>>>>>> Same is now changed in Bspec (53720).
>>>>>>>>
>>>>>>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>>>>>> ---
>>>>>>>>     drivers/gpu/drm/i915/display/intel_dp.c | 32 +++----------------------
>>>>>>>>     1 file changed, 3 insertions(+), 29 deletions(-)
>>>>>>>>
>>>>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>>>>>>>> index 74a657ae131a..75c364c3c88e 100644
>>>>>>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>>>>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>>>>>>> @@ -297,23 +297,13 @@ static int dg2_max_source_rate(struct intel_dp *intel_dp)
>>>>>>>>     	return intel_dp_is_edp(intel_dp) ? 810000 : 1350000;
>>>>>>>>     }
>>>>>>>> -static bool is_low_voltage_sku(struct drm_i915_private *i915, enum phy phy)
>>>>>>>> -{
>>>>>>>> -	u32 voltage;
>>>>>>>> -
>>>>>>>> -	voltage = intel_de_read(i915, ICL_PORT_COMP_DW3(phy)) & VOLTAGE_INFO_MASK;
>>>>>>>> -
>>>>>>>> -	return voltage == VOLTAGE_INFO_0_85V;
>>>>>>>> -}
>>>>>>>> -
>>>>>>>>     static int icl_max_source_rate(struct intel_dp *intel_dp)
>>>>>>>>     {
>>>>>>>>     	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>>>>>>>>     	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
>>>>>>>>     	enum phy phy = intel_port_to_phy(dev_priv, dig_port->base.port);
>>>>>>>> -	if (intel_phy_is_combo(dev_priv, phy) &&
>>>>>>>> -	    (is_low_voltage_sku(dev_priv, phy) || !intel_dp_is_edp(intel_dp)))
>>>>>>>> +	if (intel_phy_is_combo(dev_priv, phy) && !intel_dp_is_edp(intel_dp))
>>>>>>>>     		return 540000;
>>>>>>>>     	return 810000;
>>>>>>>> @@ -321,23 +311,7 @@ static int icl_max_source_rate(struct intel_dp *intel_dp)
>>>>>>>>     static int ehl_max_source_rate(struct intel_dp *intel_dp)
>>>>>>>>     {
>>>>>>>> -	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>>>>>>>> -	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
>>>>>>>> -	enum phy phy = intel_port_to_phy(dev_priv, dig_port->base.port);
>>>>>>>> -
>>>>>>>> -	if (intel_dp_is_edp(intel_dp) || is_low_voltage_sku(dev_priv, phy))
>>>>>>>> -		return 540000;
>>>>>>>> -
>>>>>>>> -	return 810000;
>>>>>>>> -}
>>>>>>>> -
>>>>>>>> -static int dg1_max_source_rate(struct intel_dp *intel_dp)
>>>>>>>> -{
>>>>>>>> -	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>>>>>>>> -	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
>>>>>>>> -	enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
>>>>>>>> -
>>>>>>>> -	if (intel_phy_is_combo(i915, phy) && is_low_voltage_sku(i915, phy))
>>>>>>>> +	if (intel_dp_is_edp(intel_dp))
>>>>>>>>     		return 540000;
>>>>>>>>     	return 810000;
>>>>>>>> @@ -380,7 +354,7 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
>>>>>>>>     			max_rate = dg2_max_source_rate(intel_dp);
>>>>>>>>     		else if (IS_ALDERLAKE_P(dev_priv) || IS_ALDERLAKE_S(dev_priv) ||
>>>>>>>>     			 IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv))
>>>>>>>> -			max_rate = dg1_max_source_rate(intel_dp);
>>>>>>>> +			max_rate = 810000;
>>>>>>>>     		else if (IS_JSL_EHL(dev_priv))
>>>>>>>>     			max_rate = ehl_max_source_rate(intel_dp);
>>>>>>>>     		else
>>>>> -- 
>>>>> Jani Nikula, Intel Open Source Graphics Center
