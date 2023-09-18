Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CB7F7A46E2
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Sep 2023 12:25:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7430C10E263;
	Mon, 18 Sep 2023 10:25:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44BF310E25F
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Sep 2023 10:25:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695032754; x=1726568754;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rmNxcoGgtUzWXrcoR02Al8MkfZzvYi89f4ftTlavH1o=;
 b=NWfW6ueCZhM4Uizde1dLOZEH9x4tajN8lT5+EDHeDhi+NajaCyuRAHOB
 faSl2sPYFXCQNL9zVUbtFgGROJ9IRsFrd30lyui46lfDmf+RKMOaj2ZCx
 YZoYLnya+OpawIarojcs2U0/y5AaGCGca/tYJUaOygCr+3J3/KaXmnZHr
 ENBg43Xmmn9MY0vP6FNDNKVR9zy4sJHCfCT3A2C7TZZ7rWjvOBNRYxFIR
 FKhTGiczJgyt39DYlG0YAxiutNu/kBdkb8wgno2hyODeod4uV1Se8FDlt
 qJt0A0NZFDFU6wRxz5NiYzQGo3v92lITiH2Fxta27Fs2f43XG5/iK2tVx w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10836"; a="446080631"
X-IronPort-AV: E=Sophos;i="6.02,156,1688454000"; d="scan'208";a="446080631"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 03:25:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10836"; a="1076532217"
X-IronPort-AV: E=Sophos;i="6.02,156,1688454000"; d="scan'208";a="1076532217"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Sep 2023 03:25:51 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 18 Sep 2023 03:25:51 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 18 Sep 2023 03:25:51 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 18 Sep 2023 03:25:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gfZ/3g8hV2V1MnOMu96RXoo51a/zAxop5814r1UGX7qu0YxmHhPES0mWHLYS0bcFVE+kmiOjCIFvykst4jsaHFu4fj7mWotuVSd40Nq1OJzvEhvvsFuEBuKZs+5z16CQ1pPaQl1p3OGXiqDofgaOaqWDYPeqNUr+poCOPP9Vwh0RVbRvHFWpk6SLBlnxy9BZ/KBH/7zjPjeZNtNsvICv0r9wSZCubxzpYylONgrDsjRKb5fUDZefuReEab1Tt/UnfTUhx84OS+aP37LdKCdJJ45GjP3N99CCbxMRTh7zQ2svpgWvFOAJ1Rz6ak3a4zmeJZ+CIHAxq8ASG0letvK0/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5mmvORRnuEkFZDpmS+7m+wknqq0jkQBnflM9t9HrHZ8=;
 b=FNN/cST2qHtXfsvb7usp1FdE0U/OZ1+YXVgkzF4RPFy3/1RlidTag3BqN4oJzVwCVphuwBYY0uOHmM0HCfqwetMNNSy1dqgJ+M52TMD2pDkycuJ5dUebXdU3YaYS9TrsoW6K+zkqXuZfxSXwchLwXUgK4a/Ub7qqQb68Ghz5SvOFfVRykWHYfqKMLySyDzy8VBEjkuRRd5IsvccfOgTh/rUCEyO+/TThYH83AEyjYGdTjtPnV2va+3VX8bVboM2uUEd/PVo6RRqdBxscVSGYjeyARBWDif8oYCD6j6Quw7Xc/pna4/kLI8OV/FP01gwtP0ZiD/KOxhLwqhJ+0pawFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN6PR11MB2976.namprd11.prod.outlook.com (2603:10b6:805:d5::22)
 by SJ2PR11MB8588.namprd11.prod.outlook.com (2603:10b6:a03:56c::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.27; Mon, 18 Sep
 2023 10:25:48 +0000
Received: from SN6PR11MB2976.namprd11.prod.outlook.com
 ([fe80::25de:7285:e0b7:a042]) by SN6PR11MB2976.namprd11.prod.outlook.com
 ([fe80::25de:7285:e0b7:a042%7]) with mapi id 15.20.6792.024; Mon, 18 Sep 2023
 10:25:48 +0000
Message-ID: <a0a7ac50-4d05-2d43-0356-9495d22eff49@intel.com>
Date: Mon, 18 Sep 2023 12:25:41 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
To: "Zeng, Oak" <oak.zeng@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, =?UTF-8?Q?Piotr_Pi=c3=b3rkowski?=
 <piotr.piorkowski@intel.com>
References: <20230915083412.4572-1-nirmoy.das@intel.com>
 <20230915083412.4572-6-nirmoy.das@intel.com>
 <SA1PR11MB6991E7C50BEFDCB2EEE04ABA92F6A@SA1PR11MB6991.namprd11.prod.outlook.com>
Content-Language: en-US
From: Nirmoy Das <nirmoy.das@intel.com>
In-Reply-To: <SA1PR11MB6991E7C50BEFDCB2EEE04ABA92F6A@SA1PR11MB6991.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: FR0P281CA0154.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b3::11) To SN6PR11MB2976.namprd11.prod.outlook.com
 (2603:10b6:805:d5::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB2976:EE_|SJ2PR11MB8588:EE_
X-MS-Office365-Filtering-Correlation-Id: c144f888-6268-420b-6e2e-08dbb8319f53
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1n4NSxM0EcaL2bKbq6fhrtNR5Fn4s2r5oFkS4Ic+uMUYSaniQGWDvWeXjD0ud0FM3dLIgm7mCgz0wJ5VTalh06JZ7m0MpFfxZfLWjOD6NyjEp3fA4e3Vy+hYBUkPzGM/gk8ONJKtDzyL9iIZuFScnFizG9Uyns3qguyGFc0wK14EeyuTpne6QK/5AouhZqi/mDsIn+ATQzfdiv0xGtpndy+QxNnOyjA0GVZbEiFE11dlGgxm+2t4BUTunHDvt+AkmrwlvawojCj5ObFsNJ8sl6QrtcWO/gyMQORqwCCCcli4jkgwVgrXwuKM24IM7GQwvjTO/rBZVaqv4iden+nPdYk4mbscgHAKcgnaDp76UJxUM5UZVH3Jzxx7xJiRiI5NrUCH/nnMzhh4Tg73OZZnymSo6KnhYgTc7gS891cXJXlCA2nzu/WstDVtrEx8+VH4INa5TG/+Qc69+yxCqgazENdFxV2KQAkK3c99Z/XpaFp94yuc5kmrsXO2GPX7qN4ArnB021WwmvxfcfgoEuOaVkUk7NRvMB6K9vyvIK29hwezomLjaN03nhz6xr/GxLP8BZkeQiBwOngxl0T8/YjqZwBaLfTsl/TQ08eOevBOny84SOBEcq8v04biP81c6QPs98TZ2o0/DybhrHslCxBRlg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2976.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(366004)(136003)(39860400002)(346002)(376002)(186009)(1800799009)(451199024)(15650500001)(316002)(6636002)(54906003)(86362001)(44832011)(66476007)(66946007)(66556008)(30864003)(110136005)(31696002)(31686004)(38100700002)(82960400001)(2906002)(36756003)(41300700001)(5660300002)(478600001)(6666004)(53546011)(6506007)(6486002)(6512007)(4326008)(8676002)(8936002)(83380400001)(26005)(2616005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QmowWmIzUFNtNkVDajlVS29ma1dqRWM0MThMaUVvZjViMUNmNlIxUjUxS3cw?=
 =?utf-8?B?MUFhWU5WVS9DVVN0Z3NRUXhOL2Jja3VCN3l5MDZKcWV1TmttemQ3cEhVOURY?=
 =?utf-8?B?cm9oNG93aHAwSWROZk5ScThBMWRXTktNWjJ6VzFLOEFPcnUrMlU1VFVpSGtT?=
 =?utf-8?B?TXhKUXJmUnUzejFJZFRmVVB4aEUyVFU2QlBMQmh2UTEwb1cvN3c1dFNucnFs?=
 =?utf-8?B?dmtuT3h2dUNneGdTOUxkRS9jakV4M1BQZmp0dDBlc0FRMm9Xd0xzUmIvK1VK?=
 =?utf-8?B?UGlRcTY0bElkUDd0SVZJK05xTEJJdVNyMXVZdUhxQzNuRHZhZnc2ejd3Nm50?=
 =?utf-8?B?czlMSUozcmJlLzI3dTZ4Q2k0WVM1c201bWdiajRlWWk2NWo0L2ZCMC9zd3Vm?=
 =?utf-8?B?dDZmc1QzQnh3NkFiL2NoOExkSDRkZmU4ZDFQQUJ2bmcydkg5MWw2bWZHYkxH?=
 =?utf-8?B?NVJoYURDR0YxRGhhWFpMT2E4T0lvR2EzVGtVQjBnRlQ3V1MyMmlHQmFKUlVP?=
 =?utf-8?B?TXhHV1pYdnAwa1BNN3VGbHkwZkRXellIbzEvWkNTakhtbnptNjJ1YTVHMlBu?=
 =?utf-8?B?RHQzQ2NSV3JyYVRBa0IrcjN0Tm8xSjlzbDJqbTh0MlBoREtQVXhxNEgzUXMw?=
 =?utf-8?B?cmNTL1NmWHBoQi9UUzRnaHVuMmF4Mk1Kdm9QcjBMSnB3cmU0RnF3L1JOcHBM?=
 =?utf-8?B?Wkl0eERON1k2bnY1RlFNelBhSjdRYm9CaStxNW9NMmhNSTMyTS83U045WjRn?=
 =?utf-8?B?clZTYkhLWU5odlpaK2pBREhMV0JURmUxREw4dDk5WW1QTG9ZN1pBcWJDQWw4?=
 =?utf-8?B?Y0ZXRVU2YmVqbWZrclB0Q0JUMEJNdkxybHVlZXlYUFp2M2cwUEJObktIZlN1?=
 =?utf-8?B?RjFtZHljN25wRlBkNkpwME9CTXFGQmlSdnNJT1J3UFBMYUh6eUZJTmJsU0My?=
 =?utf-8?B?TWd5V0JhWEJ5VXFTeThoME9zRHh1SVowbUcrUkovaXdvYTZjYkloU1JYVy9E?=
 =?utf-8?B?clIzbEpKQ0tFT2dzYWZ2c3Q5dmtwajlKUGwyajFobDM3dC8wTnZDZU1ySlln?=
 =?utf-8?B?ME43ano3RmtSU1M3ZVEybjk4QjZweW1ZbGd0dWwzZ3dndXpMTWozY1RaakQ5?=
 =?utf-8?B?UE5kRjJYRU85SE9jYUtXeVdUL25kYmdMZVh0ZUhpK2piQWVQc2gxVVBaU2F0?=
 =?utf-8?B?K3BEbnRjcmhEQU9FV2xsMktmS0lwd0xUMkNOWW5ldnZoYXBSbThrWTBzMnJ1?=
 =?utf-8?B?N2VwcVdFSmZLTXQ4VVluOERLS2VqZ0x6UStZbENsZ2dWY0M2Qm9BOW5mVEFw?=
 =?utf-8?B?dkJFZzBuaUhyUU1FbXA4N2FtNVZNdUR5djVwMzZDZlF0WHZnRG5xMWVCSm1a?=
 =?utf-8?B?N2J0eUpIeVFtaTVIZVlXczU0OVVkQ1pUaG1sY3NpVjBvOVc4dkNIbXdCNXhP?=
 =?utf-8?B?WCs5Wk1venMxblFlWkkxWXNLd0pNRWxtME5jMm1SbDRPL2FUY3FkUDhYZHNh?=
 =?utf-8?B?b0NQbDRYWTdnWHRtQUlNTllva2tkS1FtU1J1bVE3NnBNN1R1WE5uQllObEJZ?=
 =?utf-8?B?UUprOFRQMXRyQ3duQTZmWEhWUC9mWExpb3ZFZzRpWnRXVCthalBvdTJTRWZK?=
 =?utf-8?B?Ylovd0VtN29Bdm1haXUwalNtdHZnK2NvcGM5NUgxRm82N2xNNVJVQlRmendm?=
 =?utf-8?B?bjZPYzRqODhXV01tb01lMnBIeWU2MnJXc1hWQTJsNnRrNE5qaTQwVFlxOVdH?=
 =?utf-8?B?N0JTSE9ZU2xOUzIwRi8zZGMwc0pFSVZzN2JCdmZYZ2QyWk9rNmo4SjRTSU9G?=
 =?utf-8?B?a3ZBd3VHb1RibzY5TTBjTGxLdTZEM0V0emM0NWVoMXFTdUE1WkxKRGVrUXFx?=
 =?utf-8?B?bURqbVZOaFd5ckZoWDllaWlCaTZrdVFGZlFxQXlZdEVneVFxaXVjclpRYmhi?=
 =?utf-8?B?WTU3WGl2ZGNNeHo1czZVUUJ5aGZnQW9XZVc1aFFuV21td01Bb1gwbkwwdk5U?=
 =?utf-8?B?ZmpSSU41SXppaDVCSTV2VGlHdjIrc3NYMkVYNk5YUUgrV3NRVnFYemtsc3lw?=
 =?utf-8?B?Wi9md0Y4czVPL1JVNExxWWthdVFPYjYwN3Nhenk5SEFzY1RTMTVWSEhhQnJ2?=
 =?utf-8?Q?VrGmyfYegMqC1Bx30JVBiG8X7?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c144f888-6268-420b-6e2e-08dbb8319f53
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2976.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Sep 2023 10:25:47.6129 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: a8n6RF7M+VEo1ck6cTHNuyP1U1bjjyNYl43bgD/xjBDpHnaaPXNKgdTafL78L/HwbKAMOBhORSvnw7d95nGbvg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8588
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 5/7] drm/i915: Implement GGTT update method
 with MI_UPDATE_GTT
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
Cc: "Roper, Matthew D" <matthew.d.roper@intel.com>, "Shyti,
 Andi" <andi.shyti@intel.com>,
 "chris.p.wilson@linux.intel.com" <chris.p.wilson@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 9/15/2023 5:56 PM, Zeng, Oak wrote:
>
> Thanks,
> Oak
>
>> -----Original Message-----
>> From: Das, Nirmoy <nirmoy.das@intel.com>
>> Sent: Friday, September 15, 2023 4:34 AM
>> To: intel-gfx@lists.freedesktop.org
>> Cc: Zeng, Oak <oak.zeng@intel.com>; chris.p.wilson@linux.intel.com; Piorkowski,
>> Piotr <piotr.piorkowski@intel.com>; Shyti, Andi <andi.shyti@intel.com>; Mun,
>> Gwan-gyeong <gwan-gyeong.mun@intel.com>; Roper, Matthew D
>> <matthew.d.roper@intel.com>; Das, Nirmoy <nirmoy.das@intel.com>
>> Subject: [PATCH 5/7] drm/i915: Implement GGTT update method with
>> MI_UPDATE_GTT
>>
>> Implement GGTT update method with blitter command, MI_UPDATE_GTT
>> and install those handlers if a platform requires that.
>>
>> v2: Make sure we hold the GT wakeref and Blitter engine wakeref before
>> we call mutex_lock/intel_context_enter below. When GT/engine are not
>> awake, the intel_context_enter calls into some runtime pm function which
>> can end up with kmalloc/fs_reclaim. But trigger fs_reclaim holding a
>> mutex lock is not allowed because shrinker can also try to hold the same
>> mutex lock. It is a circular lock. So hold the GT/blitter engine wakeref
>> before calling mutex_lock, to fix the circular lock.
>>
>> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
>> Signed-off-by: Oak Zeng <oak.zeng@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gt/intel_ggtt.c | 235 +++++++++++++++++++++++++++
>>   1 file changed, 235 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c
>> b/drivers/gpu/drm/i915/gt/intel_ggtt.c
>> index dd0ed941441a..b94de7cebfce 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
>> @@ -15,18 +15,23 @@
>>   #include "display/intel_display.h"
>>   #include "gem/i915_gem_lmem.h"
>>
>> +#include "intel_context.h"
>>   #include "intel_ggtt_gmch.h"
>> +#include "intel_gpu_commands.h"
>>   #include "intel_gt.h"
>>   #include "intel_gt_regs.h"
>>   #include "intel_pci_config.h"
>> +#include "intel_ring.h"
>>   #include "i915_drv.h"
>>   #include "i915_pci.h"
>> +#include "i915_request.h"
>>   #include "i915_scatterlist.h"
>>   #include "i915_utils.h"
>>   #include "i915_vgpu.h"
>>
>>   #include "intel_gtt.h"
>>   #include "gen8_ppgtt.h"
>> +#include "intel_engine_pm.h"
>>
>>   static void i915_ggtt_color_adjust(const struct drm_mm_node *node,
>>   				   unsigned long color,
>> @@ -252,6 +257,145 @@ u64 gen8_ggtt_pte_encode(dma_addr_t addr,
>>   	return pte;
>>   }
>>
>> +static bool should_update_ggtt_with_bind(struct i915_ggtt *ggtt)
>> +{
>> +	struct intel_gt *gt = ggtt->vm.gt;
>> +
>> +	return intel_gt_is_bind_context_ready(gt);
>> +}
>> +
>> +static struct intel_context *gen8_ggtt_bind_get_ce(struct i915_ggtt *ggtt)
>> +{
>> +	struct intel_context *ce;
>> +	struct intel_gt *gt = ggtt->vm.gt;
>> +
>> +	if (intel_gt_is_wedged(gt))
>> +		return NULL;
>> +
>> +	ce = gt->engine[BCS0]->bind_context;
>> +	GEM_BUG_ON(!ce);
>> +
>> +	/*
>> +	 * If the GT is not awake already at this stage then fallback
>> +	 * to pci based GGTT update otherwise __intel_wakeref_get_first()
>> +	 * would conflict with fs_reclaim trying to allocate memory while
>> +	 * doing rpm_resume().
>> +	 */
>> +	if (!intel_gt_pm_get_if_awake(gt))
>> +		return NULL;
>> +
>> +	intel_engine_pm_get(ce->engine);
>> +
>> +	return ce;
>> +}
>> +
>> +static void gen8_ggtt_bind_put_ce(struct intel_context *ce)
>> +{
>> +	intel_engine_pm_put(ce->engine);
>> +	intel_gt_pm_put(ce->engine->gt);
>> +}
>> +
>> +static bool gen8_ggtt_bind_ptes(struct i915_ggtt *ggtt, u32 offset,
>> +				struct sg_table *pages, u32 num_entries,
>> +				const gen8_pte_t pte)
>> +{
>> +	struct i915_sched_attr attr = {};
>> +	struct intel_gt *gt = ggtt->vm.gt;
>> +	const gen8_pte_t scratch_pte = ggtt->vm.scratch[0]->encode;
>> +	struct sgt_iter iter;
>> +	struct i915_request *rq;
>> +	struct intel_context *ce;
>> +	u32 *cs;
>> +
>> +	if (!num_entries)
>> +		return true;
>> +
>> +	ce = gen8_ggtt_bind_get_ce(ggtt);
>> +	if (!ce)
>> +		return false;
>> +
>> +	if (pages)
>> +		iter = __sgt_iter(pages->sgl, true);
>> +
>> +	while (num_entries) {
>> +		int count = 0;
>> +		dma_addr_t addr;
>> +		/*
>> +		 * MI_UPDATE_GTT can update 512 entries in a single command
>> but
>> +		 * that end up with engine reset, 511 works.
>> +		 */
>> +		u32 n_ptes = min_t(u32, 511, num_entries);
>> +
>> +		if (mutex_lock_interruptible(&ce->timeline->mutex))
>> +			goto put_ce;
>> +
>> +		intel_context_enter(ce);
>> +		rq = __i915_request_create(ce, GFP_NOWAIT | GFP_ATOMIC);
>> +		intel_context_exit(ce);
>> +		if (IS_ERR(rq)) {
>> +			GT_TRACE(gt, "Failed to get bind request\n");
>> +			mutex_unlock(&ce->timeline->mutex);
>> +			goto put_ce;
>> +		}
>> +
>> +		cs = intel_ring_begin(rq, 2 * n_ptes + 2);
>> +		if (IS_ERR(cs)) {
>> +			GT_TRACE(gt, "Failed to ring space for GGTT bind\n");
>> +			i915_request_set_error_once(rq, PTR_ERR(cs));
>> +			/* once a request is created, it must be queued */
>> +			goto queue_err_rq;
>> +		}
>> +
>> +		*cs++ = MI_UPDATE_GTT | (2 * n_ptes);
>> +		*cs++ = offset << 12;
>> +
>> +		if (pages) {
>> +			for_each_sgt_daddr_next(addr, iter) {
>> +				if (count == n_ptes)
>> +					break;
>> +				*cs++ = lower_32_bits(pte | addr);
>> +				*cs++ = upper_32_bits(pte | addr);
>> +				count++;
>> +			}
>> +			/* fill remaining with scratch pte, if any */
>> +			if (count < n_ptes) {
>> +				memset64((u64 *)cs, scratch_pte,
>> +					 n_ptes - count);
>> +				cs += (n_ptes - count) * 2;
>> +			}
> Should we return error instead of silently fill pte with scratch? Or maybe even gem_bug_on on this case? The caller didn't allocate enough pages, means something wrong happened...


We do the dame already in gen8_ggtt_insert_entries() so not adding 
something new here. The comment just made it obvious :)  I don't know 
the exact usecase when this happens but

I saw tons of pipe error without this.


Regards,

Nirmoy

>
> Oak
>
>> +		} else {
>> +			memset64((u64 *)cs, pte, n_ptes);
>> +			cs += n_ptes * 2;
>> +		}
>> +
>> +		intel_ring_advance(rq, cs);
>> +queue_err_rq:
>> +		i915_request_get(rq);
>> +		__i915_request_commit(rq);
>> +		__i915_request_queue(rq, &attr);
>> +
>> +		mutex_unlock(&ce->timeline->mutex);
>> +		/* This will break if the request is complete or after engine reset
>> */
>> +		i915_request_wait(rq, 0, MAX_SCHEDULE_TIMEOUT);
>> +		if (rq->fence.error)
>> +			goto err_rq;
>> +
>> +		i915_request_put(rq);
>> +
>> +		num_entries -= n_ptes;
>> +		offset += n_ptes;
>> +	}
>> +
>> +	gen8_ggtt_bind_put_ce(ce);
>> +	return true;
>> +
>> +err_rq:
>> +	i915_request_put(rq);
>> +put_ce:
>> +	gen8_ggtt_bind_put_ce(ce);
>> +	return false;
>> +}
>> +
>>   static void gen8_set_pte(void __iomem *addr, gen8_pte_t pte)
>>   {
>>   	writeq(pte, addr);
>> @@ -272,6 +416,21 @@ static void gen8_ggtt_insert_page(struct
>> i915_address_space *vm,
>>   	ggtt->invalidate(ggtt);
>>   }
>>
>> +static void gen8_ggtt_insert_page_bind(struct i915_address_space *vm,
>> +				       dma_addr_t addr, u64 offset,
>> +				       unsigned int pat_index, u32 flags)
>> +{
>> +	struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
>> +	gen8_pte_t pte;
>> +
>> +	pte = ggtt->vm.pte_encode(addr, pat_index, flags);
>> +	if (should_update_ggtt_with_bind(i915_vm_to_ggtt(vm)) &&
>> +	    gen8_ggtt_bind_ptes(ggtt, offset, NULL, 1, pte))
>> +		return ggtt->invalidate(ggtt);
>> +
>> +	gen8_ggtt_insert_page(vm, addr, offset, pat_index, flags);
>> +}
>> +
>>   static void gen8_ggtt_insert_entries(struct i915_address_space *vm,
>>   				     struct i915_vma_resource *vma_res,
>>   				     unsigned int pat_index,
>> @@ -311,6 +470,50 @@ static void gen8_ggtt_insert_entries(struct
>> i915_address_space *vm,
>>   	ggtt->invalidate(ggtt);
>>   }
>>
>> +static bool __gen8_ggtt_insert_entries_bind(struct i915_address_space *vm,
>> +					    struct i915_vma_resource *vma_res,
>> +					    unsigned int pat_index, u32 flags)
>> +{
>> +	struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
>> +	gen8_pte_t scratch_pte = vm->scratch[0]->encode;
>> +	gen8_pte_t pte_encode;
>> +	u64 start, end;
>> +
>> +	pte_encode = ggtt->vm.pte_encode(0, pat_index, flags);
>> +	start = (vma_res->start - vma_res->guard) / I915_GTT_PAGE_SIZE;
>> +	end = start + vma_res->guard / I915_GTT_PAGE_SIZE;
>> +	if (!gen8_ggtt_bind_ptes(ggtt, start, NULL, end - start, scratch_pte))
>> +		goto err;
>> +
>> +	start = end;
>> +	end += (vma_res->node_size + vma_res->guard) / I915_GTT_PAGE_SIZE;
>> +	if (!gen8_ggtt_bind_ptes(ggtt, start, vma_res->bi.pages,
>> +	      vma_res->node_size / I915_GTT_PAGE_SIZE, pte_encode))
>> +		goto err;
>> +
>> +	start += vma_res->node_size / I915_GTT_PAGE_SIZE;
>> +	if (!gen8_ggtt_bind_ptes(ggtt, start, NULL, end - start, scratch_pte))
>> +		goto err;
>> +
>> +	return true;
>> +
>> +err:
>> +	return false;
>> +}
>> +
>> +static void gen8_ggtt_insert_entries_bind(struct i915_address_space *vm,
>> +					  struct i915_vma_resource *vma_res,
>> +					  unsigned int pat_index, u32 flags)
>> +{
>> +	struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
>> +
>> +	if (should_update_ggtt_with_bind(i915_vm_to_ggtt(vm)) &&
>> +	    __gen8_ggtt_insert_entries_bind(vm, vma_res, pat_index, flags))
>> +		return ggtt->invalidate(ggtt);
>> +
>> +	gen8_ggtt_insert_entries(vm, vma_res, pat_index, flags);
>> +}
>> +
>>   static void gen8_ggtt_clear_range(struct i915_address_space *vm,
>>   				  u64 start, u64 length)
>>   {
>> @@ -332,6 +535,27 @@ static void gen8_ggtt_clear_range(struct
>> i915_address_space *vm,
>>   		gen8_set_pte(&gtt_base[i], scratch_pte);
>>   }
>>
>> +static void gen8_ggtt_scratch_range_bind(struct i915_address_space *vm,
>> +					 u64 start, u64 length)
>> +{
>> +	struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
>> +	unsigned int first_entry = start / I915_GTT_PAGE_SIZE;
>> +	unsigned int num_entries = length / I915_GTT_PAGE_SIZE;
>> +	const gen8_pte_t scratch_pte = vm->scratch[0]->encode;
>> +	const int max_entries = ggtt_total_entries(ggtt) - first_entry;
>> +
>> +	if (WARN(num_entries > max_entries,
>> +		 "First entry = %d; Num entries = %d (max=%d)\n",
>> +		 first_entry, num_entries, max_entries))
>> +		num_entries = max_entries;
>> +
>> +	if (should_update_ggtt_with_bind(ggtt) && gen8_ggtt_bind_ptes(ggtt,
>> first_entry,
>> +	     NULL, num_entries, scratch_pte))
>> +		return ggtt->invalidate(ggtt);
>> +
>> +	gen8_ggtt_clear_range(vm, start, length);
>> +}
>> +
>>   static void gen6_ggtt_insert_page(struct i915_address_space *vm,
>>   				  dma_addr_t addr,
>>   				  u64 offset,
>> @@ -997,6 +1221,17 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
>>   			I915_VMA_GLOBAL_BIND | I915_VMA_LOCAL_BIND;
>>   	}
>>
>> +	if (i915_ggtt_require_binder(i915)) {
>> +		ggtt->vm.scratch_range = gen8_ggtt_scratch_range_bind;
>> +		ggtt->vm.insert_page = gen8_ggtt_insert_page_bind;
>> +		ggtt->vm.insert_entries = gen8_ggtt_insert_entries_bind;
>> +		/*
>> +		 * On GPU is hung, we might bind VMAs for error capture.
>> +		 * Fallback to CPU GGTT updates in that case.
>> +		 */
>> +		ggtt->vm.raw_insert_page = gen8_ggtt_insert_page;
>> +	}
>> +
>>   	if (intel_uc_wants_guc(&ggtt->vm.gt->uc))
>>   		ggtt->invalidate = guc_ggtt_invalidate;
>>   	else
>> --
>> 2.41.0
