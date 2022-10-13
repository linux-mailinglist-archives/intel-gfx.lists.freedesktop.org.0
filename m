Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E20A5FDEAC
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Oct 2022 19:09:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E30F610E2D6;
	Thu, 13 Oct 2022 17:09:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6871F10E2D6
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Oct 2022 17:09:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665680969; x=1697216969;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Rc2X/atwRccJV57qhC0MAJw5fQe55hzA5Kf3hIHwEG0=;
 b=TzC4PzOd65AiwOi7shby1sfl1GrTvn5nwIAOosQRP9+ldb4aZadyPnBC
 1DGjd1HGrIIe2kPqSs5fNjOGwMItZmehhoN1q+iN28MlM8muhpZ/wlBSt
 pFQptHR+u6PAiMLqD4ErZxyL+tUCJZk/YJldgfRug3n/2or+/A3Bmwpnz
 9qKiPzKmpd8gUzGJ5FYjHVmWNKDMrAE54iLD48pB5oka9UlrNWtqpyGm2
 c3FMOR7b7gH4w0Xks97HC+lqTa8qgM1vWgzcY7de/2IQUrvwiuCciKq49
 Mdq4pVKggV/s9yC7JLnWygTyj982WAiAY7Yly6pcb+pPcHXzeMgR4AK1t g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="369329513"
X-IronPort-AV: E=Sophos;i="5.95,182,1661842800"; d="scan'208";a="369329513"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2022 10:05:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="660413590"
X-IronPort-AV: E=Sophos;i="5.95,182,1661842800"; d="scan'208";a="660413590"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga001.jf.intel.com with ESMTP; 13 Oct 2022 10:05:26 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 13 Oct 2022 10:05:26 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 13 Oct 2022 10:05:25 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 13 Oct 2022 10:05:25 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.107)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 13 Oct 2022 10:05:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ld5xkadlZ3Tb4A6GG6cyjFCdNNTBagsXd7fdcp4AvYWF5rl88afieQ126O9UAnywJvZN1DLSE61wIMYQWs/0JTdhp9wpOuyN96nNJEg4DQ7o1bkEAO8A/Ca7FfSV90avEl9ABra/LV//yf4IFtfsaKU7IAnvw94xhMrEi9R4NFMbFsu3NRixyU1KzHT9Jgw4IrOUXY3VI5MC3w4jdc4M0EJYVYf7GXyIfKe72+GjXYpMzaVgUKdJdiQ/l2ezzX1pIwj3Vo7p+nHQ0ZjcvLlejdcGPXAAdZMHCCVwmjsmJsmquT+W1XNPCyT7D1SrhKJWmYzXrL96LctpPSvXJ1kqeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KAPaLQHGGi1u9zjsX38Ej8s61cplDSugjKB26yY/3Hg=;
 b=YcMGkI2rLzPOlPU1kVnu9dUy6Ld0HPK6oHzfTuatxtDBCu/s0vfnOkcQe9ooVUzfRNCaL/kub6Vfbdi4SZaEn/rNsb8yDOq7oSSTZe4Nu7wkxjW/YkCrgymhMAyvps0ryLmaFIP0FKtqM1ns8aWNI7w3tRVBn7V4QFkvjbZCS9BRhtfN8PtfAEZMheo+psmwSelFbxrUlRYji0DBNRlT+rX0x+e9o6SwyA6L3aYgMd6m6e7ExztLImq+DPgk8dKldyxN1D4BCpaSWO9FdGTp9nJW0Ey5HON4Ekmoh1+r7TQJJMrwd5AeQ9Dmh+X7nYG1d/3KOLhCbyegz1XEIZznHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 CH0PR11MB5364.namprd11.prod.outlook.com (2603:10b6:610:bb::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5676.24; Thu, 13 Oct 2022 17:05:23 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::c072:cd8d:ce60:30cd]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::c072:cd8d:ce60:30cd%3]) with mapi id 15.20.5709.021; Thu, 13 Oct 2022
 17:05:23 +0000
