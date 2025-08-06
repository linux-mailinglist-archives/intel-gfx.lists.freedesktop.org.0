Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7481BB1C788
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Aug 2025 16:19:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 118BE10E785;
	Wed,  6 Aug 2025 14:19:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GEmSQygu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 891A010E785
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Aug 2025 14:19:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754489973; x=1786025973;
 h=date:from:to:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=jidcq0z7G0h38YTPaFhJpHL2UiESvytrDFTcJWOCQsM=;
 b=GEmSQyguYyT5/QdZXBZYZUAL0M+FvKth+9YLal5VKZjJJWBjspFtR3K3
 QpLGJKtwUlhQNxPk+0n7DB149VJmecSJ/CQr11gXYEvwECXXYWrjUsAh6
 ehMnsOx7kww66AhJ52nniUfdTIvNzzqnNaikuZC7FJVKPOzhcokaM3Iwn
 apkCh2NSWkkk8rwk+EED2v65GIvDg3D4sCWPfrEsUZqCIQgbT63mqyfKh
 cu3HfBumMW6DNCHKjjMF3AcR4aG0xAEZ0V15mspSDTBuZQ365cwIF7SDd
 qq8HIVE20oWvKZr8oF6MG6QViwx4OTx8CWk7UUp0iVYp9xXEtf9rw/QTC w==;
