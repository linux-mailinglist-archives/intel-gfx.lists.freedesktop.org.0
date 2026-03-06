Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4AaBOIzrqmmOYAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Mar 2026 15:58:20 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 531B4223334
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Mar 2026 15:58:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29D2010E2B5;
	Fri,  6 Mar 2026 14:58:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CsmlMW2R";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B39A10E2B5;
 Fri,  6 Mar 2026 14:58:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772809097; x=1804345097;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=QiRoJfXf8Xccax1mIyzGFiCkN/VvbQLBiNKqcw7vygU=;
 b=CsmlMW2RVyPGBLkrtlASfUQIq6whJFVYi/G9fDP7MQGfwhsrXNrQXwaw
 NAdPFrApJjkoQdytJYXvMUMOkgfeZTvIey1xg+EU/jsBPsha/UrnG/idV
 EYKpy989GkqfrYdMAH1vws1iPcomdDoi3PJul2zqtm0FIEEyL06HI1jW1
 nW1fnThLqmSoMGZzWElenw3HZRhb8tGdILvNxGobNBy40UqOsXxZ9qpha
 dVlgxYsMEuks+L5qk6EtcsMaaP5F/sR1rMnei6CAUoOpTj76NeU+dmVyd
 quH6luYmKnaEfTVSJJYrMqYypYJOTTZqcUE/XSsx59YnZhrymoVp3Khij g==;
X-CSE-ConnectionGUID: VzpNCxcRQsmjI5SHuGx3DA==
X-CSE-MsgGUID: MtxEwOQ1Qi+zxX012AfaHw==
X-IronPort-AV: E=McAfee;i="6800,10657,11721"; a="74106012"
X-IronPort-AV: E=Sophos;i="6.23,105,1770624000"; d="scan'208";a="74106012"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2026 06:58:17 -0800
X-CSE-ConnectionGUID: HPyxCYgLS1GTu6sWtcycyQ==
X-CSE-MsgGUID: Q2TYnkWiRk6vfvlQre3jMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,105,1770624000"; d="scan'208";a="223147799"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2026 06:58:16 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 6 Mar 2026 06:58:15 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 6 Mar 2026 06:58:15 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.55) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 6 Mar 2026 06:58:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=R3ZNOaSo1MRzD23DuyJ6tc5huO/O37OpaUX20VntJ8DgRZY/b+TmCB1p5ig/NIilu8pc94ulwbI9S5sak+ykxBf5PuK0RZ0BldQ3DBEunj9OCmIaDh5Bhd8gD+MSP0Ohtzqay6ouUfGXBpjHNYikRQohobQGxN3hnxYoenNGogpsItJyhPFnua4AKmQH/9XPRYpvOJtP0EN8Zk9glONr8QERgpWvXCKcPsMbk1NpGMVyY8XFgCyCVjAKPQCZsnCxrcSZ1F9Hrm3W7NrPJ1FjBq1LNnvSlYCoEK0oTVeGiNcKpuNpGWhwj49SznHeo+EZ9WcRODI+nm/VBw9onm0EiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W3DDMe1c6yEFbpEq8xlJq6Mp7Cx4g9Rx02icap07MRQ=;
 b=OjuCPYNlx86vDSqRmB7KmJEoHoYDK7UABQIYtQVzJsZEdPKWJGaCIYx8B5itT/n0ck97ME5lL8U8hlqkOUh9OMIWomXQgGwxUBcwJrqHtvrN4lYYVW7MwAFg6Kcg0NnGai/8nlU1d8QhGuEc+7DvapMfK8CXnwn6JBT8FzJRXgiGO2rKftUnlrE3NS66xDuLKeoHTQMwuigH5O5EZRKGxYBtmCVNL62AUoCgJKIxvwvzZoslRtVuMkMvPd5VM1Et1gF/WZ+ox8sgFqReiKw8ltgh6oFS7jMgafOz06jHLwb1kg2kywFLZLOjSBEGOb5C5OMlDCgzVkkTPmBXk9YCXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH0PR11MB4840.namprd11.prod.outlook.com (2603:10b6:510:43::16)
 by PH8PR11MB8016.namprd11.prod.outlook.com (2603:10b6:510:250::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.5; Fri, 6 Mar
 2026 14:58:05 +0000
Received: from PH0PR11MB4840.namprd11.prod.outlook.com
 ([fe80::fa90:e665:4a25:58a7]) by PH0PR11MB4840.namprd11.prod.outlook.com
 ([fe80::fa90:e665:4a25:58a7%6]) with mapi id 15.20.9700.003; Fri, 6 Mar 2026
 14:58:05 +0000
Date: Fri, 6 Mar 2026 16:57:55 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 Mohammed Thasleem <mohammed.thasleem@intel.com>, Tao Liu <ltao@redhat.com>,
 <stable@vger.kernel.org>
Subject: Re: [PATCH v2] drm/i915/dmc: fix an unlikely NULL pointer deference
 at probe
Message-ID: <aarrc4-vxovfsxSR@ideak-desk.lan>
References: <20251202183950.2450315-1-jani.nikula@intel.com>
 <20260302174849.1541350-1-imre.deak@intel.com>
 <c24d25703c51fe7df93b16762bc82898b0485e98@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <c24d25703c51fe7df93b16762bc82898b0485e98@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV3PEPF0001DD9C.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:401::6d2) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB4840:EE_|PH8PR11MB8016:EE_
