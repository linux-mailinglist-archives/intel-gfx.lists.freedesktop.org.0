Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 503405A0103
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 20:03:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7ED8514A19B;
	Wed, 24 Aug 2022 18:02:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F225610E19D
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Aug 2022 04:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660709673; x=1692245673;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=3teWpHz+A62ozXUpYUlss3b7joGqKds+MjSy0DDOrxU=;
 b=HabOBJ22k+6KBHKZ6KOsVdbeqIYj4TudcB0XDyu37n5m94wnX+vnvYU9
 2kUAgH+XkW38kE8Lom3Jd9aCOkQxl9WBCvl4ittVeDQhwRKwI7wX+pHQC
 6O5jKv//cqL9fEVt2F6TwIhJ+H/lRAalsBPqseKva549uAPXUZy8wuAAs
 gurptnT3vQQEHi9ULzqcY5iVp/OTVQSBTjzcEwi0sldZSrAFFwwfAweQb
 Drd5+sSiGT3KaU8zWufYHdgPxYwfjnUU2dzBHqZH3SDogDV/kG64WcyVF
 M0FpC8cENlcFCJxLSnk1jMdzXk0B7wzjp6AG4yuSW14IBEEOUfUsPgPt1 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10441"; a="318399209"
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="318399209"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2022 21:14:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="696624704"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Aug 2022 21:14:33 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 16 Aug 2022 21:14:33 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 16 Aug 2022 21:14:33 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.104)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 16 Aug 2022 21:14:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HXEYqnW6X4iXHZcvjgpoavlI113hwrtaGfQBLdUAJTfpOmRNAlo4l5XwdnbItiLC8IJqnQwd+p0oAXzXiMwtSaiDrQwEj1+akc0aKsnSLIASLlKCgDw428JkgQtv7Lom+krkVBxklH7sxl37nDuPEWdlGjoiH4DHrIDvP2EFLMrSIr1HCeQ0VPCSMyxFqhubnRUlDQpk+OrHaRSJWHxEJtaBpABvIIcMECXUsRWDP3d5uv0fxzyEDXQ8ea+A/JybjEMDnkE3H74mEnU9QQe0BWCDCaP8UT69FOUHU0Z7sIuSjjWwZQvepWpH1uklsPeu8JyvbKoZ3v3iWBkW1uwrPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3teWpHz+A62ozXUpYUlss3b7joGqKds+MjSy0DDOrxU=;
 b=VJgCQPpQlp9dPeHwlMfodQVyN65sZ+oHruQg/cEYGadeUdgGOuJeVgfkhES4YGf2pT2HBTmZPZEgA4KLmSFZXTWT2HDo9aI967ptbd7v2o87AJprKRNoN7zqcESWxtQXSe5+HF4gIsxdUNPsazdkrJDe5YG0punS2mavUUFf+o+pmoZEjX/gOCGI0qlPbYxcTqkV3cVZwUI1njdsYSGei7g/BPWsH6Q9sfS6xM1+4eJTM4kIl/aDmZrOnEjHGSvK3pZIKkYdzg+MiySamJ3fO7vSyo9cngkVJrCctiyRHbDnuSbJUKMvb4+lR2gPtLTG1gZobR2KEXXIpYmShPvdpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by BYAPR11MB3623.namprd11.prod.outlook.com (2603:10b6:a03:b5::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.16; Wed, 17 Aug
 2022 04:14:30 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::a012:82da:5edb:513]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::a012:82da:5edb:513%7]) with mapi id 15.20.5525.011; Wed, 17 Aug 2022
 04:14:30 +0000
Date: Tue, 16 Aug 2022 21:14:28 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20220817041428.rpgd3enmx6ga4kw6@ldmartin-desk2.lan>
X-Patchwork-Hint: comment
References: <cover.1660230121.git.jani.nikula@intel.com>
 <d7de23e80cb3a3fb488b76a092ad5f6d94d97416.1660230121.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <d7de23e80cb3a3fb488b76a092ad5f6d94d97416.1660230121.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR03CA0150.namprd03.prod.outlook.com
 (2603:10b6:a03:33c::35) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3bb3dd25-4094-4f2f-8532-08da8006fb3c
