Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CF09588E05
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Aug 2022 15:56:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DDD718BE78;
	Wed,  3 Aug 2022 13:56:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15F8E18BE66
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Aug 2022 13:56:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659534974; x=1691070974;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=7aBP208Vrc/ZnpcFPgWSJGPPr0uItvK/gVPZLXo/iLE=;
 b=U2o22lMzCnIFqPG7JERAngveTGk4PJqJRpcdmS2picXKlF6bUvcJ0u+O
 IlMtg1QUM4F9+etF2LeK0EEXqIGhZTobUjNjap/puTWHO14R9lFoBjnbz
 yFy0r7QBDUKGjQCtWyMUPVqF00BQjanLE2zvovPCQcza6DQeQtFXsKr62
 q743OGZILBpPK2ImVAgLV/SJWG+JxXpSsUrPzZVXQwkj6EPPqlpUXRGNa
 FaH5iRLYDu+ifHPm7Jp1kCUJcyFJvVv7142DJtEZNt3Sz9P/QZVtvyqVq
 8EPkKi2ztBZOMJZvuFTk/WElMwqoQL76HicZEc4BPOvra833hN4xCGV4r A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10428"; a="315537910"
X-IronPort-AV: E=Sophos;i="5.93,214,1654585200"; d="scan'208";a="315537910"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2022 06:56:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,214,1654585200"; d="scan'208";a="848586279"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga006.fm.intel.com with ESMTP; 03 Aug 2022 06:56:01 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 3 Aug 2022 06:55:57 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Wed, 3 Aug 2022 06:55:57 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Wed, 3 Aug 2022 06:55:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LWSKauUTsWDmuFBwBmm/4KlxS+8VIjw/WGVD6FTzZzh2ZOmscHslG8Z3l4Jfd4cB3NrNvhTN/y49pN/dr7ATNQdQWLwVg34CIxZLUrlyaVQgKsbV9yxP6anqeh5jxU19PFSrGnAq8oAVwY4G7lg0aR8FP1XD2VLxEdFUDRSbtjG21z2Y6XJL3DCDVF5CkcTgunGvE+9n5yIzgS58BErsHgOpJ4/jkvjaNXLMELIyA7V9OjtRlFOv4ckeK8x/HtaBrv91DI5u28GLtCGvJfBjle4V4UmVIsI8VzUaN7LqXuKPgumDm1k53swKQupD4UOhik+55n1p1ffCh9ta3lvaNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Qg/Ui/Fr4T6xxipi4iVgV57GhKtWlTv5k2kGN4n9bwE=;
 b=BhCHwJElb+c0ZTmxLphOzsSpkFtyO0g1Tz9CjbqgAXyH0BA9TNXEnCKSVqjQ/27dCDYbcqD92EzTKn4ww0QT7xu1uoqko/Wtu1g+G2QGB+QYg5qfyXQwH1Dt9QgqQbtGA55adTsiww7LyZP8U2e5lru/tzCYULbEAKBaAlqqMe3tcmtnjEl8GarbGH+UY9H/maujwtjqXh+0K5hXmOZGtlSsOrbyb/SE7LhMcwmyHLlnWS5Du09RGzt9Pu3TwAKK7xZjsjAzaQkth3NZulpazWdDeZ8O05PTbH87mTCQzCijwf9Au1eK4gnqDik+TiAmlnHSXFsDdSqTMB2xbWBKAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1897.namprd11.prod.outlook.com (2603:10b6:3:112::9) by
 DM6PR11MB3932.namprd11.prod.outlook.com (2603:10b6:5:194::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5504.14; Wed, 3 Aug 2022 13:55:56 +0000
Received: from DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c1a9:ce96:31c:a7d]) by DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c1a9:ce96:31c:a7d%5]) with mapi id 15.20.5482.016; Wed, 3 Aug 2022
 13:55:55 +0000
Date: Wed, 3 Aug 2022 19:25:45 +0530
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Message-ID: <Yup+YYdhWEPUgvNc@bala-ubuntu>
References: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
 <20220728013420.3750388-18-radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220728013420.3750388-18-radhakrishna.sripada@intel.com>
