Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F7BA590B65
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Aug 2022 06:59:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46509A5662;
	Fri, 12 Aug 2022 04:58:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A95339522F
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Aug 2022 04:58:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660280315; x=1691816315;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LUbvd3qowuUDRBD3HGpj/TJqALkucCo24FpPmD0P3OQ=;
 b=VIZe9mbg4IsUTZoHqkR0jN+lj+uiBV8qmKX2UTuJYYzk007pgAZt/QkJ
 16E7pqmni4jWFti0U408zcqOJGlNnGY7v6wW8qeMf4dPXllHv+TE9PzxD
 y0nhBJknpIK/W5+WXjcrDSOm7mqmOAQW74lXSj6BLOIypwqqLIB3yvq7u
 s/0jeEA9ETRePjW/yupq28PjOsq7KWVHmUtV3FAz2IcFIhArAqojKc/DL
 HMZi9ZKTuMGAVSxNzVs4y7lZgjYJoymZXCMuy74IhW/8bJJVoPqKpWydh
 tmiHhwmbQ8qTk0qNs5qXJwUfvP/Letrlb7l/+YdM4D1pX0DQ82MeZGBVd Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="274577568"
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="274577568"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 21:58:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="581954041"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP; 11 Aug 2022 21:58:34 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 11 Aug 2022 21:58:33 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 11 Aug 2022 21:58:33 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Thu, 11 Aug 2022 21:58:33 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Thu, 11 Aug 2022 21:58:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HnBfts4pwfAMY2SRsWU62PgDKFANw+5paIONEERwHFTcDETc7lrZQoaL+hOB0tye0GTJ7E6xWbgJ8Q9Ga62YVjRZUtctOc664q+fxTGVGAinAbZR15R1mVZazNI16Ffc5z82WlBn6VmcF3je+U3G1PKWDX5GQvppOEWguKDOHZF9qb0JEevGQMkZXqMV8bQBCRgbS5wsNVuPk0hUpHHkW9QQ9JBg1NAaQSmk9EBKLoMT+gW7OaDzYaWW7VMq4pZVbIlk+rnO30M1ULXlF2XUvuKZmKWs2jdNWA1iLgC8mfexKY+3XU+cAo3sPWUhyWCEtg/PotUdS1rTstDwYqbrHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2DJu6rEHAoYyorAAcITim+Fb+BJs3NZUIQ2fcW8jY+w=;
 b=H3JqsS+pi+scsQA+VYYuBor/Ib4GC5S6OkQLgzWdtz5W/6/MLFlD62J/ol/6cx+rKUkvtFrHk/PZnXH/ImMvelisLoWAxDdhMTTc3LgRYLhmPSoM4dFB8ZSneUUCw7h0S3nYR6gr3JxJpTCY7sIj+TTrJuWIFHkscktQlRdKebtyzvLKFTITLkvnCPDwKT3WgYhtNUIq04OXV6nRVIH0/o1OOzc/PCC2Zvk44O8F7TXGbA0duyqUIpveeV0N1Daan5nbcoAjjGXoXS/yYoTLTj/JOfL3duoLJhXHNPdQ448IhhFDTf/m3M4QjjkGq8OypJLzv53HHgvtRD7nc8QKMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by BN6PR1101MB2211.namprd11.prod.outlook.com (2603:10b6:405:51::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.16; Fri, 12 Aug
 2022 04:58:25 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::e8e1:12c7:5a6f:4f86]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::e8e1:12c7:5a6f:4f86%4]) with mapi id 15.20.5525.011; Fri, 12 Aug 2022
 04:58:25 +0000
Message-ID: <82e10ed3-efc0-e1ae-3c12-d6ff6fc691d2@intel.com>
Date: Fri, 12 Aug 2022 10:28:15 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.12.0
Content-Language: en-US
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20220811045945.2113431-1-ankit.k.nautiyal@intel.com>
 <DM6PR11MB31770EF1BA81D104ACE92D85BA679@DM6PR11MB3177.namprd11.prod.outlook.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <DM6PR11MB31770EF1BA81D104ACE92D85BA679@DM6PR11MB3177.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0103.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:9b::15) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9f56f4d1-4d62-46ff-a57e-08da7c1f499a
