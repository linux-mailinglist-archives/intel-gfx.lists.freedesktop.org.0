Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0E2563B91C
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Nov 2022 05:28:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EBFA10E051;
	Tue, 29 Nov 2022 04:28:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6689310E253
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Nov 2022 04:28:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669696099; x=1701232099;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Zzz/iOfipnc42P40O7CwZ3dcmMUPYnmqSxns/j5SfT8=;
 b=HHLtixI2y5S36grm578PoNfRXSGebr93JXSR0x7YqDDhtp8m56IcFD/A
 J7SoEB82I6r9cRY5RA6kvy1r+v0+flsvPIJY6jtN9z1eelV7fZTtqkI6x
 60Zv4iXlkqR5txpoINCfC6tdKgLYGPu5G3geZGNGjitLsmmhyf/0tQjq1
 eg0049fbknPuzuWSOEVbFXRy0a/bj5BeiP9nLOJixsVXyouBpFLDDZqpy
 viJYRKQvC743N6MSnG6SbEq+FwHvDZPJHSTwvDnjpirGCerMwD/p197qY
 oxgTNOIRBCF/df2Raa3xneMaKJVWnT+7KUwC4mGCCfJNpaE01aBPvfXZm A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="302605781"
X-IronPort-AV: E=Sophos;i="5.96,202,1665471600"; d="scan'208";a="302605781"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 20:28:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="645754038"
X-IronPort-AV: E=Sophos;i="5.96,202,1665471600"; d="scan'208";a="645754038"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP; 28 Nov 2022 20:28:18 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 28 Nov 2022 20:28:17 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 28 Nov 2022 20:28:17 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 28 Nov 2022 20:28:17 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.109)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 28 Nov 2022 20:28:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HKcbGCcmnHwrXErwVcXQEktN2AV/9z8hzYkTqL4hylmKJM8n3tH2YwFbQkYBD/jdfoeOTM0qZvVI+0wEXJncX8DzM53Mcvi8VnuzawIiSoYlTcVnNHc4fcUnV3c0g/i9NCDz54NONl4AhqSckZwsC9l96hBPWeea2rgoE4ACvEo/NeJ9op6hGbNkvPnF4uPfn5iw3D1Yw15GVLJYfK6GTvFS0nKonlJY8NrLYPJLNn+GXh1q8M0esLp7aTmW4As3Isqvm6rMq2ltfajLrT+VwpZTv1TiZ4EGIHEubE7t3UFGNzGXR5iq+touZLHeEc6vUfa4ZjMgl/M5bDxgNBtFbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DxtkVfPy/sLTzFrJ+fubr/rNRcZXLJJQUTYewCnEDQc=;
 b=lxBfMh4QvD0BQtjPFEJnEqMD9b0iP/92EBMcuCcs4Z859FAolUYDKAxCDDYdXEmNMg1SFDomKmZAfXKdaOUK3YkExeiX/KiwUH14KIlmis3DJtmluyJOl30GV2/KDB2/xZ2nRlQxBMTtIuVwMKBUOuEERjLjwdBrwlef/cbmjyr9DpEELnyb9qfvwOrXd7b3zzc8F6tlM6IKsK6JxLOoG1aRFbi/Mgfl6a/WYKQ9+Bsm536G/Xxt47Y3P/+oMASr6dVG2M2E4QDj/WTgnlhiud2e/yWFEiBg91d8DSqBfBtg+DxWaIKLDQa1CE4O2DotS22HuIzE4ajoF91T3D57gQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5474.namprd11.prod.outlook.com (2603:10b6:610:d5::8)
 by MW3PR11MB4603.namprd11.prod.outlook.com (2603:10b6:303:5e::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Tue, 29 Nov
 2022 04:28:14 +0000
Received: from CH0PR11MB5474.namprd11.prod.outlook.com
 ([fe80::91d7:def6:dd3b:3bbd]) by CH0PR11MB5474.namprd11.prod.outlook.com
 ([fe80::91d7:def6:dd3b:3bbd%8]) with mapi id 15.20.5857.023; Tue, 29 Nov 2022
 04:28:14 +0000
Message-ID: <ac385078-9b6f-2d1e-721b-f70619cbed51@intel.com>
Date: Tue, 29 Nov 2022 09:58:03 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.5.0
Content-Language: en-US
To: Lucas De Marchi <lucas.demarchi@intel.com>
References: <3a47d428e1929942374b9eaead5372bfaaefdeed.1669629369.git.aravind.iddamsetty@intel.com>
 <e65f3bc9dc0f90bc95bd529d2822568ac596be28.1669629369.git.aravind.iddamsetty@intel.com>
 <20221128202743.zf2ro6ay67bxwjxa@ldmartin-desk2.lan>
From: "Iddamsetty, Aravind" <aravind.iddamsetty@intel.com>
In-Reply-To: <20221128202743.zf2ro6ay67bxwjxa@ldmartin-desk2.lan>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0142.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:bf::20) To CH0PR11MB5474.namprd11.prod.outlook.com
 (2603:10b6:610:d5::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB5474:EE_|MW3PR11MB4603:EE_
X-MS-Office365-Filtering-Correlation-Id: ed359acf-e891-428b-852b-08dad1c2212f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +/aygm1WR4o/USm+kWUl1S8fiUScio2zt+YVRm7r9y1vKzi4USwavmUiIZswiP/JMka4UrP2ctwhhFeV+rDbyCoypvkSXn+wOC+Knd8wN+5NCK2cSOQeFOMgEzD0bp5wRo65aJJqE88ZiZQuk3amYzsXQZvPcDFIaTpcrEP70B8qgu1c/c4nlubcQskF3MI2zCZYeWLgVKSUy7SfMFtnC4GEkmi5w7CHqaO4hTSH/+mB/tfIUUKL2xTiAYdoF4vOneWfO/6hqthEKBa4TPg5NYEvTC5KD6/WkFuWwyw7LrJvQKTr0y14fHXanPOqdSlp35hHIDybhQpLgTde9VbUzBJ+3GEzaxtCpRWYD5JNEdtxU7kW26VZ4AMK22NygsmXhE1L4B9bainbvIzKjxBYPaCDUSOV20UAFGtXxXFQokjFi9/tPhR+5nYasH/M6ntPqTKqqgdBQgQaQhxz3bW0wteLZbfGhQWsMISlZV4MUfQFS1wtWPkdj4/Tr6N65dJDmzBtEHnroNXc71/q+0mw8gmumZDBkJpBNzDYC0CLxIJL05IozRVrQdOYYzvJxG+PXTmn+Q/GL2ccbWjdVx71+DBg1F9rGohIPtJ9HWJcGXEmoPk9zObtdHLJfMgKQSe5XxUsoPzV5aw599p0Y52jOCivEe9+TTRS1ZemvC4HFCm0WjFcFIVdx+nGDmVEiTj5driGpz/AUM2J3sDayJo/bnPnXFrOzcXNpvRwpRuzX4A=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5474.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(136003)(346002)(376002)(396003)(39860400002)(451199015)(478600001)(107886003)(6666004)(31686004)(6486002)(26005)(6512007)(6506007)(53546011)(186003)(6636002)(86362001)(31696002)(2616005)(8936002)(54906003)(5660300002)(6862004)(37006003)(4326008)(36756003)(316002)(8676002)(83380400001)(66946007)(66476007)(66556008)(38100700002)(82960400001)(2906002)(41300700001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N3FGMHhldnZqSlVYWVlzc2RrN0pRV0dzMzcxdFIwY2VkVmxaNlh2QzhwN1lq?=
 =?utf-8?B?TmZIRFVWUzQzcmFMajEzSms2cTdhVWdSYkNtRWdRTzhGRUNDSGFwSEhaTFVW?=
 =?utf-8?B?MFNrMjNJcWdQSlhBMUJNclZ0NE1PUmxQbjZsemxKNFVxN2RlU1BnYkMwb2Ux?=
 =?utf-8?B?azl3aERhbjBvZlJxNTFVbDgxT2FMV0pPbHE4WGU2aEFiQ3Z4cUtKcTN3eUtS?=
 =?utf-8?B?K3J3VEU4bGJnb2kvM2ViYkwzQzlGbC9WNkV6NVUvOHNkUmRuWFdoV1lqeUIr?=
 =?utf-8?B?QVNiV2s0SUYrYU1OeVNDYU0yRDZlc1dOYU91ZTJ2WHZ6YlRpNXBMTjFwd0Fu?=
 =?utf-8?B?VVNrQ284VmVEUytKMXJCUlJyaXVqS21BMFBGOHN5SXY0U3NjT3BEMy9PZEpQ?=
 =?utf-8?B?aHpDTXVNZzF6eEo4OVVHQ3RuWmphMUw1Y3pLaHRMdk9lSk1BcW5DY0E3TjBw?=
 =?utf-8?B?Tkl0MHB3YjlQekZheHBSR2RkN3ZRWG1Zc1RsNVE0cVlOMzZXeU5VTkZldEtE?=
 =?utf-8?B?WDhmU3JBNVpXaWU1OExYWkdxeWpKbDFieEtBUWkrTWN1L0xRUVlKM29KclZG?=
 =?utf-8?B?RXZKVjU0K0JpMERjekdtQktzUTEva3BYV1REZDhBUDRzSGlZNFhLOWZoSHYy?=
 =?utf-8?B?NHoyTlRORjJmd0FHK1Bxc1FwZWJGcWl1UlI0a0VIaXkvbGRPc0lsMXZyNXF1?=
 =?utf-8?B?TTZjMlk3RGh5emJEWUJ3QlZNVGExb3lIV1lhRTc0OUZJa050aGtaNnFkR1d1?=
 =?utf-8?B?NVBkY3dNN05MR2dsSkRvemlrT0xQN25UWmpwK3FCSXdhL09EajZ2QXJsYVB4?=
 =?utf-8?B?bFJFWDY3KzY1K0h4RVVYYnJDOW1aZmNqc1NMRWk4RCswdllKcXFPOHhHUU5F?=
 =?utf-8?B?K2JZZ05WMXNrbUU4cFViR2E5UEx2bmRNUldkVEQ2ZkR5Y0tycjhPRzBLV1NL?=
 =?utf-8?B?ZUVIZlk1eTFiYWNqMUpNcmVxS3FMOWpkUWk2bFFFOUppUFFqSUt5S05rc3RN?=
 =?utf-8?B?QW13WkkrZnRUU1N6ODdrMmZyaDhIM3hBN2NZM0dRSDY0M2RmTGlRcTUzdWRM?=
 =?utf-8?B?VXJhTWlZbHZ1T1RMMTkveGovQXhYRXdhemhZRnozcUQ1TTZNdTA4eHBlNEFZ?=
 =?utf-8?B?azBvdmJmQm1yZHlhbFduaUNYQlZVTVlaTFQwMHYvdTFmNk43ZU9VNU5ucVZ0?=
 =?utf-8?B?SHR5clZvRVpmWGlaYjNRS2FacGFJZFpndktWQVBjcmdwNXdmWU93UEZ3VE51?=
 =?utf-8?B?WEp5ZXF2KzFTblFyNmJmam5SNDdhYVFqTHZRQ2xDZFZjMkJ5bVZPTWhIYlZp?=
 =?utf-8?B?VEFJeGY4WGppNCs2eXZwMU1XZERQRDdQZGltUThENzA0cDY4eGsyb3ExQk5V?=
 =?utf-8?B?VFNOZUZqU3VXUHhWNExxZFpYSXlrQzJWT1lNQjQrdFh5K3RCVzk1NTNSeHFB?=
 =?utf-8?B?NUczb2k1MUw3YUtwWHF5d0M1SHJkV1JSbzdTM2FCY3J0M29KQnVzbE5CNUQw?=
 =?utf-8?B?Ym0raGR2WlJMTVZkaFhTMzNZcWplN3lPTTZBc2xwNndGTm5seU1KM1dhRkc4?=
 =?utf-8?B?YXdQVzJPdVFqeGZxRkVjRnlvcmZWbS9ra0ZZUmp1Q2lLcmoxOUZIYU84VFNr?=
 =?utf-8?B?bGZ0cFNhNGJ5Snp2S1k0bUJ5aXgySlVyWm5NRGd3clluNjFmNWhKYlBYSlEw?=
 =?utf-8?B?RVB6elVrdjNlbk5URkFvY05DczJUTlNRNzZrYk8yakRKTFI0ck5GVFcyMTRK?=
 =?utf-8?B?STJPWVRpVzQyL1lTTkI3TCs3OGxHcjdQcnd6VlR2Y09saVd3SnFmYUkvUVJr?=
 =?utf-8?B?SjdDS0o4UVNhbThIVjYvQ3dUUlZMTHU3RlhmRmI4dFd3cm1xTkk2KzVTcWwx?=
 =?utf-8?B?VmxOV0Ryd0pCTXc2T09LRWphZEwvK0NKdGRrWGtHMmJ5VW1memJmTk05V0Er?=
 =?utf-8?B?akdTQzdVdVNjMjlVQ2lUNEtyMC9pV2NHSVFUQms2c0dYYmkzODZXdlkvY1Qx?=
 =?utf-8?B?S1lKTFhhTlFYUHhDblZTQTRVUHJJd01mY1N0Qi9Dc3gweUhiRENzT0RsRjZq?=
 =?utf-8?B?ZUtnS3FJbERnN1Q0QWtzYzUrMzdCVEFSR2lXd3JEMFRHcDNHNmxUb2tPTzVG?=
 =?utf-8?B?N0hZallIbWd1WFdKUmljdUdNM1JwSkQ0T3l1d2hTazI3MVNJUStTN3FOazBG?=
 =?utf-8?B?bmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ed359acf-e891-428b-852b-08dad1c2212f
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5474.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Nov 2022 04:28:14.1176 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IqCkmgBBkUb0IRDxgSCVh7+TxATDjxyapDmxLL4d16DDxDxL9lOfYP2JrKRaaf2faq9Gp2hWQrk/PD9wGizq94h/S5Ko6HNYFSFZaGkHqxU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4603
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/mtl: Define new PTE encode for
 MTL
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



On 29-11-2022 01:57, Lucas De Marchi wrote:
> On Mon, Nov 28, 2022 at 03:43:51PM +0530, Aravind Iddamsetty wrote:
>> Add a separate PTE encode function for MTL. The number of PAT registers
>> have increased to 16 on MTL. All 16 PAT registers are available for
>> PPGTT mapped pages, but only the lower 4 are available for GGTT mapped
>> pages.
> 
> this would be easier to review with a preparatory patch, replacing
> direct calls to gen8_pte_encode() and gen8_ggtt_pte_encode() with the
> indirect ones through vm.

Well I did this together because it would be easy to justify the change
as I'm adding new definitions but if you insist on separating it out I
can do that too.

Thanks,
Aravind.
> 
> Then the patch on top adding MTL would be the definition of the new
> encoding (mtl_pte_encode/mtl_ggtt_pte_encode) and assigning the function
> pointer.
> 
> 
> Lucas De Marchi
> 
>>
>> BSPEC: 63884
>>
>> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>> Cc: Matt Roper <matthew.d.roper@intel.com>
>> Co-developed-by: Fei Yang <fei.yang@intel.com>
>> Signed-off-by: Fei Yang <fei.yang@intel.com>
>> Signed-off-by: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
>> ---
>> drivers/gpu/drm/i915/display/intel_dpt.c |  2 +-
>> drivers/gpu/drm/i915/gt/gen8_ppgtt.c     | 43 ++++++++++++++++++++----
>> drivers/gpu/drm/i915/gt/gen8_ppgtt.h     |  4 +++
>> drivers/gpu/drm/i915/gt/intel_ggtt.c     | 36 ++++++++++++++++++--
>> drivers/gpu/drm/i915/gt/intel_gtt.h      | 13 +++++--
>> 5 files changed, 86 insertions(+), 12 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c
>> b/drivers/gpu/drm/i915/display/intel_dpt.c
>> index ad1a37b515fb..cb8ed9bfb240 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dpt.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dpt.c
>> @@ -298,7 +298,7 @@ intel_dpt_create(struct intel_framebuffer *fb)
>>     vm->vma_ops.bind_vma    = dpt_bind_vma;
>>     vm->vma_ops.unbind_vma  = dpt_unbind_vma;
>>
>> -    vm->pte_encode = gen8_ggtt_pte_encode;
>> +    vm->pte_encode = vm->gt->ggtt->vm.pte_encode;
>>
>>     dpt->obj = dpt_obj;
>>
>> diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
>> b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
>> index 4daaa6f55668..4197b43150cc 100644
>> --- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
>> +++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
>> @@ -55,6 +55,34 @@ static u64 gen8_pte_encode(dma_addr_t addr,
>>     return pte;
>> }
>>
>> +static u64 mtl_pte_encode(dma_addr_t addr,
>> +              enum i915_cache_level level,
>> +              u32 flags)
>> +{
>> +    gen8_pte_t pte = addr | GEN8_PAGE_PRESENT | GEN8_PAGE_RW;
>> +
>> +    if (unlikely(flags & PTE_READ_ONLY))
>> +        pte &= ~GEN8_PAGE_RW;
>> +
>> +    if (flags & PTE_LM)
>> +        pte |= GEN12_PPGTT_PTE_LM | GEN12_PPGTT_PTE_NC;
>> +
>> +    switch (level) {
>> +    case I915_CACHE_NONE:
>> +        pte |= GEN12_PPGTT_PTE_PAT1;
>> +        break;
>> +    case I915_CACHE_LLC:
>> +    case I915_CACHE_L3_LLC:
>> +        pte |= GEN12_PPGTT_PTE_PAT0 | GEN12_PPGTT_PTE_PAT1;
>> +        break;
>> +    case I915_CACHE_WT:
>> +        pte |= GEN12_PPGTT_PTE_PAT0;
>> +        break;
>> +    }
>> +
>> +    return pte;
>> +}
>> +
>> static void gen8_ppgtt_notify_vgt(struct i915_ppgtt *ppgtt, bool create)
>> {
>>     struct drm_i915_private *i915 = ppgtt->vm.i915;
>> @@ -427,7 +455,7 @@ gen8_ppgtt_insert_pte(struct i915_ppgtt *ppgtt,
>>               u32 flags)
>> {
>>     struct i915_page_directory *pd;
>> -    const gen8_pte_t pte_encode = gen8_pte_encode(0, cache_level,
>> flags);
>> +    const gen8_pte_t pte_encode = ppgtt->vm.pte_encode(0,
>> cache_level, flags);
>>     gen8_pte_t *vaddr;
>>
>>     pd = i915_pd_entry(pdp, gen8_pd_index(idx, 2));
>> @@ -580,7 +608,7 @@ static void gen8_ppgtt_insert_huge(struct
>> i915_address_space *vm,
>>                    enum i915_cache_level cache_level,
>>                    u32 flags)
>> {
>> -    const gen8_pte_t pte_encode = gen8_pte_encode(0, cache_level,
>> flags);
>> +    const gen8_pte_t pte_encode = vm->pte_encode(0, cache_level, flags);
>>     unsigned int rem = sg_dma_len(iter->sg);
>>     u64 start = vma_res->start;
>>
>> @@ -743,7 +771,7 @@ static void gen8_ppgtt_insert_entry(struct
>> i915_address_space *vm,
>>     GEM_BUG_ON(pt->is_compact);
>>
>>     vaddr = px_vaddr(pt);
>> -    vaddr[gen8_pd_index(idx, 0)] = gen8_pte_encode(addr, level, flags);
>> +    vaddr[gen8_pd_index(idx, 0)] = vm->pte_encode(addr, level, flags);
>>     drm_clflush_virt_range(&vaddr[gen8_pd_index(idx, 0)],
>> sizeof(*vaddr));
>> }
>>
>> @@ -773,7 +801,7 @@ static void __xehpsdv_ppgtt_insert_entry_lm(struct
>> i915_address_space *vm,
>>     }
>>
>>     vaddr = px_vaddr(pt);
>> -    vaddr[gen8_pd_index(idx, 0) / 16] = gen8_pte_encode(addr, level,
>> flags);
>> +    vaddr[gen8_pd_index(idx, 0) / 16] = vm->pte_encode(addr, level,
>> flags);
>> }
>>
>> static void xehpsdv_ppgtt_insert_entry(struct i915_address_space *vm,
>> @@ -820,7 +848,7 @@ static int gen8_init_scratch(struct
>> i915_address_space *vm)
>>         pte_flags |= PTE_LM;
>>
>>     vm->scratch[0]->encode =
>> -        gen8_pte_encode(px_dma(vm->scratch[0]),
>> +        vm->pte_encode(px_dma(vm->scratch[0]),
>>                 I915_CACHE_NONE, pte_flags);
>>
>>     for (i = 1; i <= vm->top; i++) {
>> @@ -963,7 +991,10 @@ struct i915_ppgtt *gen8_ppgtt_create(struct
>> intel_gt *gt,
>>      */
>>     ppgtt->vm.alloc_scratch_dma = alloc_pt_dma;
>>
>> -    ppgtt->vm.pte_encode = gen8_pte_encode;
>> +    if (GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 70))
>> +        ppgtt->vm.pte_encode = mtl_pte_encode;
>> +    else
>> +        ppgtt->vm.pte_encode = gen8_pte_encode;
>>
>>     ppgtt->vm.bind_async_flags = I915_VMA_LOCAL_BIND;
>>     ppgtt->vm.insert_entries = gen8_ppgtt_insert;
>> diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.h
>> b/drivers/gpu/drm/i915/gt/gen8_ppgtt.h
>> index f541d19264b4..c48f1fc32909 100644
>> --- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.h
>> +++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.h
>> @@ -19,4 +19,8 @@ u64 gen8_ggtt_pte_encode(dma_addr_t addr,
>>              enum i915_cache_level level,
>>              u32 flags);
>>
>> +u64 mtl_ggtt_pte_encode(dma_addr_t addr,
>> +            enum i915_cache_level level,
>> +            u32 flags);
>> +
>> #endif
>> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c
>> b/drivers/gpu/drm/i915/gt/intel_ggtt.c
>> index 8145851ad23d..ffe910694ca0 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
>> @@ -237,6 +237,33 @@ static void guc_ggtt_invalidate(struct i915_ggtt
>> *ggtt)
>>         intel_uncore_write_fw(uncore, GEN8_GTCR, GEN8_GTCR_INVALIDATE);
>> }
>>
>> +u64 mtl_ggtt_pte_encode(dma_addr_t addr,
>> +            enum i915_cache_level level,
>> +            u32 flags)
>> +{
>> +    gen8_pte_t pte = addr | GEN8_PAGE_PRESENT;
>> +
>> +    GEM_BUG_ON(addr & ~GEN12_GGTT_PTE_ADDR_MASK);
>> +
>> +    if (flags & PTE_LM)
>> +        pte |= GEN12_GGTT_PTE_LM;
>> +
>> +    switch (level) {
>> +    case I915_CACHE_NONE:
>> +        pte |= MTL_GGTT_PTE_PAT1;
>> +        break;
>> +    case I915_CACHE_LLC:
>> +    case I915_CACHE_L3_LLC:
>> +        pte |= MTL_GGTT_PTE_PAT0 | MTL_GGTT_PTE_PAT1;
>> +        break;
>> +    case I915_CACHE_WT:
>> +        pte |= MTL_GGTT_PTE_PAT0;
>> +        break;
>> +    }
>> +
>> +    return pte;
>> +}
>> +
>> u64 gen8_ggtt_pte_encode(dma_addr_t addr,
>>              enum i915_cache_level level,
>>              u32 flags)
>> @@ -264,7 +291,7 @@ static void gen8_ggtt_insert_page(struct
>> i915_address_space *vm,
>>     gen8_pte_t __iomem *pte =
>>         (gen8_pte_t __iomem *)ggtt->gsm + offset / I915_GTT_PAGE_SIZE;
>>
>> -    gen8_set_pte(pte, gen8_ggtt_pte_encode(addr, level, flags));
>> +    gen8_set_pte(pte, ggtt->vm.pte_encode(addr, level, flags));
>>
>>     ggtt->invalidate(ggtt);
>> }
>> @@ -274,8 +301,8 @@ static void gen8_ggtt_insert_entries(struct
>> i915_address_space *vm,
>>                      enum i915_cache_level level,
>>                      u32 flags)
>> {
>> -    const gen8_pte_t pte_encode = gen8_ggtt_pte_encode(0, level, flags);
>>     struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
>> +    const gen8_pte_t pte_encode = ggtt->vm.pte_encode(0, level, flags);
>>     gen8_pte_t __iomem *gte;
>>     gen8_pte_t __iomem *end;
>>     struct sgt_iter iter;
>> @@ -984,7 +1011,10 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
>>     ggtt->vm.vma_ops.bind_vma    = intel_ggtt_bind_vma;
>>     ggtt->vm.vma_ops.unbind_vma  = intel_ggtt_unbind_vma;
>>
>> -    ggtt->vm.pte_encode = gen8_ggtt_pte_encode;
>> +    if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70))
>> +        ggtt->vm.pte_encode = mtl_ggtt_pte_encode;
>> +    else
>> +        ggtt->vm.pte_encode = gen8_ggtt_pte_encode;
>>
>>     setup_private_pat(ggtt->vm.gt);
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h
>> b/drivers/gpu/drm/i915/gt/intel_gtt.h
>> index 43bf9188ffef..450ed0541d0f 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gtt.h
>> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
>> @@ -88,9 +88,18 @@ typedef u64 gen8_pte_t;
>> #define BYT_PTE_SNOOPED_BY_CPU_CACHES    REG_BIT(2)
>> #define BYT_PTE_WRITEABLE        REG_BIT(1)
>>
>> +#define GEN12_PPGTT_PTE_PAT3    BIT_ULL(62)
>> #define GEN12_PPGTT_PTE_LM    BIT_ULL(11)
>> -
>> -#define GEN12_GGTT_PTE_LM    BIT_ULL(1)
>> +#define GEN12_PPGTT_PTE_PAT2    BIT_ULL(7)
>> +#define GEN12_PPGTT_PTE_NC      BIT_ULL(5)
>> +#define GEN12_PPGTT_PTE_PAT1    BIT_ULL(4)
>> +#define GEN12_PPGTT_PTE_PAT0    BIT_ULL(3)
>> +
>> +#define GEN12_GGTT_PTE_LM        BIT_ULL(1)
>> +#define MTL_GGTT_PTE_PAT0        BIT_ULL(52)
>> +#define MTL_GGTT_PTE_PAT1        BIT_ULL(53)
>> +#define GEN12_GGTT_PTE_ADDR_MASK    GENMASK_ULL(45, 12)
>> +#define MTL_GGTT_PTE_PAT_MASK        GENMASK_ULL(53, 52)
>>
>> #define GEN12_PDE_64K BIT(6)
>> #define GEN12_PTE_PS64 BIT(8)
>> -- 
>> 2.25.1
>>
