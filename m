Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA9016C853E
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Mar 2023 19:39:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A43E210E188;
	Fri, 24 Mar 2023 18:39:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A54510E188
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Mar 2023 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679683193; x=1711219193;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=+W1ndtWECfvlVKkoY9eee9OEjm8jTP+YnJbkiTaWlm4=;
 b=KVlr5SPg67O86/CoAGNJyEgI+qi/1XnM+XJ29v0Ayvf2PTrN9fTQbZFs
 DW874FWwuyKxOX4S++Yg1AVsgBB5+/CfQ436JZA+yt3r6mlg0ov3BACso
 VFhXhfc1DPrfPDc7/GaSbGF2Zgbx+xO4zXEj6nKgIkFcllvQbxr0brcSp
 kOTKU00h/eBMErQYv0pzDQtyzUiiA3/+pXW/k8LY7F3+FIIoSnapVAVEe
 GknbF1WbSLOD1JSjr/pJFvQ/k1SS5B7vy1cxmxUvJB7aSHWfBwK+oFhbJ
 /R338aYAUmcsQs1cx4p7/66WEaDPqSNF65ODG7YjmVn9nK9bWG6XEmNiH w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10659"; a="426122049"
X-IronPort-AV: E=Sophos;i="5.98,288,1673942400"; d="scan'208";a="426122049"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2023 11:39:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10659"; a="806773930"
X-IronPort-AV: E=Sophos;i="5.98,288,1673942400"; d="scan'208";a="806773930"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga004.jf.intel.com with ESMTP; 24 Mar 2023 11:39:52 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 24 Mar 2023 11:39:51 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 24 Mar 2023 11:39:51 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 24 Mar 2023 11:39:51 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 24 Mar 2023 11:39:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JHRVXfHqEZFLGun4QfnmniofB0TaAYrXP9ZEBxPDi5jYZqdo0QOXJJcuRaf4rktsPPvsGmoXcT/gg+dTLhoxL8X1EHkPihJ6DxKdgCX6Cqbs80YchMrCb5n5QDAR2PtsuHGHa7kyPgsUMWzyBVdRFiDJEhX1IarYMizb091XxcF2rP8yDd7PzTDpdGhjast3daghEOP/dPR4ANkodmNdJjwV/1ZSyeJIsSOMYSlpZE2SzN3r58wmj7JRgSDrquLV3JEQapLUpSlIQBqcCNGwTcNz+VPfX1Hs45beImq8PikUR4ZqMsCJUhaS+NdJ/s2CUvOkup+ryPW9xyFa5Z5szQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rBAUtFPgv6HYPfLx6ALu/44KKUCDSAKd7TCyWRXtHJY=;
 b=EMdfT9shCQi1FtMt+FjVZBjQQqYQX4WPyuU+QLU3Uar5ssQEymSZ7OGGrdrjnsjuQk8aZ65gD5O9hQy/k3BjxPkusiQ71nyqTrO8+puc/uQM83cvfNg2acss4wujUjizxuMMu7uK/kWAb61JrmnQMysYip09icYRjLd12iYcysOnF3QpyftfhAu8+ulvSn/bsNenoGDGOepZprmwZeVnh5VkwzKlPreJCQbvJcQD97hK+aMiicHo/yUU5CyLa35PB0ffrf84FSkXkmydwJkwjTIytNfij0/0jAJojQU9Jm8lAeonXwDTJtULjFoRu1Qu9iceWx45nkue9ONAEggxdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB4274.namprd11.prod.outlook.com (2603:10b6:a03:1c1::23)
 by CO1PR11MB5188.namprd11.prod.outlook.com (2603:10b6:303:95::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.38; Fri, 24 Mar
 2023 18:39:49 +0000
Received: from BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::5c78:a264:4cea:6fa5]) by BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::5c78:a264:4cea:6fa5%5]) with mapi id 15.20.6178.038; Fri, 24 Mar 2023
 18:39:48 +0000
