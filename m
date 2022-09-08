Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27CA95B1193
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Sep 2022 02:50:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8169510E914;
	Thu,  8 Sep 2022 00:50:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A53EC10E911
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Sep 2022 00:49:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662598195; x=1694134195;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=tsefFXYGuBj3xPb09oOZBDYj5FH9YJYLgOGewcsTfss=;
 b=LmOMCvQVrd0xz+oF/Bf4IGrgDGU+p/Wh69PBceGz3yNY3Yi9azK848jW
 iiMtq+nNwibH7vJyMASZ++WX0IGoBB3MpMmiELgFpdpulIJ4AFKR8c2iY
 DTQvZT8Qb3A4vH6yL770JtKSHPoyIXOEmVlP7oSO/rf5FeKdkz7KYyrwe
 NcivONL928N+0ayGlTZ3y01WLGSDybQ7Etnnnmg//AX8BshFaSh8PC2VC
 a3LmCO/ux++LoBVemZ979lOhMYh1RTapyouf427MoSp1tk/xTN6MG5U9X
 pQLl2G11GecrkXV6uRhPd4LX4yg5yJUgqXGWTisORnDDtjYQHV/oLhP/Q Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10463"; a="298369410"
X-IronPort-AV: E=Sophos;i="5.93,298,1654585200"; 
 d="scan'208,217";a="298369410"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 17:49:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,298,1654585200"; 
 d="scan'208,217";a="943124507"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP; 07 Sep 2022 17:49:54 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 7 Sep 2022 17:49:54 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 7 Sep 2022 17:49:53 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 7 Sep 2022 17:49:53 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 7 Sep 2022 17:49:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kit3I52epL4fpISlCidnguuL7MoyOqhl4jxtIufB/Zn727i/W9aoQkN+Kdc9eBfQYVW3GUQhBaYniNLLXMWAKUBbIBokKjLxW54g8KLnoHOxp4xeqoqCuaUI1O+2RuloGjncj9j3iLDPi9p6I3ewS+OIcYGH2ROk02YWPXR+tU1QzuAqgIqwnD8KOsMh+3S/rwdKKYICEmTPFaVgzOfhVfen/jZE62z8cGRHUhsOaJ+JttGQfy+yen5V8l0TQOCo03IqiM4CF/yK9vEq+05HM649jToeyJ8SxgeWlT2godMARVTMp1vvwYjqLCO1m/Q7IQlEGiIpifOSf06AA0nuGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2S6HkAe5QJuLjbnIpJxPC7fpgK7fPizkCrchRJ1qpm0=;
 b=GZdMzQrj/8S2Frq6KIjaWU1zTj8hii7V4e1DsttO4MelaZFr0iqpsJhka5ZoeBs2Y9Iw804TdxAQrwqxObKVMuFVQ0WGJU6GiTLqajJ6ILAD0ZEgQ/ls/3xnrOQzSaGFvFuAAOW5X8Po3iy/VvQBxaF/yxJbtbEN4LY5YhOGG3/Gile7HjWE8mBRMcXszcUj3uNzxt0nqZoP6QQ1sWX63gGEcFJG+X0VWGUJoDmYnmgkhOMRB2J4wI02VOvKFctzkbb/QQpov/p40j7nPiGR41Xhj37wK/pSPDltrhDAFhUUg0aqr7uBlxxmtiOI2NsjLkYMgcrPv5iBtxmRJqS/qA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 SA0PR11MB4717.namprd11.prod.outlook.com (2603:10b6:806:9f::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5612.14; Thu, 8 Sep 2022 00:49:50 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::1977:59e7:5a28:24e1]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::1977:59e7:5a28:24e1%9]) with mapi id 15.20.5588.017; Thu, 8 Sep 2022
 00:49:50 +0000
Content-Type: multipart/alternative;
 boundary="------------SS8ed4uEtep5osOYKxn6522d"
Message-ID: <0aaba35e-3e6d-93c0-6fdb-acc33081ed39@intel.com>
Date: Wed, 7 Sep 2022 17:49:47 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Tomas Winkler <tomas.winkler@intel.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, David Airlie <airlied@linux.ie>, Daniel Vetter
 <daniel@ffwll.ch>
References: <20220907215113.1596567-1-tomas.winkler@intel.com>
 <20220907215113.1596567-9-tomas.winkler@intel.com>
From: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
In-Reply-To: <20220907215113.1596567-9-tomas.winkler@intel.com>
X-ClientProxiedBy: SJ0PR13CA0050.namprd13.prod.outlook.com
 (2603:10b6:a03:2c2::25) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 74ae5cbf-50d5-4ce6-2ddb-08da91340945
X-MS-TrafficTypeDiagnostic: SA0PR11MB4717:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: n66BS2NkMEJxiDwbMUXl+F2vEDWW+Y3NWEd6NfS2E5WbOzAfTzyNv4hPRHHIIZlqEShY1HIfVgdQpCwe4QYwlhdq/WKRITNI/yRbZtTVqXbXW8SIulX+Lq/KjqHj7c/NPOoGWS1Zv8FKOlBEjN4YncpkqLcibbDEPtP9XLExe5bxmzPcE34QlK+oNBG54CqPDqrTDufYCUATYZabwdPPYOvG5ZU3YF413gwjibGyuB6Rw3eCgRnWXKDysxBeHddOhJJ2VbbhNEkVUDkDc3aytlZ7TfCDTOKJS6aCJZVCk/tlOSEXssCuLBVgUyo4aPEhwpDTMm3KGYuPrat2B/j5JgoUoYWj+fMa7R6qMXBjrvi2NU8Upd37d9vp52RDN9cX7Q9pev9xdHRj400KOeGTLYCXG4kpw/kca3MX53wbITiiUYs6bFfuG6jBntjGFBze2WlEaD3R4b3IpV1rLpMl5IZXMISEkSkLpxnJ2cZNwf6d693GjeHBg0Az55r9RFPj7C6/24vwIt7KEKX5n2jcT7N+4OOQ0WOmqq8bv1XSztIo8lpXkK1wzmgdrvVjRVYbUyHv+Pp6WypC5rS20eXr4uDIaR9yp+5KrVvEi653c2ZbA4I7szODIRr9WwthMY9ckt3HxEBs89brapDGPwarqbn0bboopcuCZSf2F8qX15GVH3CnnpYXXGMEjU2KnVPHadhio1/xps3JUWZShHCaK1OabHAYynjfcKrE0BrST4SaIg/bWyLOl1iDRcp1GK+7l9gN8D777gRuahhYi+BEEEAX6Y5V8cZ0hRXc1IgxVJc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(346002)(366004)(376002)(39860400002)(396003)(41300700001)(8936002)(2616005)(26005)(6512007)(53546011)(2906002)(6666004)(5660300002)(107886003)(31696002)(6506007)(38100700002)(30864003)(82960400001)(33964004)(186003)(83380400001)(66476007)(66556008)(66946007)(8676002)(4326008)(86362001)(478600001)(110136005)(54906003)(31686004)(6486002)(316002)(36756003)(45980500001)(43740500002)(579004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K0JqRGs1QitWYlkxMlY2VWdZQmRHNXdsL04vbWJtamswTCtHaW5BTGI0cXQr?=
 =?utf-8?B?TjB0OS94UTMzTGtESFh3NldxV1o3Mm5SR0hGbU0rWFZXVWtCMGlqUmNkZ2pE?=
 =?utf-8?B?ZmJsUXV3ZStiaVNtY0NObUJDcmZqQzN1RTE1Y1drdCs2R3NtbDhab1lteXAr?=
 =?utf-8?B?T2EzdVl1TkltQW95bjBxMnVJRkROeHhXK0ZVclViRW9MYUU4Q015VmxIWFNw?=
 =?utf-8?B?ZDZtM3hzd0dCd1UxWVJXbEdvb2NkRVZ2S1RLR29pSm5aOHZKQUJaVHpkTEVF?=
 =?utf-8?B?dVMrNGtkaHZIZWpoUGJjZEp1b0JYQzNPZzlPbHpEMEhWNTNWTWNOK1lUNHJB?=
 =?utf-8?B?UjFhRlc1VktMMjhudWVaQjZHSTNwN1lRSzdWVHRZUWVIbEprQ0FjbERaSFJj?=
 =?utf-8?B?ZXhhcVVSaHdZUkFSNm5hM1MxeXdBV0lBOW9QM0lkdHFUcmM0NDBDNWh1aC9p?=
 =?utf-8?B?K0tmcnpVSXdUcW5Od3gvc1MzSmxReU1xd1QrbTQ4b0lXUDVXdTU3b0ZPV00w?=
 =?utf-8?B?SzB3bjNEdm9CeFZ6ZmJHeHJXaFEyMS8zRVNSSVJUc3QyYlZpZ21rRUZtYjBS?=
 =?utf-8?B?M1V3YlJRT1h6eGZDdnFkMzN3QzJsVjQ3d25DcWR6OVhBeFl1R1hkeE9Fd0NN?=
 =?utf-8?B?L0tXaFFxVlNrZ3kvdHRvUFM3M2hGWkwxTzczSkZTSG1oNUU5eExpWHBrNE9P?=
 =?utf-8?B?VFF5MW00UkxYTzRmbzZ3T1BvZlFoaHJkT1JDMmx6QUlFOHlGelFzWGZiQnB6?=
 =?utf-8?B?YmVqbnlFU0NFNHBZMmxhMGRXZWRBUGV4VXpUWEl3ZFFRV0NhaEppM0pPMGVG?=
 =?utf-8?B?RjRITWpnWUFTaGlUbDdxd1V2S3ZzUGUzbG9rQStYSlR4ZUh4ZUc5MTBTUWVi?=
 =?utf-8?B?eW1FZlJIMVUreVIvQXUwaTV4T1BQdlBzRm96bXZ6MWJSZjlkcVRUcWs4amJv?=
 =?utf-8?B?Sml3TW82RUpjeDU1a21zUEVVeTVSUHgrakQ2S0pUb1N0UkpmME5ReGtNdjBv?=
 =?utf-8?B?NTd1eHNFT202bFZ6Z2RYbko2TTJWYW5DeENxdXZydDBKMEpNSEh3MFBXOGVx?=
 =?utf-8?B?Tk03YzYyQ09ZWit5Z1diNVpUeEtRRUtSL2hEVVdkZzFnZVhSejdPNHgycDNJ?=
 =?utf-8?B?Y1cwc1lCb1pLUWFkSVBlL3QrVkt3ZVEzN0lZd20xa1NMMHB5c2FZRGlqUm55?=
 =?utf-8?B?WUJoKzJHWHlLVzN4ZXNiaW9jdkVGWHFyUjUycGJVdXdBYnh1bUpzVnBQamo0?=
 =?utf-8?B?T0x4cGpYQm1TRHNHS1g3TjhTcXZNeWROSzNxSFdKbkVuZ3RyNm5nc3FQdzhE?=
 =?utf-8?B?UmU2b0dIdUpDSms5UE9ZMUJqQVRnNFIwZUNiM21IUkd4L0VGNUFLMDBSMW5x?=
 =?utf-8?B?ZGQxRlhoY3Blc0poelRrRlR3SzJEdWZ3TDI5K0R3RU9SaFF2NTlKZFR4bVA1?=
 =?utf-8?B?TENaWklzM09VSmZobnBLVEN6VUhOb1hRU2V6UWRjQlJOV0ZSNlM5cUc3SXE0?=
 =?utf-8?B?b3YxSUxWZHhKcC9NSHZYTmppaXQzeDY1bk5qeUg2RlBOOE9ydmtEaWN5M2FF?=
 =?utf-8?B?dkR0QXpwekJxVWNyQzlOUjdldWFvWE14QkZHZmJaRzJZaVJTdzVoK0pONitH?=
 =?utf-8?B?WjJ5Yks2bGVZMEo1eGtlQ0NSazB3YzY2SmdRaDdPZ3NOS2thZklnUk0yN2k1?=
 =?utf-8?B?amoxanpIMVZ3N1RRZHNLdlZGcktaRWM4SndzTlQwWmFjS3ZDRGN6Snl6V1Uw?=
 =?utf-8?B?RkVGNk9kYm16TW1kREZDVWUyYkdkU01vZVRFeUd4ZjJMY1ZKcjlWamJnVzdP?=
 =?utf-8?B?dnRaMVRsZk5vajU3aE8rRnVXOURnK3VKLzFqS1ZraXNSamtoeWp6b1p4d21m?=
 =?utf-8?B?L1YrTEgwRUVGWFFYeWJlYkhOeUVrZkx5UGRnTGRsQVhCSGtCb3FxMjVxdWZJ?=
 =?utf-8?B?VU5YVTZmd0tDaGhHb096a256Z0ZjVVNhM3BtYmllSzlJbUw1MkxuYUVuZmRy?=
 =?utf-8?B?Zk1CR3krYURSUWhUY0RzOEVJSHBINTlRUXlScEtZaHFaU2YrQkkybWgvY0pL?=
 =?utf-8?B?WkZCc2ZMYmpkYldhd2NLMnRRQjJjY2tkUFpXZ0IvY1kvOG0wc2VqZTFWaDR5?=
 =?utf-8?B?Mlc2R0RvYS8wMlZiYjZRNU9FRnhnUWpjb3ZITmZ3UVFUTkFUYVJRMHpCODhK?=
 =?utf-8?Q?3NQI9NwSpZLD5CcqbJvWuf8=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 74ae5cbf-50d5-4ce6-2ddb-08da91340945
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Sep 2022 00:49:50.8245 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YS06Bjnm55TFFlUrNufJSNE42Ai3zmr4fCHH+k6MKdLJt8wdevsN+0Fb20s0fB8IpWVR5qiH6aIVZGGNWCCibUE8Pc8GTIDjvOpYmJpmaMU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4717
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v9 08/16] mei: extend timeouts on slow
 devices
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
Cc: Vitaly Lubart <vitaly.lubart@intel.com>, intel-gfx@lists.freedesktop.org,
 Alexander Usyskin <alexander.usyskin@intel.com>, linux-kernel@vger.kernel.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--------------SS8ed4uEtep5osOYKxn6522d
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit



On 9/7/2022 2:51 PM, Tomas Winkler wrote:
> From: Alexander Usyskin<alexander.usyskin@intel.com>
>
> Parametrize operational timeouts in order
> to support slow firmware on some graphics devices.
>
>
> Signed-off-by: Alexander Usyskin<alexander.usyskin@intel.com>
> Signed-off-by: Tomas Winkler<tomas.winkler@intel.com>

|Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com> 
Daniele |


> ---
> V8:
> 1. Update copyright date
> 2. Fix pgi->d0i3 timeout in mei_me_d0i3_enter_sync()
> V9:
> 1. Revert mei_me_d0i3_enter_sync() fix
> 2. Fix pgi->d0i3 timeout in mei_me_d0i3_exit_sync()
>
>   drivers/misc/mei/bus-fixup.c |  5 ++---
>   drivers/misc/mei/client.c    | 16 ++++++++--------
>   drivers/misc/mei/gsc-me.c    |  2 +-
>   drivers/misc/mei/hbm.c       | 14 +++++++-------
>   drivers/misc/mei/hw-me.c     | 30 ++++++++++++++++--------------
>   drivers/misc/mei/hw-me.h     |  2 +-
>   drivers/misc/mei/hw-txe.c    |  4 ++--
>   drivers/misc/mei/hw.h        |  7 ++++++-
>   drivers/misc/mei/init.c      | 19 ++++++++++++++++++-
>   drivers/misc/mei/main.c      |  4 ++--
>   drivers/misc/mei/mei_dev.h   | 18 +++++++++++++++++-
>   drivers/misc/mei/pci-me.c    |  4 ++--
>   12 files changed, 82 insertions(+), 43 deletions(-)
>
> diff --git a/drivers/misc/mei/bus-fixup.c b/drivers/misc/mei/bus-fixup.c
> index 59506ba6fc48..344598fcf8e9 100644
> --- a/drivers/misc/mei/bus-fixup.c
> +++ b/drivers/misc/mei/bus-fixup.c
> @@ -1,6 +1,6 @@
>   // SPDX-License-Identifier: GPL-2.0
>   /*
> - * Copyright (c) 2013-2020, Intel Corporation. All rights reserved.
> + * Copyright (c) 2013-2022, Intel Corporation. All rights reserved.
>    * Intel Management Engine Interface (Intel MEI) Linux driver
>    */
>   
> @@ -164,7 +164,6 @@ static int mei_osver(struct mei_cl_device *cldev)
>   			    sizeof(struct mkhi_fw_ver))
>   #define MKHI_FWVER_LEN(__num) (sizeof(struct mkhi_msg_hdr) + \
>   			       sizeof(struct mkhi_fw_ver_block) * (__num))
> -#define MKHI_RCV_TIMEOUT 500 /* receive timeout in msec */
>   static int mei_fwver(struct mei_cl_device *cldev)
>   {
>   	char buf[MKHI_FWVER_BUF_LEN];
> @@ -187,7 +186,7 @@ static int mei_fwver(struct mei_cl_device *cldev)
>   
>   	ret = 0;
>   	bytes_recv = __mei_cl_recv(cldev->cl, buf, sizeof(buf), NULL, 0,
> -				   MKHI_RCV_TIMEOUT);
> +				   cldev->bus->timeouts.mkhi_recv);
>   	if (bytes_recv < 0 || (size_t)bytes_recv < MKHI_FWVER_LEN(1)) {
>   		/*
>   		 * Should be at least one version block,
> diff --git a/drivers/misc/mei/client.c b/drivers/misc/mei/client.c
> index 31264ab2eb13..0b2fbe1335a7 100644
> --- a/drivers/misc/mei/client.c
> +++ b/drivers/misc/mei/client.c
> @@ -1,6 +1,6 @@
>   // SPDX-License-Identifier: GPL-2.0
>   /*
> - * Copyright (c) 2003-2020, Intel Corporation. All rights reserved.
> + * Copyright (c) 2003-2022, Intel Corporation. All rights reserved.
>    * Intel Management Engine Interface (Intel MEI) Linux driver
>    */
>   
> @@ -870,7 +870,7 @@ static int mei_cl_send_disconnect(struct mei_cl *cl, struct mei_cl_cb *cb)
>   	}
>   
>   	list_move_tail(&cb->list, &dev->ctrl_rd_list);
> -	cl->timer_count = MEI_CONNECT_TIMEOUT;
> +	cl->timer_count = dev->timeouts.connect;
>   	mei_schedule_stall_timer(dev);
>   
>   	return 0;
> @@ -945,7 +945,7 @@ static int __mei_cl_disconnect(struct mei_cl *cl)
>   	wait_event_timeout(cl->wait,
>   			   cl->state == MEI_FILE_DISCONNECT_REPLY ||
>   			   cl->state == MEI_FILE_DISCONNECTED,
> -			   mei_secs_to_jiffies(MEI_CL_CONNECT_TIMEOUT));
> +			   dev->timeouts.cl_connect);
>   	mutex_lock(&dev->device_lock);
>   
>   	rets = cl->status;
> @@ -1065,7 +1065,7 @@ static int mei_cl_send_connect(struct mei_cl *cl, struct mei_cl_cb *cb)
>   	}
>   
>   	list_move_tail(&cb->list, &dev->ctrl_rd_list);
> -	cl->timer_count = MEI_CONNECT_TIMEOUT;
> +	cl->timer_count = dev->timeouts.connect;
>   	mei_schedule_stall_timer(dev);
>   	return 0;
>   }
> @@ -1164,7 +1164,7 @@ int mei_cl_connect(struct mei_cl *cl, struct mei_me_client *me_cl,
>   			 cl->state == MEI_FILE_DISCONNECTED ||
>   			 cl->state == MEI_FILE_DISCONNECT_REQUIRED ||
>   			 cl->state == MEI_FILE_DISCONNECT_REPLY),
> -			mei_secs_to_jiffies(MEI_CL_CONNECT_TIMEOUT));
> +			dev->timeouts.cl_connect);
>   	mutex_lock(&dev->device_lock);
>   
>   	if (!mei_cl_is_connected(cl)) {
> @@ -1562,7 +1562,7 @@ int mei_cl_notify_request(struct mei_cl *cl,
>   			   cl->notify_en == request ||
>   			   cl->status ||
>   			   !mei_cl_is_connected(cl),
> -			   mei_secs_to_jiffies(MEI_CL_CONNECT_TIMEOUT));
> +			   dev->timeouts.cl_connect);
>   	mutex_lock(&dev->device_lock);
>   
>   	if (cl->notify_en != request && !cl->status)
> @@ -2336,7 +2336,7 @@ int mei_cl_dma_alloc_and_map(struct mei_cl *cl, const struct file *fp,
>   	mutex_unlock(&dev->device_lock);
>   	wait_event_timeout(cl->wait,
>   			   cl->dma_mapped || cl->status,
> -			   mei_secs_to_jiffies(MEI_CL_CONNECT_TIMEOUT));
> +			   dev->timeouts.cl_connect);
>   	mutex_lock(&dev->device_lock);
>   
>   	if (!cl->dma_mapped && !cl->status)
> @@ -2415,7 +2415,7 @@ int mei_cl_dma_unmap(struct mei_cl *cl, const struct file *fp)
>   	mutex_unlock(&dev->device_lock);
>   	wait_event_timeout(cl->wait,
>   			   !cl->dma_mapped || cl->status,
> -			   mei_secs_to_jiffies(MEI_CL_CONNECT_TIMEOUT));
> +			   dev->timeouts.cl_connect);
>   	mutex_lock(&dev->device_lock);
>   
>   	if (cl->dma_mapped && !cl->status)
> diff --git a/drivers/misc/mei/gsc-me.c b/drivers/misc/mei/gsc-me.c
> index 2caba3a9ac35..bfa6154b93e2 100644
> --- a/drivers/misc/mei/gsc-me.c
> +++ b/drivers/misc/mei/gsc-me.c
> @@ -48,7 +48,7 @@ static int mei_gsc_probe(struct auxiliary_device *aux_dev,
>   
>   	device = &aux_dev->dev;
>   
> -	dev = mei_me_dev_init(device, cfg);
> +	dev = mei_me_dev_init(device, cfg, adev->slow_firmware);
>   	if (!dev) {
>   		ret = -ENOMEM;
>   		goto err;
> diff --git a/drivers/misc/mei/hbm.c b/drivers/misc/mei/hbm.c
> index cf2b8261da14..de712cbf5d07 100644
> --- a/drivers/misc/mei/hbm.c
> +++ b/drivers/misc/mei/hbm.c
> @@ -1,6 +1,6 @@
>   // SPDX-License-Identifier: GPL-2.0
>   /*
> - * Copyright (c) 2003-2020, Intel Corporation. All rights reserved.
> + * Copyright (c) 2003-2022, Intel Corporation. All rights reserved.
>    * Intel Management Engine Interface (Intel MEI) Linux driver
>    */
>   #include <linux/export.h>
> @@ -232,7 +232,7 @@ int mei_hbm_start_wait(struct mei_device *dev)
>   	mutex_unlock(&dev->device_lock);
>   	ret = wait_event_timeout(dev->wait_hbm_start,
>   			dev->hbm_state != MEI_HBM_STARTING,
> -			mei_secs_to_jiffies(MEI_HBM_TIMEOUT));
> +			dev->timeouts.hbm);
>   	mutex_lock(&dev->device_lock);
>   
>   	if (ret == 0 && (dev->hbm_state <= MEI_HBM_STARTING)) {
> @@ -275,7 +275,7 @@ int mei_hbm_start_req(struct mei_device *dev)
>   	}
>   
>   	dev->hbm_state = MEI_HBM_STARTING;
> -	dev->init_clients_timer = MEI_CLIENTS_INIT_TIMEOUT;
> +	dev->init_clients_timer = dev->timeouts.client_init;
>   	mei_schedule_stall_timer(dev);
>   	return 0;
>   }
> @@ -316,7 +316,7 @@ static int mei_hbm_dma_setup_req(struct mei_device *dev)
>   	}
>   
>   	dev->hbm_state = MEI_HBM_DR_SETUP;
> -	dev->init_clients_timer = MEI_CLIENTS_INIT_TIMEOUT;
> +	dev->init_clients_timer = dev->timeouts.client_init;
>   	mei_schedule_stall_timer(dev);
>   	return 0;
>   }
> @@ -351,7 +351,7 @@ static int mei_hbm_capabilities_req(struct mei_device *dev)
>   	}
>   
>   	dev->hbm_state = MEI_HBM_CAP_SETUP;
> -	dev->init_clients_timer = MEI_CLIENTS_INIT_TIMEOUT;
> +	dev->init_clients_timer = dev->timeouts.client_init;
>   	mei_schedule_stall_timer(dev);
>   	return 0;
>   }
> @@ -385,7 +385,7 @@ static int mei_hbm_enum_clients_req(struct mei_device *dev)
>   		return ret;
>   	}
>   	dev->hbm_state = MEI_HBM_ENUM_CLIENTS;
> -	dev->init_clients_timer = MEI_CLIENTS_INIT_TIMEOUT;
> +	dev->init_clients_timer = dev->timeouts.client_init;
>   	mei_schedule_stall_timer(dev);
>   	return 0;
>   }
> @@ -751,7 +751,7 @@ static int mei_hbm_prop_req(struct mei_device *dev, unsigned long start_idx)
>   		return ret;
>   	}
>   
> -	dev->init_clients_timer = MEI_CLIENTS_INIT_TIMEOUT;
> +	dev->init_clients_timer = dev->timeouts.client_init;
>   	mei_schedule_stall_timer(dev);
>   
>   	return 0;
> diff --git a/drivers/misc/mei/hw-me.c b/drivers/misc/mei/hw-me.c
> index 23ad53efbcb7..8f1c5ff24688 100644
> --- a/drivers/misc/mei/hw-me.c
> +++ b/drivers/misc/mei/hw-me.c
> @@ -445,7 +445,7 @@ static int mei_me_hw_ready_wait(struct mei_device *dev)
>   	mutex_unlock(&dev->device_lock);
>   	wait_event_timeout(dev->wait_hw_ready,
>   			dev->recvd_hw_ready,
> -			mei_secs_to_jiffies(MEI_HW_READY_TIMEOUT));
> +			dev->timeouts.hw_ready);
>   	mutex_lock(&dev->device_lock);
>   	if (!dev->recvd_hw_ready) {
>   		dev_err(dev->dev, "wait hw ready failed\n");
> @@ -707,7 +707,6 @@ static void mei_me_pg_unset(struct mei_device *dev)
>   static int mei_me_pg_legacy_enter_sync(struct mei_device *dev)
>   {
>   	struct mei_me_hw *hw = to_me_hw(dev);
> -	unsigned long timeout = mei_secs_to_jiffies(MEI_PGI_TIMEOUT);
>   	int ret;
>   
>   	dev->pg_event = MEI_PG_EVENT_WAIT;
> @@ -718,7 +717,8 @@ static int mei_me_pg_legacy_enter_sync(struct mei_device *dev)
>   
>   	mutex_unlock(&dev->device_lock);
>   	wait_event_timeout(dev->wait_pg,
> -		dev->pg_event == MEI_PG_EVENT_RECEIVED, timeout);
> +		dev->pg_event == MEI_PG_EVENT_RECEIVED,
> +		dev->timeouts.pgi);
>   	mutex_lock(&dev->device_lock);
>   
>   	if (dev->pg_event == MEI_PG_EVENT_RECEIVED) {
> @@ -744,7 +744,6 @@ static int mei_me_pg_legacy_enter_sync(struct mei_device *dev)
>   static int mei_me_pg_legacy_exit_sync(struct mei_device *dev)
>   {
>   	struct mei_me_hw *hw = to_me_hw(dev);
> -	unsigned long timeout = mei_secs_to_jiffies(MEI_PGI_TIMEOUT);
>   	int ret;
>   
>   	if (dev->pg_event == MEI_PG_EVENT_RECEIVED)
> @@ -756,7 +755,8 @@ static int mei_me_pg_legacy_exit_sync(struct mei_device *dev)
>   
>   	mutex_unlock(&dev->device_lock);
>   	wait_event_timeout(dev->wait_pg,
> -		dev->pg_event == MEI_PG_EVENT_RECEIVED, timeout);
> +		dev->pg_event == MEI_PG_EVENT_RECEIVED,
> +		dev->timeouts.pgi);
>   	mutex_lock(&dev->device_lock);
>   
>   reply:
> @@ -772,7 +772,8 @@ static int mei_me_pg_legacy_exit_sync(struct mei_device *dev)
>   
>   	mutex_unlock(&dev->device_lock);
>   	wait_event_timeout(dev->wait_pg,
> -		dev->pg_event == MEI_PG_EVENT_INTR_RECEIVED, timeout);
> +		dev->pg_event == MEI_PG_EVENT_INTR_RECEIVED,
> +		dev->timeouts.pgi);
>   	mutex_lock(&dev->device_lock);
>   
>   	if (dev->pg_event == MEI_PG_EVENT_INTR_RECEIVED)
> @@ -887,8 +888,6 @@ static u32 mei_me_d0i3_unset(struct mei_device *dev)
>   static int mei_me_d0i3_enter_sync(struct mei_device *dev)
>   {
>   	struct mei_me_hw *hw = to_me_hw(dev);
> -	unsigned long d0i3_timeout = mei_secs_to_jiffies(MEI_D0I3_TIMEOUT);
> -	unsigned long pgi_timeout = mei_secs_to_jiffies(MEI_PGI_TIMEOUT);
>   	int ret;
>   	u32 reg;
>   
> @@ -910,7 +909,8 @@ static int mei_me_d0i3_enter_sync(struct mei_device *dev)
>   
>   	mutex_unlock(&dev->device_lock);
>   	wait_event_timeout(dev->wait_pg,
> -		dev->pg_event == MEI_PG_EVENT_RECEIVED, pgi_timeout);
> +		dev->pg_event == MEI_PG_EVENT_RECEIVED,
> +		dev->timeouts.pgi);
>   	mutex_lock(&dev->device_lock);
>   
>   	if (dev->pg_event != MEI_PG_EVENT_RECEIVED) {
> @@ -930,7 +930,8 @@ static int mei_me_d0i3_enter_sync(struct mei_device *dev)
>   
>   	mutex_unlock(&dev->device_lock);
>   	wait_event_timeout(dev->wait_pg,
> -		dev->pg_event == MEI_PG_EVENT_INTR_RECEIVED, d0i3_timeout);
> +		dev->pg_event == MEI_PG_EVENT_INTR_RECEIVED,
> +		dev->timeouts.d0i3);
>   	mutex_lock(&dev->device_lock);
>   
>   	if (dev->pg_event != MEI_PG_EVENT_INTR_RECEIVED) {
> @@ -990,7 +991,6 @@ static int mei_me_d0i3_enter(struct mei_device *dev)
>   static int mei_me_d0i3_exit_sync(struct mei_device *dev)
>   {
>   	struct mei_me_hw *hw = to_me_hw(dev);
> -	unsigned long timeout = mei_secs_to_jiffies(MEI_D0I3_TIMEOUT);
>   	int ret;
>   	u32 reg;
>   
> @@ -1013,7 +1013,8 @@ static int mei_me_d0i3_exit_sync(struct mei_device *dev)
>   
>   	mutex_unlock(&dev->device_lock);
>   	wait_event_timeout(dev->wait_pg,
> -		dev->pg_event == MEI_PG_EVENT_INTR_RECEIVED, timeout);
> +		dev->pg_event == MEI_PG_EVENT_INTR_RECEIVED,
> +		dev->timeouts.d0i3);
>   	mutex_lock(&dev->device_lock);
>   
>   	if (dev->pg_event != MEI_PG_EVENT_INTR_RECEIVED) {
> @@ -1706,11 +1707,12 @@ EXPORT_SYMBOL_GPL(mei_me_get_cfg);
>    *
>    * @parent: device associated with physical device (pci/platform)
>    * @cfg: per device generation config
> + * @slow_fw: configure longer timeouts as FW is slow
>    *
>    * Return: The mei_device pointer on success, NULL on failure.
>    */
>   struct mei_device *mei_me_dev_init(struct device *parent,
> -				   const struct mei_cfg *cfg)
> +				   const struct mei_cfg *cfg, bool slow_fw)
>   {
>   	struct mei_device *dev;
>   	struct mei_me_hw *hw;
> @@ -1725,7 +1727,7 @@ struct mei_device *mei_me_dev_init(struct device *parent,
>   	for (i = 0; i < DMA_DSCR_NUM; i++)
>   		dev->dr_dscr[i].size = cfg->dma_size[i];
>   
> -	mei_device_init(dev, parent, &mei_me_hw_ops);
> +	mei_device_init(dev, parent, slow_fw, &mei_me_hw_ops);
>   	hw->cfg = cfg;
>   
>   	dev->fw_f_fw_ver_supported = cfg->fw_ver_supported;
> diff --git a/drivers/misc/mei/hw-me.h b/drivers/misc/mei/hw-me.h
> index 6256b36bdafd..95cf830b7c7b 100644
> --- a/drivers/misc/mei/hw-me.h
> +++ b/drivers/misc/mei/hw-me.h
> @@ -132,7 +132,7 @@ enum mei_cfg_idx {
>   const struct mei_cfg *mei_me_get_cfg(kernel_ulong_t idx);
>   
>   struct mei_device *mei_me_dev_init(struct device *parent,
> -				   const struct mei_cfg *cfg);
> +				   const struct mei_cfg *cfg, bool slow_fw);
>   
>   int mei_me_pg_enter_sync(struct mei_device *dev);
>   int mei_me_pg_exit_sync(struct mei_device *dev);
> diff --git a/drivers/misc/mei/hw-txe.c b/drivers/misc/mei/hw-txe.c
> index 00652c137cc7..9862c6cd3e32 100644
> --- a/drivers/misc/mei/hw-txe.c
> +++ b/drivers/misc/mei/hw-txe.c
> @@ -1,6 +1,6 @@
>   // SPDX-License-Identifier: GPL-2.0
>   /*
> - * Copyright (c) 2013-2020, Intel Corporation. All rights reserved.
> + * Copyright (c) 2013-2022, Intel Corporation. All rights reserved.
>    * Intel Management Engine Interface (Intel MEI) Linux driver
>    */
>   
> @@ -1201,7 +1201,7 @@ struct mei_device *mei_txe_dev_init(struct pci_dev *pdev)
>   	if (!dev)
>   		return NULL;
>   
> -	mei_device_init(dev, &pdev->dev, &mei_txe_hw_ops);
> +	mei_device_init(dev, &pdev->dev, false, &mei_txe_hw_ops);
>   
>   	hw = to_txe_hw(dev);
>   
> diff --git a/drivers/misc/mei/hw.h b/drivers/misc/mei/hw.h
> index b46077b17114..e7e020dba6b1 100644
> --- a/drivers/misc/mei/hw.h
> +++ b/drivers/misc/mei/hw.h
> @@ -1,6 +1,6 @@
>   /* SPDX-License-Identifier: GPL-2.0 */
>   /*
> - * Copyright (c) 2003-2020, Intel Corporation. All rights reserved
> + * Copyright (c) 2003-2022, Intel Corporation. All rights reserved
>    * Intel Management Engine Interface (Intel MEI) Linux driver
>    */
>   
> @@ -16,11 +16,16 @@
>   #define MEI_CONNECT_TIMEOUT         3  /* HPS: at least 2 seconds */
>   
>   #define MEI_CL_CONNECT_TIMEOUT     15  /* HPS: Client Connect Timeout */
> +#define MEI_CL_CONNECT_TIMEOUT_SLOW 30 /* HPS: Client Connect Timeout, slow FW */
>   #define MEI_CLIENTS_INIT_TIMEOUT   15  /* HPS: Clients Enumeration Timeout */
>   
>   #define MEI_PGI_TIMEOUT             1  /* PG Isolation time response 1 sec */
>   #define MEI_D0I3_TIMEOUT            5  /* D0i3 set/unset max response time */
>   #define MEI_HBM_TIMEOUT             1  /* 1 second */
> +#define MEI_HBM_TIMEOUT_SLOW        5  /* 5 second, slow FW */
> +
> +#define MKHI_RCV_TIMEOUT 500 /* receive timeout in msec */
> +#define MKHI_RCV_TIMEOUT_SLOW 10000 /* receive timeout in msec, slow FW */
>   
>   /*
>    * FW page size for DMA allocations
> diff --git a/drivers/misc/mei/init.c b/drivers/misc/mei/init.c
> index bc054baf496c..5473b1fa6fff 100644
> --- a/drivers/misc/mei/init.c
> +++ b/drivers/misc/mei/init.c
> @@ -359,14 +359,16 @@ bool mei_write_is_idle(struct mei_device *dev)
>   EXPORT_SYMBOL_GPL(mei_write_is_idle);
>   
>   /**
> - * mei_device_init  -- initialize mei_device structure
> + * mei_device_init - initialize mei_device structure
>    *
>    * @dev: the mei device
>    * @device: the device structure
> + * @slow_fw: configure longer timeouts as FW is slow
>    * @hw_ops: hw operations
>    */
>   void mei_device_init(struct mei_device *dev,
>   		     struct device *device,
> +		     bool slow_fw,
>   		     const struct mei_hw_ops *hw_ops)
>   {
>   	/* setup our list array */
> @@ -404,6 +406,21 @@ void mei_device_init(struct mei_device *dev,
>   	dev->pg_event = MEI_PG_EVENT_IDLE;
>   	dev->ops      = hw_ops;
>   	dev->dev      = device;
> +
> +	dev->timeouts.hw_ready = mei_secs_to_jiffies(MEI_HW_READY_TIMEOUT);
> +	dev->timeouts.connect = MEI_CONNECT_TIMEOUT;
> +	dev->timeouts.client_init = MEI_CLIENTS_INIT_TIMEOUT;
> +	dev->timeouts.pgi = mei_secs_to_jiffies(MEI_PGI_TIMEOUT);
> +	dev->timeouts.d0i3 = mei_secs_to_jiffies(MEI_D0I3_TIMEOUT);
> +	if (slow_fw) {
> +		dev->timeouts.cl_connect = mei_secs_to_jiffies(MEI_CL_CONNECT_TIMEOUT_SLOW);
> +		dev->timeouts.hbm = mei_secs_to_jiffies(MEI_HBM_TIMEOUT_SLOW);
> +		dev->timeouts.mkhi_recv = msecs_to_jiffies(MKHI_RCV_TIMEOUT_SLOW);
> +	} else {
> +		dev->timeouts.cl_connect = mei_secs_to_jiffies(MEI_CL_CONNECT_TIMEOUT);
> +		dev->timeouts.hbm = mei_secs_to_jiffies(MEI_HBM_TIMEOUT);
> +		dev->timeouts.mkhi_recv = msecs_to_jiffies(MKHI_RCV_TIMEOUT);
> +	}
>   }
>   EXPORT_SYMBOL_GPL(mei_device_init);
>   
> diff --git a/drivers/misc/mei/main.c b/drivers/misc/mei/main.c
> index 786f7c8f7f61..930887e7e38d 100644
> --- a/drivers/misc/mei/main.c
> +++ b/drivers/misc/mei/main.c
> @@ -1,6 +1,6 @@
>   // SPDX-License-Identifier: GPL-2.0
>   /*
> - * Copyright (c) 2003-2020, Intel Corporation. All rights reserved.
> + * Copyright (c) 2003-2022, Intel Corporation. All rights reserved.
>    * Intel Management Engine Interface (Intel MEI) Linux driver
>    */
>   
> @@ -571,7 +571,7 @@ static int mei_ioctl_connect_vtag(struct file *file,
>   				    cl->state == MEI_FILE_DISCONNECTED ||
>   				    cl->state == MEI_FILE_DISCONNECT_REQUIRED ||
>   				    cl->state == MEI_FILE_DISCONNECT_REPLY),
> -				   mei_secs_to_jiffies(MEI_CL_CONNECT_TIMEOUT));
> +				   dev->timeouts.cl_connect);
>   		mutex_lock(&dev->device_lock);
>   	}
>   
> diff --git a/drivers/misc/mei/mei_dev.h b/drivers/misc/mei/mei_dev.h
> index 694f866f87ef..babbb0944b7f 100644
> --- a/drivers/misc/mei/mei_dev.h
> +++ b/drivers/misc/mei/mei_dev.h
> @@ -1,6 +1,6 @@
>   /* SPDX-License-Identifier: GPL-2.0 */
>   /*
> - * Copyright (c) 2003-2019, Intel Corporation. All rights reserved.
> + * Copyright (c) 2003-2022, Intel Corporation. All rights reserved.
>    * Intel Management Engine Interface (Intel MEI) Linux driver
>    */
>   
> @@ -415,6 +415,17 @@ struct mei_fw_version {
>   
>   #define MEI_MAX_FW_VER_BLOCKS 3
>   
> +struct mei_dev_timeouts {
> +	unsigned long hw_ready; /* Timeout on ready message, in jiffies */
> +	int connect; /* HPS: at least 2 seconds, in seconds */
> +	unsigned long cl_connect; /* HPS: Client Connect Timeout, in jiffies */
> +	int client_init; /* HPS: Clients Enumeration Timeout, in seconds */
> +	unsigned long pgi; /* PG Isolation time response, in jiffies */
> +	unsigned int d0i3; /* D0i3 set/unset max response time, in jiffies */
> +	unsigned long hbm; /* HBM operation timeout, in jiffies */
> +	unsigned long mkhi_recv; /* receive timeout, in jiffies */
> +};
> +
>   /**
>    * struct mei_device -  MEI private device struct
>    *
> @@ -480,6 +491,8 @@ struct mei_fw_version {
>    * @allow_fixed_address: allow user space to connect a fixed client
>    * @override_fixed_address: force allow fixed address behavior
>    *
> + * @timeouts: actual timeout values
> + *
>    * @reset_work  : work item for the device reset
>    * @bus_rescan_work : work item for the bus rescan
>    *
> @@ -568,6 +581,8 @@ struct mei_device {
>   	bool allow_fixed_address;
>   	bool override_fixed_address;
>   
> +	struct mei_dev_timeouts timeouts;
> +
>   	struct work_struct reset_work;
>   	struct work_struct bus_rescan_work;
>   
> @@ -632,6 +647,7 @@ static inline u32 mei_slots2data(int slots)
>    */
>   void mei_device_init(struct mei_device *dev,
>   		     struct device *device,
> +		     bool slow_fw,
>   		     const struct mei_hw_ops *hw_ops);
>   int mei_reset(struct mei_device *dev);
>   int mei_start(struct mei_device *dev);
> diff --git a/drivers/misc/mei/pci-me.c b/drivers/misc/mei/pci-me.c
> index 5435604327a7..704cd0caa172 100644
> --- a/drivers/misc/mei/pci-me.c
> +++ b/drivers/misc/mei/pci-me.c
> @@ -1,6 +1,6 @@
>   // SPDX-License-Identifier: GPL-2.0
>   /*
> - * Copyright (c) 2003-2020, Intel Corporation. All rights reserved.
> + * Copyright (c) 2003-2022, Intel Corporation. All rights reserved.
>    * Intel Management Engine Interface (Intel MEI) Linux driver
>    */
>   
> @@ -203,7 +203,7 @@ static int mei_me_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>   	}
>   
>   	/* allocates and initializes the mei dev structure */
> -	dev = mei_me_dev_init(&pdev->dev, cfg);
> +	dev = mei_me_dev_init(&pdev->dev, cfg, false);
>   	if (!dev) {
>   		err = -ENOMEM;
>   		goto end;

--------------SS8ed4uEtep5osOYKxn6522d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <br>
    <br>
    <div class="moz-cite-prefix">On 9/7/2022 2:51 PM, Tomas Winkler
      wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:20220907215113.1596567-9-tomas.winkler@intel.com">
      <pre class="moz-quote-pre" wrap="">From: Alexander Usyskin <a class="moz-txt-link-rfc2396E" href="mailto:alexander.usyskin@intel.com">&lt;alexander.usyskin@intel.com&gt;</a>

Parametrize operational timeouts in order
to support slow firmware on some graphics devices.


Signed-off-by: Alexander Usyskin <a class="moz-txt-link-rfc2396E" href="mailto:alexander.usyskin@intel.com">&lt;alexander.usyskin@intel.com&gt;</a>
Signed-off-by: Tomas Winkler <a class="moz-txt-link-rfc2396E" href="mailto:tomas.winkler@intel.com">&lt;tomas.winkler@intel.com&gt;</a></pre>
    </blockquote>
    <br>
    <pre class="moz-quote-pre" wrap=""><code style="padding: 0px; tab-size: 8;" class="hljs diff language-diff">Reviewed-by: Daniele Ceraolo Spurio <a class="moz-txt-link-rfc2396E" href="mailto:daniele.ceraolospurio@intel.com">&lt;daniele.ceraolospurio@intel.com&gt;</a>

Daniele
</code></pre>
    <br>
    <blockquote type="cite" cite="mid:20220907215113.1596567-9-tomas.winkler@intel.com">
      <pre class="moz-quote-pre" wrap="">
---
V8:
1. Update copyright date
2. Fix pgi-&gt;d0i3 timeout in mei_me_d0i3_enter_sync()
V9:
1. Revert mei_me_d0i3_enter_sync() fix
2. Fix pgi-&gt;d0i3 timeout in mei_me_d0i3_exit_sync()

 drivers/misc/mei/bus-fixup.c |  5 ++---
 drivers/misc/mei/client.c    | 16 ++++++++--------
 drivers/misc/mei/gsc-me.c    |  2 +-
 drivers/misc/mei/hbm.c       | 14 +++++++-------
 drivers/misc/mei/hw-me.c     | 30 ++++++++++++++++--------------
 drivers/misc/mei/hw-me.h     |  2 +-
 drivers/misc/mei/hw-txe.c    |  4 ++--
 drivers/misc/mei/hw.h        |  7 ++++++-
 drivers/misc/mei/init.c      | 19 ++++++++++++++++++-
 drivers/misc/mei/main.c      |  4 ++--
 drivers/misc/mei/mei_dev.h   | 18 +++++++++++++++++-
 drivers/misc/mei/pci-me.c    |  4 ++--
 12 files changed, 82 insertions(+), 43 deletions(-)

diff --git a/drivers/misc/mei/bus-fixup.c b/drivers/misc/mei/bus-fixup.c
index 59506ba6fc48..344598fcf8e9 100644
--- a/drivers/misc/mei/bus-fixup.c
+++ b/drivers/misc/mei/bus-fixup.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0
 /*
- * Copyright (c) 2013-2020, Intel Corporation. All rights reserved.
+ * Copyright (c) 2013-2022, Intel Corporation. All rights reserved.
  * Intel Management Engine Interface (Intel MEI) Linux driver
  */
 
@@ -164,7 +164,6 @@ static int mei_osver(struct mei_cl_device *cldev)
 			    sizeof(struct mkhi_fw_ver))
 #define MKHI_FWVER_LEN(__num) (sizeof(struct mkhi_msg_hdr) + \
 			       sizeof(struct mkhi_fw_ver_block) * (__num))
-#define MKHI_RCV_TIMEOUT 500 /* receive timeout in msec */
 static int mei_fwver(struct mei_cl_device *cldev)
 {
 	char buf[MKHI_FWVER_BUF_LEN];
@@ -187,7 +186,7 @@ static int mei_fwver(struct mei_cl_device *cldev)
 
 	ret = 0;
 	bytes_recv = __mei_cl_recv(cldev-&gt;cl, buf, sizeof(buf), NULL, 0,
-				   MKHI_RCV_TIMEOUT);
+				   cldev-&gt;bus-&gt;timeouts.mkhi_recv);
 	if (bytes_recv &lt; 0 || (size_t)bytes_recv &lt; MKHI_FWVER_LEN(1)) {
 		/*
 		 * Should be at least one version block,
diff --git a/drivers/misc/mei/client.c b/drivers/misc/mei/client.c
index 31264ab2eb13..0b2fbe1335a7 100644
--- a/drivers/misc/mei/client.c
+++ b/drivers/misc/mei/client.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0
 /*
- * Copyright (c) 2003-2020, Intel Corporation. All rights reserved.
+ * Copyright (c) 2003-2022, Intel Corporation. All rights reserved.
  * Intel Management Engine Interface (Intel MEI) Linux driver
  */
 
@@ -870,7 +870,7 @@ static int mei_cl_send_disconnect(struct mei_cl *cl, struct mei_cl_cb *cb)
 	}
 
 	list_move_tail(&amp;cb-&gt;list, &amp;dev-&gt;ctrl_rd_list);
-	cl-&gt;timer_count = MEI_CONNECT_TIMEOUT;
+	cl-&gt;timer_count = dev-&gt;timeouts.connect;
 	mei_schedule_stall_timer(dev);
 
 	return 0;
@@ -945,7 +945,7 @@ static int __mei_cl_disconnect(struct mei_cl *cl)
 	wait_event_timeout(cl-&gt;wait,
 			   cl-&gt;state == MEI_FILE_DISCONNECT_REPLY ||
 			   cl-&gt;state == MEI_FILE_DISCONNECTED,
-			   mei_secs_to_jiffies(MEI_CL_CONNECT_TIMEOUT));
+			   dev-&gt;timeouts.cl_connect);
 	mutex_lock(&amp;dev-&gt;device_lock);
 
 	rets = cl-&gt;status;
