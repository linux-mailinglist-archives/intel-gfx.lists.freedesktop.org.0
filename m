Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AC215B0D2B
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Sep 2022 21:26:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09DB910E846;
	Wed,  7 Sep 2022 19:26:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71EE510E846
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Sep 2022 19:26:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662578802; x=1694114802;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QCQlWofc2aGIcuOJ6bhmWFEbp1tl56tvtMEfAy2RJ7o=;
 b=gV4Zd7Bx+GIHJufRe9Z9WHsUH68zKXV7CAu0O38vPpNIoRilGGyd0cep
 t5Ig829C/slJz8Usb4X2jlGvneJcSKsQmj/C4+ibD0kn0Z3Qqv8J29XDn
 j2t40per+H2Nzk6HAQJap9ePgTpYL6KR1fHjL7bOs0NSjRH/FnfXkQCIi
 DqSn983XcN+Jwy45baGbYDpU/jvidZj5nFkUrnrSF6Y4vdIVd9Nb1/xWC
 L/nme2JPxPPz6Ncgrt8XGuEvb/R0Kf+oVVbtZ1OxxB8yYT7zp4+jR0ZFL
 KpSoTJpYxvhvWBUj/UB/Ghe48mCfNeUNCG/kPhXmuWaxsLcGcqPRzPqJD Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10463"; a="383269542"
X-IronPort-AV: E=Sophos;i="5.93,297,1654585200"; d="scan'208";a="383269542"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 12:26:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,297,1654585200"; d="scan'208";a="591848705"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP; 07 Sep 2022 12:26:40 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 7 Sep 2022 12:26:39 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 7 Sep 2022 12:26:39 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 7 Sep 2022 12:26:38 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 7 Sep 2022 12:26:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C0UrhagCXRBXkqCxtgL2mxJ+K2KVfbmJTPWut0/5J5ZJCymh1d7Dv+wTS0/52Es8jS6GeP0dooAZDiNCmoy/JWCgUfTB4JvZ5M2r8yYcmXTQzYsmBPdqJP7B4fruBJGPZO5sLBBlZRX5o/Ul3nre1Wc0Ib9sP3DfRiQW9JY/uHsr5NMVyfchLnxS1mRDqKiopkevbxtHD+PmqW3ZrZidCyuejL5BXNXq7Nog+DuXNd+ki1yN5xeO8VKymWuBODJcvbCHC4MS2GMGkAWxzSYRSGVOokLXMKWT11oNIFXl2phP4KsLBFeG1cwQoK0IJPl72jRxc77eH0nbgvJ/4KXqVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ei+8jOkVD8MJqkbjfMfYo9AZ1Z7V6fgFXM/GFny9WuY=;
 b=Vj1h4P/A4ASmL/ssDCocnmh0A3xd+8ET+SSL++TabUxAKm0eO/NBuayNBHtQMHDjQ706RelRPlKRBXDTSSX0Z90cV0WoX5svccp0dNyfLEtkZt20mUeP/IBttByESko15+evf7PVm3mcKB74hqiauvhDAUHZH6LlSoLHAhuueI201pymZbUE/zdcWo4MpYWe1HkCcUZzQb9ZnvxZ/q2GjdSNlOjfwl2edgimnPj6m+ow9JJuijKHVZt5v5DCzNNWk2qXzajV4+sjOvya+LMbcE6lfSoInmTYTtn2NrhpfgfjvUIcXGdW/4yR7KWJKQYJ1ZLTAXDuND8uJc411G8MTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 SJ0PR11MB5085.namprd11.prod.outlook.com (2603:10b6:a03:2db::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.10; Wed, 7 Sep
 2022 19:26:37 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::1977:59e7:5a28:24e1]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::1977:59e7:5a28:24e1%9]) with mapi id 15.20.5588.017; Wed, 7 Sep 2022
 19:26:37 +0000
Message-ID: <8a206950-6208-fd21-daba-681a9818bfb7@intel.com>
Date: Wed, 7 Sep 2022 12:26:31 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Tomas Winkler <tomas.winkler@intel.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, David Airlie <airlied@linux.ie>, Daniel Vetter
 <daniel@ffwll.ch>
