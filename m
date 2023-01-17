Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABE7F66E336
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Jan 2023 17:14:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0134910E194;
	Tue, 17 Jan 2023 16:14:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81D8310E194
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Jan 2023 16:14:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673972054; x=1705508054;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=gIcREShoz8XYYbmE2wYPNfJbtpJQuPfVxi0qUwA0iJ4=;
 b=AfMzNLVgdSoj5PANblZDzD6rg+ARWIKIVeqg5aQn0hpbukWRG3RHtsJL
 bI87i8hQB1yaDkCV8SVmnAEB8PATQbwcuW6cxRChYqteFtO89WK8L8dK4
 YjXHORqJ9XUAhWWj8fJszPN3koTE3nzXsmuoknbgu016Fb8zHeD/PIW6w
 H1x/rJXikWnSNPZfzThSD0Uy/qMjrFz6nkhA7jUurI35bipGuanCSVSqk
 HlCu/97F/EHrAhzfJJ3lONUvlyHoy15KjdUUEKG/uBqk9DAldPzly2EeU
 8SJ/+HxOXqha5j0yQheiOdcgIYtprAmw+HDIfMNTeKnq7RGavIeeDGiwK w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10592"; a="326809097"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="326809097"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2023 08:14:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10592"; a="801785797"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="801785797"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 17 Jan 2023 08:14:13 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 17 Jan 2023 08:14:13 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 17 Jan 2023 08:14:13 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.172)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 17 Jan 2023 08:14:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fKOHQXSyLJ2G9NIPnV/e0x9qqJcx41AlUleAXHXAtX41aNihHXeacVYQZV9zt0Itw/cBSlbxDxIBs8JBqScbgPHB7Dnjj4I/S2NyAMfiyz7Fi4zQZJ3siU4O76NIuHCTe9OtzXIBxyURZyFagyjzMJAKRgeu0B85ooziHvOdmw+RjDt9mwjPtRH9EfsAWUwbYO3wF8rRxWvrSGI6+aCa//01K4OKIXBVJPPSaW07mwCtGEIFICg7WHZ5RPL0PJKgvZWbHAuVqKld9PWnHYOrQ48HjJk8gCRcfL/PBeQUNoRudfRKrQRWZdrGgDWFxCBq/zpnhycLx0UKSCwJCLlFig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NJp8g7IxvQhkWYVkeBFSjcpVX9q0ttVpF+XfbZE3Ik4=;
 b=THwu5UqO/oc6CWLDbK71VN0C9+QEuYgUCP4VGJGbmIqhxuJKW8IlpCav8+JGNtf2uyWvxxxHXA6sRXDaE9apUFQJ/iWWj2e3KKmKX8W/fqPxQ/EYWqO6XuS5sm9HSSLuij5PAB1Y7s41cNN2P2lqOLynBdoUWqH1zdTV4ntI3UXhnymC+QlhiyTymkC6cIdET9Qq+sLHF9t5hLzgr5he6H5+B5tz488tJ1FnqCIs8iAIRPGZBjkM63nIJhsxat00BFxii2gG2/IPfWuI93ldpBP+rdsdPq3BCiivUP3olDPZ3SUukFn7HYArtbFBukQaq9TgNNImSqX02GTTkHJl6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by IA1PR11MB6394.namprd11.prod.outlook.com (2603:10b6:208:3ad::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.23; Tue, 17 Jan
 2023 16:14:09 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930%4]) with mapi id 15.20.5986.018; Tue, 17 Jan 2023
 16:14:09 +0000
Date: Tue, 17 Jan 2023 11:14:05 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Y8bJTQ4mVUGSvct3@intel.com>
References: <cover.1673958757.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <cover.1673958757.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR13CA0214.namprd13.prod.outlook.com
 (2603:10b6:a03:2c1::9) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|IA1PR11MB6394:EE_