Date: Thu, 13 Oct 2022 10:05:21 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <Y0hFUYC9j3Q26MQS@unerlige-ril>
References: <20221012222739.27296-1-umesh.nerlige.ramappa@intel.com>
 <20221012222739.27296-5-umesh.nerlige.ramappa@intel.com>
 <87sfjs8v28.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <87sfjs8v28.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: BYAPR06CA0066.namprd06.prod.outlook.com
 (2603:10b6:a03:14b::43) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|CH0PR11MB5364:EE_
X-MS-Office365-Filtering-Correlation-Id: 822b9ab4-34f4-4043-063b-08daad3d1e01
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QCxmNdjOXVZVyJZ1HMzkZmATKWp1SCJYoG2GxJd2sn/JpougBed2odoLkd4z8BJkzHnV60z5r922foldAKCt2fpS7IarGblElntgIshpme9QfdwZ+ldZGGfQxn+v2hJW6O73fyLxySN0RGy+kVXtEjgA3xoSjAao5+o5vI9Rao98UjQtBsagmb3/9ZPruQt+p1Qv3A/zhX0SvuvkrMjTdFCPsLEUI3zNU6Fi+2obz9H1/OLxfkudnHUui133T9lkAP+S2tnxStna21aoYGmlRkqQS/fv9r/mTv5cUOkgz8TkjYCGGMB9/Pue799ryKGeIWKDxhY6Xvanzm6qAPXrC8oxZdUVkcP1mmBSk67Lm8EEitdPLdjHOp3MOZURlwHNSHeX5CCK1lc34y+LmtHrFmptx3G7rk+t7yT7MihbGJuBzKmj/6GqMEyg/0jZMNoD0ErROMQSTsDWtTxp/u1kttQKrOTljalyuUTLNKnXLT2SkVdxD9yyJtBrKSS/iVsv2AJA+qbRKa+Z1yNmq3uut2fx1GXJhQK7Q3hNxX3JYu8FaVoYxTQQkP49Ujuw50y3IeAJ1ZVhz0VyfSpgWEZEOxprsuRsb85uVcKtZpreXQX0+Iv3rr8zs+KV2yss1uiSIuqPPcnMu5qmIcR9wRvNuNIxlTcfa4FtIjDd7AKJj3Mg7CZclPtuKal0K82mPu0H5IIc1uJDNhTg880xZnU/8Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(376002)(39860400002)(136003)(346002)(366004)(396003)(451199015)(33716001)(2906002)(41300700001)(83380400001)(186003)(8676002)(86362001)(4326008)(82960400001)(66476007)(6636002)(6862004)(8936002)(66556008)(5660300002)(107886003)(66946007)(38100700002)(6506007)(6512007)(26005)(9686003)(6486002)(478600001)(316002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eGZSeDgrOExUbHhLSFVTT25ObFEyaFV3K0M5KzIwdEVMNUdEWUhSallYaGZa?=
 =?utf-8?B?MWFzSHJ1OWNiSGRhUFlWN3BXc2ZYOFh2MEFWMHJ6d1llY2ZWY05GSVpXVG5T?=
 =?utf-8?B?Wnc0UmVOaldnNXN1a0ZLSjErN1R1cjBZNHVGaVhTaGRZT1hORlVXQVdDSXlQ?=
 =?utf-8?B?ajkxS3BnWE4vMTNTampVRS9aMFRQWXdMVGZ1MDZYQVR3YkRtMHF5WFYwL0No?=
 =?utf-8?B?WHdYZGlxbXc1TUlhaXpyaHJtaXUxaWcvemg4T3RQc3p1dzlVTlc3MmluTURx?=
 =?utf-8?B?MlFWY25UMUtsSXNJVUoyN3ZrL1o3aCsvT2dEUVFtbzFSd1BsakNOeFR0UUhP?=
 =?utf-8?B?V1lsRno3UUk0bVhlMHZldmI0SStla2xsNEE1eGRlaC9rcnRGRVlGem0vNCtm?=
 =?utf-8?B?ZUgvKzEvVEx5TnZLUDVXUS9EblljRXFCYTJWU1hVZ2JmUktCSTVuMmFCbTlP?=
 =?utf-8?B?NSt1UWNUZGpXVFMwZVErdXgzQjZLV3VWaENMUGtxcW5aa2VVUW9kVUNEYzhn?=
 =?utf-8?B?cVFRUnl3S21Iakl0eU5CdThLc0tFWGIrTHpvQzVrWVV6S1V4ZUhmdUwvNi9i?=
 =?utf-8?B?WnRCWkcxaWF0clNBSUFWaHcxSEpTalIvQjhVbld5eVYwRzZHN3JMNzBuK0ZD?=
 =?utf-8?B?R2czY3RhcVZlMkFYTHpHUlRKMC9lcGRVb0tJMGZUdEVESUNMKzJkQ3l6Mllt?=
 =?utf-8?B?cWZ5Sm4yUWkzVHM0SzBVOEFNT01NSVlJN2RJdXJSUmVFQjF6dVVCVkF4WFVo?=
 =?utf-8?B?blZNak94b0lrVjE2cy83VWhwQVB6QUh4TWpkb0ZPZE5nd2gzeGVnM3cwN3U1?=
 =?utf-8?B?bGZFK1kxc0ZmOHhINDFjR0M5aGxHajVsQ2E5RS9kM1hyZVRQbFVaeWNXbUtx?=
 =?utf-8?B?QVA2MEtxSHhEYXBRRk5QVkNrN3RmUFRmbSs5Mmt4aGpjNXVuYjN6VVFnQ0Y4?=
 =?utf-8?B?SUltNmQ1TnN3bjhtY0REUzYzdVBMSUlQV1FCbDlUM1Y1Z25obVdvYlZHanVj?=
 =?utf-8?B?VnMyUEkxYjdOM2Y3QjJyeDRhcHVDUUZUaDMvbVBQRGgvNDJYRkIzZVlGQkg0?=
 =?utf-8?B?OWsyRmZ1cTJyUkEwRW9Ld1dnWE5jcEZHR0xlWUZ3cTBwOEtGWi9LVlhHUHNS?=
 =?utf-8?B?MWVlaGVLa25UWU02eDJqeE5oQ2ZHVVNXV3ZiUlNERkhNYTJuN2h5MURubjB1?=
 =?utf-8?B?dnlBd1MwZGErRWpNYzBFMG1ZSnNQSHp4SGtia1UxcW1YTExiMkJTL3hZeXdC?=
 =?utf-8?B?OThQQ09CK0hWWUhUaTRIRCtXWFNiVVB4cjlESW9KbGQ1WEwwNVpsMUQ0NFhz?=
 =?utf-8?B?Sm9IWkV6R3lvWE1uc2t1NnZnUXBKQ0pmZm1QNXJuYUdvM0xqeTNtdmN5NXlh?=
 =?utf-8?B?S0lyZ1NNdFRUUFJLZDBEQk9FSVY0OFRlcFBqcTdKcmcyZlQ2L2xWYmlVZndH?=
 =?utf-8?B?YVFLdlNZWmlPQW9pWFdaME9BNWdlSWc1b1g5Y0VLR1pBZnhMVlNzYUpwWFhl?=
 =?utf-8?B?d2NqdGNVYm9maWJRbTRRYml0QXoxNjRIZERYQUM1eGxMOFFDSXVjY01Rc0FG?=
 =?utf-8?B?S0I2YmxqT0JocW4zTnNrMFZNMmIySEtTMm4xdk40VTFBSWZnY2o2OGdBb3gy?=
 =?utf-8?B?L295OEdzSW9PeFdzcjBPRGZTd3ZHd2tMNFE4VERVVUFvVUdORHk2aEpmRmtD?=
 =?utf-8?B?enFXekgzMEJtOXNDY3duZUliNnI1bDdpL1RJZTJ5Y3RtS2VvRSsxY0VxMFM1?=
 =?utf-8?B?aWFhME5WSUdLb25UTUNVT3dCVHlUWnpaNU1XWUFKRkZibzltOFFZN0pQd09m?=
 =?utf-8?B?SHQwaW0yUDdFTVZkYXJ2a2ZuN1Rlb0pEdHUwZU42c01aZjIwNXBXc0U2OEVH?=
 =?utf-8?B?eG8xTkI2cjlwOFRDb1pKTnRVK21IM3RCRWRqYSticGhCK1V4bS9lM1UwVXBm?=
 =?utf-8?B?QjRtQlpNOVR3V2hJeTRLakgvT21mTFBZZDdjN2lTK2VFb2RTZXdGRXRRTGRW?=
 =?utf-8?B?OUJyZWFDSWFGSUhjbHNsR20rRHBDdDhxUTE0OW9CQmNpek1tSkxIUW5FcGRl?=
 =?utf-8?B?SkEvL1dDczZhMEdHVU5ROWVtTmJWanVWVmdCVnNrK2RSa3B1Z0lLQ3dZd0Vp?=
 =?utf-8?B?MzhPWjV2MTlhTXVqRzM2VGgzT1NUN0tqU1lQbTh0MDB3eEh5M2twVlZkdVpC?=
 =?utf-8?Q?tKbJGSkW3+Yk30iq0p/Ako0=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 822b9ab4-34f4-4043-063b-08daad3d1e01
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Oct 2022 17:05:23.5902 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gj01a+vWsAg7McNvYw98+0fXSFmQdA/89XEWp/9TKSisfijde/tlWXSozg8JBUbQHZo+Yrutkow6Y9sbuBZtjuussPAF2gOYEIbvGPzOhXw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5364
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 04/16] drm/i915/perf: Determine gen12 oa
 ctx offset at runtime
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