X-MS-Office365-Filtering-Correlation-Id: d58b4b09-34c5-42f1-98ac-08de7b90c4a4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: Yg2iSIhDlxDhquMBoTslU+MC76oTExOkllLggSaPfwFVKxg55A1YCL56waN/oTrXBf+kLuFzFPKo00JImoevEvHD/qf7Sz/P4ADfXjxL+jz1fH6GpCHrzCGCywQfseUvxMLipXLxg93+fddDpN1hcNvSqHIecD+atP4NqZ8oo3/E2Bq/0X5hSjvUtJtqAFm3wZ9Bc8gKm5FTuct+vfTRGV2r6+dUXP07gWDLsKs2iPcqpuDyItvhZCxg+FdfkmuNas+rKejkWd8omIvpb26xkFKunfek96Zt0Dk71Rfq9VEpVzUrzZ7dJmVo6oSexYBr2Bba8aQ2FOr3DTPGXuXDUyQiLvS+eNwWAoSwKtxMSJWbabQO76Mb2Oa3fB8FyMggvnTpqp/16YDrsbMi9WQ0YLCAIiTlq2jVDlTzpzTYM83wCfHz6r91jhk+y5vovMALZ2Jaw4bkzHE3hVi2Su2MEjSW+5D/SxmQovZi8nRKWLufKu3gShEJyOuTjTWKPl2WuCZFoiaEHyKQRPiQJlQH/aZhgTUk0juHZrqYnu3GLjWVQc0rI8hqljY8kOYcrhnKRSzjPjfcD/+qRq1w0DKOpUavJZDc+iaYfut1eJW6gefuYHjss//1XTKAo5VdfPTdkCss7s5QaYBUZyRKj3bGQNz8vaB1mw7m5jVFaT7rmRzT1GbkgBUuvSAysIsktk4a8ktNR/kJGMOHPR21c6IMPKjgyoh+ilo3orEYoX9H4STIDX2akivzfWYG6irtkkX4
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB4840.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?/eSUjUvcRELzzqIKLWkM+Ekaa3+mW2PwudEQjPon5+irWjszjxpSbo/2ddqS?=
 =?us-ascii?Q?Voer0l3sPIzlirGVv2o899BOk3XO+ziMYB58nqWYY4AfusE51GYyqMteI6Xg?=
 =?us-ascii?Q?2hwrGgCJr6aFCBb6xSJmbnp6WXyovfgd8a39ge93DFI6Bfg1hhmxfRMzQoT9?=
 =?us-ascii?Q?tZxtXgms3VPWmi4j0QFv3iVHB+oPcedguu1vd9yUS0MwBE0QuVwcO3ysjOJR?=
 =?us-ascii?Q?mqJFu5MCE5BsX9w8a1LEdRWrnu3nFhjcdtB8sOrJi+uUJCC+sUMuQfbkSWzk?=
 =?us-ascii?Q?1n5Ex9a9V16goG3KPZ95hb6acYSW8cRnrgAPLg7T3SlY5cX3cCosEEcm+x0m?=
 =?us-ascii?Q?LG7vMEk5DZZvX8sSLrOcZc/5ziOYk+CAlwVhHxjVkFS7dNf51yJWviPlvQ3G?=
 =?us-ascii?Q?qgu/5BeeB5sB+KBSItl6Zde0JsZYgnwegX1Nw5otKV+KZSvUgjOIIfnpXWl/?=
 =?us-ascii?Q?vHbFgH4Te2KB67hTYd49bbEXejiF/Fd0zqmu9psF9XtzQwzZji5mVTxuUVJx?=
 =?us-ascii?Q?U4Wh7/revsFcahwnA76KzLOp8pgMbyTCB8RCnyky9kFAlSfBkuAZmVMsYrPo?=
 =?us-ascii?Q?7CI5UdejyzQZwcJGYlsYiOo0JQg1icGTRCptU54jRJj3DR5z4wuJh4hJYOhv?=
 =?us-ascii?Q?7y72md9ExUlJ0dH4pstyYt47XWRZnEaAvqYzIv/Z7inGMy915u7ilnagF/Yf?=
 =?us-ascii?Q?HbFtqpKmN63C4bcuJzhnPnv+kib3YSz08RQqYtwbpLi0DtJF/EhCcWzlevWb?=
 =?us-ascii?Q?fAn4iSMYShNaelgd9zYWVMQQXBdii6+C8AZC7T9XbHo5fcmwzaHX7sA2tmcs?=
 =?us-ascii?Q?AjRBmCEP3+D4EHDFD9ukmiO1aGk0D9fjura33hJ2rUf4izcHY1p2rQfsfiOs?=
 =?us-ascii?Q?UTwD4haCbFzaP130BgviDOoGJ554OdOhAbR/HFXrxtYYnZBYuWLqrXPOY74N?=
 =?us-ascii?Q?7kgRmFAPvjBhCeaXTSI1Ugf2Okfi47dECIQZ8rU3Wv9/5EkzdRIwT32iX+Kf?=
 =?us-ascii?Q?xJjnrNPLnvZ0ZGaRLMzkT8bjS64Q07GF5Tnmm5v7pZUgOqfv9yRkFxynyoVz?=
 =?us-ascii?Q?S1pXe+0/aVh61C/cJlpVWFcV3HVMe6NoW7HO+vx1ugShpRLG5h61+urnSgf0?=
 =?us-ascii?Q?zLhY4LTFMxy+gEGDSxcX5mm5zUPkZQ7PSCErZb8WP/faIVcM8JkyRkiIlX47?=
 =?us-ascii?Q?ycgc05JHWwtxUZUkKIvq95y+T4vLHl2S/fgBkdaBlQ8877xpS/tx/i2yEnnS?=
 =?us-ascii?Q?pyMAZ0WGVe0b0+s3/gaooMHVnIQ997O96mJT+dfVfjJHvDzvM65WVBLrDBcf?=
 =?us-ascii?Q?usuYRzkS4qsA5xtkhPa0APxZmgCa3P5odn0VFrVUmYJio669iSQ7/W3CjWk3?=
 =?us-ascii?Q?5FzCHihmFxvRKRDMrfiEjcbQt6005jSbeAzGe3y5Lj8dubNT5qxMXyMEJpNc?=
 =?us-ascii?Q?T7OtDOvlb6cX06bDXj54crayjNFfoHB3i1R7HSLmX5k9M+p/EWYO4Vzv5UA5?=
 =?us-ascii?Q?XkKzgyGywR7NUKT3Gerp8rzUKSGVu99yy3G+hqgEavh3xkHvQIjWZ/IbXCaS?=
 =?us-ascii?Q?Gsz2GcGApU18M0cevTrocGh7yLZDAVYvJn6ARFTNVhXcXYifCpjddws0otp9?=
 =?us-ascii?Q?l/hCmSgBHeXo8PYsyy5BHjUMZ30nhxrvn/00ECiiA3aLNfYi+dm4tmHN9/x+?=
 =?us-ascii?Q?zNgkCaTb6xNCEvCEw7Q96XC1Kt78okFOgKiE9Tm4ihtpLizS4UBKg/7YE7Q1?=
 =?us-ascii?Q?SpAyFK+0ZQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: gVo1qHFPPGnhWYY+yzex18oJv85jJ/6E20SWNNjCYbzTtWX4XaZLo0t2AkbQd+rAxHNuYGcKlUCJsZ+2yRM7rQeVH596zvmV6r1PcdLUusLRhSHtuYT3uqbbb4FyEsxPiPk5zo0tyfX36/l78d0vXNXqV7ua8wELnMB9TvIocx/gdBOFu9GtVOsy/uJyLOhWzj52tyuwyic84d0+bRyY3np392V7mLj2oaG/lcWdr7MSdfP9QipM8NHwbGetcgQmwUBpizr5O9d2okbBSl7Oh0gqwNnwMeUayGvyWRMPdA3fwgH3HXdUgjKrJ41xIzP9i3VpdKOYHlJ3dU7NwphHOg==
