Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DA93276090A
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jul 2023 07:08:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C583D10E2CD;
	Tue, 25 Jul 2023 05:08:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E04310E2CD
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jul 2023 05:08:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690261708; x=1721797708;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8QW9Q3NJd7HtHaSTwIH8CONNKh3/XcsBWGxM+owBU1U=;
 b=GBsgfa2iNVy/NE0LYgfs7yHdurN1FmDTMFcNApKIiczux8CvnWNtiXbt
 zDSO/WMUb4vFfSGezq0+lXZ+yGal+8qpmtS6v+9/A7REJP9OhptWv6RkK
 xkm3gX7CX9UQFHSoXnd57t+/9qdpWxDHRmwbQXhdPEtDXTCk/0hvu9Sal
 KEAlI2nc8iSe26JutiGwzpfxTadU0dMLh0RqIWcUO8b8d0QpyQPeB2NMw
 +JWHjKyL8IUHhTi3MIJfLaWmHubXYSOCGvK2XgBDDR3TarNwtnyr6avBi
 MNMouMEUFGEHwYN7iZOYqezuWUY6THZtF+GKVQzZOeCioqElG3yFfOrTf Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10781"; a="357620528"
X-IronPort-AV: E=Sophos;i="6.01,229,1684825200"; d="scan'208";a="357620528"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2023 22:08:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10781"; a="719919163"
X-IronPort-AV: E=Sophos;i="6.01,229,1684825200"; d="scan'208";a="719919163"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga007.jf.intel.com with ESMTP; 24 Jul 2023 22:08:13 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 24 Jul 2023 22:08:13 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 24 Jul 2023 22:08:13 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.44) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 24 Jul 2023 22:08:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YtW3mxGfAgA/khpQCIZ8jG7eBU46nESC3Q1Wss9AUV4TtJlLjg5haYrTtKUdiBe6rXurJX8BZUIH2tiW0D2DVB18wnI5kZEBHPZDGuG92d+Wl+/ayQVUX6PxuvQNKcE2UzH5Q3fz+kn/RLZ5asghvcUkJznwcZXRcMNkMUecXrLyFyj/iz7Bpv0gwi60XCzaK29rDkKtiDhazqfXqEsfaGyUCbillkniJqluiG1arrhFbXNOiVNN4jHRuagazk3woG9QYuY68uMXHtmqvKB5a6zlvxNRI2asieVhsvDZjV+uToSJAQN3yP47ZnU8QuvH36Af9iACcJPsZKDwmDRtEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aw9jGWm2CJ8N9jEW2/7WJ6Z405wabfgKymlwetYPfWY=;
 b=IVZwmhlT9gtZCHK6CXo/8/ev3UTLEIZrCquymVRMA42soBM1NmizItc1y+EH8uApJ+G1JVfWA8H2mcgwOo60cdg+gTvJn1f5YOLDWBbLGCVYqpECXF76aR+v9cv54VgHsIIu6ViMrDgmxW3ALO8oxO3cowb29iSvYNZh3u+YuVIo3fpDdyaMJHF9hkrBfokB28m6cmuMo5qBmueOi5r1WtvzMBbfOtPOl08x9fixKOCPHwqfBLmuHL0BmVHEKGKAtkpMRqYG+OAYEy5pvjjaKvthsj571BMGJYQqEV79iZbpvW5Bq349AWk3h9voIIyeLsiGgg14rPi3/hXF8H4ruQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by PH7PR11MB7478.namprd11.prod.outlook.com (2603:10b6:510:269::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.32; Tue, 25 Jul
 2023 05:08:11 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::18de:a383:8dc0:3cb6]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::18de:a383:8dc0:3cb6%7]) with mapi id 15.20.6609.032; Tue, 25 Jul 2023
 05:08:11 +0000
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Thread-Topic: [PATCH 1/4] drm/xe: Only set PCI d3cold_allowed when we are
 really allowing.
Thread-Index: AQHZu02zwtnAOrrdhEmMe47hlA4P9a/D1IBwgADADICABU1uMA==
Date: Tue, 25 Jul 2023 05:08:11 +0000
Message-ID: <CY5PR11MB621139820D8A2ED0CB2F49E59503A@CY5PR11MB6211.namprd11.prod.outlook.com>
References: <20230720210353.214385-1-rodrigo.vivi@intel.com>
 <CY5PR11MB6211C557FCF7EF65F3CFD64E953FA@CY5PR11MB6211.namprd11.prod.outlook.com>
 <ZLrVvWOoU1BvpBsX@intel.com>
In-Reply-To: <ZLrVvWOoU1BvpBsX@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6211:EE_|PH7PR11MB7478:EE_
x-ms-office365-filtering-correlation-id: f1714ce8-8efc-4e44-65c9-08db8ccd247c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VBtbzFj8pFdsPIKlWqErmF2OG0Skjsi9Tby8cPqhnBOVzC961ktkcigOv/IYcNKHAEWhLgeu7iL+Twq2vzXuP4+UT2pWA6nL/h266DkVOy2p/hp0vi3jiNwyGHXqdx20hpXfP4Y22BWxkw9d+PqLgxjV+3lhoKIKh4frQEsxbAqHULRjsPolQR6W0qfC3arFMXeW+ddxC5+3vC1Ww5sqlp51Ah37+IC9A6TtOKS0FVF7mNZ/JwMYfxv87z3iWzYgVJmMZJ61Exchnfn0aU2XugS0o5wWCpJhWEd4hNSXqOX0+v1F9txynpAyyoD7OSBkFcW5EJkS2pVubFI3M4yaTZaL/T+HGalXQDY0BIxT75kz3NnGCcEPs4Xq/VBGXnE5wmDPBcvoLzRGI6eFnStEissjEGaV/jfb6P4xk9+9NrE4rPbu5ZIS0qtM3FkbxO1ZNfgvSA0bEO7M89ZJlMRs3zrmsWzv827pz6DQxqSN9RU9yVyaGytv98MHLmDq/7krmLrJn5r9/0thQPRF3EQs12JeQvAIFsrxL2kUTJJgJWZTNic0A0iKT+XgvMNodWNrZQuuiV4/UDL5D+bKbAtAob+OfJbpds3AR1S0DXLBkAGTpjZEPcxOfP61kEWRpwot
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(346002)(396003)(366004)(136003)(39860400002)(451199021)(38100700002)(55016003)(122000001)(53546011)(83380400001)(5660300002)(8936002)(8676002)(52536014)(478600001)(6862004)(6636002)(66556008)(66446008)(64756008)(316002)(4326008)(66946007)(76116006)(41300700001)(186003)(26005)(6506007)(71200400001)(9686003)(66476007)(7696005)(2906002)(33656002)(38070700005)(86362001)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+pbcvZZaZd4YIQrPc+e+QLPoQf+f1O2jGzwyG5tbH7Db4dTXBbviP3ob8o9A?=
 =?us-ascii?Q?J9vFOzQk1cRv6CqcWF+lfy7zRsOy+caGwOqQBEKwNkNKIcpFg6cVlhhaOqT/?=
 =?us-ascii?Q?ZJwbouBWuYoCmDSnSBNHJx45kyJnGNr7Rr6WlU5cRi6HD0g45oNkoueuzMmb?=
 =?us-ascii?Q?48tpzTcjcSxlEpYsy+ln5/2ibKj4JW8/eN/M5/mvAkqeegFGiw3pbFSI2gNY?=
 =?us-ascii?Q?KjplfsVKUpVA2aEcB18aS++VILve9iSoKumz0BvsW+G6c2T/WLinAq6viNR0?=
 =?us-ascii?Q?DRXAFeD4jBUgcU3jjjyFSK4uVYitcYavM75asJV6ZA2SVz/XBJf0WbIgjDzm?=
 =?us-ascii?Q?WvG0M5QA0WjBFWW6cA0nAhs0teuc8/N5fOnkKcCymFey5J+LLB4+aCDphjia?=
 =?us-ascii?Q?gdtFxW7XNatf1oK1W6Ncixy/OQTfMYkS2V/330ghzxO6luIs5vHpH802+9B+?=
 =?us-ascii?Q?vlVo1SvJxFTDkcQUqSrsUhQjroacejkJSO5W1PwbooLFGQA2AhUaXzq3no5V?=
 =?us-ascii?Q?7vTfTcfNK47FnvoqrkzTPzMq5k4sitEgxEqRUCbrwqpOx6r9WLyOVCjH0B7J?=
 =?us-ascii?Q?1Ij+ReqVlzJHX+hyYg7QZJDP2Vq9B4LvXA18Fv+zHPJQtKsBQyKQlPKLmZo4?=
 =?us-ascii?Q?/bgS3+moMfr+PgX4X5aFDEMnyMCj3PtQcE31DqskR4lLZSC0yDZe3DWFhFmG?=
 =?us-ascii?Q?GmFd4Wj4VUCxRF0IVktLpTEfW9QbIVhWfnLjzpLKSPtnOupGWJfN26Jtmzr+?=
 =?us-ascii?Q?ef7kAsQp9uJ1pjk/wZMenSv5GC2RBfkjl8oT+oeRgflJQaHm2t0ewbO/hSOJ?=
 =?us-ascii?Q?N6wxdk6Gdx26DD97XSGmS7JpEAytG5cKwzlEdMa9U6VcAE4KZCiBagROlwia?=
 =?us-ascii?Q?0clmSAJkur2xhrsXUuR3RBkmLq9DLxYOW5ifLq+TipCIabs1E+1AWwWXPYT8?=
 =?us-ascii?Q?Prc3yaN/4rWVaeYIUWLZ7WsuS0Wxo/7EeQI4OAQOjUd/lN0PaDKmfClyb3LH?=
 =?us-ascii?Q?qeeH2dto1UneeLoMXGz11FnV3NTTFKGCfCP0jHrZHHYH8NKL4jRFgRbbSYW3?=
 =?us-ascii?Q?pnFuv1FxH+0DGH7X8WK4rq911Hrfwmu48qWsiaRzpecxh2J/ar1mI2fxKjaJ?=
 =?us-ascii?Q?X+xBPbePDE9DowVhHeQubBDKEthoGuLQfVs8srH+kJ2AGrpSzYN9wUE8GprG?=
 =?us-ascii?Q?bbp3c4T0k1Cd6MzBJ0nzMSo9LqgZ+P0pcfoh7XAVs40dn9q7+p8V9Q6SMdRY?=
 =?us-ascii?Q?PY8f9P7LWjgfCNcZatW1fm3PkKkp/nLOocYQGNI0g39qt9TSZ8b50/UMx1dv?=
 =?us-ascii?Q?tdEWjVKBhYp9Qbd95msITJNaycdnOmYf2Nh+dmWNe8rj4HfRcBvGHe9/dWxI?=
 =?us-ascii?Q?lb01wBcvN3RofdGnWaeo4GrHExaRHCfYLR8i2p/yjej+e3vUi6MMRJ8aMMbo?=
 =?us-ascii?Q?/qTaKiLppc/zEC+/t5eNxE52dlSc3Xm4WiIJ+MNdYy8F8QZAMdSCb9pvkdi6?=
 =?us-ascii?Q?lo6lmcMQP+Ykd4gyClo+4KCU9ExpTlWtsYmmyGFj9FJ+qskvbo8JgpefGhTm?=
 =?us-ascii?Q?k7Xnk2RdEGGiZqtDJ550p23tqJakaFxhyXOHIVld?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f1714ce8-8efc-4e44-65c9-08db8ccd247c
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jul 2023 05:08:11.1188 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: G9reiU/8ek1jrh9oY92fX7zdeLvDdCgC0cWmXwAsXsBq2BKNK4p3tbvLTnSJ9zIDiD3f6Pynp3rxT+Jn2IOPeV6vViu8MI7MESNJxp1Br20=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7478
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/xe: Only set PCI d3cold_allowed
 when we are really allowing.
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



> -----Original Message-----
> From: Vivi, Rodrigo <rodrigo.vivi@intel.com>
> Sent: Saturday, July 22, 2023 12:30 AM
> To: Gupta, Anshuman <anshuman.gupta@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [PATCH 1/4] drm/xe: Only set PCI d3cold_allowed when we are
> really allowing.
>=20
> On Fri, Jul 21, 2023 at 03:39:35AM -0400, Gupta, Anshuman wrote:
> >
> >
> > > -----Original Message-----
> > > From: Vivi, Rodrigo <rodrigo.vivi@intel.com>
> > > Sent: Friday, July 21, 2023 2:34 AM
> > > To: intel-gfx@lists.freedesktop.org
> > > Cc: Vivi, Rodrigo <rodrigo.vivi@intel.com>; Gupta, Anshuman
> > > <anshuman.gupta@intel.com>
> > > Subject: [PATCH 1/4] drm/xe: Only set PCI d3cold_allowed when we are
> > > really allowing.
> > >
> > > First of all it was strange to see:
> > > if (allowed) {
> > > ...
> > > } else {
> > >    D3COLD_ENABLE
> > > }
> > >
> > > But besides this misalignment, let's also use the pci d3cold_allowed
> > > useful to us and know that we are not really allowing d3cold.
> > >
> > > Cc: Anshuman Gupta <anshuman.gupta@intel.com>
> > > Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > > ---
> > >  drivers/gpu/drm/xe/xe_pci.c | 3 +--
> > >  1 file changed, 1 insertion(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/xe/xe_pci.c
> > > b/drivers/gpu/drm/xe/xe_pci.c index 78df43c20cd2..0c4051f4f746
> > > 100644
> > > --- a/drivers/gpu/drm/xe/xe_pci.c
> > > +++ b/drivers/gpu/drm/xe/xe_pci.c
> > > @@ -794,6 +794,7 @@ static int xe_pci_runtime_suspend(struct device
> > > *dev)
> > >  	pci_save_state(pdev);
> > >
> > >  	if (xe->d3cold.allowed) {
> > > +		d3cold_toggle(pdev, D3COLD_ENABLE);
> > >  		pci_disable_device(pdev);
> > >  		pci_ignore_hotplug(pdev);
> > >  		pci_set_power_state(pdev, PCI_D3cold); @@ -823,8 +824,6
> @@ static
> > > int xe_pci_runtime_resume(struct device *dev)
> > >  			return err;
> > >
> > >  		pci_set_master(pdev);
> > > -	} else {
> > > -		d3cold_toggle(pdev, D3COLD_ENABLE);
> > >  	}
> > During s2idle , d3cold may get disabled if won't restore it's state in =
runtime
> resume.
>=20
> I always forget about that case... please disregard this patch.
I think , we can have this patch.
I realized that system wide suspend/resume d3cold need some brainstorming.
If device is already in runtime suspend state during system wide suspend, P=
M core may smartly skip device suspend/resume callback on Xe driver.
This wasn't the case on I915 driver as it explicitly disables those smart o=
ptimization by=20
dev_pm_set_driver_flags(kdev, DPM_FLAG_NO_DIRECT_COMPLETE).=20
Thanks,
Anshuman.
Thanks,
Anshuman Gupta.
>=20
> > Thanks,
> > Anshuman Gupta.
> > >
> > >  	return xe_pm_runtime_resume(xe);
> > > --
> > > 2.41.0
> >
