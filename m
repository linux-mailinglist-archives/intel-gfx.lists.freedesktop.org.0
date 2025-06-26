Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF68FAE980C
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jun 2025 10:21:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F11D10E85D;
	Thu, 26 Jun 2025 08:21:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DsYwUO3z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6F5210E83D;
 Thu, 26 Jun 2025 08:21:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750926076; x=1782462076; h=from:to:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=EErnX9rSsoGrMxwEc+/mSiuCld4Z6yMNJ+Xwqfsilcw=;
 b=DsYwUO3zmlKmvPEN/huKf/T0rV6uGxaLwUe39GtNAz4V7RVFrgjHZnLT
 0DCvcxO/O8aeiRnmL6TAEdsYnqay+C0YSJHuqsw+9yWQ7+qXm6DkdG+4Z
 Pr7C76uL852kI8pr3fM/fqlwDOWGqQFeo7uQA4OoadZgzNF+i7hcniC2n
 T6IV0oMYgPuuMRtZ81c6Tewv+DhnMBcFO/qCV+Yq0PGyHI8XJ9DNnII+B
 vojTWsRedZKcu5Js8O5e4pVoVDpZTzzExBxxq+NyfGgbG5i+8/8pjkp9s
 NKjPRbc6fZh6kXdYZOh+n8gvnDgVQlU7hTOvNE/jwIosE38akco3xhOsp A==;
X-CSE-ConnectionGUID: zuH3UYAkS42i6OtnQcdbNA==
X-CSE-MsgGUID: 4VO380AaQeuz/DR582ExGw==
X-IronPort-AV: E=McAfee;i="6800,10657,11475"; a="53345724"
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="53345724"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 01:21:16 -0700
X-CSE-ConnectionGUID: GuXgdWy9SV6wlFLXxDveZw==
X-CSE-MsgGUID: dqNFHCmoQWqq3xLaLsSNYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="158211267"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 01:21:15 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 26 Jun 2025 01:21:15 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 26 Jun 2025 01:21:15 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.67)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 26 Jun 2025 01:21:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Lppst4lHcJalasljTioJYOEtMDQIU02tNjpGDTO4H2qQNlb/kqKkoGAmJnvnB1qUu6J3YmJPESBTMEvFZ1Mi8cOYsRNtUsFJxr6gst9XXszWn32vuwYFt9EzG2OJH434caWw2pLpnEYIMkBv1GdPFg4Dzlv+adc9OnkSve27A3uIHRP/3Hr8Sh4ryWGczTwwrpsPOsqLpS6u5ttYq6jsH/53vx9OJyURKyyESx0LDwJc9yMvCovyH9yGINeZbnISF9yvEuEblQMghYjcXgzVAuxT0oiGQy8MqFbE8le6qQRRsV8sChlo1QYCVNquoYYSc5ZVa2aYO1tYDpq0f67Jsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZY2tSD26srUv6KaZSozcPSBYSRJh9iLsQH9JPAM7Ijg=;
 b=aPH/ko3Epg+m0Z/tObVMz0uGKQel3+yCEt5u4PSPnG8Zgs1tFpTrpG10V7UEMvOPyLq0pNqqNuhrBCZh3HqKLya14JYCIqGcDKGVNYnaPPrNN2g4qjrkWdpaP3pn+Wky048J3Ubtig+qjA+Kmx87k6p8Wl7YGKXEfBlQYR4++nnSzdLtaPg5xbMUQk+3aQapHXeNHLg4Ph4ePwMSnovby+7/7VtOXFRkEpPidbqW8y1PwUi2wMR5MGj2h2bgGG6QJPq7nYXmmqVnZaiQhl0i0bkw99sf9MMarcCR2i2wpNspWZRY/redzdR7vCLusiwm5C3CbmjylneuRrOuV51QJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ5PPF8EC896901.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::844) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.28; Thu, 26 Jun
 2025 08:20:59 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8880.021; Thu, 26 Jun 2025
 08:20:59 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 00/20] drm/i915/dp: Fix few SST HPD IRQ handling issues
Date: Thu, 26 Jun 2025 11:20:33 +0300
Message-ID: <20250626082053.219514-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P302CA0020.GBRP302.PROD.OUTLOOK.COM
 (2603:10a6:600:2c1::9) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SJ5PPF8EC896901:EE_
X-MS-Office365-Filtering-Correlation-Id: 6620e970-8434-46b2-db44-08ddb48a6195
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?JmDy9E7hlwBUed6BViBNsTE18AQwcaaOehZ5ytD0VVyO7CPzWjSiqBkFNij7?=
 =?us-ascii?Q?Ypu/fA2iySFoiDJyQhot7mz3NkJD3Nl72zXY5AaT1LWrgcYfX/WHfFk4ENN5?=
 =?us-ascii?Q?+hfVIG1+FkAQaxGPevfMbs0ygDOzz3hFpYI2jCKCe86Es/QFGnXz1k3JksTd?=
 =?us-ascii?Q?OryCSK8tHdBbyVwOUR69jeaBXFBnoLlVHLTgOrEQz/nkNCvYsDS4Hb40MyrD?=
 =?us-ascii?Q?8ULbeKI1/+w7aPUtlmveyBCIyF3AnhvIVF7uyEQv2VFRRBkllzRPORO7sNYH?=
 =?us-ascii?Q?WV9/wwY7YR19OuraKNi8fpHC/8iigObeTJ+s2r4GZ/MrE29WJR5qz3dbchzW?=
 =?us-ascii?Q?DFb/BDq8IPKEyN9ggw5pH171JV2n2lTFUlTuAaB9tPw7pwPRz+MbE/k18+64?=
 =?us-ascii?Q?wdiv2E4dZV52RlpC6tWeqU45kfA9QxalXMs6qAhKiZG1KCYOY/Wc0naBia2W?=
 =?us-ascii?Q?012ZPeSK+QK2p2JuCX0nrRUmDoL3vkzqWDBrgNO8s3XMlEGliV88W68EHiMg?=
 =?us-ascii?Q?Ntspxs7ZEMJr0m270qUiBp6olQpRq+XWKncgwe6BZQBLJkiRZBagod5U5rxw?=
 =?us-ascii?Q?pQ7a7/iD7csGqhuw8BCM9VSL9jcfOX/E6faZPBqkBTFrT+83OznJii2xl9nZ?=
 =?us-ascii?Q?wds8w9NcFGqBK6TaKbfa9lusRHaHcpX8Fvbljt/vewDyIlM7CE5aRiqL336X?=
 =?us-ascii?Q?WlvbjeDnDzd0/lPUaQ29CE2CEMXXybQt6Ma0lTlSZV2iX3rz1Hwj1oFcuKPU?=
 =?us-ascii?Q?SbOGNnl/qcQrcCbtbF19nFnRkqUPYkmU0L9DZlSApqT7uG26czmkl0UtgNHG?=
 =?us-ascii?Q?ZTMhNnQgUjlFjVwjtvZiq9NP49aSB/+8FSWia628OTATHrEoeGW3Q4CX17WL?=
 =?us-ascii?Q?v2rjCEOwhl9MTj8s6JxPcuyB5o4dmj3/KI02pgxD4e6T68GmY1rbMk18h75F?=
 =?us-ascii?Q?VVy3vNJBlcnaO/+/SkCPlTapY6oMbQWQVvPTBg7j1vx23ZeYx/TWiQk7hCIg?=
 =?us-ascii?Q?2zmrTO478i0WTpTI+8pCkZ3GNK22rbiNJ3JVb5Wt9eaMuMexc2+sowY8HY/N?=
 =?us-ascii?Q?1dZcmTlk0NmSrGWVdUXtEUdtXK3foEE4t/8bvuLKqQYuCzSe7zUUw52sqEdP?=
 =?us-ascii?Q?hRhc01gEuPi6LWLJIuJhmRYBo7B4LPZAV1275N0V3uKBfDR+0gamnGI1pCZO?=
 =?us-ascii?Q?8OACsWaE5UHTj6dinHszucXwJlcDgz9bcNk8HnRLRXHuwGa4P4rwOtTzawsA?=
 =?us-ascii?Q?mS3SWaA+g+ozALeTdI/zX8ADYWj4CLsssRPvqvrGddbJ3LWr66j9WSNPcJfh?=
 =?us-ascii?Q?ZcwbdxiwfbBuPAtMaFskGA3EP6qxk3ae7d/jKGO/DZqYBW6Zi8dpxoyaGM0r?=
 =?us-ascii?Q?NzCK5p0zu3XFWv+zEAGz2rILhbsVbP6OMXPRycwIurvK1XDNkQj9yWhYzYYk?=
 =?us-ascii?Q?flkAmZ58glY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?rmZ65Zk57ZjGPlZYyFYTG5S+FiGhd+aSwejW320GgZ6HQENsbt0B7hC0g7dW?=
 =?us-ascii?Q?tuy1EZtqBWycab++QBAQbQe0L8pPKkaKBCUQK8EDC1Gi5bgicz6CtoV0iXsn?=
 =?us-ascii?Q?m/nR+7DmirecjpKGasR6aKHw/a2OpcyCTTCpKjE3jett82hmbht5N6DOMW2O?=
 =?us-ascii?Q?sEWyNQAPfC9zgkfeih2E7nfVK+tjt4GF1Prdw8G36eu2xr5BCkcjZkKwk0dF?=
 =?us-ascii?Q?UgSEvpNXdgqhxYeSoIlZoVH/9e4GS0ob+oqKn2eJjXvDYRjEL1WVzBwQPlWz?=
 =?us-ascii?Q?J9Axbr0jvR8RNXlpGksh5sDj1MYLftGb0F6MSXHpZ20o2aygiGEJ+8y+mmxm?=
 =?us-ascii?Q?I037t7F2Qpz1FjeCGd+lqaVLA3O5T6XtYF3ShYlnBVCm86fHqOnH/saWSfaQ?=
 =?us-ascii?Q?rOjEqpgN1unEMmtzSTGE4ArnoCYI2aZhKQfS/W3vMVs5dhmBMQj0vRS7zs2w?=
 =?us-ascii?Q?XtdsnMDHNuZXcFuZDdoKdIslbhmfEkB5QBKhEBmDe6shctA3TAXAKy5ZXQg7?=
 =?us-ascii?Q?XD4Iq46ZCt0/mBzz2anLGAE0eGyHP6D+xJR3cT+6opYJGpJUhsgxzivPIKu1?=
 =?us-ascii?Q?tuhU1DFk9/HMDqTec8Zh1xL3NX0S0SJRNHzdbE18/FscG/83snbGgXE83JsC?=
 =?us-ascii?Q?l6mqM70o4FTf2VmeQm0qZjJQNZpw6p4Oqxjrzgrg6D20MzQtAjAD+3P3c5AM?=
 =?us-ascii?Q?eIHNNitxBon7xZpKjgP56YimK3gp9Juo3C4URA9l23L6jFINoI4aTLw6TMnj?=
 =?us-ascii?Q?M+l3H6+MsbwRf4bf3zgFTvxO93zejhxTh+xYeBEwobYKD/961233NsQSyrGK?=
 =?us-ascii?Q?eueIAZJ8ClEKFTkdTfJ7kEzWdU9wW9vCSt8NTmNnWfmyLcBy6YgspFOghuFm?=
 =?us-ascii?Q?BcxEpvLcTUqaZGswuWwObzXr3NQeJJZXCsNnIVj5Q6y3LSCqavzXC5h/hRrV?=
 =?us-ascii?Q?OdqzSr4KDF6X0T24Ls6dgYlH6luZB/f8xt0DZSAMUK24IvFcCm8iY9lbOHGe?=
 =?us-ascii?Q?hGkWroWx+VrKtrkGw9y9BvbzD9LnVzMweHfyRFSP2DGjzGmxyNE0OcT9J2St?=
 =?us-ascii?Q?oMxTPRGB5PBjK1YhT8YBi3IeRZpb9aX+XfKWfubvjqybzUG2biF/h80V0dIK?=
 =?us-ascii?Q?MdPt8mz+PKpWvcztJ/OFjqGqwcyYexKq82nzGfPdHaDEPrJJXCbF3hcFlQd3?=
 =?us-ascii?Q?KWCU5fPyQe1wibaVzA1ScTPsA24iPGTxQcBudJELCMfFebppDSz9YCWbDZML?=
 =?us-ascii?Q?6/bYVD8DIN1+wRC+TvFcq1nZX12JapK6TnZ624TV3fJtGbZF2ES4lU4Pluuh?=
 =?us-ascii?Q?z8y05tfmUcQiD9NUcOZ0qcSs9UqHy+fjC5sOXg9hC+J+BFVqUShXDYOFRYYN?=
 =?us-ascii?Q?zOFQhoPW1S/tEmHlYMT6UEjGJgWKRsSgirH7Dm8mcrXut12ltyQyiSlNfHic?=
 =?us-ascii?Q?+qr3T1zYjYwFr22uzk2nhssdPkGPxgur1gptT3gOpnLSp1pek28Ahpw5Ej73?=
 =?us-ascii?Q?GyeFOeqkWZ70fH6+CVUy7nQt2c9nxzCd3eZW1Wj/un/X0gDAyhVklu82+aeI?=
 =?us-ascii?Q?tOTlo+FflE7hCd6VtmFOve1E19wd6tu3S1sRdWrN?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6620e970-8434-46b2-db44-08ddb48a6195
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jun 2025 08:20:59.4127 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: k1PfWXMjdOndut1+NJMlbKPU2/oqGEForeGooLHPIlt7zfNmyxidOReTG/qI7FBTxk7cH5s+to09cOIZPbnSag==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF8EC896901
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