X-MS-Exchange-CrossTenant-Network-Message-Id: d58b4b09-34c5-42f1-98ac-08de7b90c4a4
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2026 14:58:05.3701 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IjKGl4iWHWnLmnzVAVZ/lf+VG4u/jfarqWaDaSBGAdq2ZBsjg/kqTnGUmhZ87J/Vm97GlOSIlAASLQYp0nRwHQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8016
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
X-Rspamd-Queue-Id: 531B4223334
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:replyto,intel.com:email,ideak-desk.lan:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.066];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On Fri, Mar 06, 2026 at 12:12:41PM +0200, Jani Nikula wrote:
> On Mon, 02 Mar 2026, Imre Deak <imre.deak@intel.com> wrote:
> > intel_dmc_update_dc6_allowed_count() oopses when DMC hasn't been
> > initialized, and dmc is thus NULL.
> >
> > That would be the case when the call path is
> > intel_power_domains_init_hw() -> {skl,bxt,icl}_display_core_init() ->
> > gen9_set_dc_state() -> intel_dmc_update_dc6_allowed_count(), as
> > intel_power_domains_init_hw() is called *before* intel_dmc_init().
> >
> > However, gen9_set_dc_state() calls intel_dmc_update_dc6_allowed_count()
> > conditionally, depending on the current and target DC states. At probe,
> > the target is disabled, but if DC6 is enabled, the function is called,
> > and an oops follows. Apparently it's quite unlikely that DC6 is enabled
> > at probe, as we haven't seen this failure mode before.
> >
> > It is also strange to have DC6 enabled at boot, since that would require
> > the DMC firmware (loaded by BIOS); the BIOS loading the DMC firmware and
> > the driver stopping / reprogramming the firmware is a poorly specified
> > sequence and as such unlikely an intentional BIOS behaviour. It's more
> > likely that BIOS is leaving an unintentionally enabled DC6 HW state
> > behind (without actually loading the required DMC firmware for this).
> >
> > The tracking of the DC6 allowed counter only works if starting /
> > stopping the counter depends on the _SW_ DC6 state vs. the current _HW_
> > DC6 state (since stopping the counter requires the DC5 counter captured
> > when the counter was started). Thus, using the HW DC6 state is incorrect
> > and it also leads to the above oops. Fix both issues by using the SW DC6
> > state for the tracking.
> >
> > This is v2 of the fix originally sent by Jani, updated based on the
> > first References: discussion below.
> >
> > Link: https://lore.kernel.org/all/3626411dc9e556452c432d0919821b76d9991217@intel.com
> > Link: https://lore.kernel.org/all/20260228130946.50919-2-ltao@redhat.com
> > Fixes: 88c1f9a4d36d ("drm/i915/dmc: Create debugfs entry for dc6 counter")
> > Cc: Mohammed Thasleem <mohammed.thasleem@intel.com>
> > Cc: Jani Nikula <jani.nikula@linux.intel.com>
> > Cc: Tao Liu <ltao@redhat.com>
> > Cc: <stable@vger.kernel.org> # v6.16+
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