@@ -1065,7 +1065,7 @@ static int mei_cl_send_connect(struct mei_cl *cl, struct mei_cl_cb *cb)
 	}
 
 	list_move_tail(&amp;cb-&gt;list, &amp;dev-&gt;ctrl_rd_list);
-	cl-&gt;timer_count = MEI_CONNECT_TIMEOUT;
+	cl-&gt;timer_count = dev-&gt;timeouts.connect;
 	mei_schedule_stall_timer(dev);
 	return 0;
 }
@@ -1164,7 +1164,7 @@ int mei_cl_connect(struct mei_cl *cl, struct mei_me_client *me_cl,
 			 cl-&gt;state == MEI_FILE_DISCONNECTED ||
 			 cl-&gt;state == MEI_FILE_DISCONNECT_REQUIRED ||
 			 cl-&gt;state == MEI_FILE_DISCONNECT_REPLY),
-			mei_secs_to_jiffies(MEI_CL_CONNECT_TIMEOUT));
+			dev-&gt;timeouts.cl_connect);
 	mutex_lock(&amp;dev-&gt;device_lock);
 
 	if (!mei_cl_is_connected(cl)) {
@@ -1562,7 +1562,7 @@ int mei_cl_notify_request(struct mei_cl *cl,
 			   cl-&gt;notify_en == request ||
 			   cl-&gt;status ||
 			   !mei_cl_is_connected(cl),
-			   mei_secs_to_jiffies(MEI_CL_CONNECT_TIMEOUT));
+			   dev-&gt;timeouts.cl_connect);
 	mutex_lock(&amp;dev-&gt;device_lock);
 
 	if (cl-&gt;notify_en != request &amp;&amp; !cl-&gt;status)
