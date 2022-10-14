Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6EED5FE7E1
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Oct 2022 06:13:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE13B10E41C;
	Fri, 14 Oct 2022 04:13:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E8E910E41C
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Oct 2022 04:13:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665720795; x=1697256795;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/1zqs+8DKdO6cK99KvAP0/ABJbMJWYMeuub35AKlyrg=;
 b=T0z+xjMifVb9UxD3WKOfibT0ZExg4P/mS4DqBJIK7kf1r1nE9SpqsAhg
 xCjY+lCbdqCq9EoHtDi6prTH2B8w7Q9fwBm9AZWiXoThMzG8xUME4d4H5
 NGj+SG+4AzQgDOaXfdxE4HUtSWoZcMlpKaZb6WapToEOLT/5sU54mkftB
 qLRx/u2BTQvWVfiUjEop2s47DO7IynzrL5AQN5HAkWc6C9jnYKpLGipox
 GRRAOkigTVoGPJOzXZ/CraEOMM1kAottwrZY3zeXY1lxAyJ5ScfOFSbtt
 G8o3nRBZRR/tpqoB4TW3Jjj6ha8VjN/eNLKyHhcnkNShILLDK2SxKTmpF w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="306926269"
X-IronPort-AV: E=Sophos;i="5.95,182,1661842800"; d="scan'208";a="306926269"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2022 21:13:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="622404907"
X-IronPort-AV: E=Sophos;i="5.95,182,1661842800"; d="scan'208";a="622404907"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP; 13 Oct 2022 21:13:14 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 13 Oct 2022 21:13:13 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 13 Oct 2022 21:13:13 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 13 Oct 2022 21:13:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ABqB0Vog0NNU4hqpVcZlBY/TQsrKxWmZjQImhKzjuZEeKE/mujV6KKuDbUPZT0iFUbNZ3O6h9azFW5l4mwYJrgIEt4r8tRLlctNVYx7UoksyqzXo+Lacr3E4kg3+0tNT2ZiiI/p+zJ9a4APfu9gtf2CEU7sYekS4dE5t3f28/g+532SvY9ur3fUV5ltugZb9GPqJhBAjZ2v3/zaqw/tIM2QM3CwxK08pxWpWMtzvNunSa9NFQXqugMcwvK4cMuoVej5cU6C7a7p+MCdr14Uo4ebh20Gf49R1anubJ2bYRrrXT50bb+ACn3+fwQL1sOTK8klMW73Qolc+PN1srMBN0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TYohUz3u3UE0UyB9Z9XRBUTJUYEmbgyidpORtdKN88I=;
 b=CU0U0AmxUgoBthPDKIkOwPhfeXVsQjJMBvo3shISztkTB1OM1HNnfGKyeS6YvQK7y8mxLTgX5rlnV5XvsuVReocuawLY/ub68hR6YlSK3so5j0K0dc1Y33BkJ86Jtd5vjDi36eCAqC1Aic7m4rth5pXif3L6xp3quQ54g6Mo//PnPsStfZNcRXfANVDKBrkC1Smv/3PQBU7HSzS7LrOtbiT3EUQSvifoZryoheG0N7z4UQRQzPNak9O0vMS/YsE2Dj2VKqQm0p0QDtFhs4U9VB+L4R/W+FwlTB+MCcUdpC4pSnoMZO0W0WUf+nTVAFURD7+BT+JC5Um07bRl3F1brQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by DS7PR11MB6272.namprd11.prod.outlook.com (2603:10b6:8:94::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.29; Fri, 14 Oct
 2022 04:13:11 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::6109:fe60:7e0c:f02]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::6109:fe60:7e0c:f02%9]) with mapi id 15.20.5723.026; Fri, 14 Oct 2022
 04:13:11 +0000
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>
Thread-Topic: [PATCH] drm/i915/dgfx: Temporary hammer to keep autosuspend
 control 'on'
Thread-Index: AQHY3hVzPcDlo0NIikyM6xXPlXWgZK4KjhaAgABMgICAAmsakA==
Date: Fri, 14 Oct 2022 04:13:11 +0000
Message-ID: <CY5PR11MB6211D56F0BDD0982F44DC22A95249@CY5PR11MB6211.namprd11.prod.outlook.com>
References: <20221012083402.1069940-1-anshuman.gupta@intel.com>
 <166557040585.17580.5212685833257862558@jlahtine-mobl.ger.corp.intel.com>
 <Y0bWkQwb6ALdGED9@intel.com>
