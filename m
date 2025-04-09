Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFAF9A82875
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Apr 2025 16:47:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8620610E91A;
	Wed,  9 Apr 2025 14:47:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZPvQrLgE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B05310E918;
 Wed,  9 Apr 2025 14:47:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744210048; x=1775746048;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=elmoCXnxJzcm9D9gFL+ch5JCFrxw/0/FIHJsVBdeTxI=;
 b=ZPvQrLgEVTRMQIOj4uTpmLZUwh3AgzcrlsnRZtETGGcRL/8bN8BeiD/w
 y0qEUe1nzZdj6Fu/SvxPBrYknrxnlPYze9ziRZDAwHcL7q4YjQXP7NZuB
 zWTCesIOA5daynxb9T6bmaQPCUY82hsmcNEryxbZaG0ah0j/fsmDZzfkP
 CeZN77Buc80BVbPBEfSILyI/Zd3tX0jXIf3Uv8F5893u4zprYUpn7p5Qt
 e0e6NSUIuBeW9Any7cszp6gEzyaSx0LTBKHjPnmKQY08YGgT8wW+NAixu
 TTXLu+oKNh+Z8EC2mWbSI1wS14JsjE1m6Hr+YtEGBX1dE3QJiTqetxpIF g==;
X-CSE-ConnectionGUID: GI0oMfGoQj652jiaFIVu0Q==
X-CSE-MsgGUID: aujCWNcXSSKjaGCTYnWFUA==
X-IronPort-AV: E=McAfee;i="6700,10204,11399"; a="33296183"
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="33296183"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 07:47:28 -0700
X-CSE-ConnectionGUID: u8HOV8bqQty3QSRmCEWAlA==
X-CSE-MsgGUID: GbmB0ymPT2imJXG3fGjl5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="159583175"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 07:47:28 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 9 Apr 2025 07:47:27 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 9 Apr 2025 07:47:27 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 9 Apr 2025 07:47:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uVefBP4SH9kMwlIqxmoPzhcmd/tjD/PHdWeqhW8Kxq45LmLskYN4UFZMsT9GnP/6BhuZygHFHBVpnLOVNIwhuLmM0oPlb2BvpXYGFG6haaRLLsnb0J0/dxMW32qnHdkLCsBV6ok8ecISfet08Cr1yl/prsy1pkUcKORAZMkCWJOPSUrvgeKzEXPNTFVdW30mmYXdEPpaL2zJMxTy8JnuqAMLdoOiD98AkKHaF+LILFtWqHcY3RxCdanND++8rnV5aIuAWyoofnW72pyfV+XWfr2PsZQwKey93nA57Fy623NgW+mJVMtCpyEGAY3cbttfBF6nqX+NdEJ54zUd0h9Seg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2WnSlZaySx6ocpx68vSIpQ/YgdpZL4DkZGxphpUBlxk=;
 b=L0dHot5bpNuz2eD1q4FWXV4ZOn2hMlIb5pldMys1LAJlwnKf8WFVNx/Mhv5dlzPEhiMQZZCO+0w/Qpd/dYsE9hSo/YzJ1TUyDibPKunivL+SAWAYF1SdMtHW0pfsWrqVrfIZIIdSxHusyDDLVRxNey7t3lqDabXUSNreZHxcAc6Naza4hchGCqHVg6BKeOgzwWsQLloW0jtSW68KPEQByU2Tu1Cp2LGTYrNLbuTPxKl4LQlFlhEVoKO6YE/ppREJNH0RJdguTQWQbbkWqyVCcH48ENLcPfHgD1ta46bV/L988vf8LLrgqZuEEH+upWnkA1sP6cAG79q6k2DUDE1SAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY5PR11MB6257.namprd11.prod.outlook.com (2603:10b6:930:26::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.23; Wed, 9 Apr
 2025 14:46:57 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8606.033; Wed, 9 Apr 2025
 14:46:57 +0000
Date: Wed, 9 Apr 2025 17:47:01 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 10/10] drm/i915: Add force link bpp debugfs entry to
 connectors
