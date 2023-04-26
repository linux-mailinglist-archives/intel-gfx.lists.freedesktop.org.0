Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C2B36EFB01
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Apr 2023 21:23:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C44B010E321;
	Wed, 26 Apr 2023 19:23:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 213FD10E321
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Apr 2023 19:23:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682537007; x=1714073007;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=h9BezwbaZcAbXDPe0C5uwxVmU/0aYSPN+I+uJQ9TISQ=;
 b=NksjnKevRUXzbVHtgBMyS508xjuePONyJSkp097nul1aM7NRUA/Olk1t
 sm1Y6B9Z5wx4nCtm3uv7FiZ8LLbMaU6AzTf3MdV8n2q78dY+C0z2EYJRY
 pzdb2jGUlY5lFFl/j9+YBe+K3LCZBEYKc1xSa2rPZ1RYEue4U7iKFC2Iz
 3yH4Rifg++aFeC1a8thimtZDsbCgpChjY6kTtSYFL2kPeW6tcltO93/JM
 aX+D+aTvn3uqzhw6krQ/A+Isl/6IANP43NBQ4FkLaS6/GEt8Jmik8ddZk
 5qyctSzKVtANcJaf3JW/hvrcXu3u9ILGzssSWzOlQhiu3BdEJFBw8+hE7 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="347236078"
X-IronPort-AV: E=Sophos;i="5.99,229,1677571200"; d="scan'208";a="347236078"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 12:23:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="763461088"
X-IronPort-AV: E=Sophos;i="5.99,229,1677571200"; d="scan'208";a="763461088"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP; 26 Apr 2023 12:23:26 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 26 Apr 2023 12:23:25 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 26 Apr 2023 12:23:25 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 26 Apr 2023 12:23:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BnnAMNZIkUu0wQXnujjp71jOhtHezhFpI7YzwQxwEkTbblkAqWjIaC399CS0JdMu/8mi7RFd8pcj5q4GnIkZsFdGC2+RX91LPF2LXeNivZTn/dJVA+AtS5pOH2az/BZ+6cxWPeOj9HHEY7eeWL4tEs634Gmb82LrSXZKtHKY4dZNeu1pYU5Xa0ZOtcccC+amHBQam/Viq0BAJKt3eT9l3GrXZOil/b7R1N7cKzwx8AAV3dY49w1ucZjyP5x/zgzNFRzvSiyW9PG8VjH9KXGgKP/chDlQ+wnQEfbLup5lDo/G4MFFMI3tsbmN2i1WZZgQd9v6CPZ+VPPKdQoLXUpojg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kI2LPn82uSULuFYDnvRJp+l6wwnc6c5sj5fKF2JR9ts=;
 b=bqrr0gU79EhE0cgd9ToSXArZ15OgrhQ7s2a2pk7I/NryrcB526sD7QY0eR6owkj9X5P4muTlDaGl/H74jvlqxhlQV9wEn0AsMZE+QvgJMMMhLcihaRuuuEU/BwL3zdyXbCk9YvF7qHmQH74sBZcRZxQ3TY/yWQ9K3lC/RDksJnYjWeNas8+YGMCZgjZ/MpSWkf3NGYMJWmystgSip6E5DilzJE6c7AvdplBBQqOAvlEKIH484Tp5WYDdIGfdolHuJGNIV9Rf+48uSQ8DYocMsv6r96ulIPBCZpDdQ/eLgbHkIl2C3iuk3tYFp9U/kvFSWh5X1D9JQNvgZta5x1JAwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by IA1PR11MB8222.namprd11.prod.outlook.com (2603:10b6:208:44e::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6340.20; Wed, 26 Apr
 2023 19:23:23 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::28c6:f268:89bd:e45a]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::28c6:f268:89bd:e45a%7]) with mapi id 15.20.6340.021; Wed, 26 Apr 2023
 19:23:23 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <168251328980.2664.15413475376781466021@gjsousa-mobl2>
References: <20230420221248.2511314-1-radhakrishna.sripada@intel.com>
 <168251328980.2664.15413475376781466021@gjsousa-mobl2>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Wed, 26 Apr 2023 16:23:19 -0300
Message-ID: <168253699955.2664.12623580571586119826@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ0PR05CA0093.namprd05.prod.outlook.com
 (2603:10b6:a03:334::8) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|IA1PR11MB8222:EE_
