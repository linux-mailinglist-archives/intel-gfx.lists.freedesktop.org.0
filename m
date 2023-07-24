Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F92375EA6D
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jul 2023 06:18:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C437910E273;
	Mon, 24 Jul 2023 04:18:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14A1510E273
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jul 2023 04:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690172333; x=1721708333;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cYqeuZjlLjYAq1GMyUhAfxzlm5nTYS4hhWXv6jWJHgw=;
 b=HUGKhh0nKx5Tbn1+DDICpFefC1G3EAmnBrHwykN4H2U25yEd1Sm/hZco
 x0AsktYcaRM2db3bZ2lzpKxi9XnARcrRSesbFdhiBh4SZ0mEWn5yNMCsP
 1mVBccYTCdwN9RVmJ2gN6yBRcTBQVvrfeCV504n8dErFKa1Cp7b9GkhCW
 LRf6QLuN8VtFHGS/zwX5QATOueSRsv5Bfq4+8IvU3pUI5vjw7xzJvPoW6
 8XxP+FQ7SIbttNwiardV/JSdWUg5v1HzGsxcIIb6UdiEgSDtt4JdJXQGZ
 uBn3j9myO2Zb5m9dKCUkASef1VcEltpU6dNXMvMRDsDE1YY+elKLu4MUo A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10780"; a="346943887"
X-IronPort-AV: E=Sophos;i="6.01,228,1684825200"; d="scan'208";a="346943887"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2023 21:18:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10780"; a="675696004"
X-IronPort-AV: E=Sophos;i="6.01,228,1684825200"; d="scan'208";a="675696004"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 23 Jul 2023 21:18:52 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Sun, 23 Jul 2023 21:18:52 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Sun, 23 Jul 2023 21:18:51 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Sun, 23 Jul 2023 21:18:51 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.106)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Sun, 23 Jul 2023 21:18:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NJcQ6t//Cp3IXPtuvqWssoGgKe92tlM0riI5OOr05Gm8XNeyDAZV/0cg0CfEF1aCaqKRuf2l281tFc5wJ8OWEWfDaQ7xQJ4lORk1y8PLeZSkuRtZADkw8afI10Sb5zj/InZAENizyLAxrhxTAalNcKPMHytleAUyV73ZvYw/TdSHS2saLe+d0VWdOVGOJDVnxGyVZs1ox9CFGFkr+X8PDr/PP2FRzsk1jM7Tbv+hWSTvhO4dnLA5ibysVR6O+XfilWEBgTbheKznyqOk4CH0Snlpd1n7ZYirbRyXg3SzIsdyOM3bbR+jxGdrJCEG9m1MdeM17/fSvEfAm9N9ZktOVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=npO08PBAhFGMlQp26KIH5oBXSQX5bcFkfdwc3SkNCbA=;
 b=CjVm20v6r3O6Cb4YR/9dyikn+AhLLFwYqN2s+mk4DCa6FkHSbv6qQ5xqXro/bDGpFmk7v+bz/yU3ZJTpkf2qGiYML5WmFfacgl6tl675QI5cSLo0S6DhggO3V6UFQ8kTRja+TB6Hz6kzqO9MLVphoLPQF11hnyyzc84dRmAJCDyyxWT0anS/ppTGBm903AKpOxGKuXSvqtHDCNFpfjahZtFexNwKa8ET9ZjiOnR2w9uOrYHkYrxpJ4fiEPGN5CdAZjW4fodk9z88tfghpfQ+B5sPIu6+D6ObKG2w3/hEfu+qhraZzIF/bms/I8LXz+Afk/Yup3e3qGF9vN3RmzoQxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.31; Mon, 24 Jul
 2023 04:18:49 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::d383:a84c:6dee:47e3]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::d383:a84c:6dee:47e3%7]) with mapi id 15.20.6609.031; Mon, 24 Jul 2023
 04:18:49 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: WW29.4 Linux-next Regression update
