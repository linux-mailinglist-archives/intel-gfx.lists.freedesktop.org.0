Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UD9dCbQ0n2m5ZQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 18:43:16 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41D7519BB8A
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 18:43:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CBF110E2BD;
	Wed, 25 Feb 2026 17:43:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bS8aHHae";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F7D610E2BD;
 Wed, 25 Feb 2026 17:43:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772041393; x=1803577393;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=1R19Hk6bBadfZvk8jjxayQBcwk2fnFmyJgPlaZLTD1o=;
 b=bS8aHHaeqkHm0rmeUxNro6sdrRrZUkXyrceOwuCK89LI50oQZ0X6Pcw6
 DcKR8qhTixMdidkPmX2VMqQwN5/n97F29kr1eMANPjoZQLbEhBI1q73tX
 V34iun2kPhKw6xwTZdNC2lypGhzxOfoENa3k7TVxL8iJmsvjYNnkMxLwd
 8RA8+Lyg+wT8MpWxy3ODTLNqTRhvjNMX3j/gOHFGDN9v+Ra+JMLGgubfz
 knyJ+6UoQK3snhP3VkdrWJUOKibfUeN9u2XcLFYUy9E0/vRd+Wez1A0RW
 RMPmlbwtKlYp6KcVGKnC5lTJbUCS/B7gOUefQutcejez4NyVJ5nTpIrS+ w==;
X-CSE-ConnectionGUID: DFY3yymDQ2uxRiBvcdo/sA==
X-CSE-MsgGUID: rM8o/Ul8QFa0TbWaG/+eRA==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="84183478"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="84183478"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 09:43:12 -0800
X-CSE-ConnectionGUID: v22Nnv0sSDuybDHcOs2qOg==
X-CSE-MsgGUID: QckcY8QDR8OajSSYSDGtaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="213957117"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 09:43:11 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 09:43:11 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 25 Feb 2026 09:43:11 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.19) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 09:43:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Xwgjv3hGXQ4wRAR8zmUaP2HTyiNR2/Z6zQjdgE7wN6s9z4ByWhD94nSe8OUUk8KRraxZemlxDyjZO2ho02jl81OHOhBz6vqkfkoNlg+0xHtzdNwfAxUX9SXnazswVfh0N3s4cPX1oMiO+lb5rZdowD4PqLBR6QbJYuuj/+zjoRONUJOz7IpYWoYKLtqZyFSy/KJ9giPAx7S201mpXCeKjobCaQgRPNOOLxMi2vEAIKGa3mf51+WtxTV2KHlIekxumkdw2X4AImdXb5gGBuF+2FB7LuNkzyMkQ3C87yjEdFu/Zltq+8ktDuMivU6n/BtGmva4f47fuHUgX6/CpAVadA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YciOyIiP2W8XAiH7iDOOlcwoxDdN9E324IKCkHtWOro=;
 b=Gw8qs1AXZVjh/XNGtyxoFZMPSntW2KfWdqyqXvBC26+cFxW5gVszJbuBUonXIEFqn2GOTiQKkF8f6px0sDIOHoezl3jD7xcRacLpz4JIoX6iQZYX39+0IjP2AdHbBIk+0av/D5HTYc4HzD6ovcdGLy2+SN3SD+QWYPSFQ092XmWENUGFSeS903d9APJB2CvHG21teL+mexaK4/8cZjtx4OP9RdBPpchXYQxvoVmOMnjDPikAEY+KeMylXhacIka6g58i9jP027PSodzl+a40N2Ifxf0ZOtGXOmonBuac9VjPsgUjV8yqHOEGBJ/0Qya5+pyhF7A66GCP4542DfbjQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DM6PR11MB4625.namprd11.prod.outlook.com (2603:10b6:5:2a8::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.11; Wed, 25 Feb
 2026 17:43:09 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e%7]) with mapi id 15.20.9654.007; Wed, 25 Feb 2026
 17:43:09 +0000
Date: Wed, 25 Feb 2026 09:43:06 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH] drm/xe/compat: Remove unused i915_reg.h from compat header
Message-ID: <20260225174306.GQ4694@mdroper-desk1.amr.corp.intel.com>
References: <20260223171015.1035550-1-uma.shankar@intel.com>
 <9f4d35467196e95d548030876a7f73386ed36d79@intel.com>
 <DM4PR11MB6360D3D5EFB752BC46B8D02BF475A@DM4PR11MB6360.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DM4PR11MB6360D3D5EFB752BC46B8D02BF475A@DM4PR11MB6360.namprd11.prod.outlook.com>
X-ClientProxiedBy: BYAPR21CA0019.namprd21.prod.outlook.com
 (2603:10b6:a03:114::29) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DM6PR11MB4625:EE_