X-MS-Office365-Filtering-Correlation-Id: e253ae43-cd75-446f-5894-08db468bb3cd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tHT17K30IC2GGJPC+R6j77tx5//hnWbWTT1Z8JnJ+B2WLKg2L9/b2IHcRs4fjr+rWtgh7EKj3eQgXjwLuR32WOgE+1kuEjjowoiYumoXxly/99IuyXtRMPV6RFap+Nuc4zJ8JbTnX5oLrADGAK5n4FmGwjrMKzG3i6l3QNid/SZQmODNWBDy9rQxEjWFnmqgnAA6qgRMzfTRcoqt1nRTPFPFxMeCweIEK14wn9GpdSqEpHtbDSnPr+R1qhBnOMHgLpEn2zYZzR4LkD43WFmt+O49tjlAr2L7RbmILkhkF/Q8NZzYnc/pXiOflF+plMT2rarUX61IjOs2j4obUU1vcOPhf7YsGA93GmoxfxgSY0xZYY3FaosT4ZhJ0TbzT6cUt/GAe+5mNg5f9rNiV1Mw66Dd7uOSD417sgbAdDBoJXLStFFlN2sFsndU/sRU6TupeRO2Tec6plVg3ATTIRubopOlZ+k5PeMgKbtYnaemR7pifPgII9lZDpd4HaWxZCMvaKbeUvWPvez0huWvY3YJLA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(346002)(376002)(136003)(396003)(39860400002)(366004)(451199021)(966005)(478600001)(6486002)(9686003)(6506007)(33716001)(26005)(186003)(6512007)(44832011)(5660300002)(82960400001)(66946007)(38100700002)(41300700001)(2906002)(66556008)(66476007)(86362001)(8676002)(8936002)(316002)(6666004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dTZ1UlBoNFVqdVp6dEk0UXlOSzZVZ3QwWS9MMGg1WWVSakY2NWdmU3BUNzBJ?=
 =?utf-8?B?cVRhTUxzczk2U1E3VHkySjBmTVpTQzFoYmxxMDVCZ29VbEpSTEZ4L0xveWUw?=
 =?utf-8?B?YVVGcno1V211U1U5VzNIYzVuc0xVdVBGSk9wSDg2WUVQY1FWekRoZVo4NFA5?=
 =?utf-8?B?M1lIdjZudU03YjZmcFQrUHk2OGRvVjcwcVFKOTM2NjlaeE1TWnZNSU95S0RN?=
 =?utf-8?B?YWNtUTlxU2FqYUMxNmQxbWxZK3NhZG5OajRhZXpWYjFQMmQzbWpiUXNFVWVp?=
 =?utf-8?B?V1Y4VmVKU0J1TUp0UU5CZzE2dnpRTmdudUF1ZEd4Wjl0dm5MeVJMOElNWndl?=
 =?utf-8?B?SDZUOHhHOTJtWVNnbG1BTzdyL1drU094NEl1VVpZbmxmVGRhR2lWdmt2VWxw?=
 =?utf-8?B?Znd1d0tWa1dNalpmdE1aeFVwZGZRckRkSXhuNWJLRDVJalNHZDhOSkpKcnFU?=
 =?utf-8?B?TjV0OWk5ZWVPLzJxSGN6R3lrQ21kM2pUN0RCNk9QeHRzQlhUSU9MK0F5Q2ZB?=
 =?utf-8?B?SGZzeWp1UkhIZnFjWXVQbnFhbUNIU2hqYmtwME9rS29BQytvUi9oTjY2R0Vl?=
 =?utf-8?B?c2IyUzZ0TTFYZGxnTUxjQ2dqOW96aDZqTEJHaE96SjJidzJtRVpQUzk1SGNh?=
 =?utf-8?B?OW5JSkFGK1dzT1JGSE5tc3pLUTJjWnlYWUFwWDZWRHJjd3dnMWlvczlqZVJi?=
 =?utf-8?B?T1JSeFJ5Yi9GcWp1bmxaZGIzTng4NWE5TVh4TW1KNDJQNWRCQ09TazV4Y1NN?=
 =?utf-8?B?dDl5SXRpQitSR2ZKTXU4SVFDdnpROXM4UjhtZURVQ09rZmpYZE9haWhZQzVk?=
 =?utf-8?B?OXRGU1NQdjhnbkdFU2cyTXpSalNxZFNLRTlaaUM0T2VueVJ0NE1oTHJVejcz?=
 =?utf-8?B?azQxTitCZExzeDBhQ0dzV1VzSWplcEcrY1FLODh4TWNxUFBZVGhjWVFLWG0r?=
 =?utf-8?B?WC9uRDRVbXp2VEUySWpWQjRqbzlSTTVteGZqZFkwcWZSRzJvNFl2SkgycEVL?=
 =?utf-8?B?VGErRXNFRS9MV21NeVRDVytEcjJ4ZG1qN2hvNmZvaE90NWxPK2cvSkN6NElM?=
 =?utf-8?B?NFM1SnBvOTArTzZPUnExcW1MKzlSNDZjU1NZQWsvL1NLQ0hhV0N4MU1pQXRO?=
 =?utf-8?B?ZmRBM1poblgzb1MvU0RsTmVtNGcyTE0vaWV3Wmg1Y3poQjhWU0FmQnVlTUdO?=
 =?utf-8?B?Z0pYZjVjZDNjRCtHekZWdDBXTjBNQ1JNa2dLYmdmb2FzRjlGMUpoUTVzNW5B?=
 =?utf-8?B?WU1lTUhTU28yUllsaWdESEdLczAzVklIMTltKzdFbEg3OERUTkFucFQ4MDJ1?=
 =?utf-8?B?M0xNc0d4YVZFZklDTzdsVUZxRGJDS0JYYUtnQ09pM0FEbTV2SE5ZUyt2RUpP?=
 =?utf-8?B?bUlnMmdjLzdGZnRhSTZOYzJMN0dpYTE1MlM4djFjamV6UFRQOG5ZcGdKanVQ?=
 =?utf-8?B?Q09sbFZzWHpxbFZycDE0WCtjL0JHTFhrYnpuUk5oWXRmRjVVblBubXZxb0RP?=
 =?utf-8?B?aDFoL2JxUXVlT01UcXliU05UTXhPSGYrWHBLNXJQeFpxYzBhMDVDZTg3OXpr?=
 =?utf-8?B?K3RJbC9UNXFJZXo4SlN0M3JRNzR5dWs1TU0reTRMZUlwc0crTmVsOTFIVEty?=
 =?utf-8?B?TldZRlpHZ2lRakNCRlpwWHRWbnIva1JvdG9YMmxmQ09lekZZZ2Z3ZVlPaXVk?=
 =?utf-8?B?dHNGSHFnbkIwZUdkSEUvVE5rZHVKcWFrRXlGQzcwdXNMc3Y2dFVrcFVlSHVL?=
 =?utf-8?B?MjdkZnBQbjJZcm9mamhERE1YY0RsU0FDVjRzRSt6QldhQVIvYnVmd2E4eWt4?=
 =?utf-8?B?QUJRQ0trN0pPQlRROEhXY1BNcHBIVkVDWWNlaUtFajJtK2NzWWcrK0tKWjA4?=
 =?utf-8?B?bnRDdmpaWHlXNlJ5Qlg5Z2hWemdHdG1CeVRrUWljTUJWc1ZOOFYwNktEUWZW?=
 =?utf-8?B?SDc3dlEzN1Q3MDBiYlU1N1dLVnlhL3NFUnZJWlZYYzRzMmhzaSs0Y29mdkU3?=
 =?utf-8?B?SmxZZTFCdm9Na2RiTXE3MGpYZnBQMTErRmk5OTVZdWRDSzRNdW5RKzN5ZXJo?=
 =?utf-8?B?b2VvS2FNekdmTVExNEdtelNMM2doRDFuUHgyeXBldTFuSE84L3JTYkkxU0V5?=
 =?utf-8?B?cWp4bms3aHlmSFJ5a0ZKMnNSblZnWHhwd1JSTXIwM2xMMElLVzNualJHa3Zr?=
 =?utf-8?B?ZEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e253ae43-cd75-446f-5894-08db468bb3cd
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Apr 2023 19:23:23.6797 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: e1JzRTz5OEiqHxWJY4jv0Qh7RAaO/SPpPJjHYIrMiIyXvGHURSlvKU23wE3FyHfbDZDhfz+jXk1+TcFNlmIdPA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8222
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/mtl: Add the missing CPU
 transcoder mask in intel_device_info
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