Message-ID: <b9648922-f25e-b85d-9df8-d21aef2d9507@intel.com>
Date: Fri, 24 Mar 2023 11:39:46 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.8.0
Content-Language: en-US
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 <intel-gfx@lists.freedesktop.org>, Ashutosh Dixit <ashutosh.dixit@intel.com>
References: <20230324180253.4182375-1-umesh.nerlige.ramappa@intel.com>
From: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
In-Reply-To: <20230324180253.4182375-1-umesh.nerlige.ramappa@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BY3PR10CA0026.namprd10.prod.outlook.com
 (2603:10b6:a03:255::31) To BY5PR11MB4274.namprd11.prod.outlook.com
 (2603:10b6:a03:1c1::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB4274:EE_|CO1PR11MB5188:EE_
X-MS-Office365-Filtering-Correlation-Id: b7663220-ea62-4e87-e6c0-08db2c9725a0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uNNpQSRl/j8PH0WCAvtPR4DIo1LDyz5Rqn1PK3RSSLA2QlTM/VFjjHDhV64AP+8oQp3bxge1RSfV8+c+syfZ08wOJttviKj0y2Y1A08+Ws009Zw8eFFUTC3Jxdl+03G0DwAoJDeEs5jd93C5Qr8wzqE9vHBtZrZdi5z65bHpZUX4MmasAaprDO1Dqfxj74HJZY8s0nPDdFbDkNW1seZBi+tNE3a5wxtTqlwvyxnk1VZhIQgngC+ShuG2WsFYuOk2fgsiYBo78b+Z6rfr1tsW8x5JzVvcr4VjPu+O66IPiwy2eNG1wM/g10cq59VWE4+wxIR/MizCzuqh1lgubwrBf+xu4o6BCLwrLVfJfpH9hrRrXPuz+d13g9oerYGWQ4YzEw5giYbhGnnvm6pluSc92YRB6UC2W7jXSerZ6JSfhHJBBxXmiU9oOaRK2jct6F1LYOZMVPOGRoipy8QTjPBds5Ip9N/cYbnodTlRbLIs+/VlzBCQSczuXCMiWLIpWGgaRuQ/P6LdS91Gnr239d7M1xng0a7X0cBjyQofwSVxFDdckZUKtbluxXRocclNxNbwmkzB51lKusnwIpGHjCirPDlhJPj2WNgdPbQes68jLGdMuCvr9FOFBQyv2dFMRbZQsTyAJBHSIu+gA2JaU14F2IN8FAguDhYFRUjHTKR+wRfVHBGlu5LPHTD/MUuthM/jVShgct58I/JT6DYBKmxaqOtZvewWjDAGG29nUJscO+I=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4274.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(366004)(346002)(136003)(39860400002)(376002)(451199021)(82960400001)(36756003)(2906002)(41300700001)(31686004)(8676002)(66476007)(8936002)(66556008)(6636002)(316002)(6512007)(2616005)(53546011)(5660300002)(110136005)(186003)(83380400001)(66946007)(31696002)(6506007)(478600001)(6486002)(86362001)(26005)(38100700002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dzFRSDFiZEdndTB1VyttN05iT0xIUHZDQnNwVzlRUFBpWGZCNzFpQkdHNjhz?=
 =?utf-8?B?MGQ0TXFRaHFkbXQ1ZTZHbjF0aWVmOVNLTWNmbC9xN1ZpYUo2R1VWOXBhTTVv?=
 =?utf-8?B?SSt0STRKM2dZZXhZQzRxdHdiK1Vib2ttQ01zZVhTV2hIOTFqcTA3NmRFdzBO?=
 =?utf-8?B?K2pWTnZXSlU4NUk5QzVHKzh6ZU5lbGM1L3JjSEJpT0hnNEFKRFFkWEo4SVdX?=
 =?utf-8?B?aHBKaERGYkdCRDM2MitBaUpmNklYMlBSNms3OEYwUDVIbXA1V09rL3hQNDNW?=
 =?utf-8?B?VmZhcm5xVUV2RWJ6VjRIR3pDQ0Q4bUhQTFpVZ1dvYXF1amVteWRXd002Ykpj?=
 =?utf-8?B?bmdmRFpTa2t6S3U1V1p2dnpBdUZaV2hTS3ZlaGNLZ3IvWUZoa1JZeDRsUWFL?=
 =?utf-8?B?TmY4OG5xVlVXbmhoUWZPUW9NT21QeVVVenV2Wjh3UjdHR2lsblBldHNSaXFa?=
 =?utf-8?B?cUJWVFVZc24xK1ZTaG5OQkhkRHNzVGo3eWpaUEpiNkFLNWNTakRrUE9tTGJ4?=
 =?utf-8?B?K2htWk5IaUV2VVRPOS9wRDNob3BTemh1MnFFSGVOSUNDN1JySGFnemtmKzJ0?=
 =?utf-8?B?eWVXNFBhTHpqVjIwclBQQ29iL0hJU0JNMlpsWXg3MHFVR0NkYjJmc0JCcktq?=
 =?utf-8?B?YnAxdUZOQktlKzJvODlVT21LN210c2lXRGdpb21tSzY1WkY4WDV4ZzRXWXVy?=
 =?utf-8?B?NWlqMVRET1p2UWVXQkoycHY2VXVkU3JSYlVPdjloQS9jdnBVSm56Ri9VTzBk?=
 =?utf-8?B?VUVOUjRkY2pjTDRhUDZTY3JUNkpmSUtZYkVONlUydmJiWnkxT3FuS2hhNDZt?=
 =?utf-8?B?Q1R3Ryt2a0FkU1Ntbis3bzJ4YlhHNk9qNGhMTzBUWmR3TjJEcTFrVG1IdTdD?=
 =?utf-8?B?ek40SHBvYTdQMlA5NEhWREFrL3ZtS0ZWZnkxUDZ2dXA3V1hGZWhGbE9QS0Vo?=
 =?utf-8?B?Mjh4SDBsdkJuUm9LUjJQMmR4UTVIeGZHT0lUZDd2alJwQkI0Tk9SZVRIN3Nn?=
 =?utf-8?B?Sm9ZMEFQUGUwbHlvSGx6Ui9vaTZVNk1HUzJHclQzMWlja3ZoMjkrNXRvLzBu?=
 =?utf-8?B?d0lpalVEckQ4S3dWQXp4U2xib2tFY2Nlemc1Qkpjd1JjRjNSeXd5ZjZFN3Iv?=
 =?utf-8?B?L2Y1NFVQVU9mM0JLTjV6Mk16QjVodUpuYkdKK1JTNHFaRldBSEdUWEFzcjFP?=
 =?utf-8?B?SVJCRmhzb2dqRFd4T2RvZXFzK05kUFcwcUJoNmU2cEUveEpteHF4M2pWNnBk?=
 =?utf-8?B?MjY0RzN1N1BUcXlDbHZtcGtiUU53VHJKSXNPekVYUXpMZWd5Zmc4ZW1VL1l4?=
 =?utf-8?B?cDNTdlpubStDTVh5bVNLb1pudG1MUGE0aThUZnppMDIwYUw4OEo3dkRKOC83?=
 =?utf-8?B?VGRMdGcybzRrN1dldkF2TU1BY2RnaUJKd1RMdVlqSHNwWmhZY0hRNzlQSjFO?=
 =?utf-8?B?KysxMVV4MzdBQ1FXNXhReUE2RzA0MmM5L1NBeWhTdkpjRHlZSzd2MGV3ZmVs?=
 =?utf-8?B?T05NN0dEeVJqSEtrdm1GM1VxM3pEZnYveUVFY05QYTJmNzN1S012aEE3c1VP?=
 =?utf-8?B?eVVTMVVpUjBDWExLNFhSWkp4Wjd6ODR6SnZuM2xuVDJSUWNOOXgydjBmWFZB?=
 =?utf-8?B?eWNCNmtjVDMyMFN5SEo4ZVd4emFEclBJdjRSVGZEamh4TS9OaGI2MjViMmYx?=
 =?utf-8?B?OXcwWTU0cTBpSG4rdHFVRHZONktiSGdmdXNhMEhnbVkweVIxZUlGV1hWbGt3?=
 =?utf-8?B?MEJzR0lVMWx4cWRlNUZEK2RiL3BEUXFqT05wRHNPcysrSDFYWWxDaVlQUFlO?=
 =?utf-8?B?NlBrNVh4ZEg4d21VdlNHWTlHQzQ2Y3pDeHRSSHZmbjRDd29OOHU1UFQvbUcr?=
 =?utf-8?B?K2d4ek5NSEJTSk80akN2Z3FETHMvcjVGSjhsUCt5c2xUU3htbUdVdzIvNncr?=
 =?utf-8?B?WmhJKzMrdFpPR1JkRFFIZ2ZqalQ0SVBaMDlqQkRmUS9EdFVCTDlhbCtsMUhj?=
 =?utf-8?B?amlISDNYQ1dId0MydXNuM2txYmp4WnVrb0trb2dBU2ZQb1pzT3hwa2VzYUZy?=
 =?utf-8?B?R1BVbmY3ZHl5TnRYYW1YU1FNK01na2JsRUYvcjVSY1pwVlFzUGVrTWFpbmNO?=
 =?utf-8?B?VFNubmlRb2M1SGZjQjJQcUJJcjg0VzUzMDJQNk9RaWVhVUFJenM5Nytjdlgy?=
 =?utf-8?B?d1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b7663220-ea62-4e87-e6c0-08db2c9725a0
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4274.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Mar 2023 18:39:48.8230 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6xcX/H6Q3DPyQ52lG0ocltxErjgkEJPzPys1LRxOrIqFTDMmn7YdPXB0BRPID10xkJnjRYufoy4djnCatmoJeyLfsymLw6+DCC4VjMJm2Pg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5188
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Disable C6 on MTL A0 for media
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


On 3/24/2023 11:02 AM, Umesh Nerlige Ramappa wrote:
> Earlier merge dropped an if block when applying the patch -
> "drm/i915/mtl: Synchronize i915/BIOS on C6 enabling". Bring back the
> if block as the check is required by - "drm/i915/mtl: Disable MC6 for MTL
> A step" to disable C6 on media for A0 stepping.

LGTM,

Reviewed-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>

>
> Fixes: 3735040978a4 ("drm/i915/mtl: Synchronize i915/BIOS on C6 enabling")
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_rc6.c | 7 +++++++
>   1 file changed, 7 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
> index f760586f9f46..8f3cd68d14f8 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rc6.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
> @@ -525,6 +525,13 @@ static bool rc6_supported(struct intel_rc6 *rc6)
>   		return false;
>   	}
>   
> +	if (IS_MTL_MEDIA_STEP(gt->i915, STEP_A0, STEP_B0) &&
> +	    gt->type == GT_MEDIA) {
> +		drm_notice(&i915->drm,
> +			   "Media RC6 disabled on A step\n");
> +		return false;
> +	}
> +
>   	return true;
>   }
>   