X-MS-TrafficTypeDiagnostic: BN6PR1101MB2211:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7M5HHPWNNrnuS/6xLJryi7SGVzTMBoEz2RP6MzWPXchdpJvlkAqT7Qa6hV79SQbcbmjTc788zGBJEWzhT2yvzoU8qSPlGRVpFnGF9uz5U5At3Hau67s7GApFBWPjv5uerkH1TxGa3XUV9UYHnjI8Eg4vvj3NydQwrmvBvQA+1C1TM9MXYXu2mspAOu5LBK1xZIQsCx8Rcg4EXawJQuiAwl/AQ7RDkkgp94N+OsL3t5SGOuBVfM1XzDwQMVXHufynPdDY+Kdp/finhLkK9aTBe7MhWGFjI93eGiDL6g2sn2mizt1HTJeP/5F8EfNW5ffkJEf9lvOx/VEi4r81HpOHwbwLg89Fb8lFMCh7eKypGQ94X17A7J4qSHid9N6LnOvIVcjDYB5+KAtvth65GOTyRabp+AgkcytKQgofFnaT4t3GNtHlg8D/Qz98JXNtZoV+JX4YijEYWWo3mDlRm1lR+ENUcEhWu2sKuxwJOqPg3WsS8hlfH5iWnL6KEEEjugGlMGNUHOyn866xAsIKtbOf74A3dBHVcZubJdCbueruIJ+6Wco72wP2RJHyGa/IQWpdpMugYd2F5tSAQmt+yj36dk645Pc7rXAcK9eTIjk5FSn6OIugq5QgbNeCyJNssTvgjpSqKfTtSRbT7ee6VVuxe4p19B/XYRrZZPr24QN7/phxmXN9Tc8s2n/+tYmmyVC4U270dV/yxw6cFwUavXrlbv6Io2rmQWxq70/1D52it7rAhxBN8/lZ4Yo1HxWOpysa5KO6QkqLC+VHhnibAUtaCg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(346002)(376002)(136003)(366004)(396003)(4326008)(316002)(83380400001)(66556008)(66476007)(66946007)(110136005)(31686004)(36756003)(41300700001)(2616005)(53546011)(6512007)(186003)(107886003)(6506007)(5660300002)(2906002)(8936002)(26005)(55236004)(8676002)(31696002)(6486002)(82960400001)(6666004)(966005)(478600001)(86362001)(38100700002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V1VCeVdXVHEvWkhwVTFpTnZKcnZWajNiYlZtL0wrZTU4eFhieVQxMjFGVkZW?=
 =?utf-8?B?UkxwWXBhemRkMGNURXpPdVRVd20vY3YxYlhCWnJVcGI5ZHM0VG9zRXFFeUlD?=
 =?utf-8?B?UXlJQ3VsYjdKUG0vZ0tXM0hxMytRWGlJQjNCVEZQSG9OTUJib0R1OTJqaGJO?=
 =?utf-8?B?alJCZWQwY0FSWnVnMTFCR1lUZ01SMFJod25QWjNnSjZ6OGZKaXZsVGMybEFG?=
 =?utf-8?B?NkJjajZpYmhnU3NZNEQ2WVl5aVdJemRiMlRpQ2lDVVdhc093dEJEYkc2emc0?=
 =?utf-8?B?RDFjRWs5V3NxU2YyK21sMi9CNzBKUlZJTmpvWjN3U25mbmt3RnN2bUVWNkZ5?=
 =?utf-8?B?NjUxTms1cmtSbHI2TWFLRWFYZU80TjNLL3p1Z0xCd21TcUVZeGlpM25GNXVa?=
 =?utf-8?B?RlMyKytWNHliNXp4WmtJYWR1My9CcTcvejlIL2tFZWlDanpqc2pPUkt1VHpj?=
 =?utf-8?B?OU52UC9KNXVmTVRFZ1ZYMEpNcFF0T2QwcEMzMjVpZ2sxS2hoM2VjZWV3VlhF?=
 =?utf-8?B?dUh1S0ZRSTVPUnkrVmhoallYOVYyb0ZsVzUyRlJxaWtaQ2FLYzByckk1MENr?=
 =?utf-8?B?MGRBOHdwNjhjSHdhMlFFNEtINmUyR3ZKM2ord3Q4cVVRNFdEbkgwWTVVRHdj?=
 =?utf-8?B?WC9Bem11M1h0Wis3SC80d1BxcU5NOTh1ZGFRR3htcDNKQ2NhK3NXOEhaRkxW?=
 =?utf-8?B?NmpGRUdxOTllVk1qK2pXNGQrdEhnU1F2OEdSWkJoMThJaVhSMTllNGdTUG8y?=
 =?utf-8?B?aUsvNHh6VWNTVzlwRWVEc0ZyNG00Ym84Nk9INTdMYi9JMnBIaHdlUzVSSG9r?=
 =?utf-8?B?RGZ5MzJMK0EzNnVRWURlSGd0TjI0SThkRUdmaHQxb1pFRW5RYnNOSGlWK05l?=
 =?utf-8?B?dm1YbEhvNU9zYUswd2hVQyt1Z0lwSmhhbEV5TnQ4RFhqUUxjaGxaWFJ1cW5l?=
 =?utf-8?B?UHczbWNaa0N3YXV2VkcvSURaNlRWOGhpdVFGRWVIalAzdis5ZmlET1ExTDBa?=
 =?utf-8?B?SFFZNVJCckVOYk1rZm91eCswdmI0UmRlNnhzQWdIQWRiME9lbzlMWFpueEFo?=
 =?utf-8?B?NENXbGZ1S09vSWd6cHFhK3FJQ3pKUjJNZngySGZiWHdHU3grb2JEQ1hWKzcy?=
 =?utf-8?B?aUVjZVpoL1JTdUwvQjdxeDN2eTVPbDFCYnRWaWpRUWw0N1NzRElZWUUreTdj?=
 =?utf-8?B?b3c3bUcxWElLeU56VFRhN0E2UnlYR1Q4dWJ5cTVlQmxoUnFsN0VZdTBCRnNp?=
 =?utf-8?B?OEpBaEo1a05hVDAxcjk5OW1hcEh6dnNkMDYxS2kvSkpPZWFwQU0veFhXZDM1?=
 =?utf-8?B?am54TG9EV2ZYTldJR3ZJWHU4QXRBUjEzUnplRTNjRm5vZmVOa01leUg0ZGZ0?=
 =?utf-8?B?TXhlTmQxTE81cng0UHF0WHdVRVo1R2FtL2pKTy9ldUVHM01MekVTZHRKN2dv?=
 =?utf-8?B?dkE4ZWVYWUE3YkJKV0ZERytFQVp4aFJ6NmNXVlNyancwem9DT2JzOXhYa0k0?=
 =?utf-8?B?L051SUhLM041aWY2T2JIMmZlWlkrenkwenpFWXppUnBpckhSOTJ1alMrcFIv?=
 =?utf-8?B?U2hRZTVMT0pvQ1hCbHlveDhtNTdQY3RuWC9NMkd5MTZENEJPbHJXTExKREts?=
 =?utf-8?B?WXBTUlc4cGxOVWVSR1JJU0oxRDFKRS82ajI4VWRPb2I4T243V0YvZ0J4aHN0?=
 =?utf-8?B?ZE9QeFpka3IyMlVrTFllZHJTTW90VHlBNFhqZHdwYVpEcVhJSHlaaUFLMXA5?=
 =?utf-8?B?enBJVWZHd20yQXE3Rk4vZmZ4Zmo4bll2aDBtM01rRUNQcWlSTWl3SEU1UU9k?=
 =?utf-8?B?ejB1aXFkY3J4b0dzWVo1Qzc1d1gzWDg3VHZsNG1tTGZEUFJuaHQrOHh4V3Vv?=
 =?utf-8?B?OVc5REFEQ2FYUlZkRGM2ZHVGYW9KbzBWa0VzRXFlWkFIVjNxZEVqYnVQV2Zp?=
 =?utf-8?B?MWtubTNEQ2VPSTFySlpabitGVFRGVDdONmpRWU56VHI0SDA5YjgxNGk2T0RZ?=
 =?utf-8?B?MEFRVjBZVXpjaW5wd25KeEtDaisrZlVJU1RPSDUreVIwclJLcUYxK2k1TEk5?=
 =?utf-8?B?eGJDQTNGSjF5RUZUbVIvYlBJQ3gxemFtM015bnIzdllUTkZYMGU3Q2tpek5Z?=
 =?utf-8?B?d1I5OG1jMG1ZbXdkR1hCRWRRaDcwZkZSZ3hoQ0Y1RFgydkZXWVZYY09UcExK?=
 =?utf-8?B?eWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f56f4d1-4d62-46ff-a57e-08da7c1f499a
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Aug 2022 04:58:25.0341 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 92RW4L2Ci1SnAxN1UKa6pD8qNcdSrucUqhvoMVWEdlTwaZpz7naZed8FAz0cmQsgkgD7d28Tb5cVxxmOAu6b4EH6gTYOC3YGQtHPPIH6G4E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR1101MB2211
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 0/4] Fix HFVSDB parsing
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
Cc: "Lankhorst, Maarten" <maarten.lankhorst@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Arun,

