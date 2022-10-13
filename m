Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81EF65FDCF5
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Oct 2022 17:18:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C503910E270;
	Thu, 13 Oct 2022 15:18:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABFF710E270
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Oct 2022 15:18:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665674319; x=1697210319;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Az8cxpfyHEtHzY+Eagv5xKNQXOewW+nwkhSCsWr9p1I=;
 b=ecXrFXqZ7P0P59ucRSXmQFiNjRf9AFh/T1WsITIwHqlKd7GXNeTGcRAz
 /+cEGpd00Bi119MJqq9rvmlPuQ2JL+MZncBgTZ1Qq1hDaBTN6XhqlhB3z
 hP+oplfquHEC30k01NnA4+h2Z3OKZTBdOjXDAf3phxvIsa7MU+guJlVPa
 8avgGBucOzcngv8LfkK28cQyggBK8rpEjFIzoK9OzDH/uNcR2GFmydDvt
 +yYK1fQe/qgSsP4RJgzmtwIhmzUsnBNqOw6N6mu0QzQ1evY0Btb76xj9u
 T/GVrvQfj5PEa4kY0G1TJJPtQB/YisIjv3XI/thAD/lALxKuCbLXViEBM g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="331614006"
X-IronPort-AV: E=Sophos;i="5.95,180,1661842800"; d="scan'208";a="331614006"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2022 08:18:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="956207831"
X-IronPort-AV: E=Sophos;i="5.95,180,1661842800"; d="scan'208";a="956207831"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga005.fm.intel.com with ESMTP; 13 Oct 2022 08:18:38 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 13 Oct 2022 08:18:37 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 13 Oct 2022 08:18:37 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 13 Oct 2022 08:18:37 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 13 Oct 2022 08:18:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AXhYmvJwMr9mK5lgrQldrIs/WeR5PVVhb68DJAjNe0ca8dII+DCCL60w09Y2AE3/wfvMnbWKlhTLbDQ2IaUHuvkdsevnLkwDamjujXdPowZeH+l1Nk6UEzRK/6pZqQ+pC8VpzrmREoAVy1V4fZYtWEXpT/VdZuIzzjjLirflxAOO+Edviettt1aLSw1mpXNiW6R6neHIiFf98t7q9nInwaWSAlUQ8nL5Q8kl2tUdKGliUM3GIZiG/jdZ1eEbzq7Rq8SWbT0INV/fIzrLBdkbdrohS6pacMFZ+yI/Trjf3eOlaORTyAdmToYlWbuXW3TiOd8o5lRyKrxthClza8IRqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zlD5OfW1vw+gCJI/eJesfz3dgKL7w0VFpo4hZ6zK0ro=;
 b=eS+Qje0DUZX/sOgdaUTr6xuArXsDo9rDTh5+ROshnW4Bd4MIIrnA1QZFocUw076HDqLS2Oj5jrE9p7abXz0kGkMgc456U9zrQyOz+V1xMM5AUC2EK8KC9hSQQ5zGQACfGbKqflxBJ+T/cXw1qok8A54x14dfYNBalZTIXqTEXDt+13Lc4OfY4mjkjm1b3deZsOnZXszSNpU8Fp7AbjapToLXtUlq3iT9ca8tj4v2K3LgWuarKVRB5iuT1F6PsBFBsjXbjyFLNhn3wvENIzrvXa9jvzFerwDTu7l7Ym9r3I9p6jY8D8VL054WFFPdGVmAaxyWOEkLy8fNsmVgaZM10Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by BL1PR11MB5222.namprd11.prod.outlook.com (2603:10b6:208:313::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.26; Thu, 13 Oct
 2022 15:18:35 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::6109:fe60:7e0c:f02]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::6109:fe60:7e0c:f02%9]) with mapi id 15.20.5723.026; Thu, 13 Oct 2022
 15:18:35 +0000
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>, "Auld, Matthew"
 <matthew.auld@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/dgfx: Temporary hammer to keep
 autosuspend control 'on'
Thread-Index: AQHY3hVzPcDlo0NIikyM6xXPlXWgZK4Kg2YAgABcc4CAAY+MYA==
Date: Thu, 13 Oct 2022 15:18:34 +0000
Message-ID: <CY5PR11MB62116A1D3DA4C23C67A7D03295259@CY5PR11MB6211.namprd11.prod.outlook.com>
References: <20221012083402.1069940-1-anshuman.gupta@intel.com>
 <6fb51e71-bc5c-16d1-ad13-33017035be83@intel.com>
 <87tu4983yc.wl-ashutosh.dixit@intel.com>
