Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GGlhEwUulGnQAQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Feb 2026 09:59:49 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3A2614A224
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Feb 2026 09:59:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DB1510E49B;
	Tue, 17 Feb 2026 08:59:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g7M0o7p8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 263BD10E499;
 Tue, 17 Feb 2026 08:59:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771318785; x=1802854785;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=pd9S/8jFxd5YP9Metn2nmyxnL+pX1wGXScbpbuXooHg=;
 b=g7M0o7p8s4AmPLT05pER+qolDbkEQC0CRXD51MM7o3OFQZw1bB6PSqvo
 EYROhHKoMRQBQjuM5EAbjaKnok+lm0fcXQKgLhTpwUFXJ+oz5QiR+gIfd
 jH7rKsnjyzwMOxHUMY/vSKA6jKSJ16h0Yv1RjS5dT9Bg+QeuXXFJzcfjF
 cwwu0qQFHt9RERGqQa/8ykrN493Cmk02+LsO+OV/QLyO30qODTRnPQpjP
 nmKPpw3sT2d5Qp59uPunPb8IMsP2nmJdatIq1NiU/MCm9JKzfKPYphroB
 OR7os1DMeD/21Mmb+PAPJNRVOHgswem/gWljmi/sqtUI8aZKDgRyJ1eZ4 g==;
X-CSE-ConnectionGUID: b8Zb53kNTEyksufPNjBJOg==
X-CSE-MsgGUID: IZfz+h5KQFqs8BJhhECMrQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11703"; a="76224087"
X-IronPort-AV: E=Sophos;i="6.21,295,1763452800"; d="scan'208";a="76224087"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2026 00:59:44 -0800
X-CSE-ConnectionGUID: GQxoO+WJRdKAPtWlAxQzEA==
X-CSE-MsgGUID: dIHRF5oJSQ6ZHtFhDFSi2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,295,1763452800"; d="scan'208";a="217782203"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2026 00:59:44 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 17 Feb 2026 00:59:43 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 17 Feb 2026 00:59:43 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.20)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 17 Feb 2026 00:59:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JJT0A3w530aVZ9bnQ1Qc6JASi2BpPxJN+KEKnEPY1NLuZBALgENi37H710SlSPxvd6dxIdLo59dP3PLX/vkTBbtn3z50V99hRtrtqM8lqirGQCCsULVsEFrDDWher189kT4L4LkZIhq3WNzRAunbs9t+qunY5gzA4YFfHDjIFNw/V8rks+3+0P+g2wTSWlk72wdYL0BxFN53yLSxgkqkiyQCntOdQ2CYXkbylpTeOUQLMk82SNd8ZNBrD5svuybZZtmknRjpXX2dahgpmNO0MlM2YjbryXFDyJymorX+IVk/z2BuabRxukb05cmIbzMuxpxEDV7ORcre9NDCrQxMjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BYYO/c3CNHmPzPFmRoCTxMmdH//6tlTIBIWcu4rm9Yg=;
 b=K+JkHXP0Clb3zm2uLOGFJMCb0Q9OKRAHLiiwexSzeP4gL3rsAhMBr3P+nJKgUtzytTWMdeAMeEgxco7vZAsHFFsWE1r4wmrWLcZpzTj/FXSZmk1d0e0CYq4y2SpujQMb4kly+T8TdV3EGIOQ0HwDoC0AO80jtR/T0OZR73zvXRgOg7S6vL5b87qAe8CU1rVGfdSLldQ52j8REn4QeyE8KR9Yei9OKTV0Jay6MDW7F/+BMr8W1WiEyxLqOcRX3RpKr+ZJusubG1gC2E+teL+lXYWZ+6+eBrTZmec4U1XdfJWLAH7YEudy1HZJrpRwncw9Rx9HRyssQO2WC/2onehs7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CH3PR11MB7390.namprd11.prod.outlook.com (2603:10b6:610:14e::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.13; Tue, 17 Feb
 2026 08:59:41 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9611.013; Tue, 17 Feb 2026
 08:59:41 +0000
Date: Tue, 17 Feb 2026 10:59:16 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ankit K Nautiyal <ankit.k.nautiyal@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 4/4] drm/i915/dp_mst: Allow modes requiring compression
 for DSC passthrough
