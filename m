Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 882036B9E40
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Mar 2023 19:25:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E1E010E8B6;
	Tue, 14 Mar 2023 18:25:47 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C043110E885;
 Tue, 14 Mar 2023 18:25:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678818344; x=1710354344;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=E0TjyR4j+7pE/UL4rddGCfXw1QfSiPnROwPFbWTLCAY=;
 b=UardaAMDGfNKvtD3Jbnf1AvPihgh8NEtDNUDo3VQToHCC/XNfRsiDa7w
 Ng1eluVikrz/P0xOKXLhh6ye4rwL/HCULE1Ppxmef7OwCa8MNBo6qfiQ7
 //jFCw5MDsWN1Q1W8hWNqn8ncSouw8EiT0B9RrBle0vFLC933Xi4sMo/Q
 fWMxFcmEA/mo1E1hgfigAdUaUnKxQZPYy9wuhLYKWfs2KLjumdXb7Zj36
 liFPdwdNr/z20dAhZIz5wx4gzhdW0ZEKqrrX4eofN1X1Jfy4UYtLLqc/P
 zexHx95/5yxMBTbcAcGq8EG2q+NY2j/IzYJ+lcpMHYmd+euunesR03dHP A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10649"; a="336200823"
X-IronPort-AV: E=Sophos;i="5.98,260,1673942400"; d="scan'208";a="336200823"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2023 11:25:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10649"; a="789469175"
X-IronPort-AV: E=Sophos;i="5.98,260,1673942400"; d="scan'208";a="789469175"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP; 14 Mar 2023 11:25:44 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 14 Mar 2023 11:25:44 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 14 Mar 2023 11:25:43 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Tue, 14 Mar 2023 11:25:43 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Tue, 14 Mar 2023 11:25:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Bf77KhkgHeKSAsJZQjEQH2mVhALDSPXuqiSJZ4Xu/sFIrebGKkiKjU++Ovma5S/N6hkxbcCPFgjzfGxNlDVzjsiFAVzxfzWjBMHbJJZsVOflK5fJ4JUKUsedvD/aVTWcrdjusb7ISM9HtWu0qanb6s432d4XcOEmO1o9SQa5+YfNKamzEaTvsaqNE1geEwWN1CPOI0w9CkrKhcsRtUCfjVEmdUVk9rZKOH4tj9GmsmHAhNqb1la9TBvdIF8SGq/NLCMG4Mg0O2eYPXygHUTrrrxUyAe07p9oNiEtmMSFB4+xEa8wqgNV9PLbixy02g6fHcmZa13cXKlejuoF+Uf3Tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BiJO6TZlx0Rku7Jd1vWzuviZWiHkKf0d/W1Ht5VjWgk=;
 b=LXG2vesabhyRqSCXq/xi0w3OAI6ZmjRuJ7p2Jko4210sXI6T0lzIjtGUSYG29mnZquAIxsDEiCSacgXlzXMG3qPMXlvXRa7e0woL2YdOR33Ahk67xuOJlx8GzaPIA3/SQUMiUnfn5l4pn1DXWpagm737emQyL4cvylHQnaTE6SfeT/BsoVsMD88t/8BQcAkkAMWZKZFuutCNt7fPXPjjvRqPONK+1OjYQzSXbnUrguwho7gTadnjaF2Xz0+p8yxYT+RE1eIkbs14AZU/WcG1cQhcqGuaCk/LRYu3PcZFuHfN8iARdXYmFSCE/EkUi0q2Oqukr3ck9TWpJ/PfrggngA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 DM6PR11MB4723.namprd11.prod.outlook.com (2603:10b6:5:2a0::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6178.24; Tue, 14 Mar 2023 18:25:42 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9bf9:4252:3ddc:7ac2]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9bf9:4252:3ddc:7ac2%7]) with mapi id 15.20.6178.024; Tue, 14 Mar 2023
 18:25:42 +0000
