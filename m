Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D9ED2B396B
	for <lists+intel-gfx@lfdr.de>; Sun, 15 Nov 2020 22:14:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7A766E9E2;
	Sun, 15 Nov 2020 21:14:53 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9D4189C63
 for <Intel-gfx@lists.freedesktop.org>; Sun, 15 Nov 2020 21:14:52 +0000 (UTC)
IronPort-SDR: vraRPgJ/qTlXjTfJdatWB5rz/LcM0LyIBf1bk8bNVqKgYs+QPgr08uu6e9MD6FvqWrZ+FoF8eE
 kS9FcXGiThKQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9806"; a="149947486"
X-IronPort-AV: E=Sophos;i="5.77,481,1596524400"; d="scan'208";a="149947486"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2020 13:14:52 -0800
IronPort-SDR: EA+TqEoGGm4xNUlhOWqmwnXWQn21bKjk6jyiuxvqWD/SKSL83apjN6vqU4IB9B5F4kFmWhtWax
 yR1MvrAxSe/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,481,1596524400"; d="scan'208";a="367305282"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by FMSMGA003.fm.intel.com with ESMTP; 15 Nov 2020 13:14:52 -0800
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sun, 15 Nov 2020 13:14:51 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Sun, 15 Nov 2020 13:14:51 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.106)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Sun, 15 Nov 2020 13:14:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AwK2tUxVMC1EEL9E0NRwoi+gwxBT0kOVIOLkR2xql6yVP+a1mnn/ymD2E97VEY8R3znNCEjsX/TvhaFDM7Qfn3AsDoJdyLHt3QNpM2lSu23/R72Gebc9Y9ax5j323Lu6mJ8lklhuKxu3fl+vu3nr6NagP+bFaH/CAWUv0LlxC9hpLhfWjM+NrE1ygpgXBszgwFMUZ9qoXC2VBlfAaq/BHSGo6Nd0ACiF71FtCxiGCu77e3sy/8vr6fYoHA3rniSIEY81oSOOX5VoMWluPZ1bEk0obknLwRzjp5JNmtIzKTEFvYNoLdyc6MW2Ulco+wjRuqyLpPbC79Va7g0IG+5VQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Rf2qS1FCHNQU2rCvRyK8w2CSOn5q8NB/jXKBuL3QM10=;
 b=cOAMeFfQFyQA0kuLTKb/cg8WxeceYuRvQKCQ0Ssl4g4dPVyhuhLijr34yMJfMu0Q4BATEmhAJGRMHTxBx1PBHzJg2u/S+J8RKIKrnTrNahYygcg/rO0fRYYnCRL6bCCLRmARrhuT+q2l/TdWjWIkrrPV8smt/aQfnPkf/ga6/7nyWFcA+icBiXOb1ZoRTPg1tUI8CZQx3a1KcsbFQ/ZdHSdty0palPzCAsxWQOST4j5+jHUrPx2dpTkZQ2cJ6cur88Ulx1xOGsO57cy36D7FgmLinGl8RDiB48Fw0UCG7j7eX5++UMSMiPV24k0nJcWsxCeL6X095XnPhwUY56ArOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Rf2qS1FCHNQU2rCvRyK8w2CSOn5q8NB/jXKBuL3QM10=;
 b=irgCKg3f2iS/vlMBbJ1FyIVZTCbF/G0H8yKEcdJW5bHSRUfiq6SkJR2dJ/wcvU9HNkChl3vORlIO5yhVfFjhkOWI2HRFhxzG8/u9asU0ZDVK6EM4CCerOyyKyN/tmozAXEse0lg+wv6SEmJbFArTNEomUlaO53McR6MFUF+6ass=
