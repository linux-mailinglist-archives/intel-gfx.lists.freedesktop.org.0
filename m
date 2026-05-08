Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oMI9Ht3m/WkPkgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 15:36:29 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA4054F723F
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 15:36:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CB1210E34C;
	Fri,  8 May 2026 13:36:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NvrUz6cZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8402210E321;
 Fri,  8 May 2026 13:36:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778247385; x=1809783385;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=DQAp0Goil04EUta1S5xWsLIdWEexY2XMAddEj49P4n8=;
 b=NvrUz6cZYTTfhOwZKbt/9cxqNtYtfdUv65oDpWtxCqXonkOVk5YuizuI
 7uSwZ6KTMyJpa+eKHEjL8E+bPPBYO6ayaeGHdyvnwgwR7NN4uCEf/mJ/Q
 R+jta6AD90So8Ea48F0yvTodgsgyGWt/xGfHlIYsPYD+qJNgGqpQ7+pC/
 mvw7UV70KgrzZJe04OHTm6KWN3knt+YAvT0uop9dtVM/HvCsiEwjACBXQ
 6To+UsqezYvSsYKCGU8eeVCJS7YEe5dbSAgMUa/o+pIMie6PXXjNKkks+
 pyNxkTJkVkMhDfjPCn0ZR7Ko5i1OUD7V4IHM1SHGI9aG4uBOEi1KfV+yz Q==;
X-CSE-ConnectionGUID: j4xO6/s9R6SJMDPsFfr2IA==
X-CSE-MsgGUID: lypgv15xRX6O3N0aG8EYng==
X-IronPort-AV: E=McAfee;i="6800,10657,11780"; a="79114113"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="79114113"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 06:36:25 -0700
X-CSE-ConnectionGUID: 84wiP6bDS1ip/JHfV78A1w==
X-CSE-MsgGUID: jJ6ieiLTSn+dscYVtXbirg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="267150757"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 06:36:25 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 06:36:23 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 8 May 2026 06:36:23 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.67) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 06:35:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UuOMMF5wUzGxFArahl+59I6t3UxLtlLVdiIGnsMX5ncdm2lND+hwSvqJki7DxQ2GJ/2GcHbk9wf6AGL1froiEfjHYkiCRPM8+vneamsviDJCKoelNMcdKkYmb7/24SdBgyFwpPcQPZiEHiJj7gimrCs+Ufh4uKRdWjqAlNx4/UemgjbZSe+afYTn8a/VGE5vkJhN0QdvpGguO+yvK6vDj4oQPXNcCVqIHHILYG36cvLrz+XCcVYGr9NRx0OY5afHvheQEeoBAA3TcECtmg1/pySrrFVK3IRvWw8SXk/humDKa0/a5ykNVfZO91CpuESBlA0wJK59FYUuJR3WhvusfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4VvE03H3LuIcFt6J8ztbouaKuhiSrSK1sev90Tf9asM=;
 b=Ks2oDjhmmRsvQQaiZtJ+P3lochhj0OOYSO/yspLYDbQQkpBo3Z9TYA2HziPfMrsfppksdKXvcB3mZU720MtnwR722xWmYC1FgPkt6/r86ZRBM+5DlwnmngtZaRAy0BgJqE2bRUHPPBjM4QFS78NgPchmymba8xkjLNLZzRzNv8K/dlOXR0ugGIthLmwJkEu1tDxwg2X9CUs9RKSHhJuI2aex1SW94g75JGVW4UscXlC3P64tNHe28GhCBPwPM0XSzPCiGyePYYHKow8i1JaJE9hZLf9DMKIVoFNfWucsGxQEByEtnyWaNnDUP1jGwGOBzNYH+Q5+pssPQ+HfFN/U7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by BL1PR11MB5269.namprd11.prod.outlook.com (2603:10b6:208:310::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.20; Fri, 8 May
 2026 13:34:59 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9891.008; Fri, 8 May 2026
 13:34:58 +0000
Date: Fri, 8 May 2026 16:34:53 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 007/108] drm/i915/dp_link_training: Flush commits in
 debugfs entries
Message-ID: <af3mfZ6rFQDw3gyF@ideak-desk.lan>
References: <20260428125233.1664668-1-imre.deak@intel.com>
 <20260428125233.1664668-8-imre.deak@intel.com>
 <159abd8f9ae013230c8d997ae3c949f79ada2100@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <159abd8f9ae013230c8d997ae3c949f79ada2100@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV2PEPF000239EF.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::2ac) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|BL1PR11MB5269:EE_
