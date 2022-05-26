Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C9B6B5347EC
	for <lists+intel-gfx@lfdr.de>; Thu, 26 May 2022 03:15:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 188D410E05C;
	Thu, 26 May 2022 01:15:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B438D10E05C
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 May 2022 01:15:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653527719; x=1685063719;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=RQPIxWxaJVE35h9HTEnG2c3CSq1QNb6Sa9LN6LPzXds=;
 b=bcpcDuuPPmKXcdqpdqRhmtfGT1zoLy8zBC2UjGj6+x+g6PPODC2t3jYl
 gUf1rOT6naFeDj3TYodEtXEXEWPkNIhWNBBkmQruq//R2c45d4rBAitLC
 Sc0/jROQ9oiGaZntzh/7bnU9NlwtGKlDtLTkvyRIo3shsBYQYJkwo2MKV
 ecHodOqO7acu5fPQk8Em2cena0IF3nxEZbgn04YVUPC0fRHOHBAPhORs+
 trcCI3uCYLJeiA40a3EdwQclLMXa48vDkIFjMFQDLK5mDBmsOKT70BzWd
 sJOCKULcjhQ9CTCbmMdWmZqko4vIZSOXjAGMTsgSwEXvydMFp/O8O6oYZ w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10358"; a="254482872"
X-IronPort-AV: E=Sophos;i="5.91,252,1647327600"; d="scan'208";a="254482872"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2022 18:15:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,252,1647327600"; d="scan'208";a="664683321"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by FMSMGA003.fm.intel.com with ESMTP; 25 May 2022 18:15:19 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 25 May 2022 18:15:18 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 25 May 2022 18:15:18 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 25 May 2022 18:15:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nj59tEqBN+qQDSZVHsf6Y2HgF7qZ943d0nYo5uEnX4UP2/WBW+LE7FzF9M1pgeysxKrM9JsrtSy0ygK5W0wx1R7Hbu4I4qd3hXdtoLW+ZlDa7EVFgVkvFYgwbXU6VULh6SavxcBhoUcbHUIBQY9smJ5e/OTI2/vKxDsYWSFSEazEv6J+QxKk17C4FVwpI+N4wnrtaOYbVOKa+7xhMXMXd61Ni2Jw1Cr3B8WgMyjAY7dwbbP1K9xQm2OcEDQZzj5zKsF0L/Rpkjuz7Hrt/0wvhOGJ05CWz8Q6AJ0kKh9HbIH7I1JeA+TKTIQ0O1iqKUR4XrVnVHoORSH9Z1iXI4LdKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vv7yk5qW51bSIX8BglPOx/pRfHKyQrV8zhDw/D8C4+M=;
 b=K7QdAhHPsieuDi84Sk+tg+swaxVAT1Fl7R4gP0p3/pR6O634YlFYpG/kD3rS5xvz7ACxt6LjLR8GaMudedQ7dwnxstQa53MnChOwa7iNFWwlKE0yYygzNL4vzwmpKjkiFX12eNFsO66aCrRh33D4on4A+8qjaFktM/Ms0o/jKc4qRM5fZ6YoXP81kB66EXI+qs8lrHLeohTdIeiA1BvZUQNwedU5uFu1nFT+5xP2BL0TK3rhE4kSAB6t9Y//QpgrB7akeWKNfCTktUM+sfa+b5J62WF80NXaPJmPyeHxK05HmvP2ePViZFMjDAAoZq7x0Gj71jmAJlJvBBt2SSmzTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by IA1PR11MB6515.namprd11.prod.outlook.com (2603:10b6:208:3a1::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5293.13; Thu, 26 May
 2022 01:15:16 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::ac18:95e3:c184:f976]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::ac18:95e3:c184:f976%6]) with mapi id 15.20.5273.017; Thu, 26 May 2022
 01:15:16 +0000
Message-ID: <e2012082-af05-04b3-4c80-54837d9c8a8b@intel.com>
Date: Wed, 25 May 2022 18:15:12 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.9.1
Content-Language: en-GB
To: Alan Previn <alan.previn.teres.alexis@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20220311004311.514198-1-alan.previn.teres.alexis@intel.com>
 <20220311004311.514198-2-alan.previn.teres.alexis@intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20220311004311.514198-2-alan.previn.teres.alexis@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: CH2PR14CA0022.namprd14.prod.outlook.com
 (2603:10b6:610:60::32) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9e6205c7-dfc1-45d9-a08b-08da3eb53114
