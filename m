Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12BD38668A1
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Feb 2024 04:21:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F91710ED9B;
	Mon, 26 Feb 2024 03:21:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YOUYe7pP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A52BC10ED9B;
 Mon, 26 Feb 2024 03:21:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708917671; x=1740453671;
 h=date:from:to:cc:subject:message-id:
 content-transfer-encoding:mime-version;
 bh=J3BPl3rkfnrAdyGZRTQfWJhOPGg8X/HYMtpuLQ91Lok=;
 b=YOUYe7pP8aEsmp1jXVY6ebDqTvW+Bz7/Pf4G2NWIjvtCCrJkhD4jo8dc
 LFB6KKYMlubDE901fQBJ4z4lW/EB9zxNcKB67CwcmnCDrWJvL/wC26tgo
 OKcVNhVkOMqRW0RVPajOmGHl/SLq3VLRzM9dZldhnzUCK7wdvulZIlk2L
 1OI+xbsfjR3UjaPHMf9OcuyRNmVaU8zInn2s3mWc9K/fjznU3JBd4Lt0F
 7TjpFUp62m8K5R4+bZjkwmljzb748YHcLhYf4LpjO9jRLh4sJGcTV1/Cc
 RdlFS8zx69IFbmzgnp/w733AVp+7LT+QikK6XW1EYFBF0qU6lcIPl6Q9z w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10995"; a="3337816"
X-IronPort-AV: E=Sophos;i="6.06,185,1705392000"; 
   d="scan'208";a="3337816"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2024 19:21:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,185,1705392000"; 
   d="scan'208";a="6877653"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Feb 2024 19:21:09 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 25 Feb 2024 19:21:08 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 25 Feb 2024 19:21:07 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sun, 25 Feb 2024 19:21:07 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sun, 25 Feb 2024 19:21:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cCYefCAsF/alahERH1EfGd6laOzm+joeeFj1/cTtGYp9dDOvErHg+vJhnHvNG0SHmbFtlRVfMrLg7mTYEQGfpejIwF3rt6n83rdnyytOwy8hGWkDHPhArhrMCGXP6lMZLZwql0Gh1ThlnSzeXm8QuUUiUWSiHAFwGUBejiTOFA1dS0SmrSPaW1YpOdB2uWAwa6FGyGMj4ttvn/Pw9W69i8n1ezgp28IYCMbxcP+CgxDywI+Lbwj3ZIwTWLvVx1mffgGWnJu6WwmB6fsh06wX0s/1zFqeAqF13hQ0suAKQ/vXNI7oURI+OwpBeTLcNafBU1e09abPikpAyuBoqnLvlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qx9/DhvLxZEIH7onPs0u0EhxB7je+do/CkfgOC3Yf8Q=;
 b=BtLPRbBLcXwwXPz9DFj0XpQojqpPVAyqSCDzz3jq1Js/MXx67ruhpDZA7Fd7kceIfL26FaOCj14/nJvCrAFHNmCODqb2B5vs8xUqOMNmtjigX7QT0C35iCIew6ISbv0ACl57Ouu/pbmBIUPtBMiYfQEdWEdLEsv3B60dWZ7TwIUh42L9SYdLZBMWoxEbWWFWp7b+HTj7vE8VOkwVPHwRl8hl2T+WgctfSJhlWvXhi+a+T2J+uPNPlxTU4zhBXZ3TI+GawFPKOyFpTRHp3jBvnjB5Zy3voWxpIWoJXVxw/t2U7TvMmpSZUQdyqloE4fkEJet2rdyVuwhnGCAy2NGBjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by MW3PR11MB4732.namprd11.prod.outlook.com (2603:10b6:303:2c::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.24; Mon, 26 Feb
 2024 03:21:03 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7352:aa4b:e13e:cb01]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7352:aa4b:e13e:cb01%7]) with mapi id 15.20.7339.024; Mon, 26 Feb 2024
 03:21:03 +0000
Date: Sun, 25 Feb 2024 21:21:00 -0600
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
CC: Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin
 <tvrtko.ursulin@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, "Oded
 Gabbay" <ogabbay@kernel.org>, Lucas De Marchi <lucas.demarchi@intel.com>,
 <dri-devel@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <dim-tools@lists.freedesktop.org>
Subject: [PULL] drm-xe-next
Message-ID: <dbdkrwmcoqqlwftuc3olbauazc3pbamj26wa34puztowsnauoh@i3zms7ut4yuw>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR13CA0179.namprd13.prod.outlook.com
 (2603:10b6:a03:2c7::34) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|MW3PR11MB4732:EE_