You are right, I missed to add  dri-devel here :(

I had send this series to dri-devel again.

Thanks & Regards,

Ankit

On 8/12/2022 9:01 AM, Murthy, Arun R wrote:
> I think this series will have to be posted to dri-devel as well.
>
> Thanks and Regards,
> Arun R Murthy
> -------------------
>
>> -----Original Message-----
>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ankit
>> Nautiyal
>> Sent: Thursday, August 11, 2022 10:30 AM
>> To: intel-gfx@lists.freedesktop.org
>> Cc: Lankhorst, Maarten <maarten.lankhorst@intel.com>
>> Subject: [Intel-gfx] [PATCH 0/4] Fix HFVSDB parsing
>>
>> Fix issues in HFVSDB parsing for DSC support.
>> Also minor refactoring in Logging.
>>
>> Split from original patch into a new series.
>> https://patchwork.freedesktop.org/patch/495193/
>>
>> Ankit Nautiyal (4):
>>    drm/edid: Fix minimum bpc supported with DSC1.2 for HDMI sink
>>    drm/edid: Split DSC parsing into separate function
>>    drm/edid: Refactor HFVSDB parsing for DSC1.2
>>    drm/edid: Avoid multiple log lines for HFVSDB parsing
>>
>>   drivers/gpu/drm/drm_edid.c | 153 +++++++++++++++++++++----------------
>>   1 file changed, 87 insertions(+), 66 deletions(-)
>>
>> --
>> 2.25.1
