Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2986B6D68A3
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Apr 2023 18:22:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E0B210E6F4;
	Tue,  4 Apr 2023 16:21:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 672D010E6F4
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Apr 2023 16:21:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680625317; x=1712161317;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Et2luizMe3b3KXrVeq8zeGWdHyFolsOWWbdGD6K6/Sk=;
 b=SGuU/a7m/ncBP0vsV5UDVLOhFUmz87+GIFFY1Wkgj8myuYD96/ZyjSdz
 ZcEuebvVDUy3Jhacgija7kwoBc+LONRfrQMosLqN7FgJlXfqs+8m9LbgZ
 hglvhruNHXyCeNlMFvyC2t75A0WbEpJWaKxR/dZZp3FgL6KliYkKchCjO
 BCeVKnZXnyo0sc6rZtX3Cz/7/BULYmDFrYBMc0bmrIRrKosWgYGtEzPsZ
 x/gJ/zMnPUscKUWQgwtEnjxnixUezaWfYn9Yf1zA3RLB6aep8SonVQ6uv
 hlMlA4/tPhSzCmQrpRwdq/Gg+H3elhmpKXhXrr+TRsJlUZHJ1uT7jifPy Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="342255804"
X-IronPort-AV: E=Sophos;i="5.98,318,1673942400"; d="scan'208";a="342255804"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 09:21:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="1016166720"
X-IronPort-AV: E=Sophos;i="5.98,318,1673942400"; d="scan'208";a="1016166720"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP; 04 Apr 2023 09:21:56 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 4 Apr 2023 09:21:56 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 4 Apr 2023 09:21:55 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Tue, 4 Apr 2023 09:21:55 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Tue, 4 Apr 2023 09:21:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Vh3B9Sr4SQQ1LcXy4o/1o4+ORJ8mnlaHhqkriULBFb9zbVfOMUpD+VhnEKF1t2jFJBrVVpJdG5OA1BIN4Szys9zEEWbNF8+SMKW1LZg70wjBwxD1swMh796xeB4pRr+xq8ML80xdt4j7XX6wBxsSn6nl/ZSQ8A78yyJCnG5ZrrZ4vBSRiR2EsHQuyucrGE0j0u26fnr7xd52jx+7e8WomlSVbHN7+LVe2Req4SeqdEsrIJT7v+O8bXhq+b/sti8/3VbYRB3xy+x/r3VRA17Dcw2hHs1RFhQLPzmhDqq7RAYUOESAxrtC6zUxaC1yKSN8H1SLyGeamtHLTkpGQk0OGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NZxOhv+e2c2iAj5HGTdYx29tS28XwQrIb6trg6VSMnc=;
 b=ZUl4mZzI+zMJY6f1OB+GW4JKxvUf34SmtObDkrvluNpuZwxQeL/DZdgkoU2g5O70RweC0qAvYCBAG9VbhK8J6iARzkbRY/8Rng4hN3stj9DAncGiwlTfq/CS4AJrRFqekp89KZvxPzLTNa3xIPRq2h3TCI5bVRj8fpJ85RbMAl5qIQxX6ikanqmCxptgEGaqQa7DpoDBmHd7folHFyJ8tSK7bU4PQ8CycBjqBe7HjRXle8tm9kZlsWU9q9Vn3NjZW/EM8idSgYv08DxukxHRm4uVw2KrzluaZSpnbfgKwd9fgQTeAtZ9OEvoZF09vs8jftT8yg20uk8uzTNvA8DXrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CY5PR11MB6259.namprd11.prod.outlook.com (2603:10b6:930:24::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.35; Tue, 4 Apr
 2023 16:21:53 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::2b57:646c:1b01:cd18]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::2b57:646c:1b01:cd18%9]) with mapi id 15.20.6254.033; Tue, 4 Apr 2023
 16:21:53 +0000
