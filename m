Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16A5B99FC9B
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2024 01:53:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC3EF10E633;
	Tue, 15 Oct 2024 23:53:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z0ZQEtWp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CCCC10E633
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2024 23:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729036388; x=1760572388;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=iDSYNYvAM7Pfj0WI4hsVBknq6ljyQ8dWwTHbCFAydrY=;
 b=Z0ZQEtWpB4aKCnvxdP/e+ZYkQWHQLgFBnArx5Tv30nz9LuG3QU4fswLN
 VfJDswuE4cmbumqG4r9+G9Bh+J4R4cVbqfvt316pODC0TNBr0X1J7gQpH
 LSOGXhItOWv8I4TrLDyxG/wnfxce+OZ34QcCGBt4JYDHJj9czIjG2XKwx
 JP45tvyluN2FDV5xNzy4zWp3a18X3vOW/n15Zsw2dvQF+qjxT8XYeBsL9
 jsSf/Hahanp5uEnegeE7CT8K2hpaMYBrzpBwAa2fvJK5WHu9AWEISx4YG
 iSDbZRCq2qEEmcWkevBY7dpxsc+qqpZ9bTjyvFrbW9I/sMXvcb1brvoRy Q==;
X-CSE-ConnectionGUID: xJCE9Dd8TDS09wnwPVWRMg==
X-CSE-MsgGUID: R5nAgZaxREWKwpJmZki2lA==
X-IronPort-AV: E=McAfee;i="6700,10204,11225"; a="27902726"
X-IronPort-AV: E=Sophos;i="6.11,206,1725346800"; d="scan'208";a="27902726"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2024 16:53:08 -0700
X-CSE-ConnectionGUID: aOmHZHSyRMCIzkmx0HnJXw==
X-CSE-MsgGUID: jkLmwE45Q2KCTEpqaRcxLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,206,1725346800"; d="scan'208";a="77675995"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Oct 2024 16:52:48 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 15 Oct 2024 16:52:47 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 15 Oct 2024 16:52:46 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 15 Oct 2024 16:52:46 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 15 Oct 2024 16:52:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mJtLeEDoz+/dct26tGKbQ2Z+oR9c3L0MFg+/6zcT3F8kViyA7aHrwIvWV+uG86IERWqlcwTImQErCOHM7i5MAOvr/XHb6f9sgnd9Oa0eCuP7Cn7Gxw8SG7L6w5RdfLT+gvaYPCohoHRXrHvgb/L9kqttCzl5XES5QyAHy3lbHtXTvCO4QXAK1/pFDlvniRruRz7jUL8NEswqdfLjOOKn20FDhBSYS/0oFj+/x1jE19KCi9BbSyJZgaXNBmwnjmtu9GPvTFzuJdP89akRg5H13dz9ozaDY/Ricnp5S2GtY4/krHH0+rnoqlDrAR9iGGoNyXSi6z8fVolEJ0HUqT+69A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hYyGvjOpg0w9eog98ib3IeJDLDcFB7dsB2ahko4egxU=;
 b=gqKeNencxrb4KA335dNh2XJzDQD6maV+j2gd27vF//pt10Iuyk+7JauNoBQY8/iwJe7h6zW37Exi2E6EaEqPBKZJD6jVk/cwPangNY37RJGHZt1TXG6KwxWRZ8+Ultv9z2S0tA7JXo6NuWoUCgjxaCT6qJ40S476krEuv0lQsZTxP8BfsXWSqmQTrv9wvjb9dkG48jPkVFE6w/Xp/0M0t1I21Qa64BJGIUrrSPKDtHI75PBwztWf9NDGmrhbfvPTOXyMuNClU9An7rna40PohhDHrWi1/Qm8zCvYnQFsdGnypjd8/sAMZeT5OROVxZzKzh8nyrOmrGRdl1/7Kzq3CQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by CY8PR11MB7170.namprd11.prod.outlook.com (2603:10b6:930:91::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.27; Tue, 15 Oct
 2024 23:52:44 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8069.016; Tue, 15 Oct 2024
 23:52:44 +0000
Date: Tue, 15 Oct 2024 16:52:41 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Nitin Gote <nitin.r.gote@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <andi.shyti@intel.com>,
 <chris.p.wilson@intel.com>, <nirmoy.das@intel.com>, Chris Wilson
 <chris.p.wilson@linux.intel.com>
Subject: Re: [PATCH v4] drm/i915/gt: Retry RING_HEAD reset until it get sticks
Message-ID: <20241015235241.GE5725@mdroper-desk1.amr.corp.intel.com>
References: <20241015145710.2478599-1-nitin.r.gote@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241015145710.2478599-1-nitin.r.gote@intel.com>
X-ClientProxiedBy: BYAPR11CA0051.namprd11.prod.outlook.com
 (2603:10b6:a03:80::28) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|CY8PR11MB7170:EE_
