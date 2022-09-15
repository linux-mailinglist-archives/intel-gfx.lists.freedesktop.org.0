Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 049EC5BA05F
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Sep 2022 19:26:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED86710EBA1;
	Thu, 15 Sep 2022 17:26:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED1B810EBA1
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Sep 2022 17:26:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663262806; x=1694798806;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=zoYuJbYeEAmUQyAg6ksbKUlWqQSrLpTGUzDApIcuntE=;
 b=Adn8m3dRkY/i3WzuOTYmFtIeadBb79f5W/qu1o3PCeywzxmbYAS4xIxK
 W6ipDSvjf6AaPhwR2dx5Ep42wBD9vaar3pGTgfSjeeYshfb2hL3cKlU+D
 rAQdlSZaEvh1TGoZC0boM50YwNNL+ihpDe8OmztZYuXxhpf5gaSBSf8kf
 i/nNkrR0noVSU7E3E8uglQDwKqxl6BGdmKYao+BludYziZINL28eqaxni
 SV7Mmj+q4mard/x2ba74lQkmnbqWnVBBLL/86loxwxexX97YTxwagCgIp
 1Wq/18vhfBBH06sJUD+CG5wrBSnYKmgLs3MaHlQOClL8tIuv9l0kKKs0W A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10471"; a="281817797"
X-IronPort-AV: E=Sophos;i="5.93,318,1654585200"; d="scan'208";a="281817797"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2022 10:26:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,318,1654585200"; d="scan'208";a="619788109"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga007.fm.intel.com with ESMTP; 15 Sep 2022 10:26:45 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 15 Sep 2022 10:26:45 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 15 Sep 2022 10:26:45 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 15 Sep 2022 10:26:45 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.109)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 15 Sep 2022 10:26:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=enUQbTIyhb8kIc8FldhJRsTU0e0nbtw4E9XN8yaZnYGktG0jfpoYBjOgdDIcoCXbnL9Tqu8Do9KKA+WSHV2WrBsjQ9Bq6gRJGgeNjEec7rglvJSDRwkeHZog98Ek9mowBvgiXf8Gv0ntij2CRzty3ZPSv5EY9bX4sLdCVxnYsF1ydskvvaTYC8pfGT1ZKWPsAGqiPTj//k0GGZ4Hl2/dpp8+M/j8NaL7IcpsrAA8JJAM3FcJdW9UsyPaqpFsAJByJhhbcUK3iMDdyyjCEm5NQpVtSQITFpE2ehTc52b6iX/4nfMmIjWgVcx5Ry/X9U0k6/UAG80HNEfCik7/iowsXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sweTetjsGW5yehEQqZWoVnv1dsXXLp79O/bR5QBt4PU=;
 b=iCW17YoYZx0NswSwsz20WpbPV4FcF9Gjv13Fg0eFfTst7gD+rDJYGcmXNiitFdl8KyygAs2ik0mYO6h+G2EcGaaZQwKUtHOO7W3zW3x4mQtb5v/Z617s4b6/OpU5SpTljVNG8nDqGSWy7ZurYqemao45OjnNSNRAvTHok3RuOcs/pXeL2FjrRIWJy9aPcStZSOY57WGC/ys+imCHutydhsB6fegxnHOujKl2pi15ZqD4SUx2GTzNGa4OE6T8CyUuMHDerkw0uWcEfiA9kyobPxOCdoyx1oO3DdJgNvCXdF+Qyla0G8xJ9moG5H1cCl59Nq1dto3ju07Fs4PrDtcOwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SA2PR11MB4842.namprd11.prod.outlook.com (2603:10b6:806:f8::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.19; Thu, 15 Sep
 2022 17:26:42 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::b80a:cf49:9118:24e7]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::b80a:cf49:9118:24e7%6]) with mapi id 15.20.5612.022; Thu, 15 Sep 2022
 17:26:42 +0000
Date: Thu, 15 Sep 2022 10:26:40 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20220915172640.o3gg7lwjoe33tcku@ldmartin-desk2.lan>
X-Patchwork-Hint: comment
References: <20220914203545.4057637-1-lucas.demarchi@intel.com>
 <500be188-d8e0-2bc6-4f54-13a8784c0321@linux.intel.com>
 <20220915080946.fipzdukq4ib2efdk@ldmartin-desk2.lan>
 <071854a4-8797-4d12-12c2-dda304ebc8ec@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <071854a4-8797-4d12-12c2-dda304ebc8ec@linux.intel.com>
X-ClientProxiedBy: SJ0PR13CA0194.namprd13.prod.outlook.com
 (2603:10b6:a03:2c3::19) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SA2PR11MB4842:EE_