Message-ID: <Z_aIZRbcDYu3DT9E@ideak-desk.fi.intel.com>
References: <20250408214342.1953197-1-imre.deak@intel.com>
 <20250408214342.1953197-11-imre.deak@intel.com>
 <87zfgpwxz9.fsf@intel.com>
 <Z_Z4ENIrN-czndqa@ideak-desk.fi.intel.com>
 <87frihwi31.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <87frihwi31.fsf@intel.com>
X-ClientProxiedBy: DU7P195CA0020.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:10:54d::11) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CY5PR11MB6257:EE_
X-MS-Office365-Filtering-Correlation-Id: e0214efc-1139-46df-3ee1-08dd777560c2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?VHAs6MKYO/e6tdGSR5hvkcwwDBk9RLFKWFThjhzuX6BX089CIsDztZ5PaZyi?=
 =?us-ascii?Q?gRv8TeN6KNRD8AUQOJJDO64prVWi1foyyK50E/+QpcCa3NaF0MHqhoq/AlVb?=
 =?us-ascii?Q?9K+o5mm65CnjPqk4zJFWhMxGPki+MS/liT4WrKo2R391im8wI6aGbhPgoKqC?=
 =?us-ascii?Q?T/BUYwj9AMb9eZfng4rEbJwsJcUzZh93sMfU9DESVild1LI4a1/KMWIykVbY?=
 =?us-ascii?Q?zsNaDGXgbWL+Ylhs4gsuCLS+VsOFJAOQPLvo3YUqjNWyNGIkkDj6MWHbDyD3?=
 =?us-ascii?Q?21ueLNl1JGHbkcDDtRuKLdACBjbtJOqGLzofQ0DC027GEwyjnhO7CZShcG8I?=
 =?us-ascii?Q?4SgZ3397LpZvkre3tT7RbYwYbwTqL46op8mMSq9UXLZ2PdX6oUzjO+e+/vEr?=
 =?us-ascii?Q?rdEGg/LiKnK3YRUK5se+FK+3aesrA06dioFTJSiy5XMEyjLVQSm/RJzL65N1?=
 =?us-ascii?Q?vk8hbuiSgJ1kZUG8qvOU5dsSGEsyA2qFAcuO34D5yjgWXU3tOMH6vN5yt9/S?=
 =?us-ascii?Q?jcq52iqQLfJb5lMWz8HNQ/HpM7HV4GDd7wCKzE9JQVwwQtq7vOO4uET88kXJ?=
 =?us-ascii?Q?ASlze7g4rayGo+G3jQHKfVRJmqAJ0lHpbkEi0rUleR8QqoxYEBBwsxXecfI/?=
 =?us-ascii?Q?MY2+7xT+6MWFTRoPXQQS34A4Jz2+L1b014Zf2KTqi/BSm2uWq40TCTLIcfqu?=
 =?us-ascii?Q?G7KBcwTRCSzfGnd9iJ2WKScBWL6cKOmu71uK6kEWf2dwYLH0ndqJlJb5GIQN?=
 =?us-ascii?Q?+TokdmK5MF8Ya6mja6cbSlRmBg4sBqE/wlJU6r6RVWn78ycpZ4mzHD8jDw8z?=
 =?us-ascii?Q?HBJXaIo9A8JQ0MXkAkeC3G9CIZobxyz4Pdt8bKyscJ8z/sz7nmZlkOTlJf0F?=
 =?us-ascii?Q?rnopueCkotg/VQS1sLWmZ0fypMO5iUrbnwjAE8A+jEDdNlBzwxRmK0IpOsHQ?=
 =?us-ascii?Q?Myxv6gKJzRBZz1jPUmO7eRc7UBAVJFTKY//YffOpdN6s9fIZottzLhzZ+VdA?=
 =?us-ascii?Q?Hon4vAveubtbIZK2WXUJhEyLrqKSAH4e8iRWqB2/hA/edlHlUZl3DsEcdtzQ?=
 =?us-ascii?Q?DjwPXTCUvU/2yyRHijZsvFo/qu8b+IbfLCRdbyj/prw4JlG77UayzUxZi9jk?=
 =?us-ascii?Q?KNDzY2Je6dK6bQZ6w7ekvZFo1NqP9MfpZsqFflzfRXyVFbf3BGJwhermoP0C?=
 =?us-ascii?Q?PZLnMxdZ9VfTKsS1WqC8QP5hWQCLSib+YZSB/24CYAlyYJh/gDY8r0bPmz7l?=
 =?us-ascii?Q?4Nyd5tpNaEAJbupplcFlQHlfW6vxv/d1EXMj9GcJzp02IJNxCVSOkZYPEBAl?=
 =?us-ascii?Q?nj1dD7mskZFI76iJUEHK80x0V20l4DJ1IeznWQARYgNvhzTwrq7ORe4cYzCc?=
 =?us-ascii?Q?IMSwX+OBMHVDcjNnERHpdlAeqbbP?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?5pWd84WTksDbc30eLyU4ALWhuZ/0mxGSCU7MMaq9Asn96EYBkliBfTxaSNbT?=
 =?us-ascii?Q?gS5UsEhpU1j/KHJu+u2eGc5ZeStOXL++4besz7IW+QInLOo8ulQxIrqiarhi?=
 =?us-ascii?Q?Hap3yy8CgbnDSHZGV+fq4DHJfv/MRlHsMrvoOnxFZs8vKkjgZb17nsVBJI8P?=
 =?us-ascii?Q?D+AVW6UDzUcN/pDZF/gvd8aHxht2aMUuugaY45fIKCAS3xVwAW63DIiw5oa5?=
 =?us-ascii?Q?vzyCnlWCEvqLJYf7SLADLbM8BloI8Ya0tNiEyBScJfmA1Q/PbQhVcDcenJWD?=
 =?us-ascii?Q?2kKCLDW/pjc99zYgVVxYAaaYHy1tbs/rri9duduL8ruX7FRatcEjn6zr7ZPl?=
 =?us-ascii?Q?JpMgE2wbut9K0AEYTWb8421QzaXR1oPNhK0CykTehA0eCALz0VPWF9xIvslS?=
 =?us-ascii?Q?CFSwXhszCMfdn04zO4d2PRuZFJX3ah+sioWC3pHnfiYkMWiT9oZwOHcnqLOb?=
 =?us-ascii?Q?rvDpozUDbXqv67EVTo9WA+qHP3OQ1f5SRq7//WgSCNblLqxioCGPApC1s2lA?=
 =?us-ascii?Q?Lf0RT0cOmj5qrZkU3SMC1cPGImZ8nQ85pF8PKgjM+iv5OTxzOHcbUYIGozFV?=
 =?us-ascii?Q?yt5mTJgmvzDZLLxyrVNBsRyWjXd13IJesct+3uFZUkQpNBc5mZFDq3F/sTu1?=
 =?us-ascii?Q?H8v3TK1tW1PfDDuEHNXX6Y+6rho2HzxrjhqVsqAlhkGeCrJr8bo4oTXmd8Fs?=
 =?us-ascii?Q?W4G+ezWz5oeWpfC5kB9oZkSPcnRxH1NNLdPkjK6/bmhPsg4d6JpapblWaBC5?=
 =?us-ascii?Q?V2ELMmM3V0WDcVnPgnPGLtkQEJfBLWEQ7dqgDb8tUh2wCbllydStvXwv8VuQ?=
 =?us-ascii?Q?IVx9ptIbGWFLCRpkLW/W2utRrOGMt/Z52IuJsDvDeoUnKUFVBPyhdWPhYATo?=
 =?us-ascii?Q?I22GLfRzlfW+upm4wsNnUwcZsrCKb9+BnCsRF8xpr2dZO1BR+tXStyDivMRJ?=
 =?us-ascii?Q?UqAfnh73rdih+b7N8y+Dk9GLEip/LqfMJZCKy56oPZDoYd639l4714XZDtH4?=
 =?us-ascii?Q?9XWuYjdhka7LDVEy0Hg0NryHs9jsbMC7ccpf2q74Ld9OWocDY0UkawOu7oYr?=
 =?us-ascii?Q?akQxCKMZ++6csUGPP08Jm4LDuY9cxfqf7rk88pRJYTbK8vWuquDlZukzv/ce?=
 =?us-ascii?Q?YmArM8K3jl2vGcZwUhKhT3sRwcsj+t5oJMxMq97qYUjPdLFMf9kx0iNMpi8N?=
 =?us-ascii?Q?esgT/nlObR3QSNT+mrfUlBDUPc0R7t/iQTWCI63Frdw07zq+PBVn5SF0c4rh?=
 =?us-ascii?Q?WezdMgCZwTVkQyc+6OxZ50NwCxCJeDtD7Ks2OxJxrq1kkFn5bfcpgK+4TojV?=
 =?us-ascii?Q?ODVkTWeL8xOa8bvGvhd/rgbOxLVhdr1N3GUXcmtiTndQszpOfIafdcOT/5/9?=
 =?us-ascii?Q?Lxmbx0lbI4JcCAnm4daRbLuGFJMoN8nQNockx+4SzV4By3gc1lMIFVv10hH5?=
 =?us-ascii?Q?8UGRY991MrsbmrZTDOr77KBBrEjT4/DNh5bNKrX62SqQrMx8iiMs8L9xd6aC?=
 =?us-ascii?Q?vxSGfoJexGstz6YqzgWw9fCfpZg4FvQprMZRL2P9Bcyb18B3DjXvWPSUANNv?=
 =?us-ascii?Q?6iu4Z5zcR+in/Hrv/8bGwGnIRr8QbiYTSZRd4mSg?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e0214efc-1139-46df-3ee1-08dd777560c2
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2025 14:46:57.6795 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ms1UtkJUlcsj714fwXdpYlV8MRuC/LsIwRoVfRB5vL1Utrm8UgHVFAsQ1or9ix+pwdHlVVD/In7Gcf4EJasOyg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6257
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