@@ -2336,7 +2336,7 @@ int mei_cl_dma_alloc_and_map(struct mei_cl *cl, const struct file *fp,
 	mutex_unlock(&amp;dev-&gt;device_lock);
 	wait_event_timeout(cl-&gt;wait,
 			   cl-&gt;dma_mapped || cl-&gt;status,
-			   mei_secs_to_jiffies(MEI_CL_CONNECT_TIMEOUT));
+			   dev-&gt;timeouts.cl_connect);
 	mutex_lock(&amp;dev-&gt;device_lock);
 
 	if (!cl-&gt;dma_mapped &amp;&amp; !cl-&gt;status)
@@ -2415,7 +2415,7 @@ int mei_cl_dma_unmap(struct mei_cl *cl, const struct file *fp)
 	mutex_unlock(&amp;dev-&gt;device_lock);
 	wait_event_timeout(cl-&gt;wait,
 			   !cl-&gt;dma_mapped || cl-&gt;status,
-			   mei_secs_to_jiffies(MEI_CL_CONNECT_TIMEOUT));
+			   dev-&gt;timeouts.cl_connect);
 	mutex_lock(&amp;dev-&gt;device_lock);
 
 	if (cl-&gt;dma_mapped &amp;&amp; !cl-&gt;status)
diff --git a/drivers/misc/mei/gsc-me.c b/drivers/misc/mei/gsc-me.c
index 2caba3a9ac35..bfa6154b93e2 100644
--- a/drivers/misc/mei/gsc-me.c
+++ b/drivers/misc/mei/gsc-me.c
@@ -48,7 +48,7 @@ static int mei_gsc_probe(struct auxiliary_device *aux_dev,
 
 	device = &amp;aux_dev-&gt;dev;
 
-	dev = mei_me_dev_init(device, cfg);
+	dev = mei_me_dev_init(device, cfg, adev-&gt;slow_firmware);
 	if (!dev) {
 		ret = -ENOMEM;
 		goto err;
diff --git a/drivers/misc/mei/hbm.c b/drivers/misc/mei/hbm.c
index cf2b8261da14..de712cbf5d07 100644
--- a/drivers/misc/mei/hbm.c
+++ b/drivers/misc/mei/hbm.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0
 /*
- * Copyright (c) 2003-2020, Intel Corporation. All rights reserved.
+ * Copyright (c) 2003-2022, Intel Corporation. All rights reserved.
  * Intel Management Engine Interface (Intel MEI) Linux driver
  */
 #include &lt;linux/export.h&gt;
@@ -232,7 +232,7 @@ int mei_hbm_start_wait(struct mei_device *dev)
 	mutex_unlock(&amp;dev-&gt;device_lock);
 	ret = wait_event_timeout(dev-&gt;wait_hbm_start,
 			dev-&gt;hbm_state != MEI_HBM_STARTING,
-			mei_secs_to_jiffies(MEI_HBM_TIMEOUT));
+			dev-&gt;timeouts.hbm);
 	mutex_lock(&amp;dev-&gt;device_lock);
 
 	if (ret == 0 &amp;&amp; (dev-&gt;hbm_state &lt;= MEI_HBM_STARTING)) {
@@ -275,7 +275,7 @@ int mei_hbm_start_req(struct mei_device *dev)
 	}
 
 	dev-&gt;hbm_state = MEI_HBM_STARTING;
-	dev-&gt;init_clients_timer = MEI_CLIENTS_INIT_TIMEOUT;
+	dev-&gt;init_clients_timer = dev-&gt;timeouts.client_init;
 	mei_schedule_stall_timer(dev);
 	return 0;
 }