X-MS-Office365-Filtering-Correlation-Id: 58483f9b-bd16-41d3-03ee-08dced74769e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?OuuZzMU/obP5OYhKcIwY3l6sEH1mZS5cIc3NF1oFPwA6YpH+WIEtfjJNGvvQ?=
 =?us-ascii?Q?ZTCTp1j09fyZcC7qaArrZYJOrcvdrbx7Wl215l6TY76VJz0oOGyUkfQNb6tK?=
 =?us-ascii?Q?i7GTGHpVDQnEpbF57W+vvWE/OYiqjxAEeE4wcfim/k3OgPpCipHJmdOWWOt0?=
 =?us-ascii?Q?vy+fBlcIt93yYc9ajVrZE0GLDoZ5H73IyJIVcNDb+FShR6+9wFo+4lwH1wHb?=
 =?us-ascii?Q?Xr5BRlaPMLxsFUBMbG68zCUvs6uWdElngLSQTIJWTlP1YKNdy9wmab4gTHps?=
 =?us-ascii?Q?axiKD54BGcoKRtlqMIee2G+2wz2aBJ1uH4aNsrA9P6z621EjvdmZ0rYA39r+?=
 =?us-ascii?Q?xmjxGQqQqGIRCusn1QTUQTlt0Sl24ZmZQVKAKfjXqn3/tq2+Ck6qbatXOwwC?=
 =?us-ascii?Q?mrnGvB/V5BOmUFgHsQHTQxH9ENzutECU3JBVTo0rpmOFJWvR2i/KWJlqbJ8p?=
 =?us-ascii?Q?hYafv2z54XjPdSIk2SNp7r79UjNrg4rgxz+gvEGZA8pUhwpWRMxqKyrpe9r3?=
 =?us-ascii?Q?t14XqowsvXLyONTpLw6gNbmCkdx/fUDxtjvY70bYLYdB83CbyeTHlljmOugb?=
 =?us-ascii?Q?jK+7rDrjaZ2QNPSKnw4O1GW0o8/8bUP/3P0PwC3BYYOUyOu/SsurW3/8bbTR?=
 =?us-ascii?Q?YhfnWqOQIyr5nrmy4rNN045f1UqvtPs8XzA9l9Pr/LlxARNOcXe4krNdycdh?=
 =?us-ascii?Q?2BI9dK4KcaJ7yFJUXW6OoFgjzoqhy62fWWWl4bgGf7ulBhB7bp4P9pRHOlJw?=
 =?us-ascii?Q?wAKD3xK/3gVj40TlYR7UWToB2el4aTjEAFiFsiwGRlF2kpj3cn7M53mBf6NG?=
 =?us-ascii?Q?5xoFRjfaPCBObDr/7hrNDs0r/3+NdyoIBD/ofaucxwdfdph8flMsZ2oAsRx6?=
 =?us-ascii?Q?wLl10MFKh3d1ADMrEzjYqP+NMlYCMozeoF37QIIULocfpNpXlqaivyM5ekWT?=
 =?us-ascii?Q?X8+s2hbYbz8ac4C0Hw7rbGoI2Lvdf8y6rHzjAWkxQoBCVyFzZAZdvE8+5Cfu?=
 =?us-ascii?Q?xhWtcJD4Ler8I00UpJliOO1xAKRk77zqjrtTMCEMRSyXQXzR/lbe77kno6pU?=
 =?us-ascii?Q?Hib+kcJQUcM6vsNT+t7a4DErn9xz1SYVOiVe8+JXrr8dPbWh0PUQiCd+qI3C?=
 =?us-ascii?Q?JKlM5dzzAe/21dCmnbyRtmc0BMw7PbI1/L8JNFQViBI2DSbqEcEaLWL5aq/I?=
 =?us-ascii?Q?26EyKRJhZB5WyMox4m4/TUzmXn8VNEStSNqKJwMnMOaRMnIUhxx20SMq058?=
 =?us-ascii?Q?=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?KOGmgZLPVgqdy58+OAeOa8H/rBZdYzrI86xwzTaDRS+BB9UQOlsUR3yc++QS?=
 =?us-ascii?Q?y4PSTtYIFzF445wYW1CthSayAmstVENyXkpFXpYPjSTx4SdWWmdGi/+cARAa?=
 =?us-ascii?Q?+jTiGwjI5oeOkVsrJPpGuQxvumyZtkIM9h7a/TVgNROBtLvQBTe4amfeFT62?=
 =?us-ascii?Q?W+1TXzEo6x3+asnoe2jlwFV/oWULJ9yfXO87oyfmsXpNwBvAJFsD/gCUzc6e?=
 =?us-ascii?Q?cZBO9QcYV9l+ukzyF+O5XB96WnLnAXsmOS9gwf5YREGpOrQk2rhlarIyb+qJ?=
 =?us-ascii?Q?NQ4JDb3P1d0ozaQmvsIZBq/5Uqnm3v+ccEOklLxxrEyBKBdBps7lqWJyITPy?=
 =?us-ascii?Q?Jm3+EdphRBO75XXWqehapWoW/1T/A8mHYsuwi1KszjspIBe8Omxn/9sJKn8w?=
 =?us-ascii?Q?a9Vua3BKJaqDg1P9If0tfVYPkgPlRK/U4LxHf/IOxTIDs/ZFNipAFia+H5IO?=
 =?us-ascii?Q?26Dl8rU1w0YhmfW5VoaS2x4DokHVuKLsNj/uPSSoNP7aVPpbEe1yi5YevZfw?=
 =?us-ascii?Q?H00Y3QGB1ErXgal4mNkVgtZxFzC80JeVDKY1NGXqCSAz1wvqIdWK7HPQduiR?=
 =?us-ascii?Q?A1PWf+4StzrugGZD/17b9v1U4249pUbSgIwBVJQeuGQmhGa7aUec120x3DrW?=
 =?us-ascii?Q?JG2ac3PyIs3H2cNXcX3pjcRucCUIqBmsVD2/3qHyyftkbo8y0iUS1Bauvafl?=
 =?us-ascii?Q?ooIf4uPP8vxliHxfxLRRbPfeAzH6lsUxuxZ9xiG9DbemaEkmN2V+t+PiSssD?=
 =?us-ascii?Q?q6Qj9PTkQiOzUrdmk7hmXNZC0qhSFBCEh6omAadiY89MbHskuzHv9+2fB0Xx?=
 =?us-ascii?Q?IOHPjQST/IvzRqU9eX39kPEoUDrKODFFJoLE5uyD2ko727ocAKce/b93G4VX?=
 =?us-ascii?Q?/BdOtug6cCLEmqfhKp/N6EZzaJzavhhrYAuGDIGoQy4B0QsYhZYSXTqvribq?=
 =?us-ascii?Q?v38jh2WZ1b3hQAFs8qG9Y5MHN1WDheFuvXRVcoVlmChRoHPK683rc89Fm2/5?=
 =?us-ascii?Q?Nmmf1BL7KjDobnx1RUG0oJm2+xNJER7iTiIos5QBzAoJYy3CfyaVtKDoDQQy?=
 =?us-ascii?Q?ERFpi5/7HP5AWCt9jsSCNnfOrqGAhyJSjvQ9q6xfMlfSPtganSaTQNgyzaC4?=
 =?us-ascii?Q?36di5Vd2OuZ+Mn2urhXuiWRqQQoSvNgV2Fsp+XVY0x/cUUsoWWiCaKi9eVyq?=
 =?us-ascii?Q?+WAEXX9uWe3fNlLb5ynzR9xAff0VzYzfNvcoQBlMNqalU3b89EDIK2tFM5My?=
 =?us-ascii?Q?WwziyW0BpQVxxah10WiBEArRfFBrgwIQV+W1l9qiIqMTQdxgSMYxuOfSMAui?=
 =?us-ascii?Q?A8Oxv1p/vr0F4Qq66QAf+m9Yv+msvaVqVmbRLpFQ78Ob05yRKp6R2RikTpAJ?=
 =?us-ascii?Q?pONpQzWed0CXnv+37YU1wElYzxomxnjOjG3zeiv7tjYFeFT/JlhYIsUPfR2Z?=
 =?us-ascii?Q?Z8ZZNqFmIu9A1p4LCGGems7FmKsvhnPxni0lRV2yCAJlivPipyx6Bqj5Tdbs?=
 =?us-ascii?Q?qWGeXsIO/6mvzDHbq2KBRJPPra01LaWlHrvGZpVJsCje8dJElKZuDzxERKoA?=
 =?us-ascii?Q?wrxtgaRTNYvDjJQeQU1Th3Sr0X4fb5AObhO68ju3YFuUauoWhnQezmG9Md/N?=
 =?us-ascii?Q?Hw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 58483f9b-bd16-41d3-03ee-08dced74769e
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Oct 2024 23:52:44.3384 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: y4QIR6sOQVoARqx92xY/duo5ITrAQMhNW8czVBpTWKYolo4ftq+hc02XR1mhu6sviLlY9ptMiRyV407FbeTzpknbT6kaiT2DkMyq4cAMk8E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7170
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