Thanks.

> However, I still think the whole gen9_set_dc_state() is a bit fragile
> wrt DMC loaded or not. Pretty much everything else wraps the relevant
> parts within intel_dmc_has_payload(), and it's obvious what's going
> on. The comment for the function primarily talks about DMC but there's
> not even a mention of the possibility DMC is not loaded.

Yes, the DC state HW interface programmed via the DC_STATE_EN register
is not too intuitive. Some DC states are handled by the DMC firmware
(DC3CO, DC5, DC6) but others are not (DC9). Thus, the former states
require the FW to be loaded, but the latter state doesn't.

The fact that DC3CO, DC5, DC6 will not get enabled until the firmware is
loaded is ensured by holding a reference on the DC_OFF power well, while
the firmware is being loaded and that reference gets dropped only once
the firmware is loaded; the DC_OFF power reference in turn maintains the
DC_STATE_DISABLE state.

I agree with you in that there could be an assert/early return in
gen9_set_dc_state() according to the above:

        if (drm_WARN_ON_ONCE(display->drm,
                             (state & (DC_STATE_EN_DC3CO | DC_STATE_EN_UPTO_DC5 | DC_STATE_EN_UPTO_DC6)) &&
                             !intel_dmc_has_payload(display)))
                return;

and the function documentation should also explain the difference
between the DC states wrt. the firmware dependency and the way setting a
DC state handled by the firmware is prevented via the DC_OFF power
reference.