X-MS-Office365-Filtering-Correlation-Id: e7515cb9-b7cc-4f22-5607-08da973f745c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Q+9xI9lb/sM/7vWotxaDKOAJeKC6SxnVbW60ZPB8uaEHXt4Z23Q9G1+Qy3leXyKkQzd9Duhq32DyIsmgXzU+3G+wUNOAKNH1PR9nTKnBNwp3W+4Hn5lwKuQCkOLAvyen/wQNsRoWomNdqcCC+6POWKjgyeKbyTBSCqneW/nXUwVBAwxDkk+0WsTEwtcmpVRTFW3TQlWmTba0FltL3R6G3xnL/R5XG7UpKbmZNYR5VnQPxHsRUrW+tJ+4Jllpu2jHiqaX2HcBgF0/Wrc2YUjlnWQIdvgbUiZq++/H1XeZiHkmHzKRIrVxp9snPVvcDLn8UBJErA4tjpjJyDlBpDpjuDBTFgxDmqpKcbG5BSG5snq4zu474gmOsVWZXV7Mdd7ki0h2vuoFSRwDlQnJKI3ZEULGB/MqttUu8aEje4eNdRhw2qXfCZ6EeWrYKaT7R6UKaVumysyfE910iA2WarMAiCrU/KxfWpjpWHSuKolJ3A5siWnF/hL87xBSDR3lEu+HDZ+FgzH0Afq6OAwj7wk8Gg0vNdGuvT24iuppAYGDseL34SyQskiO5hVheIDZUnTNu4GIOOZxf4T/If4T42bNayJvljuXo9QuzOM1UhSPTmDmwTsVBeScvNgzhUTukGsPHyCBV5kMgx2uLzKy+eVrILrVt/bEB4ocaMs9itJUXZnU8G6f/3qeHtDAhc6LZltOJKcy1QG8jXzn/ScQnhkSOn5S7GM3wcaHXOppXwT5Hgo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(39860400002)(366004)(136003)(346002)(396003)(451199015)(478600001)(186003)(6486002)(66556008)(4326008)(8936002)(66946007)(2906002)(9686003)(36756003)(6512007)(83380400001)(8676002)(38100700002)(82960400001)(1076003)(26005)(5660300002)(86362001)(316002)(41300700001)(6916009)(6506007)(66476007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?+PfP2lxWBTs0FZwpca0pYD3+AgbEe/w445ziUU2WXBVvcxogG4706M5grS?=
 =?iso-8859-1?Q?PVjCr9rL8fDVFWrMCd2I2A3zQMwUi8nmTWuy1iOadIjHHll5cESsdKleuh?=
 =?iso-8859-1?Q?vQPThXXp7RKXdbc8JDbFQP1Y13bhohsGvlQNKNLPO5qHTtWwj9c7wxLcxe?=
 =?iso-8859-1?Q?qz660Ex+IK6trLVbWgtolZsMPDl0FxCrAMZ/vBiYb8j9f4nbUk+MEzjOgY?=
 =?iso-8859-1?Q?RStjmJ4/Xm+1QGEcsxp+L1Ej7Bnx4xL7T775ZklTU5Rc2anzH3GGvRQw1t?=
 =?iso-8859-1?Q?m8SooBsEUngBhx29N1UR2UC0MkP8TIKvbH/j3TS8r+Dt6JS5/wRLMN2xN9?=
 =?iso-8859-1?Q?jwD0SlAf8CsS8u/jWESk8tfTomFGQKgQhSVpzJSW9Y21fFeeItSgcjchCe?=
 =?iso-8859-1?Q?CPAnJ1t9vIoPJ0qM/PB7/vZWhZh7g00W1esfKvP/5ujyv0RgQld7EQaWG0?=
 =?iso-8859-1?Q?tsVq2Zvxysi0rDoAjrClKLiaJUDC6oWC+W6Sagz4HdTB4tHxcG7mpcLpPh?=
 =?iso-8859-1?Q?DcCFj82LGaPgbq5583p4G51vFJC4tefOXJeR4YtlRZgfEnONZSoSREQK3m?=
 =?iso-8859-1?Q?yDFqzOCyONn0Ufqz0z1WLF9RnjleT35xDiAqQf9CIIcmfq2RUvIsqzO0bv?=
 =?iso-8859-1?Q?3iwXh6SLu9PGvhONdGYxxm28L8u9tX/Ts1sPsMUL107P9+dA0a7Z018Fmw?=
 =?iso-8859-1?Q?JnauZeYOj3bHzG3zs+CfMtOpqrgVXCzrWAerTB6SCt89vcnSWbmoGdwb8D?=
 =?iso-8859-1?Q?GSFRcRctvVJhGM/aJIQEdELYa5BPb/myeRHkRJBCUrAul31TC2aEFgTUQH?=
 =?iso-8859-1?Q?iyOdeuJ7f4XaId1Hz8oJZ/mW7zrfkd1rcP/CDW/lEco1UVfrjyILQrlnvC?=
 =?iso-8859-1?Q?9smJ6IRgZPwFlP7kYVRspd7kMR2p3zzlqZooQ331Z9COAShqVdJwmbGilc?=
 =?iso-8859-1?Q?ruDdB2vv10rWxiq2ltO85GPkWG7nsTXetL5AwytwOtKKvJNF5IqkuytzWj?=
 =?iso-8859-1?Q?rvommaq152CoP1NPQ/asvaHJchpyDMLmYMJrH2FSACaPIwkRreorAx3A6E?=
 =?iso-8859-1?Q?CSjfZK0Xr3Ea/VnHfJy+tVXOdVxlHdk3QrFLcQvVjPM8LfjON+qa3uctLi?=
 =?iso-8859-1?Q?SCJ16mG15AZ0EiZMQ8SzOKANYdhMcMRptMd9ki/sy0eauewumFXjcL21ro?=
 =?iso-8859-1?Q?+j6255R1g/6jmwb2e1cA3JHWpqU8qXUg9g7o6xP8T+Dwksa5VFMZpsun+L?=
 =?iso-8859-1?Q?o1E91GufSNznpnblp5WCr3gxkVW0m/sS6tu/puKvMqJFVKv2feTWjAFWNg?=
 =?iso-8859-1?Q?4J5kPXhh9uQnuoxEAy/8X1eIbvDdGVKFWfrLoCF9O7K0Oaj57wvLflFXka?=
 =?iso-8859-1?Q?TJy7WSC/aF7SOmcURxFixa356cEOEVfcllVO1v68ZGpd1fXdCa3d+P4yid?=
 =?iso-8859-1?Q?HzBx/6+SN1oS1/uXWXl/nBUBLCj1EUu0rDDgfiShYE22cdheN+I6y9Sprv?=
 =?iso-8859-1?Q?YPzJIusqOvnECb6M7TPCrGwstFlksL1fi+8snCw0zWKYtQmZhYUy2Z0L7H?=
 =?iso-8859-1?Q?tAhwMek/53YPM7PaJUB9q00v99Iictn2xkDHXVer571MoyVNVZnSz5UcuO?=
 =?iso-8859-1?Q?1YibrU/rZtbvI8+tvTjgT08vib+GKvJ404TDL7aXaElK+P6vIPHAILhw?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e7515cb9-b7cc-4f22-5607-08da973f745c
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Sep 2022 17:26:42.6503 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HuwUN8iC6brbsYIPY8wU9xSJJHt0X65V9r1pTih2YxacgUul+lNv6UZyP/ny6aaEpdpbTEiy9nE/KZjtFXnMvH7f5DWfLl23whYLAnhgvuk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4842
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] Revert "HAX iommu/intel: Ignore igfx_off"
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
Cc: intel-gfx@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Sep 15, 2022 at 09:23:52AM +0100, Tvrtko Ursulin wrote:
>
>On 15/09/2022 09:09, Lucas De Marchi wrote:
>>On Thu, Sep 15, 2022 at 08:53:16AM +0100, Tvrtko Ursulin wrote:
>>>
>>>On 14/09/2022 21:35, Lucas De Marchi wrote:
>>>>This reverts commit 58f44e349cfc10a4f2208fd806829c8fd046480b.
>>>>
>>>>To be removed from the topic/core-for-CI branch. If CI's config is
>>>>setting that, it just shouldn't do it. Looking at a random current CI
>>>>execution, the command line is:
>>>>
>>>>Command line: BOOT_IMAGE=/boot/drm_intel root=/dev/nvme0n1p2 \
>>>>    rootwait fsck.repair=yes nmi_watchdog=panic,auto panic=5 \
>>>>    softdog.soft_panic=5 drm.debug=0xe log_buf_len=1M 
>>>>trace_clock=global 3 \
>>>>    modprobe.blacklist=i915,snd_hda_intel ro
>>>>
>>>>So it should be safe to remove this commit.
>>>
>>>It's a patch which can silently bite so no complaints from me to 
>>>remove it - just please upgrade the check from a "random current 
>>>CI execution" to something stronger. Ack from CI folks would do.
>>
>>Well in the commit message I mentioned "To be removed from the
>>topic/core-for-CI branch". This is how the topic/core-for-CI branch 
>>is handled
>>until now. We simply remove the commit and force push.  So there 
>>won't be any
>>trace of commit messages for me to write anything stronger.
>>
>>To be at least registered in the mailing list what I used (no it was 
>>not this,
>>but linking to the execution for this specific patch serves the purpose):
>>
>>https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108575v1/bat-dg2-8/boot0.txt
>>
>>
>><5>[    0.000000] Linux version 
>>6.0.0-rc5-Patchwork_108575v1-g37b0cd34584f+ 
>>(kbuild@ci-worker1.fi.intel.com) (gcc (Ubuntu 8.4.0-1ubuntu1~18.04) 
>>8.4.0, GNU ld (GNU Binutils for Ubuntu) 2.30) #1 SMP PREEMPT_DYNAMIC 
>>Wed Sep 14 23:50:09 EEST 2022
>><6>[    0.000000] Command line: BOOT_IMAGE=/boot/drm_intel 
>>root=/dev/nvme0n1p2 rootwait fsck.repair=yes nmi_watchdog=panic,auto 
>>panic=5 softdog.soft_panic=5 drm.debug=0xe log_buf_len=1M 
>>trace_clock=global 3 modprobe.blacklist=i915,snd_hda_intel ro
>>
>>
>>Petri already acked this from the CI side via IRC today.
>
>That's all I suggested. :)

Great. CI passed and this is acked by Petri and Tvrtko.

Applying.

thanks
Lucas De Marchi

>
>Regards,
>
>Tvrtko
