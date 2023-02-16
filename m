Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F99869A21F
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Feb 2023 00:12:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CE8B10E390;
	Thu, 16 Feb 2023 23:12:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11B9010E390
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Feb 2023 23:12:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676589130; x=1708125130;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=2W0aWZjU6dwy3tS1W85ikC0mHg0bBzoOS10owW7ihn8=;
 b=ILxHyEr00anaX+PXeG4OnzvKHoV0/0dfTcQczz/GibyJwZeuFYP4mGot
 YqP59qFjXDLzUczxE0wH4nHl0FC8LCPCRshdsY9jizNtsnvsCJyXIsPcm
 +ENjRhog13hJgHHMtI+Prpup+lWwbhB6HGZ67pv16waIKgXQ7T643Nqty
 +U2PPx3cXsHZCy9NX09TeAFhRwaoKjV3WpW9ExIDw/MyZmYsaJWdMje0t
 p0ztHl8NJNtGyBrI6I8zYQmCIi7zlP5C9xfBdzFtPm0TxTTA/64RmQnQi
 +ZlNHYOLBvL7WjkkdAFbNf5x3Babtvr7GDC7jeMzYS/JrOiLXE5qafXJD w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="311493027"
X-IronPort-AV: E=Sophos;i="5.97,304,1669104000"; d="scan'208";a="311493027"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 15:12:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="999237750"
X-IronPort-AV: E=Sophos;i="5.97,304,1669104000"; d="scan'208";a="999237750"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga005.fm.intel.com with ESMTP; 16 Feb 2023 15:12:09 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 16 Feb 2023 15:12:08 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 16 Feb 2023 15:12:08 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.105)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 16 Feb 2023 15:12:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D0OrG0SBoRB0AZrvEvS4z4AvwJ8xTeXR23ODnARetrcid+ANGClMtoUKMxC+MZTxlZ5wn0WoXT+Cx/XU1+JVwPEZr2447Ge0ymEv8Of0q4dvf0IdbNhzCEg4nhntJNes9ZmccFQ6teEpllaENHo9aLGzI+I/fVUsh0mRwLYR8zcKKBhlO8AY3/hz4oB6m3ScsyrZjRrpBU3/6HJIdCow0X3O9kF/gzB+LtZttrwk/X7CGdfdlX+POhHnzmISgKE+4YIcu1ouiOlc5eMuI2cQOsiKDEPhY1qijsRVUgCvCRGOA6m6BIFksJDYmfDLy5OqEO+3n4DKjtYQLYkcG7gzqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QSBOCW1teRFraGSOr+4Y6ouTwgp8lpob+EkASKw927U=;
 b=Hc2d+DvmGvM/qrWmnTyNmycHV4bD9BJGmXpKOb/9kVWhljE3n0rKUvKt1PbqQ3CeUpXfirWH+J0gHATyuW9+EHAeFisbnIYM03taP00J1HKRKANMG92CMdulB2esXw8471Wh2HWx0MKE0ZRBW4hmL3JL/WaWoJHOCPN5t8tmmXoX2UBMI6rV6jzaMDdWgjuX5k5qUEIF0fDssxipGARdR/R8fML3jK5CrGL84kckVmjcyVo1IbDx+pZ6tTZUNgdVETO4yKPQH57cxIM5OnnnlLTYwk1ZGmZotyZe34c80bJB+w1MQBFgRYgf5660XCWKQH/HYugffvVo1lJ/HwNwtw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 BL1PR11MB5349.namprd11.prod.outlook.com (2603:10b6:208:308::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6086.27; Thu, 16 Feb
 2023 23:12:07 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9bf9:4252:3ddc:7ac2]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9bf9:4252:3ddc:7ac2%6]) with mapi id 15.20.6111.013; Thu, 16 Feb 2023
 23:12:07 +0000
Date: Thu, 16 Feb 2023 15:11:56 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <Y+64PNmj4bzRCmBt@orsosgc001.jf.intel.com>
References: <20230215005419.2100887-1-umesh.nerlige.ramappa@intel.com>
 <20230215005419.2100887-4-umesh.nerlige.ramappa@intel.com>
 <87zg9emc2s.wl-ashutosh.dixit@intel.com>
 <87y1oymarx.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <87y1oymarx.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: BYAPR01CA0028.prod.exchangelabs.com (2603:10b6:a02:80::41)
 To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|BL1PR11MB5349:EE_
