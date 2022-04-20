Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CE545087F4
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Apr 2022 14:18:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C18FA10E5B7;
	Wed, 20 Apr 2022 12:18:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CE1810E5B7
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Apr 2022 12:18:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650457086; x=1681993086;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CipRjBNO8p55QCoQ5KbUaVPJ+cGLSu/EXnu4zYddMb0=;
 b=lAu/pOM663Oi8LHJn7eonV0BSrfBG2uEM3eUAVJYRn20d83YCEtFqGDg
 PKo24AufhEqAlbXc50pdf2KzKjkbdK8n675g9auvk2Jip6vLB7UAu8ZqK
 u7OrHmPh4QwOKG0Qxi1L93IENPP34Jsi09Ph4QOXjksDw+qdRyrHAHMwq
 Y94vLTV4g+ExKv8sW3/L3NJClYfBJpKqXw3WTndd+grMkSMTjLp83sSZ9
 Jek5HR205P8AlP5RY4NkpAy2QULcg75Hz7k25CFXvqx/XPsr9Gib81Fgz
 aVbS9w6OUoB+NiNYfE0vS08UqKWU2xkXmrKqWGIBnyqWsRhYOwEDrA6zk A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10322"; a="245904706"
X-IronPort-AV: E=Sophos;i="5.90,275,1643702400"; d="scan'208";a="245904706"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2022 05:18:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,275,1643702400"; d="scan'208";a="647644139"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP; 20 Apr 2022 05:18:05 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 20 Apr 2022 05:18:05 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 20 Apr 2022 05:18:04 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 20 Apr 2022 05:18:04 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 20 Apr 2022 05:18:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i01YXJLIvWVZ0BfmxbY42d4VPAqU2+ViL/1IX3QU67Mf36tXccBQ+qNXxekuEfmwa7UiUixa347I2VkLqUZ0qphKQQf8QWii08bCmb/Rdc2vu7aAEyXD1V9WKA5aLIQyQhreDUoUZFkNmIliWNwvsq0t4r0jDZrDHIbJxVmuXijT37CYfBXHuiEzw8r+8z1psWBjhp1j5t+AFt9kEXQUg1MWcm1GsALyTDxygsKh/kRZr/Rzz7N62GDOdoOi5uVy8VqhFpOf+xU6uxIIqSqMWXAZBGoralJ7KWMJHxMJzhxjO5/xiMCQ4oyoF2Rsr93gBfgdzl8WkQtYt9jzO0Ns/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XcZlULiCfDNRWEr2rsXNQswij1y0pOQmAgniNMpmI64=;
 b=EzHE/VyQEm6m0cqF4BN+W7WHmw2JQK8xsAaDrBSAi7HtZfTnKkn2aFz5ZV+xM36X6QXT4drQDObMX36rygXUw8sEuy20MyZPuEZzRlg/k3kf1C33Jzh9LTg9I/VSjdmPYMsgemGpZ5Ekcz4H8c2hvArb3sFCz1V3GVJjKI3lZlrXDbQKSk+f2hnXRvhEVz3tv6+httAP7K7etFS4cupT9CsNZwSI2lCuAXQQqUNaxXSaLZSPaJ3fJcTQME+afm0o40Xrqx2mOZ5RnEz600FA2DqlbumncC8YqUX2wPOqQ4ZyvlEmqh4mtzp2e27j2saBjxZAnbSylYVWwcjG6GR0Xg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB3180.namprd11.prod.outlook.com (2603:10b6:5:9::13) by
 CY4PR11MB1334.namprd11.prod.outlook.com (2603:10b6:903:2e::12) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5164.20; Wed, 20 Apr 2022 12:18:02 +0000
Received: from DM6PR11MB3180.namprd11.prod.outlook.com
 ([fe80::b1fa:393c:9fb6:6871]) by DM6PR11MB3180.namprd11.prod.outlook.com
 ([fe80::b1fa:393c:9fb6:6871%5]) with mapi id 15.20.5164.025; Wed, 20 Apr 2022
 12:18:02 +0000
Message-ID: <1339a2be-5fd0-cf65-d361-06c60d938ce5@intel.com>
Date: Wed, 20 Apr 2022 14:17:57 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.8.0
Content-Language: en-US
To: Ashutosh Dixit <ashutosh.dixit@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <cover.1649871650.git.ashutosh.dixit@intel.com>
 <cover.1650430271.git.ashutosh.dixit@intel.com>
 <9ed5af1177ad08c7c2d9c5d9b32ab0154dbd950f.1650430271.git.ashutosh.dixit@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <9ed5af1177ad08c7c2d9c5d9b32ab0154dbd950f.1650430271.git.ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: AS8PR07CA0028.eurprd07.prod.outlook.com
 (2603:10a6:20b:451::34) To DM6PR11MB3180.namprd11.prod.outlook.com
 (2603:10b6:5:9::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 559a71ea-fca0-4ab9-509d-08da22c7d0af
X-MS-TrafficTypeDiagnostic: CY4PR11MB1334:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <CY4PR11MB1334E33C41B4100FC07CF741EBF59@CY4PR11MB1334.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gA0RGHpG4akIngo09rZfKO/1JgGV9EYEX5zhNddiSg0/ZPW3J5EUspi8U2ib4eIcdozFh/1M6C5xBMgckRd4bWxoLX1cwGjOnT5oYiOr0x+u+MBV8uUhPweADcFLKlkq+nvz/pKQyAvM+u4Jiem06TwJCIZalXbdiChcpfBEameZvhlx6GD/PFqX3akFdCS90n+iRykeJqqySOiB1X20owIGqvRVbGfx6JcEmKDNx0VHW/yrB/i15V8R+r4qTUnRt9L9132etdXVIK22ijjpFQu0MmBZw9LRuSWlshROu1ppacFbuX8443susIXij86lub92nYLy1EGejjAO6KRZi8KwokcJmu2JpcN1yiH74AIV9RpSu1t3WigeEjpu6YvYWe2q/8aTfhOu+w95GkIZcRBNLm7rWI50PnM1uFzGnp1SwdZ6AekOLX8QnDoB4md1Y4Uys87lkBKNh3gxcZ9bVyPiwfjWbX9iEQeM8DfJW7YmOF/BYO1XR+SWd8Dj/8usrDeTI405lKRT8/lQIo2Iz7ifBChEWvhs0USi4UasjXzCQ9KdBvbDNOsSZOq50/UlXBlzrGrPMSr5KUzY6fgpkLfkev7BRKtdqX2S1fs1kouDEiwbmzXc0eZINduhijnc/LtgHOUdK3Uup2lPt51iO7XRCWeiBosCHcbxzmn6R4SoVmRPTwQO/AGV9Vykyv4FAcJz+WY1qjU9siMYLf2k/ULJWTDhdH+OTdqbg+hLTD8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(38100700002)(31696002)(186003)(66476007)(26005)(44832011)(86362001)(83380400001)(6666004)(36916002)(66946007)(5660300002)(2906002)(36756003)(31686004)(2616005)(6506007)(54906003)(6512007)(107886003)(316002)(66556008)(82960400001)(53546011)(6486002)(8676002)(8936002)(4326008)(508600001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RjRpWHdWUm8rejdSVXVMTjVlb05xelZ4SzJJZXdYUUZaczF4NXJqK2JOdUQy?=
 =?utf-8?B?TXVYQkUyYndMc2NoSElHcVZxOFo2aEFmL1NxaEdqOCsySGpNQ0NleEpwbC9S?=
 =?utf-8?B?VlluUGZWaGlwOW5QYVBGQmljcXl3aGdydzZzb2J3bE1Pd0pFY29OaFMrRDFx?=
 =?utf-8?B?RGNkOTMwWGlRR3hYdStGYktNNERaUjV2cFlqU3hzSjZMOFZWN1FWMWdkczZV?=
 =?utf-8?B?dzk3N2p1NFRXVnM4YWFGNy9Wa2M3UUFkL1o3Ym1aNUE3bTUxaDVuVCtDQUFG?=
 =?utf-8?B?cUxzOFpyRmVhUmJ2Vkd0a2tnTWMvdE1MVFJSU00vMWVKK1cyc1d2RS9aNmFr?=
 =?utf-8?B?NjUzY2tKdEIvWUF4YUJYUThNN3ZGeUJXN08zbko4TEQvelZZYmdwdHFmZW0v?=
 =?utf-8?B?U1Z2SzFDVHYyN3Vsa25LZHlZRkwwVUNXUDUwYkF5anJmOUhhaUs4bmMzc3Yy?=
 =?utf-8?B?Wk9JUE5ySU1xbWJMNnlBeWFCd0hySHVaUGJ2N3hubkJxN3B6ajV1YmxDUkxr?=
 =?utf-8?B?aU5wdnhLTDlxak5kUXVTdndUUUVSU1E0SWFPWVhIQnJybXhSZ0hTSFN4bUkx?=
 =?utf-8?B?b1BsZStFa2gvTGNCb0RLS3ZuY3g2a242SmxSeHA2YnZUUlBVaGIyR3BjeWx4?=
 =?utf-8?B?cktJV0RZTkNoVlBjSk9Ra3ZickdQUks2cFR6NmQvVUFRaGFGTjMyS3NmUll2?=
 =?utf-8?B?dFcxVnV6Z2YwYXJhRS90OXc2QU5HTXhjYTdia3J5Qjh5d09Rb04vTGZqTHR5?=
 =?utf-8?B?RitSYWMya0ZpUDJVd2ExbXhKdVVyL0xQcHhBSDZUMDRjQ3ZnY25qVXlVcnEx?=
 =?utf-8?B?T21NcGNyYWgwcG43UFFCY2FGekJNQ1Z6aFlZTEFSNytScHdUTGVYYWVZY1Y4?=
 =?utf-8?B?aDdVdVkrajhNcWE2V0cySTc3UStBdnpMWFU5NnMrUFZpYzBBRVZDN0syRWtu?=
 =?utf-8?B?MkFtci9ReWJwM0JyRG04SERIVktJK2ZJVEdZb1JuT2F4NVYySHR0NTZJTlIz?=
 =?utf-8?B?UW9iRWdRelVjbzBETjVuQXdRY09iNXJ2NDJnMnpOZTFBSGY0QnUxM2t2Y2Ex?=
 =?utf-8?B?NzFWRUI1VGM2Tm5mWE5PS0QrbTE1bTRUUE9qZXZCeWoxZFJjSk1uOEZTd0Fn?=
 =?utf-8?B?UVVaUlAxR3pkTWUwSUNaSC9YRk04OUxkclQxU2lXWDhYOWhOb2xKTkZjS1dt?=
 =?utf-8?B?bXdNK2FNYVE4YTRHTE9UM1liUHV1aDZncXlrOFkzdzM0bEF6TzRMZGdmVkl1?=
 =?utf-8?B?aXEwMVBFemc1MWpzTXlUT0MyeldRVGhyNTRMS1NTYlIyOHN4bnZpRm1LWUNQ?=
 =?utf-8?B?SU5pTXV5UkZHZ2YrWnd3Ui9VenFHdEIyMmNLQzM3aVlWMTBHMEp3RDNUa2tv?=
 =?utf-8?B?VEZwOGVHbXlTVUJrM0tybGxlZC9YTEtqZEliNzJ6dTF0d1FnZTcycUkyYXJ6?=
 =?utf-8?B?czEvU1BUZGVCR1dRY3JXWnMxRHJQWjFYSHVyUzFleUNDcVFOZkFlUVpRNWNQ?=
 =?utf-8?B?SFM3MXU4SWVXYzVUT0Fub0lMcFBacnNtaXB6bHZhSUplaUJubjdnTURId2RP?=
 =?utf-8?B?SVZJS1FVbVBFeG5UcXYzZU5QOXU5MmRHWXBEMVYzUWxIcTQ2ZUl5WE5vUHJz?=
 =?utf-8?B?QkZmdENBQzZSbUFhQjJTTGtMRmp5dEpqT3pQUEVwU2xGNTQwNWI5UzVqUDBx?=
 =?utf-8?B?aDFSK0VmejRpbjVrMWZhL0E3alJwUWd6cUFaUys2NDY1dzJreFpIU1grZEFx?=
 =?utf-8?B?b3NVb1FZc3VURUxENkY0MFJVbGlpWUJ0dml5SzFDMld2SXJ2MkxjancwWHBa?=
 =?utf-8?B?YWZDeUErd2VWeitFZnJjbEtDdnhjM3J3cEtLMEp3b0pKKzY2VDlNSkxsekVI?=
 =?utf-8?B?Z21UYXN5WGROOVpUQ2VTWEQ1ejdRZm9xYW9FMHBadU5EYVc5VHg0MjE1MlBN?=
 =?utf-8?B?d3A5SVpOeXk4b0l5THlMUS81bFRwSlVLdmFlUytZUkV5K3BpdGtnRzBQejRk?=
 =?utf-8?B?UUR6TEFvbzVqOVFxNXpKWjVFcnRuZXp1b29zWXl5S3pieHBpVDUrNm9LODhj?=
 =?utf-8?B?UW1QZXFoLzltYU5oeXFCR2hYZ3NhZEZybldhT2tTRTV1VFloUWJiSW5OUDZQ?=
 =?utf-8?B?SVkwYUJNMHpoREl5b2RFUDlDZ0ZYUXRTOURqQnB6ZDJ3OTNDQUVrK2NOaXBz?=
 =?utf-8?B?UWRXUHhiTVZvNGdRR2I0ZWRQQlhhQnk0YlcwdUcwNlBBSkdiREI0ZEVkTnZl?=
 =?utf-8?B?cnZRaW5QL3Rxd2J3YVhjZG9aYUtqcGNpUktTZWk5eDU1emJHYzBES0RDU1Vk?=
 =?utf-8?B?aUdoMmwzUkdqVnRCT3h4NFFVbEsyNnNxWVoxV0Job3ltUjdGU0xubzN6MklE?=
 =?utf-8?Q?CQ58cggyfZ7ysirI=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 559a71ea-fca0-4ab9-509d-08da22c7d0af
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Apr 2022 12:18:02.3989 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rXFY/XoAo8+ZBCtnMly+BbKCsvXfVnZB1IiznZ0xislPmjeY8cyLZ2dzHiZOA+YQnBPRR4dCZTfQj8tsYC4Xrg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1334
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 7/9] drm/i915/gt: Fix memory leaks in per-gt
 sysfs
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
Cc: Andi Shyti <andi.shyti@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Ashutosh,

On 20.04.2022 07:21, Ashutosh Dixit wrote:
> All kmalloc'd kobjects need a kobject_put() to free memory. For example in
> previous code, kobj_gt_release() never gets called. The requirement of
> kobject_put() now results in a slightly different code organization.
>
> Cc: Andi Shyti <andi.shyti@intel.com>
> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Fixes: b770bcfae9ad ("drm/i915/gt: create per-tile sysfs interface")
> Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_gt.c       |  1 +
>   drivers/gpu/drm/i915/gt/intel_gt_sysfs.c | 35 ++++++++++--------------
>   drivers/gpu/drm/i915/gt/intel_gt_sysfs.h |  6 +---
>   drivers/gpu/drm/i915/gt/intel_gt_types.h |  3 ++
>   drivers/gpu/drm/i915/i915_sysfs.c        |  2 ++
>   5 files changed, 22 insertions(+), 25 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
> index f0014c5072c9..f0c56ca12c0b 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -783,6 +783,7 @@ void intel_gt_driver_unregister(struct intel_gt *gt)
>   {
>   	intel_wakeref_t wakeref;
>   
> +	intel_gt_sysfs_unregister(gt);
>   	intel_rps_driver_unregister(&gt->rps);
>   
>   	intel_pxp_fini(&gt->pxp);
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_sysfs.c b/drivers/gpu/drm/i915/gt/intel_gt_sysfs.c
> index 8ec8bc660c8c..6f1b081ca5b7 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_sysfs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_sysfs.c
> @@ -24,7 +24,7 @@ bool is_object_gt(struct kobject *kobj)
>   
>   static struct intel_gt *kobj_to_gt(struct kobject *kobj)
>   {
> -	return container_of(kobj, struct kobj_gt, base)->gt;
> +	return container_of(kobj, struct intel_gt, sysfs_gtn);
>   }
>   
>   struct intel_gt *intel_gt_sysfs_get_drvdata(struct device *dev,
> @@ -72,21 +72,19 @@ static struct attribute *id_attrs[] = {
>   };
>   ATTRIBUTE_GROUPS(id);
>   
> -static void kobj_gt_release(struct kobject *kobj)
> +/* A kobject needs a release() method even if it does nothing */
> +static void kobj_gtn_release(struct kobject *kobj)
>   {
> -	kfree(kobj);
>   }
>   
> -static struct kobj_type kobj_gt_type = {
> -	.release = kobj_gt_release,
> +static struct kobj_type kobj_gtn_type = {
> +	.release = kobj_gtn_release,
>   	.sysfs_ops = &kobj_sysfs_ops,
>   	.default_groups = id_groups,
>   };
>   
>   void intel_gt_sysfs_register(struct intel_gt *gt)
>   {
> -	struct kobj_gt *kg;
> -
>   	/*
>   	 * We need to make things right with the
>   	 * ABI compatibility. The files were originally
> @@ -98,25 +96,22 @@ void intel_gt_sysfs_register(struct intel_gt *gt)
>   	if (gt_is_root(gt))
>   		intel_gt_sysfs_pm_init(gt, gt_get_parent_obj(gt));
>   
> -	kg = kzalloc(sizeof(*kg), GFP_KERNEL);
> -	if (!kg)
> +	/* init and xfer ownership to sysfs tree */
> +	if (kobject_init_and_add(&gt->sysfs_gtn, &kobj_gtn_type,
> +				 gt->i915->sysfs_gt, "gt%d", gt->info.id))
>   		goto exit_fail;
>   
> -	kobject_init(&kg->base, &kobj_gt_type);
> -	kg->gt = gt;
> -
> -	/* xfer ownership to sysfs tree */
> -	if (kobject_add(&kg->base, gt->i915->sysfs_gt, "gt%d", gt->info.id))
> -		goto exit_kobj_put;
> -
> -	intel_gt_sysfs_pm_init(gt, &kg->base);
> +	intel_gt_sysfs_pm_init(gt, &gt->sysfs_gtn);
>   
>   	return;
>   
> -exit_kobj_put:
> -	kobject_put(&kg->base);
> -
>   exit_fail:
> +	kobject_put(&gt->sysfs_gtn);
>   	drm_warn(&gt->i915->drm,
>   		 "failed to initialize gt%d sysfs root\n", gt->info.id);
>   }
> +
> +void intel_gt_sysfs_unregister(struct intel_gt *gt)
> +{
> +	kobject_put(&gt->sysfs_gtn);
> +}
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_sysfs.h b/drivers/gpu/drm/i915/gt/intel_gt_sysfs.h
> index 9471b26752cf..a99aa7e8b01a 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_sysfs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_sysfs.h
> @@ -13,11 +13,6 @@
>   
>   struct intel_gt;
>   
> -struct kobj_gt {
> -	struct kobject base;
> -	struct intel_gt *gt;
> -};
> -
>   bool is_object_gt(struct kobject *kobj);
>   
>   struct drm_i915_private *kobj_to_i915(struct kobject *kobj);
> @@ -28,6 +23,7 @@ intel_gt_create_kobj(struct intel_gt *gt,
>   		     const char *name);
>   
>   void intel_gt_sysfs_register(struct intel_gt *gt);
> +void intel_gt_sysfs_unregister(struct intel_gt *gt);
>   struct intel_gt *intel_gt_sysfs_get_drvdata(struct device *dev,
>   					    const char *name);
>   
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> index 937b2e1a305e..4c72b4f983a6 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> @@ -222,6 +222,9 @@ struct intel_gt {
>   	} mocs;
>   
>   	struct intel_pxp pxp;
> +
> +	/* gt/gtN sysfs */
> +	struct kobject sysfs_gtn;

If you put kobject as a part of intel_gt what assures you that lifetime 
of kobject is shorter than intel_gt? Ie its refcounter is 0 on removal 
of intel_gt?

Regards
Andrzej

>   };
>   
>   enum intel_gt_scratch_field {
> diff --git a/drivers/gpu/drm/i915/i915_sysfs.c b/drivers/gpu/drm/i915/i915_sysfs.c
> index 8521daba212a..3f06106cdcf5 100644
> --- a/drivers/gpu/drm/i915/i915_sysfs.c
> +++ b/drivers/gpu/drm/i915/i915_sysfs.c
> @@ -259,4 +259,6 @@ void i915_teardown_sysfs(struct drm_i915_private *dev_priv)
>   
>   	device_remove_bin_file(kdev,  &dpf_attrs_1);
>   	device_remove_bin_file(kdev,  &dpf_attrs);
> +
> +	kobject_put(dev_priv->sysfs_gt);
>   }

