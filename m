Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 390AE4D9FA9
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 17:09:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A6E110E52E;
	Tue, 15 Mar 2022 16:09:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A270B10E422
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Mar 2022 16:09:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647360592; x=1678896592;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NqhIP7oQAw+cAUrVQ56cfQKVheu1N2RyqlPUEduFXhQ=;
 b=NstGUPjnLKC+hj+nr5wOWYV6QKsOprwJXJNFo7tlXik+EmPJHnKctR8W
 N58wr4nReBkuef1TuKvWnW2yOtrY1jdbdXpfrVeBqbFR5XLdTVFG5SvZj
 WAR5N3a9TD9aDP/zz/DfIvwykjZHu53QGib8WbpF44ubg2YCSG32qccSI
 CfZQrL48Erqh8jy4k6AasWIG+hzsjfY/JepGrxyMBn5w7lWgq7nls5QVJ
 FlaGuhii/47MS1DUThTuN8b90ziYyMIttL4P3mATAw9mfs2JQofJe0mjn
 DVhA1wDaInKMIa+DsHqgqF9TTdme1R9gAKPr8AuTDomKRFtHJa4m3w1g5 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="243797522"
X-IronPort-AV: E=Sophos;i="5.90,184,1643702400"; d="scan'208";a="243797522"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 09:06:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,184,1643702400"; d="scan'208";a="690248687"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP; 15 Mar 2022 09:06:25 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Tue, 15 Mar 2022 09:06:25 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Tue, 15 Mar 2022 09:06:25 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Tue, 15 Mar 2022 09:06:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=du4JDg5/4Qu5d9LeIqj1mmR/F2ruCiMGRlQi9m7iPVC4E/N1py4w9EqlXlJX5ZI48WKS9n3WvFJMGWIoEgDe1KgKUFfX/3QCtNVqOq3UFCbjw9zWFj52JJMEtqRWVEsxoCDRUR4qAMn1r5Mnq4rlT5QmADVWTnklGVyFCzIN1sOG8tgsxmudfjrsUmy1MSf861BWzDwTeL8iZFlWwnF6jf7G4tZtxDVCjy1gIyFcExryV2gNpIa4KuQvDP0NSinsrU5OLDR6krk4/KMLt8TeN7m+RzJ4PMR4fkiR/7VXcjziU0qP09bE2tlIjZykKAFkn3Fz2arl4n8FwSvGCDlWSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wHRrh1v4Pz6hKNECcLqVLWIPFC15LhxawPMtcUn/NY8=;
 b=D6Z37pyP6V1SWPKWp2mlJcn8zznu/Nm8MfxlVgyl9zdmFZ6wZseXpkUuYe2qls0mUJb//CV0arwSsEmbvRpWqYnIg8qZNJ21i1XE8BoMnEJhVMKmNAmbDN0oD0JbWgtY0P4hJGl4Iyqb8BXRfPWMvtH52cz3988ov3+5Vx4mj8uSDGNjeLP8INQ/5mIm5iqj1gW+oVLqalyaUhOI6l5Po+4h5/iP4CfcAbfxyseMz9WxPdUl2WqcklvAIhhaO4iXBTIWAvHWAjM8nm5eU3I1j0udKuUNOF14Vql0xZ7njq+5igF+sQ16AZp9RmqCxm2e9V1XcNhNEbBG39+bxgFXzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1563.namprd11.prod.outlook.com (2603:10b6:4:5::13) by
 MW3PR11MB4714.namprd11.prod.outlook.com (2603:10b6:303:5d::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5061.25; Tue, 15 Mar 2022 16:06:22 +0000
Received: from DM5PR11MB1563.namprd11.prod.outlook.com
 ([fe80::8559:2882:703d:3890]) by DM5PR11MB1563.namprd11.prod.outlook.com
 ([fe80::8559:2882:703d:3890%12]) with mapi id 15.20.5081.014; Tue, 15 Mar
 2022 16:06:22 +0000
Message-ID: <36dbd7ef-df40-d703-3e61-3fb6afa624f8@intel.com>
Date: Tue, 15 Mar 2022 09:06:20 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Matthew Brost <matthew.brost@intel.com>
References: <20220314170954.1537154-1-alan.previn.teres.alexis@intel.com>
 <20220314170954.1537154-2-alan.previn.teres.alexis@intel.com>
 <20220315151742.GA5206@jons-linux-dev-box>
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
In-Reply-To: <20220315151742.GA5206@jons-linux-dev-box>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BYAPR03CA0004.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::17) To DM5PR11MB1563.namprd11.prod.outlook.com
 (2603:10b6:4:5::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 08074870-a17e-4a2b-e997-08da069dbfe2
X-MS-TrafficTypeDiagnostic: MW3PR11MB4714:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <MW3PR11MB47141BC3FBB23E76AD404EBB8A109@MW3PR11MB4714.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bj9JGeYa4nZL2RaCZgIpPww4bqMfVuCp59OJttWelxFZr+i0ua/uGTJS0THyXTEhl0RoN+ufmmx6/XBd9iGS+l6kF/CP+7rvNDYO/xOAO2oYLt8Wk3bTp1gcPrLb/F8NdiI6JZT8BZOoNfFLxpfgD89ZChJP9yvqCOREpNePDVHpohmT0zCO8ArzlLae48tpafgIKeqJWqUGW2QTnE53R2vArlxvoTBMk6lz5rdz6Wjo3HoZzMR1dhFYCHW8x+6/XoBPEVS3f6FicMdjdArqYHmizMWgyx4aBBGyJqsXoiDCrJZVQol22aVL7ENYKkJBQ782q0Gg1ax4mZaHTI3tdmCnZzZXvaCvmL+n+wdJ5trswVmQJdp7uxyObp/wSueHrI4w3kTSJXKw83mwFp2eSphknEHq8CLic/d6qhR2k2DWXzAtU6Y0Cc1Fgaa9DFBieBHpaW3z5pPlPX9wS+RnSz8CyE7TEfg0HUiYC81xGQ0+aDtDzsz7ZJM6sWm7v5UfKRbs+jGRygL0lXxkdEj8e0UYcoQI/894/jm13HlYo9mG+b0vf4QLc+WgH4QEXshj+70f/5RBiGgKJkciFvmtxjkcTTmpuCJ6u9VSKtA7yg13Cm0wKX1r9Jfjh1iwvJzys86f4zAutuIN9hTVt9YmWek/qodyHuzBE6mYbvxwoQhq1BIsOH79iG9c5NZmwt1lvuACn55hLWjlBqHDwFZJO8ta0wYmEa2CoAY33GyOsURcN1Fa3UaNLb3PvxFGdPpi
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1563.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(8936002)(30864003)(36756003)(5660300002)(15650500001)(83380400001)(82960400001)(186003)(2906002)(26005)(2616005)(6506007)(6636002)(38100700002)(53546011)(37006003)(6512007)(316002)(4326008)(86362001)(508600001)(31686004)(6486002)(31696002)(8676002)(66946007)(66556008)(6862004)(66476007)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UnJLOGQvQ0pBL1FxUklPSG1nekozelNiUFVYd2RhMEViN2gyQU05VFdmNmFn?=
 =?utf-8?B?MDFhNngyVitYOWdUdlFMQnUrRzNMd0xsTGh3K0pKa3VGSkhjMVZ4dEdhcG5q?=
 =?utf-8?B?OWVBeEt2d3hNa2hTRHpUYnhndEkrc1BkeDJJRW41ZlVmZjZJV3RCWkp4ZlJC?=
 =?utf-8?B?WWt3N2d4QWFJYmN6YmpNbHVlWHgrWVk4ZGgwOXY5QlBHTlVtVzBTSWJsRTB6?=
 =?utf-8?B?c2J4d3pZeER4djNWSnlMSEhpOVp4dEV2Z3o2dm44Q2tjdFpKME5kcnRFWXZG?=
 =?utf-8?B?QUo3a3hDQ010S2JIWnFZUkRXZUlJblR0MG5ubTRSWGxuaDk4QUF2OUk3a0FL?=
 =?utf-8?B?ZkpBc1lqajF1ZnV0MER4WkJFRFhNc09OcjdVeDNTMk5JV0l0c3krN2lzK2JE?=
 =?utf-8?B?QkxCYkRSOUFvZHZyU0l2eUpTaXRjLzczYklZU0lBSm5CQUw4bzdDRDJHV25K?=
 =?utf-8?B?cnpTZXptWVRXOFFPWWx3UWd1MXc2MmRVYlNBbnZmOUVhVjFjT0pyTjlKRzBB?=
 =?utf-8?B?TlVSTlc4Q0ErZXpBSWYzOVFwN2tGVnRKRFU3M3VueEtoNWRBQTRGOXlHZW9Y?=
 =?utf-8?B?dThhMEkxMXVEUFJyMGlnWWpiM3ZzM0llY0Z1ZVhBQWNsTkE5YTdXT3FtUmlP?=
 =?utf-8?B?UlQ3M2xmT0w5SmdUSUxvZHk4UGg3WU1IQnFReXU5VjUyVUxXWjJmYkpLQ3lG?=
 =?utf-8?B?TUF3V09Xc0dzQm1FY3JPVjZiZUFtalhLT3hmMWwweDNnUG1xOFVUTUluSEpF?=
 =?utf-8?B?dk5veFREVEhCdWpOTEd4U1NsVUJXWEhrb1QzU1VyWlN0WFBFUUF6WEo5VDdB?=
 =?utf-8?B?ZmFWV3Zhc3hmOWRLK3lhaWR5bjErVUQybXV0RHB2bzJWNTBlUVB6dlRhNHRW?=
 =?utf-8?B?VnFQRTJlTWNPUHNxVmZIYlhzQ1RIc0RDTHBlRFJzeHJIUkZtUzl1c0ZIZ01o?=
 =?utf-8?B?M3QzQTF1TEJPcWUvU3p2dGpYZkIzZTFuSVAzWTlaYm9udHJQd2tqYjk5Sy96?=
 =?utf-8?B?RDdIVit4alZyWUt3ZlFpR3plY3F2QzdZc1ZuQ21iM1FXK1pqOG5lN3graVlr?=
 =?utf-8?B?WE5TTDVQazNON255dGRGcDdndmdsOTJRTHgvNk5xdldEeGRLWFc5dUJ3OG5n?=
 =?utf-8?B?NVV5dFQvdjRBOEpUeFNQR2t3dE11bWYrMm9vSGVqRUF5aWk4eUVkTWlIQ0x6?=
 =?utf-8?B?TFlYeHgxRFdzT3JMd1phWXBkdkFWOGt2bzdib1hiRDlRM1BRdU9tUUh0eXE4?=
 =?utf-8?B?S01Pc3JCT21PekV0UFVpSWRRQ3Y5eHBVaGJNUURmb2RCMHJaOWRPM3NCNEJT?=
 =?utf-8?B?SkE4dDhjSk9TRTZ5VlBWWnk4aGViNnFpTC9ad1pUcWhqSmFLTTVCbVNVTXF1?=
 =?utf-8?B?Z3c5NWlIV3ZVcUZiWXJwakxtcm5qRk5TblR4M1B2c21Gc3h6RlNmbjRIV0x1?=
 =?utf-8?B?VzBBc01lUUMrQkgzRXlIRXBXM2JSWGl0cDhPTEYvemxuQWtzZmxvYXMxQWNk?=
 =?utf-8?B?dk1oV2liQnhscHN2Z3l6WG5JeVhZNWdJOTY5ZUExbWFvUWQ0bHFFWXZkMFRV?=
 =?utf-8?B?QlJXZGhWVHVOaFBvdVpueGtzdUJZaFh1cE9DSWJHZXNTWTB3V0pVaWJlOGZD?=
 =?utf-8?B?VktXOHBNV05rc0RuY0VGUHBNaS9HYU12R3FOaW1RSFFPeHpUNjVEenpUU2Nm?=
 =?utf-8?B?TFBuN1hLT0dqT3VNcHMwOEhTVndSb0M4MXJseWEyUEhQMElXNk0rNTBWSkpI?=
 =?utf-8?B?U0k5M3VJV01OUFVjdVdNQ2NYUUtjeElJQTZVNHNBTktCdzVUUkRTSUNtSFFZ?=
 =?utf-8?B?eGs4Z3hEenhpeFI2aThFbWQ1WWMrTDE0YWxiR0tjWmJ3WTZzMkpMSDdZNGpQ?=
 =?utf-8?B?YmI2Z0JiK2srZkUxUVNySUNtWUZyZ21kZDZ4c3gzMXMxa2VsVDVROTJQd3ZO?=
 =?utf-8?B?eVdlb1dLR29iczZtckxGU0ZrVEgzMlJuTEd1MkpFeHdsZlp5b0JJUUJmeHN0?=
 =?utf-8?Q?VCoSGTL+9z/ZvX6sXllIvPJH+jYOlA=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 08074870-a17e-4a2b-e997-08da069dbfe2
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1563.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Mar 2022 16:06:22.7172 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UjzHtX29CzuhLQdU/Wf9VSLEfOse2PDRF3FffFUayDwA6nTC6+BBtG4XQFoHqeYnC5XlvA+KEhBnzno0TbuKlCIImstKw+73LNQ/HL6ajsHBZI16EPAiMaYo0+/tNiaI
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4714
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v9 01/13] drm/i915/guc: Update GuC ADS size
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

