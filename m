Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6Fv3BU9xHWrFawkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 13:47:27 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB2CC61E8AC
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 13:47:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84731113233;
	Mon,  1 Jun 2026 11:47:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TI1arWOg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46F7F113233;
 Mon,  1 Jun 2026 11:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780314442; x=1811850442;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=bUeqTPIREGEni8wExMPIsMzZoUitCCzJIWa+P+gHNtY=;
 b=TI1arWOgUhQ2zT0FAhHnes+R7MRo7LJekyDJ1SnA9C9U4XS4GZSpNjUv
 Y81Bjj46WPO9xT5dE9m+aVjL2iPnbrFkjVqoHw3sch6X//tesjpA9hhrV
 PfxmheWO6V8w61tzjIcEZZaDa/08dIT1it55D3d2ydoDyoL/0ZmYyvHov
 tQMo9Y9SOUQp1p54H9LxxCLPBM2F2vkgScRjG3APSzl79duTw5azhrhyi
 iW19qfvDIcvDm3+m6lrneVbnLP4rLrmHdwIXwjN3klmikWJMeUDLWrYjm
 rWobi5bHYRptdV5RPv51dDDAfGxpk9e6XEc1awbNxND1iQqd/TPOSnbio A==;
X-CSE-ConnectionGUID: H6fnAtTpTzuF0xDxa+Zq3w==
X-CSE-MsgGUID: PSK/kxwNTLW/5KfkSvbUgA==
X-IronPort-AV: E=McAfee;i="6800,10657,11803"; a="81129647"
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="81129647"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 04:47:22 -0700
X-CSE-ConnectionGUID: YAcqJdAOSoOQVZYV28lB3w==
X-CSE-MsgGUID: ScIE4hOZR6StwVL651fyHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="267444521"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 04:47:21 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 04:47:20 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 1 Jun 2026 04:47:20 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.4) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 04:47:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gwA6dCc8gyL7YDRusuXv/FuAPSbBJJgRZZf2HreCpJo5BoVd61OEsRjceVTuEXah+dWVQOns8chgubM0RDLQKCWjg/2gdLfMczonKIlcH8ELnLAi6Ltmh0W5T0Xx1rS1ThWMdvfhX6DmrQt7OlOMT3PKw/05IDdtLABIVLbL1cSabD2oo2MyFzPEpCvwQh/PVn2wF9fNQO036MWn9gtnxIp1g15/GjA4QZFquRchnW2yKVYpZ+rJ1TnBhi6b7Cn9lf/PP63QkIlL5Z9V/bDsdxmK4X6Y7n267unf7XrBaGZMizMhtXQLfDyfBci4Dr46biOaVRvNSNRRuIYT4Wa2OQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sxbU3qKiTBZWKDgqCABl7h9mgEbwgjx4upHHWQ+ywL4=;
 b=CByaCByDPlG2y43cvSUM/KIAKRq1zROmwzekrJ5q+iiqTguf+Pe0/NoBNtr4trr1ITTyFG3LulvEF6a+Nf80u+IyhYvOi3VcxTFCyhGlgRa+C9VmOZTXxQUy4mDMrOpj+DhKLbUZXMzCtf+PPhnE6U7pmqURzGqISQzRLgd/Mn5wioru9bDzVpJpIV2Wd6QULPvMrCWwNFrzdLnJpX+ZuKJgMXru38WbaClQDov+6xWdWnNEtZIpEeP8t19DRMSLKx3jiO/zxvM6Qik96GieDWpDdtXhZkdN6zJzqAFmoGSm+xw09Mtu9ErH12Fsd557043LZP3VwWAz/81GfKCRvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by SA1PR11MB8542.namprd11.prod.outlook.com (2603:10b6:806:3a7::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.16; Mon, 1 Jun 2026
 11:47:17 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0071.011; Mon, 1 Jun 2026
 11:47:17 +0000
Date: Mon, 1 Jun 2026 14:47:05 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
CC: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <uma.shankar@intel.com>
Subject: Re: [PATCH v2] drm/i915/display: Mask RO bits in gen9_write_dc_state()
Message-ID: <ah1xA8My6FnwZm5R@ideak-desk.lan>
References: <20260506130321.487414-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260601090131.1840805-1-dibin.moolakadan.subrahmanian@intel.com>
 <4e28616f97067f232226a0fab8c2039cb124b2b8@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <4e28616f97067f232226a0fab8c2039cb124b2b8@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVZP280CA0005.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:273::6) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|SA1PR11MB8542:EE_
X-MS-Office365-Filtering-Correlation-Id: ebe6b979-0f83-4839-c6af-08debfd3880e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|22082099003|18002099003|56012099006|4143699003|11063799006;
X-Microsoft-Antispam-Message-Info: rEVUxA8pCRbNUKYOQznFFIxKz7NJ59UaCY9tCWvLiWjQBVUne+wrbJI3lnHEDAMMdp82md8D9tZhMKxm+JquWc+ANXZjqc4fb/WJKYI8zTuk5iwkOt9/xMZ4GZFOlqEiXJxazpp6yfzdMlAaezet2XWLedZXDJvny/UkftnXZQAPjjyJ+H4NT/Nkb4dG4i7qHdX0r5GvlG+TAX/SdX9vP6wVNy1nSNTKPTJpRyqKbVYb+mAk8xoh2Lc4Phifr0xZ1Ap4nvF+fDgEEzh8TGhFWdOZIKyvXqeDFZbSknbGDRY5Nl4vbx1poDI73yBppENncKfkHTPRg8NcDSQ0EqiAcJhdhJPeFOthKK8gkWtv4iqDGLDJ6DWDh+VGCcgEeYp3RadjGbi432OJz5NqU67ovB5vHbwhzRR0NXKGJfFTieBn/BsR5I7UStrZmjQakMAwMNxtPXVWp2uJ5oNv5txCoVAlyia57j57heCdNxY1KpuG15OMkEOLDjco2k/cuq4UlJMI+MkXb/VKfwfjKH7CGdOFsEOFFYyrrOF2ctutulmbaCfM1eRkdT6zPUR5iLM8bniEjohz1+l815UKgC4cRFt/uYo/ehPhHavptt8SFOplWw1vMAtGm8vLXj8QTjhtABmlNFvB0rEyl5HkaMawUhZqwFlojbgTXKISXYlJLXhSkBGODOC2Enmf1FfC538e4GzmwxnCjoyLi1n+PvjKVQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(22082099003)(18002099003)(56012099006)(4143699003)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?WC+EAI/0AMVC8iqmGKCthlJORxNwJ32UgC3I1rqwP55ID598mNGfvyn/BkR+?=
 =?us-ascii?Q?pDT6rjVqBV+P/2jAH8A8Nz6zWuj0O0E1sb3D0jbxGgGz+dKYMQfGEe4JG2NG?=
 =?us-ascii?Q?UKbRbdZtuh5fZ3Xq8A1+AmxymbZP7sv+U5RdiCbZP4Tv1oQ3bby+8fEkqBt8?=
 =?us-ascii?Q?vgdrTfbrRdclsBdGLERt3W9uLSH6CJj+yAa/cbbyhTQoG0PCP26in/wf37NN?=
 =?us-ascii?Q?szRZcbBvI7tHbl9evqWn7vxVg6R1Qd7LDnwICs2U/0p2Xz/owB+mT2ipo2Ko?=
 =?us-ascii?Q?eEtUbk5JG3vIVcNVrzdT4wsl4572UgjzJBMwrPc3IxwnKvrjfQZw32PyimGd?=
 =?us-ascii?Q?mwQa2dizEq3BXHnWDbXIUGJaA0c47WtaVu0vaZd3j67JHxFiHWsY/Hh7paYi?=
 =?us-ascii?Q?tG8WzSvgzbgwt4DvUvdhzorF/YnegWGxel94qEXIIWDqKoc8jpM6iEFNL9TB?=
 =?us-ascii?Q?WyNl1J3GWtFRFdujDdvwfC+UNUajzzraM+1OPWlGL3SQpwAIMJute7yHFD39?=
 =?us-ascii?Q?Hfm1uS9P1MSxyEDxD+tCAt5tXqQsuH/J/ipX4P8fcXXMwg5+et1ClGkSwGmD?=
 =?us-ascii?Q?cz+m671+W9imLsI2keOKQY+z0xyhLzX5PySjDNOHX09TYVCVcyqluOLmcTKh?=
 =?us-ascii?Q?vchjd/TwbWWjBODUKoi5wIHGmuQ5FzIGz6id5U70Noi/lDRZKUmn64AMb+c6?=
 =?us-ascii?Q?HfkzbDYN7SA3rxP/fyYPz7aHccEkmzuPLi1wEEIJWzVjxskRk+z4nKajdSD3?=
 =?us-ascii?Q?xoZzaCGOVuGMRuyfLhaUo+r6A0cPxtyAjXsuJdO4qWW50WFy2JWXwSEMSO8u?=
 =?us-ascii?Q?U9HoedxXqVTlKJyIuY6AtS8WOc+4kLFD9uKySmivxLQ7Td3NTOyXPmzo7pJi?=
 =?us-ascii?Q?hsfQMqB8A8vOq+YR55gNqOWM1kKDEtTGSKiLDIUf2wxFQT2xy+ZMYzV4adti?=
 =?us-ascii?Q?2GSV9X5f3HEgfNrPFGmAhmpokt3dfgyy+uq4Hynw7Ck2niUJrjMKLtiXWV6Q?=
 =?us-ascii?Q?ZJVN5eP+QNKk1gPJBCGw47EhCeWo2vpwV68nhYT3+G90z5H/f3z6/+rtp011?=
 =?us-ascii?Q?F00IrmAOXjgSS7wWJvDsVLwCi6Ca7tk9a1+7CVaZC0oLy6q4OZFOY9ZXTtQL?=
 =?us-ascii?Q?zf1lybsU82oJ67OW04zqeHbvAd9DmGtAoPodWujkdLAluw5KuAYsVNcZIque?=
 =?us-ascii?Q?9Wq1DvhyMdohOJlXo5LE05kRthXk0geUxL6bm6U74TzCLe56i5EGWpmetd0R?=
 =?us-ascii?Q?2VrwC3Mx5i1ixgRHgNHlzO1Gh7c/kzcLeEgX4aOFVjvi8CEHAdK2Q/k59lw7?=
 =?us-ascii?Q?m5DA80gsfdxhDyqxO53+M+eK3QtLc4hjBMriIYJe23GPMLLTZ0LOCOI2Z8q+?=
 =?us-ascii?Q?AIwRmUa4RjFvKkxuyo+vo3RZWhgtqoU0reMwkEDK8BPo1Ymg5oGguNQw2AqC?=
 =?us-ascii?Q?UJ+GxJ8CQh/aynCB+lWd0gM3Qj80KFBWZRIr7/1LEp3ZRPS8rcU+ze+b+sMW?=
 =?us-ascii?Q?EQkI93JQBSwg9ralpnNMkUWyySNA8b6/3ms8RdMUiM4wRLc7JKPJD0FEvcOW?=
 =?us-ascii?Q?97YqK+xAPdcPou0jvcIxO/e3Sjr2utCQ7bbOVT4nR72aDJ3cwxDiScCWw7rP?=
 =?us-ascii?Q?wnxEcyfalLQCtE9kqRerGrnxCGD2CAWpuBF+rs6cz0qzYb06MB4MEPnLva8E?=
 =?us-ascii?Q?/sa2dExd9hpro4yUQ7KdMkaOxWeBsn8gttt6jd8CQsLpxCD2ChP3QiHwAky1?=
 =?us-ascii?Q?rUKJgI1xXQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: KUJR0CNMsKbnyJ/QXneOG1KJYtnUTSFPzg88cuWYDNQUr7qGkXWct6OBS75oXyXxRMfiOrla8EuT/9c1jNduPfykRIJ0eu3VHa4GVqRvmwUrLr2mX2KUA3xhVOXyiKns1afHmkT9tswd7COmeiXWD21u58gatbrUzAJexiod7qOmXtZBlm/rKB5ao8kPW742JGvAzqnTK8d2dBlBoHqsz+bo5/qWXW9igw/uUMZYX1KiMP1dWr6kPKpSOlaUqmUkSqRpR4wjmXCQM39SC3uuyURQh2VjnHVg+ij2oOm7yBCTwenZ7NFD9Ul7HjGU/ct048WuMEzAnOLexks8lh3tRQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: ebe6b979-0f83-4839-c6af-08debfd3880e
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2026 11:47:17.6450 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jKk1dtaV2SekerMwY3pDCOA9FNPbHCEy9c5zOx4YPxZXPQ16h/pIvImHzH+n8OABfERNpxfTwnzA8adXz34byg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8542
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:replyto,intel.com:email];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.773];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: EB2CC61E8AC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Jun 01, 2026 at 12:38:31PM +0300, Jani Nikula wrote:
> On Mon, 01 Jun 2026, Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com> wrote:
> > The DC_STATE_EN register has read-only status bits that are set by
> > hardware on some platforms. These bits may cause the read-back
> > verification loop in gen9_write_dc_state() to spuriously retry.
> >
> > Mask the RO bits from both the write value and the read-back comparison
> > to prevent unnecessary retries.
> >
> > Changes in v2:
> > - Rename patch from
> >   "drm/i915/display: Use rmw in gen9_write_dc_state() to preserve non-DC
> > bits"
> >   to
> >   "drm/i915/display: Mask RO bits in gen9_write_dc_state()"
> > - Mask only RO bits rather than masking all non DC state bits
> >   in DC_STATE_EN.  As the register has also some clear-on-write flags,
> >   like 'Display DC*CO State Status DSI'(Imre Deak)
> >
> > BSpec: 49437,69115
> > Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
> > ---
> >  .../i915/display/intel_display_power_well.c   | 29 +++++++++++++++----
> >  1 file changed, 24 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > index 04bd0dde5bed..4bc9e3ef738e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > @@ -726,14 +726,33 @@ static void assert_can_disable_dc9(struct intel_display *display)
> >  	  */
> >  }
> >  
> > +static u32 dc_state_ro_mask(struct intel_display *display)
> > +{
> > +	if (DISPLAY_VER(display) >= 20)
> > +		return BIT(10) | BIT(11);
> > +	else if (DISPLAY_VER(display) >= 13 && !display->platform.dg2)
> > +		return BIT(10);
> > +
> > +	return 0;
> > +}
> > +
> >  static void gen9_write_dc_state(struct intel_display *display,
> >  				u32 state)
> 
> The caller already has the platform specific mask, please just pass that
> in and use it.

Imo it's better to read-back verify all the bits written to the
DC_STATE_EN register, not only those that the caller changed. The only
exception should be the bits that are expected to be changed by the
firmware randomly (the read-only bits).

> BR,
> Jani.
> 
> >  {
> >  	int rewrites = 0;
> >  	int rereads = 0;
> >  	u32 v;
> > +	u32 ro_mask = dc_state_ro_mask(display);
> > +	u32 val = state;
> > +
> > +	/*
> > +	 * Mask out RO status bits from both the write value and the read-back
> > +	 * comparison. HW may set these bits independently, so exclude them
> > +	 * to prevent the verify loop from retrying due to RO bits mismatch.
> > +	 */
> > +	val &= ~ro_mask;
> >  
> > -	intel_de_write(display, DC_STATE_EN, state);
> > +	intel_de_write(display, DC_STATE_EN, val);

I would not change what is written to the register, rather use the mask
only for comparison.

> >  
> >  	/* It has been observed that disabling the dc6 state sometimes
> >  	 * doesn't stick and dmc keeps returning old value. Make sure
> > @@ -741,10 +760,10 @@ static void gen9_write_dc_state(struct intel_display *display,
> >  	 * we are confident that state is exactly what we want.
> >  	 */
> >  	do  {
> > -		v = intel_de_read(display, DC_STATE_EN);
> > +		v = intel_de_read(display, DC_STATE_EN) & ~ro_mask;
> >  
> > -		if (v != state) {

I.e. here instead of the above masking:

  if (v & ~ro_mask != state & ~ro_mask)

> > -			intel_de_write(display, DC_STATE_EN, state);
> > +		if (v != val) {
> > +			intel_de_write(display, DC_STATE_EN, val);
> >  			rewrites++;
> >  			rereads = 0;
> >  		} else if (rereads++ > 5) {
> > @@ -753,7 +772,7 @@ static void gen9_write_dc_state(struct intel_display *display,
> >  
> >  	} while (rewrites < 100);
> >  
> > -	if (v != state)
> > +	if (v != val)
> >  		drm_err(display->drm,
> >  			"Writing dc state to 0x%x failed, now 0x%x\n",

This could also print the ro_mask.

> >  			state, v);
> 
> -- 
> Jani Nikula, Intel