On Wed, Oct 12, 2022 at 04:46:07PM -0700, Dixit, Ashutosh wrote:
>On Wed, 12 Oct 2022 15:27:27 -0700, Umesh Nerlige Ramappa wrote:
>>
>> +static u32 oa_context_image_offset(struct intel_context *ce, u32 reg)
>> +{
>> +	u32 offset, len = (ce->engine->context_size - PAGE_SIZE) / 4;
>> +	u32 *state = ce->lrc_reg_state;
>> +
>> +	for (offset = 0; offset < len; ) {
>> +		if (IS_MI_LRI_CMD(state[offset])) {
>> +			/*
>> +			 * We expect reg-value pairs in MI_LRI command, so
>> +			 * MI_LRI_LEN() should be even, if not, issue a warning.
>> +			 */
>> +			drm_WARN_ON(&ce->engine->i915->drm,
>> +				    MI_LRI_LEN(state[offset]) & 0x1);
>> +
>> +			if (oa_find_reg_in_lri(state, reg, &offset, len))
>> +				break;
>> +		} else {
>> +			offset++;
>> +		}
>> +	}
>> +
>> +	/*
>> +	 * Note that the the reg value is written to 'offset + 1' location, so
>> +	 * ensure that the offset is less than (len - 1).
>> +	 */
>> +	return offset < len ? offset : U32_MAX;
>
>Should this then be 'offset < len - 1'? It is actually equivalent since
>length is even and we do idx += 2 in oa_find_reg_in_lri so 'offset < len'
>is the same as 'offset < len - 1' but since we mention (len - 1) in the
>comment maybe clearer to use 'offset < len - 1'?

I was experimenting with len - 1, but removed it later. Forgot to remove 
the comment. I will drop the comment.

Thanks,
Umesh