On Wed, Apr 09, 2025 at 05:00:18PM +0300, Jani Nikula wrote:
> On Wed, 09 Apr 2025, Imre Deak <imre.deak@intel.com> wrote:
> > On Wed, Apr 09, 2025 at 11:16:58AM +0300, Jani Nikula wrote:
> >> On Wed, 09 Apr 2025, Imre Deak <imre.deak@intel.com> wrote:
> >> > Add the debugfs entry to force a link bpp to all relevant connectors:
> >> > all DP connectors and on an FDI link CRT/SDVO/LVDS/HDMI connectors.
> >> 
> >> This deviates from the current approach of intel_connector_register()
> >> calling intel_connector_debugfs_add() which checks for connector types
> >> and other conditions before registering debugfs files.
> >> 
> >> In many cases intel_connector_debugfs_add() unconditionally calls
> >> feature specific debugfs functions such as
> >> intel_hdcp_connector_debugfs_add() which then check the connector type.
> >> 
> >> I understand the motivation in this patch, being more object oriented
> >> and all, but it's still a deviation. I prefer the same approach for
> >> all. Currently it's obvious where all connector debugfs files get
> >> registered. After this patch, it's not, and it's no longer clear cut
> >> where connector debugfs files should be created.
> >
> > I think the better approach is each connector adding the debugfs entries
> > relevant to them, even for the existing hdcp, pps, psr etc. entries. That
> > would avoid all the connector_type checks, replicated now in all the
> > *_connector_debugfs_add() functions. It's also odd to recheck the
> > connector type on a code path the connector type is already known to the
> > caller.
> 
> I'm not saying that's not a valid argument. And I said I understand the
> motivation.
> 
> I just don't want this done for a single debugfs entry in a series about
> something completely different, essentially leaving behind a mix of two
> entirely different approaches.
> 
> In the past switching to your proposed approach wasn't really even an
> option because everything was still in intel_display_debugfs.c. We've
> gradually moved away from that. And arguably the work of moving the
> debugfs next to the functionality should be completed first, before
> starting another refactoring. intel_connector_debugfs_add() should just
> be a function calling intel_*_connector_debugfs_add() functions instead
> of having inlined debugfs creation.