In-Reply-To: <Y0bWkQwb6ALdGED9@intel.com>
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
x-ms-traffictypediagnostic: CY5PR11MB6211:EE_|DS7PR11MB6272:EE_
x-ms-office365-filtering-correlation-id: cc0e5d6f-b6c1-44cc-086a-08daad9a6835
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: B3dQR4lmM4e3t29+c09zhaxIF+x8zKG0xln9eWnGvGhFaOy28T1EZ/Kg9yTZQyW1WA11+uLM65DDb6yUmTihqBo1YGIm1G4zpkHyId8vLqyfN0xcdhzwwfck8i4AhNQmkNVttaQutyg2k4ICzivAVFOH5/WmCDBT8ORq+CtwYploj2K6mVALpePp0lf369kHMxcFMi9iaOnr1lC5MuELYC/0ZkG7u3o4AggoQanKTjs3rGUIaqGrb7lbKpXDPcfyGAaG/AVdvxyXxrRy3FNkNPbkY71PcDB1YXpYUfhn6ZwzrFnFUYIm6eVOyLv+vlDA7EuI9sYyBdSS54CxQ3Ws6FPEpqTF55X2cB86iSsxY++ScRZdp3EGcNn4w+L8FRj6K3IO3iy39d9ediXE4KOlQV7/gpi3tvjW7+QTVQI/S7mA8r7vi5K/P3nyizDNINOnEVBFsw0O4kp60ncjFrh9jGi+CGTeALZ5dAVs5DY1+LYwlIaHY1zJMPywq41NbmgRzYdgkwPNB9HM/a5isiFj2ZqPidgOArX+OBodKzkQWyvOuGjk9RYR1LNLHLuf+Wi9toOajSnZ7aL7cLpw/CwrXGAG7wcJBGO1iZfSH7d0PqqpHoIc0V7L1z/PsK6M9sWsTalQhYauf+jIuxqKXL2fSM6dZrbpUC3RZoBG0a2urkwUYS11A3Ltny1S7Smsjy2HkfoxRC7jzdJBSljt6x0ZGQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(39860400002)(396003)(346002)(136003)(366004)(451199015)(55016003)(33656002)(38070700005)(53546011)(55236004)(41300700001)(26005)(6506007)(7696005)(9686003)(76116006)(71200400001)(66946007)(66556008)(66476007)(66446008)(64756008)(8676002)(4326008)(478600001)(38100700002)(82960400001)(86362001)(186003)(52536014)(83380400001)(8936002)(5660300002)(110136005)(316002)(54906003)(122000001)(4001150100001)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?5OSdWQlUyMFX9/c1cM0TTu+NVshO3QeLMN9lZvaPsYdyQ85aOWjr8FMivYUe?=
 =?us-ascii?Q?QOqx7964f8sgqkB2BMHzO6rEb/aI+dGeBc8FukYmBWKPkEQ98p1w0OztW4Wh?=
 =?us-ascii?Q?6lfA6eccqfnJmosWaK1aUNl7LCGKl++2rM1RaEPfSOOhNhoD/Yk+XeL1wsP7?=
 =?us-ascii?Q?hw+pFM1yzlAMDa1SsiHQ8QNSYt4Q3Ao1/+hupkWDQZtoNth5dTuEqQTnl/Rf?=
 =?us-ascii?Q?u1QnYGnmz6BAs+9md+ujjpUPcOjHdS1+h1yGTz6QozG71bIB84DK1Wtkvmnb?=
 =?us-ascii?Q?9PJLSk4u7H+9k9FKao2keYSp2sjYcAZ4fnfmFDzVJDJsVVVmqyH4OXppzJaR?=
 =?us-ascii?Q?Nu9ICxSvjmYl0NnXG4/Mc+F9yXAxh9g9hyPT6f2EbqvCkCV/LC5jSp8ytJ1r?=
 =?us-ascii?Q?RhQpbkcQt6L6EscIR11F0xc+gAo3s+0k+8+FzONXe/W/0ZoxPYNAK8+Ty3Ro?=
 =?us-ascii?Q?AiFU8dfgtbR8qKbWJGpeEg0edbSIFAOmC6t4nobuRSIRaTlQUaO17ZxF5CCN?=
 =?us-ascii?Q?WisFOeig/rJNoLpxbHqlL6EN9205U9FGhre/PPiMaoeAFn4ouSVLPPl5/Htt?=
 =?us-ascii?Q?BSEmhs0HvsLDDtf2DDUIQbdmalm/835+hKJ/i9z6H2ECuXGPmja/ix4Mhmx9?=
 =?us-ascii?Q?cKXzDdycypuuLm5imR2VN6FWB/BORwzomjB+AYVT/8EVN38ukdv/A8fOA4rU?=
 =?us-ascii?Q?s75PApORs9BMecZbZbLZwadr37QqXPFCErTQcHzDRmOsgHUT6YigyjSVDMqp?=
 =?us-ascii?Q?96JGg3Q7/CqCg+PiUg3eOGjsUkzXGgo5qmsaBCmAvRPJ+QL+T76rZzB7xZix?=
 =?us-ascii?Q?VFD20dEXnSp8IvxVMgsmdYuR6ts264pZilRQDseLUqMgU0VBu08c4gdwj0ts?=
 =?us-ascii?Q?tiPwNeJctP8+8+LbEwHt8Vgc5nXIsBYNIIRP5Wkl9y3OjQCnSTqZZWQOw2yZ?=
 =?us-ascii?Q?i8tPc3qE0dvn1Rfg+wOCToOZRHg0xAYo6ZnELyHTGLpn19DZy0u61/Fh1vBU?=
 =?us-ascii?Q?2tccl1fitZtLGjFqYC4gGycBWi7YmOHlCDzvt7y2iDQwhbl51nLPe/XtRdKB?=
 =?us-ascii?Q?i3DzxswhZIlE0rEU/FFNYaruE1XHwOuBsxJdDglSuHzMp1NmkA/445l2J/oM?=
 =?us-ascii?Q?gUpnbe5Cu1tZRlw2OSwQw3IHwn3G1QchcaeQCJKv0Nm5SJi0gheSX9IufVEs?=
 =?us-ascii?Q?8pP5oct3ggOE+upZi/wzwJesSyKjc0lUEFVo+mzy1b7RjLVvJZ/0LfDiKXlw?=
 =?us-ascii?Q?wQ04DhgwpaSwGbwxN1J2KJwwZYsxktq9HuJsw2Xygk3IFPqVd91vTxeFBVfZ?=
 =?us-ascii?Q?muw5TzBCOt04h0xrBNu9Ds+2bXL5b2ZBi/pejDQPt7UBopQlA6wkd5glHaRe?=
 =?us-ascii?Q?NJqnZJw7NnHjOUUVr1Kr7qO/5bU8jNE7MQZNO8uYMDb+d509Sx2kiBHbpQ39?=
 =?us-ascii?Q?V6+1ZhuUaU4mVEagB/rlBPMwyhG7b2jmjMPvKnoFE/GWa8NP/NzcgxvOTErU?=
 =?us-ascii?Q?ncuecEStE+9U9l8pDCo3+QbielAdt2Rwtl0vY8HU7ZqBCS9ISk3jxmw59xt4?=
 =?us-ascii?Q?nNht3zP7v9FhXD0r7wnUTwM605Q67uWme6U/rcGU?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cc0e5d6f-b6c1-44cc-086a-08daad9a6835
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Oct 2022 04:13:11.0596 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EloTWKvQZbNxvmemDUJl1AtZAzgyqiWoc8Bzsy4tdWmHj9LifkY/4MGHzGNqTN+pPuaSBrHoE6AM9LprgGEUEXtFkJ+DfuLD/LdqTD44KOs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6272
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Auld,
 Matthew" <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Vivi, Rodrigo <rodrigo.vivi@intel.com>
