Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8792AB15E12
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Jul 2025 12:24:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2452B10E18B;
	Wed, 30 Jul 2025 10:24:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VZ0Jx4a6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D90F810E164;
 Wed, 30 Jul 2025 10:24:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753871092; x=1785407092;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=WoL6GxNg9/EdCVuZ3Ia1lSUvgPxWZMtQsDtSZSxiOeA=;
 b=VZ0Jx4a6R8mCWpvFmDP611Ib1ZZ+cvNu9DfTCHKNiQ9iZv8hugrIVchM
 Lg870l4NlEPGL84dYiVchQwtpTc9qQggAGslgEDSw1q+nywY27jrrXRSE
 YfG4mGtuqXmmKClcKvsA2msgg+a8rZP0SSGuGchtO45sO4S/4rojJw4q8
 Wib1WqN0q/YnY27Mmth2WwmnEqjKDiAm+cxS+uBPII9DZvYVH0mb/Ac8m
 gMVcvUGTq8vWDhgwXoi4SVq+xncZ2DnYPEChoORj0dxAw8HHNcYPOmz1c
 sdUtXbrWDHEVK12fAxKlPndcpOu8o87ErxnvfgMSqFqJZm9oAq8pMWr95 g==;
X-CSE-ConnectionGUID: j2Kbrb7TTrWJA03+xyA6/A==
X-CSE-MsgGUID: cZDf+hhVRK+UGd52419sUg==
X-IronPort-AV: E=McAfee;i="6800,10657,11506"; a="56132746"
X-IronPort-AV: E=Sophos;i="6.16,350,1744095600"; d="scan'208";a="56132746"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2025 03:24:52 -0700
X-CSE-ConnectionGUID: 28QBU45ZSG2wJ8pTvKwvoQ==
X-CSE-MsgGUID: df5RrRsBTd+uW1pfwdahFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,350,1744095600"; d="scan'208";a="168364529"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2025 03:24:48 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 30 Jul 2025 03:24:47 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Wed, 30 Jul 2025 03:24:47 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.67)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 30 Jul 2025 03:24:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SitZYDTEnqWSfiumGG9mxhICXwHzMzXVw9Ol0PgpQAyFw94sNJTUANKW7dgNAppnteP4CNdsDmBO7L9z0oT0zhz57YfTspz6yQAXlJW+Zd86rMs4aNv9POj830R1FI6Dj4wLtfNwi23VDdi0ps1fIoLjvE8mB4uY4OHfwTZXTM2Ax8Jih5N9CjlVBxj/a+MuIyBnYDVT0eedsdpLQZKAP9PFUJIyn+5/xr6WDT61QuRxDeJ3+uK1eozv7yde3oE+yb4pIn+nxrABZkod/R5TlLS9iZtz6n5Yf/JZ6gbfJBBr0o7n93giR1v2kC4pI8ABjtrf2iTj39w+L51DmrwdGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YpHKZ9N51bQ3tmgvZlaec/8rYYloTtwrokvDM5jqjCU=;
 b=G5miXB7IY9tiD8/9HyGLmokkgWtRhZjwe+yK0j0ZF8UGcV96Ed9+/OcMt3gAYytzix+rUZsfViAX7fjzJ6fJvLjRJQs4jXX5V86QIDUfX/MKRQIjL46VGkUgaoMjo0nizo6BwODj8bdjOV66AdxbBIHBvcur9cAo6DUi9CSjLLJXmPqi1hJBy5ng8GwgKA680EkHxWOuX5ZZuWMUQW9qeqgzR8+SN+DdTRxC4AcpwpH/SAoHK+kyDiIZnKrK8STwYVEUHNlfILIzsB8lc8Qre5uafj3btPtSmrjzUjrGmNpjIxoLm4qmX/V2Gj6VRrPFXsaxrBz9L2x0Dt206SBUxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by LV8PR11MB8677.namprd11.prod.outlook.com (2603:10b6:408:1fa::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.26; Wed, 30 Jul
 2025 10:24:44 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.8989.010; Wed, 30 Jul 2025
 10:24:43 +0000
Date: Wed, 30 Jul 2025 13:24:34 +0300
From: Imre Deak <imre.deak@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Jani Nikula
 <jani.nikula@intel.com>, Dibin Moolakadan Subrahmanian
 <dibin.moolakadan.subrahmanian@intel.com>, <intel-gfx@lists.freedesktop.org>, 
 <intel-xe@lists.freedesktop.org>, <ankit.k.nautiyal@intel.com>,
 <uma.shankar@intel.com>
Subject: Re: [PATCH v2] drm/xe/display: Block hpd during suspend
Message-ID: <aIny4l_ZoWc5hojn@ideak-desk>
References: <20250723092946.1975018-1-dibin.moolakadan.subrahmanian@intel.com>
 <aICtgAa54ESMZ2ii@ideak-desk> <aIDhTEcPoL5Y8Aoj@intel.com>
 <7b9d3439-ad9b-4ebf-86ee-0aa1c7b87b8c@linux.intel.com>
 <1c1510bdb0b9ade97da615f81d91e8f7cde20275@intel.com>
 <aIjcRFU90s6Ml9Vt@intel.com> <aIjizdet9ZUXB-yx@ideak-desk>
 <71eb937a-39ee-4dc7-8834-b035a4d150b2@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <71eb937a-39ee-4dc7-8834-b035a4d150b2@linux.intel.com>
X-ClientProxiedBy: DUZPR01CA0045.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:468::20) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|LV8PR11MB8677:EE_
X-MS-Office365-Filtering-Correlation-Id: 832aeac1-e589-41c3-af30-08ddcf534cfb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|10070799003|1800799024|7053199007; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Q2RZ59iEihdwEMFKaGji9wNu9+F0TZbiPXtZMh4BWVzG4CVpbFyWlnLQKoL+?=
 =?us-ascii?Q?IWJepn2eWEUeOlqqWtx7HStVb1hSSCItWKSSpY9RfpA+TqpxHwaZp4gBOAxD?=
 =?us-ascii?Q?dKXVwYIpd2dXIO6AAi6BIV2eZBPvbqg5J1Z4M264+3FZsixdi7esk3DHjzZe?=
 =?us-ascii?Q?pj1eM5SWBt58/R6TD6BZXzRdUudnlbTSvuD1Po8WydcHQvAi8UbfoyNIOI9c?=
 =?us-ascii?Q?vBC6djNwUOg81f71nBBMfdBaisu+NNhVhb1FjbqoGp8H9PkG0Vp8kfu8ToCn?=
 =?us-ascii?Q?R4gvosNaq7uVByPQHXsemvtFynamQd97UpMHtUkaIJHQyuF/bmyfVOYV/3a9?=
 =?us-ascii?Q?eIX5n+EDaaK2wxraIAjfrA9isF8TF+FKK0DTTf3dhGT2XheszCJnFEU3FM4E?=
 =?us-ascii?Q?klql19Lk44xudIOns/36OmTOu4578mQOp3ZlpRslrIO1crwgrPBa+o8vQP5C?=
 =?us-ascii?Q?xJphCNc5TgD84lItOxunuC1IP0b2NGBuUkFSG5Xz8+ANfYEF3ESWuZiS4Wp8?=
 =?us-ascii?Q?J0df6tNd+YDM54ckOvYack8ImDprlELeTdNlDRHBFaCBbDBrm0mNRpvxZTqH?=
 =?us-ascii?Q?h6iatuvmS0c20FRyS1jLu3M9aL/lGN9+ULtKETvAHyvdeobmKTc7/MrhBWLK?=
 =?us-ascii?Q?cy4B165GJhBPW1tNl6l4FQ6e8eXFsrAhdA221PNr9i1mZqniLUNdJ72x+nXG?=
 =?us-ascii?Q?bLd/4vx5qUqyov9mVX9py+Sceo3dEoYgIhKnywokWPo9y4Xlw8eIrqngCcAg?=
 =?us-ascii?Q?e6K1jO/lQhUd+b+2rbkJqBgLoDeY+p9fwfVSnZfG0wBpr1bQUtoCVtwMru4s?=
 =?us-ascii?Q?PPGZTCF6kUth+OeNFyYL7BIFaqUmmSp+/JwRRtjjK12hrp+DUB6LTe+nbp33?=
 =?us-ascii?Q?Yt5gw+ToWrY3LWXKeai0iEoz/jG6jSk9yw6l1NIrK+5BzLXtTxBbuHhMHq06?=
 =?us-ascii?Q?uNoWlZpJ+E+P6pyD+QwE5ZvIi1CZtx+ZNjIy5ikQ8aA4G+mjBOiPFv/fbPo5?=
 =?us-ascii?Q?/NoMOoNTOV/q4WGI7n0EK/870BslCpoTsTxZ006djLCfIAqnMPsbeoIfSzFw?=
 =?us-ascii?Q?EtJJroXzGdeyphyZRz0o/JFRr8cVHzGOknz30X0QOZWq1CIkm3eoV+Pw427c?=
 =?us-ascii?Q?B8/g/X02JEG1uVWZ84En3qCTpbGBDAKHQuzKlscVzr9tFWVxwPUXypVewDjO?=
 =?us-ascii?Q?75TlNdsHWElyjqAGSefbvosP+VBicxE3Y6f5lfJx05ZQr5+YrraS8tXU5Ols?=
 =?us-ascii?Q?DoRh5cyoE6SFBYoXSXrwOsA7Yo7gTyRZ9OWyCd79jguVNHefSG0RqalW/fkL?=
 =?us-ascii?Q?CYBURZJl9i44jy+ZzQbEX4J/xcP7pAk5ASwvBHJS+1jObGr1BvQU8QIU2PGo?=
 =?us-ascii?Q?PBEQa1Qstkw/PptShWniCnvj7w2Z?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(10070799003)(1800799024)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?DfGIXJ/hcczsTGAehaqb9EjTSJKklgq0Wko1YQEXvhwcyjMtk7mhyaplNqte?=
 =?us-ascii?Q?5EzvNjKsScCnwBGm41M4nB3gMub2ijgxHzEEnpMPi8Ziv9ZYAI+B8Em/Fyve?=
 =?us-ascii?Q?07AWXLjU2uYH9i9I53BDILinsmYTXPRGPz1mTEe090vNIQsb+iBF6Tndsn30?=
 =?us-ascii?Q?kxzyarOAfp4/FRHac2IlhPsr3ZJXTvkFkZGBqv/Xe+cXTd36KFaHY15Z6zA5?=
 =?us-ascii?Q?hWBm1bB2CbPmA7fS6PCxLqJT2hEg2x2ej2GmhAq7GbovKG666MHXHIVxTNQj?=
 =?us-ascii?Q?fzK4gnYmstdnmH4M0JBJkTswduqmBspaZlsLq3+UFyeiR2vS9qYCSCIWXA6u?=
 =?us-ascii?Q?HrBt+aG6fhq0kSMHcJJUBRuNsipWFUDaB89zR7FVUy+iBYtBze8R7fZUMdop?=
 =?us-ascii?Q?OceBhKRTYAPLDFRCKiAxp09kJd8IIVofEQPljaUcd5ziEiI5hchxASeGVj70?=
 =?us-ascii?Q?5ymAYQ2pbzFWD0Guyh1qyPO1IVkv/dva3eAioMGz71Y9wLjDkinm3zipjm8O?=
 =?us-ascii?Q?xxMxztMgEpjvoA5IVNsDbJKbLcq5r1diLIIwIA1/Pd+OSmFCU6Pk66GUOxpT?=
 =?us-ascii?Q?MUJt5A1OOu4obsiTJRrcJe/xL4dw1SYJphW1YmCwRcHw7jcbP6nrJBRW04ho?=
 =?us-ascii?Q?bkk0ejCPpVZYs4HdSXwGbKTvikRLIY7XOynerl+YtiyEpdnf1mBU6mi8vlTo?=
 =?us-ascii?Q?RxurZB0GHly4hFX/lcYep9/c5AkgSI01/lwwErPQ/GqX86NsN4y9nURDn34C?=
 =?us-ascii?Q?Zsdajdbs9XOUoNMvXJLT7tCTUsbNetyyuJT/aKuWUbgb2obK13wJY8GFsLd7?=
 =?us-ascii?Q?j4aM4JxZ+Fb4Dy3CJ8ISYGM4WbDL/s+oK88zOa2YC1XEkkLXgZNOZykkDDKn?=
 =?us-ascii?Q?9LK99/EW5LYG9XsUlwnQptDeBKTRV7RQwsxU8wt1W+gFTRjYZ4RZSNG7Pa6J?=
 =?us-ascii?Q?3Xb9KLsTttr/tVhZqjI+tVEZmT3veY/LQaE2b5CBVhhI7ajwe2CD70UDyT13?=
 =?us-ascii?Q?llw5xrorNgGbsfGiv1leQyvaSnTyxGjY0sJb6zxt/kocNfCyCnFX0iPREnig?=
 =?us-ascii?Q?u3/4i0hjVGN5DqdmAD0huVOI16sq5BOWiGZZSJaSsKJlDgB/JuXmIfqnEqR5?=
 =?us-ascii?Q?Xdqrh6w6CNKAyPj6/xcZJDa7NZO6x9q2M8y1VWMQkGm4AOfiZ7HeX3J2HXy9?=
 =?us-ascii?Q?3WIDU4h40cBl/chg/uXPTKoLJsMrNnkTlE/kKS7F+qw9yDV/m928uZxAWIi2?=
 =?us-ascii?Q?Chx89mfcMF2iH84yq+QXdSWJ2tLRLu+QQrWI62rUHMZMtI+m4odroyp1ElBT?=
 =?us-ascii?Q?Wi4xAL382wGD0TZ/eONlk0y7K5hlTLy+4rCMO0FIfvVpR9TVrGRh1ZvQkRBa?=
 =?us-ascii?Q?L/lCzNQ1noEHiQvuD83tbSRfcdieGStI+v6AzQY504jaDxLQ/Ml+HjzW9+jb?=
 =?us-ascii?Q?FCAc18iKe0vVZB+9hcKgJPia0cSNUr9e1+3JxJmroe5qY1mddWkyE3AS+SuT?=
 =?us-ascii?Q?9EeI4+IFOTDnB6CPLqnPEUVTdBiZ2xGmb+AEXZcGJyCn7SApxCzChDli41Fw?=
 =?us-ascii?Q?8QnJAayLcxvR2luuqsC1X0xBf2rC0HfZdHqYD8QbFc6mRZxfUujF1kjFRysn?=
 =?us-ascii?Q?QnZ/txBnvjyKI4JVWD0Tr7fqhfFtr9Nl0g4X+aq+Uh7L?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 832aeac1-e589-41c3-af30-08ddcf534cfb
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jul 2025 10:24:43.9321 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: a04+mlDsJr3P4FJbfIBVO5dsnSckLquLkH+XxnwO7zpAFApix0/gVqMvUs8sgV0A6BWnso4lFa9TOd6rZAr+ow==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8677
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

