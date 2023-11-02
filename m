Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 551C37DF965
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Nov 2023 19:01:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E946A10E97E;
	Thu,  2 Nov 2023 18:01:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E19110E96A
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Nov 2023 18:01:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698948079; x=1730484079;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=Pdo+ICV0Kn7VoGs+tXOnvDhjEK3BVukD16ouRsD1aGo=;
 b=FTqthCn0dt7xRpmyoWY8RO7XR+clX5bIa1MbWfiUPpOpre5i64wQdxv4
 0CyUiWofSvqnSOqqGLe+ZZrTkFIM67UTY4QSVptwF9cJIvmA3qNoRrUh6
 6nhxLDu0zwAdbXD9wQ0blsHssCJBBzb2UP2Xmv1v9yi++jg9/zZ9Esy9w
 K27mvZ6bJkO+MgaPe9u9EwxeCKHwMB2ln2t0z6aZ3Rk9pv0AIH9AXg2E8
 UT3d/C5N1feKEQZPj6h9B3a0KXs1jPNnQ6ogNaNW/m70hK78suZR7RACp
 +nue+d+Gyaunedgrgdg9qmcvGywc8HP1NXl09EGc83kn2HbjRl/dKhaXS w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="379172553"
X-IronPort-AV: E=Sophos;i="6.03,272,1694761200"; d="scan'208";a="379172553"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 11:01:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,272,1694761200"; 
   d="scan'208";a="9091549"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Nov 2023 11:01:18 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 2 Nov 2023 11:01:17 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 2 Nov 2023 11:01:17 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 2 Nov 2023 11:01:17 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 2 Nov 2023 11:01:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W0shShn5zDiDdbOu2cXlTrxgafs790D+Kjl8qW2lyZQXYCl9MOYwuW7lEQ6T3Fj6RSIuWVYRQm61Gmt/XxDJbOknofFVMub/sYOzJMJ+YCwIxEdesmo4yx9JlBQuU2j+HO1/ePMuMI8VIvsolTEJ3GVDnzuN1yz+4CAfkm0gICcIY/4du9EUJgYm+IrUlN3Nz8a59bvhmN7WoQHBDWGBQrMxiZCz2IAlB1xBXp7ohsX21AG9gYVyO0grZSxbnjumwq/JLrgPkKiO6l3MQqfY0x5psdzDLXDvhXt0gtcXYTXqYmOMfyJjadBGdnLs+lOX9fW8BcunDIh3fOx5qTTDtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=edierY0tY9QESEGWh3Omk0Vn7IeVVGvsREANzSLp8Is=;
 b=T5obXycIN7p5g8RXxHO9HL+7bHgt4dvd1axUaE001FEA2ksXZiT3H2nqVaV+t30Wsp21L6pP3GENxIq+Sb0IC9G0SbNWRwhcYqPY0p+qklkUCM2iaEpZGqXAcRaa4OdOLfaty3tWttSSE9+NlWVje+AqEO8dE12bNgLv2ucvyvCaMXQax+cZYx9T1K8VtPMzQ9gj1Nb7tqqZpbSTOci7TbEZk+9SSMB13Y5YcI5CZalsTkyWkUNOydDi1LQlCcULmAxicv2CkRW5hQEJJsjKrlL4Qwc7/OipuJqW8dA+7nCtrBLpeQI/8NH6hM3pOVKMZoCCXkK2GcqQ/wdGEwcsrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by SJ2PR11MB8539.namprd11.prod.outlook.com (2603:10b6:a03:56e::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.21; Thu, 2 Nov
 2023 18:01:14 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d89f:e7e6:dbb3:3ddf]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d89f:e7e6:dbb3:3ddf%6]) with mapi id 15.20.6954.019; Thu, 2 Nov 2023
 18:01:13 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <169894295379.1757.8337264188078916267@gjsousa-mobl2>
References: <20231102160644.1279801-1-radhakrishna.sripada@intel.com>
 <169894295379.1757.8337264188078916267@gjsousa-mobl2>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Thu, 2 Nov 2023 15:01:06 -0300
Message-ID: <169894806657.1757.14847279758866826070@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR04CA0123.namprd04.prod.outlook.com
 (2603:10b6:303:84::8) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|SJ2PR11MB8539:EE_