On Tue, Oct 15, 2024 at 08:27:10PM +0530, Nitin Gote wrote:
> we see an issue where resets fails because the engine resumes
> from an incorrect RING_HEAD. Since the RING_HEAD doesn't point
> to the remaining requests to re-run, but may instead point into
> the uninitialised portion of the ring, the GPU may be then fed
> invalid instructions from a privileged context, oft pushing the
> GPU into an unrecoverable hang.
> 
> If at first the write doesn't succeed, try, try again.
> 
> v2: Avoid unnecessary timeout macro (Andi)
> 
> v3: Correct comment format (Andi)
> 
> v4: Make it generic for all platform as it won't impact (Chris)
> 
> Link: https://gitlab.freedesktop.org/drm/intel/-/issues/5432
> Testcase: igt/i915_selftest/hangcheck

The referenced HSW-specific gitlab issue was closed in 2022 and hadn't
been active for a while before that.  This patch from Chris was
originally posted as an attachment on that gitlab issue asking if it
helped, but nobody responded that it did/didn't improve the situation so
it may or may not have been relevant to what was originally reported
in that ticket.

Looking in cibuglog, the most similar failures I see today are the ones
getting associated with issue #12310.  I.e.,

  <3> [220.415493] i915 0000:00:02.0: [drm] *ERROR* failed to set rcs0
  head to zero ctl 00000000 head 00001db8 tail 00000000 start 7fffa000