X-MS-Office365-Filtering-Correlation-Id: 0628001e-d22b-4490-d32d-08de749556f7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: qkWYSfqBT5jZHtKGCsHNDlZeVTAf3Kx05R7vwtZzdxsWO0sMM+nNikLf09tEq8oDvvlhY7pQbGdj34ZyMnGF9QSkRg4FIcxWF7LszVbCqxkXD2QgqgVtN2TZhYD1iXMDJfgZkfkGqY2gpxdcfVw5xoTXN1uHkdze2odicMobUtIusE7/f2VwnxyFg85gMH6yZ/bd8A3xzX/m5HCyJv4N2m8UDmbX2Xy3swy7ItCmrUzjSaEnhAuCe5W2n0DOlXRoeaInpvEaovu8NrJvhsexDP8mfp7X0bSDsog9jr8nSUXi33ImO0hhDrzFMT+FXJdJRK3yubwk/jbwnUAAiVJb5BDxhR2HJz3aIzswzPP8vL3UOudlBOvxSFNdHzbIJXSYyR3Kh+hvffoW0Qp7hZw0Gc/gRLyjI5AAvL+TttkOOCDEUkNaCEWwf9Hoc0c2CJAHbDRtsl5+xxrXBmyB4OYk5Oa9jFuwzcRArL+qi+bACuxK5xn7DtuMkhipYpfQAi2d7DCsx4wkw1C16bwZTiPO2sYb6IEXdacYm0uZNIi692DGmd0tAx2Xb8qwnRZHi4cqQnwBVEj7ZPZnpooJpLPaKeeJulMpSNItUtSjnJ4oj0dGBGm2e4Hf6es+ZQaq+xU8u/3Hz6XRD+We52djP2gnY14rQPNuA4LgE1d98m6Sd+MGcBwx6iTAY+jfeKNgI8+iq3DXhhAcCvHjHBeJvYfl1hfmEdqvEuJuG2IbNzVpXqM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?E7euOGM8ORdYmI/lJywzE12Q53CC0dyOJyP/DxA1EGGiS6o4BMfE0JxY0+?=
 =?iso-8859-1?Q?FyP7Yv0c0jZvIO25lEIqCsZn+/RyBCdKKWZhwPaJ31mWa7HfyfOGtwfDYT?=
 =?iso-8859-1?Q?rcl4Up4y2qakLUiK8Xrdb3y33Pf/QZ3obC6L2WyQNKA2lQxYiDJ5radjAF?=
 =?iso-8859-1?Q?iERvp3oiVMbhxWlq7cI+0TvAuSbyTZ+Mlmwh2XT0a71yIbj1/V/MY9zJLN?=
 =?iso-8859-1?Q?Imk7yBaiJBRLAmy9u4uLTvQdmK5iQroBL14r8g4dPPYaHyIPtI4tdsaoEi?=
 =?iso-8859-1?Q?FMcNn2HtLm+bbo7+10wd+ZORWQdPrdsa2Bn7LMXgC3HAuTcgnrDqgium3m?=
 =?iso-8859-1?Q?IrRRL9SJ30XMeANeQBcue1VZky6OYEhKcRMNQsrjTA1QVcisp7SYhrf8VH?=
 =?iso-8859-1?Q?RQ1EivcsD6dEASTfP+M5SjqRFGB2fNYYubsJDsmjDcUlqCIiY+utiDwttY?=
 =?iso-8859-1?Q?pldXw9BO2+BlMyES+ubUna1Wt7OD4l0hWYa3p/2b9CtSu0nhSrB073u3KB?=
 =?iso-8859-1?Q?ioNKMK+/Daor4CZWos9dejY42gIyKkyqvXjXS0tDWgdB93GUHRizoG9jcZ?=
 =?iso-8859-1?Q?Q4kWP/oJaGKv3cZK5PTQzKAGkyKlb93JN8fSx43td5716pE6FTKB9faKR/?=
 =?iso-8859-1?Q?gVWnByQwxKHHazfkVGEkwtOxNX3m5KEJTlxiKTyrRyhYEI2IxjJXyv3reR?=
 =?iso-8859-1?Q?zvJ/S671QJOUg+S9AAXAXG1Vzstl1uoRvr8X7HSPVWscIm8wTztG+S0t4X?=
 =?iso-8859-1?Q?otyONh5xFmDJ33O/2tMY10NjL8MnUaGnBgTsi6nIeb6hDu+NyJ2eC8qUqW?=
 =?iso-8859-1?Q?ObVAcp+VouXu0ZXHflO4p8Nsn7q9japyvWV+rbguK+WRM4Eq3VZ0oEF5Mm?=
 =?iso-8859-1?Q?4N/CCbh2oVz5D3ZcSHEw3UdhYa6giuwsFN06sqW3L1chyKjQNIQ/4HJ6/r?=
 =?iso-8859-1?Q?/+JDvd6W5UJyPBH3VmAErkiOuGKaxqvkpF7SLNPRRnwMEHYqTosq4D0i4l?=
 =?iso-8859-1?Q?Ats++7PAf2FCulTr9hCaFTdS9fNuPLMlEGUIw8rxQecBtd0lmURsy1Amc3?=
 =?iso-8859-1?Q?WvK4c5GjOU8hMNet9EOlZubSWjA4bTVz2E6QL9K7Uid/p/z1SbxkliPPAn?=
 =?iso-8859-1?Q?oVrOBkm26Sgtkb6CbtLT91MG7MiqhtHES3shY5FSeQssSuHDyAkJJ6K1wS?=
 =?iso-8859-1?Q?IvLug21LKFC/owlGU1VyEWicLeAaFMQCQuEpPd5hgxI4CF0GUVN4URDw8d?=
 =?iso-8859-1?Q?iJtB3Dri2YNsF+HKsyDFa4j2b3eYgc2GjUl4InlLtG6chafZkeEpOhHiJR?=
 =?iso-8859-1?Q?dC4PJgWQbXR5r21e+KmcjnrojzjOUwfxXNpxISkC0Z9Q9yqBItIYfM96I8?=
 =?iso-8859-1?Q?cTxkjQuJR8S9cntupCiJfvfUEkQFeFYxBEBNJ/vRU75EtJQwjESHmSzZ0o?=
 =?iso-8859-1?Q?hWZ3a8T7Nb1ozZpE48CNTactUBM19ye6/k8lh0ptTtcIx6vj1mfQYAs7sn?=
 =?iso-8859-1?Q?JF8thbnaV6sjzeLNVoJkEzArV1k0bEHzQDMLneuhthHNh0FZ+T91MjAVr6?=
 =?iso-8859-1?Q?lDcmZide42bd4Zmcm9H+lmFacas5ckBV0uJgHhsbq9Kd8fwK3UU8UPDLZV?=
 =?iso-8859-1?Q?lm4JdmNNf9NXeh/CTwVtt2kMdF4aQjxL+8dU6vdlJ9RQ86FfdSVj/t3Wz/?=
 =?iso-8859-1?Q?KT7zW8jJD3QPzP9izsDd5MSozIiYSOuVg9xTe3Eo6ty+O3dp+IOrPwDgLa?=
 =?iso-8859-1?Q?i7LDnkbwM2RIVU4s3RxZYxNwbfmk6qGQjvFOmc/KyM37u0xvLdlyl6symr?=
 =?iso-8859-1?Q?9kOSVqOUIBpwVIDTSfvMVz8GQTbUbkI=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0628001e-d22b-4490-d32d-08de749556f7
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 17:43:09.2968 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cWK8EhbbeVGbdMKrR5wrQD3YfJOnj00aCFFKdDzxHL43+3yQgS78mZsdYFFpvh9Mw7ijju41v+W/gu3DWRIu/0Tn7yWNLP3dUg5sVTeyCi8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4625
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[matthew.d.roper@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 41D7519BB8A
X-Rspamd-Action: no action

On Wed, Feb 25, 2026 at 04:40:23PM +0000, Shankar, Uma wrote:
> 
> 
> > -----Original Message-----
> > From: Nikula, Jani <jani.nikula@intel.com>
> > Sent: Tuesday, February 24, 2026 6:37 PM
> > To: Shankar, Uma <uma.shankar@intel.com>; intel-gfx@lists.freedesktop.org;
> > intel-xe@lists.freedesktop.org
> > Cc: ville.syrjala@linux.intel.com; Shankar, Uma <uma.shankar@intel.com>
> > Subject: Re: [PATCH] drm/xe/compat: Remove unused i915_reg.h from compat
> > header
> > 
> > On Mon, 23 Feb 2026, Uma Shankar <uma.shankar@intel.com> wrote:
> > > Display Code is made independent of i915_reg.h, hence it can be
> > > dropped from compat header.
> > >
> > > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > 
> > I already sent the same patch earlier, but *shrug*.
> > 
> > Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> Pushed to drm-xe-next. Thanks for the review.

Even though this is an Xe patch it might have been better to send this
one through drm-intel-next rather than drm-xe-next since drm-xe-next
doesn't have the prerequisite display patches yet to make this header
removal possible.  So at the moment the build of drm-xe-next is broken.
Not a huge issue since drm-tip is fine, and drm-xe-next will likely be
fixed soon whenever a backmerge happens, but I figured I should point it
out.


Matt

> 
> Regards,
> Uma Shankar
> 
> > > ---
> > >  drivers/gpu/drm/xe/compat-i915-headers/i915_reg.h | 6 ------
> > >  1 file changed, 6 deletions(-)
> > >  delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/i915_reg.h
> > >
> > > diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_reg.h
> > > b/drivers/gpu/drm/xe/compat-i915-headers/i915_reg.h
> > > deleted file mode 100644
> > > index 8619ec015ad4..000000000000
> > > --- a/drivers/gpu/drm/xe/compat-i915-headers/i915_reg.h
> > > +++ /dev/null
> > > @@ -1,6 +0,0 @@
> > > -/* SPDX-License-Identifier: MIT */
> > > -/*
> > > - * Copyright © 2023 Intel Corporation
> > > - */
> > > -
> > > -#include "../../i915/i915_reg.h"
> > 
> > --
> > Jani Nikula, Intel

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
