Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA57C42D83F
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Oct 2021 13:33:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D928A6E0F4;
	Thu, 14 Oct 2021 11:33:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BB0F6E0F4
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Oct 2021 11:33:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10136"; a="227554745"
X-IronPort-AV: E=Sophos;i="5.85,372,1624345200"; d="scan'208";a="227554745"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2021 04:33:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,372,1624345200"; d="scan'208";a="548717637"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga004.fm.intel.com with ESMTP; 14 Oct 2021 04:33:06 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 14 Oct 2021 04:33:06 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 14 Oct 2021 04:33:05 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 14 Oct 2021 04:33:05 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 14 Oct 2021 04:33:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=etp7FTv8ipbXNurDTTygrUSxj15hJSz6lXgOZqoKuivlxfStUO0FBuHpMQy8aP2B1s4QxfSFB51EWjckivSGgXwCAk0evihDvTYaBm1ckFhFDxXMnx3puaGbTvtbDo1n9x/wQQTm5gK1xVJXuX/BijRGpHHoHS6oroYG8G/3tZMdCQCBdeC7+JlKJ/B3V7MySfC9qUNlozWG5FC0WUrpyS4jwjTgJjlNIVm7FKMrge7EH8zSgwssr80lOwLV04bgWsbm/ZWPAe6naccy8hn+SlvaWEwZr6ujGS3G+kp+8YTQleaqNcUPdGJtFePCfNspvwf+39A0R4b0nnPB0IcTng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=la+chuaHHjaEEtIv/wB6tPAvhntByoOtap/DFrd1YKc=;
 b=WZRfAWcdYaQUBzAcEXey0wfsw4aMJfzUvg1+OdqQWzyZq1+VJsacpypX9gKCJbdP1CblE+9odJLi9vtIYU/Cdx1lgsoiygHA5vjljgB4uPrH/OTaSgVxIlhgmcSHPNQsHmWOmRgb94f8gTfCGI07jtMtrTWYENtJs/0QYUlwGAsYpDnauVWfTXULNVRCGdicpe+b06moEaohVM3anyFs6BgQrrZ+De8o56WmKIW6beDhCCND5UujB3WMzI33fKwirjvd9hvHzX3HQJrhAYjwMk9f1HsDLRFJlchnFU7DKyZ12zDY8ZBMPSyu1Ls9ELVj6pXA4OdhhXxtbszQg0NJLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=la+chuaHHjaEEtIv/wB6tPAvhntByoOtap/DFrd1YKc=;
 b=cUHslvI4UAakMYKWr//iUJOhduhVZ8JFS2s16awRNk7EUqN58atTqa+myfML/i8U+7Gfiom+5x8XZ3q2DRj/6KGSeXNJDvvMmzzBoliuahQZUNhq6+AfCI7YKO/1O9bu0zd7jMENZfaqK+adF446EX5j0Mho91dnjCS5Kto5GzU=
Authentication-Results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5501.namprd11.prod.outlook.com (2603:10b6:5:39d::23)
 by DM6PR11MB3787.namprd11.prod.outlook.com (2603:10b6:5:143::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4587.25; Thu, 14 Oct
 2021 11:32:56 +0000
Received: from DM4PR11MB5501.namprd11.prod.outlook.com
 ([fe80::389d:c727:c71d:d869]) by DM4PR11MB5501.namprd11.prod.outlook.com
 ([fe80::389d:c727:c71d:d869%4]) with mapi id 15.20.4587.030; Thu, 14 Oct 2021
 11:32:56 +0000
To: Imre Deak <imre.deak@intel.com>
CC: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <uma.shankar@intel.com>, <animesh.manna@intel.com>
References: <20211005071531.2274972-1-ankit.k.nautiyal@intel.com>
 <87lf3728zx.fsf@intel.com> <a3b08a93-e583-8f61-ee04-a76b8800a798@intel.com>
 <87bl43221e.fsf@intel.com> <20211005153153.GA2847074@ideak-desk.fi.intel.com>
 <5e73ecc6-ea08-a6f0-d708-9ff0ea12c07c@intel.com>
 <20211013151915.GA9101@ideak-desk.fi.intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Message-ID: <7f9ba3b7-4e42-5866-0c7c-7852e9814259@intel.com>
Date: Thu, 14 Oct 2021 17:02:46 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.14.0
In-Reply-To: <20211013151915.GA9101@ideak-desk.fi.intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
X-ClientProxiedBy: BM1PR01CA0154.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:68::24) To DM4PR11MB5501.namprd11.prod.outlook.com
 (2603:10b6:5:39d::23)
