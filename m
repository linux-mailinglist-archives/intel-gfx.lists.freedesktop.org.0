Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2824B634FE8
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 07:01:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63F3F10E4ED;
	Wed, 23 Nov 2022 06:01:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F414E10E4ED
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 06:01:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669183306; x=1700719306;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=94QZQ79YZwNWHvaOw5x0yu6FpK9cEipMXYpaU661Vzg=;
 b=mTSp269lzPNRHAsEagBNWDoYIr/ZfR3sSe8yMG2+YONiD+4zfkU6+VI8
 HU+1dLvM03lJ1JwwDpPV1Z/kyNaovzrgTkqSmK4sCzOyAhGymoRxhZ7Eo
 rZ5JFAlBBOlObXa69Cq2WWMF/zCBSJsLobPxWKnCne9UlenQrkti+KXKj
 EE+p2IPfP5T8XofVMpKIkoULrh6VbQSCDpjous7a8LrJ3x8GZsqNmGVyX
 +K4eXyomoZ+In9V4SfG3AcDmSr1cBC8vdjMsuEwbwZwS4UELt+DKfo76F
 lw79pGmyXdOIPkmIFiY1EZHAzX0ejs8wbyuRpG5M5RzBtWRLJ5Sd41D2s g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="378245651"
X-IronPort-AV: E=Sophos;i="5.96,186,1665471600"; d="scan'208";a="378245651"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 22:01:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="643986449"
X-IronPort-AV: E=Sophos;i="5.96,186,1665471600"; d="scan'208";a="643986449"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP; 22 Nov 2022 22:01:45 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 22 Nov 2022 22:01:44 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 22 Nov 2022 22:01:44 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 22 Nov 2022 22:01:44 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 22 Nov 2022 22:01:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f0ixwTqlREP8/Sl3e3xEtQEfWj2RpFDjwgkF7t+z3Pn/cdKnNFyjDtd8RX+s2k637XCS8466kKRDuvc+SHR8fLWbqEZ9agPFjOlwDhdmcDsv4uRBEMuYDPt9vFsj/4Vvlxojuo2jr3FWMZ21zxJpVbdyld85clk+KYRKP491sIZWF8X8yMYv273ho4Il4b/QXkbY0vYOIvYSo0g3bdRXTZWrFJlrsLEAwhqMEFKgCqF47DUbVxuBPWRYb+EDBEZgUf+agyZoVovfdMBT86ZXH3BDAZkvpdTF+GhLnVewihBY9p7ArI5BX0nuM99T57vi5xC135C4bAg3lJME8eTn1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PqPQK+opT4bpWp1q3u4Qa2055DygZTPx43gETdZ00YU=;
 b=UrrU98YhlcqopKrP5EP7hs8eUMkbFHJPG+1rnQ6DEq2KUIUdYRecZaPKfhQj9sYHOkfCzAFzqcFoMXaBg0QQN9g6oRug07KCQodOhjVqtwXq4MPJgRavREE+HsPpP68iErr6iYE9EMDuiUSe/mW/dCaUDoxe/nPYIlhXUQvcfkREo5yKa2CZqsLkeCLy77aNUYf96m/6X2G8hi1WbDJ3KSXSHz9fJle+o1Y8uoJgzZ19HFNDA7MhwPWJ2ZLF9Z0jz7gQeJHXtc8/Y8XJi9nTfCqBGLwUi09bPIymbYtZmtQZEh2bmKAVbp7+0tn4cLL29Se29Ph4oWleqTvdA/oS2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB1469.namprd11.prod.outlook.com (2603:10b6:301:c::16)
 by IA0PR11MB7284.namprd11.prod.outlook.com (2603:10b6:208:438::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.15; Wed, 23 Nov
 2022 06:01:28 +0000
Received: from MWHPR11MB1469.namprd11.prod.outlook.com
 ([fe80::6822:6369:3684:b252]) by MWHPR11MB1469.namprd11.prod.outlook.com
 ([fe80::6822:6369:3684:b252%9]) with mapi id 15.20.5834.015; Wed, 23 Nov 2022
 06:01:28 +0000
From: "Ghimiray, Himal Prasad" <himal.prasad.ghimiray@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 1/1] drm/i915: Export LMEM max memory
 bandwidth via sysfs
Thread-Index: AQHY/Z8E0KIGaRvcB0GjSOKI9tuJTq5L9sUggAAPd4CAAAB5EA==
Date: Wed, 23 Nov 2022 06:01:28 +0000
Message-ID: <MWHPR11MB14696AF46A6C230B8F1B7E30B30C9@MWHPR11MB1469.namprd11.prod.outlook.com>
References: <20221121100134.2523381-1-himal.prasad.ghimiray@intel.com>
 <87c63fc5-1553-1794-1f48-73a47de273bb@linux.intel.com>
 <MWHPR11MB146920C662B733EE935D73BAB30C9@MWHPR11MB1469.namprd11.prod.outlook.com>
 <87r0xuw6rm.wl-ashutosh.dixit@intel.com>
In-Reply-To: <87r0xuw6rm.wl-ashutosh.dixit@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MWHPR11MB1469:EE_|IA0PR11MB7284:EE_
x-ms-office365-filtering-correlation-id: d83193c3-7992-420c-eba5-08dacd18297d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fVQRFnpoh2vBh1uWROLJRZxLluIs9TQbkTjIizBM73U3JSI9+w4wOltexoJJiei51WrwVCoUZZIqvPFFvu3flIzFJseLlQvw/tgHHTSLDAMxvS5GXxMBpzDKtn6d9d3UbHp1y0WlUCdgrVGHkNMZVeZFWujwDV43YHnOYwGogMB8HA4yEKouoijxJxhKHA7hXUgGDNphbBysGMWdF9piVz2D/Q7FUbxM4dztpQoUS097/qZrD8TxXqcMDgZhuhBSm592fyVwxNDKQ4so1fKVXrbpkc9rxwk2lvUEGWnxl89tJSboLXzXuUww5EbCVtYhjNv+wUFufdsCvfxFwJy4z2Z2pzQUKIDYkJJuya5ySqIEWrMOT2Z2qeOKCVPUc0s2vSQnEtTEBmrpnv3Aul/ixaIM7lI1FJVLhTgqpymcry64OG6uBC+vVJPe7MUFTpgsrMyCkX/6kwdQEyk+brWSUPX02SfRbLPLUYeNZ2TFwjf4fslpT7QSuSoqk1tYsVNrgLtbOiDBokRM/0cZ6AIfusfqphwnIPblGyH+DEbHPOgCyDchFVg/1VTEOHrSNc3mPL4chRf27zofPCLO+krvIJFBSY3/sGqkYWZg5/DE7WMcRYJRrVSPB99exkQFOSyPpeDJrKnWt9tQki5g13O4rhDsz2Y1PVkkkTGBypDzw3TKTmGMuhuglHt6Zi4Xfvp15vjzVLxSPfWYMwluCbfvcIhK4Gazxb1wlynHMhBKS/M=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1469.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(346002)(366004)(136003)(396003)(39860400002)(451199015)(9686003)(6506007)(53546011)(7696005)(966005)(26005)(122000001)(186003)(478600001)(2906002)(71200400001)(38100700002)(38070700005)(33656002)(82960400001)(55016003)(83380400001)(86362001)(8936002)(6862004)(41300700001)(76116006)(66556008)(64756008)(66946007)(66476007)(52536014)(66446008)(8676002)(6636002)(4326008)(54906003)(316002)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?PO/xJaZjX1bXphLlWHLiO8sgjj523mUNZg1l580cU65x+Bsrd4qeAA40yDfj?=
 =?us-ascii?Q?YiIOOYFiyoC2u4xSwCJe7rrFc9I+J8CuKcPKr1LXFPijcOr1Q/iiLcu17cxe?=
 =?us-ascii?Q?RejiLSzNcq5/m8P7n027Iv7Wm4E0ryOv9a6nO6ggO8wtM1SueqikFVs2RE2q?=
 =?us-ascii?Q?pBRWafFQw6Bobm4uMYjcbgJ3iw7YLTi+rBtIEXODXeWuF7SGnIY22BhGqX0I?=
 =?us-ascii?Q?MEEdXm/vhuOaECxZuKhWtg69xvP/2p7oArikZnRJM2MtQCSVfTPecSW3pH9t?=
 =?us-ascii?Q?tIt3bIyvKB1tr2QqTYCCIj52smY11fzJY9CuP0MArdcePilu+gTn+Bot8Z4S?=
 =?us-ascii?Q?rLzAQCzNQeX6rb8nCYwVl9JNXqWt0BO8U9AMy8MMMGFM4SKmKqQZF1CCWofZ?=
 =?us-ascii?Q?j/Zo4FJUTGXlC9kkjLJzoitN7SFPbobF3IYXYRD6umXGLbLZ/Jj136h3oTk4?=
 =?us-ascii?Q?cAg2lpTqf6PSe9zpRIpmgato8rCyWc8Od+ZyTGs1eSEzeGQxeJPKeKPe93h+?=
 =?us-ascii?Q?zDVk6Nyek4EwFOU2EXExmIvUbMwQE0CBvzRv+RcU+UhseNzosSVjYXHDS2Mx?=
 =?us-ascii?Q?NtturKbwLElNcrTtr58XRVVrI+IgGXNsabCEleqWXgABy8tMT/bPfLMrqqa2?=
 =?us-ascii?Q?+tGDF8dZIPKZakoRvITsA+dQJYBU0ilWclJ4REfgQk9IFenPis6urDquvfg7?=
 =?us-ascii?Q?kSpcKO4lGjHXjZa7QlXtdPmX7J2wDzsZP30qQ0VmCm5jEcXXYxBFybALFJvB?=
 =?us-ascii?Q?wslLJZCPOPmukrOPBqevY+R5Avk+z4f/ojB9uKIi3rosSu8u/8n1CqKyrHL2?=
 =?us-ascii?Q?KrDr9K34d5G+wm1ZPwkR8nU20QQ/IMasvN7o4drxdDSmNd8lJD05FZhXSRDT?=
 =?us-ascii?Q?8689qWpECiXTgXLXzbs7eAzafUk4Rm1aS+2onPfiVgrg15N3MQcqnRrbaosJ?=
 =?us-ascii?Q?x3mVVwxkx/8kVYWdhazyfmp4OBJFzJOz+5AGp0GEZHmnm+PH4wC00WoRsO07?=
 =?us-ascii?Q?Slj2LjBV1Nw3wE1d1iCom+t2RlAhuiBjulnXWIHlwxPVx2iopiYPgxREFotV?=
 =?us-ascii?Q?ZGb3Bvu8Ax96Bfjqzgdm+yDL/E+tdV+SFbL40Cpbs1bGr1oPHjQRb2dfFf+2?=
 =?us-ascii?Q?Di9q9UuQ6He5h2CBGACoCYNAsWIf1ys9KlbsgPzk2w6KiKhwodvtlqWhY/1p?=
 =?us-ascii?Q?pajeapxRSw43Iq2zbEC3THLIAFQgMgPINd4yXm7bLkb+z+KBmwO0rald1su0?=
 =?us-ascii?Q?eE3e+tCygv2CEmEBXkD3SmLJtlnt1CCBCrZ0dMGpn6jEwRS0yv7KzY9+mpc7?=
 =?us-ascii?Q?/DTIlnD4j9YQxJyf4aYS4OGNbM4/uQmLlxZN1Dht1PIzhEjhGxXkyiKXWLl4?=
 =?us-ascii?Q?y00QLbQp6kNzgSddpRUrMScPjKiyewaYARx/YAjjZqZoAyLIiKrXe06kfwfP?=
 =?us-ascii?Q?AKygVSDz+lYuvBpg4P6tjg6NdzVn+6pWjrShmTBo45VaNLEZwST/IwH18i9j?=
 =?us-ascii?Q?xdIJMOiB+Y1SCEkwRQdPn+LDc4VrtjkE5FTrhGhKnj9xai11kYPEXUQN57zX?=
 =?us-ascii?Q?8iFwGT5vlUm+/xv7dJXI6EmTTP0pk3kNZDCj4tijcUcytt5Cb4mRHsNLiI4r?=
 =?us-ascii?Q?Zw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1469.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d83193c3-7992-420c-eba5-08dacd18297d
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Nov 2022 06:01:28.5217 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sVbDDnvm4CzY//Y8VUEKMbaqNiOtEjw2p8s4RklYx+aaXvOlHMUV82Ib73OfLAOUykozEKSFTzmRGUEP8FHL51XdeaDbllZvBaE/kgAO3tE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7284
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915: Export LMEM max memory
 bandwidth via sysfs
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

