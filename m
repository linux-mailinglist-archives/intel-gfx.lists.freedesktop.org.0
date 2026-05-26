Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SFuADv20FWpxYAcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2026 16:58:05 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABF165D8281
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2026 16:58:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3394F10E6D6;
	Tue, 26 May 2026 14:58:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EMUhG6qm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7CB510E6E0;
 Tue, 26 May 2026 14:58:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779807482; x=1811343482;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=IFRQzBAsYSHU+/VCqzY10E5nYyPcsVvya8cxX0NmCa8=;
 b=EMUhG6qm/OsF8PIR/lEFau48vlkQxVCD0Q07j9r0E7zch9Wi4qfu034g
 CzrTbe37cHidSexwJbOp1B8jok7xr8yG2X49um1eTDHBybQAppISyqFfQ
 ZvJrAUIuzyE4VX+9X7749SqQ09aeMRqO775W9cNSiZMLRcNsMY03ddD/q
 a0cpjP51zhEPzbNk42edSAXD4c40OoXSpTMGHQIhq6Uvfd8jys+2t+yL5
 NHhTb/mTVWo6KsvHvYbcVeBJz71DwbeYoguq/PqQtB5pufXoEOkX+YXVg
 sQx/K9ZRRrXYocVxcSkn1nHMWcwKx/fec7wsvxC6wuTeX2x8insPGnzU9 A==;