> I also think intel_dmc_update_dc6_allowed_count() is fragile in oopsing
> when DMC is not loaded, and I still think that should be fixed too.

The only way intel_dmc_update_dc6_allowed_count() can be called is
(after this patch) if DC6 was ever enabled by the driver. Based on the
above that is only possible once the firmware is already loaded.
intel_dmc_update_dc6_allowed_count() could also assert this:

	if (drm_WARN_ON(display->drm, !intel_dmc_has_payload(display)))
		return;

> The patch at hand looks like it fixes the root cause, but I still think
> the parts around it could use some more robustness, if only to make it
> evident to the reader what the possible conditions are.
> 
> 
> BR,
> Jani.
> 
> 
> > ---
> >  drivers/gpu/drm/i915/display/intel_display_power_well.c | 2 +-
> >  drivers/gpu/drm/i915/display/intel_dmc.c                | 3 +--
> >  2 files changed, 2 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > index 9c8d29839cafc..969b2c421d308 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > @@ -852,7 +852,7 @@ void gen9_set_dc_state(struct intel_display *display, u32 state)
> >  			power_domains->dc_state, val & mask);
> >  
> >  	enable_dc6 = state & DC_STATE_EN_UPTO_DC6;
> > -	dc6_was_enabled = val & DC_STATE_EN_UPTO_DC6;
> > +	dc6_was_enabled = power_domains->dc_state & DC_STATE_EN_UPTO_DC6;
> >  	if (!dc6_was_enabled && enable_dc6)
> >  		intel_dmc_update_dc6_allowed_count(display, true);
> >  
> > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> > index c3b411259a0c5..90ba932d940ac 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> > @@ -1598,8 +1598,7 @@ static bool intel_dmc_get_dc6_allowed_count(struct intel_display *display, u32 *
> >  		return false;
> >  
> >  	mutex_lock(&power_domains->lock);
> > -	dc6_enabled = intel_de_read(display, DC_STATE_EN) &
> > -		      DC_STATE_EN_UPTO_DC6;
> > +	dc6_enabled = power_domains->dc_state & DC_STATE_EN_UPTO_DC6;
> >  	if (dc6_enabled)
> >  		intel_dmc_update_dc6_allowed_count(display, false);
> 
> -- 
> Jani Nikula, Intel