On Wed, Jul 30, 2025 at 09:21:08AM +0200, Maarten Lankhorst wrote:
> Hey,
> 
> Den 2025-07-29 kl. 17:03, skrev Imre Deak:
> > On Tue, Jul 29, 2025 at 10:35:48AM -0400, Rodrigo Vivi wrote:
> >> On Tue, Jul 29, 2025 at 12:44:47PM +0300, Jani Nikula wrote:
> >>> On Thu, 24 Jul 2025, Maarten Lankhorst <maarten.lankhorst@linux.intel.com> wrote:
> >>>> Hey,
> >>>> [...]
> >>>>>>> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> >>>>>>> index e2e0771cf274..9e984a045059 100644
> >>>>>>> --- a/drivers/gpu/drm/xe/display/xe_display.c
> >>>>>>> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> >>>>>>> @@ -96,6 +96,7 @@ static void xe_display_fini_early(void *arg)
> >>>>>>>  	if (!xe->info.probe_display)
> >>>>>>>  		return;
> >>>>>>>  
> >>>>>>> +	intel_hpd_cancel_work(display);
> >>>>>>>  	intel_display_driver_remove_nogem(display);
> >>>>>>>  	intel_display_driver_remove_noirq(display);
> >>>>>>>  	intel_opregion_cleanup(display);
> >>>>>>> @@ -340,6 +341,8 @@ void xe_display_pm_suspend(struct xe_device *xe)
> >>>>>>>  
> >>>>>>>  	xe_display_flush_cleanup_work(xe);
> >>>>>>>  
> >>>>>>> +	intel_encoder_block_all_hpds(display);
> >>>>>>> +
> >>>>>>>  	intel_hpd_cancel_work(display);
> >>>>>>>  
> >>>>>>>  	if (has_display(xe)) {
> >>>>>>> @@ -369,6 +372,7 @@ void xe_display_pm_shutdown(struct xe_device *xe)
> >>>>>>>  	}
> >>>>>>>  
> >>>>>>>  	xe_display_flush_cleanup_work(xe);
> >>>>>>> +	intel_encoder_block_all_hpds(display);
> >>>>>>
> >>>>>> MST still needs HPD IRQs for side-band messaging, so the HPD IRQs must
> >>>>>> be blocked only after intel_dp_mst_suspend().
> >>>>>>
> >>>>>> Otherwise the patch looks ok to me, so with the above fixed and provided
> >>>>>> that Maarten is ok to disable all display IRQs only later:
> >>>>>
> >>>>> Also probably good to identify the patch as both xe and i915 in the subject
> >>>>> drm/{i915,xe}/display:
> >>>>>
> >>>>> and Maarten or Imre, any preference on which branch to go? any chance of
> >>>>> conflicting with any of work you might be doing in any side?
> >>>>>
> >>>>> From my side I believe that any conflict might be easy to handle, so
> >>>>>
> >>>>> Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> >>>>>
> >>>>> from either side...
> >>>>>
> >>>>>>
> >>>>>> Reviewed-by: Imre Deak <imre.deak@intel.com>
> >>>> We had a discussion on this approach, and it seems that completely disabling interrupts here like in i915 would fail too.
> >>>>
> >>>> Reviewed-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> >>>>
> >>>> I don't mind either branch. As long as it applies. :-)
> >>>
> >>> Please do not merge through *any* tree.
> >>>
> >>> How come you all think it's okay to add this xe specific thing, and make
> >>> unification harder?
> >>
> >> I lost any moral or rights to complain here since I couldn't move with my
> >> tasks of unification of the pm flow :(
> >>
> >> double sorry!
> >>
> >>>
> >>> intel_encoder_block_all_hpds() is *way* too specific for a high level
> >>> function. Neither xe nor i915 should never call something like that
> >>> directly.
> >>
> >> that's a valid point indeed. But I cannot see another way to fix the
> >> current issue right now without trying to move with the full unification
> >> faster. Do you?
> > 
> > Imo, this should be fixed first in xe without affecting i915. Then a
> > related fix would be needed in i915, which disables all display IRQs too
> > early now, as in:
> > 
> > https://github.com/ideak/linux/commit/0fbe02b20e062
> > 
> > After that the xe and i915 system suspend/resume and shutdown sequences
> > could be unified mostly. Fwiw I put together that now on top of Dibin's
> > patch:
> > 
> > https://github.com/ideak/linux/commits/suspend-shutdown-refactor
> 
> Since you put the interrupt disabling before dmc suspend, perhaps you need
> a variation of
> 
> https://patchwork.freedesktop.org/series/151728/ too?

Yes, I think it is also need, before intel_opregion_suspend(), due to
asle_work scheduled by a display IRQ.

That step could be also shared later, after making i915
enabling/disabling the display IRQs separately as well (vs. its current
intel_irq_resume()/intel_irq_suspend() enabling/disabling all IRQs).