X-ClientProxiedBy: PN2PR01CA0088.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:23::33) To DM5PR11MB1897.namprd11.prod.outlook.com
 (2603:10b6:3:112::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ae66ecac-752b-4760-a054-08da7557e2d0
X-MS-TrafficTypeDiagnostic: DM6PR11MB3932:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XanV33ik0uvD2VYa+T+p6uIwqfvgD8M6+33jbDjoiRMDL9nJutVG16olhakolXbm3QFVtls0tRQgGmXbYM2wun6xV/waXHFjVtWHlXlN6CbMxtc5Nip8UEk78XCKFLIAv9pm4q1nasdtA7Irqg6PNOxfXQMy2VGvZrhpQIR+wmb+i/95rh9Fu9cP2Hqzdu4y5D3YUDAM565meG+D2Z76poVn2pXBJ8FK9tt+8pSw38neVvKWwVDCFRJOX++Rl+fJfYynoqpxyb83AM9MSUNIeTEYPYBqcPcOm5Ef6RNcus1JO4qS+/Y5TXDNqeCbuc4mqWu+FwxcjZKBvHU1KFPfJpVlAn9XK441fUFIqOMzBxPk3v559PXl0vjr+riH1mKKuvdHYgRYucHvO+xWjMLgAwBq7TMXIoXDXSPIbQrzu0M3h8uI2g8dCC65Zep3XA39x6XZgaQmKpFsQ7vPgF4SY8NYmSPcq7Z5gBcZWteRNkRqqkNFJkInXcxoI9Q89aIgZFr4CKgVLYEYxTDfEFO03Ca2vjPCWt7Tq6njmZ405QNiErniXywbpXlBRGoZTr8vSNWaITWx2cFP6N2s9IsM9g36YkDU9V7bEIPsgvb/uCjXHSlgDEj5hUWN7ZHWAfmsTWRyg7FVLxbYy0wMen7i9qwVzFxUYu9CpIQSSmBpxtG8586YXsOfDSBet6KulkCW8vcD7stmYO3lx/FocRUIyg1VYxZ5Pdd7GZ8p2H0koHzjqyRIckVhDPFYcANMowiXPQj05iXdpkkcMg1UaX7/ducAKAsi0EiqJGOxlxSWM3k=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1897.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(7916004)(376002)(366004)(136003)(346002)(396003)(39860400002)(38100700002)(33716001)(44832011)(478600001)(66476007)(6486002)(6666004)(8936002)(6862004)(5660300002)(2906002)(66946007)(41300700001)(4326008)(15650500001)(8676002)(66556008)(9686003)(6506007)(6512007)(53546011)(26005)(83380400001)(82960400001)(316002)(6636002)(86362001)(186003)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c2FONnN0TU42SWpLWHJrQU9GeUM0UDRnMTZhaWQ4UGZlQmd1WjBSL2lFOXlp?=
 =?utf-8?B?SE0rdFhTd1poNCtGdzdQcEdXRnRTR1l5VTA0WDZLS3RTalFrL3F6MGNHUXhF?=
 =?utf-8?B?bHlBcm1QU2ZiVnp6SXliY0FDY2l2dDY3WFRFVG5MTWExUzhBY3h5KytzTmVn?=
 =?utf-8?B?ckJXZ1JqUjR0bkVDZFRpNEE3MUIvTTcrazgrQ2E0Q28zWUIwS2wrSHBsV0V1?=
 =?utf-8?B?b3B3SUJMRGhRQlIzQ1ZJVnEwUU4zZjFrNko4KzVmajh2QU5URzBGTldyQTZh?=
 =?utf-8?B?YnIyajlIUTd1bzdRY0dDK2JCL3hBS1c3UStsaHQzRXovc0xxZ3BjekNpTjFN?=
 =?utf-8?B?YU1HaGd1MVlJb3hJQVlOVU0wc2ZkaGtLMHNENVphZWlaWGh3aG9xRjlSWEF2?=
 =?utf-8?B?WitxYjlRS0NEWDJiQjB5U1NNZ3hiWEs2NEEzbjJ0K28weUkyRFByMi9JVEF5?=
 =?utf-8?B?UFhxZFZ2YjBxL0lidzdoeEFjN0FUVm5jQTlJMnJFcUhXSzljRnRRTGxPQ2dS?=
 =?utf-8?B?N2J1YWx4RThwYkVuMm5Tdk9nM2lEMkZiaFFPakkzbEdTMTJPelJwQ1lveXJo?=
 =?utf-8?B?ZHRCb01YK3UrM0xDeVFCOWFqenJIVTNocVpLa1YwTmhyR0h2c1BhaGUxYS9k?=
 =?utf-8?B?dFVvUFpqM1ZJOGJDN1BsOWxscm9UWndGdlAxSmRQaFlmVHRoaXJnSXNocVRW?=
 =?utf-8?B?SUozZ2YzelhqdVRLUnBvWVpwaXVTRlJvdEpRU2VGRmk5OTNWekFyYy8ycUVw?=
 =?utf-8?B?MXVQQ1Z6TWtibjhYUXEzTnJvQmFnaEJkQUNqWkhGQU5SK3Y1Nm5HOFJPbUE0?=
 =?utf-8?B?aG5ud0kzM3Z0N3dJV0JxZUdUd3BRaGNDUURlbFZjQUFXNUs4RmN3UThFc1VM?=
 =?utf-8?B?K0NWbG5oTkZqUGZsUEVyeUJDcmd4MFNUNlJHTkVHNFpmTHpEeWdmU2tTbUZt?=
 =?utf-8?B?aVQ3cGJZL205NjRIb0N3Wi9MeDlrczMvM0RhV2dzQkhHa1p5TWJtbnlLWnMy?=
 =?utf-8?B?Uk9GWmxUbE1RcUpwU0hObHFyVE9Bd3Rhb2NUM2ltRlBNcmdXbjlLb3dxRW93?=
 =?utf-8?B?amoyZTl3elF5OW1SMnMvL25HTlpqZjhRTXJQcGFOd29ZcFVHQnRDYk9yL09y?=
 =?utf-8?B?VVF3d21SN2RlMFhRbzBsckp3ZjJOeDRnSndwQWFDY1VFOEtvbGhzaWRHR0ps?=
 =?utf-8?B?aU9wUE5HK1d0UjdjNTNvZi8rVnhwRkt5NVdMaXladUFKRjNYdkx1NW5jNDRF?=
 =?utf-8?B?dFBDOGZqbHQyclNuSDhrVDN1R1F5eldyeFpuY3dXK2JxRllibkJQem05THNx?=
 =?utf-8?B?VW5WcHRYd3RlQjBLTFgxbUpEc0ZXSGRUZERqTUZBRmpSQmVvYUZDT0J0Tm80?=
 =?utf-8?B?UHJweE1SZlNvMWZqbmxTTVdTaXhUWlhmS1YyY2ZKUDRRQWJGSTdUUTluZjIr?=
 =?utf-8?B?YVpLbVhiZnA5Z1Zobk9QQ1NXcWJEY3VZdDlwd3ViNTlyQ3lWNjFObFNtelRB?=
 =?utf-8?B?cFh4MEYydG5kY2xzbTlEZHRkVm16eThDQVBoU1lWWGdnaE9Xby80NG1lMkFM?=
 =?utf-8?B?djc4UVJZYkdZTHJuaTViS2pmNEo4S2Zma1NxNllDaFpkcDloeUZ3ZzV0ZUtG?=
 =?utf-8?B?VUNzMUdibU11MGNIdWRFR0c3dk5TekY1ZjZjcExVMlcrcDIwdkc5eEpWNW4r?=
 =?utf-8?B?akNoQXZiUVE0Q2F1ZkZqZUo4aGh0ZzhXZXVPRnpreHcyWG41U0FpQjBrQnpi?=
 =?utf-8?B?MXlwYXFKWmlGMW05MjJhQWZ0UkZUK0dzdFhmOGZTVVREZ0s2bzdRajl1cllB?=
 =?utf-8?B?dEQrbERkdDFaRnJqeFhYbUZpdU05TmZvRkZHVnZoSU1PWm5VdzhYVkx2MHl1?=
 =?utf-8?B?cndHdFRjcHNDVllvNzR0ZlR4cHFCRWFvcTh1dW90Zk5Sb2s5SmRLWFZuQit5?=
 =?utf-8?B?YjFoOFpEancvT3l4amtTUERsVFZ1QnhpSjFoMGJFeE9lcjJKalRBS3NqV293?=
 =?utf-8?B?R0UyT0pBTmhzbXJkYXVjTlhzRDFndkR3OGdIQThraFp3UVgxZEVjZW5tbE1z?=
 =?utf-8?B?VDkydzlJU1dHYjIwcnZ2MDJiYXp3ZmFkdnpRVGE2OE9icXVMeWJtRDNheHZj?=
 =?utf-8?B?QXZZYlhaakNreW5iV1RuenRPSmpWRk1jclNBWS84MXJUd1dFbWhWcTR2azVL?=
 =?utf-8?Q?1UKJvVpg/kctRSpET6LAHAwX3SrVW+urW0rVLcbvMivP?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ae66ecac-752b-4760-a054-08da7557e2d0
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1897.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Aug 2022 13:55:55.7399 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: s9xWUoKpdfWRLSJ5lgpvfkrLfdaAx7DfyU8jPH4BmcnjBfTsY07RgrCZzCrX9eSfkqX8bc0r9GxpcY2r1CAAFVs/g64uW5a3vnYgcjY7lsyvcdHuFMgVJl9JCwaM64y7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3932
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 17/23] drm/i915/mtl: Update MBUS_DBOX credits
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