Date: Tue, 4 Apr 2023 12:21:48 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZCxOnM2KoSipBKSq@intel.com>
References: <20230404090528.173075-1-jani.nikula@intel.com>
 <202304042026.uZBs3cC2-lkp@intel.com> <875yab25qn.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <875yab25qn.fsf@intel.com>
X-ClientProxiedBy: SJ0PR13CA0126.namprd13.prod.outlook.com
 (2603:10b6:a03:2c6::11) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|CY5PR11MB6259:EE_
X-MS-Office365-Filtering-Correlation-Id: ea987f5d-031e-4746-d811-08db3528b3a1
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: TDWjtGA9y5HUab2WXhlRS2tiR2ZVoppXCnhzn8zpiOvsuNnAtUZvgAJZLddDXUaznnrEv339usGBjNbr5iV5JTYHuNkDACl5yBBNLDpnJPUnXwEm6Mt1nn5QlDloFzLO6p/HSeIAuve7TAd5Qx0laFAX9kuPZSqWFpfoMfSUekxoudMVO8bhi/aILWlo1UoR58CEN+pY02rVDB0AwSCQmyxJI/5GWl17RNEPHaJ527Yq2Sz8NThIGGAH1WPy/7b0E/vklbuAZTXIKpBYuP3kwRWtqGwY6dIXsgRIGptIjzPVj7+WusIkbkyvHUfchYOpdAxHWguNKtDRbtOlmiA8oSk9E8RthuWdLYY1EmtFq8le0ltfX+LTFAaS8H+GEz8AR/qua2m1AxZqHL7zQDbVoS4tm+Sn0HCBhZ/yJpmzk2aF6oFJgwc+ZC3JyeMmoZdZpobHD1rYzuz/FDPyXEnbINlo3E95KIjq7DBm8x/t6YH8pRjORpuoiCeHpKe/tosP6YNZNFXw32dFaKUavZGCp0L2iBZUD/e2T0Wf6vzlWf4FdeI/YllXqQS0GkrwpdSgRB6wm14deOFPmBzRbTckzg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(136003)(346002)(376002)(366004)(396003)(451199021)(37006003)(316002)(6636002)(478600001)(5660300002)(8936002)(6862004)(36756003)(86362001)(2906002)(30864003)(44832011)(4326008)(82960400001)(8676002)(66946007)(66476007)(66556008)(38100700002)(41300700001)(2616005)(966005)(6486002)(6506007)(6512007)(26005)(6666004)(186003)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ExifhH91XAPjKvTXSHVNHWFEuavWtBeKAoOVEB45dr4v3/zxBUgDq6CH2+gW?=
 =?us-ascii?Q?DBDIieQRQShP5Y9sA+CZyJaYMVnUrmK1nEb1Gfq0bBJrAb+7l0fiJ5gSmEXS?=
 =?us-ascii?Q?K1RD/+Lbztt9MMY6D/lkOjbqdFvWg7hw5BxpqH8gNyJ5CuNdmMhl5PvtlZiA?=
 =?us-ascii?Q?DNjPB1wC4HGQb+0Z8bOpit1NV8tkJtcyQNuZ4vnBMDyIfh9HXDnZOZFYiQ1E?=
 =?us-ascii?Q?5B+aMMcZzPrez4qAdrnFvRuYOIMtznGLDbxcnWwNiJfO1gaKEtpU9eFYSTZ/?=
 =?us-ascii?Q?rYY4Sexz66rpMGfZOZ1gJAmLvQnIdtttmLQHnc7JUPHCfRdoiE2T6a8iY0hH?=
 =?us-ascii?Q?vvmrvEklC//KtmyjM+AxWtZw2Nmt6ROm5HAdi/9jAWPuGl87tXG/0rcx8FSs?=
 =?us-ascii?Q?0bveRFwvxIjOk0xFGzphHHgHNhPKYQvTjDBc81kzzNB7+f4xg2N6oV/4BV+2?=
 =?us-ascii?Q?e2dUWES7fj7pV+5DeSLq7kHl572sdVsPupiWMHk92gqucJSfuh2iA5G3Ep2A?=
 =?us-ascii?Q?0lD44pyJaMjhgLwybymG3JoOD1pFZRGFjtPq7xsvHjFaAddIgFAkw/o8NTzV?=
 =?us-ascii?Q?Zw/hL8zL02faEc1+ICiKd+IErfcWi/73xHDaVr+ejiSaCQK7MNDrlVapDVOG?=
 =?us-ascii?Q?UhayGJsiQSa0O1wz6w+Ru4t4jeO9bh9gXIrDKfW9ca9oKODhcs9KUM0v0lGm?=
 =?us-ascii?Q?9/t7ufxkEvcgX8O/bJFRSyZsD+iItGVehh7jr0bGsTuIRu49NseORLh/p5BF?=
 =?us-ascii?Q?PGPAezVYb1uZDNT431vp7sZzLx6zKlzPWuHI3g4Ds6lMcbFCvT5mIWn4GmDB?=
 =?us-ascii?Q?7C1eUtrZjeWB//BckR//CG35bCTXl4qdjHFHevbqpL04oT27uz7o7BH/5D1l?=
 =?us-ascii?Q?3LkEx7xn779cIaHqQ7ApZtc6z+xENa4jmfKuh/wQXYj/nDZ2CNS0q19d4NY8?=
 =?us-ascii?Q?jytUEK5hkNQ4tbkm84soiblQaE6IMvOLep3ixCFowgHbfiL0KdLW96nei1j6?=
 =?us-ascii?Q?jhUmaRdTWu6Adx5WowJvarB0dYedb2Sp+hS2U81pdjI9ebbUgILXyuwC9iEp?=
 =?us-ascii?Q?Mj37TxWuFxNqYm0LiQjeATPEws68tIRkf3GwJkpvl+PWLCJKjygM8/wBU2B0?=
 =?us-ascii?Q?Omzq8OdKbFi5m2hZbbcC//IPTiPyPoeYKJaUkqyGb5U94QL5wph8k0DC2kMq?=
 =?us-ascii?Q?GasgMl5W04i0u97aG8SEOXJlK/kxdfK76vyHdksHEwZ0axMy98BOWJahAtnh?=
 =?us-ascii?Q?4zd8MLOwWCm9bBwb1kTrgLHs6hbqM4hEla1f0ThMjUHvGUSLciDQ18FiJ1d1?=
 =?us-ascii?Q?SdROSpMXyd9lmxWpN96lB/dGWJaBkH1a/rLoA/tAGww2me/ImXfTn5V82i47?=
 =?us-ascii?Q?3cQ9wN95pEysGOKHnKPxF6Ilzi82snLQKnRy+OkfE4eUZtymE2vfw6vt+y+z?=
 =?us-ascii?Q?dTua3RtalhxQFJjAm8Q9ZvQpUg9/NQtzSfHZfNFzjB+NeoF7OEFDUl2FPit1?=
 =?us-ascii?Q?D9YY9xTmX/MfbHwrpfN3+b+/tlxhGTDSUHuxVd7CfuZpR2mtocRm9qQY7sOl?=
 =?us-ascii?Q?YvYLg9GrIL4v+SVrdvrTnTQ0brEX3+0o6voF/wbI?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ea987f5d-031e-4746-d811-08db3528b3a1
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Apr 2023 16:21:53.5006 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YCMVFgX3XeeIYI+bnqU58TuNIp8RIM6OXjd8+DQXahUSpytCgwOOiEglqSwY/BsaImCnR+4N7+5zSu/pTYUhEg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6259
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: run kernel-doc on headers as part
 of HDRTEST
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
Cc: intel-gfx@lists.freedesktop.org, oe-kbuild-all@lists.linux.dev
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 04, 2023 at 03:26:24PM +0300, Jani Nikula wrote:
> On Tue, 04 Apr 2023, kernel test robot <lkp@intel.com> wrote:
> > Hi Jani,
> >
> > kernel test robot noticed the following build warnings:
> 
> Yeah, that's kind of the point of adding more checks. ;)

