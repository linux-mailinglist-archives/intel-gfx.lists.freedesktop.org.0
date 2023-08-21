Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E36F782F60
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Aug 2023 19:27:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09F0B10E294;
	Mon, 21 Aug 2023 17:27:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80E4210E294
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Aug 2023 17:27:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692638841; x=1724174841;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QIErpk1/lpzB6zdjl3BEZEnu02ttpu/ehGSc8m/SOQs=;
 b=YOUi8Oigs+yQgiFgSndRnml5bgqX806SGsULM+eMtsFeSi4fZklDu0OV
 nZCTnQ1LXiWfkO8wRuve0X+aoYJAvYgkjAmiFxap8XnD1XLENYp4wOhsA
 St62IYiIvdKtZIJbHWMwr3qCANJJ1bfmeoNwd9clpTpspF+mNSIndXApd
 dMm31+h/C7sRRsFj7qvbJ8IoHYjQe2EHZz90FZbdby5NPHAlTjYKxPMDH
 SkvYUKEF0f2Q1XK0FWU7DQAKxJzWlFy264cHHYw3tvFYBMBBr2b7T8cqS
 VyBGq4HE5/8UZb+QO3Ip8y7S/D9NAFDF4URBHnj/7zq1IzdEc9XwGxDLz g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="358643133"
X-IronPort-AV: E=Sophos;i="6.01,190,1684825200"; d="scan'208";a="358643133"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 10:27:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="801350583"
X-IronPort-AV: E=Sophos;i="6.01,190,1684825200"; d="scan'208";a="801350583"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP; 21 Aug 2023 10:27:20 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 21 Aug 2023 10:27:19 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 21 Aug 2023 10:27:19 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 21 Aug 2023 10:27:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=icGWUGc8+sQCVvF7jdaIC87vb3jeWQV2xUx4bWd+VOzK4bDJiF31NEnD2BBLQuh8TUD1Eoj5OlWw3+WLEOfKiV8AaGEgMqTw/TaL7Hj7ooDfiOI7I4C5z8YalEq6nrwXMPbed65/P6sYz96l69LCceOp05YZBjnMO0Bqzke8RHC5hrke+KpWamiqYpEd/Yl0ZJ8l/Rpb/llmaOF2dvdcRrVLTEdPNLtMBercundmkWU6o49btndFzba21oOsuSLBXRN4vPgldGvFgkQQ5yHXWerddQ2pmM5MfHCefc7kJiUJ8z6o5H/wY7nrVOtvcDWirVXpyPawabs2ogO4mLkYPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OSs7Y+3lJrdjzboG6h4nEeffqd6RzV0BEkdKi4eyIXM=;
 b=XwchEO51nIWZyxj/hktpDC/ckN06eEIX0td/AGJ0UArSE5YuLgn/qXyKbpdw7u7uOMizDAYC1JyU+7YIRk0zuWNpCweP2lkFRpID7PThBMISHhjYWVjZ0xLRjMXG5dmKMFYkGEqz/0Pe1SVNhlf4hqage41qizvZaIBIMH4yj5QtK859EKwGc9+E+5G2Ow9dSYYdEqFGyPT09ACZIASso5J9FN33IedsUpfIEULvEgMlETLJ8xUcY/mWxXriCzJIEUgt/McFZmjqREUJYzyXrFeuGpGRFMIajrXuCFLOwK9ieyIWi4hKhwLdnLjj5z8alrktOqvBLWr6Um0MJy9E3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SA0PR11MB4752.namprd11.prod.outlook.com (2603:10b6:806:99::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.24; Mon, 21 Aug
 2023 17:27:17 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419%7]) with mapi id 15.20.6699.020; Mon, 21 Aug 2023
 17:27:17 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>, "Coelho, Luciano"
 <luciano.coelho@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v3 0/4] drm/i915/tc: some clean-ups in max
 lane count handling code
Thread-Index: AQHZu8QunZDRpJIT80C4LA3ytUAL6q/xKDkAgAQJIFA=
Date: Mon, 21 Aug 2023 17:27:17 +0000
Message-ID: <SN7PR11MB67507FD38D8BEDCE40273BB7E31EA@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230721111121.369227-1-luciano.coelho@intel.com>
 <bnbw4nv42wwbk5mhztglj5a4t4sjqi4rqi6u7f7gfewvigky6z@yiu6vwcp3l5d>