Message-ID: <aZQt5Oo7xsRCM7CX@ideak-desk.lan>
References: <20260216070421.714884-1-imre.deak@intel.com>
 <20260216070421.714884-5-imre.deak@intel.com>
 <9961da24-68c6-4633-846e-7b059b45858c@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <9961da24-68c6-4633-846e-7b059b45858c@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV3PEPF00002BC0.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:144:1:0:6:0:11) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CH3PR11MB7390:EE_
X-MS-Office365-Filtering-Correlation-Id: 6cd85443-3a1b-4703-4155-08de6e02e28d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?8LZq33OX/f8C8L9gjfi8RAyhLMqwG5ECYF2Tv/dZg0REfjPmMkJAOPfoAErP?=
 =?us-ascii?Q?eEPjpclAvweHeE3ZaJUdj+Mozwt9EXjn836ltmUUv0Klj0iV3Pfn8uNf9d7T?=
 =?us-ascii?Q?Y5Vk/eLxyib76Uik0oTkEQAvqZ0ifCNJgUiQb4JXnE8bvAlfc0+34bk6lwrR?=
 =?us-ascii?Q?CHr4+TwiwDkrTMWPv4gwX6hTpwyPD/efu9Rc63an/tRrzJe5SWwx4KbJUiwZ?=
 =?us-ascii?Q?LQL4cy7jsjFieyrp0cvkP9ikI7XrPpDlmFbg7EJKo0mQhJa7uDKlZrBpx4a6?=
 =?us-ascii?Q?YHFUl7Wtzm/isUKsoGZ5Fc4IEi7FqBJoqmsrX1/OH3KJweUZzmXtz6bfTjSB?=
 =?us-ascii?Q?KxJPsPkgtHTf0Okzr8ZNh5kGsN/PWNU5JJLgADgmV1K/Kx9cxWsVh6PempZN?=
 =?us-ascii?Q?pm1g5X0Yut78ARaCVg7S5+zPZnm0JIJ+ZX4hVjVTNPG9llFsktaUComObQbC?=
 =?us-ascii?Q?bH79pmp0YM27dZ14jQ8z75nu5bj1UcxKpFZ9TZ8HEEoNmb3UwErrZAAYeIVH?=
 =?us-ascii?Q?5aodnpBZ469xSrqnS/vlYN+TyVPc9/4VmateL/NRljgj+vgMweV9HRtfi7bH?=
 =?us-ascii?Q?JEOIGH/mBbViUu2GAObwDVDpkN66YMx/qjNWhs4shc9HNeNxABty2AiLSQ99?=
 =?us-ascii?Q?XpcvMFn6ohRwUYkbimO6oDmZPDGd6+8R4Ab8WlxeKj5jZoW14MnVSWpEoix4?=
 =?us-ascii?Q?kRLdta+IJ0LzDWOWeC+UkaXW5sVp+uikhAnhUf280HV1zHNqLrwKiz335IGh?=
 =?us-ascii?Q?eM7tgpN+1MbRS6J9sYVXS9GCFVQmNDAzLY5XhnDcdO3Pu0pRY/YQlJ1dgrbu?=
 =?us-ascii?Q?88S8X62JIzPwAessPtgEyrNGW+8TziaJj4j6O88skjuXucyIXx4hUOptmiKP?=
 =?us-ascii?Q?J/e/koQ8JF+dGRlCCfgAPTHXj0nCK4iIVGwufqZJm976N8NUJrgf+sBnb29S?=
 =?us-ascii?Q?+vbJ0HceeuPd+3F36aimvqj0d7g9A+m/i0LWO66+cS9n7etLYArkdps+rQuv?=
 =?us-ascii?Q?h5JYLIOHwYdSHwg2EfXQ2FRetPDSgOJqkjLxXSnlH8nwbgYrMEnev11dErDm?=
 =?us-ascii?Q?mTafsAypUYy/ewQw4TRI4Y/OhmTVTdwBs3t/1rz+Us5pvQAJq5/AtrgjATpu?=
 =?us-ascii?Q?6X2EDjWTlUik3g3U48uYEs+GkofTwQ7S0+kL05a9AQTkIvPxdvyKauGJ3Nj4?=
 =?us-ascii?Q?nHQLO9UvjRdm+8fpAWV3/+scYBcAs1RZ/EdOHY6V6It8EeEpOZ5ydhXnC6Yy?=
 =?us-ascii?Q?yRJ8e+GWB5xmnZq7tiqqaYm9/V+iVZxe2/4TCyWQOqvdjrVALcQ57/e7Qqfu?=
 =?us-ascii?Q?ixzL7T3uOew08upUI8HFS9XZkcactCM4nwgElhqGQqa0O85Xdqw/EUSMudcM?=
 =?us-ascii?Q?2NBwJCqQKevFR+zg+iBLZ43OFZatGJWTRpl+whBwycRSZqe1ze6SWSOOj+lV?=
 =?us-ascii?Q?wXjhuR8vdVhlPE4tiDqpxWAINsYw+aPniT8X9nGtq07CLwxwSbeyGvhoA2GO?=
 =?us-ascii?Q?pUZ5IG81npUySv6ywwGqIx7w4R6wGMD4ToyM?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?UqvlsxPyT3Ke7cGQeuMk6Xzue2/NWSfWDEIpTvln+GnaJeCkn8aEC+4a09HJ?=
 =?us-ascii?Q?/1fnIZLRE0x0pOV6Q9C0HL1gEqKyon7OAD/fHDkwdk+C7O8pf9asYOqA7Z3v?=
 =?us-ascii?Q?gSqQ8J1hrzAr1RdFkFg6f50HRnILWWiBRhpvxVwzLSpJ7DCZqi+T1UNK1U6K?=
 =?us-ascii?Q?VDTTfNjnf/RRasUol+UBdACDZ9UqNW6ht/V67REjis/KoHdCx5ufDwoOQd0I?=
 =?us-ascii?Q?6dIpMCN5/6uj3irQTI/xfM7DWKkfq+ZYV506QmwYTXNKtCrNbmzSuWznxWHm?=
 =?us-ascii?Q?jzAjlGdMxuDDd0SnTKi3tbqAz1oq5HzjHWelrcwQ+zq4AULNtvKnzZgdWGTM?=
 =?us-ascii?Q?mLpiI9ajjFp7x0/DhsuZ2V5I538LXYhP//qVTZVfzlHW496U/CLdZJkuEiSp?=
 =?us-ascii?Q?ozzxcYhqi/su76um8XRS+YNhDwRHlQFM35ADtPy+pwGeptVHeXIZHQ4D1xu1?=
 =?us-ascii?Q?OmQkIVSEi40kzUzAYlUGQzEVvBej/Nwc2gsm3e7KYGO/Lh1Mmri20T6BhMZT?=
 =?us-ascii?Q?1JpGMiP488jsRKDRoYMowH2ZwUKRNzXg6rJBiUFTLJsZVcN3zBGH7GWOxYs9?=
 =?us-ascii?Q?KuTOI4Cv6SV2Kf0BuO0Gme/oKEjJ2tmDTOsBU4Chz4q3BAIFwMtqbk5hWAKa?=
 =?us-ascii?Q?eq2VnIv8QKUg1NCO7OzKG4im699N57S8KiZfDpofPY058T4L4dzWGpxEFam1?=
 =?us-ascii?Q?q/+qNh4k0OSSQ4yoDh02fRIT9FZixAX32nUfLkpQ9O3ScLW81oworF+GVogz?=
 =?us-ascii?Q?khrEwifE431o0fCkPvBaIy2VMRW5of07SRgt6fN/bjkWd5HXlg0DbpCn6Z/1?=
 =?us-ascii?Q?CPQInZ5wp1bszmlwBFH+TLAt6bLLj+UN6P4hwNyCKLHVlJNDGs06x2nGMwt6?=
 =?us-ascii?Q?kq/tK2d2VtlXRes5FbNgUhoTECal3zDfwcwvfPui0tjqWOXZU2og+dzEjtcd?=
 =?us-ascii?Q?2QeZbXI//Er4YoVBeTNS9rTtCjxJluYn7VqQZvxz/9y9yxrizJwkoiIoZA94?=
 =?us-ascii?Q?47LoTYLUy/xUaAvN0oVIztBcVdWVNbBw+uuhtaLdkTvFhsSb83onTy9CFBeT?=
 =?us-ascii?Q?Q8w/OOMxsqv+t4D2/wwKnXzQDGA0ZPdlcixve4x86LKv3eH8W7s3SGtsd4ws?=
 =?us-ascii?Q?/H59t6vgafNsEBPqQ35fDW3mJlOatKd14xNn7h6vWEcQca+Hz1AnkZg2PQzf?=
 =?us-ascii?Q?RfDK9DJLv3qilCsZa7DDgX/Q1uwKyUGdhenVfEWqHED2b2ycTC3zSYzaiE1s?=
 =?us-ascii?Q?alXVCjA1paHa2W6pKQ4VNw7B2ZnRfeOSrS6T1O11QNZKG6PW7sDxrErQ7L1c?=
 =?us-ascii?Q?K5kcD+qK2Emdudv6nFPnAY2gh3iUOHm2hk/KNrlltLuKVtZ8cV/u2K/NlTiF?=
 =?us-ascii?Q?faSh/Jtgf0nw6ebWS0VUt30KK+dS1MCwY5irUbBHhQhetLPmF2FmlYaSOUHO?=
 =?us-ascii?Q?xds+YtCLVGHxuykTGds94pl0zDUSBiurtiAMQW1UTW5KzK5XB4ljpoKbKmL6?=
 =?us-ascii?Q?lssviDtfcqZ+EknbXhONm7Hs3zzcLkOyJminaWuIpWmxBBcfYeHrdQaCXmCW?=
 =?us-ascii?Q?DqZMjfjIjoGzJBluXP7+y1fDkVzeSMz1LAYi58ARE/ZMe26kPqlAceOSdb7P?=
 =?us-ascii?Q?Q8GHTnciPmYK0yXdQ5RXWglEL0N2ZFf1S0YlOH48pK1ymFtIf/CB69+7HP8t?=
 =?us-ascii?Q?tAR2kHGF+K9+dXDgi/7zbnfxod5WxASdFSfClv0qww+uwdJoeGBJ7O25VoyI?=
 =?us-ascii?Q?6Xpxhotxug=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6cd85443-3a1b-4703-4155-08de6e02e28d
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2026 08:59:41.5190 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PAvxYwsiYA0+crO9kZ+5HLfOn0k/Rg80zlINDHGI9sHkTOtCelQ4j56hdECUpW+za4KZlgD8bXGRWTh2KFRtVw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7390
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:replyto,intel.com:email,gitlab.freedesktop.org:url,ideak-desk.lan:mid];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: B3A2614A224
X-Rspamd-Action: no action