X-CSE-ConnectionGUID: 1bU5kr20QdqKRw79uSF9BQ==
X-CSE-MsgGUID: u4yjOeVPQraQoBhxZLMuLw==
X-IronPort-AV: E=McAfee;i="6800,10657,11797"; a="80655022"
X-IronPort-AV: E=Sophos;i="6.24,169,1774335600"; d="scan'208";a="80655022"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2026 07:58:02 -0700
X-CSE-ConnectionGUID: NQ4g4NGITRGx92o5dDDhQg==
X-CSE-MsgGUID: LvaW0eWXTEKSxG1yC9lhmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,169,1774335600"; d="scan'208";a="272277409"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2026 07:58:01 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 26 May 2026 07:58:00 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 26 May 2026 07:58:00 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.26) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 26 May 2026 07:57:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WuXGsQ1DCKTL+9487WHziwa4/K/+C9XypjU/Rgt1p66aV9mHknHSjZ2AmbBInqVPIV8rLJePmWr7H0IajiVjJ+O/T5JVXDy6UAxRhW4amwSzkflbPFbOLFapWkVxeVUNtcL6VP+l46NilnJE/jfzfSkadyBnV30Z2nRdoqDlgBHfU8R5zH9z1PRSna1LdZaJcS9uZWKs5S93DdLpDmdIh6nIIi17hyfO0V1RlPcMfpOqLfFEHCs2Wu2mE56LTy/1VVLTqZtOmtau2VKgwr7SpUn6XWMbY8tjSWaKWXvZIvZg/2m7xSIE8wbBpk++Nw0AA308xq6jyn0s3CrJTlGvCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vfZOOE4Ebn50bJGplm2NYO1o2B2uFKuIcRCgKm3mE64=;
 b=iXMhQjN8E+BblRGFx2E7qSTtphBSxQ3dubd7arpnqKJnSaoFO1ppu04kW6U5160Hz7H8ZFolh1zEWE6r4e3jId5DefuPpVjgcQZ9jq276TtWLHilwEkiM1ZQDs6B2ifBiGJ7DE4cshBWLQvzC5Z9qvvBPeNtGdbAH3PEwbm+xb4i6C/iAxJvuf3jGtnD792Pt3TBFVHJP/pdJ6aUCguTI6B0vZ78Rue1pvvXoIKcdrhHq173+mMDo+BezMd44Z88vgJjHY0B0FCGfGE7JildHq9UBTRB/uw6GKYkxfzqFJrK6AEUCy/UttN69uwNRrupq9JZDXYC3pCHGLiLrd6wJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by LV2PR11MB9539.namprd11.prod.outlook.com (2603:10b6:408:378::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.11; Tue, 26 May
 2026 14:57:57 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0048.016; Tue, 26 May 2026
 14:57:56 +0000
Date: Tue, 26 May 2026 17:57:32 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 0/3] drm/i915/power: renames, cleanups
Message-ID: <ahW03GWPCffJqFvL@ideak-desk.lan>
References: <cover.1779800132.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <cover.1779800132.git.jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV3PEPF0001DC02.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::318) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|LV2PR11MB9539:EE_
X-MS-Office365-Filtering-Correlation-Id: 328e3117-16a0-4428-80a3-08debb372bc5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|18002099003|22082099003|56012099003|11063799006;
X-Microsoft-Antispam-Message-Info: a6OV9iln8PRo2urQk0VYQVsj9k9Y1C/KXDMI0T13cS3HYrkbjRNcjSmXBtToah9Bfea4ScIwzAI2LsIdObiNiNTRrt2K9AZuJBfvbFpmyDx/lbYPDo3fwXLozbAO6NZlqPPZ++2fuIU9hZjFvXfAKZNZduakhX27TpxKESVUVUrOI3f7IumWV7PjclBWh/nb7Xgd2CPomHAFYDAJxsUY9Wnxoev94ZEEtW0RFqE0aBc5ov4Y0NhzGPyM1oeSQeFi0QJegA887K7VdYFhztem4WaKCY1YyvPeTwwedtC9/Z0H3HzZe8T60aMGVaTK8+bkuWOWxHVNfQaUj2CDilOyoZXR9syttGTEo8v93TEriXbk7jhM2DN8DaWyWpmsf3DSNVZGMVUUxKrmwPirA3+bi2/qetSykZPKFgNBPLfSQQ2xaKYoogt3hPMNHKf4gNMCHmg7KggVQdwn2DLYzqx2TPOmYyrDkqK4GLlZgPzHEBSE32nDVneV1PweqIdIOXZJKjtCN08XCIW/pImwEyZh4znjbJ5i0R7ji6b6GQdO48LDbaaxe/rRbn7anSoNweJeTPjJVy3NTxnzs8K2PcuGfkiFrL3uvpmcwqRjX0r/i5p38PdK8Qp711MCI+NwPqvi2BRYk6587vTOOGxzoiWFw8zRZhPqIprUZSpi4VWospPdK7UW17g3KGU2IlxjVnpe
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(18002099003)(22082099003)(56012099003)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?YBjNqatmE7t71SUDWBFqF1+LTBu94bqrWS52rvfL0wTfIkELVF7avLRkhN/U?=
 =?us-ascii?Q?ix99DtLeKZaYQ+WQuUybYEIDFY3Bnv2tBp+7XDt/s9hG9li7crJmPoxStDME?=
 =?us-ascii?Q?x/dTg/wDap2mb7UPWGGJfE81d8lpfnqF9Hl8iZ9v0Hq/bvvrL4eijXkqyR8x?=
 =?us-ascii?Q?D3ACQ1XH7ngddwYV1jSitPErHOJN6ZiuDuSoPsOSJE+VgyI+6Mzs39GGXT7X?=
 =?us-ascii?Q?NQVZ8/iBspcdvCGc5iaFP6sFt6b4NyXrv2Z+2sJUWSECSa1O8xgAB5TITFud?=
 =?us-ascii?Q?MWYm6dN0Zy+u41Fv5uz1uA3AkLFMJ0w8bn43VndIE6D0b7uev/+NtbJvMKa0?=
 =?us-ascii?Q?3VHUNV8/tAXAh6uo/aAHEULDedGGonkwKCcSwpLOvM+bEDNLkbKCEujFy1TC?=
 =?us-ascii?Q?KATsDyDbdrJ/snHE8cO5ERHxRUt4eP/Cx0EeZwYyn5lO1FnILM8a+/6RWFJJ?=
 =?us-ascii?Q?x7CXYPB8n0ppb1qYGoJc+AB4uSDm9Tdokz1BlntRQ5GKFE3jKMwbEi+4POty?=
 =?us-ascii?Q?jeJ/zgRl9LhnflU7uqCB365nx06NwCTB7QGyglvvMUUlKLsU9ZG4bGKQTPYi?=
 =?us-ascii?Q?3kycWGrYv2gK7vVRIfoeu3ofkkS0KZZTM6ShMVTOmlEA4776MwxCrPpFaOJV?=
 =?us-ascii?Q?DyaAUhBTm535TbRwu3yaYN8N4uFlJfIwwmjUkrFmfFfL2/8B9SAJfSjMilBv?=
 =?us-ascii?Q?iMEiym8ASwFHJCSRsC49K5EBsjd/rRaaxNNnWl4K/8E+1/Lr3UbuLHj+5VOL?=
 =?us-ascii?Q?w6qdpA4fT9ugSVfMeVXB3EP2BxdRm7Qcz7fb/ClMJ0Ny+UDc0FpFnGwFGHRK?=
 =?us-ascii?Q?KWvispI75cVXykPH7T09dAhJBAC5kofXMKe/fnKK3CTcJgq7VmqubUC7gGT1?=
 =?us-ascii?Q?B4M3XLq5kZM1y6XWmxEK5CDQ/0ntU9+wnE5umOmPlsGhaKxIN1fiUib/0op8?=
 =?us-ascii?Q?sISfb2TUfxLzBfqfKOspxqElQ6+Rra1e7PVZcVxThk4G8yveyhbO7AedVMjm?=
 =?us-ascii?Q?OPNX+bFRR032v1rl+IsbSqglrHBASPpYEV0D/COXq45ctBACadj2EmJMUhpX?=
 =?us-ascii?Q?LVGeDuT+fEGBZP2K/nqjsrxkIJqlCjXO4cqlYebgiGhxWj3aWbN9IO61yIj4?=
 =?us-ascii?Q?kyOvqOEPj/8cAXDR53YZQcGJ3VSa+X+buFOoBynH+zG6R0KcJED9y4yTJYLY?=
 =?us-ascii?Q?LyaSfwCHPxhNVnYK4zk+p6Qqjlgm1lvMKOgY+L4S1JHer8dDUDU1gVDDj1+R?=
 =?us-ascii?Q?1Trx96b5nbFVeN5jH1w/fCgwGhwM8UNHNt52MQDJ1+hnmYMPvcemCgjPCJpr?=
 =?us-ascii?Q?Qv4HSh+soA207JE3KtpUBQMzpRq/HsaldyhUIEQI4qdRZJ1CHYXMVwi1tRhc?=
 =?us-ascii?Q?i6T3bUrGgDSrWQ9Fuiffouv+I7OD+G8rd0TpplBdFP969V9BkCZOAoGA5T9S?=
 =?us-ascii?Q?IT/zeduUcMADzsQPZFiDQzm2jisf8RLb7rChgLcQmoHhfcPKZYGMFJBhy57c?=
 =?us-ascii?Q?MM3ycmvUAorhA2pii31Ah3/ylifH17Aa1GFey/6lCLU/7ojix1cnXz/SpQW1?=
 =?us-ascii?Q?4ArGbJ2e3101F9tTqQmxgM5u1sRqSkph+UJOSXVvZz1ss37LA+ue31hhxtKa?=
 =?us-ascii?Q?UPVBylh0y7qr4hNI8YZjVghQ5NfrD7u1bEfaJvfzgMAlCiMxK2oXarri3bq9?=
 =?us-ascii?Q?JDPJKttqKfhRKubc32twl9g1q9cmBSLAEAEDkz1d4LVciZ2ajCNefRDsz79s?=
 =?us-ascii?Q?l5iS9fOksA=3D=3D?=