X-MS-Office365-Filtering-Correlation-Id: ddafcd8d-fab0-423e-37bc-08dbdbcdb3bf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FCNzgVCiT8+E1d3H9PPvRDpAIYBhdu73w0pyuoBQTZ7IR9jGu5Ux0n83BP/awKE12TAKP8xLtlsV3dPtnONl3eqJqQQ/LM8HKJ8s4J8qxgoE+7uZ0T7pmTMtKKjux97AA+BKIGsmDMRvoAGFWzlIY3h9HYryPDvx81xFWgsYogZr6iRHL3+EGpysUccyF+4IZ+8rHN2dNZd4Xq847I3I6DDkfJ31RhwQj9machny+020x5S5ZFLJEB24em2bqEE98YSj2MO2F3sOWtUs5fiAnpnTnFat7A8/nU8LZNP3p0IuoqmcEVrYqVkbIymSCoo4uSsWWbSkhCtoPmmaeFKuYZczYWnXP/LzmCzt1kmI897gct1jhGfbVf5QH+Bv67o3KnYXVQ7DjKJAqHRKPvNYWjZ0WVzBOeSp/glm4ym1hXvs93mWc6sGDXpV4XNisxvCKS0bI9aG1YJSNCJW6M3q6gaNvLYQB3MFQubFYPJpV+IX84TZxgtUQ+cl9RZAKlxQDtDjP6lbfmJoG1H5AQjtFmTX+73PSLSJfuUOG91WCTU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(346002)(39860400002)(136003)(396003)(366004)(376002)(230922051799003)(451199024)(1800799009)(186009)(64100799003)(83380400001)(86362001)(82960400001)(33716001)(2906002)(6486002)(9686003)(41300700001)(478600001)(6512007)(44832011)(4326008)(8676002)(8936002)(6666004)(6506007)(26005)(966005)(66476007)(5660300002)(66946007)(66556008)(316002)(54906003)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SEVFN2RrM3ZYaFdDa3p0MmtpdTY1Q2NqOC9ieDBsWTRHM0lEVTN0TjVxendO?=
 =?utf-8?B?ZFdGTTZOMExHQmtsYTlhV3RZWDFuTW9QWGM3NHFhS3dMMzVnRkhYVG8xSlM4?=
 =?utf-8?B?UitQeWdUMUt2VVdPMUZXNGFDWHNHblBRWnNBQzloQjd0QXhhRmNrL0dYNXBH?=
 =?utf-8?B?S3UyQlBDNjB3VW80NWJCZDhEV1llSWFoMGd0VzRhanE0SnZ0RXZYYW45SzVy?=
 =?utf-8?B?WVl5QmMxRC9qQy9yUklEM3IyNDVCVHNMdjBhd2YwU01EaGpqTXJQditGRkRF?=
 =?utf-8?B?V2Q2K2ZWd1hScitRcS95dHdXc2J3SnluMGlPMTdKYmJRQVZOSEhVc0plZFBI?=
 =?utf-8?B?aDhuNlN1MmRkemRsWG1XNHV6c1c5eGxRVk5pT1B2MUZGNFRwcW9HNExmMys3?=
 =?utf-8?B?endBQmtISS9KOHlMRnNicExjYUVyVGpuVE83bVQzSzFBV0ZnNXErWkFkT1hr?=
 =?utf-8?B?cVM4SUNSeTZxUTFHMU5OSU93MHMxWmNBTi96Wm1hOWhVbFJXcnAwRFlNYi9v?=
 =?utf-8?B?NHh3amMwbXhPQmxMR2VHUXhQSEpaNk1peCtzTm0wbytrUTJDWmNwZnhBeDd4?=
 =?utf-8?B?YmljV3lDVEgxcjRKT2d2Rm01RHJ4MVI1TjA1Zkc1a0s0U0oyOFRYbHprQ3Vj?=
 =?utf-8?B?dVNtNG1vVCtTQ3NuOGlqN21MbDhGMmdOMGlHaDQwSTNWNFZLdlFUQzQ5QjBp?=
 =?utf-8?B?MmVVZGN2bUZJSzJuaWRyRlB0SDJZbTVlb3VUYkdLWTNGREl0WDNZUGMwbGJk?=
 =?utf-8?B?aFBQQlhMTG40Tms5dXkvY0k4Q0FGYmdUd1NwWWwrSnlnV1V1MlkvTVZiTGhJ?=
 =?utf-8?B?RXVwanNySnhxV0xqUWQzOStmdzVRTWFKZlVldVFvTmRTMXpOQnJUaFc2NTl2?=
 =?utf-8?B?d1RjS3pVZG0zT3VXTEhUamhTRjJQS3ZqUTl5Y2t0dXQ4bUVZYzNUOTNhNi9K?=
 =?utf-8?B?NVNLYlVwSlgyN00xREYzWXhyVktYdHR1aWt4VmVyZzVlcEo0WmpmZDBkWm9E?=
 =?utf-8?B?Z2ZXbVJhSW45dVpaYVUvOXJqYWpCTGlMUFMyUHltUnJDVTI2Mm1Nc3VmczRa?=
 =?utf-8?B?S0NsZkIzU0E3WC8wTFFXVllDZzJMSDlYSzltd3dKd3hIZCs3NFBTdjVtdFhj?=
 =?utf-8?B?NEpzczdnMDc1MlBpS0xYbVRyOEhzdXo3aWFPNkptVU1vbVRKNy9KZDFLZkNs?=
 =?utf-8?B?bVhzVlN2amtnUEZBdHZ6NmpEYSt2K2h4SDYzUVZBWW0xNWoxQ0dKeHVua2VY?=
 =?utf-8?B?cmFVcVRoMnFRaE05VnpuWUNaeHJJOU1KTEhzb1Rqb0FWYThPN2ZCUGIrWm9V?=
 =?utf-8?B?aXVRUXQrclh0V2JRYlhvcWxMZ3lKQjFGWVBId2Mxa3V4TEo1TitSR2tQVUdK?=
 =?utf-8?B?QUNOZmVFRWNVZ2RSRFNqT21hektZZ1ZQMHc0WDJPNHdUeG5yLzlCZjE3cGl0?=
 =?utf-8?B?WkpRbnVGa3lvQVFRS2R0RFUwUE1MRVZVeHhHZGs1WmZpa09WNkpKVUdPSmZO?=
 =?utf-8?B?MmtuamRGRnJSMnJvUUNlQUFXeDJzSXpmSzBuaERGYXFDdzJ5WkFtNUVzYzFl?=
 =?utf-8?B?YlZKMWhGVTFJTXFPWDl1RmZQRjQ2UTBmb1ZLYmI0bVZmZjVobzdZdk1qQVFy?=
 =?utf-8?B?bENNdnRCeHFZQi9ydjhjYzJ4M0RuMmpYVlF4Unk2QnR3TlpDT3U2TW9HTXBu?=
 =?utf-8?B?UGRZc241QkJPZkdWRTZNVDZQcEszL0R6QmxEMUo0bllCN1JyeTlncjhwNDJQ?=
 =?utf-8?B?cXFsM0lTbTA0eFoveVdoUldheHh4Rkw4Nk9NM2RvMUJMNGtTNXlQUmVhbjdk?=
 =?utf-8?B?dWVPcE5sMS9SUVQyMktFZjRjQ2kwY1RuV3dSTXowajVVeFBUcUR4N1NoVU9o?=
 =?utf-8?B?enZRUy9IU3VzTUx2SGRGZUZtblh0bHROZVA3UUZISEI1cEJja2dodVpJYlVN?=
 =?utf-8?B?d2ZOK1A2UTRJNUZTQmZvOWZVUTdTdm1CT3RzVlNXMVJuUDhwQjJhaThqVU16?=
 =?utf-8?B?NTVzQmpRSTY1UGp2ZTFlSFZRNHU2TWYxcUl0NThRMzdFWTlkWHYvWmdpNDQy?=
 =?utf-8?B?UjZNQ2lGNDJwandQajlQVzJTRW9hcjBad2dSSHVNQ1YyMWsweG1xUGNlZHFw?=
 =?utf-8?B?Q2FhRmtGSUhXdlpyZncwSFM4b2picUZhVE5YcGZManV6OEVCbnRkRXJCaFB5?=
 =?utf-8?B?UVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ddafcd8d-fab0-423e-37bc-08dbdbcdb3bf
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Nov 2023 18:01:13.4875 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6pU5eNskSWcQURRbjGU4iyFHb9XebdNUeoSVgnEgWY52dG3fhsSsVB+Xd6M1/cxrcOvnJYam5RSRDKED6jVCkg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8539
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Increase guard pages when
 vt-d is enabled
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
Cc: Chris Wilson <chris.p.wilson@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Gustavo Sousa (2023-11-02 13:35:53-03:00)
>Quoting Radhakrishna Sripada (2023-11-02 13:06:44-03:00)
>>Experiments were conducted with different multipliers to VTD_GUARD macro
>>with multiplier of 185 we were observing occasional pipe faults when
>>running kms_cursor_legacy --run-subtest single-bo
>>
>>There could possibly be an underlying issue that is being investigated, f=
or
>>now bump the guard pages for MTL.
>>
>>Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2017
>>Cc: Gustavo Sousa <gustavo.sousa@intel.com>
>>Cc: Chris Wilson <chris.p.wilson@linux.intel.com>
>>Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
>>---
>> drivers/gpu/drm/i915/gem/i915_gem_domain.c | 3 +++
>> 1 file changed, 3 insertions(+)
>>
>>diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c b/drivers/gpu/drm=
/i915/gem/i915_gem_domain.c
>>index 3770828f2eaf..b65f84c6bb3f 100644
>>--- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
>>+++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
>>@@ -456,6 +456,9 @@ i915_gem_object_pin_to_display_plane(struct drm_i915_=
gem_object *obj,
>>         if (intel_scanout_needs_vtd_wa(i915)) {
>>                 unsigned int guard =3D VTD_GUARD;
>>=20
>
>I remember trying increasing the guard, but with a much smaller multiplier=
. So
>it turns out that using a much higher value did the "trick".
>
>I would add a FIXME comment here to remind us that this is a hack.
>
>With the FIXME in place,
>
>Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

Oops. I was too hasty on providing an r-b and did not really pay attention =
to
the resulting size of the padding and its implications as highlighted by th=
e
other replies here. My bad, sorry about that. Please dismiss the r-b.

--
Gustavo Sousa

>
>>+                if (IS_METEORLAKE(i915))
>>+                        guard *=3D 200;
>>+
>>                 if (i915_gem_object_is_tiled(obj))
>>                         guard =3D max(guard,
>>                                     i915_gem_object_get_tile_row_size(ob=
j));
>>--=20
>>2.34.1
>>