@@ -316,7 +316,7 @@ static int mei_hbm_dma_setup_req(struct mei_device *dev)
 	}
 
 	dev-&gt;hbm_state = MEI_HBM_DR_SETUP;
-	dev-&gt;init_clients_timer = MEI_CLIENTS_INIT_TIMEOUT;
+	dev-&gt;init_clients_timer = dev-&gt;timeouts.client_init;
 	mei_schedule_stall_timer(dev);
 	return 0;
 }
@@ -351,7 +351,7 @@ static int mei_hbm_capabilities_req(struct mei_device *dev)
 	}
 
 	dev-&gt;hbm_state = MEI_HBM_CAP_SETUP;
-	dev-&gt;init_clients_timer = MEI_CLIENTS_INIT_TIMEOUT;
+	dev-&gt;init_clients_timer = dev-&gt;timeouts.client_init;
 	mei_schedule_stall_timer(dev);
 	return 0;
 }
@@ -385,7 +385,7 @@ static int mei_hbm_enum_clients_req(struct mei_device *dev)
 		return ret;
 	}
 	dev-&gt;hbm_state = MEI_HBM_ENUM_CLIENTS;
-	dev-&gt;init_clients_timer = MEI_CLIENTS_INIT_TIMEOUT;
+	dev-&gt;init_clients_timer = dev-&gt;timeouts.client_init;
 	mei_schedule_stall_timer(dev);
 	return 0;
 }