X-Exchange-RoutingPolicyChecked: mToSJuK9zQUEmFVCGty4I5ALHUTaNV/fNJNIKBj5yY3CajDzZZD9n+Oukt9ZriMZpfzUnudVCeGu297A55CBctovKY6YYh5w0zwRgPxPl7jvz3LcuGb9d8bpCVNTg6RL7CJmkFfoAR70YjM2gqgMQBB2w8Cm8FGyQmaDyqlt3DuLxEPppqi5/LNMZ0bJkdAdOv+e98XRcW0hMb/lhiPHJqY9V36JzDXPtPEDPy/o6exCGd8G7cdAYg8lfJ+th7QWz8Bb22oOPJNsUSGpzBlDGExI76rM2jmFzfKCx+VhrYk576C24TFWwdjk2Cg4Egup3/AiWmEvL1LHDXkOJrlegg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 328e3117-16a0-4428-80a3-08debb372bc5
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 May 2026 14:57:56.7261 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PCsq3RVZgfVwN3oGHCSsAS63ea9gPrnCezeAbFDpp0xrfv5acHgv7/pBIqYj0tCTjEEnSd/eJqzRaxAwzBfELg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB9539
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
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	NEURAL_HAM(-0.00)[-0.994];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: ABF165D8281
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, May 26, 2026 at 03:55:56PM +0300, Jani Nikula wrote:
> Jani Nikula (3):
>   drm/i915/power: make intel_power_domains_{suspend,resume}() static
>   drm/i915/power: rename intel_power_domains_*() to
>     intel_display_power_*()
>   drm/i915/power: drop resume parameter from
>     intel_display_power_init_hw()

On the series:
Reviewed-by: Imre Deak <imre.deak@intel.com>

> 
>  .../drm/i915/display/intel_display_driver.c   |  8 +-
>  .../drm/i915/display/intel_display_power.c    | 84 ++++++++++---------
>  .../drm/i915/display/intel_display_power.h    | 16 ++--
>  .../drm/i915/display/intel_modeset_setup.c    |  2 +-
>  drivers/gpu/drm/i915/i915_driver.c            | 14 ++--
>  drivers/gpu/drm/i915/intel_runtime_pm.c       |  2 +-
>  drivers/gpu/drm/xe/display/xe_display.c       | 20 ++---
>  7 files changed, 74 insertions(+), 72 deletions(-)
> 
> -- 
> 2.47.3
> 