X-MS-Office365-Filtering-Correlation-Id: a423ab32-2cc5-4ebb-e35f-08dead06993c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|22082099003|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: cbo4+u2502XmmZi6zw+r5f6V1t0oueDXD/BBsYOk1YkVSKIvXHd2WUtpTJKr1JXYdwCHI8jrIwht3Ib5sTk5h+h5STgB2Ic31rA0DK2x/BQ4XO3VHYeta9PLDmLrsWDDmf0vsF6lNwef66QvhTm5cke6TIash1oqbqpYATSZcOyBN/tomrUanA1sYfpvqFeVAlUuNmIWlqSAwJ5++znskS/vQVEznbi0oiU62T5NYbL9R4KfuRjDOakdfaTrD07gjQ1HQRFKPP+1p2YIGURCvDEFm1+4gXQcgssPZYGKM2Uihqq8t0niq/4Ze4SDrInMyQLADlmrGKcQn5mNfEpv8cRGfV45tBYIsONXa6IgOSYHqI3+RZF9NLYyvXWrLQ7R6wjOAUHQuB+uEad72qFU3zmG62O50IUZWSd/7RGwRVTz+E6LiqCat6pGWi/hqA1zeMZd347C1bx6dIIn83IhXe8FgCfkLUFbjv3SNQYBw0eBb0WpyMOYL8bi8UtYvzLwjIhfj0rMenLUvfhbuLA9zf7KsnNL/TunTZpjfMpIraNFLyxVgk+XfxJ4sdtC69UAhKzKHohi8W+G16w0uU5YkuHmqeBA4JKBcy2yxDIksEjsm1BD7TRUNsOS+BjrNsRY/ajOgngR07yWAinlN2GrDkG9nSTOIcgFECNWtQZ7Qcm0eQiRpK39C8j+BWQp23PI
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?obf4UYvdjYpd+N/e4IEQEOC2FBaDMLTiMgg1s9OtX/JUVzO9+9gWKpCxdoV4?=
 =?us-ascii?Q?+6//kI52v0dwh89JqqkoxyZB5pL322+3d0GxoLjWWkCfZxRMRfXb7YD4DD/n?=
 =?us-ascii?Q?xqxRjxtF4LuN6PbVCcLDatcpsYuyQXnl1lmLD2y7hUvEGlWCXRveAQlwGvW/?=
 =?us-ascii?Q?1kMivdGO6u/mXMKkVd2WiuRjyV8y8Qh/HfnRYaWq+iG3/7OmkEK3lUN0O3N0?=
 =?us-ascii?Q?s1XyMumXq4RIF2ZIVOCyN7M012LYMOFmex6eBqH1C2DdAFEJcsli/Vmx5D8U?=
 =?us-ascii?Q?TQwCUk1CnfQCLtBBQ7FL8MLtOS71hKIUiLkrbTDfH3sgG60hhjFWIb/2914m?=
 =?us-ascii?Q?EQY9eXP+JP56ifGcO1NAQP8iJjMJLxGMZvXKLA/S3vs3cV43GyAW9D15ezpe?=
 =?us-ascii?Q?LfHxl4EI3vdlu4uWwTBefGuKJlbBYYdLMJ5EaxS15RLovXUMBZvA46dL5Tws?=
 =?us-ascii?Q?IK+KkaD4o7Bokb+tnN5xfh1fIe0+BHDCnIubWrN+t69HU3R0rDOxQIglyyVi?=
 =?us-ascii?Q?ipzFxjbIawkwCIDWZZ0gntunqDH/G70gGhAatXaeZ37gnykircYcGpuWB3Vg?=
 =?us-ascii?Q?YPAxN4jlDFVte1YiUY2uNLDUZwzuk1VOKoZc1z8luUVr8rq/ecC6OanxQi6o?=
 =?us-ascii?Q?6L/oW3RoLgSWx+sglsv6RpoaHcjHEOGVBYaxx1MzPIhir96m556hWd1CCEHp?=
 =?us-ascii?Q?9n/hHM5fcLoWA23EhLaOVSL2IQjT1A9Lrud1Tw6U+sm0y+dImLe1D28oh/VF?=
 =?us-ascii?Q?FJJPV4D4foqL05PE9TT7JJaq3SrK+Fsj4tuXqdSE2uhpAYM4dqSEnN+M9yah?=
 =?us-ascii?Q?rs6iy3TG+3mX3Fwz8lF7WquFVt02n+YoCbcAAO/7p8w6jZGqsX7rZbdjigeN?=
 =?us-ascii?Q?Y802vDzOTsCyAZZVy+Sep2urxMxBrwMbQarjt1HNsR39CfTMzZqu693/O5BB?=
 =?us-ascii?Q?cencZf7pXbwElfpqBMXq8QL4n21baF0ZQ5MHDopMK4kp9v7f0d/RSLQ4Wovh?=
 =?us-ascii?Q?Sx76Sxz953Lp6f+KAhZzBXeUb6wZVjiailY7ZwEkYEg5kbC/2ZxBrjFzcyiN?=
 =?us-ascii?Q?NOwySb67JohgXNDp7e0Zb0hpQkEwKsarKEEnTTr9PwklhBKjs1F075Lt6CxD?=
 =?us-ascii?Q?SsnIyg64GvECZ850BWJWuZpJbDf7xNhrOjsYLM8QWcXkd0xET9x/DLSB450s?=
 =?us-ascii?Q?/+chg3S5dxxEWRM+++ys8bdiNIlTtbTV92mx4/FwXg2l0m62ZRvXIX5qcpxa?=
 =?us-ascii?Q?CYOTqq4jnveN/cB7RQJbArcmAgUkwrjXGJYBB7bd8QxfOhQe6ngpNEoWLZ6z?=
 =?us-ascii?Q?5HZL9iCH/26jpJT62YkdFCFjWYKFpG9bKJyyvD0G2ELYoFKDLfmnBpjqIAJy?=
 =?us-ascii?Q?rVJA4Z6AUYYgx8F9i2aOYSYc2pHZVmyuemsfx4iLXPrw52A0JoDgdrYELOYT?=
 =?us-ascii?Q?urgQ1xktzSUiBp62Lhcs43E9ac32peVEcDt6SM040BldExX+it8Nas65Izdw?=
 =?us-ascii?Q?Z/GARU4uI3MOjH6S4csgVNeNCNOHz7wASBgPcuRMGlQFbZW8jEvCdM+XEzau?=
 =?us-ascii?Q?ZR+KZXG1hUNWfnzvVisclDY43CQBDzs9C9p6LtsqfCSSjcfUIiBKWajgkKDS?=
 =?us-ascii?Q?Wh16fPP5+V/Sq3hGTQuS+3Ff0EL7Zs/w8oS4sXb5ZkwZ0GI+1kpqLeSwQ+iv?=
 =?us-ascii?Q?zyeKHzXH67tzK+JO5nBIV0XcCTNizO3ogG2NT081gzxKQEBBQMGTBc683zH9?=
 =?us-ascii?Q?WIhHb8jn/A=3D=3D?=