Thanks Ashutosh for the clarification.

BR
Himal Ghimiray

> -----Original Message-----
> From: Dixit, Ashutosh <ashutosh.dixit@intel.com>
> Sent: 23 November 2022 11:29
> To: Ghimiray, Himal Prasad <himal.prasad.ghimiray@intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>; intel-
> gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915: Export LMEM max memory
> bandwidth via sysfs
>=20
> On Tue, 22 Nov 2022 21:10:01 -0800, Ghimiray, Himal Prasad wrote:
> >
> > > -----Original Message-----
> > > From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> > > Sent: 21 November 2022 17:17
> > > To: Ghimiray, Himal Prasad <himal.prasad.ghimiray@intel.com>; intel-
> > > gfx@lists.freedesktop.org
> > > Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915: Export LMEM max
> > > memory bandwidth via sysfs
> > >
> > >
> > > On 21/11/2022 10:01, Himal Prasad Ghimiray wrote:
> > > > Export lmem maximum memory bandwidth to the userspace via sysfs
> > > >
> > > > (v2)
> > > > Add TODO comment to have client parts specific condition
> > > > (Anshuman) Remove prelim prefix from the sysfs node name (Aravind)
> > >
> > > Link to userspace consumer?
> > [Ghimiray, Himal Prasad]
> >
> > Does above comment means stating name of sysfs node in commit
> message ?
>=20
> No. It means that there has to be a "real" open source userspace program
> (like Mesa, Level-0/OneApi or another accepted program or UMD) which is
> actually reading the sysfs file exposed. Without such a consumer, the sys=
fs
> addition will not be accepted upstream.
>=20
> E.g. see cover letter here:
>=20
> https://patchwork.freedesktop.org/series/106460/
>=20
> "An approved Level-0/oneAPI UMD pull request which consumes the
> exposed defaults can be seen here:
> 	https://github.com/intel/compute-runtime/pull/552
> "
>=20
> Thanks.
> --
> Ashutosh