X-MS-Office365-Filtering-Correlation-Id: 4f118c75-899f-4499-7d7e-08db10733907
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MESr+ecl6u6YbvJgZuDq5jgixZ4UBskUjaZZROqxzuh0ldhRH7bCkRbPHj7+8dzbJq0NDHBauZqRSvCK7DY/iNTOHEJCxzsEaho0CU4RLNeyc7daA4Dv2PCv2/RiWQzeIqt5af5Od+F/8rdfbg+DiYFSjSCiI78YsCFdGbJXUDJGGM7Uy5ZQ3TtVXlzurN7CMFwFgMIR0XaSX87iFvPrO+y88J5RZ3Ynn7f1taNQtyE4rzn1Kms9TIK7rkbt5tYFb5rVtvzbT0APlbP439S3QyUKfP55BFd0r2AKf0X4GbuhgBQXpl7ZrDhzZt1TF8DlOafi6sU/vuWXdJ6tRX3O4eP1MblEYZbuufsUUkwNdnAJ1dIxoVLYOdwDiaNN/USiDlpASa4CCg49OFm91gEnlzavVCHmnrfuP+IxGb7aILlYYoCkMWp4xp11EmhHYEMdA2nA8La32O5bCUI8XVlzf1OCaUuX5y3MwS1we6nWOqu457xhImRZqpueft4fe0TBioyH8qIjVqMN0FHr1g/g57AGnv1lvPNmAmUzJAzxHo3TgkhYIE1s+48imFIfghpz1ykBWI1dB+u9H4vmyCQNk2OXUqymHm9HuxQSb9lM2NaNOR9RCQP7bwx8wbWvy6eAWNasOBfVuL3YhyK0K4oAckXZR32ert4u2dEYAs5PxarkIBMnhJahnpFfSNgPdmAFY+I/PcVwSIENU3zk0D61KWKY/GMKEPgT4kteWE2+ZmCPVi0cJHqWkawCz9vTjBEu
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(396003)(39860400002)(346002)(376002)(366004)(451199018)(6636002)(4326008)(66476007)(8936002)(316002)(6862004)(2906002)(478600001)(6486002)(41300700001)(66946007)(66556008)(8676002)(6666004)(26005)(6512007)(186003)(83380400001)(6506007)(38100700002)(82960400001)(86362001)(5660300002)(15650500001)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QlJ0eWhXUTZrdE1VamltU1BHVzRNUXlhazVtbjRRWmJ2c2V1SkRFT2dxQmRM?=
 =?utf-8?B?WWdiZ281OXY1U0V5UkkrN2pkS1VyZkF5U2d0NFo4WDRYaUEwbEZxUzNkWE94?=
 =?utf-8?B?VVAzdmg3VVRieWRYVnVIZmU3aHozcndYKy9LOVRCdFZHbzFUNGhSVXZBeUpV?=
 =?utf-8?B?bHh3ekpxN2lYWmg3RzJiWTFxc28rTUIrQWUwSnM3ODQxQW5lN1ZYYUVFd21i?=
 =?utf-8?B?MkhIQnpxenJ2eGtSL01NRnN0NFhPZlI3V3BVZm5oRGluZ29BZklZTFI1aUhE?=
 =?utf-8?B?akNMN25vbVh3VDYxa29MYlpoQkF1TEJtZkJBM3ovUitIZlgzSFJKcGZlMHNN?=
 =?utf-8?B?eTQ3YmlwTU5BOXcwdnJmSC9iZ0x0a0tINWk2aFhyZ01vTEQ3RWhicnpnRlVF?=
 =?utf-8?B?cklFTm9ETVR3MHVGdDFMZU8wbnRHR2ExYU8vbyt6SjJJcUdhTmcvZ3BMa0Vh?=
 =?utf-8?B?ZCtUWWRxNzR6eEpLMjhyZHMyNkVuejN0TzZ5REpScXVqL1lWNWZkTndQaDN2?=
 =?utf-8?B?T3pQbGNVblEyV0UyVmZ6VVYzY01zT0N6bjJ2d0VndXdNaURUaGFJN1lOSUVK?=
 =?utf-8?B?VnMvbGk5b1VTS0dvamlBZ2FKaUdmZVRBWko1Y2RVdURNRU1aVUprdm5iMEU3?=
 =?utf-8?B?MUNRZWFWTlZTZUd1YWUxMTRJb0N6SDBVa01Ea2RFNGtoSkcyNys5R0xId21k?=
 =?utf-8?B?eUNqT3dBUDFQUVoxanYyU25GTTREbGdNTE9SNW5KOWJGVnZVSndGQm1zNXpo?=
 =?utf-8?B?bVRudjB2MkNYMC9FbmVueTd1ZDh5cytMSjlHc1BGdEgzdE1wRjUxa2s0RHBB?=
 =?utf-8?B?T2lvbzNmSUNZTk9NZnNKOE5Fc3lsQlQ2U0xRRUQ3czVRSHIzRm90R3dMcnZs?=
 =?utf-8?B?QXI0Z0ovVzhnaFM0aS9ZamQvOXFoemo2a3pyR3Jib2p1cm9lSEw0alk0QjZa?=
 =?utf-8?B?OTFMYnJidVFCS2tEM1RiTi92TWVEdTdhVEg2azlpSHk1dm1GbWhjN2VnYkZj?=
 =?utf-8?B?aUZHRjBxOGV1NGp2QlNObHdpSWlzRkFQR0pReDFxdGdLUmRIcmlyMXpVZlM5?=
 =?utf-8?B?dTRwcThkeTdkVTNGcVZiZFUyQTMwc1ZQb3U1VThHQ0tFdXMxS0MyUVZXZWVh?=
 =?utf-8?B?Yis1L0tlZmpIM3pEbGJRMzVXenlxTzdockYvYzNvS3RUdHl3RTh0RnJWd0Er?=
 =?utf-8?B?MjY3YVJrTW9kQlFTd0I4cnJ6QXdmVjB5SVNwZVFPTTV2VDdORnJGMTkvYUM4?=
 =?utf-8?B?MXduL0NIOEFVeC9WUmpXYzEzcWovZkdmSGlkVDZ1K3NjRnBCVXdOZHlxb1FT?=
 =?utf-8?B?MHFHMmozSUJOUjhZT1ZyTms0Q0hVWkM1OWdEVU0zZFlzdnViNytQRzFUOW95?=
 =?utf-8?B?eHVXbDYxMHZwTUo3TS9US3p5elB1bkdxVFhmTHIyRG5ZQ1VXcDdjQnRsenFH?=
 =?utf-8?B?MG1nT0hpaTdHS3lOV1FYSGEvTytaRCtwVzJBcGZnYmlKOHFqV3lpczZhYTRk?=
 =?utf-8?B?TFVFOTZsWU9QcjdwaHA1ODVVbUNqKzN0cGdjQVlSNTNwN1JZbFRwOTV6YUZT?=
 =?utf-8?B?ZDlkVVFGUzl1bngzNjk3TUdvalMwUDVaVUJYY1orUnpzME93WHdCam9pK2lL?=
 =?utf-8?B?Q2xXazBJNG5Xdk1aOHAvVTdwZ2ZWdjRLOWxseWMwTFNNczNZM0lJeG9RVFVZ?=
 =?utf-8?B?MWxGWVlkUUxtdFpkS0tEWVM1MXVQNzM1bkgwUGFybTIzUUNyakJEY3BNSGlm?=
 =?utf-8?B?VnlFRGZFTmR5a3BuOUVpdVhlRFFTWHE3OU93MTV1TVhOZHZsL1VZSWYzd2Zt?=
 =?utf-8?B?TVdJbENGUTI1YkYwTzJ4b29xTW9hMmZrOFZHbEhGRUFvdjRDUWc4Tk9yVFZs?=
 =?utf-8?B?aFRyRDhscjR1b1IxdzliM0pNRGlFZ0VLcG1xRzIyTis1TjQwaDhhMWtzL3RK?=
 =?utf-8?B?NEE2c0dBUGNMSk15UEhVSldlT0RNQm5qOVNGRXB0ZmJXcWszb2lVeEIxRks3?=
 =?utf-8?B?UHVSQkdmNklDdjVNYURMdFRyVnRIY1RDTTd1b2x6K1VWWHE5RFlzQXhqWXRN?=
 =?utf-8?B?VTdMMGtCbGs0TGVwMXRzK1J3WXBNUDZHZmtlQ2pyeGdFWTEwN2Rjb1U5UWNl?=
 =?utf-8?B?dVUrbWRKbFNzMWkwNUdKU0RpeWNnMkloejBoRWZ2Tm42cEZMUTVtT0pGSytl?=
 =?utf-8?Q?TvPnVirgYBVRE/ZrNfY1Uq0=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f118c75-899f-4499-7d7e-08db10733907
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Feb 2023 23:12:06.9163 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uWhNPe4/VlM69gbNkl4zRzF+P8CRx9Cx8NXHq3MtUHCe+O7yfZcFEixKv0ZIp3uZH1+W9eQNOZzxI5N9p71dy7rGXPRa7P95pdM3twR73Fg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5349
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/9] drm/i915/perf: Validate OA sseu config
 outside switch
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
Cc: Lionel G Landwerlin <lionel.g.landwerlin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Feb 15, 2023 at 09:36:50PM -0800, Dixit, Ashutosh wrote:
>On Wed, 15 Feb 2023 21:08:43 -0800, Dixit, Ashutosh wrote:
>>
>> On Tue, 14 Feb 2023 16:54:13 -0800, Umesh Nerlige Ramappa wrote:
>> >
>> > Validate the OA sseu config after all params are parsed.
>>
>> Commit messages for all patches need to answer the "why" or the reason for
>> the patch. In this case maybe an overkill but probably something like:
>>
>> Validate the OA sseu config after all params are parsed since the engine
>> can be passed in as part of perf properties.
>
>Also, if we do this the patch should probably be later in the series after
>the patch which introduces engine class/instance in the perf properties.

Reg: order of this patch,

I am thinking it still makes sense to have it here (before the
class:instance patch). It's more like a refactor before enabling the 
feature so that once the feature is enabled, there are no corner cases.  
Thoughts?

I would just add the same description in the commit message.

Thanks,
Umesh