Thanks Matt! :)

On 3/15/2022 8:17 AM, Matthew Brost wrote:
> On Mon, Mar 14, 2022 at 10:09:42AM -0700, Alan Previn wrote:
>> Update GuC ADS size allocation to include space for
>> the lists of error state capture register descriptors.
>>
>> Then, populate GuC ADS with the lists of registers we want
>> GuC to report back to host on engine reset events. This list
>> should include global, engine-class and engine-instance
>> registers for every engine-class type on the current hardware.
>>
>> Ensure we allocate a persistent store for the register lists
>> that are populated into ADS so that we don't need to allocate
>> memory during GT resets when GuC is reloaded and ADS population
>> happens again.
>>
>> NOTE: Start with a sample static table of register lists to
>> layout the framework before adding real registers in subsequent
>> patch. This static register tables are a different format from
>> the ADS populated list.
>>
>> Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
> Reviewed-by: Matthew Brost <matthew.brost@intel.com>
>
>> ---
>>   drivers/gpu/drm/i915/Makefile                 |   1 +
>>   drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h |  91 +++++
>>   drivers/gpu/drm/i915/gt/uc/intel_guc.c        |  13 +-
>>   drivers/gpu/drm/i915/gt/uc/intel_guc.h        |   9 +-
>>   drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c    | 125 +++++-
>>   .../gpu/drm/i915/gt/uc/intel_guc_capture.c    | 374 ++++++++++++++++++
>>   .../gpu/drm/i915/gt/uc/intel_guc_capture.h    |  22 ++
>>   drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |   8 +
>>   8 files changed, 626 insertions(+), 17 deletions(-)
>>   create mode 100644 drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h
>>   create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
>>   create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h
>>
>> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
>> index 1a771ee5b1d0..69ada3b90a2c 100644
>> --- a/drivers/gpu/drm/i915/Makefile
>> +++ b/drivers/gpu/drm/i915/Makefile
>> @@ -184,6 +184,7 @@ i915-y += gt/uc/intel_uc.o \
>>   	  gt/uc/intel_uc_fw.o \
>>   	  gt/uc/intel_guc.o \
>>   	  gt/uc/intel_guc_ads.o \
>> +	  gt/uc/intel_guc_capture.o \
>>   	  gt/uc/intel_guc_ct.o \
>>   	  gt/uc/intel_guc_debugfs.o \
>>   	  gt/uc/intel_guc_fw.o \
>> diff --git a/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h b/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h
>> new file mode 100644
>> index 000000000000..919ed985f09a
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h
>> @@ -0,0 +1,91 @@
>> +/* SPDX-License-Identifier: MIT */
>> +/*
>> + * Copyright © 2021-2022 Intel Corporation
>> + */
>> +
>> +#ifndef _INTEL_GUC_CAPTURE_FWIF_H
>> +#define _INTEL_GUC_CAPTURE_FWIF_H
>> +
>> +#include <linux/types.h>
>> +#include "intel_guc_fwif.h"
>> +
>> +struct intel_guc;
>> +struct file;
>> +
>> +/**
>> + * struct guc_debug_capture_list_header / struct guc_debug_capture_list
>> + *
>> + * As part of ADS registration, these header structures (followed by
>> + * an array of 'struct guc_mmio_reg' entries) are used to register with
>> + * GuC microkernel the list of registers we want it to dump out prior
>> + * to a engine reset.
>> + */
>> +struct guc_debug_capture_list_header {
>> +	u32 info;
>> +#define GUC_CAPTURELISTHDR_NUMDESCR GENMASK(15, 0)
>> +} __packed;
>> +
>> +struct guc_debug_capture_list {
>> +	struct guc_debug_capture_list_header header;
>> +	struct guc_mmio_reg regs[0];
>> +} __packed;
>> +
>> +/**
>> + * struct __guc_mmio_reg_descr / struct __guc_mmio_reg_descr_group
>> + *
>> + * intel_guc_capture module uses these structures to maintain static
>> + * tables (per unique platform) that consists of lists of registers
>> + * (offsets, names, flags,...) that are used at the ADS regisration
>> + * time as well as during runtime processing and reporting of error-
>> + * capture states generated by GuC just prior to engine reset events.
>> + */
>> +struct __guc_mmio_reg_descr {
>> +	i915_reg_t reg;
>> +	u32 flags;
>> +	u32 mask;
>> +	const char *regname;
>> +};
>> +
>> +struct __guc_mmio_reg_descr_group {
>> +	const struct __guc_mmio_reg_descr *list;
>> +	u32 num_regs;
>> +	u32 owner; /* see enum guc_capture_owner */
>> +	u32 type; /* see enum guc_capture_type */
>> +	u32 engine; /* as per MAX_ENGINE_CLASS */
>> +};
>> +
>> +/**
>> + * struct __guc_capture_ads_cache
>> + *
>> + * A structure to cache register lists that were populated and registered
>> + * with GuC at startup during ADS registration. This allows much quicker
>> + * GuC resets without re-parsing all the tables for the given gt.
>> + */
>> +struct __guc_capture_ads_cache {
>> +	bool is_valid;
>> +	void *ptr;
>> +	size_t size;
>> +	int status;
>> +};
>> +
>> +/**
>> + * struct intel_guc_state_capture
>> + *
>> + * Internal context of the intel_guc_capture module.
>> + */
>> +struct intel_guc_state_capture {
>> +	/**
>> +	 * @reglists: static table of register lists used for error-capture state.
>> +	 */
>> +	const struct __guc_mmio_reg_descr_group *reglists;
>> +
>> +	/**
>> +	 * @ads_cache: cached register lists that is ADS format ready
>> +	 */
>> +	struct __guc_capture_ads_cache ads_cache[GUC_CAPTURE_LIST_INDEX_MAX]
>> +						[GUC_CAPTURE_LIST_TYPE_MAX]
>> +						[GUC_MAX_ENGINE_CLASSES];
>> +	void *ads_null_cache;
>> +};
>> +
>> +#endif /* _INTEL_GUC_CAPTURE_FWIF_H */
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
>> index 447a976c9f25..cda7e4bb8bac 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
>> @@ -9,8 +9,9 @@
>>   #include "gt/intel_gt_pm_irq.h"
>>   #include "gt/intel_gt_regs.h"
>>   #include "intel_guc.h"
>> -#include "intel_guc_slpc.h"
>>   #include "intel_guc_ads.h"
>> +#include "intel_guc_capture.h"
>> +#include "intel_guc_slpc.h"
>>   #include "intel_guc_submission.h"
>>   #include "i915_drv.h"
>>   #include "i915_irq.h"
>> @@ -362,9 +363,14 @@ int intel_guc_init(struct intel_guc *guc)
>>   	if (ret)
>>   		goto err_fw;
>>   
>> -	ret = intel_guc_ads_create(guc);
>> +	ret = intel_guc_capture_init(guc);
>>   	if (ret)
>>   		goto err_log;
>> +
>> +	ret = intel_guc_ads_create(guc);
>> +	if (ret)
>> +		goto err_capture;
>> +
>>   	GEM_BUG_ON(!guc->ads_vma);
>>   
>>   	ret = intel_guc_ct_init(&guc->ct);
>> @@ -403,6 +409,8 @@ int intel_guc_init(struct intel_guc *guc)
>>   	intel_guc_ct_fini(&guc->ct);
>>   err_ads:
>>   	intel_guc_ads_destroy(guc);
>> +err_capture:
>> +	intel_guc_capture_destroy(guc);
>>   err_log:
>>   	intel_guc_log_destroy(&guc->log);
>>   err_fw:
>> @@ -430,6 +438,7 @@ void intel_guc_fini(struct intel_guc *guc)
>>   	intel_guc_ct_fini(&guc->ct);
>>   
>>   	intel_guc_ads_destroy(guc);
>> +	intel_guc_capture_destroy(guc);
>>   	intel_guc_log_destroy(&guc->log);
>>   	intel_uc_fw_fini(&guc->fw);
>>   }
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
>> index e439e6c1ac8b..de32367831c6 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
>> @@ -10,18 +10,19 @@
>>   #include <linux/iosys-map.h>
>>   #include <linux/xarray.h>
>>   
>> -#include "intel_uncore.h"
>> +#include "intel_guc_ct.h"
>>   #include "intel_guc_fw.h"
>>   #include "intel_guc_fwif.h"
>> -#include "intel_guc_ct.h"
>>   #include "intel_guc_log.h"
>>   #include "intel_guc_reg.h"
>>   #include "intel_guc_slpc_types.h"
>>   #include "intel_uc_fw.h"
>> +#include "intel_uncore.h"
>>   #include "i915_utils.h"
>>   #include "i915_vma.h"
>>   
>>   struct __guc_ads_blob;
>> +struct intel_guc_state_capture;
>>   
>>   /**
>>    * struct intel_guc - Top level structure of GuC.
>> @@ -38,6 +39,8 @@ struct intel_guc {
>>   	struct intel_guc_ct ct;
>>   	/** @slpc: sub-structure containing SLPC related data and objects */
>>   	struct intel_guc_slpc slpc;
>> +	/** @capture: the error-state-capture module's data and objects */
>> +	struct intel_guc_state_capture *capture;
>>   
>>   	/** @sched_engine: Global engine used to submit requests to GuC */
>>   	struct i915_sched_engine *sched_engine;
>> @@ -162,6 +165,8 @@ struct intel_guc {
>>   	struct guc_mmio_reg *ads_regset;
>>   	/** @ads_golden_ctxt_size: size of the golden contexts in the ADS */
>>   	u32 ads_golden_ctxt_size;
>> +	/** @ads_capture_size: size of register lists in the ADS used for error capture */
>> +	u32 ads_capture_size;
>>   	/** @ads_engine_usage_size: size of engine usage in the ADS */
>>   	u32 ads_engine_usage_size;
>>   
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
>> index acc4a3766dc1..4f1edf919971 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
>> @@ -11,6 +11,7 @@
>>   #include "gt/intel_lrc.h"
>>   #include "gt/shmem_utils.h"
>>   #include "intel_guc_ads.h"
>> +#include "intel_guc_capture.h"
>>   #include "intel_guc_fwif.h"
>>   #include "intel_uc.h"
>>   #include "i915_drv.h"
>> @@ -86,8 +87,7 @@ static u32 guc_ads_golden_ctxt_size(struct intel_guc *guc)
>>   
>>   static u32 guc_ads_capture_size(struct intel_guc *guc)
>>   {
>> -	/* FIXME: Allocate a proper capture list */
>> -	return PAGE_ALIGN(PAGE_SIZE);
>> +	return PAGE_ALIGN(guc->ads_capture_size);
>>   }
>>   
>>   static u32 guc_ads_private_data_size(struct intel_guc *guc)
>> @@ -589,24 +589,117 @@ static void guc_init_golden_context(struct intel_guc *guc)
>>   	GEM_BUG_ON(guc->ads_golden_ctxt_size != total_size);
>>   }
>>   
>> -static void guc_capture_list_init(struct intel_guc *guc)
>> +static int
>> +guc_capture_prep_lists(struct intel_guc *guc)
>>   {
>> +	struct intel_gt *gt = guc_to_gt(guc);
>> +	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
>> +	u32 ads_ggtt, capture_offset, null_ggtt, total_size = 0;
>> +	struct guc_gt_system_info local_info;
>> +	struct iosys_map info_map;
>> +	bool ads_is_mapped;
>> +	size_t size = 0;
>> +	void *ptr;
>>   	int i, j;
>> -	u32 addr_ggtt, offset;
>>   
>> -	offset = guc_ads_capture_offset(guc);
>> -	addr_ggtt = intel_guc_ggtt_offset(guc, guc->ads_vma) + offset;
>> +	ads_is_mapped = !iosys_map_is_null(&guc->ads_map);
>> +	if (ads_is_mapped) {
>> +		capture_offset = guc_ads_capture_offset(guc);
>> +		ads_ggtt = intel_guc_ggtt_offset(guc, guc->ads_vma);
>> +		info_map = IOSYS_MAP_INIT_OFFSET(&guc->ads_map,
>> +						 offsetof(struct __guc_ads_blob, system_info));
>> +	} else {
>> +		memset(&local_info, 0, sizeof(local_info));
>> +		iosys_map_set_vaddr(&info_map, &local_info);
>> +		fill_engine_enable_masks(gt, &info_map);
>> +	}
>>   
>> -	/* FIXME: Populate a proper capture list */
>> +	/* first, set aside the first page for a capture_list with zero descriptors */
>> +	total_size = PAGE_SIZE;
>> +	if (ads_is_mapped) {
>> +		if (!intel_guc_capture_getnullheader(guc, &ptr, &size))
>> +			iosys_map_memcpy_to(&guc->ads_map, capture_offset, ptr, size);
>> +		null_ggtt = ads_ggtt + capture_offset;
>> +		capture_offset += PAGE_SIZE;
>> +	}
>>   
>>   	for (i = 0; i < GUC_CAPTURE_LIST_INDEX_MAX; i++) {
>>   		for (j = 0; j < GUC_MAX_ENGINE_CLASSES; j++) {
>> -			ads_blob_write(guc, ads.capture_instance[i][j], addr_ggtt);
>> -			ads_blob_write(guc, ads.capture_class[i][j], addr_ggtt);
>> -		}
>>   
>> -		ads_blob_write(guc, ads.capture_global[i], addr_ggtt);
>> +			/* null list if we dont have said engine or list */
>> +			if (!info_map_read(&info_map, engine_enabled_masks[j])) {
>> +				if (ads_is_mapped) {
>> +					ads_blob_write(guc, ads.capture_class[i][j], null_ggtt);
>> +					ads_blob_write(guc, ads.capture_instance[i][j], null_ggtt);
>> +				}
>> +				continue;
>> +			}
>> +			if (intel_guc_capture_getlistsize(guc, i,
>> +							  GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS,
>> +							  j, &size)) {
>> +				if (ads_is_mapped)
>> +					ads_blob_write(guc, ads.capture_class[i][j], null_ggtt);
>> +				goto engine_instance_list;
>> +			}
>> +			total_size += size;
>> +			if (ads_is_mapped) {
>> +				if (total_size > guc->ads_capture_size ||
>> +				    intel_guc_capture_getlist(guc, i,
>> +							      GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS,
>> +							      j, &ptr)) {
>> +					ads_blob_write(guc, ads.capture_class[i][j], null_ggtt);
>> +					continue;
>> +				}
>> +				ads_blob_write(guc, ads.capture_class[i][j], ads_ggtt + capture_offset);
>> +				iosys_map_memcpy_to(&guc->ads_map, capture_offset, ptr, size);
>> +				capture_offset += size;
>> +			}
>> +engine_instance_list:
>> +			if (intel_guc_capture_getlistsize(guc, i,
>> +							  GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE,
>> +							  j, &size)) {
>> +				if (ads_is_mapped)
>> +					ads_blob_write(guc, ads.capture_instance[i][j], null_ggtt);
>> +				continue;
>> +			}
>> +			total_size += size;
>> +			if (ads_is_mapped) {
>> +				if (total_size > guc->ads_capture_size ||
>> +				    intel_guc_capture_getlist(guc, i,
>> +							      GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE,
>> +							      j, &ptr)) {
>> +					ads_blob_write(guc, ads.capture_instance[i][j], null_ggtt);
>> +					continue;
>> +				}
>> +				ads_blob_write(guc, ads.capture_instance[i][j], ads_ggtt + capture_offset);
>> +				iosys_map_memcpy_to(&guc->ads_map, capture_offset, ptr, size);
>> +				capture_offset += size;
>> +			}
>> +		}
>> +		if (intel_guc_capture_getlistsize(guc, i, GUC_CAPTURE_LIST_TYPE_GLOBAL, 0, &size)) {
>> +			if (ads_is_mapped)
>> +				ads_blob_write(guc, ads.capture_global[i], null_ggtt);
>> +			continue;
>> +		}
>> +		total_size += size;
>> +		if (ads_is_mapped) {
>> +			if (total_size > guc->ads_capture_size ||
>> +			    intel_guc_capture_getlist(guc, i, GUC_CAPTURE_LIST_TYPE_GLOBAL, 0,
>> +						      &ptr)) {
>> +				ads_blob_write(guc, ads.capture_global[i], null_ggtt);
>> +				continue;
>> +			}
>> +			ads_blob_write(guc, ads.capture_global[i], ads_ggtt + capture_offset);
>> +			iosys_map_memcpy_to(&guc->ads_map, capture_offset, ptr, size);
>> +			capture_offset += size;
>> +		}
>>   	}
>> +
>> +	if (guc->ads_capture_size && guc->ads_capture_size != PAGE_ALIGN(total_size))
>> +		drm_warn(&i915->drm, "GuC->ADS->Capture alloc size changed from %d to %d\n",
>> +			 guc->ads_capture_size, PAGE_ALIGN(total_size));
>> +
>> +	return PAGE_ALIGN(total_size);
>>   }
>>   
>>   static void __guc_ads_init(struct intel_guc *guc)
>> @@ -644,8 +737,8 @@ static void __guc_ads_init(struct intel_guc *guc)
>>   
>>   	base = intel_guc_ggtt_offset(guc, guc->ads_vma);
>>   
>> -	/* Capture list for hang debug */
>> -	guc_capture_list_init(guc);
>> +	/* Lists for error capture debug */
>> +	guc_capture_prep_lists(guc);
>>   
>>   	/* ADS */
>>   	ads_blob_write(guc, ads.scheduler_policies, base +
>> @@ -693,6 +786,12 @@ int intel_guc_ads_create(struct intel_guc *guc)
>>   		return ret;
>>   	guc->ads_golden_ctxt_size = ret;
>>   
>> +	/* Likewise the capture lists: */
>> +	ret = guc_capture_prep_lists(guc);
>> +	if (ret < 0)
>> +		return ret;
>> +	guc->ads_capture_size = ret;
>> +
>>   	/* Now the total size can be determined: */
>>   	size = guc_ads_blob_size(guc);
>>   
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
>> new file mode 100644
>> index 000000000000..b8bbde01e5b1
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
>> @@ -0,0 +1,374 @@
>> +// SPDX-License-Identifier: MIT
>> +/*
>> + * Copyright © 2021-2022 Intel Corporation
>> + */
>> +
>> +#include <linux/types.h>
>> +
>> +#include <drm/drm_print.h>
>> +
>> +#include "gt/intel_engine_regs.h"
>> +#include "gt/intel_gt.h"
>> +#include "gt/intel_gt_regs.h"
>> +#include "guc_capture_fwif.h"
>> +#include "intel_guc_capture.h"
>> +#include "intel_guc_fwif.h"
>> +#include "i915_drv.h"
>> +#include "i915_memcpy.h"
>> +#include "i915_reg.h"
>> +
>> +/*
>> + * Define all device tables of GuC error capture register lists
>> + * NOTE: For engine-registers, GuC only needs the register offsets
>> + *       from the engine-mmio-base
>> + */
>> +/* XE_LPD - Global */
>> +static const struct __guc_mmio_reg_descr xe_lpd_global_regs[] = {
>> +	{GEN12_RING_FAULT_REG,     0,      0, "GEN12_RING_FAULT_REG"}
>> +};
>> +
>> +/* XE_LPD - Render / Compute Per-Class */
>> +static const struct __guc_mmio_reg_descr xe_lpd_rc_class_regs[] = {
>> +	{EIR,                      0,      0, "EIR"}
>> +};
>> +
>> +/* XE_LPD - Render / Compute Per-Engine-Instance */
>> +static const struct __guc_mmio_reg_descr xe_lpd_rc_inst_regs[] = {
>> +	{RING_HEAD(0),             0,      0, "RING_HEAD"},
>> +	{RING_TAIL(0),             0,      0, "RING_TAIL"},
>> +};
>> +
>> +/* XE_LPD - Media Decode/Encode Per-Class */
>> +static const struct __guc_mmio_reg_descr xe_lpd_vd_class_regs[] = {
>> +};
>> +
>> +/* XE_LPD - Media Decode/Encode Per-Engine-Instance */
>> +static const struct __guc_mmio_reg_descr xe_lpd_vd_inst_regs[] = {
>> +	{RING_HEAD(0),             0,      0, "RING_HEAD"},
>> +	{RING_TAIL(0),             0,      0, "RING_TAIL"},
>> +};
>> +
>> +/* XE_LPD - Video Enhancement Per-Class */
>> +static const struct __guc_mmio_reg_descr xe_lpd_vec_class_regs[] = {
>> +};
>> +
>> +/* XE_LPD - Video Enhancement Per-Engine-Instance */
>> +static const struct __guc_mmio_reg_descr xe_lpd_vec_inst_regs[] = {
>> +	{RING_HEAD(0),             0,      0, "RING_HEAD"},
>> +	{RING_TAIL(0),             0,      0, "RING_TAIL"},
>> +};
>> +
>> +#define TO_GCAP_DEF_OWNER(x) (GUC_CAPTURE_LIST_INDEX_##x)
>> +#define TO_GCAP_DEF_TYPE(x) (GUC_CAPTURE_LIST_TYPE_##x)
>> +#define MAKE_REGLIST(regslist, regsowner, regstype, class) \
>> +	{ \
>> +		regslist, \
>> +		ARRAY_SIZE(regslist), \
>> +		TO_GCAP_DEF_OWNER(regsowner), \
>> +		TO_GCAP_DEF_TYPE(regstype), \
>> +		class, \
>> +	}
>> +
>> +/* List of lists */
>> +static const struct __guc_mmio_reg_descr_group xe_lpd_lists[] = {
>> +	MAKE_REGLIST(xe_lpd_global_regs, PF, GLOBAL, 0),
>> +	MAKE_REGLIST(xe_lpd_rc_class_regs, PF, ENGINE_CLASS, GUC_RENDER_CLASS),
>> +	MAKE_REGLIST(xe_lpd_rc_inst_regs, PF, ENGINE_INSTANCE, GUC_RENDER_CLASS),
>> +	MAKE_REGLIST(xe_lpd_vd_class_regs, PF, ENGINE_CLASS, GUC_VIDEO_CLASS),
>> +	MAKE_REGLIST(xe_lpd_vd_inst_regs, PF, ENGINE_INSTANCE, GUC_VIDEO_CLASS),
>> +	MAKE_REGLIST(xe_lpd_vec_class_regs, PF, ENGINE_CLASS, GUC_VIDEOENHANCE_CLASS),
>> +	MAKE_REGLIST(xe_lpd_vec_inst_regs, PF, ENGINE_INSTANCE, GUC_VIDEOENHANCE_CLASS),
>> +	{}
>> +};
>> +
>> +static const struct __guc_mmio_reg_descr_group *
>> +guc_capture_get_device_reglist(struct intel_guc *guc)
>> +{
>> +	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
>> +
>> +	if (IS_TIGERLAKE(i915) || IS_ROCKETLAKE(i915) ||
>> +	    IS_ALDERLAKE_S(i915) || IS_ALDERLAKE_P(i915)) {
>> +		return xe_lpd_lists;
>> +	}
>> +
>> +	return NULL;
>> +}
>> +
>> +static const struct __guc_mmio_reg_descr_group *
>> +guc_capture_get_one_list(const struct __guc_mmio_reg_descr_group *reglists,
>> +			 u32 owner, u32 type, u32 id)
>> +{
>> +	int i;
>> +
>> +	if (!reglists)
>> +		return NULL;
>> +
>> +	for (i = 0; reglists[i].list; ++i) {
>> +		if (reglists[i].owner == owner && reglists[i].type == type &&
>> +		    (reglists[i].engine == id || reglists[i].type == GUC_CAPTURE_LIST_TYPE_GLOBAL))
>> +		return &reglists[i];
>> +	}
>> +
>> +	return NULL;
>> +}
>> +
>> +static const char *
>> +__stringify_owner(u32 owner)
>> +{
>> +	switch (owner) {
>> +	case GUC_CAPTURE_LIST_INDEX_PF:
>> +		return "PF";
>> +	case GUC_CAPTURE_LIST_INDEX_VF:
>> +		return "VF";
>> +	default:
>> +		return "unknown";
>> +	}
>> +
>> +	return "";
>> +}
>> +
>> +static const char *
>> +__stringify_type(u32 type)
>> +{
>> +	switch (type) {
>> +	case GUC_CAPTURE_LIST_TYPE_GLOBAL:
>> +		return "Global";
>> +	case GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS:
>> +		return "Class";
>> +	case GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE:
>> +		return "Instance";
>> +	default:
>> +		return "unknown";
>> +	}
>> +
>> +	return "";
>> +}
>> +
>> +static const char *
>> +__stringify_engclass(u32 class)
>> +{
>> +	switch (class) {
>> +	case GUC_RENDER_CLASS:
>> +		return "Render";
>> +	case GUC_VIDEO_CLASS:
>> +		return "Video";
>> +	case GUC_VIDEOENHANCE_CLASS:
>> +		return "VideoEnhance";
>> +	case GUC_BLITTER_CLASS:
>> +		return "Blitter";
>> +	case GUC_COMPUTE_CLASS:
>> +		return "Compute";
>> +	default:
>> +		return "unknown";
>> +	}
>> +
>> +	return "";
>> +}
>> +
>> +static void
>> +guc_capture_warn_with_list_info(struct drm_i915_private *i915, char *msg,
>> +				u32 owner, u32 type, u32 classid)
>> +{
>> +	if (type == GUC_CAPTURE_LIST_TYPE_GLOBAL)
>> +		drm_dbg(&i915->drm, "GuC-capture: %s for %s %s-Registers.\n", msg,
>> +			__stringify_owner(owner), __stringify_type(type));
>> +	else
>> +		drm_dbg(&i915->drm, "GuC-capture: %s for %s %s-Registers on %s-Engine\n", msg,
>> +			__stringify_owner(owner), __stringify_type(type),
>> +			__stringify_engclass(classid));
>> +}
>> +
>> +static int
>> +guc_capture_list_init(struct intel_guc *guc, u32 owner, u32 type, u32 classid,
>> +		      struct guc_mmio_reg *ptr, u16 num_entries)
>> +{
>> +	u32 i = 0;
>> +	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
>> +	const struct __guc_mmio_reg_descr_group *reglists = guc->capture->reglists;
>> +	const struct __guc_mmio_reg_descr_group *match;
>> +
>> +	if (!reglists)
>> +		return -ENODEV;
>> +
>> +	match = guc_capture_get_one_list(reglists, owner, type, classid);
>> +	if (match) {
>> +		for (i = 0; i < num_entries && i < match->num_regs; ++i) {
>> +			ptr[i].offset = match->list[i].reg.reg;
>> +			ptr[i].value = 0xDEADF00D;
>> +			ptr[i].flags = match->list[i].flags;
>> +			ptr[i].mask = match->list[i].mask;
>> +		}
>> +		return 0;
>> +	}
>> +
>> +	guc_capture_warn_with_list_info(i915, "Missing register list init", owner, type,
>> +					classid);
>> +
>> +	return -ENODATA;
>> +}
>> +
>> +static int
>> +guc_cap_list_num_regs(struct intel_guc_state_capture *gc, u32 owner, u32 type, u32 classid)
>> +{
>> +	const struct __guc_mmio_reg_descr_group *match;
>> +
>> +	match = guc_capture_get_one_list(gc->reglists, owner, type, classid);
>> +	if (!match)
>> +		return 0;
>> +
>> +	return match->num_regs;
>> +}
>> +
>> +int
>> +intel_guc_capture_getlistsize(struct intel_guc *guc, u32 owner, u32 type, u32 classid,
>> +			      size_t *size)
>> +{
>> +	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
>> +	struct intel_guc_state_capture *gc = guc->capture;
>> +	struct __guc_capture_ads_cache *cache = &gc->ads_cache[owner][type][classid];
>> +	int num_regs;
>> +
>> +	if (!gc->reglists)
>> +		return -ENODEV;
>> +
>> +	if (cache->is_valid) {
>> +		*size = cache->size;
>> +		return cache->status;
>> +	}
>> +
>> +	num_regs = guc_cap_list_num_regs(gc, owner, type, classid);
>> +	if (!num_regs) {
>> +		guc_capture_warn_with_list_info(i915, "Missing register list size",
>> +						owner, type, classid);
>> +		return -ENODATA;
>> +	}
>> +
>> +	*size = PAGE_ALIGN((sizeof(struct guc_debug_capture_list)) +
>> +			   (num_regs * sizeof(struct guc_mmio_reg)));
>> +
>> +	return 0;
>> +}
>> +
>> +int
>> +intel_guc_capture_getlist(struct intel_guc *guc, u32 owner, u32 type, u32 classid,
>> +			  void **outptr)
>> +{
>> +	struct intel_guc_state_capture *gc = guc->capture;
>> +	struct __guc_capture_ads_cache *cache = &gc->ads_cache[owner][type][classid];
>> +	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
>> +	struct guc_debug_capture_list *listnode;
>> +	int ret, num_regs;
>> +	u8 *caplist, *tmp;
>> +	size_t size = 0;
>> +
>> +	if (!gc->reglists)
>> +		return -ENODEV;
>> +
>> +	if (cache->is_valid) {
>> +		*outptr = cache->ptr;
>> +		return cache->status;
>> +	}
>> +
>> +	ret = intel_guc_capture_getlistsize(guc, owner, type, classid, &size);
>> +	if (ret) {
>> +		cache->is_valid = true;
>> +		cache->ptr = NULL;
>> +		cache->size = 0;
>> +		cache->status = ret;
>> +		return ret;
>> +	}
>> +
>> +	caplist = kzalloc(size, GFP_KERNEL);
>> +	if (!caplist) {
>> +		drm_dbg(&i915->drm, "GuC-capture: failed to alloc cached caplist");
>> +		return -ENOMEM;
>> +	}
>> +
>> +	/* populate capture list header */
>> +	tmp = caplist;
>> +	num_regs = guc_cap_list_num_regs(guc->capture, owner, type, classid);
>> +	listnode = (struct guc_debug_capture_list *)tmp;
>> +	listnode->header.info = FIELD_PREP(GUC_CAPTURELISTHDR_NUMDESCR, (u32)num_regs);
>> +
>> +	/* populate list of register descriptor */
>> +	tmp += sizeof(struct guc_debug_capture_list);
>> +	guc_capture_list_init(guc, owner, type, classid, (struct guc_mmio_reg *)tmp, num_regs);
>> +
>> +	/* cache this list */
>> +	cache->is_valid = true;
>> +	cache->ptr = caplist;
>> +	cache->size = size;
>> +	cache->status = 0;
>> +
>> +	*outptr = caplist;
>> +
>> +	return 0;
>> +}
>> +
>> +int
>> +intel_guc_capture_getnullheader(struct intel_guc *guc,
>> +				void **outptr, size_t *size)
>> +{
>> +	struct intel_guc_state_capture *gc = guc->capture;
>> +	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
>> +	int tmp = sizeof(u32) * 4;
>> +	void *null_header;
>> +
>> +	if (gc->ads_null_cache) {
>> +		*outptr = gc->ads_null_cache;
>> +		*size = tmp;
>> +		return 0;
>> +	}
>> +
>> +	null_header = kzalloc(tmp, GFP_KERNEL);
>> +	if (!null_header) {
>> +		drm_dbg(&i915->drm, "GuC-capture: failed to alloc cached nulllist");
>> +		return -ENOMEM;
>> +	}
>> +
>> +	gc->ads_null_cache = null_header;
>> +	*outptr = null_header;
>> +	*size = tmp;
>> +
>> +	return 0;
>> +}
>> +
>> +static void
>> +guc_capture_free_ads_cache(struct intel_guc_state_capture *gc)
>> +{
>> +	int i, j, k;
>> +	struct __guc_capture_ads_cache *cache;
>> +
>> +	for (i = 0; i < GUC_CAPTURE_LIST_INDEX_MAX; ++i) {
>> +		for (j = 0; j < GUC_CAPTURE_LIST_TYPE_MAX; ++j) {
>> +			for (k = 0; k < GUC_MAX_ENGINE_CLASSES; ++k) {
>> +				cache = &gc->ads_cache[i][j][k];
>> +				if (cache->is_valid)
>> +					kfree(cache->ptr);
>> +			}
>> +		}
>> +	}
>> +	kfree(gc->ads_null_cache);
>> +}
>> +
>> +void intel_guc_capture_destroy(struct intel_guc *guc)
>> +{
>> +	if (!guc->capture)
>> +		return;
>> +
>> +	guc_capture_free_ads_cache(guc->capture);
>> +
>> +	kfree(guc->capture);
>> +	guc->capture = NULL;
>> +}
>> +
>> +int intel_guc_capture_init(struct intel_guc *guc)
>> +{
>> +	guc->capture = kzalloc(sizeof(*guc->capture), GFP_KERNEL);
>> +	if (!guc->capture)
>> +		return -ENOMEM;
>> +
>> +	guc->capture->reglists = guc_capture_get_device_reglist(guc);
>> +
>> +	return 0;
>> +}
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h
>> new file mode 100644
>> index 000000000000..8de7704e12eb
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h
>> @@ -0,0 +1,22 @@
>> +/* SPDX-License-Identifier: MIT */
>> +/*
>> + * Copyright © 2021-2021 Intel Corporation
>> + */
>> +
>> +#ifndef _INTEL_GUC_CAPTURE_H
>> +#define _INTEL_GUC_CAPTURE_H
>> +
>> +#include <linux/types.h>
>> +
>> +struct guc_gt_system_info;
>> +struct intel_guc;
>> +
>> +int intel_guc_capture_getlist(struct intel_guc *guc, u32 owner, u32 type, u32 classid,
>> +			      void **outptr);
>> +int intel_guc_capture_getlistsize(struct intel_guc *guc, u32 owner, u32 type, u32 classid,
>> +				  size_t *size);
>> +int intel_guc_capture_getnullheader(struct intel_guc *guc, void **outptr, size_t *size);
>> +void intel_guc_capture_destroy(struct intel_guc *guc);
>> +int intel_guc_capture_init(struct intel_guc *guc);
>> +
>> +#endif /* _INTEL_GUC_CAPTURE_H */
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
>> index a4a6136b3616..a1fe4231bb58 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
>> @@ -311,6 +311,14 @@ enum {
>>   	GUC_CAPTURE_LIST_INDEX_MAX = 2,
>>   };
>>   
>> +/*Register-types of GuC capture register lists */
>> +enum guc_capture_type {
>> +	GUC_CAPTURE_LIST_TYPE_GLOBAL = 0,
>> +	GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS,
>> +	GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE,
>> +	GUC_CAPTURE_LIST_TYPE_MAX,
>> +};
>> +
>>   /* GuC Additional Data Struct */
>>   struct guc_ads {
>>   	struct guc_mmio_reg_set reg_state_list[GUC_MAX_ENGINE_CLASSES][GUC_MAX_INSTANCES_PER_CLASS];
>> -- 
>> 2.25.1
>>