X-MS-Office365-Filtering-Correlation-Id: f6a1e2dc-0488-41f9-5267-08daf8a5dd18
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: CVeIuz+9RWb8AX/pjjV9P4A9D7B65VDYhZRExQL2uEo5Sqv8epiYUp9TUt8WNzI5dCQsOI9w5BOW2DlGVzcC6kzQGujlSk6x4Wwr9Ta/2lR5cI1tq3/60mSOil+273Cop2YsrrjBalzSTyWvwH/jRojE0XGj8rCmzYLQgEWoxZH2eIO04QPGX/eR7l8Eqz3e/09QSlbKng/FesZ8VCHsFcOpJjBwsayXVCGKMs2eq5/STWrEY02y7oOKePVJOjVcHf43MLK2o4LaZVkObDlyhLEvDegjjkQNIYseZxky7TH7+QfHPJWIBFcp5c3KrJcCcROUKCDrq4STiPfZsy9aFj0dlQ/B+AJzybBSMkfVGsmqmB7jyM+WPefxYWjwQx1YiweROR3lugeikUDEsaqpbUJrq6pl6wkLVnqEMUfsw+bk8hRr2nrpYTT3nuTSj/DSqeUBmNt6dxYL5huVkuXmsHxsQM2ZzPwvKNeSObFt+eps5PmagHb5Rz7ClMprbJlQUP4fzsjWM+gzqxJjHqvV0pUsoBovkgmvjv4TAOPjL3XnqNCsDsk4vHOIVho4Ch5ntYDNCUcfdv307oabxapCdkDEF1nBYRVbv95f5sUQQ7aVRjM0ZZlJkxsrUOtZSVlyeIFQi2DW+q8rrFaQ4geLjg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(136003)(396003)(366004)(376002)(39860400002)(451199015)(86362001)(2906002)(36756003)(6506007)(6666004)(478600001)(2616005)(6486002)(83380400001)(186003)(6512007)(26005)(41300700001)(8676002)(4326008)(66556008)(66946007)(5660300002)(66476007)(38100700002)(6862004)(37006003)(8936002)(44832011)(6636002)(316002)(82960400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?EcipcGctQ/zC4htcFZczJtBRSqtQHH32DZ69bKyJsWGalCyqnSq5WnW2swAG?=
 =?us-ascii?Q?IdpPgCfhQBi4/IyMwUV4CYZ50oY0uqFgLTpxGlQlpuhTzgQjFmfvDM8Dtdyr?=
 =?us-ascii?Q?R2KGa7EAeEVLQdT00KFv+ctRA8cZI32yxw3haYkmQYZcXuL8FR5zJgFAsMDw?=
 =?us-ascii?Q?CrfmyQukVK3wKQXX5kE6RjBnzvr+FQWb5MEreeOLvpIWJ43IbTUQE3Jdgqr7?=
 =?us-ascii?Q?dOwTGSYVAP8byYjh9nfnU2jMr7f0uIwUKK/oldwCRV2LnUVIPzP1XR2Tvl4z?=
 =?us-ascii?Q?qbHxEYblqbx1smyreSe4lvmo2Q4lUg5Sp67YjLZJ3mz1KgojmQhloJhwVp20?=
 =?us-ascii?Q?xcK+YjRG/UKKVZUmYUwPgr5mt8oa9cc98qEQPJdQZSATdMc4oC8ZuFmqb9CD?=
 =?us-ascii?Q?QLeF6opoy/rNWVcuNDG9Ufam7T93J7Zmk7R5sGWaZlZtcznXumIp+akGM7nj?=
 =?us-ascii?Q?wTALCDerqb4etIl6qQkYAtLS+ddXg2RubDorIIp4QX7ku+pPgBT4/AXkyHZX?=
 =?us-ascii?Q?f2KZAE9KFZn/Oo+xt6Fst7pT1HBTKLGl79R8uXUMz5R7/90qZFJitfaTjFJq?=
 =?us-ascii?Q?o1EPWNJasaSMj/qSgtwJi0R7JvmF7XOzqnIUIdrhuYvpHXpdtdgd4E5v87uy?=
 =?us-ascii?Q?GXsHscJVpgQodW4VHPFwmbyYl7QwfbjlUlAAeAmtqBN4BYxjA36k6cTSQdLo?=
 =?us-ascii?Q?Jhuo4yA6hVRK5fZJQkD7itxAtsNSop7U8fDpnG/EAH5clsfQfRm7jb+gN+3I?=
 =?us-ascii?Q?QA+WCWUzO52utefOQiRdtWQFT39d62vsM7d+GZutFIo1qQRgk8zxoPKe2vwA?=
 =?us-ascii?Q?BTMA6balCIl4l0FoUK4X5TZMLIPXZWRKDu6ojoxIZ6IOvxSNOlOCh8lcFKps?=
 =?us-ascii?Q?umWImW4wiJtljfE+9rvOPRr+grBXOzEuXDxrKZvUPRWRtMZ4mGzX/jzoX0f8?=
 =?us-ascii?Q?Ox0QqhfDQoQcBubDIRSVw4hi6KfZC2DC5YsrgqzGrRFblpn0nTQUMPBOiJx5?=
 =?us-ascii?Q?dIQvl10DjSjbzfjCwS66GGo5kzmtgVakDTkMkg6/gMlxbH91GSyvAULRHr/7?=
 =?us-ascii?Q?XEYSbHq1NVq1QkAbLM96hYCLo8pFElDdfyo0t83eJ0e6QZ8kNNgrmVZ7oBEM?=
 =?us-ascii?Q?ZUNY7Udz3BsgoFAHvB2/w3LCKlzaaGrEJCz8GxGAEE3+E9e97Qt0kmG3RN0K?=
 =?us-ascii?Q?ZZOvGCuO2ll8Q9qv+4ltsfVeNQtKavHh+C41YBrJEOFxdXQV0TqA0es4H2ZX?=
 =?us-ascii?Q?36goftrLIDzlp1EvWt7dIpQeamCFPclD/C0sVgBGaxHWI+5Css6rLk9tXk36?=
 =?us-ascii?Q?8KhUvs2+PAFFN9/xkM4NPmv2KfuwKW2j7lcFI/SRfE7JaGxi/qFJ9rmYCZl4?=
 =?us-ascii?Q?900425pJuzNIhMBkn8wEiPiFOji8u7QdbBfGaZYkv7MnvcnwvUiHnbJXHYRK?=
 =?us-ascii?Q?G4HcAvzVbGmCPVTvEPr6uEq2ZNIJzk4ALL2kGZGjVJpdiOTDMLrj5IPqyST7?=
 =?us-ascii?Q?c/iSc7aCKC+tC2+ZlHeOQ3Gdi+U6HZUMhfGRhYKZOAMLE300g22WRVIY7BDK?=
 =?us-ascii?Q?gIOv8GzFIC/Cm3dEqcb9ZTCrJ1vUBcJqBbY92bneI9FAz16ZAjD4+T6Q664C?=
 =?us-ascii?Q?rQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f6a1e2dc-0488-41f9-5267-08daf8a5dd18
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jan 2023 16:14:09.6496 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8EiUYj+2DxUW/z5iDtRW7zGJntT5x4no2tylqyfuwcXWcGq5sp0T//R6IIO3zTrqEQLoN1ig3wdyxmy8XGb+gA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6394
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 0/4] drm/i915: GMCH refactoring
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

