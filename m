Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44DDE57C347
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jul 2022 06:15:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3F1811BBF8;
	Thu, 21 Jul 2022 04:15:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 932DF11BBF8
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jul 2022 04:15:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658376926; x=1689912926;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=R2sXebQAe2Y6H8nTDWhfwJ3TUw9ix6rDAaYAdZAic9I=;
 b=Af+6QllFGCK+G0aAHAkrUtX1OJ85xYjkuVj3cUH0k/q/gRkdglYUZWGC
 piOi5qtcJ4tgt3zTeeQ2q9FFTEV0MKi81r/sGFmQD9NQIkjGFDTsQLTX2
 elUBWGAfgbaRkTAGjCMvaaPVHoFVZiifmaohLxVD4pd48eHiYLKPoR8G3
 HY/GjYyPH6NVUv+HmKJWL4pVzUBZn6nyVYwT1a5P/Ci++gmotF0tdCJ5m
 BSEV2mQC7JO75V2T9hzn0b1/2hZCp2DlKG2TshvPVpad4cQTFBBgciC+i
 NE7ZLXk18zdHipwsYqLpWHiwmMwjfK/YJ4ojAlKuaEne0ZoUzAzYe/Fz3 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10414"; a="287694219"
X-IronPort-AV: E=Sophos;i="5.92,288,1650956400"; d="scan'208";a="287694219"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2022 21:15:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,288,1650956400"; d="scan'208";a="548624841"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP; 20 Jul 2022 21:15:25 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 20 Jul 2022 21:15:25 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Wed, 20 Jul 2022 21:15:25 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 20 Jul 2022 21:15:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e9JLV5hfuvaxDPehgLzPwN82G2NBYbTVag6s0R/UfY1opjsyCPNb/W8W5Rbxs0OwoQM/Bc6qjkwVCVl/UVB8GGxCWLUUCq1IXeySh8a65/aTZF5oTJwXymoX+Ugjo2YA24LzIFV8u2WRV4Cl8HZ3moExmKR2fkDklUAJ520bnI21Nx8kBCHPuZlXG+CFRCMYl44wpsqRgurkSskr9tLMf52U+kEv0S5xcmk70wwQDxaC4BoAx9L17m5lPV3nzEdgqzpECg93sl2XWPHb71+g1ctM4wrwC6BYoAKtkA92uLkCE4+hX5fNyUBy5ciQ0+VPdd57Fm/AVzPUUIG637HhGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0LUCVbyFL/XNWbxxaOS8n59eY1aOXkM1neS2UPCQUhA=;
 b=UMJwi15MrdTiq6ANi9OM3SP/yxxoKJKrWFEwVZYwjiCKW8USDuKIvoGndb4LWHax3ouRhnNqiyi4lI71BSrRPG7SXe3UvyOk5A2FT/c7ZTZXkimtNF6rDaOzGJY5sA3ZtlE5buZulPY8xnwLDb2k8BhMAIbnldqHnzzC8loWumFJQfUWatEuWwS9ZeQ5KSZBgD19a2aO3RX++b1SgxMuNczGyeJgDSU/gemV8h8FsqSNdSwrUuvw3BCn2TAUafgIrIEZMFr4Pqe3KGl2jH9ta/Hr54go50L97O22IkFQYsosORo/QkGnmOPdg6KLsX6639tqb4Dzil2VGCUuzOLiiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by CY4PR11MB0007.namprd11.prod.outlook.com (2603:10b6:910:79::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5438.23; Thu, 21 Jul
 2022 04:15:23 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::bc53:d92f:33a8:110]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::bc53:d92f:33a8:110%9]) with mapi id 15.20.5458.019; Thu, 21 Jul 2022
 04:15:23 +0000
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Thread-Topic: [PATCH] drm/i915/dg1: Disable D3 for gfx's VSP
Thread-Index: AQHYnDu2ciNVLzaDfE6TTOmYxQID962HSnwAgAAi4cA=
Date: Thu, 21 Jul 2022 04:15:23 +0000
Message-ID: <CY5PR11MB6211659444EA312DA88C6E7595919@CY5PR11MB6211.namprd11.prod.outlook.com>
References: <20220720132137.18312-1-anshuman.gupta@intel.com>
 <YtgLLKqHishubmla@intel.com>