Indeed. I was in doubt if the include of the full dir was the right
way, but this reply shows it works as expected :)

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> BR,
> Jani.
> 
> 
> >
> > [auto build test WARNING on drm-tip/drm-tip]
> >
> > url:    https://github.com/intel-lab-lkp/linux/commits/Jani-Nikula/drm-i915-run-kernel-doc-on-headers-as-part-of-HDRTEST/20230404-170637
> > base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
> > patch link:    https://lore.kernel.org/r/20230404090528.173075-1-jani.nikula%40intel.com
> > patch subject: [Intel-gfx] [PATCH] drm/i915: run kernel-doc on headers as part of HDRTEST
> > config: i386-defconfig (https://download.01.org/0day-ci/archive/20230404/202304042026.uZBs3cC2-lkp@intel.com/config)
> > compiler: gcc-11 (Debian 11.3.0-8) 11.3.0
> > reproduce (this is a W=1 build):
> >         # https://github.com/intel-lab-lkp/linux/commit/336391cc647b2fbdf0ebd2eda8a10fb4509918b7
> >         git remote add linux-review https://github.com/intel-lab-lkp/linux
> >         git fetch --no-tags linux-review Jani-Nikula/drm-i915-run-kernel-doc-on-headers-as-part-of-HDRTEST/20230404-170637
> >         git checkout 336391cc647b2fbdf0ebd2eda8a10fb4509918b7
> >         # save the config file
> >         mkdir build_dir && cp config build_dir/.config
> >         make W=1 O=build_dir ARCH=i386 olddefconfig
> >         make W=1 O=build_dir ARCH=i386 SHELL=/bin/bash drivers/gpu/
> >
> > If you fix the issue, kindly add following tag where applicable
> > | Reported-by: kernel test robot <lkp@intel.com>
> > | Link: https://lore.kernel.org/oe-kbuild-all/202304042026.uZBs3cC2-lkp@intel.com/
> >
> > All warnings (new ones prefixed by >>):
> >
> >    drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:27: warning: Function parameter or member 'size' not described in '__guc_capture_bufstate'
> >    drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:27: warning: Function parameter or member 'data' not described in '__guc_capture_bufstate'
> >    drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:27: warning: Function parameter or member 'rd' not described in '__guc_capture_bufstate'
> >    drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:27: warning: Function parameter or member 'wr' not described in '__guc_capture_bufstate'
> >    drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:59: warning: Function parameter or member 'link' not described in '__guc_capture_parsed_output'
> >    drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:59: warning: Function parameter or member 'is_partial' not described in '__guc_capture_parsed_output'
> >    drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:59: warning: Function parameter or member 'eng_class' not described in '__guc_capture_parsed_output'
> >    drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:59: warning: Function parameter or member 'eng_inst' not described in '__guc_capture_parsed_output'
> >    drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:59: warning: Function parameter or member 'guc_id' not described in '__guc_capture_parsed_output'
> >    drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:59: warning: Function parameter or member 'lrca' not described in '__guc_capture_parsed_output'
> >    drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:59: warning: Function parameter or member 'reginfo' not described in '__guc_capture_parsed_output'
> >>> drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:62: warning: wrong kernel-doc identifier on line:
> >     * struct guc_debug_capture_list_header / struct guc_debug_capture_list
> >    drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:80: warning: wrong kernel-doc identifier on line:
> >     * struct __guc_mmio_reg_descr / struct __guc_mmio_reg_descr_group
> >    drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:105: warning: wrong kernel-doc identifier on line:
> >     * struct guc_state_capture_header_t / struct guc_state_capture_t /
> >    drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:163: warning: Function parameter or member 'is_valid' not described in '__guc_capture_ads_cache'
> >    drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:163: warning: Function parameter or member 'ptr' not described in '__guc_capture_ads_cache'
> >    drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:163: warning: Function parameter or member 'size' not described in '__guc_capture_ads_cache'
> >    drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:163: warning: Function parameter or member 'status' not described in '__guc_capture_ads_cache'
> >    drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:216: warning: Function parameter or member 'ads_null_cache' not described in 'intel_guc_state_capture'
> >    drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:216: warning: Function parameter or member 'max_mmio_per_node' not described in 'intel_guc_state_capture'
> > --
> >    drivers/gpu/drm/i915/i915_pmu.h:21: warning: cannot understand function prototype: 'enum i915_pmu_tracked_events '
> >    drivers/gpu/drm/i915/i915_pmu.h:32: warning: cannot understand function prototype: 'enum '
> >>> drivers/gpu/drm/i915/i915_pmu.h:41: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
> >     * How many different events we track in the global PMU mask.
> > --
> >>> drivers/gpu/drm/i915/i915_request.h:176: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
> >     * Request queue structure.
> >    drivers/gpu/drm/i915/i915_request.h:477: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
> >     * Returns true if seq1 is later than seq2.
> > --
> >>> drivers/gpu/drm/i915/i915_vma.h:145: warning: expecting prototype for i915_vma_offset(). Prototype was for i915_vma_size() instead
> > --
> >>> drivers/gpu/drm/i915/intel_wakeref.h:118: warning: expecting prototype for intel_wakeref_get_if_in_use(). Prototype was for intel_wakeref_get_if_active() instead
> >
> >
> > vim +62 drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h
> >
> > 24492514ccbd57 Alan Previn 2022-03-21  14  
> > f5718a7265a6f5 Alan Previn 2022-03-21  15  /**
> > f5718a7265a6f5 Alan Previn 2022-03-21  16   * struct __guc_capture_bufstate
> > f5718a7265a6f5 Alan Previn 2022-03-21  17   *
> > f5718a7265a6f5 Alan Previn 2022-03-21  18   * Book-keeping structure used to track read and write pointers
> > f5718a7265a6f5 Alan Previn 2022-03-21  19   * as we extract error capture data from the GuC-log-buffer's
> > f5718a7265a6f5 Alan Previn 2022-03-21  20   * error-capture region as a stream of dwords.
> > f5718a7265a6f5 Alan Previn 2022-03-21  21   */
> > f5718a7265a6f5 Alan Previn 2022-03-21  22  struct __guc_capture_bufstate {
> > f5718a7265a6f5 Alan Previn 2022-03-21  23  	u32 size;
> > f5718a7265a6f5 Alan Previn 2022-03-21  24  	void *data;
> > f5718a7265a6f5 Alan Previn 2022-03-21  25  	u32 rd;
> > f5718a7265a6f5 Alan Previn 2022-03-21  26  	u32 wr;
> > f5718a7265a6f5 Alan Previn 2022-03-21 @27  };
> > f5718a7265a6f5 Alan Previn 2022-03-21  28  
> > f5718a7265a6f5 Alan Previn 2022-03-21  29  /**
> > f5718a7265a6f5 Alan Previn 2022-03-21  30   * struct __guc_capture_parsed_output - extracted error capture node
> > f5718a7265a6f5 Alan Previn 2022-03-21  31   *
> > f5718a7265a6f5 Alan Previn 2022-03-21  32   * A single unit of extracted error-capture output data grouped together
> > f5718a7265a6f5 Alan Previn 2022-03-21  33   * at an engine-instance level. We keep these nodes in a linked list.
> > 247f8071d58933 Alan Previn 2022-03-21  34   * See cachelist and outlist below.
> > f5718a7265a6f5 Alan Previn 2022-03-21  35   */
> > f5718a7265a6f5 Alan Previn 2022-03-21  36  struct __guc_capture_parsed_output {
> > f5718a7265a6f5 Alan Previn 2022-03-21  37  	/*
> > f5718a7265a6f5 Alan Previn 2022-03-21  38  	 * A single set of 3 capture lists: a global-list
> > f5718a7265a6f5 Alan Previn 2022-03-21  39  	 * an engine-class-list and an engine-instance list.
> > f5718a7265a6f5 Alan Previn 2022-03-21  40  	 * outlist in __guc_capture_parsed_output will keep
> > f5718a7265a6f5 Alan Previn 2022-03-21  41  	 * a linked list of these nodes that will eventually
> > f5718a7265a6f5 Alan Previn 2022-03-21  42  	 * be detached from outlist and attached into to
> > f5718a7265a6f5 Alan Previn 2022-03-21  43  	 * i915_gpu_codedump in response to a context reset
> > f5718a7265a6f5 Alan Previn 2022-03-21  44  	 */
> > f5718a7265a6f5 Alan Previn 2022-03-21  45  	struct list_head link;
> > f5718a7265a6f5 Alan Previn 2022-03-21  46  	bool is_partial;
> > f5718a7265a6f5 Alan Previn 2022-03-21  47  	u32 eng_class;
> > f5718a7265a6f5 Alan Previn 2022-03-21  48  	u32 eng_inst;
> > f5718a7265a6f5 Alan Previn 2022-03-21  49  	u32 guc_id;
> > f5718a7265a6f5 Alan Previn 2022-03-21  50  	u32 lrca;
> > f5718a7265a6f5 Alan Previn 2022-03-21  51  	struct gcap_reg_list_info {
> > f5718a7265a6f5 Alan Previn 2022-03-21  52  		u32 vfid;
> > f5718a7265a6f5 Alan Previn 2022-03-21  53  		u32 num_regs;
> > f5718a7265a6f5 Alan Previn 2022-03-21  54  		struct guc_mmio_reg *regs;
> > f5718a7265a6f5 Alan Previn 2022-03-21  55  	} reginfo[GUC_CAPTURE_LIST_TYPE_MAX];
> > f5718a7265a6f5 Alan Previn 2022-03-21  56  #define GCAP_PARSED_REGLIST_INDEX_GLOBAL   BIT(GUC_CAPTURE_LIST_TYPE_GLOBAL)
> > f5718a7265a6f5 Alan Previn 2022-03-21  57  #define GCAP_PARSED_REGLIST_INDEX_ENGCLASS BIT(GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS)
> > f5718a7265a6f5 Alan Previn 2022-03-21  58  #define GCAP_PARSED_REGLIST_INDEX_ENGINST  BIT(GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE)
> > f5718a7265a6f5 Alan Previn 2022-03-21  59  };
> > f5718a7265a6f5 Alan Previn 2022-03-21  60  
> > 24492514ccbd57 Alan Previn 2022-03-21  61  /**
> > 24492514ccbd57 Alan Previn 2022-03-21 @62   * struct guc_debug_capture_list_header / struct guc_debug_capture_list
> > 24492514ccbd57 Alan Previn 2022-03-21  63   *
> > 24492514ccbd57 Alan Previn 2022-03-21  64   * As part of ADS registration, these header structures (followed by
> > 24492514ccbd57 Alan Previn 2022-03-21  65   * an array of 'struct guc_mmio_reg' entries) are used to register with
> > 24492514ccbd57 Alan Previn 2022-03-21  66   * GuC microkernel the list of registers we want it to dump out prior
> > 24492514ccbd57 Alan Previn 2022-03-21  67   * to a engine reset.
> > 24492514ccbd57 Alan Previn 2022-03-21  68   */
> > 24492514ccbd57 Alan Previn 2022-03-21  69  struct guc_debug_capture_list_header {
> > 24492514ccbd57 Alan Previn 2022-03-21  70  	u32 info;
> > 24492514ccbd57 Alan Previn 2022-03-21  71  #define GUC_CAPTURELISTHDR_NUMDESCR GENMASK(15, 0)
> > 24492514ccbd57 Alan Previn 2022-03-21  72  } __packed;
> > 24492514ccbd57 Alan Previn 2022-03-21  73  
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