> Sent: Wednesday, October 12, 2022 8:31 PM
> To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Gupta, Anshuman <anshuman.gupta@intel.com>; intel-
> gfx@lists.freedesktop.org; tvrtko.ursulin@linux.intel.com; Auld, Matthew
> <matthew.auld@intel.com>
> Subject: Re: [PATCH] drm/i915/dgfx: Temporary hammer to keep autosuspend
> control 'on'
>=20
> On Wed, Oct 12, 2022 at 01:26:45PM +0300, Joonas Lahtinen wrote:
> > I think I commented on this already, but the patch subject should
> > really be as informative as possible like: "Disable PCI runtime PM on
> > dGPUs" as that is exactly what the patch does.
>=20
> +1 here.
Hi Joonas & Rodrigo,
This patch don't disable runtime PM, it just keep autosupend control to 'on=
' , user or IGT tests can still enable autosupend by writing
echo 'auto' > /sys/bus/pci/devices/bdf/power/control.
So I believe I should keep the subject something like "Keep PCI autosupend =
'on' dGPU"
Other similar patch (https://patchwork.freedesktop.org/series/108477/) will=
 disable the runtime PM completely.
>=20
> >
> > Also bit unsure if the Fixes: tag should really point to the runtime
> > PM commit but maybe instead to the introduction of LMEM commit.
>=20
I will remove the Fixes tag and replace it with introduction of LMEM tag.
> indeed. if the runtime_pm by default came earlier then the LMEM, the
> HAS_LMEM() won't even exist and it will break the ports.
So here I should use IS_DGFX() instead of HAS_LMEM() ?
Thanks,
Anshuman Gupta.
>=20
> So, I'd say to go to whatever patch is the most recent between the 2.
>=20
> With those changes:
>=20
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
>=20
>=20
> >
> > Regards, Joonas
> >
> > Quoting Anshuman Gupta (2022-10-12 11:34:02)
> > > DGFX platforms has lmem and cpu can access the lmem objects via mmap
> > > and i915 internal i915_gem_object_pin_map() for
> > > i915 own usages. Both of these methods has pre-requisite requirement
> > > to keep GFX PCI endpoint in D0 for a supported iomem transaction
> > > over PCI link. (Refer PCIe specs 5.3.1.4.1)
> > >
> > > Both DG1/DG2 have a hardware bug that violates the PCIe specs and
> > > support the iomem read write transaction over PCIe bus despite
> > > endpoint is D3 state.
> > > Due to above H/W bug, we had never observed any issue with i915
> > > runtime PM versus lmem access.
> > > But this issue becomes visible when PCIe gfx endpoint's upstream
> > > bridge enters to D3, at this point any lmem read/write access will
> > > be returned as unsupported request. But again this issue is not
> > > observed on every platform because it has been observed on few host
> > > machines
> > > DG1/DG2 endpoint's upstream bridge does not bind with pcieport driver=
.
> > > which really disables the PCIe  power savings and leaves the bridge
> > > at D0 state.
> > >
> > > Till we fix all issues related to runtime PM, we need to keep
> > > autosupend control to 'on' on all discrete platforms with lmem.
> > >
> > > Fixes: 527bab0473f2 ("drm/i915/rpm: Enable runtime pm autosuspend by
> > > default")
> > > Suggested-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/intel_runtime_pm.c | 11 +++++++++--
> > >  1 file changed, 9 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c
> > > b/drivers/gpu/drm/i915/intel_runtime_pm.c
> > > index 6ed5786bcd29..410a5cb58a61 100644
> > > --- a/drivers/gpu/drm/i915/intel_runtime_pm.c
> > > +++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
> > > @@ -591,8 +591,15 @@ void intel_runtime_pm_enable(struct
> intel_runtime_pm *rpm)
> > >                 pm_runtime_use_autosuspend(kdev);
> > >         }
> > >
> > > -       /* Enable by default */
> > > -       pm_runtime_allow(kdev);
> > > +       /*
> > > +        *  FIXME: Temp hammer to keep autosupend disable on lmem
> supported platforms.
> > > +        *  As per PCIe specs 5.3.1.4.1, all iomem read write request=
 over a PCIe
> > > +        *  function will be unsupported in case PCIe endpoint functi=
on is in D3.
> > > +        *  Let's keep i915 autosuspend control 'on' till we fix all =
known issue
> > > +        *  with lmem access in D3.
> > > +        */
> > > +       if (!HAS_LMEM(i915))
> > > +               pm_runtime_allow(kdev);
> > >
> > >         /*
> > >          * The core calls the driver load handler with an RPM referen=
ce held.
> > > --
> > > 2.25.1
> > >