Received: from DM6PR11MB4531.namprd11.prod.outlook.com (2603:10b6:5:2a5::19)
 by DM5PR1101MB2249.namprd11.prod.outlook.com (2603:10b6:4:5a::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3564.25; Sun, 15 Nov
 2020 21:14:50 +0000
Received: from DM6PR11MB4531.namprd11.prod.outlook.com
 ([fe80::78db:6406:7820:1071]) by DM6PR11MB4531.namprd11.prod.outlook.com
 ([fe80::78db:6406:7820:1071%5]) with mapi id 15.20.3564.028; Sun, 15 Nov 2020
 21:14:50 +0000
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Julia Lawall <julia.lawall@inria.fr>
Thread-Topic: [Intel-gfx] [PATCH 18/27] drm/i915/pxp: Implement funcs to
 create the TEE channel (fwd)
Thread-Index: AQHWu20Q3gsnwnt+QESodZJ731Z6ZKnJsDcQ
Date: Sun, 15 Nov 2020 21:14:50 +0000
Message-ID: <DM6PR11MB453154E27CE3EAE23CC26AB2D9E40@DM6PR11MB4531.namprd11.prod.outlook.com>
References: <alpine.DEB.2.22.394.2011151732270.35728@hadrien>
In-Reply-To: <alpine.DEB.2.22.394.2011151732270.35728@hadrien>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: inria.fr; dkim=none (message not signed)
 header.d=none;inria.fr; dmarc=none action=none header.from=intel.com;
x-originating-ip: [73.220.16.43]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4637cc1b-bf7e-4bbb-676b-08d889ab7d45
x-ms-traffictypediagnostic: DM5PR1101MB2249:
x-microsoft-antispam-prvs: <DM5PR1101MB2249B9C71E874E47DD529541D9E40@DM5PR1101MB2249.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1B560rCnZb+sD/ZyFuoure5fek3Uv0jUsHCzj5yNTtoMSNk/DtPH9ncB8ZDPUU04ViK/LVJHFospwBhw/W3hr2ofSJv01YRHWvuBVD9Q9DtHk43V6h3Q2HhPkTh85uT2aM6+iF75xsUPzlG5gWrSOhQZ6PIo1zT6F7uMa6fYceh/mF2tzakWMetVWefwwyIOr1q7XilZ9/lLPA1JGaLUydI+nGXNNZexzl0UNPpn598bidjECw374MtC71Dg10j3OOEIIdXnHPkDC5gCAgV78cl+dfD+EYGS5gx6UT932JhnocEDj79T9EWGde9NJvRx2PaJSEDTshxIpyNzNlF+d6a+eUfIICUgBhG1y5I1K0677MuvdwWj/4bfPBQKbc/EjQuGnaR1/EFBQuGgLl0oKw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4531.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(396003)(366004)(39860400002)(376002)(136003)(4001150100001)(8936002)(5660300002)(86362001)(186003)(52536014)(316002)(83380400001)(54906003)(2906002)(4326008)(6506007)(6916009)(478600001)(71200400001)(26005)(8676002)(55016002)(53546011)(76116006)(9686003)(66446008)(33656002)(7696005)(66476007)(64756008)(66556008)(66946007)(966005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 2cl6Xz1q/sin9+19aUY6i4o26gbTnvhl6gxcwTIL18xCp2kkKhB92pRunfG27g1BIMiJlt5fepttCEOUMqQ95WwCsLDK5aTwprzk23QNIdXvs96eNVjjoVaWEvEcGwV56+D2OzvLpVHTj/Q90oUlXFpa9iqHHyDUWg5SZN9+7ySO6C70M3G8VwdNr6FvvTnT2kNl2VwwvsOQ1IxeaaUCXLUB59hFd6NWDF1pfjK5RQTJryV5JPazcDzUBi7Gxk84cNjdG3elsKOTKmsa9WLoLcUvbetB+fccfHPaPq9zO3sqyLSJSBxHKGmiiAsmDnhu3I8kDhbKjDZBhvbEZOMbkOjYqzLAimBx3cjAO0fLHpYQGy0YEJSzdSEYqzbZqGFPw5AdQxqov05t3rnPIEpLjofgMTZSs5Wap8HMAR8iMwPrFoKtg+bwGbOB+HMZBkcnpN7dZyCdDirtR3GIsES6H7fZ4v0VHYD3u3p0CoGKruNA7DFSTF/swPzjWBXvgu2bzTWB9PzvtDw50fUPb3nhZ7kAxVyLIK835isIG1+bxfLMDuHiS51jUYKj+h6bPCNPPjXeWSjIxLq6mkN8C7jgpW4vsN/nS6PzcxBGtwPPFLIaYzfBhVAsU3XzuPHmbzOZvSZFmSkQcCK2xcYzMjriBQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4531.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4637cc1b-bf7e-4bbb-676b-08d889ab7d45
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Nov 2020 21:14:50.6381 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oG1FTulRYHi6nNyCiqa1tpGKz89V+ozGBddQXkWuTN23lwegIwW5qz7azsXDpIQ990mzfEQhk7rsUxc4yplXsw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2249
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 18/27] drm/i915/pxp: Implement funcs to
 create the TEE channel (fwd)
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
Cc: "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>,
 "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Julia,

Many thanks for your feedback!

I'm still new and not so familiar with this patchwork system on the freedesktop server.

I tried to upload the original patch serial as "rev 2", with the fixed version, but somehow it created a new patch serial https://patchwork.freedesktop.org/series/83863/ 

I will check my colleagues to see if I missed something during the weekday.

Best regards,
Sean

-----Original Message-----
From: Julia Lawall <julia.lawall@inria.fr> 
Sent: Sunday, November 15, 2020 8:33 AM
To: Huang, Sean Z <sean.z.huang@intel.com>
Cc: Intel-gfx@lists.freedesktop.org; kbuild-all@lists.01.org
Subject: Re: [Intel-gfx] [PATCH 18/27] drm/i915/pxp: Implement funcs to create the TEE channel (fwd)

See line 81.

julia

---------- Forwarded message ----------
Date: Sun, 15 Nov 2020 06:48:16 +0800
From: kernel test robot <lkp@intel.com>
To: kbuild@lists.01.org
Cc: lkp@intel.com, Julia Lawall <julia.lawall@lip6.fr>
Subject: Re: [Intel-gfx] [PATCH 18/27] drm/i915/pxp: Implement funcs to create
    the TEE channel

CC: kbuild-all@lists.01.org
In-Reply-To: <20201114014537.25495-18-sean.z.huang@intel.com>
References: <20201114014537.25495-18-sean.z.huang@intel.com>
TO: Sean Z Huang <sean.z.huang@intel.com>
TO: Intel-gfx@lists.freedesktop.org
CC: "Huang, Sean Z" <sean.z.huang@intel.com>

Hi Sean,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on next-20201113] [also build test WARNING on v5.10-rc3] [cannot apply to drm-intel/for-linux-next char-misc/char-misc-testing v5.10-rc3 v5.10-rc2 v5.10-rc1] [If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Sean-Z-Huang/drm-i915-pxp-Introduce-Intel-PXP-component/20201114-094926
base:    92edc4aef86780a8ad01b092c6d6630bb3cb423d
:::::: branch date: 21 hours ago
:::::: commit date: 21 hours ago
config: i386-randconfig-c001-20201113 (attached as .config)
compiler: gcc-9 (Debian 9.3.0-15) 9.3.0

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>
Reported-by: Julia Lawall <julia.lawall@lip6.fr>


"coccinelle warnings: (new ones prefixed by >>)"
>> drivers/gpu/drm/i915/pxp/intel_pxp_tee.c:81:17-20: ERROR: i915 is NULL but dereferenced.
   drivers/gpu/drm/i915/pxp/intel_pxp_tee.c:101:17-20: ERROR: i915 is NULL but dereferenced.

vim +81 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c

8f42c11ed5aac66 Huang, Sean Z 2020-11-13  62
8f42c11ed5aac66 Huang, Sean Z 2020-11-13  63  /**
8f42c11ed5aac66 Huang, Sean Z 2020-11-13  64   * i915_pxp_tee_component_bind - bind funciton to pass the function pointers to pxp_tee
8f42c11ed5aac66 Huang, Sean Z 2020-11-13  65   * @i915_kdev: pointer to i915 kernel device
8f42c11ed5aac66 Huang, Sean Z 2020-11-13  66   * @tee_kdev: pointer to tee kernel device
8f42c11ed5aac66 Huang, Sean Z 2020-11-13  67   * @data: pointer to pxp_tee_master containing the function pointers
8f42c11ed5aac66 Huang, Sean Z 2020-11-13  68   *
8f42c11ed5aac66 Huang, Sean Z 2020-11-13  69   * This bind function is called during the system boot or resume from system sleep.
8f42c11ed5aac66 Huang, Sean Z 2020-11-13  70   *
8f42c11ed5aac66 Huang, Sean Z 2020-11-13  71   * Return: return 0 if successful.
8f42c11ed5aac66 Huang, Sean Z 2020-11-13  72   */
8f42c11ed5aac66 Huang, Sean Z 2020-11-13  73  static int i915_pxp_tee_component_bind(struct device *i915_kdev,
8f42c11ed5aac66 Huang, Sean Z 2020-11-13  74  				       struct device *tee_kdev, void *data)
8f42c11ed5aac66 Huang, Sean Z 2020-11-13  75  {
8f42c11ed5aac66 Huang, Sean Z 2020-11-13  76  	struct drm_i915_private *i915 = kdev_to_i915(i915_kdev);
8f42c11ed5aac66 Huang, Sean Z 2020-11-13  77
8f42c11ed5aac66 Huang, Sean Z 2020-11-13  78  	drm_dbg(&i915->drm, "i915 PXP TEE component bind\n");
8f42c11ed5aac66 Huang, Sean Z 2020-11-13  79
8f42c11ed5aac66 Huang, Sean Z 2020-11-13  80  	if (!i915 || !tee_kdev || !data) {
8f42c11ed5aac66 Huang, Sean Z 2020-11-13 @81  		drm_dbg(&i915->drm, "Failed to bind for i915 PXP TEE component, invalid params\n");
8f42c11ed5aac66 Huang, Sean Z 2020-11-13  82  		return -EPERM;
8f42c11ed5aac66 Huang, Sean Z 2020-11-13  83  	}
8f42c11ed5aac66 Huang, Sean Z 2020-11-13  84
8f42c11ed5aac66 Huang, Sean Z 2020-11-13  85  	mutex_lock(&i915->pxp_tee_comp_mutex);
8f42c11ed5aac66 Huang, Sean Z 2020-11-13  86  	i915->pxp_tee_master = (struct i915_pxp_comp_master *)data;
8f42c11ed5aac66 Huang, Sean Z 2020-11-13  87  	i915->pxp_tee_master->tee_dev = tee_kdev;
8f42c11ed5aac66 Huang, Sean Z 2020-11-13  88  	mutex_unlock(&i915->pxp_tee_comp_mutex);
8f42c11ed5aac66 Huang, Sean Z 2020-11-13  89
8f42c11ed5aac66 Huang, Sean Z 2020-11-13  90  	return 0;
8f42c11ed5aac66 Huang, Sean Z 2020-11-13  91  }
8f42c11ed5aac66 Huang, Sean Z 2020-11-13  92

---
0-DAY CI Kernel Test Service, Intel Corporation https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