On Tue, Jan 17, 2023 at 02:33:05PM +0200, Jani Nikula wrote:
> Let's see if this sticks.

Suddenly all of these 'bridge_dev' makes some sense to me.

I believe we could enjoy the refactor here and add some documentation
about this... at least the name Graphics Memory Controller Hub name...

I also wonder if we should make this a child device now that it is
really organized...

But anyway, everything can be a follow up, the current refactor
is already a very good clean up step, so for the series:


Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>


> 
> Jani Nikula (4):
>   drm/i915: add gmch substruct to struct drm_i915_private
>   drm/i915/gmch: split out soc/intel_gmch
>   drm/i915/gmch: mass rename dev_priv to i915
>   drm/i915/gmch: move VGA set state to GMCH code
> 
>  drivers/gpu/drm/i915/Makefile             |   1 +
>  drivers/gpu/drm/i915/display/intel_vga.c  |  32 +---
>  drivers/gpu/drm/i915/gt/intel_ggtt_gmch.c |   2 +-
>  drivers/gpu/drm/i915/i915_driver.c        | 145 +-----------------
>  drivers/gpu/drm/i915/i915_drv.h           |  10 +-
>  drivers/gpu/drm/i915/soc/intel_gmch.c     | 171 ++++++++++++++++++++++
>  drivers/gpu/drm/i915/soc/intel_gmch.h     |  18 +++
>  7 files changed, 204 insertions(+), 175 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/soc/intel_gmch.c
>  create mode 100644 drivers/gpu/drm/i915/soc/intel_gmch.h
> 
> -- 
> 2.34.1
> 
