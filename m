Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9473D5692A1
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Jul 2022 21:29:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59546113B67;
	Wed,  6 Jul 2022 19:29:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E45A6113B67
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Jul 2022 19:29:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657135761; x=1688671761;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MPGCCED8aWMvutVhb/XkvlFj/674AOBRqxb/0GJKwn8=;
 b=YB33o5+pVVPbmFjtOeyd791y80pTbI1MXmu4qAxuN+nNC6/Pxj2RrCSS
 6Fv+ermZn2oIMKtCvj2kK42Cbh/r1mjWjU/RlBqM6fCwOphca8DZfmEgy
 zfw6oYEF4pGofVsL446fPI0K68jQhDmcBY1KI1eFrsuYbPA1em6h+tTU0
 dePx0ZP951cqN5KU2uDcZIuhymZM7R7JpnEs6B5aMXDhWihnabJxr5PpF
 cQT92N7rqoDl8/YHhc61kEoqEAmo+BCyVfZoIZGzpAkw5oUFFK7nx45kA
 fTVayxGP0XP/ys1ihcuTgUqfazvb5/7EzuP4HdZpVcGpIusa9+EpnfD8l Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10400"; a="284973308"
X-IronPort-AV: E=Sophos;i="5.92,250,1650956400"; d="scan'208";a="284973308"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2022 12:29:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,250,1650956400"; d="scan'208";a="735696356"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 06 Jul 2022 12:29:21 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 6 Jul 2022 12:29:20 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 6 Jul 2022 12:29:20 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 6 Jul 2022 12:29:20 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 6 Jul 2022 12:29:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nicmBzJZZU2C208t3tuu7yDDe9ia45AbV7tm+p/aZ3FYvhRaAi6PCWIuoDMj5SUQXxAW5fTUg/5f4ETOcru558b2FiEFVeD8Nj2tSjJfZXOu5l2FzrYwM+H2Fs/dkQPpybTkTfA8w0WDg4tAuZHNjT/SCpBm0A+qOtyAWY+WS/OGejYm5tUzNWxltmQ+W3wKZNYZn6a00YGgyCRhtC0GzNQ9HOj5JmW9Ko7t8Ggw0WWWowavbqqaIYujk0o2PYK6nFpXLXFl6xOgmpgQU0us9F1H6VbR1AdOfq1PvxWcYpQ+qDqjzv0jnBsSl8d/Y4az83MQCMN5DqvRzlDM8TXI7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9U24/lFxx6AkU35qpcPkKz+NzHLGQLulxI9zkflSoLw=;
 b=aiF/7c5GWA4rrt6coWut2TXqV/AzsImB5OsqOg47OEYo1xadl2+zXG2FwaP6m3B+WkowP24EP0lUnif6ofXURlLx8/WQCA6oPmmEB//DA24nx8zSgOb9w9WD18z36GL8DsiPLjH+4vtO4FmWx2hGFjdV7t/21A+X6UK8uOW0sSK3YhZmJSnsCPl7R0tx/jw2biqTcD4trUOuUn0ShRUSTbD/NVtlcT8+NLfTiaqfrcqovzO/aNYrLN7Pc2wg2GHJuJGv1aOgUV9xxNbRMxrO/JFRECfFWS1iR31bInC8u3u5Esf2IVm8mmsWJrlTZ195uHoC8uANgOsUmpfgGzM1VA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 CO1PR11MB4979.namprd11.prod.outlook.com (2603:10b6:303:99::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5395.15; Wed, 6 Jul 2022 19:29:17 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::468:a5f:1b4f:8d7d]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::468:a5f:1b4f:8d7d%9]) with mapi id 15.20.5417.015; Wed, 6 Jul 2022
 19:29:17 +0000