I don't agree that the new entry added in this patch couldn't be added
in the correct way to begin with, also making it easier to move adding
the rest of the entries the same way as well; but will change it.

> BR,
> Jani.
> 
> 
> 
> >
> > This approach would also match how the connector specific properties are
> > added.
> >
> >> Please add the connector type checks in
> >> intel_link_bw_connector_debugfs_add() and call it from
> >> intel_connector_debugfs_add().
> >> 
> >> 
> >> BR,
> >> Jani.
> >> 
> >> 
> >> >
> >> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> >> > ---
> >> >  drivers/gpu/drm/i915/display/intel_crt.c      | 20 ++++++++++++++++++-
> >> >  .../drm/i915/display/intel_display_device.h   |  1 +
> >> >  drivers/gpu/drm/i915/display/intel_dp.c       |  3 +++
> >> >  drivers/gpu/drm/i915/display/intel_dp_mst.c   |  2 ++
> >> >  drivers/gpu/drm/i915/display/intel_hdmi.c     |  8 +++++++-
> >> >  drivers/gpu/drm/i915/display/intel_lvds.c     | 20 ++++++++++++++++++-
> >> >  drivers/gpu/drm/i915/display/intel_sdvo.c     | 20 ++++++++++++++++++-
> >> >  7 files changed, 70 insertions(+), 4 deletions(-)
> >> >
> >> > diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
> >> > index cca22d2402e88..69831d6f68912 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_crt.c
> >> > +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> >> > @@ -43,6 +43,7 @@
> >> >  #include "intel_ddi.h"
> >> >  #include "intel_ddi_buf_trans.h"
> >> >  #include "intel_de.h"
> >> > +#include "intel_display_device.h"
> >> >  #include "intel_display_driver.h"
> >> >  #include "intel_display_types.h"
> >> >  #include "intel_fdi.h"
> >> > @@ -51,6 +52,7 @@
> >> >  #include "intel_gmbus.h"
> >> >  #include "intel_hotplug.h"
> >> >  #include "intel_hotplug_irq.h"
> >> > +#include "intel_link_bw.h"
> >> >  #include "intel_load_detect.h"
> >> >  #include "intel_pch_display.h"
> >> >  #include "intel_pch_refclk.h"
> >> > @@ -986,13 +988,29 @@ void intel_crt_reset(struct drm_encoder *encoder)
> >> >  
> >> >  }
> >> >  
> >> > +static int intel_crt_connector_register(struct drm_connector *_connector)
> >> > +{
> >> > +	struct intel_connector *connector = to_intel_connector(_connector);
> >> > +	struct intel_display *display = to_intel_display(connector);
> >> > +	int err;
> >> > +
> >> > +	err = intel_connector_register(&connector->base);
> >> > +	if (err)
> >> > +		return err;
> >> > +
> >> > +	if (HAS_FDI(display))
> >> > +		intel_link_bw_connector_debugfs_add(connector);
> >> > +
> >> > +	return 0;
> >> > +}
> >> > +
> >> >  /*
> >> >   * Routines for controlling stuff on the analog port
> >> >   */
> >> >  
> >> >  static const struct drm_connector_funcs intel_crt_connector_funcs = {
> >> >  	.fill_modes = drm_helper_probe_single_connector_modes,
> >> > -	.late_register = intel_connector_register,
> >> > +	.late_register = intel_crt_connector_register,
> >> >  	.early_unregister = intel_connector_unregister,
> >> >  	.destroy = intel_connector_destroy,
> >> >  	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
> >> > diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> >> > index 368b0d3417c26..a84bdc83417f1 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> >> > +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> >> > @@ -171,6 +171,7 @@ struct intel_display_platforms {
> >> >  #define HAS_GMBUS_BURST_READ(__display)	(DISPLAY_VER(__display) >= 10 || (__display)->platform.kabylake)
> >> >  #define HAS_GMBUS_IRQ(__display)	(DISPLAY_VER(__display) >= 4)
> >> >  #define HAS_GMCH(__display)		(DISPLAY_INFO(__display)->has_gmch)
> >> > +#define HAS_FDI(__display)		(IS_DISPLAY_VER((__display), 5, 8) && !HAS_GMCH(__display))
> >> >  #define HAS_HOTPLUG(__display)		(DISPLAY_INFO(__display)->has_hotplug)
> >> >  #define HAS_HW_SAGV_WM(__display)	(DISPLAY_VER(__display) >= 13 && !(__display)->platform.dgfx)
> >> >  #define HAS_IPC(__display)		(DISPLAY_INFO(__display)->has_ipc)
> >> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> >> > index 8ca33ebedce27..0b19a9b5adda5 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> >> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> >> > @@ -80,6 +80,7 @@
> >> >  #include "intel_hdmi.h"
> >> >  #include "intel_hotplug.h"
> >> >  #include "intel_hotplug_irq.h"
> >> > +#include "intel_link_bw.h"
> >> >  #include "intel_lspcon.h"
> >> >  #include "intel_lvds.h"
> >> >  #include "intel_modeset_lock.h"
> >> > @@ -5890,6 +5891,8 @@ intel_dp_connector_register(struct drm_connector *_connector)
> >> >  	if (ret)
> >> >  		return ret;
> >> >  
> >> > +	intel_link_bw_connector_debugfs_add(connector);
> >> > +
> >> >  	drm_dbg_kms(display->drm, "registering %s bus for %s\n",
> >> >  		    intel_dp->aux.name, connector->base.kdev->kobj.name);
> >> >  
> >> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> >> > index 35214d9a8c781..7508aa4e3695f 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> >> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> >> > @@ -1445,6 +1445,8 @@ mst_connector_late_register(struct drm_connector *_connector)
> >> >  	if (ret < 0)
> >> >  		drm_dp_mst_connector_early_unregister(&connector->base, connector->mst.port);
> >> >  
> >> > +	intel_link_bw_connector_debugfs_add(connector);
> >> > +
> >> >  	return ret;
> >> >  }
> >> >  
> >> > diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> >> > index 8f2cef36bdf79..0747ef8d6c0ca 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> >> > +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> >> > @@ -52,6 +52,7 @@
> >> >  #include "intel_cx0_phy.h"
> >> >  #include "intel_ddi.h"
> >> >  #include "intel_de.h"
> >> > +#include "intel_display_device.h"
> >> >  #include "intel_display_driver.h"
> >> >  #include "intel_display_types.h"
> >> >  #include "intel_dp.h"
> >> > @@ -60,6 +61,7 @@
> >> >  #include "intel_hdcp_regs.h"
> >> >  #include "intel_hdcp_shim.h"
> >> >  #include "intel_hdmi.h"
> >> > +#include "intel_link_bw.h"
> >> >  #include "intel_lspcon.h"
> >> >  #include "intel_panel.h"
> >> >  #include "intel_pfit.h"
> >> > @@ -2611,13 +2613,17 @@ static int
> >> >  intel_hdmi_connector_register(struct drm_connector *_connector)
> >> >  {
> >> >  	struct intel_connector *connector = to_intel_connector(_connector);
> >> > +	struct intel_display *display = to_intel_display(connector);
> >> >  	int ret;
> >> >  
> >> >  	ret = intel_connector_register(&connector->base);
> >> >  	if (ret)
> >> >  		return ret;
> >> >  
> >> > -	return ret;
> >> > +	if (HAS_FDI(display))
> >> > +		intel_link_bw_connector_debugfs_add(connector);
> >> > +
> >> > +	return 0;
> >> >  }
> >> >  
> >> >  static void intel_hdmi_connector_unregister(struct drm_connector *_connector)
> >> > diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
> >> > index 89d26913e2539..3ac6aaa025434 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_lvds.c
> >> > +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
> >> > @@ -45,10 +45,12 @@
> >> >  #include "intel_backlight.h"
> >> >  #include "intel_connector.h"
> >> >  #include "intel_de.h"
> >> > +#include "intel_display_device.h"
> >> >  #include "intel_display_types.h"
> >> >  #include "intel_dpll.h"
> >> >  #include "intel_fdi.h"
> >> >  #include "intel_gmbus.h"
> >> > +#include "intel_link_bw.h"
> >> >  #include "intel_lvds.h"
> >> >  #include "intel_lvds_regs.h"
> >> >  #include "intel_panel.h"
> >> > @@ -501,6 +503,22 @@ static int intel_lvds_get_modes(struct drm_connector *_connector)
> >> >  	return intel_panel_get_modes(connector);
> >> >  }
> >> >  
> >> > +static int intel_lvds_connector_register(struct drm_connector *_connector)
> >> > +{
> >> > +	struct intel_connector *connector = to_intel_connector(_connector);
> >> > +	struct intel_display *display = to_intel_display(connector);
> >> > +	int err;
> >> > +
> >> > +	err = intel_connector_register(&connector->base);
> >> > +	if (err)
> >> > +		return err;
> >> > +
> >> > +	if (HAS_FDI(display))
> >> > +		intel_link_bw_connector_debugfs_add(connector);
> >> > +
> >> > +	return 0;
> >> > +}
> >> > +
> >> >  static const struct drm_connector_helper_funcs intel_lvds_connector_helper_funcs = {
> >> >  	.get_modes = intel_lvds_get_modes,
> >> >  	.mode_valid = intel_lvds_mode_valid,
> >> > @@ -512,7 +530,7 @@ static const struct drm_connector_funcs intel_lvds_connector_funcs = {
> >> >  	.fill_modes = drm_helper_probe_single_connector_modes,
> >> >  	.atomic_get_property = intel_digital_connector_atomic_get_property,
> >> >  	.atomic_set_property = intel_digital_connector_atomic_set_property,
> >> > -	.late_register = intel_connector_register,
> >> > +	.late_register = intel_lvds_connector_register,
> >> >  	.early_unregister = intel_connector_unregister,
> >> >  	.destroy = intel_connector_destroy,
> >> >  	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
> >> > diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
> >> > index 757b9ce7e3b1c..ab7caaa4f287f 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> >> > +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> >> > @@ -45,6 +45,7 @@
> >> >  #include "intel_connector.h"
> >> >  #include "intel_crtc.h"
> >> >  #include "intel_de.h"
> >> > +#include "intel_display_device.h"
> >> >  #include "intel_display_driver.h"
> >> >  #include "intel_display_types.h"
> >> >  #include "intel_fdi.h"
> >> > @@ -52,6 +53,7 @@
> >> >  #include "intel_gmbus.h"
> >> >  #include "intel_hdmi.h"
> >> >  #include "intel_hotplug.h"
> >> > +#include "intel_link_bw.h"
> >> >  #include "intel_panel.h"
> >> >  #include "intel_sdvo.h"
> >> >  #include "intel_sdvo_regs.h"
> >> > @@ -2502,12 +2504,28 @@ intel_sdvo_connector_duplicate_state(struct drm_connector *connector)
> >> >  	return &state->base.base;
> >> >  }
> >> >  
> >> > +static int intel_sdvo_connector_register(struct drm_connector *_connector)
> >> > +{
> >> > +	struct intel_connector *connector = to_intel_connector(_connector);
> >> > +	struct intel_display *display = to_intel_display(connector);
> >> > +	int err;
> >> > +
> >> > +	err = intel_connector_register(&connector->base);
> >> > +	if (err)
> >> > +		return err;
> >> > +
> >> > +	if (HAS_FDI(display))
> >> > +		intel_link_bw_connector_debugfs_add(connector);
> >> > +
> >> > +	return 0;
> >> > +}
> >> > +
> >> >  static const struct drm_connector_funcs intel_sdvo_connector_funcs = {
> >> >  	.detect = intel_sdvo_detect,
> >> >  	.fill_modes = drm_helper_probe_single_connector_modes,
> >> >  	.atomic_get_property = intel_sdvo_connector_atomic_get_property,
> >> >  	.atomic_set_property = intel_sdvo_connector_atomic_set_property,
> >> > -	.late_register = intel_connector_register,
> >> > +	.late_register = intel_sdvo_connector_register,
> >> >  	.early_unregister = intel_connector_unregister,
> >> >  	.destroy = intel_connector_destroy,
> >> >  	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
> >> 
> >> -- 
> >> Jani Nikula, Intel
> 
> -- 
> Jani Nikula, Intel