On Tue, Feb 17, 2026 at 10:23:51AM +0530, Ankit K Nautiyal wrote:
> 
> On 2/16/2026 12:34 PM, Imre Deak wrote:
> > The DSC passthrough mode allows a compressed stream to be forwarded
> > to the sink instead of being decompressed at the last MST branch
> > device, provided that the branch device supports passthrough and
> > the sink supports decompression. This enables modes that would not
> > be possible without compression, as the bandwidth required for the
> > uncompressed stream exceeds what is available on the full MST path
> > from source to sink.
> > 
> > Currently, MST mode validation assumes the stream is uncompressed
> > and uses the corresponding uncompressed minimum link BPP for
> > bandwidth calculation. Use the minimum compressed link BPP instead
> > when DSC passthrough is available to enable the modes described
> > above.
> > 
> > The non-passthrough DSC mode, where the last MST branch device
> > decompresses the stream, may also allow enabling additional modes.
> > This would require determining the link bandwidth between the last
> > branch device and the sink based on the
> > DFP_Link_Available_Payload_Bandwidth_Number reported by the branch
> > device for the sink via the ENUM_PATH_RESOURCES MST message.
> > Supporting this is left for a follow-up for the following reasons:
> > 
> > 1. DFP Link Available PBN reporting is not supported by any of the
> >     available MST devices used for testing.
> > 2. Non-passthrough mode would enable additional modes only if the link
> >     bandwidth between the last branch device and the sink exceeded that
> >     of the full MST path. Unless multiple MST devices are used, or link
> >     training forces a reduced bandwidth between the source and the first
> >     branch device, both rare cases, this is unlikely.
> > 
> > Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/4332
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> 
> 
> Makes sense to leave the non-passthrough mode for follow up.
> 
> Perhaps our kms_linktrain_fallback can be tweaked to test DSC
> non-passthrough and passthrough modes.

Yes, it's a good idea to test whether, with a reduced link rate / lane
count, modes that did not need compression with the original link
configuration continue to be enumerated/enabled correctly when switching
to DSC.

I don't think this should be part of the LT fallback test; it could
instead be a separate DSC test by just forcing a lower link rate / lane
count there.

> Not directly related but perhaps still on the topic: currently we are not
> exposing dsc related debugfs for MST connectors.
> 
> With the recent changes and checks for intel_dp->force_dsc_en in place for
> MST, can we start exposing the dsc related debugfs' for MST too?

MST connectors, and in general the whole DSC debugfs interface, need
some changes. Adding a way to control the passthrough / non-passthrough
mode (probably just a disable_passthrough connector debugfs entry)
should be added as well. I have some changes for this and plan to follow
up with them.

> (Though, there are still things which cannot be tested on MST - BPC tests,
> output format etc.)
> 
> In any case the changes look good to me.
> 
> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com

Thanks.

> Regards,
> 
> Ankit
> 
> > ---
> >   drivers/gpu/drm/i915/display/intel_dp_mst.c | 18 ++++++++++++++++--
> >   1 file changed, 16 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > index 7ca2e2245fc70..f833f47643271 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > @@ -1467,6 +1467,7 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
> >   	unsigned long bw_overhead_flags =
> >   		DRM_DP_BW_OVERHEAD_MST | DRM_DP_BW_OVERHEAD_SSC_REF_CLK;
> >   	int min_link_bpp_x16 = fxp_q4_from_int(18);
> > +	static bool supports_dsc;
> >   	int ret;
> >   	bool dsc = false;
> >   	int target_clock = mode->clock;
> > @@ -1491,6 +1492,13 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
> >   		return 0;
> >   	}
> > +	supports_dsc = intel_dp_has_dsc(connector) &&
> > +		       drm_dp_sink_supports_fec(connector->dp.fec_capability);
> > +
> > +	if (supports_dsc && connector->mst.port->passthrough_aux)
> > +		min_link_bpp_x16 = intel_dp_compute_min_compressed_bpp_x16(connector,
> > +									   INTEL_OUTPUT_FORMAT_RGB);
> > +
> >   	max_link_clock = intel_dp_max_link_rate(intel_dp);
> >   	max_lanes = intel_dp_max_lane_count(intel_dp);
> > @@ -1504,6 +1512,13 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
> >   	/*
> >   	 * TODO:
> >   	 * - Also check if compression would allow for the mode
> > +	 *   in non-passthrough mode, i.e. the last branch device
> > +	 *   decompressing the stream. This makes a difference only if
> > +	 *   the BW on the link between the last branch device and the
> > +	 *   sink is higher than the BW on the whole MST path from the
> > +	 *   source to the last branch device. Relying on the extra BW
> > +	 *   this provides also requires the
> > +	 *   DFP_Link_Available_Payload_Bandwidth_Number described below.
> >   	 * - Calculate the overhead using drm_dp_bw_overhead() /
> >   	 *   drm_dp_bw_channel_coding_efficiency(), similarly to the
> >   	 *   compute config code, as drm_dp_calc_pbn_mode() doesn't
> > @@ -1527,8 +1542,7 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
> >   	for_each_joiner_candidate(connector, mode, num_joined_pipes) {
> >   		int dsc_slice_count = 0;
> > -		if (intel_dp_has_dsc(connector) &&
> > -		    drm_dp_sink_supports_fec(connector->dp.fec_capability)) {
> > +		if (supports_dsc) {
> >   			/*
> >   			 * TBD pass the connector BPC,
> >   			 * for now U8_MAX so that max BPC on that platform would be picked