Message-ID: <7e166f02-db00-9b18-dad0-7e04c348a920@intel.com>
Date: Wed, 6 Jul 2022 12:29:14 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: "Ye, Tony" <tony.ye@intel.com>, "Zhang, Carl" <carl.zhang@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20220609231955.3632596-1-daniele.ceraolospurio@intel.com>
 <dbc2ad75-1248-8d53-281d-f0a308733972@linux.intel.com>
 <7ede8090-bfbf-17a7-31f6-24e844a70673@intel.com>
 <a0860c06-4aba-deff-9101-aecdd8c14a02@linux.intel.com>
 <d6bc42f5-86c1-3bc9-d731-2bd0a978ece5@intel.com>
 <f50ee482-ed77-a644-095f-b2a988306de2@linux.intel.com>
 <7b394930-e6fb-8dc6-ba63-352f7a623b97@intel.com>
 <4d44c67a-4a38-fa53-6709-d5f206a9b0db@linux.intel.com>
 <e90f9dd1-7229-f958-d2e6-6fc4ec5a866b@intel.com>
 <954db3a4-e8c9-e157-5211-aceec87dfd9d@linux.intel.com>
 <4a7f6abe-e479-a3d9-8615-e52a2863733c@intel.com>
 <c565a81a-d86c-a5fd-c97e-27bd1459da6e@intel.com>
 <05a33039-ed2e-3364-6036-197955abacfc@linux.intel.com>
 <913becb5-7ffe-ca7b-7acd-71c2ee3ade23@intel.com>
 <PH0PR11MB557934FC60F660B9ABB96CA987AC9@PH0PR11MB5579.namprd11.prod.outlook.com>
 <a120b625-4042-f616-b314-aed2013f324b@intel.com>
 <a1560fac-71ac-7d97-1c1f-afe330b27a11@intel.com>