Are you trying to solve that CI issue or is there a different
user-submitted report somewhere that this patch is trying to address?


Matt


> Signed-off-by: Chris Wilson <chris.p.wilson@linux.intel.com>
> Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>
> ---
>  .../gpu/drm/i915/gt/intel_ring_submission.c   | 31 ++++++++++++++++---
>  1 file changed, 27 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> index 72277bc8322e..b6b25fe22cb8 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> @@ -192,6 +192,7 @@ static bool stop_ring(struct intel_engine_cs *engine)
>  static int xcs_resume(struct intel_engine_cs *engine)
>  {
>  	struct intel_ring *ring = engine->legacy.ring;
> +	ktime_t kt;
>  
>  	ENGINE_TRACE(engine, "ring:{HEAD:%04x, TAIL:%04x}\n",
>  		     ring->head, ring->tail);
> @@ -230,9 +231,27 @@ static int xcs_resume(struct intel_engine_cs *engine)
>  	set_pp_dir(engine);
>  
>  	/* First wake the ring up to an empty/idle ring */
> -	ENGINE_WRITE_FW(engine, RING_HEAD, ring->head);
> +	for ((kt) = ktime_get() + (2 * NSEC_PER_MSEC);
> +			ktime_before(ktime_get(), (kt)); cpu_relax()) {
> +		/*
> +		 * In case of resets fails because engine resumes from
> +		 * incorrect RING_HEAD and then GPU may be then fed
> +		 * to invalid instrcutions, which may lead to unrecoverable
> +		 * hang. So at first write doesn't succeed then try again.
> +		 */
> +		ENGINE_WRITE_FW(engine, RING_HEAD, ring->head);
> +		if (ENGINE_READ_FW(engine, RING_HEAD) == ring->head)
> +			break;
> +	}
> +
>  	ENGINE_WRITE_FW(engine, RING_TAIL, ring->head);
> -	ENGINE_POSTING_READ(engine, RING_TAIL);
> +	if (ENGINE_READ_FW(engine, RING_HEAD) != ENGINE_READ_FW(engine, RING_TAIL)) {
> +		ENGINE_TRACE(engine, "failed to reset empty ring: [%x, %x]: %x\n",
> +			     ENGINE_READ_FW(engine, RING_HEAD),
> +			     ENGINE_READ_FW(engine, RING_TAIL),
> +			     ring->head);
> +		goto err;
> +	}
>  
>  	ENGINE_WRITE_FW(engine, RING_CTL,
>  			RING_CTL_SIZE(ring->size) | RING_VALID);
> @@ -241,12 +260,16 @@ static int xcs_resume(struct intel_engine_cs *engine)
>  	if (__intel_wait_for_register_fw(engine->uncore,
>  					 RING_CTL(engine->mmio_base),
>  					 RING_VALID, RING_VALID,
> -					 5000, 0, NULL))
> +					 5000, 0, NULL)) {
> +		ENGINE_TRACE(engine, "failed to restart\n");
>  		goto err;
> +	}
>  
> -	if (GRAPHICS_VER(engine->i915) > 2)
> +	if (GRAPHICS_VER(engine->i915) > 2) {
>  		ENGINE_WRITE_FW(engine,
>  				RING_MI_MODE, _MASKED_BIT_DISABLE(STOP_RING));
> +		ENGINE_POSTING_READ(engine, RING_MI_MODE);
> +	}
>  
>  	/* Now awake, let it get started */
>  	if (ring->tail != ring->head) {
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