X-MS-TrafficTypeDiagnostic: BYAPR11MB3623:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jE4rSS6/hManj7b6xy1fbUE53nlvhZRzQPcqj1Ey7q9uXDMH8SOQx4yjZHSl0DBdxzPmVgMS4MiSjwBNiXpg8WfdlTdWcSvTyuumr3ylcEXxDs2hQHYJr2a/2e0vq4HBtpnehvNb6ZDFPKmPljronXfugNytrbYzsaIuH/ugumc6X+Lnofk1nP/Jq0rUv3EE8kYhWSXc0S4KQ+9qkPqpmOSRRB7fxuMapoNL/wvDQwU688MQ+5XFlyfjazSy58TaKZhEA5M1uI95lMVmZR5JuT6gaQP01PagYhMhq7eF6LJDXpweHGQQo+SwyNZyhhzZeyW92PyFRRRfdM0MiYVobtHp5LwpClOlwJ5JuAZgneVY/yo/bM4k2VQhUy22fpyxLkBMDHAy4/jJTRbzrP949/aYrSfbT1Gi7TNgircQGzxFehjzlRLjLd9oOxkw56P5DsudFZLeibYQFCnW7T066rlalkwG/MoXV+U+QcjPYKaiFpnrE2gNFWVz5Xih1dMT5MwpMS+DW06DEMkkxmoZnf8eL6CXy736VtqG+clbjc//pQettHTlWuS9gsPaL9SrZtP5SAQ88SzeNnS+QrciHOqbOYSnvf0A0Cmxm5i09YnhvOhVLv/7KZAqKyCTnwN0Sr6diz4r8eeBGPG0mTT4Y9qZrU8FB9llIMAGFOb4Ejz55Ocl8H7NjWOZoCvHkvu5KWfFMCqcYPHSnxPkF8G/iMiKuxIKhtmgPdttHhq1s8lD7h9uD/d/+c7/X3Ip+L9Y
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(376002)(346002)(136003)(396003)(39860400002)(6512007)(6636002)(9686003)(82960400001)(2906002)(26005)(41300700001)(4744005)(6506007)(6486002)(478600001)(6862004)(5660300002)(8936002)(186003)(86362001)(8676002)(4326008)(38100700002)(1076003)(66476007)(36756003)(66556008)(316002)(66946007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?DMP8jPRroSGltE9Pv1jAULkCRRV7WwNu8BayP5JKChtnI/6vMQjIUlji0eyn?=
 =?us-ascii?Q?sHGAxBrJEchT6NQgUJzKrVX/RYq35M1/h/FfcxO//Dg4gTQYxw/cfbGy+ORk?=
 =?us-ascii?Q?bN9cP6ZiB3djTYwZJTK2gM4XL2TZvSt0K5gpK7Rzmw5OeHLiHX7DJLzWfwnE?=
 =?us-ascii?Q?15pleii9gC6zAar4eOZqhtEP82JWP8FKRf0faBopnw5AI6by3MjgCom29Qhd?=
 =?us-ascii?Q?gL/sFhBc21yzs9ZAnvLaK1vV059BGL/XURPUzGGvkBQ1cLP5frAJwENj1Omx?=
 =?us-ascii?Q?XlZf/VHgqto3gzCVPIiDwzRIoUaPGY6Iw7umlg2+CP63VqjLO3NEJsK+dUic?=
 =?us-ascii?Q?F3Hz38eHsqgwg4nUzcjVIeMK7VZ9Dvc22swlHktJ2n2tganwdwBfYtEwZOyT?=
 =?us-ascii?Q?2b/AJhM+sQvU5r4q4Y9tTgQlsTUgPASJtjqHuJsYR8Mhi3isyPE4LaRrVoLy?=
 =?us-ascii?Q?/BVjM6pLUJypN7ZE+h1r+eFiG9XkWDoCgwjizwZDmEmHCSyVSnf7JLrEVduQ?=
 =?us-ascii?Q?c5APQKlIHbSOdcu9L5y2NSWxVxtEhr0mvzdGtIXNrxIUa1q0ikYgpaiJHbbB?=
 =?us-ascii?Q?6ivy1YdYPwMphs3bBEisZcuwSenFi3AuCoNyxgGFGgbBma8Api6RiIs8mKhz?=
 =?us-ascii?Q?yn9v+kZMdFR8AP5FE7rvhKvyVq7BIKb+Gz8OvBLzOjylp4LoUSO2aDbkOifN?=
 =?us-ascii?Q?Zk6JBlSTpvDM4tUXRedrqhMZIWSWtRzYbVQKUmREfyiOgoJWa05VaY5hR2++?=
 =?us-ascii?Q?eJJ8QSKUBrFf7Tm5xfjBgLQUh89I04hjEZrQ2NPLMMWxUYWBH5vQvJcFvHmu?=
 =?us-ascii?Q?DKg4/wqqPhqrXZpBWxM1U7KHynCIy4y9L4rzyw/nbUZOyJbbXZdHQ932xQKD?=
 =?us-ascii?Q?DB2ohyFFxwudUDeeoaEN+nVmZXLfBOJyHez4MRGNmUYPOFH8nljmF+MlLO5Z?=
 =?us-ascii?Q?mWnirLwv8awBjEYPx/Cv98tp5PkN45KKJG56Xh9giAXJzfR+vYkK4bjKkfqu?=
 =?us-ascii?Q?BTijF7mFX2Q+ZIx7iR9ka62J1/JUMuokVYWLQAr6E0X4F+/osqq2sG/TKElZ?=
 =?us-ascii?Q?k0PIzV2Or2Ha/hdeMaDokIAKjZUtEsgzF1ioHeTGmn03Nq6C89ujA64fCAAc?=
 =?us-ascii?Q?hWzqj182UGfBX09GkLm9Bd/xcdrdwyqgwTv+OJi7ZMLpZ+W3Y+g9TMC4FBc+?=
 =?us-ascii?Q?BP3WvEgvfZW5VXJhHKMfuFPHYFpEF7e9Rn4LPml8H/nVuI0KC+ty6e9qEKDd?=
 =?us-ascii?Q?CtC5+WDJhu9pFoh9lQXP+loDE5m2UxGL8Rdzht1Hc3Sc9cGUDDeoLPSpVZ12?=
 =?us-ascii?Q?385iPJ/Kku3Kti2NDr3PozfsttgiB28E490vbMa5E8QkzAw464LmEist+Y4m?=
 =?us-ascii?Q?juVwyR/OsjsMTls8SQG//scLzZ/YCv9/Ahqh+OlGvAT4H2vXI2ZLnzcf/WXL?=
 =?us-ascii?Q?qUFQ/lqp+nhEtQMBOl6Wt07QcCmV1lIBo4S5eY1U/WBcqAFCl+269qhlgVI+?=
 =?us-ascii?Q?X22QQH4CMvy9PrbUP3uhSViY5XgLNB+Y1oXUf1mCVJG41mirvjZU0bg4ehD6?=
 =?us-ascii?Q?oaYG7KXgP2/87T6E6bHIgi5SwVk273ujU02Q7NoT2g+Bzl0LavMROM3BBbmg?=
 =?us-ascii?Q?Xg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3bb3dd25-4094-4f2f-8532-08da8006fb3c
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Aug 2022 04:14:30.2496 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JjVBevNisxim7k5qVFaJBozXa1XohEog3FHZiTfpGEPjIwOdq9zdZI1hB+GeszvzKTB2vcBclcPfjHHHNbJuYiHC4h5OXaObO4nCUto/erw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3623
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 12/39] drm/i915: move and split audio under
 display.audio and display.funcs
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Aug 11, 2022 at 06:07:23PM +0300, Jani Nikula wrote:
>Move display related members under drm_i915_private display sub-struct.
>
>Split audio funcs to display.funcs to follow the same pattern as all the
>other display functions.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi
