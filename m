Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 592EBA3A1B5
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2025 16:52:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D412B10E055;
	Tue, 18 Feb 2025 15:52:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NphjHRZN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB32D10E028;
 Tue, 18 Feb 2025 15:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739893926; x=1771429926;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=DCkfEc4zBjYSCQiynXbG9kEeGf4aP23tNE75SahgZQM=;
 b=NphjHRZN2R3Np2BG2My6udnoxL8NXNUjtRu3uR+Za+KXWuCsBEI7W8u4
 gRr/aGVBZi+0StW9RJQ1AINJKHUlkGMrrcWr1VXZtylwgKeHk2jntmwRn
 6vxgXGmp4A8uHA+ubyQoV148ccbAGTUFqv19yNaHyn/FAF9pRiPdxci23
 JGFND3gIMLhoxq+H/xr9oyPsNjVBJwq/kNnx4mAS3EU1J9AqKe18ZvDck
 DRtBCoCeq6488XSE18PcVaDQV8nsQBxyCfCc1MeU0ZNoKGoMnoOOiaNDk
 OXKcoP/DKmoVEAKkhcSwAkKlFr0wsQ0PixAzLGA3EMOJw5i0MXOpc2Lm0 w==;
X-CSE-ConnectionGUID: SYF2aGN5R6mUxk7Vh05jgQ==
X-CSE-MsgGUID: Z15qksakTxCHfD3y8BUblQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="44356264"
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="44356264"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2025 07:52:06 -0800
X-CSE-ConnectionGUID: +t7+5MIaTlCBlO+Rtyr6Jw==
X-CSE-MsgGUID: Rr8Rhg8UTEyZG2bNUVbXnw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="119410325"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2025 07:52:05 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 18 Feb 2025 07:52:05 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 18 Feb 2025 07:52:05 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 18 Feb 2025 07:52:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ix7UcUXta5R1fTPX4VBQV0rsnMC7KjS2XaUe4IAlt6bZSQYo62/k/WvXIH104qGJe50nyAFroytUDgdEiAPP3551puPybE+Fcw6rO6r6UxLj0f4wPrBrL/XA7AK0le0mAWsVS6EB/P4F63MwfLRrs0tiTMNUpDt2vHzEEMJoHa5HKEhkFn8doARwoFVzYhDpn4e9yAvtvsdjB+R2qgI86cFcU6fXq+isLEqblAQDuJzGD+x3Iphzgu6mlNrZkMnHy3wzPymvzfGyA+f+R9y6aAuC87yXhWkeHGZ8wdbmCK4nJbwBA0A8Ar9Cnjz6sqb6c+nuhzs+S4Oe2Ffq7Boj5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T8F2p/hkkx3+KHfW7U52rhvcKJX9SSSiNpPX3MC/8B8=;
 b=wop13DVgjJ+pDJ7V7VPqbvkQ4YX4z85yrrpkXaJJkmfxpbP8/snIsuvYE1BRpc8YJIWcp5kA9/RAYuNYEwPpNL9lrv4GVPJCyDCwRMYGzKxAQ1JAhVeMFwoSOU3FNatPedFCsdmj8OZb+OLAsuAUpgJZbZn0mXrsE8/4Dl6NP35O6YhVgWZZgXZtuIA+MXv7/+4XUrtj69R/LNY/HhGw4M641pHIrRlcB57qte7eFUVTfYFSa5cAAwIkZizFTLGMyXnPkOYAXa3TL5OR98dPQVkBLit1wu6JXosU3XhQiyxDjSSPgQ5Sawo1NmATmYmCOHJnZG8x5DB8fsocpE87JQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by CY5PR11MB6461.namprd11.prod.outlook.com (2603:10b6:930:33::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.18; Tue, 18 Feb
 2025 15:51:47 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%3]) with mapi id 15.20.8445.017; Tue, 18 Feb 2025
 15:51:46 +0000
Date: Tue, 18 Feb 2025 09:51:43 -0600
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 1/2] drm/{i915,xe}: Move intel_pch under display
Message-ID: <epdolywt2ozgn4hohpiqtthyxsyzoqjti2yynf5xfphwlbgbch@icfttsdy3uwn>
References: <20250218010224.761209-1-rodrigo.vivi@intel.com>
 <878qq3o36t.fsf@intel.com> <Z7SdGtcVfduRSkNs@intel.com>
 <Z7Sm7Z1pfz0hYGD2@intel.com>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Z7Sm7Z1pfz0hYGD2@intel.com>
X-ClientProxiedBy: MW2PR2101CA0036.namprd21.prod.outlook.com
 (2603:10b6:302:1::49) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|CY5PR11MB6461:EE_
X-MS-Office365-Filtering-Correlation-Id: 8e7ffa04-dfc3-414f-ce0f-08dd503425f1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?B7IHU7bZQjijsFfEWYJldX2u4e6R+KTy9ZiBv7DpCmivo4Hb2uO/3X6PT0?=
 =?iso-8859-1?Q?QrQUAlGeJQvCO8tqku0HzR0BIJwzliO7VdByj06KrQ/9qkPQiyYVze//ao?=
 =?iso-8859-1?Q?CyDbL5Brm7ZJjBCcvUVXFk5YNWsYEXID03ICoD5AutLU/rZXlmRSd7zlgt?=
 =?iso-8859-1?Q?ZpJnBZHcO9xRcgJJNxBJGlRhY3fo0708NGMBN6xGyjdglm0yHdmk12iv2K?=
 =?iso-8859-1?Q?4yxe0OcpXsNwgaOlqIRnfSVxmNX1xr7xLZTfS4njJTHpiSXYGEa+Zd/bPh?=
 =?iso-8859-1?Q?tm51+sl6R5KLvxGVyVRuvhsArteOsfp4zCylHbI6nnwY0RC6gC9dZ+uJGw?=
 =?iso-8859-1?Q?tLt4MwHOlHGp2AjS3q8ILhzMW9o4E8L5EjoHifAH10sSfJuLNsfhGf80WZ?=
 =?iso-8859-1?Q?YlUhWk0/U0D/mpYOVozBpxEbFC0u4J6V7Z1t8mUti0h8q0uhg127EfHL03?=
 =?iso-8859-1?Q?oTbmmt9QpyXMARCckMZPnqgE+Z1RvUvpFnaXGkRiwdrUSgKyT55v7W3BYq?=
 =?iso-8859-1?Q?vZf3qMmdWoDKLKcKntjspV0NPyUfoXfcJRnDG2uK+7UxS1/pD1ka29cXDN?=
 =?iso-8859-1?Q?xdaOsFg/vQ0dwNjpk5WrvXG744Mrs295xShZ6kwHybYs7CgbAwuAp7VCIB?=
 =?iso-8859-1?Q?C0t7LgaPfo/6rL0JpThbua0g4owbZrqLHwqCyF1/PLLJSb9ZNPWy2+e4jS?=
 =?iso-8859-1?Q?0jHHOslThyYadGl+74nPay8MASbHln50Lgh/k9YRM/8/4fyfaZN890Mmv2?=
 =?iso-8859-1?Q?T4G/PnAwdy7iDTasd7mABCRKh9xoXhT0bS7G7ZltqKLcGSeDSGQTO1QP8v?=
 =?iso-8859-1?Q?DWFcJ6//Dz6AglqEi4yaymKtZiFvu9MTIkVJ4puEeVQDLwhaA6ECpsagwz?=
 =?iso-8859-1?Q?Y5iRqFQelnPphUWOJtEqjHlLOuLJBfvtOfUta480Ys6YNAkOC9dk4lD3cw?=
 =?iso-8859-1?Q?Sak4hg/yeATpz67hLQ38m4KmpWBNkCwg75D3oLIJV3uyvY+Ys9iD/EoRjY?=
 =?iso-8859-1?Q?620yNDtAF0j/jsRwKR/ILl/e7dJ5me72hGM6TzV7BN+7vuKECyDUwsT7aJ?=
 =?iso-8859-1?Q?3WOYFWbw7ElzRVsOlvpWujtss3I30hl8+JhiuRL5Jr0uSz7MWrlrae4lbz?=
 =?iso-8859-1?Q?ER0QdHnh75jk/v3bDlr9YRasL2V2k4Auo6fJAWJDkim3k1sw9iMvyQFrlO?=
 =?iso-8859-1?Q?BdbBcUKxqj2EMvNY6rfI03Ov+Xl3SrtD36vVffIK2+2bV5SPND0vMX5c5K?=
 =?iso-8859-1?Q?CDRBd3J4kKCFlQ4BOivd5EMp9oa4tQklJnTUWez+FJ15vk5nFkkL4cEgqW?=
 =?iso-8859-1?Q?/yOEiy4YR4UnhofSil8UblGlprMmY9GlAz0X0bFgOxC9hHtV/eezKU0H8k?=
 =?iso-8859-1?Q?J4o7bVUXkmjOJ23qvpp6PY3Wlgdu4DbO47T9jycDlwMS1PSOa8EihA383+?=
 =?iso-8859-1?Q?ujhzOyMLkAK9ElJx?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?IcKZ2C9zQZJJca7eod+r2V/w9qK5yQGJ539apJiq7I4jV7kcrbvmFF9BDA?=
 =?iso-8859-1?Q?M3ppfdSFNLv7BLzArWOKukj1ZxkEz8ONa4IRoEfnhiguiqHYxqcvGsvCUn?=
 =?iso-8859-1?Q?xAfr2E65TmwStrFXZ4ii9VGi6zCnYcb8BPyaP1HvvNkdzftufDhGxsnwo7?=
 =?iso-8859-1?Q?xN8KugvtZURqI6w0alcCr/dKzNhNMmmoI7p20WeXiGWESfVGmJ/OLbeJvJ?=
 =?iso-8859-1?Q?DxWbdTQcT0Ac2ruoUz+2fHIIkUkXBRIIEComtWWv+8oi7D1lPobyZkh0Kq?=
 =?iso-8859-1?Q?dCLQxnDNwoBDrgBq93oycNp/W18539jMV2nIDA45akSxuY7/I504LVer2b?=
 =?iso-8859-1?Q?TkynZhQVPjjginZDz1Lgdio9scIzCKRar4iQbI14J6zMQhntBaPAdKMuva?=
 =?iso-8859-1?Q?CWifUwdtfBTt5VcD9wjPKONrpIrSVgyuloZJFIHCFgaqKc7IMs6NDsd62T?=
 =?iso-8859-1?Q?leN75J51/AjapNn3+7fIKiI2/xn80LUsyIGFytkK/ujnUryzerienFXmKG?=
 =?iso-8859-1?Q?kQyv3zh1cv55w+d8o8deLnB99m3pITeBq1joNmVJ2ZK2lLTgnlj4Di3riI?=
 =?iso-8859-1?Q?U9wC0DufE2fmutUcJv2F6I9irj6kJKX9EaaXenhpBIqq0YoBnUyBqWCmMI?=
 =?iso-8859-1?Q?jR+r2QWYFZufPjG/CNKiWMBx4LDQiohyzCngEMBrnnudUhElpydHadzqbM?=
 =?iso-8859-1?Q?pRcvdnQkSx63+ioxZ0QIEWzRJzUXqgrIfeYrNIzt6JGHiZX0nrbl0Sf9z1?=
 =?iso-8859-1?Q?snb5PqYrCSvYGHImBIA23LDAcaeHIPiPwfTHAi+OfdU37M28FRmANLGuoe?=
 =?iso-8859-1?Q?tkhN6L5jVzQXVLF+7JOfF9SppnqzjI556pENy+k4+g9jtRjOfF8uTUdw7y?=
 =?iso-8859-1?Q?6VnMcZYehDrusuoqkrSNKKMzKY7IciuJCPD2/Na3IZPrxnq0PXCHY0g2HO?=
 =?iso-8859-1?Q?dwMtUAE4uOhg7+8aFupcB4XX7Pm7y9AZD4n9FmuqwMrFxiFxde4o46GNJW?=
 =?iso-8859-1?Q?XPCrFPHOeuj4jc1ulg1FaTFdvolTQSgePqO6h/dRDTpmDRYetinUPjR14R?=
 =?iso-8859-1?Q?j+XsOH7Hg2O9FPqu3Ux9rsjOc8aqNuKcNLk2rJtnXUdO5h4r/dRp4c0Pn8?=
 =?iso-8859-1?Q?XI3atD6T5XpEW/qCjW5i7ndyWTyMd0IWSJXSJmIUCEKC/MmIsQc16bXTH0?=
 =?iso-8859-1?Q?B2suJoDHAezW1ylpiALz1mW/ScTCJt+W0oBMxjAGXymvDkeQoyEHoWPplw?=
 =?iso-8859-1?Q?IQTYreDkyNK+NmhVEV3ZiJbYP1apRycYzy4LDYCZAj20aSYBXqOiasre90?=
 =?iso-8859-1?Q?dsOJ8qKc7WJjyQAGk95PB0uVApO6PG6/JWXFF1+Z0MtNklRKM5eM8fhUXv?=
 =?iso-8859-1?Q?UtgWESpEnTxQEbGs2fBpHLMU+yCvurhSVacdtyccuKVAD/jYl2jVAOeDc0?=
 =?iso-8859-1?Q?EKeLDX7XOL9jh8D1r+lwojt1W59Bk7gM02/5xmp+ZwyDZZ4BijspEWULef?=
 =?iso-8859-1?Q?hrUTNiU9GUNeFuCOBWYxu/lQIwkUpFonRNNn3l5EfZyBaq3pPMDCcOMSjc?=
 =?iso-8859-1?Q?RtIach2vxBz8YWVkL+SjsaxclXmo05eRM8EyE84i7HnHTVdfzsTGij9aK8?=
 =?iso-8859-1?Q?58ZjHBJqV8bi3vcDSTUQ1G55llZ+O4IpzJ3MbLuIjb+oDtXct7zry5lw?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e7ffa04-dfc3-414f-ce0f-08dd503425f1
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Feb 2025 15:51:46.3389 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: X40nZx1F4zjzglfBNvwSx5uH7/UjoZtbOlGiiveAMRW9Px97K/T4KZhwvbkAS/CVpEkJElV783CJFfIBOBEzglNrrhbUGkTDanx+dD4yWFA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6461
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

On Tue, Feb 18, 2025 at 05:27:41PM +0200, Ville Syrjälä wrote:
>On Tue, Feb 18, 2025 at 09:45:46AM -0500, Rodrigo Vivi wrote:
>> On Tue, Feb 18, 2025 at 02:19:38PM +0200, Jani Nikula wrote:
>> > On Mon, 17 Feb 2025, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
>> > > The only usage of the "PCH" infra is to detect which South Display
>> > > Engine we should be using. Move it under display so we can convert
>> > > all its callers towards intel_display struct later.
>> >
>> > Yeah, PCH is becoming a blocker to finishing the conversions of many
>> > files from drm_i915_private to intel_display. We'll need to do something
>> > like this.
>>
>> First of all, I'm sorry for not sending a cover letter explaining more about
>> my thoughts here and also for not tagging this as an RFC. And thank you very
>> much for jumping in the discussion.
>>
>> I started this, exactly because my consolidation of display pm now is
>> blocked in some HPD calls. Then I checked the IRQ code and I have some
>> ideas do organize that, but that got blocked on the PCH, then I moved
>> towards seeing what could and should be done to PCH and these 2 patches
>> is the initial of my conclusion.
>>
>> >
>> > I was eyeing the PCH checks outside of display, and frankly many of them
>> > are plain wrong (done to check stuff that's unrelated to PCH, but
>> > happens to match desired platforms), or should be in display
>> > (e.g. gt_record_display_regs()). But there are also legitimate checks, I
>> > think in clock gating.
>>
>> Yes, this one in GPU hang was one of the most strange ones, but then
>> I noticed it is inside this function that should be moved to the display
>> side anyway.
>>
>> Other cases are:
>> drivers/gpu/drm/i915/intel_clock_gating.c:
>>
>> This entire file should be in the display side.
>
>Mostly, but it still has bunch of gt workarounds in it.
>Those all should be moved into the gt w/a framework.
>
>> But I got super
>> scared now because it looks like it is not getting called from nowhere.
>> So we might be missing many display workarounds. I will investigate
>> this more later.
>
>It's hidden behind some confusing macro stuff.

yep. See CG_FUNCS in drivers/gpu/drm/i915/intel_clock_gating.c

The callers are the ones  calling intel_clock_gating_init(), which is
both on display and gem sides. On the GEM side there's already and
eternal TODO comment:

	* FIXME: break up the workarounds and apply them at the right time! 

Lucas De Marchi


>
>>
>> drivers/gpu/drm/i915/i915_irq.c:
>> This is exactly where I got blocked. All the PCH calls inside it
>> are display related that I need to move to the display side in
>> order to have a proper split and make the display to stop using
>> the irq spin locks directly.
>>
>> drivers/gpu/drm/i915/i915_gpu_error.c:
>> good idea on moving that entire function to display anyway.
>
>That seems like a random set of stuff no one actually cares about.
>Should just nuke the whole thing, apart from DERRMR because that
>one is actually relevant for GPU hangs. Though that one doesn't
>exist on VLV/CHV so currently some random garbage is being read
>into it on those platforms.
>
>-- 
>Ville Syrjälä
>Intel