In-Reply-To: <bnbw4nv42wwbk5mhztglj5a4t4sjqi4rqi6u7f7gfewvigky6z@yiu6vwcp3l5d>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SA0PR11MB4752:EE_
x-ms-office365-filtering-correlation-id: 3e9b4d66-e0c8-456a-b2d0-08dba26bde00
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7bcg8Fd2+PEcjqcJTkHnllNoDuVGmvqKvk9iC/5WeaZGKqByf3KkxFOWY+LloW2CRce7gA84Ro466Sq+43YI/Kc0A6Ie+FNGThFOwb4F6U1HZvjY5C/BdDPwY1iHKM3D56OpGxc3tZTxOzoJTbf7y0BAhiYGw1dlkZY/odUfiGIdZiKnxqiWlFklRKNOKPm4Axu9K85bJXxnta8OVPqs+cIU6xg2kVccsYap3JGYl82Czyg0dHHa3pF7OYmeNl/WKDRvBS/jF7RW8uGqg5I7kWIcAKC+91eNJHtTX3VFVEUELZC2wMp3VIqQp+UA1tb53FxYzH7Gsz0yTzVVEc7Ules9BNkvLQqb6zAbu5jfFRFB8LJyE1obmUbCP6Bn4C50AAS1gA/WLl6i6GWIXi5zGJkMa2o1XteAN2CQiyAzaVY50BLGTGKWlleHFdJ8uR0wQZ7jRIsvqwNXOhisKNXlr4JJY28BB+Y8XmeJjyVEn+oMyhK8PoL7Pypok4LWqWJOXzkVeXbX/47XlhRf4qykuUZ/P+VvYVXxSz3QgQ6Z6S1SEH6YrGCpTaXUrpO9trqWnTxjpZP7z9rzu9re7olThxgVX9ovlYfhLwjEYF1BiHAXkHo72BT/JQrcVNH/E7ls
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(366004)(346002)(136003)(39860400002)(396003)(451199024)(1800799009)(186009)(2906002)(4744005)(6506007)(7696005)(38100700002)(5660300002)(52536014)(33656002)(26005)(38070700005)(86362001)(8676002)(8936002)(4326008)(316002)(9686003)(66476007)(6636002)(66446008)(66556008)(66946007)(76116006)(64756008)(110136005)(82960400001)(478600001)(122000001)(55016003)(71200400001)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?vQwnA6XYOTPFretepNAUG6kFkhZy4xLArxXpwMVND3sVSY0inYRuUTZPlRHR?=
 =?us-ascii?Q?xfH2gPBhnvYO4NndaOazQ0Eh8OlW+dnqv/8w6rrK4SyprLAQsnpD6WQ6Xm3G?=
 =?us-ascii?Q?LDClq731X76HCx/tlEjp+WugIJdE0tuT6VK/KloWArxoetUXvkpfLNtKQlQv?=
 =?us-ascii?Q?RkfrjBIgI8GB7ROMDc2tCgQa4il/wVnZhJ/WOX8tGqYXXY2zqTpii1fWvwiv?=
 =?us-ascii?Q?jAESGEwN3gz574zZflhFQ0hw9N2QdJGbZ5R6Imoy6kZzltNXYkJInIN9pAJS?=
 =?us-ascii?Q?x4X82Xe0lR4Heac9nRBtTvix976VRfE8jEtcHfJb0BwUizaqjB2BwIagBZb5?=
 =?us-ascii?Q?XY5feFi+CUw8JgwSQEJYFAAAcbWtsI5o3DJUo2SnNoreOr6KW/iVJ9CYvHJn?=
 =?us-ascii?Q?9gbmByNID6PSB4PpiBeCNrjX5/0L8DfnEhI77geEX6UPSRvzN3iFmZJO+ozT?=
 =?us-ascii?Q?FEi63F5/ks37Z6AvW9+U8Jjl3J4raPpfVxrPlsZ+dbTyYWluTOB99akCJbPy?=
 =?us-ascii?Q?6dADHyWw7mKOBES0MIkP6F0inBkm+kjadgo0eKxJPpYgT99dBSN+gmMstd6Y?=
 =?us-ascii?Q?etV14mBXbKgWb9FY36jujtLasuqxNHNvntml49r5m8YOz/tG29Hong5MU6xG?=
 =?us-ascii?Q?+dcgg8/ukaplgvK6YvA0ACj0Kv6ZCFouUD0E0WnBalGZVcPRUi2WjrklkROs?=
 =?us-ascii?Q?1b7FC/87tB/3Tw9vByD1ObBrKK5YQ2PG005LDX/ipkKG7Cbe30Pj9g5XDFYg?=
 =?us-ascii?Q?tAdX6R8aKT7g/NtWAxQDUc5IDr0803wCpq9RxYI0ej8r+lVMhzQ1Cyg1ihuL?=
 =?us-ascii?Q?yxlV0z1mgj5wnYQKOZThfScDnbgaQYvzndHeDVo3P+4s3lQaQ0hPHug6c+KY?=
 =?us-ascii?Q?aGb68RHkFos/nGOC+8oqO52BRhbXR8+3j6Vc0dfP0VjVPbk+K+XlV9Pzij2J?=
 =?us-ascii?Q?G9G3vOVc3Rle4d5jBkCUsOSkCD8v+SzJBoj0/WPfKE0VHG2muN/f7xI4igM+?=
 =?us-ascii?Q?6cz4ZAuW6oQROTDMkOoVOXsbuC2LO0dfQRJBQNvBMMIIWjnXuVyucLDIgbVa?=
 =?us-ascii?Q?xKB6Z9qmt5LfEs5+KTt29k/1hqLPQWLCxrfTXcrzSgxTrFlnu7QzaBXzalEx?=
 =?us-ascii?Q?XKzf9AqR7ObObgaz5cxz710XJUvfu5xIFkZhkHc07JBkTOomCCoJ8nY6xTsG?=
 =?us-ascii?Q?aiERkp0dgjrk80Z0JRnPLX+x9mEYZQQKk9hynUeHTqQSVdJHLftdL3kGkN1b?=
 =?us-ascii?Q?zfpNh68sYnPmsMAlDaCumG9JHAgsUU8y7ytBhWHRiuPM1HHL9aVVS4F4iG4u?=
 =?us-ascii?Q?m0GCymPkJc4RXEdVXHB9C9usD5dr7x5Y04m05apc4CzC7uFKpjJnFAm55STs?=
 =?us-ascii?Q?Nnc0Mrh1x92cFLSvuW9oW42U6z1tpniXgm6X3d5Pa9mRDZTZfEz0bgYGTCrO?=
 =?us-ascii?Q?0G9hYhhhwdBWNorVHFsm0J/n1yWJACxRn33QChjmTGtgmpiVrWOQohz0Lk+3?=
 =?us-ascii?Q?k5DogWWM4upUJ7aEsOdTjFd4nZ1vffmUsTeuAhjirwzmB+ai1q/339OFSECp?=
 =?us-ascii?Q?BstudLgdqo+We04kpLPJrSsD3edD6vJe19vTuzA2?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e9b4d66-e0c8-456a-b2d0-08dba26bde00
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Aug 2023 17:27:17.2627 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VTjCL1+d0i46/d4H64N/bD4rka/beZI/kOAxb7V5XcSp5eTjVoXzP7rBT+9rWSMy7T4kez4LBG0FK1k8FUwTtg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4752
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 0/4] drm/i915/tc: some clean-ups in max
 lane count handling code
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

0/4] drm/i915/tc: some clean-ups in max
> lane count handling code
>=20
> On Fri, Jul 21, 2023 at 02:11:17PM +0300, Luca Coelho wrote:
> >Hi,
> >
> >Here are four patches with some clean-ups in the code that handles the
> >max lane count of Type-C connections.
> >
> >This is done mostly in preparation for a new way to read the pin
> >assignments and lane count in future devices.
> >
> >In v2:
> >   * Fix some rebasing damage.
> >
> >In v3:
> >   * Fixed "assigment" typo, as reported by checkpatch.
> >
> >Please review.
>=20
> what happened to this series? It seems only the last patch is not reviewe=
d.
> Are you going to submit a rebased version?
>=20

So I had some review comments on patch 3 was waiting for Luciano to upstrea=
m
the latest changes then review the 4th patch

Regards,
Suraj Kandpal

>=20
> Lucas De Marchi