In-Reply-To: <YtgLLKqHishubmla@intel.com>
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
x-ms-office365-filtering-correlation-id: f6091316-cbfe-4658-9517-08da6acfa1e4
x-ms-traffictypediagnostic: CY4PR11MB0007:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6s4/m+bc+o0FHf/hZkQ1F6XB7542m4m9Bng8bcPNM1U0DaeodxE6bHEyKbBCfwKODDUoqmOUTK4tOknmUPZVqH8pbMJNjMU3odcYNcFNyzrcnPDW3UGJZAR1ZZqdcI01KdqOgs7WYN/sEzFTay9lSuMnO+yyPKujRJ92q9p7EmvftbLT+r3I3YD3gxP/nWR5PXyk5vc0harKo8aX3N9T3q1RfTQfKRS3olbdPannKZ7shJb6dsPGbeMInUP4m4K1QzDzSBqqRkuqHPMHXXoGXjCFhhmtqlbTzh4gvcq/whriyBIOZAXpKGh/4NlGcbNjyv+SLWcb9zp2Y8/XTKVWWexnjt3U6TgWN6QMVSTTmL0eHgYxls/TYtU7O7gp72w4EkR/cEPZdX+PHO/JdSCARImq2ujqJxuEHpdk7W0qoRcgYmfaZTq4QbpwDvPby60QfOvryNoTWOif6v8xwWuBjI0qB8KGh1K3lwjmRidEXVo92rRZ4/CKEItvbwPHsZqBUgb63hnBsyJ1JQJK5L1hKBiKF3xiffpCA1lFdIo5eOYPe1IHhQB9IKgqL3YTr3xGrREe65qDRbqnb9XJiE24r8o0xJ/sKlRfaMA1BtDBpJ/ZKteZKsp2d7v8fp7nzG1MHswZcp+ICJQ44zqM16uMgfuUk9/JaL+80zyhCf4EUlZntJolFI+5csXFDjN0vTgPnLX8Kzav6wiG6SsGURfanb3yNCQORM9HrnhYnAlx2Qc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(346002)(39860400002)(396003)(366004)(376002)(64756008)(8936002)(316002)(33656002)(66556008)(66946007)(83380400001)(86362001)(55016003)(4326008)(66476007)(66446008)(2906002)(55236004)(26005)(9686003)(53546011)(122000001)(52536014)(7696005)(38070700005)(41300700001)(6636002)(54906003)(38100700002)(8676002)(478600001)(107886003)(82960400001)(6862004)(186003)(5660300002)(966005)(71200400001)(6506007)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?tW345umn9o/4xiqXVU/Ft6eoQwcj4efj5wi0weuf7xP4Xxdjbq6Rwu8mp+Ss?=
 =?us-ascii?Q?GgzvOnNhxS0GkgBxV/BbQQUOVY+nf4BeGqzKAPTSis8OQM9+Ygfg4FioOSSN?=
 =?us-ascii?Q?AW1F2N7EFG6/HCDI6QN1QqvVttwFxopmXxRBBA2EYCObWDQC7nlfa5yN/nEV?=
 =?us-ascii?Q?aDAI8r/TrU1ymh0ddZO7JtLJsqXhL4NYNpKTyNrN8o0bUBmyC8ueqE91wQpd?=
 =?us-ascii?Q?0+gtFADQoqV0gXJpQnBwws+xkukNZDkE0a9dvmXwKHAluAUI6ibX+xK7ATHd?=
 =?us-ascii?Q?JAmU2XpZjpU2eGeYmAevmPhGOW+pI/UxgmM2SsFjrTsP+iJAMbH191wZYEk5?=
 =?us-ascii?Q?6oVn1njxKR0l8xPORax4DJsZSwOjAnAzovlGDWBmmRoupUxNpu4WjhjzEbh7?=
 =?us-ascii?Q?cq2tpeybYr2uvfjEEJRhWuunN3GSWarSjpXcXiWDN02qyMVS/AipLYSU/71p?=
 =?us-ascii?Q?IgzLHCT7ZvjIQtBArJR1YA2yodONnkG4OP+NWXOA9Uwvzq7wR8nsE4MTYgt3?=
 =?us-ascii?Q?SEsqxcSP6wtu20tYl13WBMxIg8Y6FbPAsmXWuCg0cLvbSH5SopBBx6jz62nH?=
 =?us-ascii?Q?iYQs9zQtQ9bqczknL+wvtyr5jzGqFGC/12SxanCGpbzbcQW05F8YP+q1JSiW?=
 =?us-ascii?Q?pjbo3fTnWN8+dPm2htftJmE7hWp1IopH4pcJbpwi3jvqKhd05M5IcSF7Psbv?=
 =?us-ascii?Q?d12TqbWS8jijxgQLx+snnPIgvhw6+32kYzDUwASvwhCDJh03Fw1XuhnmPgA+?=
 =?us-ascii?Q?AOxEgQ3hsRprQYO9qVOqRTSO07gN8P/Wm0bR2joBCstBWtXtkIbSyZisuMyI?=
 =?us-ascii?Q?Y/5nDpkguzNHejpWiB/iP89bFxuSgJsr7bw4TN9Ab8I1N+Zl7H+pgHfToP5w?=
 =?us-ascii?Q?bMx7ER1M0oqsPhlpRucP+htmVJwoKqp5dj3oIFqQ1jOGyZT3XfsL2u0gb1+h?=
 =?us-ascii?Q?p0U6IYsOlp8HIbxQr0pvckQc/LUDgYLPld1UOs0VKGsgwSzDLzd9SF46KBvr?=
 =?us-ascii?Q?YE0skv0bLtrEAXJWxYWS5mPxv/z867DaBtUQOsM9/9FD7Hccg2ztnH/NbY4J?=
 =?us-ascii?Q?AK3qwhJv9kf3iMPJe/3A9WhpyBEEH0s1dnmdGk02oRwE0MfcOn02upYCWQkI?=
 =?us-ascii?Q?nM5iyuK6pdQCFJPM/QmQRBjHp5JnNzru5OuuRdbHg5So1up23pHLEbStGMnU?=
 =?us-ascii?Q?GTh1iEFGbSDvt7P0ZUHIEtgD2cD/Z58XWn5J/IR+kzMwSZ7wioSKLUc2Qogd?=
 =?us-ascii?Q?Z2tlv250AHae05hNM+tX0VwFCN8bPQjGcl45zcFp/9hbOwgIcDiAfLB2fb5R?=
 =?us-ascii?Q?f0rXOx1v6qqcxhRQKDiShU+cytmlyT1BiJFH/fVAD4nmYhkbqF1rE5Ew0uMK?=
 =?us-ascii?Q?RUl+e36+Wd55iyiY7cRIs48mteRDwiqNw14kUlHpdaUT9Abp3g8nu6muDsrj?=
 =?us-ascii?Q?pxpCQmohWB1pauPYWJ9f8XvNn/sF7MDTh8njfC1Cj8KKGdLiWRiT9N8/ArGW?=
 =?us-ascii?Q?QAynS+6i2uXV6VwbfGAXZt85+2NOkz6jaTbW?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f6091316-cbfe-4658-9517-08da6acfa1e4
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jul 2022 04:15:23.2608 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IcfyAsYH9qu6DNwa2lg01p8uZvDxKI0EbViwK7MPBb9wNyT2Aw/OCa4KMaFlAECkq6QEcpfU71nQXRmt7Qxl50qTDRAISf4TSj6Oseq+4oo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB0007
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg1: Disable D3 for gfx's VSP
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
> Sent: Wednesday, July 20, 2022 7:33 PM
> To: Gupta, Anshuman <anshuman.gupta@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Summers, Stuart
> <stuart.summers@intel.com>
> Subject: Re: [PATCH] drm/i915/dg1: Disable D3 for gfx's VSP
>=20
> On Wed, Jul 20, 2022 at 06:51:37PM +0530, Anshuman Gupta wrote:
> > When DG1 gfx pci endpoint's parent upstream bridge (VSP) enters to D3,
> > any direct memory read from lmem returns with 0xff.
> > DG1 requires i915 driven runtime resume in order to read properly from
> > lmem, DG1 is unable to wakeup from local memory reads.
> > This may breaks using mmap() with lmem object on DG1 as it relies on
> > mercy of i915 driven runtime resume.
>=20
> why our disable at root_port not working to block this case?
> If the root power is not at D3Cold our power shouldn't be cut and our mem=
ory
> should be there.
This is not d3cold issue, there was no ACPI real_power_state means d3cold w=
as not supported. =20
the issue here is reading from memory is not transitioning the d3 -> d0 on =
DG1.
As far as I understand , reading form mmap memory will not cause i915 kerne=
l wakeup.
It will be a device wakeup (D3-> D0) without any i915 runtime resume,=20
If we force dpms_on before accessing mmap region.
It can read the valid data from lmem.
Thanks,
Anshuman Gupta.
>=20
> >
> > Let's not break using mmap() for lmem object on DG1.
> > Using pci_d3cold_disable(i915) accordingly to disable D3 for upstream
> > bridge.
> >
> > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6331
> > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > ---
> >  drivers/gpu/drm/i915/intel_runtime_pm.c | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c
> > b/drivers/gpu/drm/i915/intel_runtime_pm.c
> > index 6ed5786bcd29..671009fd351a 100644
> > --- a/drivers/gpu/drm/i915/intel_runtime_pm.c
> > +++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
> > @@ -559,6 +559,7 @@ void intel_runtime_pm_enable(struct
> intel_runtime_pm *rpm)
> >  	struct drm_i915_private *i915 =3D container_of(rpm,
> >  						     struct drm_i915_private,
> >  						     runtime_pm);
> > +	struct pci_dev *pdev =3D to_pci_dev(i915->drm.dev);
> >  	struct device *kdev =3D rpm->kdev;
> >
> >  	/*
> > @@ -574,6 +575,9 @@ void intel_runtime_pm_enable(struct
> intel_runtime_pm *rpm)
> >  	pm_runtime_set_autosuspend_delay(kdev, 10000); /* 10s */
> >  	pm_runtime_mark_last_busy(kdev);
> >
> > +	if (IS_DG1(i915))
> > +		pci_d3cold_disable(pdev);
> > +
> >  	/*
> >  	 * Take a permanent reference to disable the RPM functionality and
> drop
> >  	 * it only when unloading the driver. Use the low level get/put
> > helpers, @@ -607,12 +611,16 @@ void intel_runtime_pm_disable(struct
> intel_runtime_pm *rpm)
> >  	struct drm_i915_private *i915 =3D container_of(rpm,
> >  						     struct drm_i915_private,
> >  						     runtime_pm);
> > +	struct pci_dev *pdev =3D to_pci_dev(i915->drm.dev);
> >  	struct device *kdev =3D rpm->kdev;
> >
> >  	/* Transfer rpm ownership back to core */
> >  	drm_WARN(&i915->drm, pm_runtime_get_sync(kdev) < 0,
> >  		 "Failed to pass rpm ownership back to core\n");
> >
> > +	if (IS_DG1(i915))
> > +		pci_d3cold_enable(pdev);
> > +
> >  	pm_runtime_dont_use_autosuspend(kdev);
> >
> >  	if (!rpm->available)
> > --
> > 2.26.2
> >