X-MS-TrafficTypeDiagnostic: IA1PR11MB6515:EE_
X-Microsoft-Antispam-PRVS: <IA1PR11MB651584EE9A445B19F00161D1BDD99@IA1PR11MB6515.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: n2OtUwXaBtwoou7Lij50Z4ZMvVTF+vX77AwAgYHm/B2FOjCE3s655HtBIOazhe7HWvcgW9LzVBoDNl++hzPCrEjEuiuLRF/30qOh8QQm+PoW4a8a4cPmqoOGopWtjky0LnUiQWnliRsWz/NG+MO8wANrUgQsIiL7Hrl/57fn2M4FwkzDKy739acna8chjCDp7GhcJi1pqf5yvktrXL0tySfqJs6+t+DGzyYvv8gdvKJhTD96SN/NNON8foPLGJvixB1xLqU9Y4xxRNDsE3xSESkrNabY5hxTOY4+WFkPGPRVMsGzoDq+2q05Ol+THj3u9evgR9BT2rCYMQEt3mN6CiGIfimktMef3Ivd7y58wbwW7Qe2qejIT3v158adG6YDyTs8ppDBtzP0jgJIh8BBoKSPVZnIUTGOe2HAtI+dn18ay1u6rW6tRppfUfvPNUo+4fkiAByk88f4NNwCE28DU1aGiSd1fFDWjIVD2//uBd6sO6MT7UMaUzunmT7EnoD+SDX48U0XAQsddKKG0lpgVpo8KYKXdgxbaQ17RUiV+Ceh6cGP+cbxwT6RXY8B5arrTj3MKthqpsFYxiBPchKQ7imib0M3AhtFSjdYIWcOgZGZYAarhgJdei1xECEqzIXIEsZ2EsieLK/v2eZfEHpBzOlDhaBwbyRdtOGvBP0mkMxz/lBhJ87yBE9vEGK7w+B/gq3rb+Ia8eRfekf6Pdvr07gLbicLQsdRVn9Rfkupozg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(8936002)(5660300002)(31696002)(82960400001)(86362001)(2906002)(36756003)(26005)(6506007)(6512007)(53546011)(2616005)(6666004)(316002)(6486002)(45080400002)(38100700002)(508600001)(66556008)(66476007)(66946007)(186003)(83380400001)(31686004)(8676002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bjhOVmpic1FQWWphNU54ZFlJOGh5Z1kyZzdmd0pDRHdLKzhhNDdmaDlFTnZQ?=
 =?utf-8?B?NTNkSFpDQ0xDYVBsK3drbWlRcXg5MGVGakRDMFE1dGhQd3JDZjFuN3VGTlYy?=
 =?utf-8?B?R01QYmNBMDZjVVY3ZmpYOWRtYUlMeCs2OENBRFA2UWFocEo3MXk2aDc4TjJM?=
 =?utf-8?B?OGg2d2hiTHpMZ3hQSjZvUzFTczBDYmtodjYxaElVdk96RG04Y3o2TG5vQUhr?=
 =?utf-8?B?VXN4eFlEK2ZGYnViTU9wZXN4ai9WQzVtWjJFSWNkZStRS1dQV3Z3VTNlU2dE?=
 =?utf-8?B?dHQxVkUra0g4VWlrSTlOV2pscWMzOUZMcHBvQjZzLzBUcC9xcGd4Rm8rdWNq?=
 =?utf-8?B?MnA5ZkFIN0dWeFo3ekRSclBNd1BzSlBTNkpmS05DR3FZQjZMM200OGprNVZE?=
 =?utf-8?B?NjdWTll3ZmtycFB1RWxJKzNpOVFqUEZJZXc1aWc2NVdHdVV6blk5bDBPSm9I?=
 =?utf-8?B?dm42Nzk5b1Rnd1loZ3VrbWRlcng3ckNzcVE5S2d0UVc3UEJ5NEdscnJNa0ZC?=
 =?utf-8?B?Tk5SS0lBbENlazVHRkJEM0ptWWFxMjBIREhOZndOVlAyZFVFQUxObW9SOHV1?=
 =?utf-8?B?L1JKN1hvMS9wNjUxOFdmcXBtZHBRbjBJSEZ5Rm9kR041WURzMndHUFFXRHNL?=
 =?utf-8?B?OUJUMkMyV21YOVYxM2dDRVJ4ZnhCa2t6Y01QelFlUFk5SUpLYkQ5MkhoMmM2?=
 =?utf-8?B?akkrWS8wVWdyM2VLOVBYWFV4U2tZZGJvNEF5MFFxMmtKQTkrbENMNC9PdU41?=
 =?utf-8?B?R01uaHdWbVlhamFYWVpsaEJpaE5CcjhwWFRRREtEU3RYdDF3a2hTa3NIanRS?=
 =?utf-8?B?ZFJoTjRSVUlkQ1BKWkU0WHI4Tk00Sk0vZDZZSjBLMnhjQnI3RWFWckw3OWxh?=
 =?utf-8?B?ZWJ5TEpZc1BKR21seFpSYVIyVmtpbXRRRDZkRzlXOU50N21tdFNlUHhBbFh0?=
 =?utf-8?B?K1JESUhRdkRoOHU3N0VneVhLWWxKaEYxZzVMZkxmVUR2clAyVXlXcU8wYUV6?=
 =?utf-8?B?TzdKVU13VFJIZmQ1UXJQZ3p3aUFXcStpaHJLM2U2N3kxWjI4d0ZNT3dWZUR2?=
 =?utf-8?B?anNvNTZHT0todS8rVXBBUUcrV2tSOTF4Y21hTWowUm0za0RETEQ1RFFaTjUz?=
 =?utf-8?B?c1JvL29sTzdKRmFLL3RFV29KT2hzS0t2eEJ6M09oSnRxNDEzeFR3MUwxN2dC?=
 =?utf-8?B?Nmh3ODZiMDgzb041dzBmKzh2bENNbDMwYjB2dGVWb29yUjN1cExTNUhWcUlJ?=
 =?utf-8?B?VDZ5QWNUUmRKRkdvQzJRaTNyenk2Y0ROUWVNL2xYa0xkUzF3YXdlQk5keTNz?=
 =?utf-8?B?SFJTNmNmNEp5cHZOU1d1RUczaHdSVlZsMTRMWjBTa2VoSEw4dFdLTVdqMlo1?=
 =?utf-8?B?bjJEZzFwYVVSVmo2SWlBQ2N6MkZ4R0ZjVzErWHRTN1BjbXlZNExGZE9nV2tH?=
 =?utf-8?B?UUlLQk8zUmZ3cWgvYzUvMllDTWJ6S0h5dFlCYXp2TFdHU2RVN2wreThoSFdS?=
 =?utf-8?B?Wjgyd1Y5V3l5cjAzYUluVGIyWmRVeFIwSlQ3RzkycURCRFYxNE14RUE5bGVy?=
 =?utf-8?B?RkVWVHVUNCt5bXlXSW5yNncyQ0lmS21YQTIzZlJVM1lzUlp3d3huSEZLY0Jw?=
 =?utf-8?B?V2RwU2hoQWhPZW9Dc2JzL2dSNjRHWDM0Y2pzOWJTdlNrZmJrTDltaHB1UzJZ?=
 =?utf-8?B?Tnc5cWs5cS9JWWkydjJ5Um9jc3hMZGN5TzBaUmtBbjk2MGlzcmRKdFRCc05V?=
 =?utf-8?B?eUlBdTZtNDl6YzUzblZvOW9haTFGR01Tc0YyWkxMWW5zd2J1ZjhDWUxORUt6?=
 =?utf-8?B?WlZvVGdsMFVTVlNzQnNsY3IrajZ3UjVUdlgvbytiejVmMWhHZUJvcVhRdTh4?=
 =?utf-8?B?SUJGaTBKRU00UXk3bDlLSXpwNDJIcGdHbmpmak5pbTFURCtnQ3RjUHliaXBx?=
 =?utf-8?B?OFhSR3AzTnRubGRMQ0s0QmIyVFFFb0lZUGFIbWJYNWsxS3E1ZUt0Z0t0eFVv?=
 =?utf-8?B?RG5nc3FlSW9rQVFXeU9qaTc1Y0FwRGFHa0J3RWZSVWFxVlM3OERFRU0xVE0y?=
 =?utf-8?B?MmE2Q3RYNndUUE1VdDBMWW5lQWlNK1RuRkwwVmpzTWJUdFhJZU1aVjZqZk9G?=
 =?utf-8?B?dUF5Vk9ZZjYyWFljaFN5WU9TWU9YSGFGS1RrOWdmZUpYMUNHSEp4WVlEUm0v?=
 =?utf-8?B?N3JSWHpQZHpMUGsrQ2NscVFEdnFiUVN1eEIxUkxuNjI0cDJ1YVJFeUpKUlVu?=
 =?utf-8?B?QS9IZVYrZFYzSFVhSTBua3FDSy9iZ2tpK1FFZFc0VWFidTNOeGFMM2F0ZERh?=
 =?utf-8?B?NGlERWw0N1J3WURkUEhDUEhyWUxrUEFWUDNuUDRUVlg0TG1CanVqcG40Q2Ev?=
 =?utf-8?Q?M/MV3gG7HP2CMwh0=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e6205c7-dfc1-45d9-a08b-08da3eb53114
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 May 2022 01:15:16.3534 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zcq9/y0UiJsX7q9A9Bmt4vRjq3r/9iPzsUfvM0zME49MpOKPjzTQeWhXjQWprPw5iVl7Nr3ysQsUr/vdivuaFET+ssv9bfAQaWt4CtlTKLQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6515
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 1/1] drm/i915/reset: Fix error_state_read
 ptr + offset use
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

