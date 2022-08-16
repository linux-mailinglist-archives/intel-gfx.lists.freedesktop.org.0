Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C92E459659B
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Aug 2022 00:46:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21BE610E16B;
	Tue, 16 Aug 2022 22:46:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 754FA10E140
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Aug 2022 22:45:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660689958; x=1692225958;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=DQwdrL8vNbrDgo6YlgGMCdL2ntVfbAJfGENX+mYR6sk=;
 b=PjYjQDvlBxuelx1zpDXQiUOWjDbTm2eF1CNLELPcqHh1Cd4cXhjazcGF
 gUSsDJdrXnpM55F54SopbGKCLoSEfcNtj9edUS3U5F8/qHL8W9pB6x0xZ
 5jHcIMujo7Z/aLtQH6eE0N3MyMisYH0dCwk7BFd/88TmqqcV0m5UP8xF0
 FDJa11a6eKgoZBskr6nB68snJ+ltV+hFUh2gzkpBjt6KYsD5UpEoiCaIz
 3zLyhuILXyDjgtNKhQzkYEK2DfMSEe8kygenF82CZ9LCKgT0OaRyiow5d
 Rbw60u9PWrnZZEHMY4ZzfULNlIJg3M9eqXMVa5A4CUulwDVPhCnnfH0jY w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10441"; a="291097954"
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="291097954"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2022 15:45:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="583508521"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP; 16 Aug 2022 15:45:57 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 16 Aug 2022 15:45:57 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 16 Aug 2022 15:45:56 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 16 Aug 2022 15:45:56 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 16 Aug 2022 15:45:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kK44QkuuV0Ku5fejIBPu4GZKc5/3FYVrlUn592IZwGToX6J1ZhJUPEQeiTq90+13v0ONeO8odmm4b2xVSMqGBJMCTiUVjb6sLHBh/yrf37LP6wEifjV9PjGVXdYIhVdBxA84xAgp6JDTkkCsdL/NvzlR7GnQfua0e3r2lNas/YQbUmTV0ozJsDpoaSlLz7nblvy/EMkmRead7xxgFeMh9FVKzdmyXo+AjIMuVbqwzew3zX78gwLncYGAMuWsvQZxtxfsov9cz7nmQgXoVGFf9p8PfVNNxI7QHTiKByzXsfVYN/rBoTtsU+iMBfwj8UZ6ogw7y/rr/Yj8BUlBZIPE7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7fcZS5eDe6OVej7NvvQIgoMdoXUF8c5MvWpFd5Y2ZG0=;
 b=a/54+zaO3+5Jp16pu2jir3HHgzw0kzug+G8R0/AlE9Fk5R+bra9ciLZbUn1IBh6z20mdidgSlOfKlSDWn9xs0TQJhlKpe632kbiFq/NZHHKWITPkOlEvoUlTpQeYrAluXafIgI/siNPrF2RHkkxEdGyh8vsLNQIaO63R8yA8baOzmMlLncG2qoGQUYojPPAe89ZxGGppdecDHL24FKM456K3DXXyxChH+IeK2EZb9BXYYEjJNdlH0JK240kY8ZzNPGuJEg7wR04Z+1XE9krxCV1fneti2pdvdIIbksxT6vr6ZhQROKGD8+TfTu2gDC9X4eC2cEej9+v5OT95+boB1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by BN6PR1101MB2338.namprd11.prod.outlook.com (2603:10b6:404:9c::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5525.10; Tue, 16 Aug
 2022 22:45:54 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::4db8:1f01:f830:305e]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::4db8:1f01:f830:305e%5]) with mapi id 15.20.5504.028; Tue, 16 Aug 2022
 22:45:54 +0000
Message-ID: <bda52b13-1925-7a07-eabc-349e8573b09e@intel.com>
Date: Tue, 16 Aug 2022 15:45:52 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.12.0
Content-Language: en-GB
To: Alan Previn <alan.previn.teres.alexis@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20220816021715.1835615-1-alan.previn.teres.alexis@intel.com>
 <20220816021715.1835615-3-alan.previn.teres.alexis@intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20220816021715.1835615-3-alan.previn.teres.alexis@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR05CA0097.namprd05.prod.outlook.com
 (2603:10b6:a03:334::12) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 78c791ea-dd56-4119-7d38-08da7fd913ad