Thread-Index: AQHZveXx31bXAPHQo0y07uap8HrE4w==
Date: Mon, 24 Jul 2023 04:18:48 +0000
Message-ID: <SJ1PR11MB6129C4F8DF62DBACC0DCC19FB902A@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <SJ1PR11MB61293C143E897C2245BF85AEB9499@SJ1PR11MB6129.namprd11.prod.outlook.com>
In-Reply-To: <SJ1PR11MB61293C143E897C2245BF85AEB9499@SJ1PR11MB6129.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|MW4PR11MB5776:EE_
x-ms-office365-filtering-correlation-id: e3b0da6a-de80-4075-30b9-08db8bfd1445
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5DvjMi7rrwUrj5iLeHSsOWSG0sJfhU1uZRixxsnZDZdHNCX4qyeAcy77YdJQO5+gKeAEnXUTMXXkJaJWTepETqL6Lx0WM0ZzPXqklWg1bKltq1HszEI4UlZ7QJtyLgRG26vD2+6KNO4azTzFPYFkC4Di5dqXutOPsQ77nnGZdZpSDXHR6RMWlErSbZw2Eqb+dPmwsZkTohWXXErI+MbHS6tCbQVrRReS3FfFT/NMcOJvsvTzQQBoauxNhEGXBq+SyBeue3IMab+XW8obdKf278JOZXAtGQpHdbDGF4A/nuxX3OT04socVnVeaJEUfIzoAg4PajOzzVHzmbiCa6zELYXm8HkUScoNYG+EfHqI+/b7t8d746JDC8yVyDr1mUDBp+uESJYJy2ClbsLfHyrEByLXmhZyT/PkIP29e63JSUaeSigUAJ9xXbTLqqMhAG8a8NWDIbg3AlyUN0rExVWe17hj2YZlVA6GfOkobP9NBCKQCxX3bsOkAdDXe22gHG/6hXy3v8Pdx7bQi3ADpCc3cqwQn+dd91MF8KsskbNwnbg3VsKO5f8HR1BEHGf7X78NIcRSAR2Hpm0vQawpJtpIBcgykDCKn5TyZSJJJtfHjVHwIWhUaRxFI/L2xb5+zfYS
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(39860400002)(376002)(366004)(136003)(346002)(451199021)(71200400001)(966005)(9686003)(7696005)(478600001)(54906003)(186003)(6506007)(26005)(4744005)(2906002)(76116006)(41300700001)(66556008)(66446008)(4326008)(64756008)(5660300002)(316002)(52536014)(8676002)(8936002)(66946007)(6916009)(66476007)(82960400001)(38100700002)(122000001)(33656002)(38070700005)(86362001)(83380400001)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Zs9IXx6/dV/MMp7o1jELMRLAF6UhXY5E7czY8Q5UmMrLACJ2YnW44anLt0hZ?=
 =?us-ascii?Q?xBOrRTUrjfqi5Ozfb02K1vGbwAWy4BGz6D0r7/fn3wFco8UymoTicdwFyoFS?=
 =?us-ascii?Q?uySILl4CjvftXbM2NzU0RbhmCVYkNXHz0mhVqdBAn+IB7WD7pK82Q5jSrZXx?=
 =?us-ascii?Q?z682aaeFaoK7/3y6fczGxmATJ+iMjOSi7veVBnR5mBBxlN4jQ/90bZOkijCL?=
 =?us-ascii?Q?CMA50/dayLjnBG3hcMDp6QMQtuwGVe3dHNlSr8DWaFPInzMbxLR2cwurtcLb?=
 =?us-ascii?Q?LQeZdOHVDlyDSGzg/tsubSIhf6yXIuS6cGFC6Mug8Bs6VRzI7nRReVLRFs7d?=
 =?us-ascii?Q?19wJETolRDlrx2VXlrfxzjd098ttKT1GTTPoV2ccO9+djsg+5qIvAZXX0DBl?=
 =?us-ascii?Q?mdJhhX6jE00DMvI6s+JL3bWLzLrEleLoCYBacSg02ETU94QhnXLlyQKnPrmm?=
 =?us-ascii?Q?fydAnnQg+bR/TBhO1HbzabPagXY93RDBfzrXvXfbIU4Li0kCCZANaPsdXpkg?=
 =?us-ascii?Q?OI9saedgEvZ1JBG/PwDLum5iBbi9zWfo6pLTitwEeyOaAtzUv4fGmayjxZfr?=
 =?us-ascii?Q?ei38oHJm98VLVTh8/RbDqCwt263ZXr2kmziLeSaJ74M+BVthSvRRGYN5fjIu?=
 =?us-ascii?Q?A7ACwPDzjf9Sftwfwd/gJY8vYJruWPEOo8+Yt55FWzdmnXAbdFyyKCNGYZm5?=
 =?us-ascii?Q?mgWh7JAcIFWriWiNJePPVJujjyAXE0UOn2tSPrWPMB6E6e3nnm8qzbdBhNWX?=
 =?us-ascii?Q?45lQLHvUce/dpqR381x4hwmJivoNAdruPt7bemEG3iZxgMVMDLfoZZ3l4iYa?=
 =?us-ascii?Q?6PeGUyPXQESyLrWlj7RpF0n5UGie4eWzA+/Cyv9tC54hb/gZwNTEneaN1o5k?=
 =?us-ascii?Q?j/zIy6RC1t9wyqUjAQQ3itip492J21DYPR4zNEYYJdagkm7m3r7rgAv6nDmO?=
 =?us-ascii?Q?LfHMwU14o7a057IFcDYQHv6v/rEjEryoh6uLHgskhi1oh0t8fSMIRWiPSS5d?=
 =?us-ascii?Q?v7ms5Dgy+240Fgw3n3bI74UVij58gVqeQ82P85P/HqZYcUISfyvctA5639nR?=
 =?us-ascii?Q?cWQsWCdZd0y5KNbNwAVsJY9P3mrCbMYCtNS3/Ew/WmEtqAHv32P/Bm423fot?=
 =?us-ascii?Q?bDc+a8xHJspiMYNLYADD9Zrqnri9VngFLUH+Gyh4MIqxJLl/DGwmHCcaAMDm?=
 =?us-ascii?Q?30vuSjUNekSa37dK/4DHmQz5dOD9cm+IkMBSz32+zqiaBfu5I+hgFV+q9Q2k?=
 =?us-ascii?Q?pDcCV3vIaeCHWnQ0OgiUGi8TXZbhNDpIUK3tf0xYHPOTtzyZVoWI4cLdr5zy?=
 =?us-ascii?Q?W1r/KfEBeD84BuSHH+5VDnFq8Wv0/7Of94Ya4YN431mXi5a+Sq7ODKiBoUDO?=
 =?us-ascii?Q?c8kJAjSdHbhdu0f6SYXYV5GOcr3OeIb1gPskE2N8+IOQ2TzkEErFRIcbIxVG?=
 =?us-ascii?Q?w7JYCi9PGh3zSreiMWfQ3NgzHwf5RYs8xgzI+eTlAWqTN9aBmRKWGeMKDp9/?=
 =?us-ascii?Q?RT5NsX8Dupf814kBjNxMMhR/x/2rCB/ftrva3KqJaDz/sne5zXEWzgJBMPrC?=
 =?us-ascii?Q?sZRq7Gy6QkDZ2PBzCyox7qGv3RqNAfhLyas6UdD3bt6lSwE28rl4lBQRAsa2?=
 =?us-ascii?Q?jA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e3b0da6a-de80-4075-30b9-08db8bfd1445
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jul 2023 04:18:48.5743 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: C2QeN7txwfmw2KBTmjJbWCbBRw85yhBwtb1isqC5mM6DG7JXYqXYZYFXviV+2odLLniytJyztmrMSjupgPx/e16R6KO7Dxwm3/uA0bMyTYw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5776
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] WW29.4 Linux-next Regression update
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
Cc: "Syrjala, Ville" <ville.syrjala@intel.com>, "Kurmi,
 Suresh Kumar" <suresh.kumar.kurmi@intel.com>, "Krishna,
 Prudhvi" <prudhvi.krishna@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Regression found:
=20
#1
Test case: igt@gem_exec_parallel@engines@.*
Boards impacted: all
Error:
	...
	<1>[   76.153388] BUG: kernel NULL pointer dereference, address: 000000000=
0000010
	<1>[   76.160308] #PF: supervisor read access in kernel mode
	<1>[   76.165405] #PF: error_code(0x0000) - not-present page
	...
Logs: https://intel-gfx-ci.01.org/tree/linux-next/next-20230721/bat-mtlp-6/=
dmesg0.txt
Already existing issue: -NA-
Next Steps: Bisecting in progress
=20
Linux-kernel tag: https://git.kernel.org/pub/scm/linux/kernel/git/next/linu=
x-next.git/commit/?h=3Dnext-20230719
CI Run Status : https://intel-gfx-ci.01.org/tree/linux-next/combined-alt.ht=
ml?

Issue observed on runs from WW29.5 too.
=20
Note: Please reply to this thread for any kind of information on this regre=
ssion.