References: <20220907155813.1427526-1-tomas.winkler@intel.com>
 <20220907155813.1427526-15-tomas.winkler@intel.com>
From: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
In-Reply-To: <20220907155813.1427526-15-tomas.winkler@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR05CA0046.namprd05.prod.outlook.com
 (2603:10b6:a03:33f::21) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 94ec8c3f-9462-4634-8456-08da9106e1d8
X-MS-TrafficTypeDiagnostic: SJ0PR11MB5085:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gYDkFVn2k0Q7KVVIebC21JTW41lE1mobe/fg74yeuUMVcHXy3pkeq23nIp7bD2ThV/8Ls4vvEJVtIJw1DEbnKpshe9QkJCbP2/VxFqQ3S354Aa9tkMyDS9+0RAQlgZigi7TTZg20iNY/EYFkAFoYObSiIivFzuBSblH7KEwED5cqxsan8sq64l11nbjgeo5UUMbnBQxghDYLF36g51Pp304GZrV/sJGbbv2niaFnoAOSNFxVfGwR7mOZf7TF4i5yhMiY2yjPDNwYgnDGgKnESC4FWvvQOwaUydYYE+LIPoMz1XbE/LUIVVQQa5udMk5vvapGXA7t+QLEZ0rfrtnaYayk1MBdHZBPCR7qF0I1ah7YwDv4MGTEG2QQI4PT4YKS6/iD/Dk1HO+IypovGm8spXLXalY0vRZUa53OjfpPjZC7TxOJzoqQN5DadN2OlzcQgWd+DURBGznDJ8OCfhla4KDoxUK+3krA/PhQgJcLL5DqGvrpVQlnxgXCnzXJ0jGnVTeda2JUbfHFnmMGrK7YppR7nP94UKD71UuMBOuBxM7B8g4YsVy7YN0u9D9RiyVWV1lMU/Q/hpFqutV17nzPh5gBzjKXoJtP0TkhO39PjEzxkbX/dsMSwfcG7vAWTiGNdpNPbC23xLhlczIpf97Fb4Rhl6xWbTBj+ct+Mt/YZu8SDjHkbay/WzVFjNwdbNeftYAAAcBb2+wUCroeR8JPkxvm/JGIhtP3WS2qwXJ3SpouVyBx/Vmdea241Qxh3/CgkIn5twXGE0FX0he9uw2ml7+QU6pZdiZRASjye2RokwA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(346002)(366004)(396003)(39860400002)(376002)(31686004)(86362001)(4326008)(38100700002)(8676002)(66476007)(31696002)(66556008)(66946007)(316002)(36756003)(82960400001)(6512007)(83380400001)(186003)(478600001)(26005)(6506007)(41300700001)(6486002)(2616005)(107886003)(110136005)(54906003)(2906002)(53546011)(5660300002)(6666004)(8936002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NVdHU1ZBMVFwMU5PZmFDd3laRkVsUzF6TVNsZ28vNlFRV09pVkltd1A4NE9z?=
 =?utf-8?B?N25iQ010UUU5TjNzeW9oMmo5eFZwVzREeEJtN05VMWhlVzVPd3UwaWVGaTZC?=
 =?utf-8?B?eitoS0V1a1YrNVA3SjIwbDlZR2FRQXAxc051eDVtbmR4WjdCdG9Cbm1TNXE4?=
 =?utf-8?B?SUxVdHRqcmZkSkNnb2pNS2xzQTl5QW9ObDhuY09MbXhPaGRKTGNUVGg3YmtT?=
 =?utf-8?B?Ym9YWTIrc2NINlpoQ1RjbHJNUElJd2RMT2o5cGMxQ0xkdG1Ic3luS2RRTEN1?=
 =?utf-8?B?eUwrUjBmNUozMlc2MUV3TmZFbkJOSFdJZFhRZEx6dXowTlBCdW4xakFSSG9T?=
 =?utf-8?B?MEFEVE0xZDh5ck1MQ20wL3l4aGowcmhFYVdDVURJN3FuNTBRMXhvaTNFYlp5?=
 =?utf-8?B?ZktvcVh5VkpidXpQQTcvaC9RNElpbmNWck1QWGE0NVc1WUtScmlGS0wyTTZI?=
 =?utf-8?B?QkNTMlRDZHBYU1g2U2lyK1VVR1RySzE0eVYxa3QzY3ZaYkJLRWpSSGhyQlY4?=
 =?utf-8?B?cE53QWxpdmp5KzZBUDRveW54c2dDUWZ0UzBkZXhFUVVlOFBMZVloSzN5Qll4?=
 =?utf-8?B?TzhFRS9ZdUNxdlVnZEoyUHU2K3l1NjVpTUxYOHhoRGxta2dkcHhVU0JTOXNL?=
 =?utf-8?B?eUpZUnpWOUZFUXJQWVJCQnRDRmNvaE9jVStMQURKbzF0SkM5S2FHZ1BEK1RG?=
 =?utf-8?B?eGJZN0RyczFBb2pEemZrazVJQ3RLTEdTQ25jcHJmdkQ4aHN1a1BHS1BPODI1?=
 =?utf-8?B?Q2xJVGVlYmRzeVRFYlRUQ1lINVZoQ1dOTDMrcWpSVngyQStoNnNYZFlYVFBk?=
 =?utf-8?B?WkN1UTZLRjM5SGpMQUJjVUdTRmF0OWwwYWNoRTltd3UvbE1SeWRoY0ZrTjNt?=
 =?utf-8?B?VFhvaU5pdFZiUmZLamlIVjdCYkFIcitVMU04T1lpd0p1b25VeE1Oa0ZDVnFi?=
 =?utf-8?B?cU9xeU51QUUxQ0NrbG5OcStZTHhRS1h3UGp2cWx2cFhTMmdyOWEwU1dkV1JF?=
 =?utf-8?B?U0FUd3AzemJCeCtmbmE5Z0FaT2FCckQ4K1hBUDUxOGV0S1B0ZUNac0V5clhN?=
 =?utf-8?B?WGhmWkdIMDN0QllQT1JWNEhkU2ZId2tNZGNsTlRIbXhUbmhEbGRiWHpTNTdj?=
 =?utf-8?B?MHdYczZpRXR5WDFOc2ZqNlJPU2xxTWM3eE1yUHo0SGY0M1oxZi9QNXJFTUJm?=
 =?utf-8?B?T0JGSlgxOURsdFF3bHJnSTNETjZyVTZCc0FxTXpEQnM0dnFVY3JvdGFkT05j?=
 =?utf-8?B?eHpUYlNDRzUzVHI2bm9ER2tYeXorMTQzYmJYRkNIWnkxYWJva3MvZlc3TjRF?=
 =?utf-8?B?MDNReUNDeDc3YVdUK3JXOEJPY0dIVi9XdWdVMFVocEJ6Yjd6UW8wOGJuYzdu?=
 =?utf-8?B?UjJ3YzBWRDlaNWQ4d094MUNBa2Z3d2VCUTdHcDVXTlQrMmtrRWpaaFMzQ2U2?=
 =?utf-8?B?ZXhSZnk4d203QWJGVjlETmIxUXowaXArbzVHS0UzdkZTNy8zdnNQNmg0YUtZ?=
 =?utf-8?B?MmU1UTFMR2g5TzZWQTlOaTJIUDM1bVBjcGtNVVhMS0Y0c2pzTndtakx6c0hm?=
 =?utf-8?B?QVE4S3ltNDJORVVHeDJrUWYraWFCcVd5VmhOWm1uN1ZaaDE2WlE5eTBpNVlh?=
 =?utf-8?B?NXBRVmpnSjRSdlM4ODB1Ym9sL0JTbm5LUFk5ZlBQV3FKcWhSTlI1RHZVUjBM?=
 =?utf-8?B?dWd2am9jNHlMUko1MUUybGJ2eWJibnNQVTFONmJsVVB1ZDczYnE5YWcvRTBW?=
 =?utf-8?B?V2pQVVZHWk9mc3Q0K3A1TDJKREJ4d1BMblVCWDlVRURhSmJsSlg2SkltYlM0?=
 =?utf-8?B?bHRVOXVXYWNxaHhqMGduMmM3cnVhdDd6ZWkrRmZjTTR1bFpUM2xmemYvUkd6?=
 =?utf-8?B?QUtuWUZZL2FUYzF4Wk1mNlo2ZVpTM3FoMEl3UXd2a1Z1WThlcWo2UktNSG9j?=
 =?utf-8?B?THcvSFVlWXRWRzNsSkc2eFlSM0tyWm1ZNDlHTDdUSklRemlqL09IUzY3QUpW?=
 =?utf-8?B?b2d4QUxJeGQ4QWwwZUdqRTlaWXR1a3FyQ2FmaytxMGFqVGRaUWoyRm1PdHEx?=
 =?utf-8?B?dTRVaFozUkRxMlhQN1RLdjlpdzlZUVMzTzlqVEVRZmJiMUtUSTNDdStwa1p1?=
 =?utf-8?B?UVNlUERCWTgrY2R3SENsR0hWTWtxTjRvN0gwOG9BTDAxRDJ2Wm5JRDJidkNT?=
 =?utf-8?Q?6jsdWaUgo4nl67CpVQbl81g=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 94ec8c3f-9462-4634-8456-08da9106e1d8
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Sep 2022 19:26:37.2490 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xxAlCtzKahmgK6uZgZw9b77qHE7tcY5hLMC0OMeLbnS/NYI/GtdG2ARySFWnzjdVINf1gHXCziDYSEDjwAbV4yBMjIVA/ABX7Fe1YVVoKgM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5085
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v8 14/16] mei: debugfs: add pxp mode to
 devstate in debugfs
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