Quoting Gustavo Sousa (2023-04-26 09:48:09)
>Quoting Radhakrishna Sripada (2023-04-20 19:12:47)
>>CPU transcoder mask is used to iterate over the available
>>CPU transcoders in the macro for_each_cpu_transcoder().
>>
>>The macro is broken on MTL and got highlighted when audio
>>state was being tracked for each transcoder added in [1].
>>
>>Add the missing CPU transcoder mask which is similar to ADL-P
>>mask but without DSI transcoders.
>>
>>[1]: https://patchwork.freedesktop.org/patch/523723/
>>
>>Fixes: 7835303982d1 ("drm/i915/mtl: Add MeteorLake PCI IDs")
>>Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>>Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
>
>Acked-by: Gustavo Sousa <gustavo.sousa@intel.com>

Promoting this to a

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>
>>---
>> drivers/gpu/drm/i915/i915_pci.c | 2 ++
>> 1 file changed, 2 insertions(+)
>>
>>diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_=
pci.c
>>index d64e074d7457..847057569796 100644
>>--- a/drivers/gpu/drm/i915/i915_pci.c
>>+++ b/drivers/gpu/drm/i915/i915_pci.c
>>@@ -1135,6 +1135,8 @@ static const struct intel_gt_definition xelpmp_extr=
a_gt[] =3D {
>> static const struct intel_device_info mtl_info =3D {
>>        XE_HP_FEATURES,
>>        XE_LPDP_FEATURES,
>>+  .__runtime.cpu_transcoder_mask =3D BIT(TRANSCODER_A) | BIT(TRANSCODER_=
B) |
>>+                         BIT(TRANSCODER_C) | BIT(TRANSCODER_D),
>>        /*
>>         * Real graphics IP version will be obtained from hardware GMD_ID
>>         * register.  Value provided here is just for sanity checking.
>>--=20
>>2.34.1
>>