On 3/10/2022 16:43, Alan Previn wrote:
> Fix our pointer offset usage in error_state_read
> when there is no i915_gpu_coredump but buf offset
> is non-zero.
>
> Fixes: 0e39037b3165 ("drm/i915: Cache the error string")
>
> This fixes a kernel page fault can happen when
> multiple tests are running concurrently in a loop
> and one is producing engine resets and consuming
> the i915 error_state dump while the other is
> forcing full GT resets. (takes a while to trigger).
>
> The dmesg call trace:
>
> [ 5590.803000] BUG: unable to handle page fault for address:
>                 ffffffffa0b0e000
> [ 5590.803009] #PF: supervisor read access in kernel mode
> [ 5590.803013] #PF: error_code(0x0000) - not-present page
> [ 5590.803016] PGD 5814067 P4D 5814067 PUD 5815063 PMD 109de4067
>                 PTE 0
> [ 5590.803022] Oops: 0000 [#1] PREEMPT SMP NOPTI
> [ 5590.803026] CPU: 5 PID: 13656 Comm: i915_hangman Tainted: G U
>                      5.17.0-rc5-ups69-guc-err-capt-rev6+ #136
> [ 5590.803033] Hardware name: Intel Corporation Alder Lake Client
>                      Platform/AlderLake-M LP4x RVP, BIOS ADLPFWI1.R00.
>                      3031.A02.2201171222	01/17/2022
> [ 5590.803039] RIP: 0010:memcpy_erms+0x6/0x10
> [ 5590.803045] Code: fe ff ff cc eb 1e 0f 1f 00 48 89 f8 48 89 d1
>                       48 c1 e9 03 83 e2 07 f3 48 a5 89 d1 f3 a4 c3
>                       66 0f 1f 44 00 00 48 89 f8 48 89 d1 <f3> a4
>                       c3 0f 1f 80 00 00 00 00 48 89 f8 48 83 fa 20
>                       72 7e 40 38 fe
> [ 5590.803054] RSP: 0018:ffffc90003a8fdf0 EFLAGS: 00010282
> [ 5590.803057] RAX: ffff888107ee9000 RBX: ffff888108cb1a00
>                 RCX: 0000000000000f8f
> [ 5590.803061] RDX: 0000000000001000 RSI: ffffffffa0b0e000
>                 RDI: ffff888107ee9071
> [ 5590.803065] RBP: 0000000000000000 R08: 0000000000000001
>                 R09: 0000000000000001
> [ 5590.803069] R10: 0000000000000001 R11: 0000000000000002
>                 R12: 0000000000000019
> [ 5590.803073] R13: 0000000000174fff R14: 0000000000001000
>                 R15: ffff888107ee9000
> [ 5590.803077] FS: 00007f62a99bee80(0000) GS:ffff88849f880000(0000)
>                 knlGS:0000000000000000
> [ 5590.803082] CS: 0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [ 5590.803085] CR2: ffffffffa0b0e000 CR3: 000000010a1a8004
>                 CR4: 0000000000770ee0
> [ 5590.803089] PKRU: 55555554
> [ 5590.803091] Call Trace:
> [ 5590.803093] <TASK>
> [ 5590.803096] error_state_read+0xa1/0xd0 [i915]
> [ 5590.803175] kernfs_fop_read_iter+0xb2/0x1b0
> [ 5590.803180] new_sync_read+0x116/0x1a0
> [ 5590.803185] vfs_read+0x114/0x1b0
> [ 5590.803189] ksys_read+0x63/0xe0
> [ 5590.803193] do_syscall_64+0x38/0xc0
> [ 5590.803197] entry_SYSCALL_64_after_hwframe+0x44/0xae
> [ 5590.803201] RIP: 0033:0x7f62aaea5912
> [ 5590.803204] Code: c0 e9 b2 fe ff ff 50 48 8d 3d 5a b9 0c 00 e8 05
>                       19 02 00 0f 1f 44 00 00 f3 0f 1e fa 64 8b 04 25
>                       18 00 00 00 85 c0 75 10 0f 05 <48> 3d 00 f0 ff
>                       ff 77 56 c3 0f 1f 44 00 00 48 83 ec 28 48 89 54 24
> [ 5590.803213] RSP: 002b:00007fff5b659ae8 EFLAGS: 00000246
>                 ORIG_RAX: 0000000000000000
> [ 5590.803218] RAX: ffffffffffffffda RBX: 0000000000100000
>                 RCX: 00007f62aaea5912
> [ 5590.803221] RDX: 000000000008b000 RSI: 00007f62a8c4000f
>                 RDI: 0000000000000006
> [ 5590.803225] RBP: 00007f62a8bcb00f R08: 0000000000200010
>                 R09: 0000000000101000
> [ 5590.803229] R10: 0000000000000001 R11: 0000000000000246
>                 R12: 0000000000000006
> [ 5590.803233] R13: 0000000000075000 R14: 00007f62a8acb010
>                 R15: 0000000000200000
> [ 5590.803238] </TASK>
> [ 5590.803240] Modules linked in: i915 ttm drm_buddy drm_dp_helper
>                          drm_kms_helper syscopyarea sysfillrect sysimgblt
>                          fb_sys_fops prime_numbers nfnetlink br_netfilter
>                          overlay mei_pxp mei_hdcp x86_pkg_temp_thermal
>                          coretemp kvm_intel snd_hda_codec_hdmi snd_hda_intel
>                          snd_intel_dspcfg snd_hda_codec snd_hwdep
>                          snd_hda_core snd_pcm mei_me mei fuse ip_tables
>                          x_tables crct10dif_pclmul e1000e crc32_pclmul ptp
>                          i2c_i801 ghash_clmulni_intel i2c_smbus pps_core
>                          [last unloa ded: ttm]
> [ 5590.803277] CR2: ffffffffa0b0e000
> [ 5590.803280] ---[ end trace 0000000000000000 ]---
>
> Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
Sorry for the delay in responding to v4!

Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

> ---
>   drivers/gpu/drm/i915/i915_sysfs.c | 15 ++++++++++++---
>   1 file changed, 12 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_sysfs.c b/drivers/gpu/drm/i915/i915_sysfs.c
> index a4d1759375b9..66a8880eaf19 100644
> --- a/drivers/gpu/drm/i915/i915_sysfs.c
> +++ b/drivers/gpu/drm/i915/i915_sysfs.c
> @@ -432,7 +432,14 @@ static ssize_t error_state_read(struct file *filp, struct kobject *kobj,
>   	struct device *kdev = kobj_to_dev(kobj);
>   	struct drm_i915_private *i915 = kdev_minor_to_i915(kdev);
>   	struct i915_gpu_coredump *gpu;
> -	ssize_t ret;
> +	ssize_t ret = 0;
> +
> +	/*
> +	 * FIXME: Concurrent clients triggering resets and reading + clearing
> +	 * dumps can cause inconsistent sysfs reads when a user calls in with a
> +	 * non-zero offset to complete a prior partial read but the
> +	 * gpu_coredump has been cleared or replaced.
> +	 */
>   
>   	gpu = i915_first_error_state(i915);
>   	if (IS_ERR(gpu)) {
> @@ -444,8 +451,10 @@ static ssize_t error_state_read(struct file *filp, struct kobject *kobj,
>   		const char *str = "No error state collected\n";
>   		size_t len = strlen(str);
>   
> -		ret = min_t(size_t, count, len - off);
> -		memcpy(buf, str + off, ret);
> +		if (off < len) {
> +			ret = min_t(size_t, count, len - off);
> +			memcpy(buf, str + off, ret);
> +		}
>   	}
>   
>   	return ret;