On 9/7/2022 8:58 AM, Tomas Winkler wrote:
> Add pxp mode devstate to debugfs to monitor pxp state machine progress.
> This is useful to debug issues in scenarios in which the pxp state
> needs to be re-initialized, like during power transitions such as
> suspend/resume. With this debugfs the state could be monitored
> to ensure that pxp is in the ready state.
>
> CC: Vitaly Lubart <vitaly.lubart@intel.com>
> Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
> Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>

This is unchanged from the previously reviewed rev (apart from the 
header update), so this still applies:

Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Daniele

> ---
>   drivers/misc/mei/debugfs.c | 19 ++++++++++++++++++-
>   1 file changed, 18 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/misc/mei/debugfs.c b/drivers/misc/mei/debugfs.c
> index 1ce61e9e24fc..3b098d4c8e3d 100644
> --- a/drivers/misc/mei/debugfs.c
> +++ b/drivers/misc/mei/debugfs.c
> @@ -1,6 +1,6 @@
>   // SPDX-License-Identifier: GPL-2.0
>   /*
> - * Copyright (c) 2012-2016, Intel Corporation. All rights reserved
> + * Copyright (c) 2012-2022, Intel Corporation. All rights reserved
>    * Intel Management Engine Interface (Intel MEI) Linux driver
>    */
>   
> @@ -86,6 +86,20 @@ static int mei_dbgfs_active_show(struct seq_file *m, void *unused)
>   }
>   DEFINE_SHOW_ATTRIBUTE(mei_dbgfs_active);
>   
> +static const char *mei_dev_pxp_mode_str(enum mei_dev_pxp_mode state)
> +{
> +#define MEI_PXP_MODE(state) case MEI_DEV_PXP_##state: return #state
> +	switch (state) {
> +	MEI_PXP_MODE(DEFAULT);
> +	MEI_PXP_MODE(INIT);
> +	MEI_PXP_MODE(SETUP);
> +	MEI_PXP_MODE(READY);
> +	default:
> +		return "unknown";
> +	}
> +#undef MEI_PXP_MODE
> +}
> +
>   static int mei_dbgfs_devstate_show(struct seq_file *m, void *unused)
>   {
>   	struct mei_device *dev = m->private;
> @@ -112,6 +126,9 @@ static int mei_dbgfs_devstate_show(struct seq_file *m, void *unused)
>   	seq_printf(m, "pg:  %s, %s\n",
>   		   mei_pg_is_enabled(dev) ? "ENABLED" : "DISABLED",
>   		   mei_pg_state_str(mei_pg_state(dev)));
> +
> +	seq_printf(m, "pxp: %s\n", mei_dev_pxp_mode_str(dev->pxp_mode));
> +
>   	return 0;
>   }
>   DEFINE_SHOW_ATTRIBUTE(mei_dbgfs_devstate);