MIME-Version: 1.0
Received: from [192.168.0.113] (49.207.212.12) by
 BM1PR01CA0154.INDPRD01.PROD.OUTLOOK.COM (2603:1096:b00:68::24) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4608.15 via Frontend Transport; Thu, 14 Oct 2021 11:32:54 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bacfb2ee-f58c-43fe-4de8-08d98f065e2e
X-MS-TrafficTypeDiagnostic: DM6PR11MB3787:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR11MB3787AC9006A5A12F4C5E9704CEB89@DM6PR11MB3787.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: CTl16uOXq+DOH5pbOEMflFtJkhXo8BLGtPqynJhbJNCqpH9NEyZjLUs/uAjsu8Plk8KCSklDHkYL9691VnP30e0jiyhdPxamlWc6QNbCi2m8fjk/pCQFxCrjHygEG8xwSyzqwkQBjtF5NTqLzxMFjeCnRu+Hg9srIHxbJgsLKF874VExTeCd04rgNSYyP6+U3axgO4Kg+HrH7gKwZ8gpKmSBa/5l9BpCldsP41IyPQgsMx9Zx9vfmS15ddegMg9eFOR7nUkIlhtCySBmePiEEgXTZBLLvsDHxd1+/iB0eBNUZin2wcuZv85cmq4c2wbIz/p0ne8TOBNqyr3P7DvO9QEPXNeW/i7UIESP1MsP5YqZGcmRyYcet+7IJyUzFRpsE1Z5lOcKHI3ULN+ajyP1q9mex+csBPGiPDRTur2gWESf4fZ9pbxI8NmtR/4CJKReSfkSMKLZ9MVyZgRKnhQR59zgiIhy5COBy5ixXeO4CNACRlOTl/IuRu59ilNln+zuroTQJ0m47RNKoDoSCeE2TDWms07is0OzepO0y3XgKxyuywpE4JSF4cd2ah1nw1p4V3zE0KhS6EqlpVVnwiVVx8cQ4+1d/lRt9IWMRql+HabSusqJHIzt5qkElL2zackoD7phML2oSnO50EaOi7iUQ0XMrP/M4kCuOndKhuLRb+zBuBWgvs4Z/eKILzR8C7Rf5p6RhFUyknZG0T7tAm/hwHOEGHDIX1gLOCRwKEc3wG4KeruN9ZqtnVD+Krx3lDg6
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5501.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(6636002)(956004)(2616005)(31696002)(53546011)(55236004)(82960400001)(186003)(1006002)(316002)(83380400001)(86362001)(37006003)(4326008)(107886003)(8936002)(6862004)(508600001)(26005)(36756003)(38100700002)(16576012)(30864003)(2906002)(5660300002)(66946007)(66476007)(8676002)(66556008)(6666004)(31686004)(6486002)(16453003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZUlQN1VqRXkzZm00Unc0ZU92S2Q2NmZhY2ZLUklteFUwaDBOcGF0cFNWVVZz?=
 =?utf-8?B?WGp4T3EyYzgzS3hlbWdqN3dwN2gwLzdCUFRpYkQwakRDbHZFT1FMSVI0NmxJ?=
 =?utf-8?B?cTBmc0Y5ZDFic3VYRzNhallBQ3daNnJsWkFQR0ZjTEtGOVRqZ3d2K05MeG9E?=
 =?utf-8?B?bENFR1dtL1BJdmdjbWtFMGlOSVA2aml3ZndJNFJLQnRhSG5BZW9keVc4Wm9l?=
 =?utf-8?B?bDg2R0ZWd1B6Wk0vYWN4cEZwOUhFK2xKR1JFaCtkM0JMK0dhNm1Ea1FJWlFH?=
 =?utf-8?B?TndKUTNFQVUrcWFWUjI3c3FTbDkyd3JhaHVSVEYvWEEwd3BQRW5rZXNNUytw?=
 =?utf-8?B?WUc1SmVjUW55QmhTR3BYTzdFTWd2RlY3bmRrVlJoejMxOG9HZXFBbGljeHpt?=
 =?utf-8?B?Q3Z2Y25jVDA5bm9aUU1pYlI3bzdqVzNQWmtUcTRqVXZua01ySWs0UTY2V3FQ?=
 =?utf-8?B?SlVmOHNGMWViR2J4R2U1V3BQVFJ3UU9ZWFpsNVQydTdEN2RiV0xrSjZxY0dj?=
 =?utf-8?B?MjhoaUdCdkl2YzBwbXkwTC9JM1YvaWJnWFRlTzl0Y2RhVXZJQk1Ba0lGTzFl?=
 =?utf-8?B?Ykxid3ZaNFQvaDN2OFBiZ05NTlFwL3lrUnRPMENJQ1VqT0JQOUN4Ulk3R0dY?=
 =?utf-8?B?YldZRHJnbEsrOU82Q0xmVHpKbU9Dbm4vSmpGT01rMGU2T2FMTzBhVzZHTm81?=
 =?utf-8?B?aWpzeVIwbUhNbjhLTVFKM1lKcm85eTlJWnpsMk8wSUlFUTZRTkpOaitZN1pH?=
 =?utf-8?B?ZnMrUUlxWHNrbTRJeTJmbDV0WXdVVmVjbXFHNjZMOW9QTEQvRkQrVURzYngz?=
 =?utf-8?B?eGkwdWc3OVhXSS9xWEx3TndEam9VcEdKQjNXQktOYko1R0hDZ3A3V0ZBUWI5?=
 =?utf-8?B?TkVZRTJhamR6T1RFMDIvUVhYM09tUllBb2g2bTdlSC9Cd1lCYVBmQXVTUkR6?=
 =?utf-8?B?TC8vSGk0OVhQbEVNK3hPYmh5dkxyL2xWbGp4dUozSFJJeUJaTWh1SEN6N2hW?=
 =?utf-8?B?dktOZWJudjJoK20zQlhnUjVPVDE5UXRTREw3TFpHV2xKaEMyK2lpdXlqSHF3?=
 =?utf-8?B?blNEeFhNZVhBdHY5WU1pYXFyMEdUTVBHL292OTNBTFJoUGYxTmd6WHlqbXdY?=
 =?utf-8?B?K2VpL2NqbjdxMEtyK0luNklUR3RGN21YN0hnVmhxUzVSSEZTUVBnWlViNHZN?=
 =?utf-8?B?L1ZTZ0FucDhpRHJxdkxVdDh6QkhqTi9pdVRMQVlkY291Z2tjWldTN1BJdG10?=
 =?utf-8?B?R1NISng2NFNESVRVTzV0dlZBakRMYWpkVHJEV2l0TGZwNE5qcVd3MU9VSjRp?=
 =?utf-8?B?UUpjOWxjQ0tHNWhoYks1bGh3ejRhdHAvV05kSlFrVHBFZWlnVXh0N0lQbmZ6?=
 =?utf-8?B?dnFEVXFza2diQ1pWR09GTGoxem1UYWNHVGhpR21TdHVvWjljR1JKMWxVQnBY?=
 =?utf-8?B?NVN1TzhncDh4Qm84OCtucm5ZZ2RxRU9oMko2Y3VubFd0azFUSy9IWDIzdzl5?=
 =?utf-8?B?ZFErV3VUallrODgzb1kzTVBaQUlDTytSRVR1OUNTbnpOWWxOZ2VidGZLNVZo?=
 =?utf-8?B?NnZ0dVFzbUxiWEFHK285c3ljdW9wY09IMFRNQjZ0SkZIcmdZdW84L1hsdjU4?=
 =?utf-8?B?bVNINGNFSnMybHBxaUNidkx5SU9Ua1hKd0dDYUNhUFlTUFpsM1hNQjRPcGNZ?=
 =?utf-8?B?b3VSSG16UjExZkp5dnhBR25VSEx0am5aNDZPNTc0b0JQUUJrT1ZQRWt4Wnln?=
 =?utf-8?Q?10DelZldUR5ycW3UJ1IhSmYRFryLs9eidHfXfb1?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bacfb2ee-f58c-43fe-4de8-08d98f065e2e
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5501.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Oct 2021 11:32:56.3449 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Bk8fAY4ZuU8ZhcWAPIV27PnnEuhsk4mZZrQ5Cu0jnwlBeTYULmA4tnO1zvFf33xSSBfIyG4rBixp/pAITk9wUVm8GkyMPt1ksPtKizDdpzg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3787
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


On 10/13/2021 8:49 PM, Imre Deak wrote:
> On Thu, Oct 07, 2021 at 01:19:25PM +0530, Nautiyal, Ankit K wrote:
>> On 10/5/2021 9:01 PM, Imre Deak wrote:
>>> On Tue, Oct 05, 2021 at 01:34:21PM +0300, Jani Nikula wrote:
>>>> Cc: Imre, I think you were involved in adding the checks.
>>> About ADL-S the spec says:
>>>
>>> Bspec 53597:
>>> Combo Port Maximum Speed:
>>> OEM must use VBT to specify a maximum that is tolerated by the board design.
>>>
>>> Combo Port HBR3 support:
>>> May require retimer on motherboard. The OEM must use VBT to limit the link rate to HBR2 if HBR3 not supported by motherboard.
>>>
>>> Bspec/49201:
>>> Combo Port HBR3/6.48GHz support:
>>> Only supported on SKUs with higher I/O voltage
>>>
>>> I take the above meaning that only high voltage SKUs support HBR3 and
>>> on those SKUs the OEM must limit this to HBR2 if HBR3 would require a
>>> retimer on the board, but the board doesn't have this.
>>>
>>> If the above isn't correct and low voltage SKUs also in fact support
>>> HBR3 (with retimers if necessary) then this should imo clarified at
>>> Bspec/49201. The VBT limit could be used then if present, ignoring the
>>> low voltage SKU readout.
>> Thanks Imre for the inputs.
>>
>> As you have mentioned note : rate >5.4 G supported only on High voltage I/O,
>> is mentioned for platforms like ICL, JSL and Display 12 platforms.
>>
>> I had again asked the HW team and VBT/GOP team whether we can safely rely on
>> VBT for the max rate for these platforms, without worrying about the SKU's
>> IO Voltage, and also requested them to update the Bspec page for the same.
>>
>> In response the Bspec pages 49201, 20598 are now updated with the note "OEM
>> must use VBT to specify a maximum that is tolerated by the board design" for
>> the rates above 5.4G.
> Ok, thanks for this, now the spec is closer to the proposed changes. On
> some platforms it's still unclear if the default max rate in the lack of
> a VBT limit is HBR2 or HBR3. The ADL-S overview at Bspec/53597 is clear
> now wrt. this:
>
> (*) "May require retimer on motherboard. The OEM must use VBT to limit the link rate
>      to HBR2 if HBR3 not supported by motherboard."
>
> ideally it should still clarify if the potential retimer requirement applies to
> both eDP and DP or only to DP.

Thanks Imre, point noted.

I realized: in general, the Platform Overview page and Platform Combo 
phy clocks pages seem to be not in sync on the combo phy rate in some 
places.

Earlier I was looking only on the clock pages for the combo phy rate 
information.

I will again clarify this with the H/W team and request for the below 
suggested modifications for the given platforms.

>
> I still see the followings to adjust in the spec so that it reflects
> the patch:
> - ICL
>    - bspec/20584:
>      "Increased IO voltage may be required to support HBR3 for the highest DisplayPort
>       and eDP resolutions."
>
>       should be changed to (*) above mentioning that HBR3 is only supported on
>       eDP.
>
>    - bspec/20598:
>      "Combo HBR3: OEM must use VBT to specify a miximum that is tolerated by the
>      board design."
>
>      The DP/HBR3 support on ICL should be removed.
>
>      For eDP/HBR3 on ICL the above comment should be changed to (*).
>
> - JSL
>    - bspec/32247:
>      "Increased IO voltage may be required to support HBR3 for the highest DisplayPort
>       resolutions."
>
>      should be removed/changed to (*).
>
>    - bspec/20598:
>      "OEM must use VBT to specify a miximum that is tolerated by the
>      board design."
>
>      should be changed to (*).
>
> - TGL:
>    - bspec/49201:
>      "Combo HBR3: OEM must use VBT to specify a miximum that is tolerated
>      by the board design."
>
>      The DP/HBR3 support should be removed, for eDP/HBR3 the above should
>      be changed to (*).
>
> - RKL:
>    - bspec/49201, 49204:
>      Remove the RKL tag, since there is a separate page for RKL.
>
>    - bspec/49202:
>      "Combo HBR3: Only supported on SKUs with higher I/O voltage"
>
>      should be changed to (*).
>
> - ADLS:
>    - bspec/49201, 49204:
>      The ADLS tag should be removed, since there is a separate page for ADLS.
>
>    - bspec/53720:
>      "Combo HBR3: OEM must use VBT to specify a miximum that is tolerated by the
>      board design."
>
>      should be changed to (*).
>
> - DG1:
>    - bspec/49205:
>      "Combo HBR3: Only supported on SKUs with higher I/O voltage"
>
>      should be changed to (*) above.
>
> - DG2:
>    - bspec/53657:
>      For Combo HBR3 (*) should be added.
>
>    - bspec/54034:
>      For Combo HBR3 (*) should be added.
>
> - ADLP:
>    - bspec/49185:
>      "Combo DP/HBR3: OEM must use VBT to specify a miximum that is tolerated by
>      the board design. An external re-timer may be needed."
>
>      should be changed to (*).
>
>
> Also could you add a debug print with the voltage configuration of combo
> PHYs somewhere in intel_combo_phy.c?

Yes, I can do that. I can add a debug print in 
icl_set_procmon_ref_values( ), where we are already reading the required 
register.

This gets called during combo_phy_init and combo_phy_verify phase, so we 
should be able to get this info for each combo PHY port.

Or otherwise, I can just print all combo phys voltage config together, 
once all are initialized.

Thanks again for the detailed explanation.


Regards,

Ankit

>
>>  From what I understand, we can depend upon the VBT's rate, and if there are
>> some low voltage I/O SKUs that do not support HBR3 rate, it should be
>> limited by the VBT.
>>
>> Thanks & Regards,
>>
>> Ankit
>>
>>>> BR,
>>>> Jani.
>>>>
>>>> On Tue, 05 Oct 2021, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com> wrote:
>>>>> On 10/5/2021 1:34 PM, Jani Nikula wrote:
>>>>>> On Tue, 05 Oct 2021, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>>>>>>> The low voltage sku check can be ignored as OEMs need to consider that
>>>>>>> when designing the board and then put any limits in VBT.
>>>>>> "can" or "must"?
>>>>>>
>>>>>> VBT has been notoriously buggy over the years, and we need to safeguard
>>>>>> against that. Are there any cases where having these checks are wrong?
>>>>> Hi Jani,
>>>>>
>>>>> Bspec page for Combo PHY PLL frequencies now says "OEM must use VBT to
>>>>> specify a maximum that is tolerated by the board design" for the rates
>>>>> above 5.4G.
>>>>>
>>>>> Earlier it was mentioned that rates > 5.4G were supported on SKUs with
>>>>> Higher I/O Voltage.
>>>>>
>>>>> There was an instance where on an ADL-S board, where VBT was showing as
>>>>> HBR3 supporting for a combo phy port,  but we were reading the IO
>>>>> voltage as 0.85V in is_low_voltage_sku()
>>>>>
>>>>> (Specifically, we were reading Register_PORT_COMP_DW3 bits 24-25 as 0)
>>>>> for a combo PHY port, and therefore we were limiting the BW to 5.4Gbps
>>>>>
>>>>> Due to this, 8k@60 mode was getting pruned on the board for that combo
>>>>> phy port. On removing the low_voltage_sku( ) the mode was able to be set
>>>>> properly.
>>>>>
>>>>> Incidentally, with Windows 8k@60 was also coming up on the same board on
>>>>> same port.
>>>>>
>>>>> So I had checked with HW team and GOP/VBT team if driver should consider
>>>>> the low voltage sku check.  As per their response we 'can' ignore the
>>>>> check and rely on the VBT, as OEM should limit the rate as per board
>>>>> design. The Bspec was also updated to reflect the same.
>>>>>
>>>>> So IMHO we need not limit the rate as per is_low_voltage_sku check, as
>>>>> this limiting of the rate through VBT is a must for the OEMs.
>>>>>
>>>>> I should perhaps change the wording of the commit message to convey the
>>>>> same.
>>>>>
>>>>>
>>>>> Thanks & Regards,
>>>>>
>>>>> Ankit
>>>>>
>>>>>
>>>>>> BR,
>>>>>> Jani.
>>>>>>
>>>>>>> Same is now changed in Bspec (53720).
>>>>>>>
>>>>>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>>>>> ---
>>>>>>>     drivers/gpu/drm/i915/display/intel_dp.c | 32 +++----------------------
>>>>>>>     1 file changed, 3 insertions(+), 29 deletions(-)
>>>>>>>
>>>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>>>>>>> index 74a657ae131a..75c364c3c88e 100644
>>>>>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>>>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>>>>>> @@ -297,23 +297,13 @@ static int dg2_max_source_rate(struct intel_dp *intel_dp)
>>>>>>>     	return intel_dp_is_edp(intel_dp) ? 810000 : 1350000;
>>>>>>>     }
>>>>>>> -static bool is_low_voltage_sku(struct drm_i915_private *i915, enum phy phy)
>>>>>>> -{
>>>>>>> -	u32 voltage;
>>>>>>> -
>>>>>>> -	voltage = intel_de_read(i915, ICL_PORT_COMP_DW3(phy)) & VOLTAGE_INFO_MASK;
>>>>>>> -
>>>>>>> -	return voltage == VOLTAGE_INFO_0_85V;
>>>>>>> -}
>>>>>>> -
>>>>>>>     static int icl_max_source_rate(struct intel_dp *intel_dp)
>>>>>>>     {
>>>>>>>     	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>>>>>>>     	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
>>>>>>>     	enum phy phy = intel_port_to_phy(dev_priv, dig_port->base.port);
>>>>>>> -	if (intel_phy_is_combo(dev_priv, phy) &&
>>>>>>> -	    (is_low_voltage_sku(dev_priv, phy) || !intel_dp_is_edp(intel_dp)))
>>>>>>> +	if (intel_phy_is_combo(dev_priv, phy) && !intel_dp_is_edp(intel_dp))
>>>>>>>     		return 540000;
>>>>>>>     	return 810000;
>>>>>>> @@ -321,23 +311,7 @@ static int icl_max_source_rate(struct intel_dp *intel_dp)
>>>>>>>     static int ehl_max_source_rate(struct intel_dp *intel_dp)
>>>>>>>     {
>>>>>>> -	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>>>>>>> -	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
>>>>>>> -	enum phy phy = intel_port_to_phy(dev_priv, dig_port->base.port);
>>>>>>> -
>>>>>>> -	if (intel_dp_is_edp(intel_dp) || is_low_voltage_sku(dev_priv, phy))
>>>>>>> -		return 540000;
>>>>>>> -
>>>>>>> -	return 810000;
>>>>>>> -}
>>>>>>> -
>>>>>>> -static int dg1_max_source_rate(struct intel_dp *intel_dp)
>>>>>>> -{
>>>>>>> -	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>>>>>>> -	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
>>>>>>> -	enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
>>>>>>> -
>>>>>>> -	if (intel_phy_is_combo(i915, phy) && is_low_voltage_sku(i915, phy))
>>>>>>> +	if (intel_dp_is_edp(intel_dp))
>>>>>>>     		return 540000;
>>>>>>>     	return 810000;
>>>>>>> @@ -380,7 +354,7 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
>>>>>>>     			max_rate = dg2_max_source_rate(intel_dp);
>>>>>>>     		else if (IS_ALDERLAKE_P(dev_priv) || IS_ALDERLAKE_S(dev_priv) ||
>>>>>>>     			 IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv))
>>>>>>> -			max_rate = dg1_max_source_rate(intel_dp);
>>>>>>> +			max_rate = 810000;
>>>>>>>     		else if (IS_JSL_EHL(dev_priv))
>>>>>>>     			max_rate = ehl_max_source_rate(intel_dp);
>>>>>>>     		else
>>>> -- 
>>>> Jani Nikula, Intel Open Source Graphics Center