In-Reply-To: <87tu4983yc.wl-ashutosh.dixit@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.500.17
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6211:EE_|BL1PR11MB5222:EE_
x-ms-office365-filtering-correlation-id: 9dad5c75-7703-422b-47c8-08daad2e3241
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: igKMprWhZOZsJT2Gc+hHy4yL6vRAE/gq8BdDJfgR4tQIbZpZBO+EigDay9QeaxiDmtQ8ihlXVBXA8zJP3+DDSDwiJ3NU+q6HCKf35YiGkkzLASwu4NzuwSSMTRoMDKSli+qFIiSvjGkhWNpq6Lrr8po4WYPovdADxRzvXHbMAg4Eo/bR8n5/DwsKb1E2WQsiMkLxugwpVu7DXUQHBI4EMmTbC6GlJPowyLp1DLx63MMNu37/6+fDegDqH0ka3+mCp4/rFKQ3JnoUdtYhDi2bSYnx5TLy27C+9MW+CEqxwl/0H3mBH796TO2dTI8Z+VtPjXcU0cOzgBVy2SIuYhQb0DkwA55iSM+Tc9JlgR55BadxswBpVD5jIMjF96CwcKunvDnN5Kgdx6ATk0iezoMJ69hYLmJsIPrrrn2YBnZcLI5n+VCqX90UmXbAARgCPkJrTKht8wA+lJt+qwfmXmkBkfd89gri8UqnF/wOgpuMKosn7htLKlBA9qP/sQAo0PdNorxg9QYcFiWaqSmOButSxyVvv1Noj7Zg+84CJjNVStESTp99iueDEfbpB9MZceZ/M5YjCQHUsUincupRMUZbZXbF4oAFt9XBPBOREndbnkMxK3VEXFE072CMs0CeWs3ZOECcyh/QDyapQ93v4NhNTb0+6kxh0may4I1S1JM5RtiuFp0Evfs18q9RJJA3Km9M02Ev72kbfnV4bz0OLjesDPADt9T67jsOEtvtObV/fxmjC5fqiGcyOorTpPe66w2hCdqRdb9kQvHfPSlQv007DA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(39860400002)(376002)(346002)(366004)(136003)(451199015)(5660300002)(7696005)(186003)(2906002)(6506007)(41300700001)(9686003)(52536014)(53546011)(55236004)(26005)(8936002)(82960400001)(38100700002)(86362001)(33656002)(55016003)(38070700005)(83380400001)(122000001)(316002)(110136005)(54906003)(6636002)(478600001)(76116006)(66476007)(66446008)(64756008)(4326008)(66556008)(8676002)(66946007)(107886003)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?WrNkmp+Dkw/oyn8P3RPuVNKi9xizeRK7HMx+QPQboqNafWUCXusNhI9kAXbl?=
 =?us-ascii?Q?zp3bOSTJRvOJ+EjjyWzp/48g+b/ZJ7ElXklssX5w9c/vxKQfV/ozr5+0Eqi7?=
 =?us-ascii?Q?94b8r0Ohzh141gX7ucbdyP44CzA3z6oWABxX1cR7216xLNC8HxHMRLQDy0FQ?=
 =?us-ascii?Q?zl24eliiPFm9sRIjyHhs93czZXlGnAxbbT4oqnjRD+udnMkhHqa61cQbweRJ?=
 =?us-ascii?Q?DcCAOA7Yn8J+2C8tKO1/UtnexwPOD8Ls8FBUEx4FumdbsTecpfgpBJMwy11e?=
 =?us-ascii?Q?fE3Hxxc7jeQ7DsUj9KF3ky9CZfGciTSIUQOwELWdrYdLQyydn8P5vpGF7ySq?=
 =?us-ascii?Q?fJZu0NLZRHfLqM5O4k7eCgFIzOH9i5+XIxxKKuL2tpqZnXAGg7XSMiL907Yy?=
 =?us-ascii?Q?XYz3cPZekknhT90v88enhJqybJUVa8l1fYuyqHwiLAjqQlD0ElTKeB72PDJ5?=
 =?us-ascii?Q?smPYSTNBm+XFlZ5+TmuifhkJOtupyEXyoFRVlvVojx93kroBvRpkKMiHcTj/?=
 =?us-ascii?Q?yE13HHZzDz89RNY1/lNLGOFmppWnzME1d1GJV6Q9VjXxJKPDHVT9idnEU3tr?=
 =?us-ascii?Q?13121AfvZXooU01tzRgNHKnrkjjYCl0APW2QepT0A9SQTMgudrlzfIG/9rbE?=
 =?us-ascii?Q?r+ZuQl7dGxRwZfsoeOG9NYizXnkqo3AIY8ckftyEZ5paBoP/MRw/ns12roOW?=
 =?us-ascii?Q?H1kI+WX2Px0dJg6oWbOf5M32lN7JdB3nSd5B3rb8tuOkn9Gr1S7m4YckqaKl?=
 =?us-ascii?Q?CfD9gME+1tK32HwOgq8Zy00s0pI15lNsgnpZj3VxqygyxT+QzlH54m5liSeQ?=
 =?us-ascii?Q?/RCH4b+TW/SFMrV4Eif0zkUk6/YJMGcwpSKknJgWbNNqsHi81o2StF/mJ0hL?=
 =?us-ascii?Q?qjsIjXtnjguBEKZ06jgcZavrkmsBRmVb1BEv8lS5Srv1Bmmwmj7NVtN7xLf0?=
 =?us-ascii?Q?z+CFPaZ6F0xhH8eLDkd4d716fUNiifFTX1Mawhq0dmhIG8sjL0MUxVIIWZhZ?=
 =?us-ascii?Q?34+VYb6XRTQ4uqkiz876eIsUDDeMNEfdfxcBPF/xefzrmL+cTmo5EN2gQAiN?=
 =?us-ascii?Q?vq3gRCNLVsvji5/9GkUVM7ryfN+VpKRBzoVgV4NZlRWbUjGBJ3HUIlzj8fNs?=
 =?us-ascii?Q?e3fSzXNYJZw/5oZSxMMJtxTksGZxL95Lqc3wukVQqqUkqQz0sTk2q5MbEq+U?=
 =?us-ascii?Q?E4oXL3jTFJqrDDC68CWk+KTpfEGYC9Bkuw0eJIm4DxrsAKTNzWYPPEyIWoWM?=
 =?us-ascii?Q?pX3nOFV5QcBK+EPU9kZr9jgehS6gknCN70/o45h+FJ+6Ejr+agPMmWRgCs3S?=
 =?us-ascii?Q?yOhKLafPdDEtJ+DunjWdQ5/Vz+nCxRD0K8cvyyx7mz5nVQcAe2SQXUIZUvHx?=
 =?us-ascii?Q?iU3EgZ9m5kBvYU85ViOYsuwE/6uGeWHphKEuIF/i1SBXCiFoDj5n1smfQ4JG?=
 =?us-ascii?Q?OQBaZku75Ow2LSpeNleRyiAGStFYb382vQQMXF+wQS1IE46sMV3rRASiKgjE?=
 =?us-ascii?Q?aBiuJDTsHLjWHJXxHVXk/EQegcq0VFZVpJgKZ/dGPY691nEGwfMScPUzoJbR?=
 =?us-ascii?Q?v86aTlav8gTgjg5EcLe2tPVQ3MVfTPyAeK3WZiJi?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9dad5c75-7703-422b-47c8-08daad2e3241
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Oct 2022 15:18:34.8961 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /N0ylCZGKGQKA7S5SNTbW51D1axigABQKn49XNYZcaWmjsALiUBWStSYn5PLxID/EDw2VpyGZTM1q9v+EuXriXacYcKogBzNcU09LB49fcE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5222
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dgfx: Temporary hammer to keep
 autosuspend control 'on'
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Dixit, Ashutosh <ashutosh.dixit@intel.com>
> Sent: Wednesday, October 12, 2022 8:49 PM
> To: Auld, Matthew <matthew.auld@intel.com>
> Cc: Gupta, Anshuman <anshuman.gupta@intel.com>; intel-
> gfx@lists.freedesktop.org; Vivi, Rodrigo <rodrigo.vivi@intel.com>
> Subject: Re: [Intel-gfx] [PATCH] drm/i915/dgfx: Temporary hammer to keep
> autosuspend control 'on'
>=20
> On Wed, 12 Oct 2022 02:48:30 -0700, Matthew Auld wrote:
> >
> > So with this change all the runtime pm stuff is disabled on dgfx? i.e
> > intel_runtime_pm_get() always returns zero or so?
>=20
> I guess it should always return non-zero (or the wakeref) since the devic=
e is
> always on...
This patch does not disable runtime PM completely, it just disables autosus=
pend i.e by grabbing the  wakeref(device usage_count) at PM core level. =20
intel_runtime_pm_get() is orthogonal to it and will get a wakeref and will =
increment the PM core device usage_count.
This just changes default behavior of i915, our igt rpm tests still overrid=
es the autosuspend control to 'auto'.
I915 driver still vulnerable to any lmem access without a valid wakeref wit=
h our CI execution. =20

Thanks,
Anshuman Gupta.

