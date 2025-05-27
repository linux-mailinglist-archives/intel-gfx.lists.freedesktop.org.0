Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68A70AC5A74
	for <lists+intel-gfx@lfdr.de>; Tue, 27 May 2025 21:10:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 618D010E106;
	Tue, 27 May 2025 19:10:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ViQYVNpM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60A3E10E00C;
 Tue, 27 May 2025 19:10:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748373056; x=1779909056;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=5wNgc1Pt6FzVGbmV36g/KFamTxahh9cOJjGWyDBw4+0=;
 b=ViQYVNpMCMR2VWqbFH2q9l58eodx+ih7DtTS+APAz5bC149tbkOtIWyd
 vyNz1qUpX8FRubycXUtL9TAZmt6wdKMYoeBV/QPqjgU97mN38DYZyzo9/
 V3JBUBFtJqLbnEq32kuvJzi3QoDZBwXVdH0F0oyPaZLeYghJ4y9vcX0l4
 2+mtBTtiFhDZxrIk6gOnU8vroxgiv68QD+uKxi9wzNYD96KgWSrCS/pYu
 OEfpyAop9GvaoRGm2TiJ6TLiwSAPlkH3zVcO1eLU0pOGTLXXQJFw+di6S
 2kZSLtz2XJ/1eRhbQtG0ejskqgyR8Rfa3h6eJnNtznAFLjZhPDHlBBtII g==;
X-CSE-ConnectionGUID: mWlEdba/TvC5FX8BLH2iUQ==
X-CSE-MsgGUID: hPNxGLHDRcagyynZINz/lg==
X-IronPort-AV: E=McAfee;i="6700,10204,11446"; a="50535200"
X-IronPort-AV: E=Sophos;i="6.15,319,1739865600"; d="scan'208";a="50535200"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2025 12:10:55 -0700
X-CSE-ConnectionGUID: M+4tQvpxTKyddDPDDunkZQ==
X-CSE-MsgGUID: +yfKWjJkRxGwmbuYQJv13w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,319,1739865600"; d="scan'208";a="142913136"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2025 12:10:48 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 27 May 2025 12:10:48 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 27 May 2025 12:10:48 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.82)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Tue, 27 May 2025 12:10:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vt8Gz5N4WXyM5yXm9WAsarjKvDKcZOEZSiAdHJI2yUtbW1vy0VbsfxjDFQxRqiQx/nIMz5dPZ0qBJi/psMLHZfc4BGbbZJYZkCF3rimFxhc8bUubNEUwTbmBuf+oCG3dbs54H85oSAlB1vdvHJGKKreHdbMkwDgrCATCdhN7sTuPOvFCUhLT9AQ0k9T7nV6X0QUuDMKE1TGqPY2esSgLmsVXKqNHApBQWCgp4R0WwcJd5LdjhJmMqsvTus1RF/LC/4GSgGpGKyn51cWz8JZKL4B1VYDRxIWpMU5uJxv67liASJ6pflngkVO1GL3DUHz0e5YzUV+MYkVeHiVEr86/qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uOozwonK11OqPeindklCha7zgjFuK39rSlMyLtUxp1c=;
 b=tCpmsPU9TzpDr2Ft/qZjfl2+WCFkx2Z5QftbbNMN60Y1ZTaRriP+x7lYQaS2nVlC0LrhNuhw5jWrIM3huW+4j/4EICj49tQxo1/nWmyvUh1hn5j4sOmgrtmipO5LUx1+pNF/5Ip291FZrYQArd/QrfYINQVFocEtGfnKWu8uVDZHsFHrAdtZ5XlTRaSfmzSMax7ajql8ch/PgQOibSvSR9Y99csoLAl0dyMXeEYHU54Qgi7F3Sc1zDxPYfA8i8WwAM1n5odGP2NAVqaXYNEn2RJqROxn8b+8n/vFxBdBLJzytb819bL7AV9kS84o8UumGTlrRWxlFUuGyZ5ywKyblw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by CY8PR11MB7875.namprd11.prod.outlook.com (2603:10b6:930:6c::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.26; Tue, 27 May
 2025 19:10:42 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%7]) with mapi id 15.20.8769.022; Tue, 27 May 2025
 19:10:42 +0000
Date: Tue, 27 May 2025 15:10:37 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915: drop intel_dpio_phy.h include from VLV IOSF SB
Message-ID: <aDYOLVN-HHuVGvpT@intel.com>
References: <20250527114854.3687469-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250527114854.3687469-1-jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR03CA0203.namprd03.prod.outlook.com
 (2603:10b6:a03:2ef::28) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|CY8PR11MB7875:EE_
X-MS-Office365-Filtering-Correlation-Id: ef673d6e-d834-4ca9-9fed-08dd9d522cf7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?zKFDa/YfE7rpGq3XOhSqLZ/+00zJjJKE8udoYv0nHUtUGkuNltprw7FJ33Ma?=
 =?us-ascii?Q?0zncJgmjXQhISndVWHJbOmYdwi5J2V6spwPj6QS2amJhOP0YBKUq9Z8eJu5B?=
 =?us-ascii?Q?wNqzZuo6y0fAC1BjP0oma/staaJ93SZJzq+E24SNtFxUK0f9rWFiItsWzALj?=
 =?us-ascii?Q?2mGPtUNdxjFqv4RqXgw4wOt8//riZIiAfOhl229vIE0Gt5hqaXpMObXwdlZr?=
 =?us-ascii?Q?LuC7YRUQBAzQ4wUY/a3Art0Lz3nE6jXZ0SRpFr4s7wd4iIyCh8CooYlbBPit?=
 =?us-ascii?Q?Ra6qCkH2YOlm8jfDQzLIiVTPn21iNvLMDp38FhRAZxSqkkcTxr0ayGPxvaJO?=
 =?us-ascii?Q?+oewLwBTohni2Ji2tPToqW9b48aOE85QitjBJvzZCD5Z9FxNMCC/SfEOPTr1?=
 =?us-ascii?Q?TI2oRdCjCoGVuyrxvoywx2SNZBV99Pea15V5VzFD70GCpGlUQG47eqWz5tk1?=
 =?us-ascii?Q?vVj8oDnmAMAc8c2/AW34DFgFyEwZk68m2KSAc7cNTzDn+NbihiL1Li/rrCh0?=
 =?us-ascii?Q?7wTfekapfGHH3VMg2dKvGrNZrxQL+S43YAfiZbafa4pg+iSBs1005lHL+dka?=
 =?us-ascii?Q?SwJ6boQgISIDsC0ZBd+T7DcOjfBiemujWnpO2DGomQq8tAanaelsCydgWr1U?=
 =?us-ascii?Q?CqvpCvo9nz7T3aKdZUPudvJD4Q8sKJAGa9t6HN6aCy5AfzqaxTYHIqTGIJBE?=
 =?us-ascii?Q?SvFGLwNmRI+xabnb6aCSSwq5DVd+G5J8bTyET+8MeO0vPN9W8xAnOVuxzjO1?=
 =?us-ascii?Q?VMl5Ip1Yy3huRumomBN3516DR2tk6Rkildy/X8oYLagfcQqCztppZTNK2WnX?=
 =?us-ascii?Q?hnK6MbgUnWt3iJM7KTuyW40o7OGxt7z1/9EtNxg+MGy2P3fCdwg51u6+VWNA?=
 =?us-ascii?Q?rYkKzNRFd6ZXBfp24BHlpCFA3cKwhJf2gE2uq4pvqLGjDEyeFp1XrwfLof3D?=
 =?us-ascii?Q?doxW6fQ8jd+wiFuhmkwDPvUDo9c4Z2KOvXTgbxb9+oAX0anY0UKbelLyhbWP?=
 =?us-ascii?Q?A8G2FybmSYHtcslL4l3EWE1GSwujXvR7fFQAEjP5yMY7FfhcJOs3g+dYesHx?=
 =?us-ascii?Q?fJ8zuqjm8CXYZFLeCCTzcxXSu0UDbh1nUPi7xrdIiH0huVhpN0GOAl+mRYjl?=
 =?us-ascii?Q?4rJcXmqHYkNg8zpYQEByrhAiHHocX/rBvBHG02NwZxAhAkSczbwl6N90DQTT?=
 =?us-ascii?Q?xSkMo+iZEPMY+C9oY0V8HEf695f0aT7N0nTiz2HPT9hV6Z5IW6tBv46KMa+f?=
 =?us-ascii?Q?vQd17buZguYiN52bwCCg+auu+I+ksQj9Nad+97YqJBVQEY+uZdoUlK5G7TEE?=
 =?us-ascii?Q?km0H2Xwk7VhKI/Fi1uJ+w0RVkieiuE4DYYhOHGiLNQumb+eotvFCSPtnOwkb?=
 =?us-ascii?Q?1JKVvrapLmUE7Q68J7gD8rQG3CrsE0+ugQPv+7glcWbpYlBOo5wcbmrfKM0I?=
 =?us-ascii?Q?UzkaONZtWd4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?JIelmlnWLl9SoCYOBsPiXPr08yI1efDbrOZn3/HoolB/g3GMyqNXspe+O/jF?=
 =?us-ascii?Q?T5+VAUjDVP9QSLvudek3Ynf5IxL64E7PBTI1qAG/SUsHep624WwpKGsioEV9?=
 =?us-ascii?Q?W75z5LvgcUzAMVY1NdDSghyyQDonkn2YP7hhL4tRTXzcAnoVKaRnPy0lseJA?=
 =?us-ascii?Q?Wj2F0aWVVLmCDk2QPupm81tSnZ+ITElaqEaa2zSCh73LxKWRflR/VCcAUb/M?=
 =?us-ascii?Q?ktrDBhJFmeO9Zwlgzt0qNJXaAwoVuzJUB5+5LTrD2ekJI8BIhOMLIPYuM0Es?=
 =?us-ascii?Q?gbG7PcX7q/LG2WWKLWChpB06znFcTzTLyqkxySys/M9yMwvnftsVOCv44c3N?=
 =?us-ascii?Q?mRKpglDo7F+C4X+mMAnv64oA4CTkHEhLuhjz1XrsTnjuvPFLt9EONjJY1BRm?=
 =?us-ascii?Q?W7acsUy5tbWEjaNfao+SjKdu89o+RYGndNG7J63LUi38VfvN/5dRVjXTLpJB?=
 =?us-ascii?Q?fWquwl+w1ZY6ZuCV5+McnauBpKDvaCyZWjSbOq+EaPftVUYrM81YzFPn+fuU?=
 =?us-ascii?Q?GF2wNfS78I7g0JZIHX6VPM3F8cyp/HKuiyXvt0YNPAh6F2M9OhqvA2ppbK/k?=
 =?us-ascii?Q?3x7zD37FeEh8mp5OnZqDXcgfAKEHZ+F6AU+We4gxbehM/NsRpYRtnpdp9Yyg?=
 =?us-ascii?Q?FKvgPuTlGIuNruLlWe5+hsDJCnbAfYfFgyaaWnYATKh4wnew21a7GEJSdQZg?=
 =?us-ascii?Q?gv7DexqY8IRdzPfmsAnt/gjfDgTgkXJOofy48I3Lk439S8pYcZ7Vpv8Taab2?=
 =?us-ascii?Q?zo+IRSLupAW6nDoSdeE3y71wDzuVwWkXEogF7MSYsj2BfhUmyiTI4BcoB/6l?=
 =?us-ascii?Q?FIuVH9rRE49OX0ZatJj2OT7TcAIof0tSdpOaOoH6Y6i3Mt2szX6XTcsudzOc?=
 =?us-ascii?Q?mI5j7q7dJDFos8Q9dueb0jJV6MgWly7HaICyCqtNSqD+4uXVTiy/tnagyQLy?=
 =?us-ascii?Q?65ZrJR54O2iGQX65hCF0xrvspdkZVf8zv7B/TkGGeouFIWJJD6mWgOdxDuVT?=
 =?us-ascii?Q?0bvs7cdurUqngvHuhL82yRPI2QsJbBiGPTqG3JnV0YPqCpN8WnXvQOJBIQ6c?=
 =?us-ascii?Q?rz2xKQjRlnmh/JwU/DVNLaubBLPopLMPOTz+7vdqY5eWC8PEnuuR6XtphWQG?=
 =?us-ascii?Q?f5QGwwFUt7n+UTOCEkUEOAYKP4gzsVCCQyQyfwgwWTwXl4c/P1m5GAGSlzpQ?=
 =?us-ascii?Q?UpYKlgwADaslWfh5+N+6GAo9ZsM2+hURpck+2z5VRskPfnVNmK9MDRN4Z4NT?=
 =?us-ascii?Q?Hvc4tuhLQUrqXE1933QEzHXL5R+GKZVXORh5RYRryvEL5DYRbATyUvFuQ0S7?=
 =?us-ascii?Q?75CeCrd1UqJ/6oPbqBMBaSCWDd9pFDW4UrUYL1VWhKXEaEdZna8VUNSvMBI1?=
 =?us-ascii?Q?qqEqWojoc6/tdNwzcPF8rgLQyAmSF1jRFw0DB7lZJnOiygHqdbgpOpqb8zpe?=
 =?us-ascii?Q?grlc1zLSHZrJ81jyP6rK3bcMLrySQhAF4Eh8VvBryQaR4DYyfxxQi8MC0H+N?=
 =?us-ascii?Q?yOfDYvNCs/uXeIhqM8XHthshQUGkVWbUSy303040O6VL3c71SBmMIUxSuSKZ?=
 =?us-ascii?Q?qAt6b00YhHRbb2KFdrKbH0yY+oEUN1T93PwXMCIP?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ef673d6e-d834-4ca9-9fed-08dd9d522cf7
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 May 2025 19:10:42.6304 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2Zm2bb+iJLqRpSzqgOm2c2QqANDXMYb7A13e8Q5nrrEPLTdqs+DrUt5ZeirEgPsQ8iTUj5PDOJhim0KjvY3tAg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7875
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

On Tue, May 27, 2025 at 02:48:54PM +0300, Jani Nikula wrote:
> vlv_iosf_sb.c no longer depends on enum dpio_phy from
> intel_dpio_phy.h. Drop the include.

Trusting more your compiler then my eyes:

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>


> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/vlv_iosf_sb.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/vlv_iosf_sb.c b/drivers/gpu/drm/i915/vlv_iosf_sb.c
> index f4b435555f3b..f4b386933141 100644
> --- a/drivers/gpu/drm/i915/vlv_iosf_sb.c
> +++ b/drivers/gpu/drm/i915/vlv_iosf_sb.c
> @@ -8,8 +8,6 @@
>  #include "i915_reg.h"
>  #include "vlv_iosf_sb.h"
>  
> -#include "display/intel_dpio_phy.h"
> -
>  /*
>   * IOSF sideband, see VLV2_SidebandMsg_HAS.docx and
>   * VLV_VLV2_PUNIT_HAS_0.8.docx
> -- 
> 2.39.5
> 