Date: Tue, 14 Mar 2023 11:25:31 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <ZBC8GxZjeR5+bHOm@orsosgc001.jf.intel.com>
References: <20230314121740.1195358-1-tvrtko.ursulin@linux.intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20230314121740.1195358-1-tvrtko.ursulin@linux.intel.com>
X-ClientProxiedBy: BYAPR03CA0029.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::42) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|DM6PR11MB4723:EE_
X-MS-Office365-Filtering-Correlation-Id: f25399e5-0181-4b5a-a4ce-08db24b984ba
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ozZkECcYS3kkLv6uHeunR3UB4pNOdwwoZpbqr75IG1Zv1a1zKDfnVCoqKxFm/XFwLFZId5VrCBqZFOniIjvqIaZXHu3a3R35Dz3wCublgOB5WAUSkN7xc76XHnP0VO5HTtFBI4UMKTppuN/4P6voWmN6KZuIdc1TEtFwQE+onHwfTd0g7THGCbnj7ScYbjJu6Hz5rZHO+WA2xIg+Cc3kLvJUsJcrHyXaYcAzHBxD1Y4CNJN8tFVdGqFZiDQ91649zIMeffazbE4jUTR0C+Q9p1u3491C2KLsa0TzsjPAzMuLxlyo07vHaQn7ct0Q7Z6g3l52j5PjXfrzR7LBW7zCzy5NIBe5CWJ1tl4aJLAOz9YCUNo5RT/bdWsYyOSXdA4LmrjpaT/TCtuotMb67/f1CckumS+hd6EU1s/ROTOhrqLOxLBcpPYNnbUySPz6FxncoyNcjMjDT/wBeWoxg71Ic33pJ4nxlulMvY6phXzYo0CBMx9GehvMVtkltyoja8ap7dBH9m0cKSzvVSl9sXbVcxfMLr4Q6SVePRPicmAqlZjtCU91PlVaDL3bM5+ZinWAGCShY+0aU5Jb/yudvD6do2B46CwcmOal0QH6/XupiLyV34eXrF6ZvId188Gz8F+M8AKYkx3uuCTJ2uhdd/Y+QjUOFe8t6B6qHdGcEv0K4UgI6P+58WQUb9UYni1RuXbb
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(376002)(396003)(136003)(366004)(346002)(451199018)(2906002)(82960400001)(83380400001)(186003)(5660300002)(41300700001)(66556008)(6916009)(8936002)(66946007)(4326008)(66476007)(8676002)(316002)(38100700002)(86362001)(478600001)(6506007)(6666004)(26005)(6486002)(6512007)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VU1YTzAvMWNJSVIzemNtMXpsMTllSjY0SEFuaHdLNXNOZCtncC95Rks4Q05U?=
 =?utf-8?B?OEw4RGkwekFSNHQweEQvb3NTSDZSVFFnZ2k2L3hqU3dINThQU2w0b0ZzUTBX?=
 =?utf-8?B?SXMwaWNPZEkyZkYvYWJEWStkMlpIT1Rrckh5TTFERTNaa0gvdEhEc1ZKTms1?=
 =?utf-8?B?YkhoTW0rMkNMWXVNWXZBNzlkVzM2dkhyQlQvNEZqUzBUdjdKM2VuL25HV2VX?=
 =?utf-8?B?UE4xanZYNXhMRHdGMFJtbkZ4MXJDYlBXWnVXcVoySDFxYlVqQ0JOQXVyeGFD?=
 =?utf-8?B?bHNWdHcvaXBXVjRnN2l6K3gvUEhqOW5heFFWRGEveUlqb0xDSFZndmNPcFZW?=
 =?utf-8?B?bFdUY0lrcS8ybUE4b0hWTXg0VTRzcTY2OHlqRExYNHkxZDI2cFdzT1hMZHlD?=
 =?utf-8?B?eE5zbTBNT3F1R3FKYlczRzlNeGlUV2IzbGU5YU4rbEUzZ01ya1lqV2N6TWZP?=
 =?utf-8?B?YzU3VGpuVXBGeUErT1FHYXVzRStZbXlJK1lyYjhSVEw2U2xWbXd2VkMwVEpO?=
 =?utf-8?B?OTczY1dkV2ptT2tFU28zZTExckVRTzF0SUs2TnlGZmJhNDNWc2U3UkVaQWgz?=
 =?utf-8?B?VnpMTWNqdkJzT2pPT051UkZBVi9qL05kc1ZuVkloZW43Y2ZoMlJMbEhsTm5q?=
 =?utf-8?B?RzhLbVVqWCs5K24zRWRBUURSYmgwYW5yOU1PM1YzK3FJdHh5MXg2aWhZaVhy?=
 =?utf-8?B?cXRFaVAzY2FweXVya1ptaE5nUFJ2RTdvbEJHb0RrM0dRdWFsMEQwTERVQjMr?=
 =?utf-8?B?djRPTEs3K3pMdUtRVE51N3F0dzVrV20rTnNZNTdqcG04ZGxOZ0NjcFNtMjJV?=
 =?utf-8?B?ZkFPWTBKalIzMUVkK002QWg0L1Zac2NGWDlqM0NYUUh2S0Q1a1BKTG5VUmJW?=
 =?utf-8?B?dVg1VFlSeS96TjJXcGg4M2JkV2FHb2lVS0FpdXhSUnY1NlUxWGhDMFprWlJn?=
 =?utf-8?B?WW1OekpLc0d5R2hNWllDRTNSakhzYUlyZ2ovUXhDeDVSNDNMbndreG5GVHpl?=
 =?utf-8?B?aytGN0RVSkYxb2dWNnlnUWJkYUpvNk01dncwdjJZNTdLMzQ4RGU3TUdsMDRz?=
 =?utf-8?B?LzZZTURnRXdvYW1PVmcxNlRRei90ek1QcHQvS1ZFU2gxbjljcWFvT21LLy9Z?=
 =?utf-8?B?bDBsRjJaZXh5eG1GY0dEeWNoZ2ljZFVjQkNzZkNJVFFOMlBHNGJIaGtJdmo3?=
 =?utf-8?B?a0kzRytyTEtvMlNadnNISEU0STQ5WXFWYWlSam9tNTV5MmNTbUlqc0lEaUx5?=
 =?utf-8?B?MGR0UkxreFpNbjFGeCtoOEl1bkZ6cGszQk9KYWIvcldLd28yclRzVkFubnBj?=
 =?utf-8?B?c0dWeGhXdzNqK1lwOWNZdGtpbExMN09WOE9rcXpad3FKR29kSUVsc00vQVAz?=
 =?utf-8?B?akxzc2YrNUlJdGJPYnArWTMxZFRxTXJDeTM1UEpFZDZYcUlCRTdVTWx1bWtj?=
 =?utf-8?B?SjRhMEFIMS9HR1Z3ZjhycVl6dUFjeUZtQmhtZjhGWFVocHZhZVR0SUluc002?=
 =?utf-8?B?WktBS2RzUzVNa2tUVVFSaTlKci9KL0dpSDhZR1FoRmp1VmpuRjBmRFljK0Vl?=
 =?utf-8?B?eC9HeGVTYmZiYzFzUklBRENxbnNhM0t1ZGtJSWI4RE9HMzlXYzlyeUVYQy94?=
 =?utf-8?B?VnhxbE1DeGJjcVBpWjJ2VllZTVZmNWNsdlFrL1AvRDhJa050QmRUYngzWFBn?=
 =?utf-8?B?U2hnOGJtWlk0Z1oxNkRwVi9DeWZMa05PWVNHZkNzNHFuNWMwMnphYVIzNlVC?=
 =?utf-8?B?cXFPcXZSYVd4MVFsUHN1R0Fkd0RTYWRaMlQwMk1MZUwxR05vd3d6b0ZPN2ZZ?=
 =?utf-8?B?dVl2Z2VuTG9DbWxuTTJHNFA3dzRnaE5OWjJxM1o3SnNGS3BsMWFsMGQ0cU55?=
 =?utf-8?B?N3FORjV3anUwT2p5NnNWMUlaRlZWeUE1T0NxYVdDYUpwNzdLZmVwNVJHeVkw?=
 =?utf-8?B?enNnaU9ob1ZwNDZFUDl5YWhMTWllaDhqY3Y0a0VGektPK3pJRnhHTEZFTkxM?=
 =?utf-8?B?YVlhL1JieTNwZG05aytEL0hEbngwV1RyZExSN2lkU2tmQUVsWlVjeUFXNlZI?=
 =?utf-8?B?QWxTc0xtM2ZuaWp3aDJ4Q1ZGRW1VcmRITTh6WmloSi9zN2hwTHdyNyt0Tk8y?=
 =?utf-8?B?d1RpMm9XZU5oOHQwd2o4WlZGdUt5VkRYL0hRRkZ2eklGdlA0bWxlV2xzUmZ3?=
 =?utf-8?Q?AYWzZr/I+zJwsoG02MV69Ro=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f25399e5-0181-4b5a-a4ce-08db24b984ba
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Mar 2023 18:25:41.9931 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vh+2iImtd46DUAnY4dXP1u5PJkKwzBTtHdJbhGcHJjQaz2PfOdxmN4Kv5XQF9dj8hhna9WCAUaS0xJFt1b3aVNysu8baKEkdb7ymK+VFUf8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4723
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH i-g-t] intel_gpu_top: Use actual period when
 calculating client busyness
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
Cc: igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