This patchset fixes a few HPD IRQ handling issues on SST links and
makes the SST and MST IRQ handling code more unified.

Imre Deak (20):
  drm/i915/dp_mst: Reprobe connector if the IRQ ESI read failed
  drm/i915/dp_mst: Verify the link status always the same way
  drm/i915/dp_mst: Reuse intel_dp_check_link_state() in the HPD IRQ
    handler
  drm/i915/dp: Handle a tunneling IRQ after acking it
  drm/i915/dp: Handle the RX_CAP_CHANGED HPD IRQ
  drm/i915/dp: Handle the DOWNSTREAM_PORT_STATUS_CHANGED event
  drm/i915/dp: Don't clobber the encoder state in the HPD IRQ handler
  drm/i915/dp: Remove the device service IRQ handling from connector
    detect
  drm/i915/dp: Fix the device service IRQ DPCD_REV check
  drm/i915/dp: Fix the link service IRQ DPCD_REV check
  drm/i915/dp: Reprobe connector if getting/acking device IRQs fails
  drm/i915/dp: Reprobe connector if getting/acking link service IRQs
    fails
  drm/i915/dp: Return early if getting/acking device service IRQs fails
  drm/i915/dp: Return early if getting/ackink link service IRQs fails
  drm/i915/dp: Read/ack sink count and sink IRQs for SST as it's done
    for MST
  drm/i915/dp: Print debug message for a sink connected off request
  drm/i915/dp: Check SST link status while handling link service IRQs
  drm/i915/dp_mst: Reuse intel_dp_handle_link_service_irq()
  drm/i915/dp: Ack only the handled device service IRQs
  drm/i915/dp: Ack only the handled link service IRQs

 .../drm/i915/display/intel_display_types.h    |   1 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 249 ++++++++++++------
 2 files changed, 169 insertions(+), 81 deletions(-)

-- 
2.44.2