@@ -751,7 +751,7 @@ static int mei_hbm_prop_req(struct mei_device *dev, unsigned long start_idx)
 		return ret;
 	}
 
-	dev-&gt;init_clients_timer = MEI_CLIENTS_INIT_TIMEOUT;
+	dev-&gt;init_clients_timer = dev-&gt;timeouts.client_init;
 	mei_schedule_stall_timer(dev);
 
 	return 0;
diff --git a/drivers/misc/mei/hw-me.c b/drivers/misc/mei/hw-me.c
index 23ad53efbcb7..8f1c5ff24688 100644
--- a/drivers/misc/mei/hw-me.c
+++ b/drivers/misc/mei/hw-me.c
@@ -445,7 +445,7 @@ static int mei_me_hw_ready_wait(struct mei_device *dev)
 	mutex_unlock(&amp;dev-&gt;device_lock);
 	wait_event_timeout(dev-&gt;wait_hw_ready,
 			dev-&gt;recvd_hw_ready,
-			mei_secs_to_jiffies(MEI_HW_READY_TIMEOUT));
+			dev-&gt;timeouts.hw_ready);
 	mutex_lock(&amp;dev-&gt;device_lock);
 	if (!dev-&gt;recvd_hw_ready) {
 		dev_err(dev-&gt;dev, &quot;wait hw ready failed\n&quot;);
@@ -707,7 +707,6 @@ static void mei_me_pg_unset(struct mei_device *dev)
 static int mei_me_pg_legacy_enter_sync(struct mei_device *dev)
 {
 	struct mei_me_hw *hw = to_me_hw(dev);
-	unsigned long timeout = mei_secs_to_jiffies(MEI_PGI_TIMEOUT);
 	int ret;
 
 	dev-&gt;pg_event = MEI_PG_EVENT_WAIT;
@@ -718,7 +717,8 @@ static int mei_me_pg_legacy_enter_sync(struct mei_device *dev)
 
 	mutex_unlock(&amp;dev-&gt;device_lock);
 	wait_event_timeout(dev-&gt;wait_pg,
-		dev-&gt;pg_event == MEI_PG_EVENT_RECEIVED, timeout);
+		dev-&gt;pg_event == MEI_PG_EVENT_RECEIVED,
+		dev-&gt;timeouts.pgi);
 	mutex_lock(&amp;dev-&gt;device_lock);
 
 	if (dev-&gt;pg_event == MEI_PG_EVENT_RECEIVED) {
@@ -744,7 +744,6 @@ static int mei_me_pg_legacy_enter_sync(struct mei_device *dev)
 static int mei_me_pg_legacy_exit_sync(struct mei_device *dev)
 {
 	struct mei_me_hw *hw = to_me_hw(dev);
-	unsigned long timeout = mei_secs_to_jiffies(MEI_PGI_TIMEOUT);
 	int ret;
 
 	if (dev-&gt;pg_event == MEI_PG_EVENT_RECEIVED)
@@ -756,7 +755,8 @@ static int mei_me_pg_legacy_exit_sync(struct mei_device *dev)
 
 	mutex_unlock(&amp;dev-&gt;device_lock);
 	wait_event_timeout(dev-&gt;wait_pg,
-		dev-&gt;pg_event == MEI_PG_EVENT_RECEIVED, timeout);
+		dev-&gt;pg_event == MEI_PG_EVENT_RECEIVED,
+		dev-&gt;timeouts.pgi);
 	mutex_lock(&amp;dev-&gt;device_lock);
 
 reply:
@@ -772,7 +772,8 @@ static int mei_me_pg_legacy_exit_sync(struct mei_device *dev)
 
 	mutex_unlock(&amp;dev-&gt;device_lock);
 	wait_event_timeout(dev-&gt;wait_pg,
-		dev-&gt;pg_event == MEI_PG_EVENT_INTR_RECEIVED, timeout);
+		dev-&gt;pg_event == MEI_PG_EVENT_INTR_RECEIVED,
+		dev-&gt;timeouts.pgi);
 	mutex_lock(&amp;dev-&gt;device_lock);
 
 	if (dev-&gt;pg_event == MEI_PG_EVENT_INTR_RECEIVED)
@@ -887,8 +888,6 @@ static u32 mei_me_d0i3_unset(struct mei_device *dev)
 static int mei_me_d0i3_enter_sync(struct mei_device *dev)
 {
 	struct mei_me_hw *hw = to_me_hw(dev);
-	unsigned long d0i3_timeout = mei_secs_to_jiffies(MEI_D0I3_TIMEOUT);
-	unsigned long pgi_timeout = mei_secs_to_jiffies(MEI_PGI_TIMEOUT);
 	int ret;
 	u32 reg;
 
@@ -910,7 +909,8 @@ static int mei_me_d0i3_enter_sync(struct mei_device *dev)
 
 	mutex_unlock(&amp;dev-&gt;device_lock);
 	wait_event_timeout(dev-&gt;wait_pg,
-		dev-&gt;pg_event == MEI_PG_EVENT_RECEIVED, pgi_timeout);
+		dev-&gt;pg_event == MEI_PG_EVENT_RECEIVED,
+		dev-&gt;timeouts.pgi);
 	mutex_lock(&amp;dev-&gt;device_lock);
 
 	if (dev-&gt;pg_event != MEI_PG_EVENT_RECEIVED) {
@@ -930,7 +930,8 @@ static int mei_me_d0i3_enter_sync(struct mei_device *dev)
 
 	mutex_unlock(&amp;dev-&gt;device_lock);
 	wait_event_timeout(dev-&gt;wait_pg,
-		dev-&gt;pg_event == MEI_PG_EVENT_INTR_RECEIVED, d0i3_timeout);
+		dev-&gt;pg_event == MEI_PG_EVENT_INTR_RECEIVED,
+		dev-&gt;timeouts.d0i3);
 	mutex_lock(&amp;dev-&gt;device_lock);
 
 	if (dev-&gt;pg_event != MEI_PG_EVENT_INTR_RECEIVED) {
@@ -990,7 +991,6 @@ static int mei_me_d0i3_enter(struct mei_device *dev)
 static int mei_me_d0i3_exit_sync(struct mei_device *dev)
 {
 	struct mei_me_hw *hw = to_me_hw(dev);
-	unsigned long timeout = mei_secs_to_jiffies(MEI_D0I3_TIMEOUT);
 	int ret;
 	u32 reg;
 
@@ -1013,7 +1013,8 @@ static int mei_me_d0i3_exit_sync(struct mei_device *dev)
 
 	mutex_unlock(&amp;dev-&gt;device_lock);
 	wait_event_timeout(dev-&gt;wait_pg,
-		dev-&gt;pg_event == MEI_PG_EVENT_INTR_RECEIVED, timeout);
+		dev-&gt;pg_event == MEI_PG_EVENT_INTR_RECEIVED,
+		dev-&gt;timeouts.d0i3);
 	mutex_lock(&amp;dev-&gt;device_lock);
 
 	if (dev-&gt;pg_event != MEI_PG_EVENT_INTR_RECEIVED) {
@@ -1706,11 +1707,12 @@ EXPORT_SYMBOL_GPL(mei_me_get_cfg);
  *
  * @parent: device associated with physical device (pci/platform)
  * @cfg: per device generation config
+ * @slow_fw: configure longer timeouts as FW is slow
  *
  * Return: The mei_device pointer on success, NULL on failure.
  */
 struct mei_device *mei_me_dev_init(struct device *parent,
-				   const struct mei_cfg *cfg)
+				   const struct mei_cfg *cfg, bool slow_fw)
 {
 	struct mei_device *dev;
 	struct mei_me_hw *hw;
@@ -1725,7 +1727,7 @@ struct mei_device *mei_me_dev_init(struct device *parent,
 	for (i = 0; i &lt; DMA_DSCR_NUM; i++)
 		dev-&gt;dr_dscr[i].size = cfg-&gt;dma_size[i];
 
-	mei_device_init(dev, parent, &amp;mei_me_hw_ops);
+	mei_device_init(dev, parent, slow_fw, &amp;mei_me_hw_ops);
 	hw-&gt;cfg = cfg;
 
 	dev-&gt;fw_f_fw_ver_supported = cfg-&gt;fw_ver_supported;
diff --git a/drivers/misc/mei/hw-me.h b/drivers/misc/mei/hw-me.h
index 6256b36bdafd..95cf830b7c7b 100644
--- a/drivers/misc/mei/hw-me.h
+++ b/drivers/misc/mei/hw-me.h
@@ -132,7 +132,7 @@ enum mei_cfg_idx {
 const struct mei_cfg *mei_me_get_cfg(kernel_ulong_t idx);
 
 struct mei_device *mei_me_dev_init(struct device *parent,
-				   const struct mei_cfg *cfg);
+				   const struct mei_cfg *cfg, bool slow_fw);
 
 int mei_me_pg_enter_sync(struct mei_device *dev);
 int mei_me_pg_exit_sync(struct mei_device *dev);
diff --git a/drivers/misc/mei/hw-txe.c b/drivers/misc/mei/hw-txe.c
index 00652c137cc7..9862c6cd3e32 100644
--- a/drivers/misc/mei/hw-txe.c
+++ b/drivers/misc/mei/hw-txe.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0
 /*
- * Copyright (c) 2013-2020, Intel Corporation. All rights reserved.
+ * Copyright (c) 2013-2022, Intel Corporation. All rights reserved.
  * Intel Management Engine Interface (Intel MEI) Linux driver
  */
 
@@ -1201,7 +1201,7 @@ struct mei_device *mei_txe_dev_init(struct pci_dev *pdev)
 	if (!dev)
 		return NULL;
 
-	mei_device_init(dev, &amp;pdev-&gt;dev, &amp;mei_txe_hw_ops);
+	mei_device_init(dev, &amp;pdev-&gt;dev, false, &amp;mei_txe_hw_ops);
 
 	hw = to_txe_hw(dev);
 
diff --git a/drivers/misc/mei/hw.h b/drivers/misc/mei/hw.h
index b46077b17114..e7e020dba6b1 100644
--- a/drivers/misc/mei/hw.h
+++ b/drivers/misc/mei/hw.h
@@ -1,6 +1,6 @@
 /* SPDX-License-Identifier: GPL-2.0 */
 /*
- * Copyright (c) 2003-2020, Intel Corporation. All rights reserved
+ * Copyright (c) 2003-2022, Intel Corporation. All rights reserved
  * Intel Management Engine Interface (Intel MEI) Linux driver
  */
 
@@ -16,11 +16,16 @@
 #define MEI_CONNECT_TIMEOUT         3  /* HPS: at least 2 seconds */
 
 #define MEI_CL_CONNECT_TIMEOUT     15  /* HPS: Client Connect Timeout */
+#define MEI_CL_CONNECT_TIMEOUT_SLOW 30 /* HPS: Client Connect Timeout, slow FW */
 #define MEI_CLIENTS_INIT_TIMEOUT   15  /* HPS: Clients Enumeration Timeout */
 
 #define MEI_PGI_TIMEOUT             1  /* PG Isolation time response 1 sec */
 #define MEI_D0I3_TIMEOUT            5  /* D0i3 set/unset max response time */
 #define MEI_HBM_TIMEOUT             1  /* 1 second */
+#define MEI_HBM_TIMEOUT_SLOW        5  /* 5 second, slow FW */
+
+#define MKHI_RCV_TIMEOUT 500 /* receive timeout in msec */
+#define MKHI_RCV_TIMEOUT_SLOW 10000 /* receive timeout in msec, slow FW */
 
 /*
  * FW page size for DMA allocations
diff --git a/drivers/misc/mei/init.c b/drivers/misc/mei/init.c
index bc054baf496c..5473b1fa6fff 100644
--- a/drivers/misc/mei/init.c
+++ b/drivers/misc/mei/init.c
@@ -359,14 +359,16 @@ bool mei_write_is_idle(struct mei_device *dev)
 EXPORT_SYMBOL_GPL(mei_write_is_idle);
 
 /**
- * mei_device_init  -- initialize mei_device structure
+ * mei_device_init - initialize mei_device structure
  *
  * @dev: the mei device
  * @device: the device structure
+ * @slow_fw: configure longer timeouts as FW is slow
  * @hw_ops: hw operations
  */
 void mei_device_init(struct mei_device *dev,
 		     struct device *device,
+		     bool slow_fw,
 		     const struct mei_hw_ops *hw_ops)
 {
 	/* setup our list array */
@@ -404,6 +406,21 @@ void mei_device_init(struct mei_device *dev,
 	dev-&gt;pg_event = MEI_PG_EVENT_IDLE;
 	dev-&gt;ops      = hw_ops;
 	dev-&gt;dev      = device;
+
+	dev-&gt;timeouts.hw_ready = mei_secs_to_jiffies(MEI_HW_READY_TIMEOUT);
+	dev-&gt;timeouts.connect = MEI_CONNECT_TIMEOUT;
+	dev-&gt;timeouts.client_init = MEI_CLIENTS_INIT_TIMEOUT;
+	dev-&gt;timeouts.pgi = mei_secs_to_jiffies(MEI_PGI_TIMEOUT);
+	dev-&gt;timeouts.d0i3 = mei_secs_to_jiffies(MEI_D0I3_TIMEOUT);
+	if (slow_fw) {
+		dev-&gt;timeouts.cl_connect = mei_secs_to_jiffies(MEI_CL_CONNECT_TIMEOUT_SLOW);
+		dev-&gt;timeouts.hbm = mei_secs_to_jiffies(MEI_HBM_TIMEOUT_SLOW);
+		dev-&gt;timeouts.mkhi_recv = msecs_to_jiffies(MKHI_RCV_TIMEOUT_SLOW);
+	} else {
+		dev-&gt;timeouts.cl_connect = mei_secs_to_jiffies(MEI_CL_CONNECT_TIMEOUT);
+		dev-&gt;timeouts.hbm = mei_secs_to_jiffies(MEI_HBM_TIMEOUT);
+		dev-&gt;timeouts.mkhi_recv = msecs_to_jiffies(MKHI_RCV_TIMEOUT);
+	}
 }
 EXPORT_SYMBOL_GPL(mei_device_init);
 
diff --git a/drivers/misc/mei/main.c b/drivers/misc/mei/main.c
index 786f7c8f7f61..930887e7e38d 100644
--- a/drivers/misc/mei/main.c
+++ b/drivers/misc/mei/main.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0
 /*
- * Copyright (c) 2003-2020, Intel Corporation. All rights reserved.
+ * Copyright (c) 2003-2022, Intel Corporation. All rights reserved.
  * Intel Management Engine Interface (Intel MEI) Linux driver
  */
 
@@ -571,7 +571,7 @@ static int mei_ioctl_connect_vtag(struct file *file,
 				    cl-&gt;state == MEI_FILE_DISCONNECTED ||
 				    cl-&gt;state == MEI_FILE_DISCONNECT_REQUIRED ||
 				    cl-&gt;state == MEI_FILE_DISCONNECT_REPLY),
-				   mei_secs_to_jiffies(MEI_CL_CONNECT_TIMEOUT));
+				   dev-&gt;timeouts.cl_connect);
 		mutex_lock(&amp;dev-&gt;device_lock);
 	}
 
diff --git a/drivers/misc/mei/mei_dev.h b/drivers/misc/mei/mei_dev.h
index 694f866f87ef..babbb0944b7f 100644
--- a/drivers/misc/mei/mei_dev.h
+++ b/drivers/misc/mei/mei_dev.h
@@ -1,6 +1,6 @@
 /* SPDX-License-Identifier: GPL-2.0 */
 /*
- * Copyright (c) 2003-2019, Intel Corporation. All rights reserved.
+ * Copyright (c) 2003-2022, Intel Corporation. All rights reserved.
  * Intel Management Engine Interface (Intel MEI) Linux driver
  */
 
@@ -415,6 +415,17 @@ struct mei_fw_version {
 
 #define MEI_MAX_FW_VER_BLOCKS 3
 
+struct mei_dev_timeouts {
+	unsigned long hw_ready; /* Timeout on ready message, in jiffies */
+	int connect; /* HPS: at least 2 seconds, in seconds */
+	unsigned long cl_connect; /* HPS: Client Connect Timeout, in jiffies */
+	int client_init; /* HPS: Clients Enumeration Timeout, in seconds */
+	unsigned long pgi; /* PG Isolation time response, in jiffies */
+	unsigned int d0i3; /* D0i3 set/unset max response time, in jiffies */
+	unsigned long hbm; /* HBM operation timeout, in jiffies */
+	unsigned long mkhi_recv; /* receive timeout, in jiffies */
+};
+
 /**
  * struct mei_device -  MEI private device struct
  *
@@ -480,6 +491,8 @@ struct mei_fw_version {
  * @allow_fixed_address: allow user space to connect a fixed client
  * @override_fixed_address: force allow fixed address behavior
  *
+ * @timeouts: actual timeout values
+ *
  * @reset_work  : work item for the device reset
  * @bus_rescan_work : work item for the bus rescan
  *
@@ -568,6 +581,8 @@ struct mei_device {
 	bool allow_fixed_address;
 	bool override_fixed_address;
 
+	struct mei_dev_timeouts timeouts;
+
 	struct work_struct reset_work;
 	struct work_struct bus_rescan_work;
 
@@ -632,6 +647,7 @@ static inline u32 mei_slots2data(int slots)
  */
 void mei_device_init(struct mei_device *dev,
 		     struct device *device,
+		     bool slow_fw,
 		     const struct mei_hw_ops *hw_ops);
 int mei_reset(struct mei_device *dev);
 int mei_start(struct mei_device *dev);
diff --git a/drivers/misc/mei/pci-me.c b/drivers/misc/mei/pci-me.c
index 5435604327a7..704cd0caa172 100644
--- a/drivers/misc/mei/pci-me.c
+++ b/drivers/misc/mei/pci-me.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0
 /*
- * Copyright (c) 2003-2020, Intel Corporation. All rights reserved.
+ * Copyright (c) 2003-2022, Intel Corporation. All rights reserved.
  * Intel Management Engine Interface (Intel MEI) Linux driver
  */
 
@@ -203,7 +203,7 @@ static int mei_me_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	}
 
 	/* allocates and initializes the mei dev structure */
-	dev = mei_me_dev_init(&amp;pdev-&gt;dev, cfg);
+	dev = mei_me_dev_init(&amp;pdev-&gt;dev, cfg, false);
 	if (!dev) {
 		err = -ENOMEM;
 		goto end;
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------SS8ed4uEtep5osOYKxn6522d--