X-MS-Office365-Filtering-Correlation-Id: 160eed80-b163-44ff-cf22-08dc3679f637
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: IBuE+8/3EaR5vVYxXGSy7s9fkf3AGPEMesaKhrTvc8a4QvcWQDTxneml6MEJKfkbW2PfTEdy6vnxBbET5sMy2X5ILXGkBcSjPuCmnqmYrJOt8nMBl05GnoVfzhgcK68r8uTtbMzGYDG3fjFqhwL2xJ7vtKflXIJNt3PBQuttvHxUlRgiNeh68vVlf2Dp3EZO1FMATv/Hh9QFG9NCCiVepBmol2VrBxSs/8ikfcbO2WsDE1o9K7pU5OlQeN3ZbYkxOEhX72oIf5leNmlvk7s23CDlXrBavlL7K0I05iuAqijU6VxIbuUpK1HXxqOQ9FErPtBzOsXwb13brV3Iq0AIMjTiZZWpuvXRhYNjQhV3xP4BsTfnIIK26N0NNwz8PFOLR38j/JWAX1x+hmJWRcLoBxuw2KdcJiEST47Ku9ol5JAqSHq+BgjRljzsT3koc9vqwxb8NYM+kpjn3+R86rYKpgVDTq6krU5JezdOgUVfcb+73UMikOMX8ZOkKjHhCSj/5yb5vzLvZ2Sr+tV2c+o4g1ng/yeevML6L690z2kExl3vXAQiQGTzLHJVI6Pk0JXdtpBH0ywLLcDivcAmzzT7pR5zYv1mfgthDqxo1000XuiKbRGrmwh+36z0sNPOjdzf+39hJgUjMlKy2saDcO8ONw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(230273577357003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SHdNckdWOHFVR0p5VjlJL2Z1OUZVQ1lFRldsbCtKWmNDeU1vS3lKOEttOUIr?=
 =?utf-8?B?c1B3QUFubUNDVkdvWlVWVW9oRktQcDZjK2U1d1c4ZTNkc1hnMHVCQjk4MVdR?=
 =?utf-8?B?bDhFanhDQkNUWkMrYzVkbkdyWGFOOTc4VkpQSzBEbHh2V25ydHB4YUY5aXR2?=
 =?utf-8?B?MFA3T1ZTUDB3RVhXQzQxWUNJcjZJWng4RXpyVlFFZW5wT29FQ3czOUpVdzY0?=
 =?utf-8?B?THQzUWlrOUc0b1VSd3Y2U0pQNnJIZzhucHRzRHZTVkViUlBIL1RMclNucEJq?=
 =?utf-8?B?Sm9zRGZ0NU83SlFJUzRpYlJkNkphRVc4Nk9BMi9LcEtiaTNUR3IzMTFwL25W?=
 =?utf-8?B?WHJ2VDNudDRORWcvTWlraEs0cVJUcFdUQ2NFN3dZaXJiODZ4bjJ3T3gwMEs0?=
 =?utf-8?B?eXMxdStTeGpGbGpTbWdndG81d3lyUWhqS3hLbDVrSFR0U2VoS0RBNWhSZ2VJ?=
 =?utf-8?B?N2RGT2Myei9xM3A3bHA4bFdLS3hkV2ROTGMwTnRCZmVGSzVwVzIyK1VtcW55?=
 =?utf-8?B?TEljZmlyTHNNTmtpV3VyUkpJMDR2b085ekVvQjRhVU9wZU1vTWtocjcyTVBY?=
 =?utf-8?B?NVVKR1dCTlg4VVBGNXo4UU1sbU0wZkh5Q2hDbG9EeEhNMU9SK0I4NE0ycDhu?=
 =?utf-8?B?VzBrUG1xSnhZRkk2RzhMNm55TlVQUlhDTXRlcklySk5aNjJNZHdxSHVUbWVP?=
 =?utf-8?B?dTQxTkRzTjNHb0txby82RmNBK254TnhoVi8zQWF3K0xJU1hhaXIvUmZ2MDFS?=
 =?utf-8?B?MXl6NFlyZjB4ZTkyTTVxV2pHaGx3RXBucHgvNWx4aCtST2VRbysyYkliakFS?=
 =?utf-8?B?Q1N2RG80Wjl0OUZBQzlWeTNiQk4zczhKaEVTSWhBakRDWk93dzdmYUNJTTZM?=
 =?utf-8?B?dFBtV254WWU4b3B3enpyTmRwNjRnRkdXRGdncDJUT2RMMXpIMWlvVWRDaURa?=
 =?utf-8?B?dzB2cktFNlMvSHo1a1M3bURnTWVsZzkyZmhKZWJMZ3FMTE03MkV3RVFoaHBx?=
 =?utf-8?B?Rm9MRXZjQ3pwbGYvYm0wclFGdndiL1ZhTFBzRlU3VWlBb1BieW1uMStsck9m?=
 =?utf-8?B?MUR4aTJiWVUrTFZZTm5yLzlFVDdBdVRvQUxSanQvMVZLajNBN1pWTCtwUTJZ?=
 =?utf-8?B?VytBRnRTUy9ub2lUSjg3eEcwazBQbzhJdUgvemdhajZsTTNGV0x6SGwvSGlk?=
 =?utf-8?B?QTJZNjMwbHRBY2laZGt5RWRwOXdGUW1JVlZCUTNHN0VkSy9MbG5qZjB6Qit5?=
 =?utf-8?B?ZlM0azZ2R0UxTitjZ1dmOGYwMkxZeEgzay9hQ3BNRkZoZUs0UlhEY2hib1J0?=
 =?utf-8?B?dklsL1RoOWkwdTNleVMzM2dDbDVOdkRhYVIvVGdtMlRrd01iaHdPRURCNStu?=
 =?utf-8?B?R2N2bkhNc1RHWFlYcDVselRnRGhyUlJKbDR3aXplR3M4aGpDQ0IyN2FaZkY3?=
 =?utf-8?B?N0cxVTRvUGd3bncramUvWFJZQjBVMzRHUXRKNm85Z0g4WmlHRmlsU2g5SGNv?=
 =?utf-8?B?QitOM1ExWnVhbnF1VXk4Y3VjamFpa2krblBacHNXK2RDYVhnL1g3andiTHcw?=
 =?utf-8?B?eDRmaXBnME9zNkd2TmVQR3ZoOXlvUmIxckxjb2dxTTNGSUo2UjdtbnVPMGJH?=
 =?utf-8?B?RW1zbzErdklrZ1djWEVDSVBGVUdFSnZuSkdXeUJWTmdzdEhiOVFrcFhvMlpP?=
 =?utf-8?B?aUREUUJSelAwT3BGcVJMSlZqd2NGL2VVZU1ZUUdOeWpPTEdsWTdPbkltOC9K?=
 =?utf-8?B?UHV5TlNpbFo4YVppUkVHSjltb2IrUmc0L1pUTEFnLzJ6Qlo5a0g0MXlObXlm?=
 =?utf-8?B?T2w5Y1BIZGdzc2lCUVF4clJaOVdRNDlXVmk4cFFDNEdYQ2V3akNVSGUxcGZu?=
 =?utf-8?B?ejdHV0M4ZGg4TXg4Y01lYXpwUG5NaFhQeVNScEJ5K21Icld6QmQxUXBSejBs?=
 =?utf-8?B?SWtNNjZPOHQ1anFKYkFZSHlqQlllVW9HeTg0OE8rWVNiSWRZd2tKMlZqT0FX?=
 =?utf-8?B?eDlZS2gxUlFGNEtqUDlKMkJ1eWUrcytTZmpocmE0UFRPZWpvUXYvWmRWT2t1?=
 =?utf-8?B?enY0MDZYejdJVlBhTUE2SXdRaUpQNW9Qb2ZLZEhtNms4SmRNTjRtRHlYMUFI?=
 =?utf-8?B?N1hacm9xbTRlOG9yaE5GVlkwcG1jaXRXd3FRdHNsZmN2ZDV1cHFNUDJpOEdW?=
 =?utf-8?B?YlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 160eed80-b163-44ff-cf22-08dc3679f637
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Feb 2024 03:21:03.1932 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GDccGKklzWcbMGQT6Z0ZU1O/xE9RAGEgthKRyKxKgjWn0RJbmSj55z/y3sOgCyq/ddyFRa78FCQ+feNwfdxKb+fIDhcahyN9QE/v1kzj9BM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4732
X-OriginatorOrg: intel.com
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

Hi Dave and Sima,

Here's the PR for drm-xe-next for Linux v6.9. It's a big list of
changes, but it contains several fixes for things noticed throughout the
v6.8 cycle after being merged upstream, added to the linux-next, etc.
Approximately 30% are fixes already sent or on its way to v6.8.

First, the bad part: this still shows some issues of not being properly
integrated with our tooling, with this one being the worst:
https://lore.kernel.org/all/20240221173645.225a979d@canb.auug.org.au/.
Some of the committers didn't add their s-o-b while applying patches.  I
checked that all the affected patches do contain the s-o-b by the author
and come from the same company (Intel).

Also due to the same reason, some commits are missing a Link trailer to
the mailing list discussion. Often these patches were applied with bare
git-am or b4.

All of this should be fixed by now: dim is used for applying and pushing
patches, which has additional checks so that doesn't happen again. Still
pending confirmation from Daniel Stone if the git server hooks are ready
in gitlab so we properly forbid pushes without dim, like we do with the
git.fd.o infra.

Finally, we enabled again building for 32b, but on Friday we received
bug reports that it still fails with clang. There are some fixes being
reviewed and we should have them ready next week.

Summary of the changes are below.

drm-xe-next-2024-02-25:
drm/xe feature pull for v6.9: 

UAPI Changes:

- New query to the GuC firmware submission version. (José Roberto de Souza)
- Remove unused persistent exec_queues (Thomas Hellström)
- Add vram frequency sysfs attributes (Sujaritha Sundaresan, Rodrigo Vivi)
- Add the flag XE_VM_BIND_FLAG_DUMPABLE to notify devcoredump that mapping
   should be dumped (Maarten Lankhorst)

Cross-drivers Changes:

- Make sure intel_wakeref_t is treated as opaque type on i915-display
   and fix its type on xe

Driver Changes:

- Drop pre-production workarounds (Matt Roper)
- Drop kunit tests for unsuported platforms: PVC and pre-production DG2 (Lucas De Marchi)
- Start pumbling SR-IOV support with memory based interrupts
   for VF (Michal Wajdeczko)
- Allow to map BO in GGTT with PAT index corresponding to
   XE_CACHE_UC to work with memory based interrupts (Michal Wajdeczko)
- Improve logging with GT-oriented drm_printers (Michal Wajdeczko)
- Add GuC Doorbells Manager as prep work SR-IOV during
   VF provisioning ((Michal Wajdeczko)
- Refactor fake device handling in kunit integration ((Michal Wajdeczko)
- Implement additional workarounds for xe2 and MTL (Tejas Upadhyay,
   Lucas De Marchi, Shekhar Chauhan, Karthik Poosa)
- Program a few registers according to perfomance guide spec for Xe2 (Shekhar Chauhan)
- Add error handling for non-blocking communication with GuC (Daniele Ceraolo Spurio)
- Fix remaining 32b build issues and enable it back (Lucas De  Marchi)
- Fix build with CONFIG_DEBUG_FS=n (Jani Nikula)
- Fix warnings from GuC ABI headers (Matthew Brost)
- Introduce Relay Communication for SR-IOV for VF <-> GuC <-> PF (Michal Wajdeczko)
- Add mocs reset kunit (Ruthuvikas Ravikumar)
- Fix spellings (Colin Ian King)
- Disable mid-thread preemption when not properly supported by hardware (Nirmoy Das)
- Release mmap mappings on rpm suspend (Badal Nilawar)
- Fix BUG_ON on xe_exec by moving fence reservation to the validate stage (Matthew Auld)
- Fix xe_exec by reserving extra fence slot for CPU bind (Matthew Brost)
- Fix xe_exec with full long running exec queue, now returning
   -EWOULDBLOCK to userspace (Matthew Brost)
- Fix CT irq handler when CT is disabled (Matthew Brost)
- Fix VM_BIND_OP_UNMAP_ALL without any bound vmas (Thomas Hellström)
- Fix missing __iomem annotations (Thomas Hellström)
- Fix exec queue priority handling with GuC (Brian Welty)
- Fix setting SLPC flag to GuC when it's not supported (Vinay Belgaumkar)
- Fix C6 disabling without SLPC (Matt Roper)
- Drop -Wstringop-overflow to fix build with GCC11 (Paul E. McKenney)
- Circumvent bogus -Wstringop-overflow in one case (Arnd Bergmann)
- Refactor exec_queue user extensions handling and fix USM attributes
   being applied too late (Brian Welty)
- Use circ_buf head/tail convention (Matthew Brost)
- Fail build if circ_buf-related defines are modified with incompatible values
   (Matthew Brost)
- Fix several error paths (Dan Carpenter)
- Fix CCS copy for small VRAM copy chunks (Thomas Hellström)
- Rework driver initialization order and paths to account for driver running
   in VF mode (Michal Wajdeczko)
- Initialize GuC earlier during probe to handle driver in VF mode (Michał Winiarski)
- Fix migration use of MI_STORE_DATA_IMM to write PTEs (Matt Roper)
- Fix bounds checking in __xe_bo_placement_for_flags (Brian Welty)
- Drop display dependency on CONFIG_EXPERT (Jani Nikula)
- Do not hand-roll kstrdup when creating snapshot (Michal Wajdeczko)
- Stop creating one kunit module per kunit suite (Lucas De Marchi)
- Reduce scope and constify variables (Thomas Hellström, Jani Nikula, Michal Wajdeczko)
- Improve and document xe_guc_ct_send_recv() (Michal Wajdeczko)
- Add proxy communication between CSME and GSC uC (Daniele Ceraolo Spurio)
- Fix size calculation when writing pgtable (Fei Yang)
- Make sure cfb is page size aligned in stolen memory (Vinod Govindapillai)
- Stop printing guc log to dmesg when waiting for GuC fails (Rodrigo Vivi)
- Use XE_CACHE_WB instead of XE_CACHE_NONE for cpu coherency on migration
   (Himal Prasad Ghimiray)
- Fix error path in xe_vm_create (Moti Haimovski)
- Fix warnings in doc generation (Thomas Hellström, Badal Nilawar)
- Improve devcoredump content for mesa debugging (José Roberto de Souza)
- Fix crash in trace_dma_fence_init() (José Roberto de Souza)
- Improve CT state change handling (Matthew Brost)
- Toggle USM support for Xe2 (Lucas De Marchi)
- Reduces code duplication to emit PIPE_CONTROL (José Roberto de Souza)
- Canonicalize addresses where needed for Xe2 and add to devcoredump
   (José Roberto de Souza)
- Only allow 1 ufence per exec / bind IOCTL (Matthew Brost)
- Move all display code to display/ (Jani Nikula)
- Fix sparse warnings by correctly using annotations (Thomas Hellström)
- Warn on job timeouts instead of using asserts (Matt Roper)
- Prefix macros to avoid clashes with sparc (Matthew Brost)
- Fix -Walloc-size by subclassing instead of allocating size smaller than struct (Thomas Hellström)
- Add status check during gsc header readout (Suraj Kandpal)
- Fix infinite loop in vm_bind_ioctl_ops_unwind() (Matthew Brost)
- Fix fence refcounting (Matthew Brost)
- Fix picking incorrect userptr VMA (Matthew Brost)
- Fix USM on integrated by mapping both mem.kernel_bb_pool and usm.bb_pool (Matthew Brost)
- Fix double initialization of display power domains (Xiaoming Wang)
- Check expected uC versions by major.minor.patch instead of just major.minor (John Harrison)
- Bump minimum GuC version to 70.19.2 for all platforms under force-probe
   (John Harrison)
- Add GuC firmware loading for Lunar Lake (John Harrison)
- Use kzalloc() instead of hand-rolled alloc + memset (Nirmoy Das)
- Fix max page size of VMA during a REMAP (Matthew Brost)
- Don't ignore error when pinning pages in kthread (Matthew Auld)
- Refactor xe hwmon (Karthik Poosa)
- Add debug logs for D3cold (Riana Tauro)
- Remove broken TEST_VM_ASYNC_OPS_ERROR (Matthew Brost)
- Always allow to override firmware blob with module param and improve
   log when no firmware is found (Lucas De Marchi)
- Fix shift-out-of-bounds due to xe_vm_prepare_vma() accepting zero fences (Thomas Hellström)
- Fix shift-out-of-bounds by distinguishing xe_pt/xe_pt_dir subclass (Thomas Hellström)
- Fail driver bind if platform supports MSIX, but fails to allocate all of them (Dani Liberman)
- Fix intel_fbdev thinking memory is backed by shmem (Matthew Auld)
- Prefer drm_dbg() over dev_dbg() (Jani Nikula)
- Avoid function cast warnings with clang-16 (Arnd Bergmann)
- Enhance xe_bo_move trace (Priyanka Dandamudi)
- Fix xe_vma_set_pte_size() not setting the right gpuva.flags for 4K size (Matthew Brost)
- Add XE_VMA_PTE_64K VMA flag (Matthew Brost)
- Return 2MB page size for compact 64k PTEs (Matthew Brost)
- Remove usage of the deprecated ida_simple_xx() API (Christophe JAILLET)
- Fix modpost warning on xe_mocs live kunit module (Ashutosh Dixit)
- Drop extra newline in from sysfs files (Ashutosh Dixit)
- Implement VM snapshot support for BO's and userptr (Maarten Lankhorst)
- Add debug logs when skipping rebinds (Matthew Brost)
- Fix code generation when mixing build directories (Dafna Hirschfeld)
- Prefer struct_size over open coded arithmetic (Erick Archer)

The following changes since commit 9ac4beb7578a88baa4f7e6a59eeb5be79d7b011a:

   Merge tag 'drm-misc-next-2024-02-15' of git://anongit.freedesktop.org/drm/drm-misc into drm-next (2024-02-16 13:16:40 +1000)

are available in the Git repository at:

   ssh://git@gitlab.freedesktop.org/drm/xe/kernel.git tags/drm-xe-next-2024-02-25

for you to fetch changes up to a7a3d73686f5837916ebffda77afa4343754e7dc:

   drm/xe: Prefer struct_size over open coded arithmetic (2024-02-22 20:58:20 -0800)

----------------------------------------------------------------
drm/xe feature pull for v6.9:

UAPI Changes:

- New query to the GuC firmware submission version. (José Roberto de Souza)
- Remove unused persistent exec_queues (Thomas Hellström)
- Add vram frequency sysfs attributes (Sujaritha Sundaresan, Rodrigo Vivi)
- Add the flag XE_VM_BIND_FLAG_DUMPABLE to notify devcoredump that mapping
   should be dumped (Maarten Lankhorst)

Cross-drivers Changes:

- Make sure intel_wakeref_t is treated as opaque type on i915-display
   and fix its type on xe

Driver Changes:

- Drop pre-production workarounds (Matt Roper)
- Drop kunit tests for unsuported platforms: PVC and pre-production DG2 (Lucas De Marchi)
- Start pumbling SR-IOV support with memory based interrupts
   for VF (Michal Wajdeczko)
- Allow to map BO in GGTT with PAT index corresponding to
   XE_CACHE_UC to work with memory based interrupts (Michal Wajdeczko)
- Improve logging with GT-oriented drm_printers (Michal Wajdeczko)
- Add GuC Doorbells Manager as prep work SR-IOV during
   VF provisioning ((Michal Wajdeczko)
- Refactor fake device handling in kunit integration ((Michal Wajdeczko)
- Implement additional workarounds for xe2 and MTL (Tejas Upadhyay,
   Lucas De Marchi, Shekhar Chauhan, Karthik Poosa)
- Program a few registers according to perfomance guide spec for Xe2 (Shekhar Chauhan)
- Add error handling for non-blocking communication with GuC (Daniele Ceraolo Spurio)
- Fix remaining 32b build issues and enable it back (Lucas De  Marchi)
- Fix build with CONFIG_DEBUG_FS=n (Jani Nikula)
- Fix warnings from GuC ABI headers (Matthew Brost)
- Introduce Relay Communication for SR-IOV for VF <-> GuC <-> PF (Michal Wajdeczko)
- Add mocs reset kunit (Ruthuvikas Ravikumar)
- Fix spellings (Colin Ian King)
- Disable mid-thread preemption when not properly supported by hardware (Nirmoy Das)
- Release mmap mappings on rpm suspend (Badal Nilawar)
- Fix BUG_ON on xe_exec by moving fence reservation to the validate stage (Matthew Auld)
- Fix xe_exec by reserving extra fence slot for CPU bind (Matthew Brost)
- Fix xe_exec with full long running exec queue, now returning
   -EWOULDBLOCK to userspace (Matthew Brost)
- Fix CT irq handler when CT is disabled (Matthew Brost)
- Fix VM_BIND_OP_UNMAP_ALL without any bound vmas (Thomas Hellström)
- Fix missing __iomem annotations (Thomas Hellström)
- Fix exec queue priority handling with GuC (Brian Welty)
- Fix setting SLPC flag to GuC when it's not supported (Vinay Belgaumkar)
- Fix C6 disabling without SLPC (Matt Roper)
- Drop -Wstringop-overflow to fix build with GCC11 (Paul E. McKenney)
- Circumvent bogus -Wstringop-overflow in one case (Arnd Bergmann)
- Refactor exec_queue user extensions handling and fix USM attributes
   being applied too late (Brian Welty)
- Use circ_buf head/tail convention (Matthew Brost)
- Fail build if circ_buf-related defines are modified with incompatible values
   (Matthew Brost)
- Fix several error paths (Dan Carpenter)
- Fix CCS copy for small VRAM copy chunks (Thomas Hellström)
- Rework driver initialization order and paths to account for driver running
   in VF mode (Michal Wajdeczko)
- Initialize GuC earlier during probe to handle driver in VF mode (Michał Winiarski)
- Fix migration use of MI_STORE_DATA_IMM to write PTEs (Matt Roper)
- Fix bounds checking in __xe_bo_placement_for_flags (Brian Welty)
- Drop display dependency on CONFIG_EXPERT (Jani Nikula)
- Do not hand-roll kstrdup when creating snapshot (Michal Wajdeczko)
- Stop creating one kunit module per kunit suite (Lucas De Marchi)
- Reduce scope and constify variables (Thomas Hellström, Jani Nikula, Michal Wajdeczko)
- Improve and document xe_guc_ct_send_recv() (Michal Wajdeczko)
- Add proxy communication between CSME and GSC uC (Daniele Ceraolo Spurio)
- Fix size calculation when writing pgtable (Fei Yang)
- Make sure cfb is page size aligned in stolen memory (Vinod Govindapillai)
- Stop printing guc log to dmesg when waiting for GuC fails (Rodrigo Vivi)
- Use XE_CACHE_WB instead of XE_CACHE_NONE for cpu coherency on migration
   (Himal Prasad Ghimiray)
- Fix error path in xe_vm_create (Moti Haimovski)
- Fix warnings in doc generation (Thomas Hellström, Badal Nilawar)
- Improve devcoredump content for mesa debugging (José Roberto de Souza)
- Fix crash in trace_dma_fence_init() (José Roberto de Souza)
- Improve CT state change handling (Matthew Brost)
- Toggle USM support for Xe2 (Lucas De Marchi)
- Reduces code duplication to emit PIPE_CONTROL (José Roberto de Souza)
- Canonicalize addresses where needed for Xe2 and add to devcoredump
   (José Roberto de Souza)
- Only allow 1 ufence per exec / bind IOCTL (Matthew Brost)
- Move all display code to display/ (Jani Nikula)
- Fix sparse warnings by correctly using annotations (Thomas Hellström)
- Warn on job timeouts instead of using asserts (Matt Roper)
- Prefix macros to avoid clashes with sparc (Matthew Brost)
- Fix -Walloc-size by subclassing instead of allocating size smaller than struct (Thomas Hellström)
- Add status check during gsc header readout (Suraj Kandpal)
- Fix infinite loop in vm_bind_ioctl_ops_unwind() (Matthew Brost)
- Fix fence refcounting (Matthew Brost)
- Fix picking incorrect userptr VMA (Matthew Brost)
- Fix USM on integrated by mapping both mem.kernel_bb_pool and usm.bb_pool (Matthew Brost)
- Fix double initialization of display power domains (Xiaoming Wang)
- Check expected uC versions by major.minor.patch instead of just major.minor (John Harrison)
- Bump minimum GuC version to 70.19.2 for all platforms under force-probe
   (John Harrison)
- Add GuC firmware loading for Lunar Lake (John Harrison)
- Use kzalloc() instead of hand-rolled alloc + memset (Nirmoy Das)
- Fix max page size of VMA during a REMAP (Matthew Brost)
- Don't ignore error when pinning pages in kthread (Matthew Auld)
- Refactor xe hwmon (Karthik Poosa)
- Add debug logs for D3cold (Riana Tauro)
- Remove broken TEST_VM_ASYNC_OPS_ERROR (Matthew Brost)
- Always allow to override firmware blob with module param and improve
   log when no firmware is found (Lucas De Marchi)
- Fix shift-out-of-bounds due to xe_vm_prepare_vma() accepting zero fences (Thomas Hellström)
- Fix shift-out-of-bounds by distinguishing xe_pt/xe_pt_dir subclass (Thomas Hellström)
- Fail driver bind if platform supports MSIX, but fails to allocate all of them (Dani Liberman)
- Fix intel_fbdev thinking memory is backed by shmem (Matthew Auld)
- Prefer drm_dbg() over dev_dbg() (Jani Nikula)
- Avoid function cast warnings with clang-16 (Arnd Bergmann)
- Enhance xe_bo_move trace (Priyanka Dandamudi)
- Fix xe_vma_set_pte_size() not setting the right gpuva.flags for 4K size (Matthew Brost)
- Add XE_VMA_PTE_64K VMA flag (Matthew Brost)
- Return 2MB page size for compact 64k PTEs (Matthew Brost)
- Remove usage of the deprecated ida_simple_xx() API (Christophe JAILLET)
- Fix modpost warning on xe_mocs live kunit module (Ashutosh Dixit)
- Drop extra newline in from sysfs files (Ashutosh Dixit)
- Implement VM snapshot support for BO's and userptr (Maarten Lankhorst)
- Add debug logs when skipping rebinds (Matthew Brost)
- Fix code generation when mixing build directories (Dafna Hirschfeld)
- Prefer struct_size over open coded arithmetic (Erick Archer)

----------------------------------------------------------------
Arnd Bergmann (2):
       drm/xe: circumvent bogus stringop-overflow warning
       drm/xe: avoid function cast warnings

Ashutosh Dixit (2):
       drm/xe/xe_gt_idle: Drop redundant newline in name
       drm/xe: Fix modpost warning on xe_mocs kunit module

Badal Nilawar (3):
       drm/xe/dgfx: Release mmap mappings on rpm suspend
       drm/xe/xe_debugfs: Print skip_guc_pc in xe info
       drm/hwmon: Fix abi doc warnings

Brian Welty (7):
       drm/xe: Fix guc_exec_queue_set_priority
       drm/xe: Fix modifying exec_queue priority in xe_migrate_init
       drm/xe: Refactor __xe_exec_queue_create()
       drm/xe: Add exec_queue.sched_props.job_timeout_ms
       drm/xe: Finish refactoring of exec_queue_create
       drm/xe: Remove set_job_timeout_ms() from exec_queue_ops
       drm/xe: Fix bounds checking in __xe_bo_placement_for_flags()

Christophe JAILLET (1):
       drm/xe/guc: Remove usage of the deprecated ida_simple_xx() API

Colin Ian King (1):
       drm/xe: Fix spelling mistake "gueue" -> "queue"

Dafna Hirschfeld (1):
       drm/xe: Do not include current dir for generated/xe_wa_oob.h

Dan Carpenter (3):
       drm/xe/device: clean up on error in probe()
       drm/xe/selftests: Fix an error pointer dereference bug
       drm/xe: unlock on error path in xe_vm_add_compute_exec_queue()

Dani Liberman (1):
       drm/xe/irq: allocate all possible msix interrupts

Daniele Ceraolo Spurio (3):
       drm/xe/guc: Use FAST_REQUEST for non-blocking H2G messages
       drm/xe/gsc: Initialize GSC proxy
       drm/xe/gsc: add support for GSC proxy interrupt

Erick Archer (1):
       drm/xe: Prefer struct_size over open coded arithmetic

Fei Yang (2):
       drm/xe: correct the calculation of remaining size
       drm/xe: correct the assertion for number of PTEs

Himal Prasad Ghimiray (1):
       drm/xe/xe2: Use XE_CACHE_WB pat index

Jani Nikula (11):
       drm/i915: don't make assumptions about intel_wakeref_t type
       drm/xe: display support should not depend on EXPERT
       drm/xe: make xe_ttm_funcs const
       drm/xe: make heci_gsc_irq_chip const
       drm/xe: make hwmon_info const
       drm/xe: make gpuvm_ops const
       drm/xe: constify engine class sysfs attributes
       drm/xe: don't build debugfs files when CONFIG_DEBUG_FS=n
       drm/xe: move xe_display.[ch] under display/
       drm/xe: drop display/ subdir from include directories
       drm/xe: use drm based debugging instead of dev

John Harrison (3):
       drm/xe/uc: Include patch version in expectations
       drm/xe/guc: Update to GuC firmware 70.19.2
       drm/xe/guc: Add support for LNL firmware

José Roberto de Souza (14):
       drm/xe/uapi: Remove DRM_XE_VM_BIND_FLAG_ASYNC comment left over
       drm/xe: Fix definition of intel_wakeref_t
       drm/xe: Use intel_wakeref_t in intel_runtime_pm functions
       drm/xe: Remove double new lines in devcoredump
       drm/xe: Change devcoredump functions parameters to xe_sched_job
       drm/xe: Nuke xe from xe_devcoredump
       drm/xe: Print more device information in devcoredump
       drm/xe: Print registers spread in 2 u32 as u64
       drm/xe: Remove additional spaces in devcoredump HW Engines section
       drm/xe: Fix crash in trace_dma_fence_init()
       drm/xe: Use function to emit PIPE_CONTROL
       drm/xe: Add functions to convert regular address to canonical address and back
       drm/xe: Add batch buffer addresses to devcoredump
       drm/xe: Add uAPI to query GuC firmware submission version

Karthik Poosa (3):
       drm/xe/guc: Enable WA 14018913170
       drm/xe/guc: Reduce a print from warn to debug
       drm/xe/hwmon: Refactor xe hwmon

Lucas De Marchi (18):
       drm/xe: Fix warning on impossible condition
       drm/xe: Disable 32bits build
       drm/xe/xe2: Add workaround 16020183090
       drm/xe/kunit: Drop xe_wa tests for pre-production DG2
       drm/xe: Group normal kunit tests in a single module
       drm/xe: Use _ULL for u64 division
       drm/xe/mmio: Cast to u64 when printing
       drm/xe/display: Avoid calling readq()
       drm/xe: Fix cast on trace variable
       drm/xe: Enable 32bits build
       Merge drm/drm-next into drm-xe-next
       drm/xe: Remove PVC from xe_wa kunit tests
       drm/xe/xe2: Enable has_usm
       drm/xe: Always allow to override firmware
       drm/xe: Avoid cryptic message when there's no GuC definition
       drm/xe: Enable 32bits build
       Merge drm/drm-next into drm-xe-next
       drm/xe: Use pointers in trace events

Maarten Lankhorst (6):
       drm/xe/snapshot: Remove drm_err on guc alloc failures
       drm/xe: Clear all snapshot members after deleting coredump
       drm/xe: Add uapi for dumpable bos
       drm/xe: Annotate each dumpable vma as such
       drm/xe: Add vm snapshot mutex for easily taking a vm snapshot during devcoredump
       drm/xe: Implement VM snapshot support for BO's and userptr

Matt Roper (5):
       drm/xe/dg2: Drop pre-production workarounds
       drm/xe/migrate: Cap PTEs written by MI_STORE_DATA_IMM to 510
       drm/xe: Stash GMD_ID value in xe_gt
       drm/xe: Grab mem_access when disabling C6 on skip_guc_pc platforms
       drm/xe: Convert job timeouts from assert to warning

Matthew Auld (4):
       drm/xe/exec: move fence reservation
       drm/xe/exec: reserve fence slot for CPU bind
       drm/xe/vm: don't ignore error when in_kthread
       drm/xe/display: fix i915_gem_object_is_shmem() wrapper

Matthew Brost (25):
       drm/xe: Fix UBSAN splat in add_preempt_fences()
       drm/xe: Fix exec IOCTL long running exec queue ring full condition
       drm/xe/guc: Only take actions in CT irq handler if CTs are enabled
       drm/xe: Add build on bug to assert page fault queue works
       drm/xe: Invert page fault queue head / tail
       drm/xe: Add build on bug to assert access counter queue works
       drm/xe: Invert access counter queue head / tail
       drm/xe/guc: Add more GuC CT states
       drm/xe: Move TLB invalidation reset before HW reset
       drm/xe/guc: Flush G2H handler when turning off CTs
       drm/xe: Only allow 1 ufence per exec / bind IOCTL
       drm/xe: Make all GuC ABI shift values unsigned
       drm/xe: Use LRC prefix rather than CTX prefix in lrc desc defines
       drm/xe: Fix loop in vm_bind_ioctl_ops_unwind
       drm/xe: Drop rebind argument from xe_pt_prepare_bind
       drm/xe: Take a reference in xe_exec_queue_last_fence_get()
       drm/xe: Pick correct userptr VMA to repin on REMAP op failure
       drm/xe: Map both mem.kernel_bb_pool and usm.bb_pool
       drm/xe: Assume large page size if VMA not yet bound
       drm/xe: Remove TEST_VM_ASYNC_OPS_ERROR
       drm/xe: Remove exec queue bind.fence_*
       drm/xe: Fix xe_vma_set_pte_size
       drm/xe: Add XE_VMA_PTE_64K VMA flag
       drm/xe: Return 2MB page size for compact 64k PTEs
       drm/xe: Add debug prints for skipping rebinds

Michal Wajdeczko (49):
       drm/xe: Add command MI_LOAD_REGISTER_MEM
       drm/xe: Define registers used by memory based irq processing
       drm/xe: Update LRC context layout definitions
       drm/xe: Update definition of GT_INTR_DW
       drm/xe: Define IRQ offsets used by HW engines
       drm/xe: Add XE_BO_NEEDS_UC flag to force UC mode instead WB
       drm/xe/vf: Introduce Memory Based Interrupts Handler
       drm/xe/vf: Update LRC with memory based interrupts data
       drm/xe/vf: Setup memory based interrupts in GuC
       drm/xe/vf: Add VF specific interrupt handler
       drm/xe: Add GT oriented drm_printers
       drm/xe: Report TLB timeout using GT oriented functions
       drm/xe: Introduce GuC Doorbells Manager
       drm/xe/kunit: Set SR-IOV mode of the fake device
       drm/xe/kunit: Define helper functions to allocate fake xe device
       drm/xe/kunit: Restore test->priv when done with fake xe device
       drm/xe/kunit: Use xe kunit helper in RTP test
       drm/xe/kunit: Use xe kunit helper in WA test
       drm/xe/kunit: Enable CONFIG_LOCKDEP in tests
       drm/xe/kunit: Add GuC Doorbells Manager tests
       drm/xe: Allocate dedicated workqueue for SR-IOV workers
       drm/xe: Define Virtual Function Identifier
       drm/xe: Introduce GT-oriented SR-IOV logging macros
       drm/xe/guc: Add helpers for HXG messages
       drm/xe/guc: Update few GuC CTB ABI definitions
       drm/xe/guc: Add Relay Communication ABI definitions
       drm/xe/guc: Introduce Relay Communication for SR-IOV
       drm/xe/kunit: Allow to replace xe_guc_ct_send_recv() with stub
       drm/xe/kunit: Add GuC Relay kunit tests
       drm/xe/guc: Start handling GuC Relay event messages
       drm/xe: Fix compilation without CONFIG_KUNIT
       drm/xe: Split GuC communication initialization
       drm/xe/guc: Treat non-response message after BUSY as unexpected
       drm/xe/guc: Return CTB response length
       drm/xe/guc: Use HXG definitions on HXG messages
       drm/xe: Allow to exclude part of GGTT from allocations
       drm/xe: Fix potential deadlock in __fini_dbm
       drm/xe: Use kstrdup while creating snapshot
       drm/xe: Mark internal gmdid mappings as const
       drm/xe/guc: Return CTB HXG response DATA0 if no buffer provided
       drm/xe/guc: Add kernel-doc for xe_guc_ct_send_recv()
       drm/xe/vf: Assume fixed GSM size if VF
       drm/xe/vf: Don't try to capture engine data unavailable to VF
       drm/xe/vf: Don't program MOCS if VF
       drm/xe/vf: Don't initialize stolen memory manager if VF
       drm/xe/vf: Don't check if LMEM is initialized if VF
       drm/xe/vf: Don't enable hwmon if VF
       drm/xe/vf: Don't program PAT if VF
       drm/xe/vf: Don't support MCR registers if VF

Michał Winiarski (4):
       drm/xe/guc: Allocate GuC data structures in system memory for initial load
       drm/xe/huc: Realloc HuC FW in vram for post-hwconfig
       drm/xe/guc: Move GuC power control init to "post-hwconfig"
       drm/xe: Initialize GuC earlier during probe

Moti Haimovski (1):
       drm/xe/vm: bugfix in xe_vm_create_ioctl

Nirmoy Das (2):
       drm/xe/xe2: synchronise CS_CHICKEN1 with WMTP support
       drm/xe/query: Use kzalloc for drm_xe_query_engines

Paul E. McKenney (1):
       drm/xe: Fix build bug for GCC 11

Priyanka Dandamudi (1):
       drm/xe/xe_bo_move: Enhance xe_bo_move trace

Riana Tauro (1):
       drm/xe/pm: add debug logs for D3cold

Rodrigo Vivi (1):
       drm/xe: Do not flood dmesg with guc log

Ruthuvikas Ravikumar (1):
       drm/xe: Add mocs reset kunit

Shekhar Chauhan (2):
       drm/xe/xe2_lpg: Add Wa_16018610683
       drm/xe/xe2_lpg: Introduce performance guide changes

Sujaritha Sundaresan (2):
       drm/xe: Add vram frequency sysfs attributes
       drm/xe: Fix typo in vram frequency sysfs documentation

Suraj Kandpal (1):
       drm/xe/gsc: Add status check during gsc header readout

Tejas Upadhyay (1):
       drm/xe/xelpg: Extend Wa_14019877138 for Graphics 12.70/71

Thomas Hellström (15):
       drm/xe/vm: Fix an error path
       drm/xe: Use __iomem for the regs pointer
       drm/xe: Annotate xe_mem_region::mapping with __iomem
       drm/xe: Annotate multiple mmio pointers with __iomem
       drm/xe: Annotate xe_ttm_stolen_mgr::mapping with __iomem
       drm/xe/migrate: Fix CCS copy for small VRAM copy chunks
       drm/xe/dmabuf: Make xe_dmabuf_ops static
       drm/xe: Use a NULL pointer instead of 0.
       drm/xe: Document nested struct members according to guidelines
       drm/xe: Annotate mcr_[un]lock()
       drm/xe: Don't use __user error pointers
       drm/xe/vm: Subclass userptr vmas
       drm/xe/vm: Avoid reserving zero fences
       drm/xe/pt: Allow for stricter type- and range checking
       drm/xe/uapi: Remove support for persistent exec_queues

Vinay Belgaumkar (1):
       drm/xe: Check skip_guc_pc before setting SLPC flag

Vinod Govindapillai (1):
       drm/xe: Modify the cfb size to be page size aligned for FBC

Xiaoming Wang (1):
       drm/xe/display: Fix memleak in display initialization

  drivers/gpu/drm/xe/.kunitconfig                    |   5 +
  drivers/gpu/drm/xe/Kconfig                         |   2 +-
  drivers/gpu/drm/xe/Makefile                        |  40 +-
  drivers/gpu/drm/xe/abi/gsc_proxy_commands_abi.h    |  44 +
  drivers/gpu/drm/xe/abi/guc_actions_sriov_abi.h     | 174 ++++
  drivers/gpu/drm/xe/abi/guc_communication_ctb_abi.h |   3 +-
  drivers/gpu/drm/xe/abi/guc_messages_abi.h          |   2 +
  drivers/gpu/drm/xe/abi/guc_relay_actions_abi.h     |  79 ++
  .../gpu/drm/xe/abi/guc_relay_communication_abi.h   | 118 +++
  .../xe/compat-i915-headers/gem/i915_gem_object.h   |   2 +-
  drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h  |  10 +-
  .../drm/xe/compat-i915-headers/i915_gem_stolen.h   |   3 +
  drivers/gpu/drm/xe/{ => display}/xe_display.c      |   6 -
  drivers/gpu/drm/xe/{ => display}/xe_display.h      |   0
  drivers/gpu/drm/xe/instructions/xe_mi_commands.h   |   3 +
  drivers/gpu/drm/xe/regs/xe_engine_regs.h           |   6 +
  drivers/gpu/drm/xe/regs/xe_gt_regs.h               |  27 +-
  drivers/gpu/drm/xe/regs/xe_lrc_layout.h            |   9 +
  drivers/gpu/drm/xe/regs/xe_pcode_regs.h            |  21 +
  drivers/gpu/drm/xe/tests/Makefile                  |   7 +-
  drivers/gpu/drm/xe/tests/xe_guc_db_mgr_test.c      | 201 +++++
  drivers/gpu/drm/xe/tests/xe_guc_relay_test.c       | 522 ++++++++++++
  drivers/gpu/drm/xe/tests/xe_kunit_helpers.c        |  90 ++
  drivers/gpu/drm/xe/tests/xe_kunit_helpers.h        |  17 +
  drivers/gpu/drm/xe/tests/xe_mocs.c                 |  36 +
  drivers/gpu/drm/xe/tests/xe_mocs_test.c            |   2 +
  drivers/gpu/drm/xe/tests/xe_mocs_test.h            |   1 +
  drivers/gpu/drm/xe/tests/xe_pci.c                  |   3 +
  drivers/gpu/drm/xe/tests/xe_pci_test.c             |   5 -
  drivers/gpu/drm/xe/tests/xe_pci_test.h             |   2 +
  drivers/gpu/drm/xe/tests/xe_rtp_test.c             |  10 +-
  drivers/gpu/drm/xe/tests/xe_test_mod.c             |  10 +
  drivers/gpu/drm/xe/tests/xe_wa_test.c              |  16 +-
  drivers/gpu/drm/xe/xe_bo.c                         | 101 ++-
  drivers/gpu/drm/xe/xe_bo.h                         |   7 +-
  drivers/gpu/drm/xe/xe_bo_types.h                   |   3 +
  drivers/gpu/drm/xe/xe_debugfs.c                    |   1 +
  drivers/gpu/drm/xe/xe_devcoredump.c                |  55 +-
  drivers/gpu/drm/xe/xe_devcoredump.h                |   6 +-
  drivers/gpu/drm/xe/xe_devcoredump_types.h          |  13 +-
  drivers/gpu/drm/xe/xe_device.c                     | 114 ++-
  drivers/gpu/drm/xe/xe_device.h                     |  14 +-
  drivers/gpu/drm/xe/xe_device_types.h               | 174 ++--
  drivers/gpu/drm/xe/xe_drm_client.c                 |  12 +-
  drivers/gpu/drm/xe/xe_exec.c                       |  42 +-
  drivers/gpu/drm/xe/xe_exec_queue.c                 | 168 ++--
  drivers/gpu/drm/xe/xe_exec_queue.h                 |   3 +-
  drivers/gpu/drm/xe/xe_exec_queue_types.h           |  59 +-
  drivers/gpu/drm/xe/xe_execlist.c                   |  10 -
  drivers/gpu/drm/xe/xe_ggtt.c                       |  81 +-
  drivers/gpu/drm/xe/xe_ggtt.h                       |   3 +
  drivers/gpu/drm/xe/xe_gsc.c                        |  71 +-
  drivers/gpu/drm/xe/xe_gsc.h                        |   1 +
  drivers/gpu/drm/xe/xe_gsc_proxy.c                  | 537 ++++++++++++
  drivers/gpu/drm/xe/xe_gsc_proxy.h                  |  20 +
  drivers/gpu/drm/xe/xe_gsc_submit.c                 |  20 +
  drivers/gpu/drm/xe/xe_gsc_submit.h                 |   1 +
  drivers/gpu/drm/xe/xe_gsc_types.h                  |  33 +
  drivers/gpu/drm/xe/xe_gt.c                         |  92 +-
  drivers/gpu/drm/xe/xe_gt.h                         |   2 +
  drivers/gpu/drm/xe/xe_gt_idle.c                    |   4 +-
  drivers/gpu/drm/xe/xe_gt_mcr.c                     |  17 +
  drivers/gpu/drm/xe/xe_gt_pagefault.c               |  40 +-
  drivers/gpu/drm/xe/xe_gt_printk.h                  |  44 +
  drivers/gpu/drm/xe/xe_gt_sriov_printk.h            |  34 +
  drivers/gpu/drm/xe/xe_gt_tlb_invalidation.c        |  13 +-
  drivers/gpu/drm/xe/xe_gt_types.h                   | 118 +--
  drivers/gpu/drm/xe/xe_guc.c                        | 115 ++-
  drivers/gpu/drm/xe/xe_guc.h                        |   1 +
  drivers/gpu/drm/xe/xe_guc_ads.c                    |   2 +-
  drivers/gpu/drm/xe/xe_guc_ct.c                     | 255 ++++--
  drivers/gpu/drm/xe/xe_guc_ct.h                     |  12 +-
  drivers/gpu/drm/xe/xe_guc_ct_types.h               |  22 +-
  drivers/gpu/drm/xe/xe_guc_db_mgr.c                 | 266 ++++++
  drivers/gpu/drm/xe/xe_guc_db_mgr.h                 |  22 +
  drivers/gpu/drm/xe/xe_guc_fwif.h                   |   1 +
  drivers/gpu/drm/xe/xe_guc_hwconfig.c               |   2 +-
  drivers/gpu/drm/xe/xe_guc_hxg_helpers.h            | 108 +++
  drivers/gpu/drm/xe/xe_guc_log.c                    |   2 +-
  drivers/gpu/drm/xe/xe_guc_pc.c                     |  19 +-
  drivers/gpu/drm/xe/xe_guc_pc.h                     |   1 -
  drivers/gpu/drm/xe/xe_guc_relay.c                  | 941 +++++++++++++++++++++
  drivers/gpu/drm/xe/xe_guc_relay.h                  |  37 +
  drivers/gpu/drm/xe/xe_guc_relay_types.h            |  36 +
  drivers/gpu/drm/xe/xe_guc_submit.c                 |  87 +-
  drivers/gpu/drm/xe/xe_guc_submit.h                 |   4 +-
  drivers/gpu/drm/xe/xe_guc_submit_types.h           |  18 +-
  drivers/gpu/drm/xe/xe_guc_types.h                  |  47 +-
  drivers/gpu/drm/xe/xe_heci_gsc.c                   |   2 +-
  drivers/gpu/drm/xe/xe_huc.c                        |  19 +
  drivers/gpu/drm/xe/xe_huc.h                        |   1 +
  drivers/gpu/drm/xe/xe_hw_engine.c                  | 144 ++--
  drivers/gpu/drm/xe/xe_hw_engine_class_sysfs.c      |  38 +-
  drivers/gpu/drm/xe/xe_hw_engine_types.h            |  82 +-
  drivers/gpu/drm/xe/xe_hwmon.c                      |  32 +-
  drivers/gpu/drm/xe/xe_irq.c                        | 136 ++-
  drivers/gpu/drm/xe/xe_lrc.c                        |  38 +
  drivers/gpu/drm/xe/xe_lrc_types.h                  |   6 +-
  drivers/gpu/drm/xe/xe_memirq.c                     | 430 ++++++++++
  drivers/gpu/drm/xe/xe_memirq.h                     |  26 +
  drivers/gpu/drm/xe/xe_memirq_types.h               |  37 +
  drivers/gpu/drm/xe/xe_migrate.c                    |  53 +-
  drivers/gpu/drm/xe/xe_mmio.c                       |   9 +-
  drivers/gpu/drm/xe/xe_mocs.c                       |  27 +-
  drivers/gpu/drm/xe/xe_pat.c                        |   5 +
  drivers/gpu/drm/xe/xe_pci.c                        |  10 +-
  drivers/gpu/drm/xe/xe_pcode_api.h                  |   7 +
  drivers/gpu/drm/xe/xe_pm.c                         |  38 +-
  drivers/gpu/drm/xe/xe_pm.h                         |   1 +
  drivers/gpu/drm/xe/xe_pt.c                         |  55 +-
  drivers/gpu/drm/xe/xe_pt_walk.c                    |   2 +-
  drivers/gpu/drm/xe/xe_pt_walk.h                    |  19 +-
  drivers/gpu/drm/xe/xe_query.c                      |  50 +-
  drivers/gpu/drm/xe/xe_range_fence.c                |   7 +-
  drivers/gpu/drm/xe/xe_reg_whitelist.c              |   8 +
  drivers/gpu/drm/xe/xe_ring_ops.c                   |  60 +-
  drivers/gpu/drm/xe/xe_sched_job.c                  |  39 +-
  drivers/gpu/drm/xe/xe_sched_job.h                  |   5 +
  drivers/gpu/drm/xe/xe_sched_job_types.h            |  11 +-
  drivers/gpu/drm/xe/xe_sriov.c                      |  32 +
  drivers/gpu/drm/xe/xe_sriov.h                      |   1 +
  drivers/gpu/drm/xe/xe_sriov_types.h                |  12 +
  drivers/gpu/drm/xe/xe_sync.c                       |   2 -
  drivers/gpu/drm/xe/xe_tile_sysfs.c                 |   3 +
  drivers/gpu/drm/xe/xe_trace.h                      |  55 +-
  drivers/gpu/drm/xe/xe_ttm_stolen_mgr.c             |   8 +-
  drivers/gpu/drm/xe/xe_tuning.c                     |   9 +-
  drivers/gpu/drm/xe/xe_uc.c                         |  33 +-
  drivers/gpu/drm/xe/xe_uc.h                         |   1 +
  drivers/gpu/drm/xe/xe_uc_fw.c                      |  60 +-
  drivers/gpu/drm/xe/xe_uc_fw_types.h                |   9 +-
  drivers/gpu/drm/xe/xe_vm.c                         | 287 ++++++-
  drivers/gpu/drm/xe/xe_vm.h                         |   7 +-
  drivers/gpu/drm/xe/xe_vm_types.h                   |  18 +-
  drivers/gpu/drm/xe/xe_vram_freq.c                  | 128 +++
  drivers/gpu/drm/xe/xe_vram_freq.h                  |  13 +
  drivers/gpu/drm/xe/xe_wa.c                         | 191 +----
  drivers/gpu/drm/xe/xe_wa_oob.rules                 |  12 +-
  drivers/gpu/drm/xe/xe_wait_user_fence.c            |   2 +-
  drivers/gpu/drm/xe/xe_wopcm_types.h                |   4 +-
  include/uapi/drm/xe_drm.h                          |  34 +-
  141 files changed, 6518 insertions(+), 1187 deletions(-)
  create mode 100644 drivers/gpu/drm/xe/abi/gsc_proxy_commands_abi.h
  create mode 100644 drivers/gpu/drm/xe/abi/guc_actions_sriov_abi.h
  create mode 100644 drivers/gpu/drm/xe/abi/guc_relay_actions_abi.h
  create mode 100644 drivers/gpu/drm/xe/abi/guc_relay_communication_abi.h
  rename drivers/gpu/drm/xe/{ => display}/xe_display.c (99%)
  rename drivers/gpu/drm/xe/{ => display}/xe_display.h (100%)
  create mode 100644 drivers/gpu/drm/xe/regs/xe_pcode_regs.h
  create mode 100644 drivers/gpu/drm/xe/tests/xe_guc_db_mgr_test.c
  create mode 100644 drivers/gpu/drm/xe/tests/xe_guc_relay_test.c
  create mode 100644 drivers/gpu/drm/xe/tests/xe_kunit_helpers.c
  create mode 100644 drivers/gpu/drm/xe/tests/xe_kunit_helpers.h
  create mode 100644 drivers/gpu/drm/xe/tests/xe_test_mod.c
  create mode 100644 drivers/gpu/drm/xe/xe_gsc_proxy.c
  create mode 100644 drivers/gpu/drm/xe/xe_gsc_proxy.h
  create mode 100644 drivers/gpu/drm/xe/xe_gt_sriov_printk.h
  create mode 100644 drivers/gpu/drm/xe/xe_guc_db_mgr.c
  create mode 100644 drivers/gpu/drm/xe/xe_guc_db_mgr.h
  create mode 100644 drivers/gpu/drm/xe/xe_guc_hxg_helpers.h
  create mode 100644 drivers/gpu/drm/xe/xe_guc_relay.c
  create mode 100644 drivers/gpu/drm/xe/xe_guc_relay.h
  create mode 100644 drivers/gpu/drm/xe/xe_guc_relay_types.h
  create mode 100644 drivers/gpu/drm/xe/xe_memirq.c
  create mode 100644 drivers/gpu/drm/xe/xe_memirq.h
  create mode 100644 drivers/gpu/drm/xe/xe_memirq_types.h
  create mode 100644 drivers/gpu/drm/xe/xe_vram_freq.c
  create mode 100644 drivers/gpu/drm/xe/xe_vram_freq.h