X-MS-TrafficTypeDiagnostic: BN6PR1101MB2338:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VPHbXzA+gnj2VxoZXhTyxjNt8+k9FKva5w8EEVfcz9uZbtU5Lwxm46wcQi7ezXVDFFDCiX2TgGy6n+TipkjMJ2evbCAn029UgcElJYxWyek/CW8dTBxOpTs/Pp6YSG1oIu6Ca8/tWFWRlTgLZmPXj8R/qbzaduZj0m6wC180Voa8SnwLCIQsJLoHm7DwIoPf8cq29VHN5kL9Bsvs0hz4HWO6DTqnErdPg75lV9O+MBnfYdMUbY2ldVSBkjwQgbLvRhlmeUIAReLsiMLHBL6AA8uexbgt2Lahn8rkcxdiAtaW/dUisc4aZc7SuELceOYCQLdLeXwl/ak0X5Lu5F5r2vH/Y8lMDLd6bj1c+iFBdWh9RABWnO79KDcwt+afEjd3YlMIlZ24K7DvYaap87+2j5nPoI+1HB2HkjL6VOy1D2S8ErmttLq2KziLk8SA4nFwyThoTo8pdnQsSXuZvfV9Pmi4atJc0qkRxBP20ZruLG0I/bJ2c2dYgBjtih+ivhH0MLUv9K9lvyJhtfJaJ0GCTVSnMabz0BnLZlMJUiSN/mYnO4nfoYkNWEZiEC/YImdhqBs1FOHTuQ8S6ku4kcin4n7GCuXuhH/nQAAQDse/fsmUHe1VR8PdgKex7TUZ2vsUvB9OWXchzIoJU82ez8BEMYVSrcdBIU5gSvIkqPlFZ2eTCzLu1QWfIgdHtGL19BPdQvMXBlPff35Qr6bkqntnmkzydyhkcXH2PXyryBonxCMPZwHjtvRV43GtorcUbOXdoHZ+wHGadPIsorwOZqV8qJAipy93DactCJhupiL0Msy7UB+n3f3tYQrOYKsOMxt3bfY8k/Rz4p+/WYv53NmVkA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(366004)(39860400002)(346002)(376002)(396003)(2906002)(186003)(36756003)(2616005)(86362001)(31686004)(5660300002)(8936002)(30864003)(66476007)(53546011)(66946007)(6512007)(8676002)(66556008)(38100700002)(31696002)(26005)(316002)(82960400001)(41300700001)(6486002)(6506007)(478600001)(83380400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eGZzemF5c3JsMHN1QWpnUHc3MmVHQ3FMUExvNUE5alJ6ejZWY3ZLbEJaM1FZ?=
 =?utf-8?B?MVd0ZlNIcldXaWZjNHpFVEJlZWlWT0lxQkpMa2xxVWd5MHMzaThFYjRiellR?=
 =?utf-8?B?TTZiajFoUHF0aFgwbmkrdHZ5S3NzU1o5RGVSZDBlb0t4ZGkwazlXYzJCMmN6?=
 =?utf-8?B?dEZnZUs2ZERLZ0ZtSXY0aVJ3bFlvT0tVbkJVb29pcnBpY3VaVEVYTXYwbUhR?=
 =?utf-8?B?ZEVBOHVUa0F2bE5OVnM3THJFWEFDS0E5YjN0VFllSTFBRDd0aU9kY2IzdW8z?=
 =?utf-8?B?cWd6eCtGV0NCRG9WSHUzdkpQaW9IaHhGQWFZQmpOeXJ6TVRwL3N1THVPVnN1?=
 =?utf-8?B?Nnhtd3pLRmdaT1Fyais3YVF6ZUtFVVlyRnpEZ2ZESnF6RnlBOWFCc0dQZEhP?=
 =?utf-8?B?OUJ4dFhJRElpdElZa1lET0ZBcVh3bWVUeEJPLzV6S1FwWjBQelJBaEV4YUxE?=
 =?utf-8?B?ZHNzNVlodVdLc0ZMQTkwd0dGK3JlWFJ1Yyt3OWZMbFJFQWZDdjRCS2c0RHlS?=
 =?utf-8?B?ejVTN2NNdWtXZFdPdWhwZE4vWlhvKzl5aEo2ekNkRU9QTDlmcDAyOUxGcUwz?=
 =?utf-8?B?T2ozbFdqaHF2aFFEUHZVRWhML1k1bnVURWYxeHNkNjJpSE1YYlJoMVV4NCsv?=
 =?utf-8?B?dytNTml0T1pvbWtvbDhwS3pxQ3RkSElWY1VvTGlJNUF2aFFReVJOVTlTTFFP?=
 =?utf-8?B?K0h1b1Y2UXFuZ0FvWFptVE5jOEhlSnZwRVhmTEljSkluOVdKT2pHajJmNysr?=
 =?utf-8?B?RUV0NSsrOW1jTFhYMk1iSUhsS1o2dDAzMnVUbGZvc1pKWHNvbDJ6ZkZuY3Yz?=
 =?utf-8?B?em5QWjlSUWJmc1JWZEZDaVdwZ25kd3RGc1laSHhJa2U1TWQ0NytEQjZTd1lJ?=
 =?utf-8?B?MlVPMWZ6UWFaUi9GbnpmaDdabXI4OVU4L3UrWisxUWNkaDdJQ01MdnZPNDlF?=
 =?utf-8?B?OHduRjJ1M3BSYVA3OEJxZ2tmeTV1OVc4SXZCNnJXMmlDcVJTajJYVnVGTVBO?=
 =?utf-8?B?LzhKMjUyblhLbHZLSnVxQStLSnZyNU9yeG9uV04wQ3kwcmlKZitDMlFDUWpR?=
 =?utf-8?B?NnBZYjZaeFMzc1NQRWZaQzZVUG9IaVJ6LzJ2MGJuZ1drZTRJc1llUmE5aXBp?=
 =?utf-8?B?MC92Z0pxUHVGSjBlaTFxNHJhYmlIYm5OU2FRNnl2aHdtRWpXQ2xuNVVBdmxm?=
 =?utf-8?B?M25ydGNOMVlUMFFLYTlFZVJ3S2VSMWg0VjdMUTROTTFObXNLamZKNWU5WVlL?=
 =?utf-8?B?QXRvSDVVbkRud0ZmeklpWlhMdzBQY3hla3BFc21mTWNEeG9yY3FDeEE2ZHVY?=
 =?utf-8?B?blRWOFNXRnp1ZXdhKzg3TWlYWWZpaUdXeTB6TzFmcERhMkxSbGI3VllKVFBR?=
 =?utf-8?B?MnhuNm1CbmZpMXdFcU1sZzRjQm5nK3BFdmduU2txQWZVZXp0Wng1bTVVZHN2?=
 =?utf-8?B?eUM0cm9MSXV4UTlma2ozY1BvS3F1K3NXOHN1SXlWbHhvNldoK0Y1WENOcEs5?=
 =?utf-8?B?dHg4RGlHbjJzVVhZZzgybXZWSjdlL0FKK3FJTVE3MnNvcmI0c0hCSGVXMDhO?=
 =?utf-8?B?RlpxNm5xOFNya0ZmbjJBR2RFSDlmc0toTlBRbHBPN3AzTzBub25iRW1xZGdJ?=
 =?utf-8?B?MVJsVW1JQ2dKVnhnVEhEWG9aZzRYT2wzUVZzMUlidFhyTE9oNHNUeGlhaHBO?=
 =?utf-8?B?cFlmYm8wUm5OTUpIRFJJR0FIcTBYbGNjNUhiV1l5U1FTSXJUR0VHY2pHQjR5?=
 =?utf-8?B?d3AyS3ZjTnVVNzdWUHNBM3NJbHR0bkNoNm5EZk1TdjkzcDVQeExqZjAyb1Jm?=
 =?utf-8?B?RFBHUEx1QlU0WDVmRGRVeUszQXNkaVM0ajZJRG1UN0JPeFVmOWw4cHZDd2ty?=
 =?utf-8?B?TGpmcjdxM1k3Q2k4dnpRNStuQmJYQ1pIWXdQNHQ0dGxyVjNmSEh6NXhLMVll?=
 =?utf-8?B?QmR5N2luOGxsekk5SnNwRk9oTUlHVFZxTjdNaFBMWDg0N1p6NlNUMjVqWm0x?=
 =?utf-8?B?NFhnRS9hc0lEbGJJdWdCQmJEckd3emlsU0ZEUzFaOUN1bi9FUlhyMWR0NmVV?=
 =?utf-8?B?RmJLNTJBRkFFeHpZQVJWb2NvL2hGTlNGb1hXREQ5QUJQSW9hRzZYVW82RVkx?=
 =?utf-8?B?c0dQVEM4c3pRSkxCNC9RcVhKZVg4Mk1HV2Q1T0o3U3V6czk4M1hva052SFVh?=
 =?utf-8?B?RVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 78c791ea-dd56-4119-7d38-08da7fd913ad
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Aug 2022 22:45:54.2520 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VxjNhVgG+DUUbm+zdQAiQBep6sMMAXd6PZcf8uD82QkENB2HjI7UOSPI1UsUgWtx36FCc0MmRGfslFpyJYtAEmCmnxhV7U5gjNeDkZQVfJ8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR1101MB2338
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/guc: Add delay to disable
 scheduling after pin count goes to zero
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

On 8/15/2022 19:17, Alan Previn wrote:
> From: Matthew Brost <matthew.brost@intel.com>
>
> Add a delay, configurable via debugfs (default 34ms), to disable
> scheduling of a context after the pin count goes to zero. Disable
> scheduling is a costly operation as it requires synchronizing with
> the GuC. So the idea is that a delay allows the user to resubmit
> something before doing this operation. This delay is only done if
> the context isn't closed and less than a given threshold
> (default is 3/4) of the guc_ids.
are in use.

>
> As temporary WA disable this feature for the selftests. Selftests are
> very timing sensitive and any change in timing can cause failure. A
> follow up patch will fixup the selftests to understand this delay.
>
> Alan Previn: Matt Brost first introduced this series back in Oct 2021.
> However no real world workload with measured performance impact was
> available to prove the intended results. Today, this series is being
> republished in response to a real world workload that benefited greatly
> from it along with measured performance improvement.
>
> Workload description: 36 containers were created on a DG2 device where
> each container was performing a combination of 720p 3d game rendering
> and 30fps video encoding. The workload density was configured in a way
> that guaranteed each container to ALWAYS be able to render and
> encode no less than 30fps with a predefined maximum render + encode
> latency time. That means the totality of all 36 containers and their
> workloads were not saturating the engines to their max (in order to
> maintain just enough headrooom to meet the min fps and max latencies
> of incoming container submissions).
>
> Problem statement: It was observed that the CPU core processing the i915
> soft IRQ work was experiencing severe load. Using tracelogs and an
> instrumentation patch to count specific i915 IRQ events, it was confirmed
> that the majority of the CPU cycles were caused by the
> gen11_other_irq_handler() -> guc_irq_handler() code path. The vast
> majority of the cycles was determined to be processing a specific G2H
> IRQ: i.e. INTEL_GUC_ACTION_SCHED_CONTEXT_MODE_DONE. These IRQs are sent
> by GuC in response to i915 KMD sending H2G requests:
> INTEL_GUC_ACTION_SCHED_CONTEXT_MODE_SET. Those H2G requests are sent
> whenever a context goes idle so that we can unpin the context from GuC.
> The high CPU utilization % symptom was limiting density scaling.
>
> Root Cause Analysis: Because the incoming execution buffers were spread
> across 36 different containers (each with multiple contexts) but the
> system in totality was NOT saturated to the max, it was assumed that each
> context was constantly idling between submissions. This was causing
> a thrashing of unpinning contexts from GuC at one moment, followed quickly
> by repinning them due to incoming workload the very next moment. These
> event-pairs were being triggered across multiple contexts per container,
> across all containers at the rate of > 30 times per sec per context.
>
> Metrics: When running this workload without this patch, we measured an
> average of ~69K INTEL_GUC_ACTION_SCHED_CONTEXT_MODE_DONE events every 10
> seconds or ~10 million times over ~25+ mins. With this patch, the count
> reduced to ~480 every 10 seconds or about ~28K over ~10 mins. The
> improvement observed is ~99% for the average counts per 10 seconds.
>
> Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_context.c   |   2 +-
>   drivers/gpu/drm/i915/gt/intel_context.h       |   8 +
>   drivers/gpu/drm/i915/gt/intel_context_types.h |   7 +
>   drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  16 ++
>   .../gpu/drm/i915/gt/uc/intel_guc_debugfs.c    |  60 +++++++
>   .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 148 +++++++++++++++---
>   drivers/gpu/drm/i915/i915_selftest.h          |   2 +
>   7 files changed, 217 insertions(+), 26 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index dabdfe09f5e5..df7fd1b019ec 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -1454,7 +1454,7 @@ static void engines_idle_release(struct i915_gem_context *ctx,
>   		int err;
>   
>   		/* serialises with execbuf */
> -		set_bit(CONTEXT_CLOSED_BIT, &ce->flags);
> +		intel_context_close(ce);
>   		if (!intel_context_pin_if_active(ce))
>   			continue;
>   
> diff --git a/drivers/gpu/drm/i915/gt/intel_context.h b/drivers/gpu/drm/i915/gt/intel_context.h
> index 8e2d70630c49..f96420f0b5bb 100644
> --- a/drivers/gpu/drm/i915/gt/intel_context.h
> +++ b/drivers/gpu/drm/i915/gt/intel_context.h
> @@ -276,6 +276,14 @@ static inline bool intel_context_is_barrier(const struct intel_context *ce)
>   	return test_bit(CONTEXT_BARRIER_BIT, &ce->flags);
>   }
>   
> +static inline void intel_context_close(struct intel_context *ce)
> +{
> +	set_bit(CONTEXT_CLOSED_BIT, &ce->flags);
> +
> +	if (ce->ops->close)
> +		ce->ops->close(ce);
> +}
> +
>   static inline bool intel_context_is_closed(const struct intel_context *ce)
>   {
>   	return test_bit(CONTEXT_CLOSED_BIT, &ce->flags);
> diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
> index 04eacae1aca5..86ac84e2edb9 100644
> --- a/drivers/gpu/drm/i915/gt/intel_context_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
> @@ -43,6 +43,8 @@ struct intel_context_ops {
>   	void (*revoke)(struct intel_context *ce, struct i915_request *rq,
>   		       unsigned int preempt_timeout_ms);
>   
> +	void (*close)(struct intel_context *ce);
> +
>   	int (*pre_pin)(struct intel_context *ce, struct i915_gem_ww_ctx *ww, void **vaddr);
>   	int (*pin)(struct intel_context *ce, void *vaddr);
>   	void (*unpin)(struct intel_context *ce);
> @@ -208,6 +210,11 @@ struct intel_context {
>   		 * each priority bucket
>   		 */
>   		u32 prio_count[GUC_CLIENT_PRIORITY_NUM];
> +		/**
> +		 * @sched_disable_delay: worker to disable scheduling on this
> +		 * context
> +		 */
> +		struct delayed_work sched_disable_delay;
>   	} guc_state;
>   
>   	struct {
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> index a7acffbf15d1..1f5408dc32bc 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> @@ -112,6 +112,10 @@ struct intel_guc {
>   		 * refs
>   		 */
>   		struct list_head guc_id_list;
> +		/**
> +		 * @guc_ids_in_use: Number single-lrc guc_ids in use
> +		 */
> +		u16 guc_ids_in_use;
>   		/**
>   		 * @destroyed_contexts: list of contexts waiting to be destroyed
>   		 * (deregistered with the GuC)
> @@ -132,6 +136,16 @@ struct intel_guc {
>   		 * @reset_fail_mask: mask of engines that failed to reset
>   		 */
>   		intel_engine_mask_t reset_fail_mask;
> +		/**
> +		 * @sched_disable_delay_ms: schedule disable delay, in ms, for
> +		 * contexts
> +		 */
> +		u64 sched_disable_delay_ms;
> +		/**
> +		 * @sched_disable_gucid_threshold: threshold of min remaining available
> +		 * guc_ids before we start bypassing the schedule disable delay
> +		 */
> +		int sched_disable_gucid_threshold;
>   	} submission_state;
>   
>   	/**
> @@ -464,4 +478,6 @@ void intel_guc_load_status(struct intel_guc *guc, struct drm_printer *p);
>   
>   void intel_guc_write_barrier(struct intel_guc *guc);
>   
> +int intel_guc_sched_disable_gucid_threshold_max(struct intel_guc *guc);
> +
>   #endif
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_debugfs.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_debugfs.c
> index 25f09a420561..c91b150bb7ac 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_debugfs.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_debugfs.c
> @@ -71,12 +71,72 @@ static bool intel_eval_slpc_support(void *data)
>   	return intel_guc_slpc_is_used(guc);
>   }
>   
> +static int guc_sched_disable_delay_ms_get(void *data, u64 *val)
> +{
> +	struct intel_guc *guc = data;
> +
> +	if (!intel_guc_submission_is_used(guc))
> +		return -ENODEV;
> +
> +	*val = guc->submission_state.sched_disable_delay_ms;
> +
> +	return 0;
> +}
> +
> +static int guc_sched_disable_delay_ms_set(void *data, u64 val)
> +{
> +	struct intel_guc *guc = data;
> +
> +	if (!intel_guc_submission_is_used(guc))
> +		return -ENODEV;
> +
> +	guc->submission_state.sched_disable_delay_ms = val;
> +
> +	return 0;
> +}
> +DEFINE_SIMPLE_ATTRIBUTE(guc_sched_disable_delay_ms_fops,
> +			guc_sched_disable_delay_ms_get,
> +			guc_sched_disable_delay_ms_set, "%lld\n");
> +
> +static int guc_sched_disable_gucid_threshold_get(void *data, u64 *val)
> +{
> +	struct intel_guc *guc = data;
> +
> +	if (!intel_guc_submission_is_used(guc))
> +		return -ENODEV;
> +
> +	*val = guc->submission_state.sched_disable_gucid_threshold;
> +	return 0;
> +}
> +
> +static int guc_sched_disable_gucid_threshold_set(void *data, u64 val)
> +{
> +	struct intel_guc *guc = data;
> +
> +	if (!intel_guc_submission_is_used(guc))
> +		return -ENODEV;
> +
> +	if (val > intel_guc_sched_disable_gucid_threshold_max(guc))
> +		guc->submission_state.sched_disable_gucid_threshold =
> +			intel_guc_sched_disable_gucid_threshold_max(guc);
> +	else
> +		guc->submission_state.sched_disable_gucid_threshold = val;
> +
> +	return 0;
> +}
> +DEFINE_SIMPLE_ATTRIBUTE(guc_sched_disable_gucid_threshold_fops,
> +			guc_sched_disable_gucid_threshold_get,
> +			guc_sched_disable_gucid_threshold_set, "%lld\n");
> +
>   void intel_guc_debugfs_register(struct intel_guc *guc, struct dentry *root)
>   {
>   	static const struct intel_gt_debugfs_file files[] = {
>   		{ "guc_info", &guc_info_fops, NULL },
>   		{ "guc_registered_contexts", &guc_registered_contexts_fops, NULL },
>   		{ "guc_slpc_info", &guc_slpc_info_fops, &intel_eval_slpc_support},
> +		{ "guc_sched_disable_delay_ms", &guc_sched_disable_delay_ms_fops, NULL },
> +		{ "guc_sched_disable_gucid_threshold", &guc_sched_disable_gucid_threshold_fops,
> +		   NULL },
>   	};
>   
>   	if (!intel_guc_is_supported(guc))
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 0d17da77e787..2b434190c4de 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -65,7 +65,13 @@
>    * corresponding G2H returns indicating the scheduling disable operation has
>    * completed it is safe to unpin the context. While a disable is in flight it
>    * isn't safe to resubmit the context so a fence is used to stall all future
> - * requests of that context until the G2H is returned.
> + * requests of that context until the G2H is returned. Because this interaction
> + * with the GuC takes a non-zero amount of time we delay the disabling of
> + * scheduling after the pin count goes to zero by a configurable period of time
> + * (see SCHED_DISABLE_DELAY_MS). The thought is this gives the user a window of
> + * time to resubmit something on the context before doing this costly operation.
> + * This delay is only done if the context isn't closed and the guc_id usage is
> + * less than a threshold (default 3/4, see NUM_SCHED_DISABLE_GUC_IDS_THRESHOLD)
The delay text has dropped the 'default 34ms' in preference for just 
referencing the define but the threshold still mentions both. Is that 
intentional? Dropping the values seems sensible - no need to update the 
comment if the numeric value is changed at some later point.

>    *
>    * Context deregistration:
>    * Before a context can be destroyed or if we steal its guc_id we must
> @@ -1989,6 +1995,9 @@ static int new_guc_id(struct intel_guc *guc, struct intel_context *ce)
>   	if (unlikely(ret < 0))
>   		return ret;
>   
> +	if (!intel_context_is_parent(ce))
> +		++guc->submission_state.guc_ids_in_use;
> +
>   	ce->guc_id.id = ret;
>   	return 0;
>   }
> @@ -1998,14 +2007,16 @@ static void __release_guc_id(struct intel_guc *guc, struct intel_context *ce)
>   	GEM_BUG_ON(intel_context_is_child(ce));
>   
>   	if (!context_guc_id_invalid(ce)) {
> -		if (intel_context_is_parent(ce))
> +		if (intel_context_is_parent(ce)) {
>   			bitmap_release_region(guc->submission_state.guc_ids_bitmap,
>   					      ce->guc_id.id,
>   					      order_base_2(ce->parallel.number_children
>   							   + 1));
> -		else
> +		} else {
> +			--guc->submission_state.guc_ids_in_use;
>   			ida_simple_remove(&guc->submission_state.guc_ids,
>   					  ce->guc_id.id);
> +		}
>   		clr_ctx_id_mapping(guc, ce->guc_id.id);
>   		set_context_guc_id_invalid(ce);
>   	}
> @@ -2993,41 +3004,98 @@ guc_context_revoke(struct intel_context *ce, struct i915_request *rq,
>   	}
>   }
>   
> -static void guc_context_sched_disable(struct intel_context *ce)
> +static void guc_context_sched_disable(struct intel_context *ce);
> +
> +static void do_sched_disable(struct intel_guc *guc, struct intel_context *ce,
> +			     unsigned long flags)
> +	__releases(ce->guc_state.lock)
>   {
> -	struct intel_guc *guc = ce_to_guc(ce);
> -	unsigned long flags;
>   	struct intel_runtime_pm *runtime_pm = &ce->engine->gt->i915->runtime_pm;
>   	intel_wakeref_t wakeref;
> -	u16 guc_id;
>   
> +	lockdep_assert_held(&ce->guc_state.lock);
> +
> +	spin_unlock_irqrestore(&ce->guc_state.lock, flags);
> +
> +	with_intel_runtime_pm(runtime_pm, wakeref)
> +		guc_context_sched_disable(ce);
> +}
> +
> +static bool bypass_sched_disable(struct intel_guc *guc,
> +				 struct intel_context *ce)
> +{
> +	lockdep_assert_held(&ce->guc_state.lock);
>   	GEM_BUG_ON(intel_context_is_child(ce));
>   
> +	if (submission_disabled(guc) || context_guc_id_invalid(ce) ||
> +	    !ctx_id_mapped(guc, ce->guc_id.id)) {
> +		clr_context_enabled(ce);
> +		return true;
> +	}
> +
> +	return !context_enabled(ce);
> +}
> +
> +static void __delay_sched_disable(struct work_struct *wrk)
> +{
> +	struct intel_context *ce =
> +		container_of(wrk, typeof(*ce), guc_state.sched_disable_delay.work);
> +	struct intel_guc *guc = ce_to_guc(ce);
> +	unsigned long flags;
> +
>   	spin_lock_irqsave(&ce->guc_state.lock, flags);
>   
> -	/*
> -	 * We have to check if the context has been disabled by another thread,
> -	 * check if submssion has been disabled to seal a race with reset and
> -	 * finally check if any more requests have been committed to the
> -	 * context ensursing that a request doesn't slip through the
> -	 * 'context_pending_disable' fence.
> -	 */
> -	if (unlikely(!context_enabled(ce) || submission_disabled(guc) ||
> -		     context_has_committed_requests(ce))) {
> -		clr_context_enabled(ce);
> +	if (bypass_sched_disable(guc, ce)) {
>   		spin_unlock_irqrestore(&ce->guc_state.lock, flags);
> -		goto unpin;
> +		intel_context_sched_disable_unpin(ce);
> +	} else {
> +		do_sched_disable(guc, ce, flags);
>   	}
> -	guc_id = prep_context_pending_disable(ce);
> +}
>   
> -	spin_unlock_irqrestore(&ce->guc_state.lock, flags);
> +static bool guc_id_pressure(struct intel_guc *guc, struct intel_context *ce)
> +{
> +	/*
> +	 * parent contexts are perma-pinned, if we are unpinning do schedule
> +	 * disable immediately.
> +	 */
> +	if (intel_context_is_parent(ce))
> +		return true;
>   
> -	with_intel_runtime_pm(runtime_pm, wakeref)
> -		__guc_context_sched_disable(guc, ce, guc_id);
> +	/*
> +	 * If we are beyond the threshold for avail guc_ids, do schedule disable immediately.
> +	 */
> +	return guc->submission_state.guc_ids_in_use >
> +		guc->submission_state.sched_disable_gucid_threshold;
> +}
> +
> +static void guc_context_sched_disable(struct intel_context *ce)
> +{
> +	struct intel_guc *guc = ce_to_guc(ce);
> +	u64 delay = guc->submission_state.sched_disable_delay_ms;
> +	unsigned long flags;
> +
> +	spin_lock_irqsave(&ce->guc_state.lock, flags);
> +
> +	if (bypass_sched_disable(guc, ce)) {
> +		spin_unlock_irqrestore(&ce->guc_state.lock, flags);
> +		intel_context_sched_disable_unpin(ce);
> +	} else if (!intel_context_is_closed(ce) && !guc_id_pressure(guc, ce) &&
> +		   delay) {
> +		spin_unlock_irqrestore(&ce->guc_state.lock, flags);
> +		mod_delayed_work(system_unbound_wq,
> +				 &ce->guc_state.sched_disable_delay,
> +				 msecs_to_jiffies(delay));
> +	} else {
> +		do_sched_disable(guc, ce, flags);
> +	}
> +}
>   
> -	return;
> -unpin:
> -	intel_context_sched_disable_unpin(ce);
> +static void guc_context_close(struct intel_context *ce)
> +{
> +	if (test_bit(CONTEXT_GUC_INIT, &ce->flags) &&
> +	    cancel_delayed_work(&ce->guc_state.sched_disable_delay))
> +		__delay_sched_disable(&ce->guc_state.sched_disable_delay.work);
>   }
>   
>   static inline void guc_lrc_desc_unpin(struct intel_context *ce)
> @@ -3346,6 +3414,8 @@ static void remove_from_context(struct i915_request *rq)
>   static const struct intel_context_ops guc_context_ops = {
>   	.alloc = guc_context_alloc,
>   
> +	.close = guc_context_close,
> +
>   	.pre_pin = guc_context_pre_pin,
>   	.pin = guc_context_pin,
>   	.unpin = guc_context_unpin,
> @@ -3428,6 +3498,10 @@ static void guc_context_init(struct intel_context *ce)
>   	rcu_read_unlock();
>   
>   	ce->guc_state.prio = map_i915_prio_to_guc_prio(prio);
> +
> +	INIT_DELAYED_WORK(&ce->guc_state.sched_disable_delay,
> +			  __delay_sched_disable);
> +
>   	set_bit(CONTEXT_GUC_INIT, &ce->flags);
>   }
>   
> @@ -3465,6 +3539,9 @@ static int guc_request_alloc(struct i915_request *rq)
>   	if (unlikely(!test_bit(CONTEXT_GUC_INIT, &ce->flags)))
>   		guc_context_init(ce);
>   
> +	if (cancel_delayed_work(&ce->guc_state.sched_disable_delay))
> +		intel_context_sched_disable_unpin(ce);
> +
>   	/*
>   	 * Call pin_guc_id here rather than in the pinning step as with
>   	 * dma_resv, contexts can be repeatedly pinned / unpinned trashing the
> @@ -3595,6 +3672,8 @@ static int guc_virtual_context_alloc(struct intel_context *ce)
>   static const struct intel_context_ops virtual_guc_context_ops = {
>   	.alloc = guc_virtual_context_alloc,
>   
> +	.close = guc_context_close,
> +
>   	.pre_pin = guc_virtual_context_pre_pin,
>   	.pin = guc_virtual_context_pin,
>   	.unpin = guc_virtual_context_unpin,
> @@ -3684,6 +3763,8 @@ static void guc_child_context_destroy(struct kref *kref)
>   static const struct intel_context_ops virtual_parent_context_ops = {
>   	.alloc = guc_virtual_context_alloc,
>   
> +	.close = guc_context_close,
> +
>   	.pre_pin = guc_context_pre_pin,
>   	.pin = guc_parent_context_pin,
>   	.unpin = guc_parent_context_unpin,
> @@ -4207,6 +4288,20 @@ static bool __guc_submission_selected(struct intel_guc *guc)
>   	return i915->params.enable_guc & ENABLE_GUC_SUBMISSION;
>   }
>   
> +int intel_guc_sched_disable_gucid_threshold_max(struct intel_guc *guc)
> +{
> +	return guc->submission_state.num_guc_ids - NUMBER_MULTI_LRC_GUC_ID(guc);
> +}
> +
> +#define SCHED_DISABLE_DELAY_MS	34
> +/*
> + * This default value of 33 milisecs (+1 milisec buffer) ensures 33fps workloads are
> + * able to enjoy the latency reduction when delaying the schedule-disable operation
> + */
> +#define NUM_SCHED_DISABLE_GUCIDS_DEFAULT_THRESHOLD(__guc) \
> +	(((intel_guc_sched_disable_gucid_threshold_max(guc)) * 3) / 4)
> +/* Default threshold to bypass delay-schedule-disable when under guc-id pressure */
> +
Comments always go in front of the thing they are describing, not after.

Also, the description reads as just a more verbose version of the 
#define. As in, more words but no extra information. Not sure what more 
can be said about the threshold. I'm not aware of any empirical or 
theoretical evidence as to why 75% is a good number beyond 'it just 
seems sensible'. The 'make it work for 33fps' seems quite arbitrary and 
magical, though. What is so special about 33fps? I feel like it should 
at least mention that an real-world use case requires 33fps (was it 
really 33 not 30?) and that anything faster (e.g. 60fps) will 
automatically be covered. And that in the other direction, ~30ms is not 
so slow that it leads to large numbers of idle contexts floating around. 
Did we have any specific reasons against going larger? I recall the 
original experiments were with 100ms. Was there a specific reason for 
rejection that value?

John.


>   void intel_guc_submission_init_early(struct intel_guc *guc)
>   {
>   	xa_init_flags(&guc->context_lookup, XA_FLAGS_LOCK_IRQ);
> @@ -4223,7 +4318,10 @@ void intel_guc_submission_init_early(struct intel_guc *guc)
>   	spin_lock_init(&guc->timestamp.lock);
>   	INIT_DELAYED_WORK(&guc->timestamp.work, guc_timestamp_ping);
>   
> +	guc->submission_state.sched_disable_delay_ms = SCHED_DISABLE_DELAY_MS;
>   	guc->submission_state.num_guc_ids = GUC_MAX_CONTEXT_ID;
> +	guc->submission_state.sched_disable_gucid_threshold =
> +		NUM_SCHED_DISABLE_GUCIDS_DEFAULT_THRESHOLD(guc);
>   	guc->submission_supported = __guc_submission_supported(guc);
>   	guc->submission_selected = __guc_submission_selected(guc);
>   }
> diff --git a/drivers/gpu/drm/i915/i915_selftest.h b/drivers/gpu/drm/i915/i915_selftest.h
> index f54de0499be7..bdf3e22c0a34 100644
> --- a/drivers/gpu/drm/i915/i915_selftest.h
> +++ b/drivers/gpu/drm/i915/i915_selftest.h
> @@ -92,12 +92,14 @@ int __i915_subtests(const char *caller,
>   			T, ARRAY_SIZE(T), data)
>   #define i915_live_subtests(T, data) ({ \
>   	typecheck(struct drm_i915_private *, data); \
> +	(data)->gt[0]->uc.guc.submission_state.sched_disable_delay_ms = 0; \
>   	__i915_subtests(__func__, \
>   			__i915_live_setup, __i915_live_teardown, \
>   			T, ARRAY_SIZE(T), data); \
>   })
>   #define intel_gt_live_subtests(T, data) ({ \
>   	typecheck(struct intel_gt *, data); \
> +	(data)->uc.guc.submission_state.sched_disable_delay_ms = 0; \
>   	__i915_subtests(__func__, \
>   			__intel_gt_live_setup, __intel_gt_live_teardown, \
>   			T, ARRAY_SIZE(T), data); \