X-Exchange-RoutingPolicyChecked: FVoF5YrYll4ha2F84Kpe6PPY6ngf+MAXSbv/Vn/y8aA5W9I0jVhia/OAMCr01mMGzmIL1ur9sHQsaYZGXzHdetsWr18qOfKHHJgdeZfA+VbG+Zbub1cJuyqH2VlF5sNjgZarbLBPZEABoLyPIVXk06DPsWI05iOm5QVl1KJwEM9KhYEdUXopTKdyeLy6QBtjRGiqWPnV6D2MYtQSbcPMUWJ0Vw16kgXzSvdrwN7lI8LOU07JN9flb4EihRds+tW50/13ske6Jqi45DXs3Kbj3/id+AHxTMLnUcZNLYC2fR0f9mrDvgBsHyU7xTD7b5EiFdWRU3gDL8rPHKUXscN2+w==
X-MS-Exchange-CrossTenant-Network-Message-Id: a423ab32-2cc5-4ebb-e35f-08dead06993c
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2026 13:34:58.7623 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Hz7ZKF/PRsj00KtXj0R8Vi/G17vRwSDcvSYxtozIY2bTxzjZu56Hw5IqJsWC0KFquEljfXgqSEkv8840haBZuQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5269
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
X-Rspamd-Queue-Id: AA4054F723F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	NEURAL_HAM(-0.00)[-0.991];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On Fri, May 08, 2026 at 04:09:49PM +0300, Jani Nikula wrote:
> On Tue, 28 Apr 2026, Imre Deak <imre.deak@intel.com> wrote:
> > Flush pending connector commits before accessing the link training state
> > from debugfs. Access to connector state - like the link training state -
> > that may be updated from an asynchronous commit tail must hold the
> > connection mutex and wait for the tail to complete. The commit tail
> > cannot hold the connection mutex, so all other accessors must wait for
> > it explicitly.
> >
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  .../drm/i915/display/intel_dp_link_training.c | 23 +++++++++++++++++++
> >  1 file changed, 23 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > index 653b974e925c2..6dfb6b8db235e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > @@ -1866,8 +1866,11 @@ static int i915_dp_force_link_rate_show(struct seq_file *m, void *data)
> >  	if (err)
> >  		return err;
> >  
> > +	intel_dp_flush_connector_commits(connector);
> 
> Not part of this patch, but I have a hard time making the connection
> from "flush connector commits" to "wait for completion timeout on
> hw_done".
> 
> What this patch does is add that "flush" all over the place, making it
> even harder to make the connection.
> 
> It's not helping that struct drm_crtc_helper_funcs has ->atomic_flush
> hook, which i915 does not use.
> 
> Maybe what I'm saying is I'm stupid and don't understand what flush
> means here.