From: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
In-Reply-To: <a1560fac-71ac-7d97-1c1f-afe330b27a11@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR13CA0067.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::12) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 799b84e7-50e9-4735-f4fb-08da5f85d105
X-MS-TrafficTypeDiagnostic: CO1PR11MB4979:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9UGr1hv6I1MnbQb5m15c8cNyO7FIwIdtzAuCnOotgOco/URRrVLeHE6UL6XH/g22pDrnkMLqXOjeIGba+Av5VPO9VC00/7u0rHmMDlhJfPNXKoQylyFjz93ZePCes3CMRmzw+TarEprUHuy/8aPqAxlSGMPK6b8Cf7ZKXIB/gtownbnSINkXcEwmkR9u3+eSTLD7ke7+0zLaKrVUsTZiHTK+3LTLJF2LscDApfyFGjJIO6FhJeQguLnd52hf1I1LjHNsHfkDF83sKaBG9Z72FHZpo3Ff7sQ7P+2ccgH8ZXqC6Y3HJqmgsfC73bFk8jFZYq6u43DQmQtIF9CQSAI4VDfzeF8zHIepFA43YDxTZyhXZ63GCSmZgJ+GP2GrFUCFh+GebffCLYJqcHAtWy3lBo9oQD7/J57kxcpUgNzp9ILJKcvdzeEzGWND7ACttiyxL6GEFpGyQ8GqzHgmXxTCNn+/rgSVbIlxVNzObQUdKS/W9T6jXS7pYZZp06Hlw/lALNNUZ3xdVdBV9GyFG7bSJWi5Did8Ec6smZHGOECQEnKIX2vC3wwkhrJS67fAAhdhEy0HCi+wksyXzwTnuYOkbk+dURwlAytDpkmI0cow51KOIXljs0BZ/vmHoazOge0z3ZoLDgi8PRS8nZxhO2GlskH2/v/lt8NjKaAF9jRsMSuNh8u7/hEgtkLdsU+zEpf1RCq8+5TUcvWph0UC8QbM3LdMSd2Xw4+aHY3wLg5r0FLg+e+f91i2R8L4zXVapp1C4otIpSW12U0cXGjdL+QruWyqikJRzhHWB4LlbXPtFnEpOHZYmRkGDBWoXKergXxuBKLr1xbe79RMEagJaxQlhp0qcPGPDe7F5+IXSm7NyEWoCxPE/r8yEA5nGf+7PdoG
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(366004)(346002)(396003)(376002)(136003)(83380400001)(186003)(8676002)(4326008)(6512007)(5660300002)(66556008)(66476007)(66946007)(478600001)(86362001)(31696002)(6486002)(8936002)(82960400001)(26005)(30864003)(36756003)(38100700002)(6666004)(41300700001)(2616005)(53546011)(6506007)(316002)(54906003)(31686004)(110136005)(2906002)(60764002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bWJvUyt3UkJnM1ZFWXlBU25lSzdrdGMwS3JNNUxYYy80dm5RaVczMGJFdHlH?=
 =?utf-8?B?SUVVcjVnOFpKYm83WlVtSll4VnB5SnF0Tm0vRDdSZ3kyVEg5TEU3L0NjcVRW?=
 =?utf-8?B?NjZxRUlrMWFuL0dkTVJzZVRaOE5hTkl1UytnRFVyUTBHc0hrOHBWdmQvaW44?=
 =?utf-8?B?M3ZyN2NWSW1xK1ZuQnpVYWJvZ0U5R3lDVUJTZkJKWFlaTy9ETWQ4eStnV0xv?=
 =?utf-8?B?ZkwvQVdSQVRseGdTVHgxQ1dpNDFGaGtsd2VvazMyd3JibmVBNUd5Y1Bwa21Y?=
 =?utf-8?B?TXIxNTBDNU90TThOOXJ0MExkdm5sUTcrNS9OR3FURTZqS3hiS0h0aTZzZGwy?=
 =?utf-8?B?RHZWYnk0Z09lc2ltVVRIbyszdHBISDRJVFBnS1FXZUptREhHVmFRbkQ0ZjlN?=
 =?utf-8?B?dDRkOTU0TVJROE1uRCtZREwxNXZrSWdrcEpVTjZVSlgzcUFXZ0twMzM5TzV5?=
 =?utf-8?B?Qkh4Z1JXNUtpRXpBV0VHVTd1bytrN3VMTTNCNm1SUXhCaDJic3NZWlRPZDdk?=
 =?utf-8?B?OTlpekF4NVM1d1I2dUZTMGRpblhocXY2T2JOVFhPdVlNUDdWWUJEeUVPT2xR?=
 =?utf-8?B?aXcxc1J5aVl3WlZGaTNmdktSMWlSSzZnbTB2TzJmdWRqa2RmWjZBK09YN1pD?=
 =?utf-8?B?MXVaeEdyaHNmMG1CWmNDeUY3S1BvMlI0d2dCdndtV08wM1hFMDlOaDVHRHJi?=
 =?utf-8?B?dElWbW5ieDZhbkQxWHRlY1dMTER0eEpxdzI1Ri9kNUdhYnQxTTRNS3VXTGZJ?=
 =?utf-8?B?NXBaQTlyRU1jWmM4SFRJUE1qQXhhbTlRK2tKaE10Nm16RzFLTTFoOFJoamRs?=
 =?utf-8?B?b3NjRzd2Rzh6SHNlbko5SkVXbUZCQ2NVeU1TSlhPZjlhQ1VwWDZqbG5rZFNv?=
 =?utf-8?B?a0p1SVBObEJuWVdzbmRLRnphME92eFR4Vmk0TmRsRVFLMUFGbG9GZDJjTGxq?=
 =?utf-8?B?RFdocmlRcmNkT056K2FOVExKeFBBT3lLVHBYaU5wS0RTcE4zUHYxOUhmZWNo?=
 =?utf-8?B?a2FqSC9USWd1VVlBR1c4YzdQcWgxZUVzYnJObGVORjE3YUZtQ1lmbDRaa0dC?=
 =?utf-8?B?OUowVG5wcXFCVm9PUVBiMXV4NUlqdWpsMmorTVhiY21JeWlLVjRoOEJ1YmtY?=
 =?utf-8?B?d2lwemdmZ1ZSNU5xSGNkK1drZHRWVkhSSnU2T0ZYQmFzYk5aSE1nUGx3UEtS?=
 =?utf-8?B?YkFqcUliaUxjMGVSclh6ZG9TZ1E1VWNZS0t0dnY5K2RjZGVKeXloMXBVSnlo?=
 =?utf-8?B?TW5XalBwWFdadHlCNzVES3RHUThyQTJEQklRZzhSN2N6MFRJemtMTTJwR2FO?=
 =?utf-8?B?MFFuOUxwR0VzYXpYakM4MWZTck9xdWYvengyYTkybWhwRncwSFF3VnR3aXhW?=
 =?utf-8?B?ZkpXczZHWE9lZFhmSHFFY2RBL3pVOHh0MTM3QlcwQjFiUkpFSnNyZkZBclZl?=
 =?utf-8?B?NHNqa1RvVFFORk5mRVdSeXpCcVJKd2huakhoTllweDhGOHNpdlMreDEzcHNp?=
 =?utf-8?B?OFMwVGYrV091YXpjbnBTSDVCbURzaEZGdE5pdFNqd1FNRVhkMWtPMVN4WWlL?=
 =?utf-8?B?WG80enBEd0Y1a3FKRUFRMnN4NGljTzNvU01RZ3dkcERMektkbTAzSmFSNHVa?=
 =?utf-8?B?QU9SVkJ3bW1DVkN4RTZ5anpvZmJNUGdrdGFML3VxSG53RzZuV2Nua2RnWjRx?=
 =?utf-8?B?a1pBNEhEWk15V1Z6NDlIWjB4QU1pOE0rY0dVbkR5WXhCWmlXaWttajc3R2tF?=
 =?utf-8?B?ZGswU2U5dEZpZTBhYzRyK3crV01xT1BPZ1lRWWdaOTBKbEVnTlFONjdlZVF1?=
 =?utf-8?B?YzA4c1duMEpLUmg1THhhOEw2blpmc2E5RE9wN2RQQlFldFZDUWtvMVVFdVdS?=
 =?utf-8?B?TEJQTnpXM2MxV1NVOTRCTEE1c3FqTStheWZOMC85WXZhVmJMOTRGQXJLUHlU?=
 =?utf-8?B?WmJYVEUwRVBYeC9ESkI4OFl1N21paFRSYjBnOXM4MWJnQkE2UEthSm96b1Qx?=
 =?utf-8?B?d0NpNkhTV0NrSTNwalA3a0VTZ3N0TGVTWXFTWWlLV1hFSUUxZnViSkZTNzhK?=
 =?utf-8?B?RjJtK0NiTUJsSWZNWldSYTVXUElWS1NkM0xlWkh6Q2hJL28xT0xWZFkyNCs4?=
 =?utf-8?B?SHVseThXcERyVHR3MkhiUWdUeUV1VDNkeWEvcUVlYW85eVdrelNZUjdlTUhY?=
 =?utf-8?Q?PhDZq70VIXVohcm/v3geuYI=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 799b84e7-50e9-4735-f4fb-08da5f85d105
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jul 2022 19:29:16.9557 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xIhienEMr5ERb951yX975gfKG9jXs8uKSbBTXtxgIE/udnpWlUgBT4pUvqau5feJa1IJYcPvuCV7brCn2nmQuNJ9nSGKPTMiDm201gHIpT8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4979
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 00/15] HuC loading for DG2
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
Cc: "Usyskin, Alexander" <alexander.usyskin@intel.com>, "Teres Alexis, Alan
 Previn" <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 7/6/2022 10:26 AM, Ye, Tony wrote:
>
> On 7/5/2022 4:30 PM, Ceraolo Spurio, Daniele wrote:
>>
>>
>> On 6/15/2022 7:28 PM, Zhang, Carl wrote:
>>>> On From: Ye, Tony <tony.ye@intel.com>
>>>> Sent: Thursday, June 16, 2022 12:15 AM
>>>>
>>>>
>>>> On 6/15/2022 3:13 AM, Tvrtko Ursulin wrote:
>>>>> On 15/06/2022 00:15, Ye, Tony wrote:
>>>>>> On 6/14/2022 8:30 AM, Ceraolo Spurio, Daniele wrote:
>>>>>>> On 6/14/2022 12:44 AM, Tvrtko Ursulin wrote:
>>>>>>>> On 13/06/2022 19:13, Ceraolo Spurio, Daniele wrote:
>>>>>>>>> On 6/13/2022 10:39 AM, Tvrtko Ursulin wrote:
>>>>>>>>>> On 13/06/2022 18:06, Ceraolo Spurio, Daniele wrote:
>>>>>>>>>>> On 6/13/2022 9:56 AM, Tvrtko Ursulin wrote:
>>>>>>>>>>>> On 13/06/2022 17:41, Ceraolo Spurio, Daniele wrote:
>>>>>>>>>>>>> On 6/13/2022 9:31 AM, Tvrtko Ursulin wrote:
>>>>>>>>>>>>>> On 13/06/2022 16:39, Ceraolo Spurio, Daniele wrote:
>>>>>>>>>>>>>>> On 6/13/2022 1:16 AM, Tvrtko Ursulin wrote:
>>>>>>>>>>>>>>>> On 10/06/2022 00:19, Daniele Ceraolo Spurio wrote:
>>>>>>>>>>>>>>>>> On DG2, HuC loading is performed by the GSC, via a PXP
>>>>>>>>>>>>>>>>> command. The load operation itself is relatively simple
>>>>>>>>>>>>>>>>> (just send a message to the GSC with the physical address
>>>>>>>>>>>>>>>>> of the HuC in LMEM), but there are timing changes that
>>>>>>>>>>>>>>>>> requires special attention. In particular, to send a PXP
>>>>>>>>>>>>>>>>> command we need to first export the GSC driver and then
>>>>>>>>>>>>>>>>> wait for the mei-gsc and mei-pxp modules to start, which
>>>>>>>>>>>>>>>>> means that HuC load will complete after i915 load is
>>>>>>>>>>>>>>>>> complete. This means that there is a small window of time
>>>>>>>>>>>>>>>>> after i915 is registered and before HuC is loaded during
>>>>>>>>>>>>>>>>> which userspace could submit and/or checking the HuC load
>>>>>>>>>>>>>>>>> status, although this is quite unlikely to happen (HuC is
>>>>>>>>>>>>>>>>> usually loaded before kernel init/resume completes).
>>>>>>>>>>>>>>>>> We've consulted with the media team in regards to how to
>>>>>>>>>>>>>>>>> handle this and they've asked us to do the following:
>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>> 1) Report HuC as loaded in the getparam IOCTL even if 
>>>>>>>>>>>>>>>>> load
>>>>>>>>>>>>>>>>> is still in progress. The media driver uses the IOCTL 
>>>>>>>>>>>>>>>>> as a
>>>>>>>>>>>>>>>>> way to check if HuC is enabled and then includes a
>>>>>>>>>>>>>>>>> secondary check in the batches to get the actual status,
>>>>>>>>>>>>>>>>> so doing it this way allows userspace to keep working
>>>>>>>>>>>>>>>>> without changes.
>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>> 2) Stall all userspace VCS submission until HuC is 
>>>>>>>>>>>>>>>>> loaded.
>>>>>>>>>>>>>>>>> Stalls are
>>>>>>>>>>>>>>>>> expected to be very rare (if any), due to the fact that
>>>>>>>>>>>>>>>>> HuC is usually loaded before kernel init/resume is
>>>>>>>>>>>>>>>>> completed.
>>>>>>>>>>>>>>>> Motivation to add these complications into i915 are not
>>>>>>>>>>>>>>>> clear to me here. I mean there is no HuC on DG2 _yet_ is
>>>>>>>>>>>>>>>> the premise of the series, right? So no backwards
>>>>>>>>>>>>>>>> compatibility concerns. In this case why jump through the
>>>>>>>>>>>>>>>> hoops and not let userspace handle all of this by just
>>>>>>>>>>>>>>>> leaving the getparam return the true status?
>>>>>>>>>>>>>>> The main areas impacted by the fact that we can't guarantee
>>>>>>>>>>>>>>> that HuC load is complete when i915 starts accepting
>>>>>>>>>>>>>>> submissions are boot and suspend/resume, with the latter
>>>>>>>>>>>>>>> being the main problem; GT reset is not a concern because
>>>>>>>>>>>>>>> HuC now survives it. A suspend/resume can be transparent to
>>>>>>>>>>>>>>> userspace and therefore the HuC status can temporarily flip
>>>>>>>>>>>>>>> from loaded to not without userspace knowledge, especially
>>>>>>>>>>>>>>> if we start going into deeper suspend states and start
>>>>>>>>>>>>>>> causing HuC resets when we go into runtime suspend. Note
>>>>>>>>>>>>>>> that this is different from what happens during GT reset 
>>>>>>>>>>>>>>> for
>>>>>>>>>>>>>>> older platforms, because in that scenario we guarantee that
>>>>>>>>>>>>>>> HuC reload is complete before we restart the submission
>>>>>>>>>>>>>>> back-end, so userspace doesn't notice that the HuC status
>>>>>>>>>>>>>>> change. We had an internal discussion about this problem
>>>>>>>>>>>>>>> with both media and i915 archs and the conclusion was that
>>>>>>>>>>>>>>> the best option is for i915 to stall media submission while
>>>>>>>>>>>>>>> HuC (re-)load is in progress.
>>>>>>>>>>>>>> Resume is potentialy a good reason - I did not pick up on
>>>>>>>>>>>>>> that from the cover letter. I read the statement about the
>>>>>>>>>>>>>> unlikely and small window where HuC is not loaded during
>>>>>>>>>>>>>> kernel init/resume and I guess did not pick up on the resume
>>>>>>>>>>>>>> part.
>>>>>>>>>>>>>>
>>>>>>>>>>>>>> Waiting for GSC to load HuC from i915 resume is not an 
>>>>>>>>>>>>>> option?
>>>>>>>>>>>>> GSC is an aux device exported by i915, so AFAIU GSC resume
>>>>>>>>>>>>> can't start until i915 resume completes.
>>>>>>>>>>>> I'll dig into this in the next few days since I want to
>>>>>>>>>>>> understand how exactly it works. Or someone can help explain.
>>>>>>>>>>>>
>>>>>>>>>>>> If in the end conclusion will be that i915 resume indeed 
>>>>>>>>>>>> cannot
>>>>>>>>>>>> wait for GSC, then I think auto-blocking of queued up contexts
>>>>>>>>>>>> on media engines indeed sounds unavoidable. Otherwise, as you
>>>>>>>>>>>> explained, user experience post resume wouldn't be good.
>>>>>>>>>>> Even if we could implement a wait, I'm not sure we should. GSC
>>>>>>>>>>> resume and HuC reload takes ~300ms in most cases, I don't think
>>>>>>>>>>> we want to block within the i915 resume path for that long.
>>>>>>>>>> Yeah maybe not. But entertaining the idea that it is technically
>>>>>>>>>> possible to block - we could perhaps add uapi for userspace to
>>>>>>>>>> mark contexts which want HuC access. Then track if there are any
>>>>>>>>>> such contexts with outstanding submissions and only wait in
>>>>>>>>>> resume if there are. If that would end up significantly less 
>>>>>>>>>> code
>>>>>>>>>> on the i915 side to maintain is an open.
>>>>>>>>>>
>>>>>>>>>> What would be the end result from users point of view in case
>>>>>>>>>> where it suspended during video playback? The proposed solution
>>>>>>>>>> from this series sees the video stuck after resume. Maybe
>>>>>>>>>> compositor blocks as well since I am not sure how well they
>>>>>>>>>> handle one window not providing new data. Probably depends on
>>>> the
>>>>>>>>>> compositor.
>>>>>>>>>>
>>>>>>>>>> And then with a simpler solution definitely the whole resume
>>>>>>>>>> would be delayed by 300ms.
>>>>>>>>>>
>>>>>>>>>> With my ChromeOS hat the stalled media engines does sound like a
>>>>>>>>>> better solution. But with the maintainer hat I'd like all 
>>>>>>>>>> options
>>>>>>>>>> evaluated since there is attractiveness if a good enough 
>>>>>>>>>> solution
>>>>>>>>>> can be achieved with significantly less kernel code.
>>>>>>>>>>
>>>>>>>>>> You say 300ms is typical time for HuC load. How long it is on
>>>>>>>>>> other platforms? If much faster then why is it so slow here?
>>>>>>>>> The GSC itself has to come out of suspend before it can perform
>>>>>>>>> the load, which takes a few tens of ms I believe. AFAIU the 
>>>>>>>>> GSC is
>>>>>>>>> also slower in processing the HuC load and auth compared to the
>>>>>>>>> legacy path. The GSC FW team gave a 250ms limit for the time the
>>>>>>>>> GSC FW needs from start of the resume flow to HuC load complete,
>>>>>>>>> so I bumped that to ~300ms to account for all other SW
>>>>>>>>> interactions, plus a bit of buffer. Note that a bit of the SW
>>>>>>>>> overhead is caused by the fact that we have 2 mei modules in play
>>>>>>>>> here: mei-gsc, which manages the GSC device itself (including
>>>>>>>>> resume), and mei-pxp, which owns the pxp messaging, including HuC
>>>>>>>>> load.
>>>>>>>> And how long on other platforms (not DG2) do you know? Presumably
>>>>>>>> there the wait is on the i915 resume path?
>>>>>>> I don't have "official" expected load times at hand, but looking at
>>>>>>> the BAT boot logs for this series for DG1 I see it takes ~10 ms to
>>>>>>> load both GuC and HuC:
>>>>>>>
>>>>>>> <7>[    8.157838] i915 0000:03:00.0: [drm:intel_huc_init [i915]] 
>>>>>>> GSC
>>>>>>> loads huc=no <6>[    8.158632] i915 0000:03:00.0: [drm] GuC 
>>>>>>> firmware
>>>>>>> i915/dg1_guc_70.1.1.bin version 70.1 <6>[ 8.158634] i915
>>>>>>> 0000:03:00.0: [drm] HuC firmware i915/dg1_huc_7.9.3.bin version 7.9
>>>>>>> <7>[    8.164255] i915 0000:03:00.0: [drm:guc_enable_communication
>>>>>>> [i915]] GuC communication enabled <6>[ 8.166111] i915
>>>>>>> 0000:03:00.0: [drm] HuC authenticated
>>>>>>>
>>>>>>> Note that we increase the GT frequency all the way to the max 
>>>>>>> before
>>>>>>> starting the FW load, which speeds things up.
>>>>>>>
>>>>>>>>>>>> However, do we really need to lie in the getparam? How about
>>>>>>>>>>>> extend or add a new one to separate the loading vs loaded
>>>>>>>>>>>> states? Since userspace does not support DG2 HuC yet this
>>>>>>>>>>>> should be doable.
>>>>>>>>>>> I don't really have a preference here. The media team asked us
>>>>>>>>>>> to do it this way because they wouldn't have a use for the
>>>>>>>>>>> different "in progress" and "done" states. If they're ok with
>>>>>>>>>>> having separate flags that's fine by me.
>>>>>>>>>>> Tony, any feedback here?
>>>>>>>>>> We don't even have any docs in i915_drm.h in terms of what it
>>>> means:
>>>>>>>>>> #define I915_PARAM_HUC_STATUS         42
>>>>>>>>>>
>>>>>>>>>> Seems to be a boolean. Status false vs true? Could you add some
>>>>>>>>>> docs?
>>>>>>>>> There is documentation above intel_huc_check_status(), which is
>>>>>>>>> also updated in this series. I can move that to i915_drm.h.
>>>>>>>> That would be great, thanks.
>>>>>>>>
>>>>>>>> And with so rich return codes already documented and exposed via
>>>>>>>> uapi - would we really need to add anything new for DG2 apart for
>>>>>>>> userspace to know that if zero is returned (not a negative error
>>>>>>>> value) it should retry? I mean is there another negative error
>>>>>>>> missing which would prevent zero transitioning to one?
>>>>>>> I think if the auth fails we currently return 0, because the uc
>>>>>>> state in that case would be "TRANSFERRED", i.e. DMA complete but 
>>>>>>> not
>>>>>>> fully enabled. I don't have anything against changing the FW state
>>>>>>> to "ERROR" in this scenario and leave the 0 to mean "not done yet",
>>>>>>> but I'd prefer the media team to comment on their needs for this
>>>>>>> IOCTL before committing to anything.
>>>>>>
>>>>>> Currently media doesn't differentiate "delayed loading is in
>>>>>> progress" with "HuC is authenticated and running". If the HuC
>>>>>> authentication eventually fails, the user needs to check the debugfs
>>>>>> to know the reason. IMHO, it's not a big problem as this is what we
>>>>>> do even when the IOCTL returns non-zero values. + Carl to comment.
>>>>> (Side note - debugfs can be assumed to not exist so it is not
>>>>> interesting to users.)
>>>>>
>>>>> There isn't currently a "delayed loading is in progress" state, 
>>>>> that's
>>>>> the discussion in this thread, if and how to add it.
>>>>>
>>>>> Getparam it currently documents these states:
>>>>>
>>>>>   -ENODEV if HuC is not present on this platform,
>>>>>   -EOPNOTSUPP if HuC firmware is disabled,
>>>>>   -ENOPKG if HuC firmware was not installed,
>>>>>   -ENOEXEC if HuC firmware is invalid or mismatched,
>>>>>   0 if HuC firmware is not running,
>>>>>   1 if HuC firmware is authenticated and running.
>>>>>
>>>>> This patch proposed to change this to:
>>>>>
>>>>>   1 if HuC firmware is authenticated and running or if delayed 
>>>>> load is
>>>>> in progress,
>>>>>   0 if HuC firmware is not running and delayed load is not in 
>>>>> progress
>>>>>
>>>>> Alternative idea is for DG2 (well in general) to add some more fine
>>>>> grained states, so that i915 does not have to use 1 for both running
>>>>> and loading. This may be adding a new error code for auth fails as
>>>>> Daniele mentioned. Then UMD can know that if 0 is returned and
>>>>> platform is DG2 it needs to query it again since it will 
>>>>> transition to
>>>>> either 1 or error eventually. This would mean the non error states
>>>>> would be:
>>>>>
>>>>>   0 not running (aka loading)
>>>>>   1 running (and authenticated)
>>>>>
>>>>> @Daniele - one more thing - can you make sure in the series (if you
>>>>> haven't already) that if HuC status was in any error before suspend
>>>>> reload is not re-tried on resume? My thinking is that the error is
>>>>> likely to persist and we don't want to impose long delay on every
>>>>> resume afterwards. Makes sense to you?
>>>>>
>>>>> @Tony - one more question for the UMD. Or two.
>>>>>
>>>>> How prevalent is usage of HuC on DG2 depending on what codecs need 
>>>>> it?
>>>>> Do you know in advance, before creating a GEM context, that HuC
>>>>> commands will be sent to the engine or this changes at runtime?
>>>> HuC is needed for all codecs while HW bit rate control (CBR, VBR) 
>>>> is in use.
>>>> It's also used by content protection. And UMD doesn't know if it 
>>>> will be used
>>>> later at context creation time.
>>>>
>>> from UMD perspective, We don’t care much on the normal 
>>> initialization process
>>> because, I could not image that a system is boot up, and user select 
>>> a crypted content
>>> to playback, and huc is still not ready.
>>> of course, We are  also ok to query the huc status twice, and wait 
>>> if the status is "0 not running"
>>> to avoid potential issue.
>>>
>>> I suppose the main possible issue will happen in the 
>>> hibernation/awake process, it is transparent to UMD.
>>> UMD will not call ioctrl  to query huc status in this process, and 
>>> will continue to send command buffer to KMD.
>>
>> I think there is an agreement that it is ok to return 0 to mark the 
>> load still in progress and 1 for load & auth complete. However, 
>> double checking the code it turns out that we currently return 0 on 
>> load failure, even if that's not particularly clear from the comment. 
>> I can easily change that to be an error code, but not sure if that's 
>> considered an API breakage considering it's not a well documented 
>> behavior. I believe that on pre-DG2 userspace considers 1 as ok and 
>> everything else as failure, so changing the ioctl to return an error 
>> code on failure and 0 for load pending (with the latter being a 
>> DG2-esclusive code for now) should be safe, but I'd like confirmation 
>> that I'm not breaking API before sending the relevant code.
>
> The UMD code is like this:
>
>     struct drm_i915_getparam gp;
>     int32_t value;
>     gp.param = I915_PARAM_HUC_STATUS;
>     gp.value = &value;
>     ret = ioctl(fd, DRM_IOCTL_I915_GETPARAM, &gp);
>     if (ret != 0)
>         hasHuC = 0
>     else
>         if (value == 0)
>             hasHuC = 0;
>         else
>             hasHuC = 1;
>
> Currently the behavior of i915 is:
>
>     if there is an error, ioctl returns -1, and set errno as 
> ENODEV/EOPNOTSUPP/ENOPKG/ENOEXEC;

Not exactly. The current map of FW states to ioctl behavior is:

FIRMWARE_NOT_SUPPORTED -> return -ENODEV;
FIRMWARE_DISABLED -> return -EOPNOTSUPP;
FIRMWARE_MISSING ->  return -ENOPKG;
FIRMWARE_ERROR -> return -ENOEXEC
FIRMWARE_INIT_FAIL -> return 0, value 0
FIRMWARE_LOAD_FAIL -> return 0, value 0
FIRMWARE_RUNNING -> return 0, value 1

So we do have 2 error state in which the ioctl succeeds.

>
>     otherwise, set *(gp.value) as 0 if HuC is not running, or 1 if HuC 
> is authenticated.
>
> Hi Daniele, which value are you going to change - the "ret" or the 
> "value"?

The idea is to change the 2 FAIL states above to return an error 
(probably -EIO) instead of setting value to 0. This would be compatible 
with your code snippet, because it'll hit the ret != 0 condition. Value 
0 can then be re-purposed for DG2 to indicate "load pending", which 
would not be compatible with your current code, but being a new addition 
for a new platform does not necessarily need to be.

This said, I'm not sure if changing the return behavior of INIT_FAIL and 
LOAD_FAIL is API breakage or not, given that it won't impact userspace 
expectations. Tvrtko, any feedback here?

Thanks,
Daniele

>
>
> Thanks,
>
> Tony
>
>>
>> Thanks,
>> Daniele
>>
>>>
>>>> Thanks,
>>>>
>>>> Tony
>>>>
>>>>> Regards,
>>>>>
>>>>> Tvrtko
>>

