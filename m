Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0863E4D5F42
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Mar 2022 11:18:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A34210E812;
	Fri, 11 Mar 2022 10:18:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84FB810E812
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Mar 2022 10:18:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646993892; x=1678529892;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UNHOgyK5tn4VsiP8el+halR2Pj8K4ZRULk015lwGWWE=;
 b=Mot1zhD/lwumAsY+eythgwY0c0/Qj8A7s0tvLU5KZ2iA+nomiEYyq9an
 7C7AUlWjxNcdPssY8PMZFWrT4TzpZblQfBUIe0YiBp0PG3AgOyPtUlQOJ
 ZCWe5L878Rp3T3UzdV/lXBFWdxgL6hhXQafnrvTDRc9L0jYwsNprJHjKo
 dN+2S3p9zgq1nFu6CYetvYavNcrMiFAxU2B9oLSeRRRxuLip1QTfQ4BBN
 73hLEd629bxi+ZteUJBIm9V1xyiFRJbzoBA7irtBJ7ZXcGLWrwz82xgvR
 oJmZ0grKDPM/joOr3+xi1GUPiJJaeBiyEDzKmNoK040dFIgSV0Aqexn49 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10282"; a="254373888"
X-IronPort-AV: E=Sophos;i="5.90,173,1643702400"; d="scan'208";a="254373888"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2022 02:18:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,173,1643702400"; d="scan'208";a="689025815"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga001.fm.intel.com with ESMTP; 11 Mar 2022 02:18:11 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Fri, 11 Mar 2022 02:18:11 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Fri, 11 Mar 2022 02:18:11 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Fri, 11 Mar 2022 02:18:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a4txt+oNv6VRQt7AM17jZ7ZZ02815RHJadrzAwg8H2m7Gaji4LbTRehFIAo79BaceNvFLX2eOSVMXk8S9lSsoMUwr5sJWiG/KzjGVp0iQkiEJBuT4PZ+mTMjXqYhFI1Y9DvIQpc2jDh3ZdQbP3W24MBo4mESn971XSsBjuOYUT9NDAQV1uvLb6beGsTtu9imTJnwib2h/OlgL7tGFVL6A20GG+rmJ8oV6VBkw3FW1UClCGqbnoidx96aWPtacMN+QUSVAGxFw23QcUwHziNQzu4TpVRfv9610ufj0gVe6E+9iIaQGU0rSrdT30IgwadY6ZdDstYFq6FW70aH7XCgCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z34Bla7x620wUx/J9hdb5OKhMd0dnQiRQvbouV4kxio=;
 b=Fb6/S4OOZdCCZ/9dDbDX8/pMEvvpqONIwIhp40LEDaitlqITKEB4YqSiM7eJz28UD8Bc4xONpVk8p976FxB7B+79g4pFfPDDWxN7ddGeKCS0W5EhCM67Mo9+q6uOBTgmLpycJaYylfZRIbU4/F8PQSE6OMR8jevH0MJe4JlwhrT9oWEN+DKaDJdr/S9ta5o+U1gNYIAarrXB/xQYH7+YPMHHitegnZyA/P27/BRSzvy5lttmyS41Wekq+3Nwnzyc42W2+/0pEazQRW1o/otTtBS3Uqh58Ziagc3r3dF8+rmuDUqaUlTA6cBgc7pR+Yz4fpRvK7wKJVgOFadxziOA3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1563.namprd11.prod.outlook.com (2603:10b6:4:5::13) by
 MWHPR11MB0030.namprd11.prod.outlook.com (2603:10b6:301:65::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5038.17; Fri, 11 Mar 2022 10:18:08 +0000
Received: from DM5PR11MB1563.namprd11.prod.outlook.com
 ([fe80::8559:2882:703d:3890]) by DM5PR11MB1563.namprd11.prod.outlook.com
 ([fe80::8559:2882:703d:3890%11]) with mapi id 15.20.5061.022; Fri, 11 Mar
 2022 10:18:08 +0000
Message-ID: <b679d4c7-6623-3033-4786-c367684da25e@intel.com>
Date: Fri, 11 Mar 2022 02:18:05 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Content-Language: en-US
To: Matthew Brost <matthew.brost@intel.com>
References: <20220226095541.1010534-1-alan.previn.teres.alexis@intel.com>
 <20220226095541.1010534-2-alan.previn.teres.alexis@intel.com>
 <20220310053055.GA24765@jons-linux-dev-box>
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
In-Reply-To: <20220310053055.GA24765@jons-linux-dev-box>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PH0PR07CA0049.namprd07.prod.outlook.com
 (2603:10b6:510:e::24) To DM5PR11MB1563.namprd11.prod.outlook.com
 (2603:10b6:4:5::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bd356b3c-fe8a-44eb-ed50-08da03487046
X-MS-TrafficTypeDiagnostic: MWHPR11MB0030:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <MWHPR11MB0030A0BFAB1A4F31A47446DA8A0C9@MWHPR11MB0030.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gs2tmJKAb9nlvB2vajbHVbqbjDCoDhFpt06s6L3e8+G0InT1fSeLLIoffcmUmYzl/eqjmzcTXKMGl6Sy2McfQ6m7O6JFheFSH9eJ2EyslvukOe8/XJKOjhDaxDRcCKQoXjsXtoXzNaZHGhDO+5Ya2g5OYwh+vBDo39dSpRp1wEiWPrH4HE0V0/YXbep9kI+bsN+YcICSpqb5sp94FjcHKqHpawia/1TNaQhziSxXdUZdabeYorkH1OdhN/5+qGPw/VbFzwzAffHWSLI3mbP2hL3u8EcAXATfO0MDxcHKfJC6Wr87aM6kEzxdxom3l7REuQ5qL0GdgI/jJVVGwJ7mDjCQPMr3mLNr6DTkCKAxBlDkOpe0OOdUyM9gSbdgXc08/Ck1OFnMMRnAKohDrhsQFGBXH0dETOqCkIMYWXTWfw/v8I8apbXa3rF5/ko3PBVFw22r7cKAatFJrnrSSc5JsmidQOP9mMiOGeoMKqOwVJ7pxP+iuBg/x/hp5swH5p6CXT67/CKC4xLPYSD6I+yx0nfV7/qW8Xvzo3BCs7mtriKEZraEsFBkIFDy/n/ww7WJ5seUrTGyvBatoMAvPv2cw7WPALUCD4yyMnAGJ+rcELlUR2DumSTTcutmDRTeUhMTSruvWTUHZTnm4N42uZUcdVqQ35kDU41Gsv1x1s0ur4eLXzZm1jv/uVwRFp+1mt70QFvX8rb8WZv7Cidqx/KwTE+tjuF7Yrr84huB+HILX73WN6dUvhGZiLNDkQl3RKlh
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1563.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(5660300002)(37006003)(31696002)(86362001)(66556008)(186003)(31686004)(66476007)(82960400001)(66946007)(26005)(6636002)(2906002)(316002)(53546011)(6666004)(508600001)(6512007)(2616005)(6486002)(6506007)(4326008)(6862004)(36756003)(8676002)(38100700002)(8936002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eCtneDJJa0NCMzExR01ScVJGWmMvL3labVpESU5iL2tCSkVHWDhvMUFBMTI3?=
 =?utf-8?B?QTB3dXJpajZiOUZmNWdVeldnRGU4bmNXZmNqTGFiMkxzYmZCK3F4UnFBTmNo?=
 =?utf-8?B?NHc2RDhzWlpqMkV2N2wyYktPOGVjWGlReVZtS3YvbE0yNEtBQXhjRXB4VG1k?=
 =?utf-8?B?a0JZNkcxQXJobW5XYVRYNlh3UnNZSzdIYk1rd1h5OUhXdys3NnByODBiQzN0?=
 =?utf-8?B?dVRIeWtnWU8xS0ViZGtNOWZIbks2TDcwQVhYRUxZREQzeUVmbTNpKzBNcVVY?=
 =?utf-8?B?M2F4YldhdVUwdFRiemhteDVuanJjc1g0WThRZG42V0tkOEptNG03QzZucXVF?=
 =?utf-8?B?QVlLUW5oSFpKM2FkZmdwNHh5SE9kQmVra3ZNYkkzYi90dmpXOWttNW5xaU1T?=
 =?utf-8?B?VGtoV3BLTlV1YStvY3hkNUswZDk2bThnd3NCT0JWcU1ja2tCNkZsSVZwbDlQ?=
 =?utf-8?B?ZERKNHM4UjBLQU5GVDAvTm1wd2xoMDRqRzN2bGxGVjdwZEZXQzl6MVRtSTNn?=
 =?utf-8?B?Nkw2NGtMdjFaN0pPY1JCL1MrQnkrMHJWd0hITE9uMjNNY0RDa3pLak9XRG9H?=
 =?utf-8?B?cDByMFo3c1AyS2NMYXpNMnNWYkozY25Fb1VNWDM3dW9RaEEvZ25tMmNVQTVG?=
 =?utf-8?B?ZFQvQUpKaTlqanF3SUt2UzAyOW1QelZwUWhwRFRVc1lZS3MxTWFOa2dmem1E?=
 =?utf-8?B?b2k2eGFicDJrWWZXdmtKdWwvMXZYb0dQWkdDekdiM2JkcUNyTWNqWlRxQU9x?=
 =?utf-8?B?Q3BjNjR5NmNXQmtWSjRHV2FiOFozMmY1amZBb1lXN2c5RWNVN3pKczVYOTFK?=
 =?utf-8?B?V2drNjgxclVzcGRPcERNK2x0TUFsbUdvbGQ0WjBOc3hKWFp5clRGSkdvRmJL?=
 =?utf-8?B?WmQ2bFkvbmRGbGNVYTlWSEpaRDVnakxyN2VKVTYrYlJzc25ydHJYa3RvbURt?=
 =?utf-8?B?bnR1QXBNVjJlYTRzVzE3S0s3Vk11NHdCUk9JYXpnUWtDbEJaWGJWWXJiNjZy?=
 =?utf-8?B?b0h6TFg3WFI2WWtBUU9oeHVrdWNMajFmMzdaeWZtaFE2V2M2OVNwWnZxdHN5?=
 =?utf-8?B?alp1Umc1cjVydWRaWUhsZlZGN0dFS0xSLytaNjhEMG9PSTA2QkVDR25vQXcx?=
 =?utf-8?B?ZERPZHdEQ0UzQUcyV3FkYWxiZnZaclVna0hVbHEvdkdjbUdtbEhvU1dGVXVO?=
 =?utf-8?B?MG90blpHa0hlZG1VNktqZzhsVGpTSGFiYkczb1M4WUhkcTZrQnpXWk5Fa2tx?=
 =?utf-8?B?VXlTdGJIa0hUMUlBV3BPOGtoOWF6ZXFQY2Z2UVV6SDRwcExPN0s2elpIM0Vk?=
 =?utf-8?B?ckU3NG5NUzF6Nlc3MkR1Vi9NMStEQ09sU1JCaW9XSWw5bXZwQzk3KzVrOUpY?=
 =?utf-8?B?MEtZRlFxbXVCMmREQ0VUdDVNNjN0UW1wejgxVGRydGNlU0dkOFU2Ym5RaVR3?=
 =?utf-8?B?aXZJNGUwOUFQYlhodmlVNytqZDR1RkpNOHNCaXdSZHZiSi9ySUZyNmhIN1dx?=
 =?utf-8?B?dUpPZnBpNlMraHRJWkZSMlljWExYb3Z1UTNVc29zWXMrY3E2WWh3T3hRZXRW?=
 =?utf-8?B?dzFxUlQ0MDFLSHdwc0VxeGJ0c2xBQzFXTUNKK1AwcldIRnVvdXJmZTgzVzhu?=
 =?utf-8?B?bnlpQ004U2FzU0pFR2EzUXRiV2h3RXlMNFpSU1FmNzFwaitWRHhISmxDWDFF?=
 =?utf-8?B?bXJhYlFwZWtqRXF5dTJyeGI0OEJBaTBJUVVtbUMrWC94SE55RWZmeEIxNEFi?=
 =?utf-8?B?dXEvSnVhUkhLRUoydU1XdWRvZkFnWWRQWmYxY2JEL3NOZkhyL3pvbml4YUhB?=
 =?utf-8?B?ZUNNZ2Q5ZDN4Zk81YXRZdE1UOTZ1MmpSbVVxWjNwZ0d2NjBvV1ZpKzZnSmlx?=
 =?utf-8?B?bmNrRGVoNTFncGxlanNIVWlVR1FQUjJadmtaK2JsQmdTR09sRmRnbDlJVGdI?=
 =?utf-8?B?MU04WjdGeTg3M05jK0tPYmFTRnBXaitXU0M5MUx6M2tGdUwxZ2hPckIrdkMx?=
 =?utf-8?B?ZDdZZ29Oc1g0NlEzVWx4OGVkVlBQam90NzNWNHVxWUxSTi9SL3VHdWxtcHNH?=
 =?utf-8?B?SlhJdUJpQ2VLRFFkemIxeTZQZDlNbi9peEVzR2w5WmpRWVk5dEphUFljY2RS?=
 =?utf-8?B?M1ZZVC9EN0lLSXFXN3lpWER5amZqSU9rL1ZJcGNBTDFiSTZ4bUdJUGhUdlUv?=
 =?utf-8?B?SzhGNlBvc0dEM0RQUWVwZ0pTcWdyU0FJcTJ1d3FlVjdSOHdIbkRFb2xLMXZE?=
 =?utf-8?B?bzVsUGM3NFdYVzVTemI5K1RnNmRqVVVobE1sUk82WFBwbjA5UVJkNHNldGM3?=
 =?utf-8?B?WThpUDQwWHJsc1lzTnd5YjhaSGR0SXU3QkVzQzY0N0RBQ0hIM1pmZz09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bd356b3c-fe8a-44eb-ed50-08da03487046
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1563.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2022 10:18:08.3977 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iS+m+XYm5NtiD+b4YnCrpED9gjrGtio10Mtuu4yGSc7gnhfaPlfe9zHqa4xIiYt228n/aKEdNiKA9MW44+dhUqcF5IdVkE6ps0OOEIckm8qTsMLbKM5Okk+UhCh4aToQ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB0030
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v7 01/13] drm/i915/guc: Update GuC ADS size
 for error capture lists
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 3/9/2022 9:30 PM, Matthew Brost wrote:
> On Sat, Feb 26, 2022 at 01:55:29AM -0800, Alan Previn wrote:
> +intel_guc_capture_getlist(struct intel_guc *guc, u32 owner, u32 type, 
> u32 classid,
>> +			  struct file **fileoutptr)
>> +{
>> +	struct __guc_state_capture_priv *gc = guc->capture.priv;
>> +	struct __guc_capture_ads_cache *cache = &gc->ads_cache[owner][type][classid];
>> +	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
>> +	struct guc_debug_capture_list *listnode;
>> +	struct file *file;
>> +	u8 *caplist, *tmp;
>> +	size_t size = 0;
>> +	int ret, num_regs;
>> +
>> +	if (!gc->reglists)
>> +		return -ENODEV;
>> +
>> +	if (cache->is_valid) {
>> +		*fileoutptr = cache->file;
>> +		return cache->status;
>> +	}
>> +
>> +	ret = intel_guc_capture_getlistsize(guc, owner, type, classid, &size);
>> +	if (ret) {
>> +		cache->is_valid = true;
>> +		cache->file = NULL;
>> +		cache->size = 0;
>> +		cache->status = ret;
>> +		return ret;
>> +	}
>> +
>> +	caplist = kzalloc(size, GFP_KERNEL);
>> +	if (!caplist)
>> +		return -ENOMEM;
>> +
>> +	/* populate capture list header */
>> +	tmp = caplist;
>> +	num_regs = guc_cap_list_num_regs(guc->capture.priv, owner, type, classid);
>> +	listnode = (struct guc_debug_capture_list *)tmp;
>> +	listnode->header.info = FIELD_PREP(GUC_CAPTURELISTHDR_NUMDESCR, (u32)num_regs);
>> +
>> +	/* populate list of register descriptor */
>> +	tmp += sizeof(struct guc_debug_capture_list);
>> +	guc_capture_list_init(guc, owner, type, classid, (struct guc_mmio_reg *)tmp, num_regs);
>> +
>> +	/* ADS only takes file handles, so we keep that as our cache */
>> +	file = shmem_create_from_data("guc-err-cap", caplist, size);
> I don't think you need a file here, why can't this just be a peice of
> kalloc'd memory that is populated and copied via IOSYS map calls?
Agreed on above.
> The memory will need to be persistent (allocated at driver load, free'd
> during unload) as can't allocate memory in the reset path tho.
Of course (as per prior rev comments)
> Beyond that, you are parsing a static table to populate memory. That
> almost certainly means you could just have static memory which we
> directly copy into the ADS.

On this, we dont actually copy the static tables from the top of this 
src file as-is directly into ADS because the format of the static tables 
is different from what ADS expects - i need both formats since the 
latter is lean (just register info) but the former also contains the 
name of registers (strings) to be used at printout time.

> Matt
>