On 27.07.2022 18:34, Radhakrishna Sripada wrote:
> Display version 14 platforms has different credits values compared to ADL-P.
> Update the credits based on pipe usage.
> 
> Bspec: 49213
> 
> Cc: Jose Roberto de Souza <jose.souza@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Original Author: Caz Yokoyama
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_reg.h |  4 +++
>  drivers/gpu/drm/i915/intel_pm.c | 47 ++++++++++++++++++++++++++++++---
>  2 files changed, 47 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index d37607109398..2f9cbdd068e8 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1125,8 +1125,12 @@
>  #define MBUS_DBOX_REGULATE_B2B_TRANSACTIONS_EN	REG_BIT(16) /* tgl+ */
>  #define MBUS_DBOX_BW_CREDIT_MASK		REG_GENMASK(15, 14)
>  #define MBUS_DBOX_BW_CREDIT(x)			REG_FIELD_PREP(MBUS_DBOX_BW_CREDIT_MASK, x)
> +#define MBUS_DBOX_BW_4CREDITS_MTL		0x2
> +#define MBUS_DBOX_BW_8CREDITS_MTL		0x3
>  #define MBUS_DBOX_B_CREDIT_MASK			REG_GENMASK(12, 8)
>  #define MBUS_DBOX_B_CREDIT(x)			REG_FIELD_PREP(MBUS_DBOX_B_CREDIT_MASK, x)
> +#define MBUS_DBOX_I_CREDIT_MASK			REG_GENMASK(7, 5)
> +#define MBUS_DBOX_I_CREDIT(x)			REG_FIELD_PREP(MBUS_DBOX_I_CREDIT_MASK, x)
>  #define MBUS_DBOX_A_CREDIT_MASK			REG_GENMASK(3, 0)
>  #define MBUS_DBOX_A_CREDIT(x)			REG_FIELD_PREP(MBUS_DBOX_A_CREDIT_MASK, x)
>  
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index f71b3b8b590c..58a3c72418a7 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -8443,6 +8443,27 @@ void intel_dbuf_post_plane_update(struct intel_atomic_state *state)
>  				new_dbuf_state->enabled_slices);
>  }
>  
> +static bool xelpdp_is_one_pipe_per_dbuf_bank(enum pipe pipe, u8 active_pipes)
> +{
> +	switch (pipe) {
> +	case PIPE_A:
> +	case PIPE_D:
> +		if (is_power_of_2(active_pipes & (BIT(PIPE_A) | BIT(PIPE_D))))
> +			return true;
> +		break;
> +	case PIPE_B:
> +	case PIPE_C:
> +		if (is_power_of_2(active_pipes & (BIT(PIPE_B) | BIT(PIPE_C))))
> +			return true;
> +		break;
> +	default: /* to suppress compiler warning */
> +		MISSING_CASE(pipe);
> +		break;
> +	}
> +
> +	return false;
> +}
> +
>  void intel_mbus_dbox_update(struct intel_atomic_state *state)
>  {
>  	struct drm_i915_private *i915 = to_i915(state->base.dev);
> @@ -8462,20 +8483,28 @@ void intel_mbus_dbox_update(struct intel_atomic_state *state)
>  	     new_dbuf_state->active_pipes == old_dbuf_state->active_pipes))
>  		return;
>  
> +	if (DISPLAY_VER(i915) >= 14)
> +		val |= MBUS_DBOX_I_CREDIT(2);
> +
>  	if (DISPLAY_VER(i915) >= 12) {
>  		val |= MBUS_DBOX_B2B_TRANSACTIONS_MAX(16);
>  		val |= MBUS_DBOX_B2B_TRANSACTIONS_DELAY(1);
>  		val |= MBUS_DBOX_REGULATE_B2B_TRANSACTIONS_EN;
>  	}
>  
> -	/* Wa_22010947358:adl-p */
> -	if (IS_ALDERLAKE_P(i915))
> +	if (DISPLAY_VER(i915) >= 14)
> +		val |= new_dbuf_state->joined_mbus ? MBUS_DBOX_A_CREDIT(12) :
> +						     MBUS_DBOX_A_CREDIT(8);
> +	else if (IS_ALDERLAKE_P(i915))
> +		/* Wa_22010947358:adl-p */
>  		val |= new_dbuf_state->joined_mbus ? MBUS_DBOX_A_CREDIT(6) :
>  						     MBUS_DBOX_A_CREDIT(4);
>  	else
>  		val |= MBUS_DBOX_A_CREDIT(2);
>  
> -	if (IS_ALDERLAKE_P(i915)) {
> +	if (DISPLAY_VER(i915) >= 14) {
> +		val |= MBUS_DBOX_B_CREDIT(0xA);
> +	} else if (IS_ALDERLAKE_P(i915)) {
>  		val |= MBUS_DBOX_BW_CREDIT(2);
>  		val |= MBUS_DBOX_B_CREDIT(8);
>  	} else if (DISPLAY_VER(i915) >= 12) {
> @@ -8487,10 +8516,20 @@ void intel_mbus_dbox_update(struct intel_atomic_state *state)
>  	}
>  
>  	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> +		u32 pipe_val = val;
> +
>  		if (!new_crtc_state->hw.active ||
>  		    !intel_crtc_needs_modeset(new_crtc_state))
>  			continue;
>  
> -		intel_de_write(i915, PIPE_MBUS_DBOX_CTL(crtc->pipe), val);
> +		if (DISPLAY_VER(i915) >= 14) {
Only MTL and its subplatforms require the BW Credits to be set in
MBUS_DBOX_CTL register. No future platforms with DISPLAY_VER(i915)
higher than or equal to 14 has BW Credits field in the MBUS_DBOX_CTL
register. So please change the if condition to IS_METEORLAKE(i915)

Regards,
Bala
> +			if (xelpdp_is_one_pipe_per_dbuf_bank(crtc->pipe,
> +							     new_dbuf_state->active_pipes))
> +				pipe_val |= MBUS_DBOX_BW_CREDIT(MBUS_DBOX_BW_8CREDITS_MTL);
> +			else
> +				pipe_val |= MBUS_DBOX_BW_CREDIT(MBUS_DBOX_BW_4CREDITS_MTL);
> +		}
> +
> +		intel_de_write(i915, PIPE_MBUS_DBOX_CTL(crtc->pipe), pipe_val);
>  	}
>  }
> -- 
> 2.25.1
> 
