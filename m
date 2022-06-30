Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C1F715616E0
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jun 2022 11:56:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1473E113D68;
	Thu, 30 Jun 2022 09:56:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A96BE113D68
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jun 2022 09:56:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656582990; x=1688118990;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=r1lKc881GCDUEJQfTiU5OfRWp/qjoK0q7ywyEtBnDls=;
 b=mpOwIYWD9DQqL1RIe9DGrs6XoUQJjtipJxcNqiNMTzxTWx4lXHk1sBFQ
 ZV0m5KKcOBdZ5zUaXh9kqqmKRURPDIrtmGYYO3bWYka+rmtusjloEM/mh
 D9B0aUpugYcQb92xNzTZsoCT4nMqMa7HGAdHfLXa36xUs71ztHy9daTEY
 6t7JOY+DHixlCxmSUM9T8ZR54L7teaWlq4q533FxXFO2NoZBhT+i+LkJq
 rS3P0s0vJOxDef+2WS3P1xs9Dm+l7eZzP3cEmNbL7xx6bMYxWMUcipTzv
 /ApatT0vonLOHzdoEXftTFRE5I4169Gp4qq6/ZdeUhEg7p4lgH0uhB5iq w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10393"; a="307810351"
X-IronPort-AV: E=Sophos;i="5.92,233,1650956400"; d="scan'208";a="307810351"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2022 02:56:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,233,1650956400"; d="scan'208";a="658935272"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP; 30 Jun 2022 02:56:30 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 30 Jun 2022 02:56:29 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 30 Jun 2022 02:56:29 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 30 Jun 2022 02:56:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YUalYYUdD1xg+h74vtqBRQU14KhRt7Sy9n8yFI1HAlHs+QhXQteNbo2gTNgCiP5BDQ7Y47or4Pc0dAkVg62Zt61MBZ11Pf3rNM072sxgUgO3C10m72vUe8o8T8rGXqpbkdqf6fazGbx1FE4lyWnroEn00IOIrxK+HCTDe0T2QrnH9HmGhrY8rd72OXQcCgS+EQ06bLOcgibRnXUXwDZy9/2DzwpizxsZWyYEltsg7vXGXIwqFWovR0Yq+zqNoGAjLyVkkgO2D6ikYo0h5luZYcxO54tihM3qsaBrTyciKjXRpck5v2T0U2DBMOEaiK3R4A/O9XZL8oC34b9iQIKzow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oHqwbLm1Szj1yEJzAqeksvS2iw5TsNmC5eaat/Wj2eM=;
 b=n/GQC/umBkNMydNib13iD9II5x3Jlg7R8lY0VkxJ5V1bsv8EwVnlBw4WO+YMlWrJz4gpqKbnTQP2DWJxs2L37PP+/hOW5Cu9rvLusyhDg+apca4YCIf/c2sS5RLWAMjfNWUCtl/hRSXRaBXYT9Tc9iGaCvu0KIJBSCVTRpbtcvgWH9N4a7a6DA3AwgXQCJBtH2nhqMqFNB/DVTLvHNEdZrCdCDJ04BtqAAFshJblNR/vJZC9DZxlvuHCG3i80V+gnPNa1b0J++sTUj34X5D4d/OpTieXgPRRuj/Z25UsyC2WCUXzdS+gNzRxWi8U9navMkM02z2fZZ+Edq2171esOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 BN6PR11MB4081.namprd11.prod.outlook.com (2603:10b6:405:78::38) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5373.15; Thu, 30 Jun 2022 09:56:25 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3546:7df4:c8d2:1152]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3546:7df4:c8d2:1152%5]) with mapi id 15.20.5395.015; Thu, 30 Jun 2022
 09:56:25 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCHv2] drm/i915: free crtc on driver remove
Thread-Index: AQHYjE/ttYapa21zNU6JImNgVB3BLK1nklQAgAAP6ECAAA4FAIAAATKA
Date: Thu, 30 Jun 2022 09:56:25 +0000
Message-ID: <DM6PR11MB3177B8A6EEB239F74699D6F4BABA9@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20220630070607.858766-1-arun.r.murthy@intel.com>
 <87k08ypp9z.fsf@intel.com>
 <DM6PR11MB3177171F55430E985075F9DEBABA9@DM6PR11MB3177.namprd11.prod.outlook.com>
 <87edz6pkbh.fsf@intel.com>
In-Reply-To: <87edz6pkbh.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 34c3c0f9-fcfa-4b42-166a-08da5a7ecbc7
x-ms-traffictypediagnostic: BN6PR11MB4081:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: m47cLygzWN90iWA12z4iHaVp21SnHu4E4xTbDc6QwshYM8D1xU55yEr7WWzuQPN/sXSF5YtXBmfBkQOgNNWdtOCrs65TyV4Wc8pwW7K+QKabM2QrgITuxOXiwptgV9v89eFPlyK6Xyh29ZEm+/dQMYHVwC0ylwEPSvzmoBQXcdzIMJvn/YaHGZXNpGBEqUPYm0qvoI8NwttSpdS8eMngav1YuOqrEpROgn1DJl7ODbbmMCUxr2FmU5G+9gHPvpwphb/TPYg54SuHysk/qeBln1ap8dlnQ0JmC33/iejqC0SCTa4jzCgDJcL0Up4oZNFfyZ+Uf+g9Hi4SmCmGsF95JTKNpaEHpwH3GXT9bwhOO3o0nVhliFT8uUjm4g8QgegCJG4M98Nmz0hDOctVL8Ry7Tvsav9l7E11Erp0pOymkglcn4b/UL4DB7R+iS3jXSkxWLbjhiCyZ1ZADvwV+oT677s3bbbQTkKo1gG9gCbrJFFDNVLRILOBa+e8Qe25EgHoLNf8w+X43SPZcEgW27iDiEXT7Bs6HK6XLO6u0xjJxS3feSM6K4gN6dlRpIB2Fqs7g273fkEvNj3qtSRdYL0bgDSfaqdc33q9fvQWHMFbO8z18wg9brZd3Bfl+/YNfY1gyHgfyX2ahndGEwukv7FfiajTVr6NqlqmvY8MXscZ6qVvWkvinoybIKSLb/VnUo7Jg0572F9EX2gIabdxYXErvAuNnrVlWO9WCFxAJ9IjwjzqjNRDFG7Y23I+n247OA+TeOGjpIKa1ogwuoXj3ikDzrYAiptid485X1rswhCpGXTWzz/2nyJO+9Fh5Kuvop6l
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(39860400002)(376002)(396003)(366004)(136003)(2906002)(478600001)(64756008)(4326008)(66946007)(8676002)(52536014)(55016003)(76116006)(54906003)(66556008)(71200400001)(66476007)(33656002)(8936002)(316002)(66446008)(110136005)(7696005)(82960400001)(5660300002)(9686003)(26005)(41300700001)(6506007)(186003)(86362001)(38070700005)(55236004)(38100700002)(83380400001)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?HQOCA2olxUU4rS6MIyPKgXo6buMMS8Q9qNzOe+r6OUlNPAE+mMn5kPE/EcjP?=
 =?us-ascii?Q?VSbkEM+Q3xpSgvW5/BntgNI4w70H1pxAABA8QPM7UwoIubTeaBowyYPJg06z?=
 =?us-ascii?Q?8dahEFtx5P0dYcC8SapbGTzVtVlDhufmgFiiaCxX7znndRLx0cppPQEZpgRt?=
 =?us-ascii?Q?U0KukI+kmI1LPlaD+/sypXq92XrdmS6Ku0dV6tSyC8f2m2hcxvjwmdLhNAss?=
 =?us-ascii?Q?joSJLrHKOlBfKSZR7hJi7WL6v68/tD5QuF1+bCTXEyl4yHTt4c51P7SjfBqa?=
 =?us-ascii?Q?taYfYZxRVSSonsAy6x3t4aslmwkKxRq3ViEztEQ6odCAAFaWpctXpCawuBU3?=
 =?us-ascii?Q?vKHfo6k4VnQzG2obQ1lZCeYJxTKxDOJDZVAvxLoOFl/KtFrwndRU5QlioRXL?=
 =?us-ascii?Q?OLzjTO3LHwvUkCwvAqXoKhZLiawpZsqtRnIycckcuUFarYzE8mi+i9Hh71YT?=
 =?us-ascii?Q?OaqUE1fJc7tnHsWVrKOpo0Pk4MN4VjGhGZJfDv+t4t3sRQXqJFfAcdKNxbrI?=
 =?us-ascii?Q?GzwkVp9am+XCANi0Vfd0/f42tczVBythHkuIQBBcs8O8V4A8+++23Bd01QHq?=
 =?us-ascii?Q?+6rghzwBJaYL9RW6wymEEWf0MEHHRsdBxxsqrsDubU1yFK3vhNGTyIWxvi59?=
 =?us-ascii?Q?etUDd6mbJ7HZF1wrepnYtLlwu3m+40fnnLYljgoOfq0QfDtdyTspO2TIFRej?=
 =?us-ascii?Q?RmEGsetxxYuYYPF0tB4N5pLoRT5NMdZy56+J+AepxiLTygHKp/OkfWPfJY69?=
 =?us-ascii?Q?0Ar7XKe8GCLOuzgR1Cuw+NF2IClzrq1HNk9cRVarb6VQACvNOaVFIWJDWWpR?=
 =?us-ascii?Q?hhTWp5flwCGfWzZPfJo47pMRcS5/TX3O7I/SizKpCNoVM2D/4ZrCXl6ct/XZ?=
 =?us-ascii?Q?BZ+ZDX4KRhVvQZtg/U4W96YLym0GjZfqYEa4zsz4qSC54Z1k6n295odmV/7b?=
 =?us-ascii?Q?Frq/Xl7xXgb3uN3lBst6xKwMphWTHTGUjESNFMmcNLE//3Mz2rjnpWfRGIPN?=
 =?us-ascii?Q?V+MAU4dq8t36V0XNhU9MXAdb/7MtLgmG5ztgI4Z1lo71QvoDByQymnxKm5ko?=
 =?us-ascii?Q?N0/5P5qTKthjc1EKpjvyUQVZQcjyGBmYVFIzD4PBX1XM7cAVDfTM2HZsvYHx?=
 =?us-ascii?Q?BLQ++usXLWZHH+fa1CHR8W0W/UCosLhlG6sd/0f/mJOUeRFQYeQqeZCPgz8/?=
 =?us-ascii?Q?JY4notQyhovlXldhkcRNyQITlwr7CDNMQMJbWiV33RbFx6gSlkseKlXIxj0B?=
 =?us-ascii?Q?jkMqD88QxdTpYxQIjxiKWOtzaMi63TGukVfWBpHoojOvJHBV1FcCeqL912Go?=
 =?us-ascii?Q?b+3Pob/iLPkend9t09nJm4dCX/rSHRT6fJxzuFkORUtIvDlRDePXZiwrjXrj?=
 =?us-ascii?Q?c5/wX1IWRx092bB+K30Qj4Nqf1Rs1NSGiJC85AcKhZzC5+JCCMVq8YT8MFE0?=
 =?us-ascii?Q?JDwEZHGaJIWV/kLhQ/9x5OhVfnfMTWMTc0UhBMScGMb//azdHHl/JKY+4pxb?=
 =?us-ascii?Q?1WaE0s3rENIeWGP4OHALQR2OdiYFZw6OSt4+ncfUz/8HOYVz0pyk3Zse+pa9?=
 =?us-ascii?Q?JdeJTqS14pOiM7hsWP2ornbGgKrSVC16MY+upUfZ?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 34c3c0f9-fcfa-4b42-166a-08da5a7ecbc7
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jun 2022 09:56:25.7391 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: T4WYDaskH9x+9ZWTd9qIYDeo15BeMybnl643a0jTSMLXje8gzMTOz0QHmmQUPcqWP/9P9LZZ1z5U3z4tEJKbfg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB4081
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCHv2] drm/i915: free crtc on driver remove
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

> On Thu, 30 Jun 2022, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
> >> > intel_crtc is being allocated as part of intel_modeset_init_nogem
> >> > and not freed as part of driver remove. This will lead to memory lea=
k.
> >> > Hence free up the allocated crtc on driver remove as part of
> >> > intel_modeset_driver_remove_nogem.
> >>
> >> No, there's no leak and this is not needed.
> >>
> >> See drm_mode_config_cleanup() calling crtc->funcs->destroy() on each
> crtc.
> >
> > Sorry, I didn't notice this function.
> >
> > intel_crtc_alloc() is called as part of
> > probe->intel_modeset_init_nogem->intel_crtc_init
> > on similar basis cleanup/free should be done in  driver
> > remove->intel_modeset_driver_remove_nogem->intel_crtc_free
>=20
> It's just an error prone extra burden for the drivers to take care of thi=
s
> manually, so we have drm_mode_config_cleanup(). Which also cleans up
> encoders and encoders etc.
>=20
> > Does this look cleaner?
> >
> > Kfree(crtc) which is called in crtc->funcs->destroy is intended for
> > cleanup and hence
> > drm_crtc_cleanup() is being called from intel_crtc_destroy(). The
> > comments added in drm_crtc_funcs say that cleanup resources on destroy.
> >
> > Again looking at the driver design, intel_crtc_alloc is not done as
> > part of any drm_crtc_funcs, rather on probe->modeset_init_nogem, so
> > calling intel_crtc_free from remove->modeset_driver_remove_nogem
> would make more sence.
>=20
> That would add another ordering dependency between calling
> drm_mode_config_cleanup() and freeing the individual crtcs separately
> afterwards. And looking at the cleanup code, I'm sure that's not what we
> want.
>=20
This is for sure ordering and not dependency. This ordering is being follow=
ed
all over the drivers across the kernel. Just like simple probe and remove.
So the usual tendency would be to see as whatever initialization/allocation
being done in probe in the same order deinitialization/deallocation being
done in remove.
Usually in probe multiple initializations are done and so on each failures =
a goto
will be used to cleanup the respective initialized stuff. Eventually these =
functions
mentioned in the cleanup under the goto will be the one called in remove.

On similar basis I just tried to depict the above flow for crtc alloc/free.

> Moreover, drm is moving towards managed initialization, which means not
> having to call drm_mode_config_cleanup() explicitly at all. It'll get cal=
led as
> part of drmm managed release action tied to the drm device. So really,
> calling kfree as part of the callback is the natural thing to do. Indeed =
it would
> be difficult to do it anywhere else, for no benefit.
>=20
> > Also, looking into the func intel_modeset_init_nogem(), the func
> > intel_modeset_driver_remove_nogem should be renamed as
> intel_modeset_deinit_nogem().
>=20
> The cleanup naming comes from them being called as part of struct
> pci_driver .remove callback chain, and it's a useful reminder.
>=20
Yes agree even in that case, the function name should look like intel_modes=
et_remove_nogem()

> Also, the intel_modeset_driver_remove{,noirq,nogem} functions should
> *not* be considered 1:1 counterparts of intel_modeset_init{noirq,nogem,}
> as the init/remove are asymmetric around irq and gem.
>=20
> Sure, there's work to be done in cleaning up the probe and remove paths,
> and further trying to separate the gem and display parts, but that's way =
more
> involved than simple renames, really.
>=20
I agree and understand that, but wouldn't small cleanups like this put toge=
ther
make the driver cleaner?

I am not trying to debate, I have added a new allocation function in intel_=
crtc_init() so
the deallocation of that should be done as part of crtc deinit/remove which=
 doesn't exist.
I just rolled back to the caller of intel_crtc_init() which is modeset_init=
_nogem and also
found modeset_driver_remove_nogem.
So though of cleaning up this part.

Thanks and Regards,
Arun R Murthy
--------------------