X-CSE-ConnectionGUID: zU0TiC8tSGCB3VqUdaV4EQ==
X-CSE-MsgGUID: YYbjd1OLTeGqitPyA8WHcQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="74387568"
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="74387568"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 07:19:32 -0700
X-CSE-ConnectionGUID: fMR8Jt/GSnmd5K5p4G8gjQ==
X-CSE-MsgGUID: Koy+B62ITWeoxzcZqOaQyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="201949431"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 07:19:29 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 6 Aug 2025 07:19:28 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Wed, 6 Aug 2025 07:19:27 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.62) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 6 Aug 2025 07:19:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tMDoDRhexWzRfx937NVUBk5LsU+yc6iuUXj09BSX9DNXolT9OLHZ6Q0yEb4nz+o+Zbk2efw8+AVryTYnY+sjCAtJ8EXl34X63Tml14L1IZqX1rSgjtYl2IvSDujvbFBr2YKHqqD8KHZtuhoow6tXK+/Z1/BfHhwkf3DbrjWqdZDmMLL8xc5c0rI/Fib6aHH0CZJiWhMk5nykS4+agofyc4IlkUI/XvRsH7CgzZOX6ejutK2BnRDurIbD6F9/OkTOd/ALgXJY6DB25GBsaF7FWl7Uven661OEWYtyLCYJ68ubqCnCOsoWYsUv87KRNMD2zdDlRWps60VfdBFfenKwHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OCDW7dIAZkmUIkY8UAQZdFpxFuC76imy+OJFOIr4pCQ=;
 b=nmQOPkW867r69PFOhwPfRLIDB3w/NefALl0ZljQ6WeXtutaRrI9qJ1oFdF5GdqREJgrKG9kgPD6Vh6AjrUvA2E7OoOvuWNRUsMdAx2kYO9sR0iuKzmvSbjXk46eQQGKULKBBS3kkUyW2Rz5t+P/azhw/QtkIte5Q4gYEm9n6IFVxDZsaEbJ4EdGOb2K60+L6VcT7fFWaa/4S/kGKmYRFc0KVHvHbrGPm1s3+ZrWetIRcUOUcEoW6XWbZA/p5th7BH6dhEu4pMHDmoIZhoYGEspFFQhNjR1TgLD2IClutRrqXospX7bnAJjDZ704zVlp4lQddk3Ymuiw4XrngQ7lvSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by IA1PR11MB7245.namprd11.prod.outlook.com (2603:10b6:208:42f::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.20; Wed, 6 Aug
 2025 14:19:25 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.9009.013; Wed, 6 Aug 2025
 14:19:25 +0000
Date: Wed, 6 Aug 2025 17:19:21 +0300
From: Imre Deak <imre.deak@intel.com>
To: Lee Shawn C <shawn.c.lee@intel.com>, <intel-gfx@lists.freedesktop.org>,
 Shankar Uma <uma.shankar@intel.com>
Subject: Re: [PATCH] drm/i915/hdmi: add debugfs to contorl HDMI bpc
Message-ID: <aJNkafqabqSGxy-c@ideak-desk>
References: <20250806042053.3570558-1-shawn.c.lee@intel.com>
 <aJNhM0wtCqcQ1MwV@ideak-desk>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <aJNhM0wtCqcQ1MwV@ideak-desk>
X-ClientProxiedBy: DU2PR04CA0333.eurprd04.prod.outlook.com
 (2603:10a6:10:2b4::25) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|IA1PR11MB7245:EE_
X-MS-Office365-Filtering-Correlation-Id: d67eef03-a872-44bf-2545-08ddd4f43f26
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Rk4K7Ykfwf/yO9QTjcq+mmhYiNrdzAI0b7HNC+y8Bjq7V9NVchj1CDNfzaIl?=
 =?us-ascii?Q?od5pSlAQv8jIl5q4ATob2vRlD81verDB80PSG3rs4YXm5f8amqjJy9Kndmsr?=
 =?us-ascii?Q?sC9tmD+xSQStxepw8xLNqZIvUB64P+2EW3lQm++UVFF1NkuJxrLdRCtSHWhB?=
 =?us-ascii?Q?8ybx6/gmXihMNJRsfLzrYQUaBiWoxmd38wPExn3/BvtOgjsHMX9Amgud3xUt?=
 =?us-ascii?Q?nVedgW9sL90eGeSb7LJbFPeVmRdQRKWupwNZUIzi/fP1fcs8aZrXxqCvBjEG?=
 =?us-ascii?Q?012oW4tNlZkXIXr8dTdONEUKR+PEWNdl6795uSCZqtK5M4UGLA2P4s+lL6/z?=
 =?us-ascii?Q?ZePVplF9fa6QJLv1pWeZNriQSW/yEdkCkicS5bdoYHPhc277YpQrJXidF7Q1?=
 =?us-ascii?Q?z2zBljimfJ7NIGErSBiosFeMo1+u8SmlNoEzhSctxlNLKDMJTOSNWt959ToR?=
 =?us-ascii?Q?xZydgK+h9/omtvd7I1If915nqGdCi5H0R6hSMWCsgRxLQG6R1KqNNkn4PWDr?=
 =?us-ascii?Q?mBYOPss76Yn453/e400sfftnvfuCyUKqBIk10rTb8IeMpKIbk4FIeJL87vKh?=
 =?us-ascii?Q?jloc5tcIs+ERZtLLJdzXR5A7Nwl8GViz54WzOEKWVspfR7snM4rvP/HV7CAV?=
 =?us-ascii?Q?OwIGJxSxkBBGtJGWBnYeHHNiSwJgYpMMhRJxTejwZFd6OCX+TIL/IInoMxaH?=
 =?us-ascii?Q?jPxPgJPYZnnWgR1rgqKvxRpJ0cywNTciAGlAWYnqwjzDXikm2qSiuw3wyRSs?=
 =?us-ascii?Q?gpaN4cDkpcusicRn8eQYWVN3tU936CAKYfbIrWtNlpVymwHRiIhVjL43LFIl?=
 =?us-ascii?Q?CKm4fOfpmtq+F7gGEXbCz3Q7jOBPm6H3uQJ3qkVUBSuAW+euKK71zpR8Z7Kj?=
 =?us-ascii?Q?Qc4O4qHkO/z+F1I3p+/H1CWfQzCq26levAxKWz/6cajMi2jDBGyEykl/4J3F?=
 =?us-ascii?Q?pECFOcnk24zXNGF9JFd1Ews3z1Ojrgq+G/mhSIR0shhFfq1SOmulRFwq6SGr?=
 =?us-ascii?Q?QcepOnTUwbG1GcCOTZNxq31f/l9PnNr2kA88ls2WgrLu2LitAicBu7H//Fjs?=
 =?us-ascii?Q?0DXNP94/0JvHMW4SoFeAzzPR/7t8EK/5V/Ozpb7hQfPIsDGN8r3MeldwOPR9?=
 =?us-ascii?Q?xhBWKq5KAmUAHxjg72IhanGNSTgooVr4zyf5Db7YtkKrxmvkYgXRwkDD6K+n?=
 =?us-ascii?Q?e9i16DbMl+ut7uXDs+DaeX9B/RNXThKsqzb0peb3OdUzjtIbvDt0Yxo6gvpF?=
 =?us-ascii?Q?0p8JYtFWuw1p+Ln78PQ14acZ26tJTawN7kC/tEMjdUPdFbD3hTq8HBSnNWyL?=
 =?us-ascii?Q?rmzy0zhTiQMdORdKFaKNGwfOleNsqWqJy3phWiXymJfxz3eJuYMlAxoFRpBR?=
 =?us-ascii?Q?b0pTMY4ZTctKma1u2J2DyVHkAk9tYu4VPj/mVTLvnVYt7GrXXCy30IgBml1D?=
 =?us-ascii?Q?KpJwnnl8A4s=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?YRd5YD4d1fnpCkQqyvqvUpwDa1mU/mUx9gqLr5vmktj0gQn7XOO8KTW2mqP/?=
 =?us-ascii?Q?s8xCeslqft9/XACq2yirEJedcxVMbQMRqdKLLrAX6bMEPfi/eoSqpqzCvh/C?=
 =?us-ascii?Q?Sjv64XcGwBbqOnG39BhdUNYDcc+OCTE+3N4wETEL++4/3nYgrnL53iLf5Ghq?=
 =?us-ascii?Q?54PTK6xSb77AQalZI2+R6OHDCVmT/gdofkI4GwreEss6q44Azr2AnnL1O5T+?=
 =?us-ascii?Q?LFxp9L8ZIH51WcxMY9+jbNJyXxQH22KJNsXRgoNfYgPaU9tB9/rU9hDdR2CN?=
 =?us-ascii?Q?B0cW6BRM36x/h/Qhjpsl9Vr75AZ3HbnUFMYD+YyokwKE1RtqZonkH0u+Bhi/?=
 =?us-ascii?Q?sUxfENK5mdjPdtKBQAYDNGYiqj5zm28pAzlib8B+Geb7V2exQ9dKdspZt++F?=
 =?us-ascii?Q?IzjD1iWmjteL2TCKWwx/FuvUDLAkYfvOMEgKg7KzLxK56Xcr872WM+MMM4VH?=
 =?us-ascii?Q?/8GDhpxI9NU0TTKUidluC4YNEoYSgvoIJVRxcmL8QVVKyOz7cij4MdqlHOjv?=
 =?us-ascii?Q?TNu7So58Zs5qRiPi9fP87GcY6cpIahdTgGLpMUM3186k0Z7wauSvfBaLevBT?=
 =?us-ascii?Q?hlY+IAc8qvk0JxvVb83SJwcVNipigBg285zmos8CmDOUsDuYlJWwmjCSMuMq?=
 =?us-ascii?Q?v3khByIKUsWZYe03Eun/ry2gasukZVuWN5J7vlpm/038vaV19w9grC9fMh/l?=
 =?us-ascii?Q?J1O++rf1gFcvTvejX0OEL6M/SYyS5eQEdgjvC4vJR++pTEUJGJyoFubY4V+J?=
 =?us-ascii?Q?PSZN+SbRQgqFLlFJ3Hm4kh5P93I5YNyXITdLmKiCd7JkXM7AFQ9VoqQyPKWI?=
 =?us-ascii?Q?HwTr4HWvRW7Cw5fn+7vQQ36o+Ms0wepElmmDfJHDNubaHm0MUqV1fyPP5uJC?=
 =?us-ascii?Q?svLXJsid5lGDbWDJYlRMySM1TIwPl8pfBACyzXCJIkJWCErsQKayntGlW9uS?=
 =?us-ascii?Q?7UtsK5aoP+Tjo3UN1wwgbJrrJ5hBfWPsus7XjsXYsvpAb98D144cuc9mLFVp?=
 =?us-ascii?Q?yhrzE0p0rXLzTtFTxaebPT3qaJeEqBpL0ZoBYjJ/eROQpkOyGIBZhMRSisfQ?=
 =?us-ascii?Q?k8vGJKMvE3tnkeryM255b8jb0reO8Jzd/+pdwmwjDcJqI8Rq88mYePYl1CHx?=
 =?us-ascii?Q?tE6ttND3p4lqwgWkJsPmk7x8xzASrmDesGtWSY7mcZE7wYv8dYgYpMLoV0TS?=
 =?us-ascii?Q?cJW60h9KIKH8T1nHCrh7nzXVuqqMYYsrNd+eECaLL6q/PHaTsFnnIh4PGgyQ?=
 =?us-ascii?Q?GIfrw95VFnNU+HBLubGo4NigAO/g3uRf/blY/ttdra+10DZhOGm8S1mZCKER?=
 =?us-ascii?Q?ebMjPtKLPB1tsoFvaQALWgCNf4KH/w45x4lOqfM3CO0Y7EEwRklGqLwvDQ8W?=
 =?us-ascii?Q?o7PfBXL1qP7tJjdy2bl0vAtrBfY7pKsTs96pW5pTngNmGJE60eDrJ+OMnEH7?=
 =?us-ascii?Q?JHQCO3C7m/1dhhqUyEXr4MOu2QEwBNZU6OvQ9WXyLA/TRXHwnHM+NVgw3TR5?=
 =?us-ascii?Q?NCm8mU4HEfBNkwF9XVYfyiXznCg3Hb108dQC2LNTqz2jePF16DLbVkpiDQHN?=
 =?us-ascii?Q?HGr7q1yMsqwW4wB+0um/QCyVISC6+oduMqyPlIbDaESX9Q6wZSLEiCOtM7hU?=
 =?us-ascii?Q?aLszEZmV5CMpHK2zrk+yrwcLIp6zkoqpedHIB9balqS9?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d67eef03-a872-44bf-2545-08ddd4f43f26
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Aug 2025 14:19:25.4734 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TaceudBdsi16kfkn23txYOZV8WERa2n8i0DmlZVwmj5CDa6wFeK0gwrwfqIQHehekoCsijk55vtSXgWARJFUgA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7245
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Aug 06, 2025 at 05:05:39PM +0300, Imre Deak wrote:
> On Wed, Aug 06, 2025 at 04:20:53AM +0000, Lee Shawn C wrote:
> > While performing HDMI compliance testing, test equipment may request
> > different bpc output for signal measurement. However, display driver
> > typically determines the maximum available bpc based on HW bandwidth.
> > 
> > This patch introduces a new debugfs that allow user to configure
> > dedicated bpc manually, and making HDMI compliance test much easier.
> 
> There is already the intel_force_link_bpp connector debugfs entry, IMO
> that should be enabled for all HDMI connectors (atm it's used only for
> those that are on an FDI link), instead of adding a new debugfs entry.

There is also the "max bpc" connector property. If that doesn't work in
your usecase could you explain why?

> > Cc: Shankar Uma <uma.shankar@intel.com>
> > Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
> > ---
> >  .../drm/i915/display/intel_display_debugfs.c  | 58 +++++++++++++++++++
> >  .../drm/i915/display/intel_display_types.h    |  2 +
> >  drivers/gpu/drm/i915/display/intel_hdmi.c     |  7 +++
> >  3 files changed, 67 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > index ce3f9810c42d..cca115a6f130 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > @@ -1208,6 +1208,56 @@ static const struct file_operations i915_dsc_fractional_bpp_fops = {
> >  	.write = i915_dsc_fractional_bpp_write
> >  };
> >  
> > +static int i915_hdmi_req_bpc_show(struct seq_file *m, void *data)
> > +{
> > +	struct intel_connector *connector = m->private;
> > +
> > +	seq_printf(m, "request bpc: %u\n", connector->force_hdmi_bpc);
> > +
> > +	return 0;
> > +}
> > +
> > +static ssize_t i915_hdmi_req_bpc_write(struct file *file,
> > +					const char __user *ubuf,
> > +					size_t len, loff_t *offp)
> > +{
> > +	struct seq_file *m = file->private_data;
> > +	struct intel_connector *intel_connector = m->private;
> > +	struct intel_display *display = to_intel_display(intel_connector);
> > +	int new_bpc = 0, ret = 0;
> > +	char *kbuf;
> > +	const char *p;
> > +
> > +	kbuf = memdup_user_nul(ubuf, len);
> > +	if (IS_ERR(kbuf))
> > +		return PTR_ERR(kbuf);
> > +
> > +	p = strim(kbuf);
> > +
> > +	ret = kstrtoint(p, 0, &new_bpc);
> > +	if (ret < 0)
> > +		return -EINVAL;
> > +
> > +	switch (new_bpc) {
> > +	case 0:
> > +	case 8:
> > +	case 10:
> > +	case 12:
> > +		break;
> > +	default:
> > +		drm_dbg(display->drm,
> > +			"HDMI bpc (%u) may exceed the max value (12)\n", new_bpc);
> > +		return -EINVAL;
> > +	}
> > +
> > +	intel_connector->force_hdmi_bpc = new_bpc;
> > +
> > +	*offp += len;
> > +	kfree(kbuf);
> > +	return len;
> > +}
> > +DEFINE_SHOW_STORE_ATTRIBUTE(i915_hdmi_req_bpc);
> > +
> >  /*
> >   * Returns the Current CRTC's bpc.
> >   * Example usage: cat /sys/kernel/debug/dri/0/crtc-0/i915_current_bpc
> > @@ -1359,6 +1409,13 @@ void intel_connector_debugfs_add(struct intel_connector *connector)
> >  	    connector_type == DRM_MODE_CONNECTOR_HDMIB)
> >  		debugfs_create_file("i915_lpsp_capability", 0444, root,
> >  				    connector, &i915_lpsp_capability_fops);
> > +
> > +	if (connector_type == DRM_MODE_CONNECTOR_HDMIA ||
> > +	    connector_type == DRM_MODE_CONNECTOR_HDMIB) {
> > +		connector->force_hdmi_bpc = 0;
> > +		debugfs_create_file("i915_force_hdmi_bpc", 0644, root,
> > +				    connector, &i915_hdmi_req_bpc_fops);
> > +	}
> >  }
> >  
> >  /**
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index 4d9df803ad47..e1e42d701f68 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -564,6 +564,8 @@ struct intel_connector {
> >  	struct work_struct modeset_retry_work;
> >  
> >  	struct intel_hdcp hdcp;
> > +
> > +	u8 force_hdmi_bpc;
> >  };
> >  
> >  struct intel_digital_connector_state {
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > index cbee628eb26b..0aa4044e2854 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > @@ -2118,6 +2118,7 @@ static int intel_hdmi_compute_bpc(struct intel_encoder *encoder,
> >  				  int clock, bool respect_downstream_limits)
> >  {
> >  	struct intel_hdmi *intel_hdmi = enc_to_intel_hdmi(encoder);
> > +	struct intel_connector *intel_connector = intel_hdmi->attached_connector;
> >  	int bpc;
> >  
> >  	/*
> > @@ -2134,6 +2135,12 @@ static int intel_hdmi_compute_bpc(struct intel_encoder *encoder,
> >  	if (!respect_downstream_limits)
> >  		bpc = 8;
> >  
> > +	/*
> > +	 * overwrite bpc per user's request
> > +	 */
> > +	if (intel_connector->force_hdmi_bpc)
> > +		bpc = intel_connector->force_hdmi_bpc;
> > +
> >  	for (; bpc >= 8; bpc -= 2) {
> >  		int tmds_clock = intel_hdmi_tmds_clock(clock, bpc,
> >  						       crtc_state->sink_format);
> > -- 
> > 2.34.1
> > 