The commit message tries to explain that, probably it'd be better to
document this as well as the generic way to serialize some state being
accessed against an asynchronous atomic commit: the tail of such
asynchronous commits cannot take WW locks - which are generally used to
protect the state of a DRM object. Here that state is the link training
state of an encoder object. Since the async commit's tail cannot itself
take locks, the way to ensure the exclusive access to the state is:

- In contexts other than the async commit's tail itself 1) take locks used
  in all other contexts to guard the state (mode_config.connection_mutex
  here). 2) with the lock held wait for the completion of any pending
  asynchronous commits (which also waits for the completion for the
  asyncrhonous commit's tail).
- In the async commit tail, the state can be access without taking locks
  or doing any other serialization, since all other accessors of the
  state will wait for the commit tail.

Flush means waiting for the asynchronous commits to complete based on
the above.

> BR,
> Jani.
> 
> 
> > +
> >  	if (intel_dp->link.active)
> >  		current_rate = intel_dp->link_rate;
> > +
> >  	force_rate = intel_dp->link.force_rate;
> >  
> >  	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
> > @@ -1939,6 +1942,8 @@ static ssize_t i915_dp_force_link_rate_write(struct file *file,
> >  	if (err)
> >  		return err;
> >  
> > +	intel_dp_flush_connector_commits(connector);
> > +
> >  	intel_dp_reset_link_params(intel_dp);
> >  	intel_dp->link.force_rate = rate;
> >  
> > @@ -1964,6 +1969,8 @@ static int i915_dp_force_lane_count_show(struct seq_file *m, void *data)
> >  	if (err)
> >  		return err;
> >  
> > +	intel_dp_flush_connector_commits(connector);
> > +
> >  	if (intel_dp->link.active)
> >  		current_lane_count = intel_dp->lane_count;
> >  	force_lane_count = intel_dp->link.force_lane_count;
> > @@ -2041,6 +2048,8 @@ static ssize_t i915_dp_force_lane_count_write(struct file *file,
> >  	if (err)
> >  		return err;
> >  
> > +	intel_dp_flush_connector_commits(connector);
> > +
> >  	intel_dp_reset_link_params(intel_dp);
> >  	intel_dp->link.force_lane_count = lane_count;
> >  
> > @@ -2063,6 +2072,8 @@ static int i915_dp_max_link_rate_show(void *data, u64 *val)
> >  	if (err)
> >  		return err;
> >  
> > +	intel_dp_flush_connector_commits(connector);
> > +
> >  	*val = intel_dp->link.max_rate;
> >  
> >  	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
> > @@ -2082,6 +2093,8 @@ static int i915_dp_max_lane_count_show(void *data, u64 *val)
> >  	if (err)
> >  		return err;
> >  
> > +	intel_dp_flush_connector_commits(connector);
> > +
> >  	*val = intel_dp->link.max_lane_count;
> >  
> >  	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
> > @@ -2101,6 +2114,8 @@ static int i915_dp_force_link_training_failure_show(void *data, u64 *val)
> >  	if (err)
> >  		return err;
> >  
> > +	intel_dp_flush_connector_commits(connector);
> > +
> >  	*val = intel_dp->link.force_train_failure;
> >  
> >  	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
> > @@ -2122,6 +2137,8 @@ static int i915_dp_force_link_training_failure_write(void *data, u64 val)
> >  	if (err)
> >  		return err;
> >  
> > +	intel_dp_flush_connector_commits(connector);
> > +
> >  	intel_dp->link.force_train_failure = val;
> >  
> >  	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
> > @@ -2143,6 +2160,8 @@ static int i915_dp_force_link_retrain_show(void *data, u64 *val)
> >  	if (err)
> >  		return err;
> >  
> > +	intel_dp_flush_connector_commits(connector);
> > +
> >  	*val = intel_dp->link.force_retrain;
> >  
> >  	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
> > @@ -2161,6 +2180,8 @@ static int i915_dp_force_link_retrain_write(void *data, u64 val)
> >  	if (err)
> >  		return err;
> >  
> > +	intel_dp_flush_connector_commits(connector);
> > +
> >  	intel_dp->link.force_retrain = val;
> >  
> >  	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
> > @@ -2184,6 +2205,8 @@ static int i915_dp_link_retrain_disabled_show(struct seq_file *m, void *data)
> >  	if (err)
> >  		return err;
> >  
> > +	intel_dp_flush_connector_commits(connector);
> > +
> >  	seq_printf(m, "%s\n", str_yes_no(intel_dp->link.retrain_disabled));
> >  
> >  	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
> 
> -- 
> Jani Nikula, Intel