lgtm,

Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

On Tue, Mar 14, 2023 at 12:17:40PM +0000, Tvrtko Ursulin wrote:
>From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>
>On a slow machine, or with many processes and/or file descriptors to
>parse, the period of the scanning loop can drift significantly from the
>assumed value. This results in artificially inflated client busyness
>percentages.
>
>To alleviate the issue take some real timestamps and use actual elapsed
>time when calculating relative busyness.
>
>Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>---
> tools/intel_gpu_top.c | 39 ++++++++++++++++++++++++++++++++++++++-
> 1 file changed, 38 insertions(+), 1 deletion(-)
>
>diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
>index e13e35b71f4b..af4b350da8e4 100644
>--- a/tools/intel_gpu_top.c
>+++ b/tools/intel_gpu_top.c
>@@ -43,6 +43,7 @@
> #include <sys/types.h>
> #include <unistd.h>
> #include <termios.h>
>+#include <time.h>
> #include <sys/sysmacros.h>
>
> #include "igt_perf.h"
>@@ -2524,6 +2525,38 @@ static void show_help_screen(void)
> "\n");
> }
>
>+static int gettime(struct timespec *ts)
>+{
>+	memset(ts, 0, sizeof(*ts));
>+
>+#ifdef CLOCK_MONOTONIC_RAW
>+	if (!clock_gettime(CLOCK_MONOTONIC_RAW, ts))
>+		return 0;
>+#endif
>+#ifdef CLOCK_MONOTONIC_COARSE
>+	if (!clock_gettime(CLOCK_MONOTONIC_COARSE, ts))
>+		return 0;
>+#endif
>+
>+	return clock_gettime(CLOCK_MONOTONIC, ts);
>+}
>+
>+static unsigned long elapsed_us(struct timespec *prev, unsigned int period_us)
>+{
>+	unsigned long elapsed;
>+	struct timespec now;
>+
>+	if (gettime(&now))
>+		return period_us;
>+
>+	elapsed = ((now.tv_nsec - prev->tv_nsec) / 1000 +
>+	           (unsigned long)USEC_PER_SEC * (now.tv_sec - prev->tv_sec));
>+
>+	*prev = now;
>+
>+	return elapsed;
>+}
>+
> int main(int argc, char **argv)
> {
> 	unsigned int period_us = DEFAULT_PERIOD_MS * 1000;
>@@ -2537,6 +2570,7 @@ int main(int argc, char **argv)
> 	char *pmu_device, *opt_device = NULL;
> 	struct igt_device_card card;
> 	char *codename = NULL;
>+	struct timespec ts;
>
> 	/* Parse options */
> 	while ((ch = getopt(argc, argv, "o:s:d:pcJLlh")) != -1) {
>@@ -2690,6 +2724,7 @@ int main(int argc, char **argv)
>
> 	pmu_sample(engines);
> 	scan_clients(clients, false);
>+	gettime(&ts);
> 	codename = igt_device_get_pretty_name(&card, false);
>
> 	if (output_mode == JSON)
>@@ -2698,6 +2733,7 @@ int main(int argc, char **argv)
> 	while (!stop_top) {
> 		struct clients *disp_clients;
> 		bool consumed = false;
>+		unsigned int scan_us;
> 		int j, lines = 0;
> 		struct winsize ws;
> 		struct client *c;
>@@ -2720,6 +2756,7 @@ int main(int argc, char **argv)
> 		t = (double)(engines->ts.cur - engines->ts.prev) / 1e9;
>
> 		disp_clients = scan_clients(clients, true);
>+		scan_us = elapsed_us(&ts, period_us);
>
> 		if (stop_top)
> 			break;
>@@ -2757,7 +2794,7 @@ int main(int argc, char **argv)
>
> 					lines = print_client(c, engines, t,
> 							     lines, con_w,
>-							     con_h, period_us,
>+							     con_h, scan_us,
> 							     &class_w);
> 				}
>
>-- 
>2.37.2
>
